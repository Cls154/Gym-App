const exerciseDetails = (boolean = false, searchTerm = '') => {
  let query = `
    SELECT bodyPart, equipment, gifUrl, id, name, target
    FROM Exercises
    INNER JOIN BodyParts ON BodyParts.bodyPart_id = Exercises.bodyPart_id
    INNER JOIN Equipment ON Equipment.equipment_id = Exercises.equipment_id
    INNER JOIN TargetMuscles ON TargetMuscles.target_id = Exercises.target_id
  `;
  if (boolean === false) query += ';' 
  if (boolean === true) query += ` WHERE instr(${searchTerm}, ?);`;
  return query;
}

export const getExercises = exerciseDetails();
export const getExercisesByName = exerciseDetails(true, 'name');
export const getExercisesByBodyPart = exerciseDetails(true, 'bodyPart');
export const getExercisesByTargetMuscle = exerciseDetails(true, 'target');
export const getExercisesByEquipment = exerciseDetails(true, 'equipment');

export const getBodyParts = 'SELECT bodyPart FROM BodyParts;';
export const getTargetMuscles = 'SELECT target FROM TargetMuscles;';
export const getEquipment = 'SELECT equipment FROM Equipment;'