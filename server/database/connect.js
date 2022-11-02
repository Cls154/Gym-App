import sqlite3 from "sqlite3";
import { open } from "sqlite";

const initDB = async () => {
  const db = await open({
    filename: 'database.sqlite',
    driver: sqlite3.Database,
  });
  await db.migrate({ migrationsPath: './server/database/migrations-sqlite'});
  return db;
}

export const dbConn = initDB();