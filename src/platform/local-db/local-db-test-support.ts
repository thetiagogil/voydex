import fs from "node:fs";
import path from "node:path";

import { PGlite } from "@electric-sql/pglite";

import { buildDeviceSchemaSql } from "@/platform/local-db/device-schema";

/* The SQL a new device runs, read from the same files the app serves. */
export const readDeviceSchemaSql = () =>
  buildDeviceSchemaSql({
    deviceSql: fs.readFileSync(
      path.join(process.cwd(), "src/platform/local-db/device-schema.sql"),
      "utf8",
    ),
    migrationSql: fs.readFileSync(
      path.join(
        process.cwd(),
        "database/supabase/migrations/00000000000000_voydex_current_schema.sql",
      ),
      "utf8",
    ),
  });

/* An in-memory device database, as a fresh device has it. */
export const createTestDb = () => PGlite.create();
