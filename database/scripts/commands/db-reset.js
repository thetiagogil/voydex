#!/usr/bin/env node

/**
 * Command: db-reset
 * Drops all custom schemas and re-runs migrations + seeds.
 */

import path from "path";
import { fileURLToPath } from "url";
import { SCHEMA_TYPES } from "../config/database.config.js";
import {
  confirmOrExit,
  isForceMode,
  showDangerWarning,
} from "../helpers/cli.js";
import { analyzeImpact, dropSchemas } from "../helpers/db-operations.js";
import { withClient } from "../helpers/db.js";
import { loadEnvironment } from "../helpers/env.js";
import { logger, withTiming } from "../helpers/logger.js";
import {
  getAllMigrationFiles,
  runMigrations,
} from "../helpers/migration-operations.js";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const MIGRATIONS_DIR = path.resolve(__dirname, "../../migrations");

async function main() {
  loadEnvironment();
  logger.header("Database Reset");

  await withClient(async (client) => {
    const impact = await analyzeImpact(client, "drop-all");
    showDangerWarning("Full Reset", impact.affectedSchemas);

    if (!isForceMode()) {
      await confirmOrExit(
        "This will DROP all custom schemas and data. Continue?",
      );
    }

    await withTiming(async () => {
      logger.section("Dropping schemas");
      await dropSchemas(client, SCHEMA_TYPES.ALL_CUSTOM);

      logger.section("Running migrations");
      const files = getAllMigrationFiles(MIGRATIONS_DIR);
      const result = await runMigrations(client, files);

      if (!result.success) {
        logger.failure(`Migration failed: ${result.failed}/${result.total}`);
        process.exit(1);
      }

      logger.success(`Reset complete: ${result.completed} migrations applied`);
    }, "Reset");
  });
}

main().catch((err) => {
  logger.failure(err.message);
  process.exit(1);
});
