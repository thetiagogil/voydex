import { PGlite } from "@electric-sql/pglite";

/* An in-memory device database, as a fresh device has it. */
export const createTestDb = () => PGlite.create();
