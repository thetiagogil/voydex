#!/usr/bin/env node

/**
 * Command: db-migrate
 * Runs database migrations in order.
 */

import path from "path";
import { fileURLToPath } from "url";
import {
  CATEGORY_MIGRATION_FOLDERS,
  CATEGORY_ORDER,
} from "../config/database.config.js";
import { confirmOrExit, getFlag, isForceMode } from "../helpers/cli.js";
import { withClient } from "../helpers/db.js";
import { loadEnvironment } from "../helpers/env.js";
import { logger, withTiming } from "../helpers/logger.js";
import {
  getAllMigrationFiles,
  getMigrationFilesFromFolders,
  getMigrationSummary,
  runMigrations,
  validateMigrationStructure,
} from "../helpers/migration-operations.js";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const MIGRATIONS_DIR = path.resolve(__dirname, "../../02_migrations");

async function main() {
  loadEnvironment();
  logger.header("Database Migration");

  const category = getFlag("category");

  const { valid, issues, warnings } =
    validateMigrationStructure(MIGRATIONS_DIR);
  if (!valid) {
    issues.forEach((i) => logger.failure(i));
    process.exit(1);
  }
  warnings.forEach((w) => logger.warning(w));

  let files;
  if (category) {
    if (!CATEGORY_ORDER.includes(category)) {
      logger.failure(`Unknown category: ${category}`);
      logger.info(`Valid categories: ${CATEGORY_ORDER.join(", ")}`);
      process.exit(1);
    }
    const folders = CATEGORY_MIGRATION_FOLDERS[category];
    files = getMigrationFilesFromFolders(MIGRATIONS_DIR, folders);
    logger.keyValue("Category", category);
  } else {
    files = getAllMigrationFiles(MIGRATIONS_DIR);
  }

  const summary = getMigrationSummary(MIGRATIONS_DIR);
  logger.keyValue("Total files", category ? files.length : summary.totalFiles);

  if (files.length === 0) {
    logger.warning("No migration files found");
    return;
  }

  if (!isForceMode()) {
    await confirmOrExit(`Run ${files.length} migrations?`);
  }

  await withClient(async (client) => {
    const result = await withTiming(
      () => runMigrations(client, files),
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
