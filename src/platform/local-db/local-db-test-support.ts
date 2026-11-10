import { PGlite } from "@electric-sql/pglite";
import { vi } from "vitest";

import { ensureDeviceSchema } from "@/platform/local-db/device-schema";
import {
  hashDeviceSchemaSql,
  readDeviceSchemaSql,
} from "../../../scripts/database/device-schema.mjs";

/*
 * Installing the schema takes a few seconds per database, longer while
 * other test files run beside it.
 */
vi.setConfig({ hookTimeout: 60_000, testTimeout: 60_000 });

/* An in-memory device database, as a fresh device has it. */
export const createTestDb = () => PGlite.create();

/* A set-up device: the app's schema and the local user, no game data. */
export const createTestDevice = async () => {
  const db = await createTestDb();
  const schemaSql = readDeviceSchemaSql();

  await ensureDeviceSchema(db, {
    hash: hashDeviceSchemaSql(schemaSql),
    readSql: () => Promise.resolve(schemaSql),
  });

  return db;
};
