import path from "node:path";
import { databaseDir } from "../context.mjs";

export const projectRoot = databaseDir;
export const seedsRoot = path.join(projectRoot, "seeds");
export const schemaRoot = path.join(projectRoot, "schema");

export function createAuditContext() {
  return {
    columnsByTable: new Map(),
    errors: [],
    rows: [],
    tableRows: new Map(),
    warnings: [],
  };
}
