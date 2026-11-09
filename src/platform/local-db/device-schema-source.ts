import { createHash } from "node:crypto";
import fs from "node:fs";
import path from "node:path";

import { buildDeviceSchemaSql } from "@/platform/local-db/device-schema";

/*
 * The SQL a new device runs, read on the server (at build time for the
 * static schema route) from the device schema and the built migration.
 */
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

/* The same SHA-256 hex digest `hashSchemaSql` gives in the browser. */
export const readDeviceSchemaHash = () =>
  createHash("sha256").update(readDeviceSchemaSql()).digest("hex");
