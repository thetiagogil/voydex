#!/usr/bin/env node

/**
 * Command: db-migrate
 * Runs database migrations in order.
 */

import path from "path";
import { fileURLToPath } from "url";
import { confirmOrExit, isForceMode } from "../helpers/cli.js";
import { withClient } from "../helpers/db.js";
import { loadEnvironment } from "../helpers/env.js";
import { logger, withTiming } from "../helpers/logger.js";
import {
  getAllMigrationFiles,
  getMigrationSummary,
  runMigrations,
  validateMigrationStructure,
} from "../helpers/migration-operations.js";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const MIGRATIONS_DIR = path.resolve(__dirname, "../../migrations");

async function main() {
  loadEnvironment();
  logger.header("Database Migration");

  const { valid, issues, warnings } =
    validateMigrationStructure(MIGRATIONS_DIR);
  if (!valid) {
    issues.forEach((i) => logger.failure(i));
    process.exit(1);
  }
  warnings.forEach((w) => logger.warning(w));

  const summary = getMigrationSummary(MIGRATIONS_DIR);
  logger.keyValue("Total files", summary.totalFiles);

  if (summary.totalFiles === 0) {
    logger.warning("No migration files found");
    return;
  }

  if (!isForceMode()) {
    await confirmOrExit("Run all migrations?");
  }

  const files = getAllMigrationFiles(MIGRATIONS_DIR);

  await withClient(async (client) => {
    const result = await withTiming(
      () => runMigrations(files, { client }),
      "Migration",
    );

    if (!result.success) {
      logger.failure(`Failed: ${result.failed}/${result.total}`);
      process.exit(1);
    }

    logger.success(`Completed: ${result.completed}/${result.total}`);
  });
}

main().catch((err) => {
  logger.failure(err.message);
  process.exit(1);
});
