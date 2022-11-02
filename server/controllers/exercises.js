import { dbConn } from "../database/connect.js";
import * as query from "../database/queries.js";

const db = await dbConn;

export const getExercises = async (req, res) => {
  res.json(await db.all(query.getExercises));
}

export const getExercisesByName = async (req, res) => {
  res.json(await db.all(query.getExercisesByName, req.params.name));
}

export const getBodyParts = async (req, res) => {
  res.json(await db.all(query.getBodyParts));
}

export const getExercisesByBodyPart = async (req, res) => {
  res.json(await db.all(query.getExercisesByBodyPart, req.params.bodyPart));
}

export const getTargetMuscles = async (req, res) => {
  res.json(await db.all(query.getTargetMuscles));
}

export const getExercisesByTargetMuscle = async (req, res) => {
  res.json(await db.all(query.getExercisesByTargetMuscle, req.params.targetMuscle));
}

export const getEquipment = async (req, res) => {
  res.json(await db.all(query.getEquipment));
}

export const getExercisesByEquipment = async (req, res) => {
  res.json(await db.all(query.getExercisesByEquipment, req.params.equipment));
}