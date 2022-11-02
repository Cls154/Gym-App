export function createExerciseTab({container, exerciseGifUrl, exerciseBodyPart, exerciseTarget, exerciseName}) {
  const divParentWrapper = document.createElement('div');
  const divChildWrapper = document.createElement('div');
  const muscleBodyParts = document.createElement('h3');
  const muscleTargets = document.createElement('h3');
  const exerciseGifs = document.createElement('img');
  const exerciseNames = document.createElement('h2');

  divParentWrapper.classList.add('exercise-tab');
  divChildWrapper.classList.add('exercise-target-tab');
  muscleBodyParts.classList.add('exercise-target-a');
  muscleTargets.classList.add('exercise-target-b');
  exerciseNames.classList.add('exercise-name');

  exerciseGifs.src = exerciseGifUrl;
  exerciseGifs.alt = 'exercise demo gif';

  muscleBodyParts.textContent = exerciseBodyPart;
  muscleTargets.textContent = exerciseTarget;
  exerciseNames.textContent = exerciseName;

  divChildWrapper.append(muscleBodyParts);
  divChildWrapper.append(muscleTargets);

  divParentWrapper.append(divChildWrapper);
  divParentWrapper.append(exerciseGifs);
  divParentWrapper.append(exerciseNames);

  container.append(divParentWrapper);
}

export function removeDuplicates(originalArray, prop) {
  var newArray = [];
  var lookupObject  = {};

  for(var i in originalArray) {
     lookupObject[originalArray[i][prop]] = originalArray[i];
  }

  for(i in lookupObject) {
      newArray.push(lookupObject[i]);
  }
   return newArray;
}

export function changePage(current, destination, enter, exit) {
  if (!current.classList.contains('hide-page')) return
  current.classList.toggle('hide-page');
  destination.classList.toggle('hide-page');
  enter.classList.toggle('on-page');
  exit.classList.toggle('on-page');
}