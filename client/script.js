import { 
  fetchAllExercises, 
  fetchExercisesByName, 
  fetchExercisesByBodyPart, 
  fetchExercisesByTargetMuscle, 
  fetchExercisesByEquipment, 
} from "./utils/exercises-fetch.js";

import {
  createExerciseTab,
  removeDuplicates,
  changePage
} from "./utils/helpers.js"

const searchExercises = document.querySelector('#search-exercises');
const searchExercisesBtn = document.querySelector('#search-exercises-btn');
const exerciseDemos = document.querySelector('#exercise-demos');
const totalPages = document.querySelector('#total-pages');
const viewingPage = document.querySelector('#viewing-page');
const prevPage = document.querySelector('#prev-page');
const nextPage = document.querySelector('#next-page');
const startPage = document.querySelector('#start-page');
const endPage = document.querySelector('#end-page');

const homePage = document.querySelector('#home-page');
const exercisePage = document.querySelector('#exercise-page');
const goHome = document.querySelector('#go-home');
const goExercises = document.querySelector('#go-exercises');
const getStartedBtn = document.querySelector('#get-started-btn');

goHome.addEventListener('click', () => changePage(homePage, exercisePage, goHome, goExercises));
goExercises.addEventListener('click', () => changePage(exercisePage, homePage, goHome, goExercises));
getStartedBtn.addEventListener('click', () => changePage(exercisePage, homePage, goHome, goExercises));

const exercisesPerPage = 9;
let currentPage = 1;
let exerciseData = [];

searchExercises.addEventListener('change', getInputExercises);
searchExercisesBtn.addEventListener('click', getInputExercises);
startPage.addEventListener('click', () => {
  if (currentPage === 1) return;
  currentPage = 1;
  setExercises();
})
endPage.addEventListener('click', () => {
  if (currentPage === Math.ceil(exerciseData.length/exercisesPerPage)) return;
  currentPage = Math.ceil(exerciseData.length/exercisesPerPage);
  setExercises();
})
prevPage.addEventListener('click', () => {
  if (currentPage === 1) return;
  currentPage -= 1;
  setExercises();
})
nextPage.addEventListener('click', () => {
  if (currentPage === Math.ceil(exerciseData.length/exercisesPerPage)) return;
  currentPage += 1;
  setExercises();
})

async function getInputExercises() {
  if (searchExercises.value === '') {
    getExercises();
  } else {
    currentPage = 1;
    const exercisesByName = await fetchExercisesByName(searchExercises.value);
    const exercisesByBodyPart = await fetchExercisesByBodyPart(searchExercises.value);
    const exercisesByTargetMuscle = await fetchExercisesByTargetMuscle(searchExercises.value);
    const exercisesByEquipment = await fetchExercisesByEquipment(searchExercises.value);
    const array = [...exercisesByName, ...exercisesByBodyPart, ...exercisesByTargetMuscle, ...exercisesByEquipment];
    exerciseData = removeDuplicates(array, 'id');
    setExercises(searchExercises.value);
    searchExercises.value = '';
  }
}

async function getExercises() {
  currentPage = 1;
  exerciseData = await fetchAllExercises();
  setExercises();
}

function setExercises(searchedValue = '') {
  const existingExerciseTabs = document.querySelectorAll('.exercise-tab');
  for (const tab of existingExerciseTabs) {
    tab.remove();
  }
  const indexOfLastExercise = currentPage * exercisesPerPage;
  const indexOfFirstExercise = indexOfLastExercise - exercisesPerPage;
  const currentExercises = exerciseData.slice(indexOfFirstExercise, indexOfLastExercise);
  if (currentExercises.length !== 0) {
    currentExercises.map((item) => {
      createExerciseTab({
        container: exerciseDemos,
        exerciseGifUrl: item.gifUrl,
        exerciseBodyPart: item.bodyPart,
        exerciseTarget: item.target,
        exerciseName: item.name,
      })
    })
  } else {
    createExerciseTab({
      container: exerciseDemos,
      exerciseGifUrl: './images/not-found.svg',
      exerciseBodyPart: 'N/A',
      exerciseTarget: 'N/A',
      exerciseName: `${searchedValue}`,
    })
  }
  totalPages.textContent = Math.ceil(exerciseData.length/exercisesPerPage);
  viewingPage.textContent = currentPage;
}

async function init() {
  getExercises();
}
window.addEventListener('load', init);

