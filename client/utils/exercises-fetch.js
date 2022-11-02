const exerciseDbOptions = {
  method: 'GET'
};

async function fetchData({ url, options }) {
  const response = await fetch(url, options);
  const data = await response.json();
  return data;
}

export const fetchAllExercises = async () => {
  const exerciseData = await fetchData({
    url: `./exercises`,
    options: exerciseDbOptions,
  })
  return exerciseData;
}

export const fetchExercisesByName = async (name) => {
  const exerciseData = await fetchData({
    url: `./exercises/name/${name}`,
    options: exerciseDbOptions,
  })
  return exerciseData;
}

export const fetchExercisesByBodyPart = async (bodyPart) => {
  const exerciseData = await fetchData({
    url: `./exercises/bodyParts/${bodyPart}`,
    options: exerciseDbOptions,
  })
  return exerciseData;
}

export const fetchExercisesByTargetMuscle = async (targetMuscle) => {
  const exerciseData = await fetchData({
    url: `./exercises/targetMuscles/${targetMuscle}`,
    options: exerciseDbOptions,
  })
  return exerciseData;
}

export const fetchExercisesByEquipment = async (equipment) => {
  const exerciseData = await fetchData({
    url: `./exercises/equipments/${equipment}`,
    options: exerciseDbOptions,
  })
  return exerciseData;
}