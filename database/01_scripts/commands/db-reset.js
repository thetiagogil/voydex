#!/usr/bin/env node

/**
 * Command: db-reset
 * Drops schemas and re-runs migrations.
 *
 * Usage:
 *   db:reset              Full reset: drop all → migrate all
 *   db:reset:reference    Drop reference + downstream → migrate
 *   db:reset:tracking     Drop tracking + gameplay → migrate
 *   db:reset:gameplay     Drop gameplay → migrate
 */

import path from "path";
import { fileURLToPath } from "url";
import {
  CATEGORIES,
  CATEGORY_ORDER,
  SCHEMA_TYPES,
} from "../config/database.config.js";
import {
  confirmOrExit,
  getFlag,
  isForceMode,
  showDangerWarning,
} from "../helpers/cli.js";
import { dropSchemas } from "../helpers/db-operations.js";
import { withClient } from "../helpers/db.js";
import { loadEnvironment } from "../helpers/env.js";
import { logger, withTiming } from "../helpers/logger.js";
import {
  getAllMigrationFiles,
  runMigrations,
} from "../helpers/migration-operations.js";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const MIGRATIONS_DIR = path.resolve(__dirname, "../../02_migrations");

/**
 * Get schemas to drop for a given category (including downstream dependents).
 */
function getSchemasForCategory(category) {
  const idx = CATEGORY_ORDER.indexOf(category);
  const affected = CATEGORY_ORDER.slice(idx);
  const schemas = affected.flatMap((c) => CATEGORIES[c].schemas);
  // Always include views when dropping any category
  schemas.push("views");
  return schemas;
}

async function main() {
  loadEnvironment();
  logger.header("Database Reset");

  const category = getFlag("category");

  if (category && !CATEGORY_ORDER.includes(category)) {
    logger.failure(`Unknown category: ${category}`);
    logger.info(`Valid categories: ${CATEGORY_ORDER.join(", ")}`);
    process.exit(1);
  }

  const schemasToDropList = category
    ? getSchemasForCategory(category)
    : SCHEMA_TYPES.ALL_CUSTOM;

  await withClient(async (client) => {
    const label = category ? `Reset: ${category} (+ downstream)` : "Full Reset";
    showDangerWarning(label, schemasToDropList);

    if (!isForceMode()) {
      await confirmOrExit(
        `This will DROP ${schemasToDropList.join(", ")} and all their data. Continue?`,
      );
    }

    await withTiming(async () => {
      logger.section("Dropping schemas");
      await dropSchemas(client, schemasToDropList);

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
