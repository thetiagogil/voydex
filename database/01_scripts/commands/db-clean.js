#!/usr/bin/env node

/**
 * Command: db-clean
 * Truncates tables by category with dependency-aware cascading.
 *
 * Usage:
 *   db:clean               Truncate all categories (reference + tracking + gameplay)
 *   db:clean:gameplay       Truncate gameplay tables only
 *   db:clean:tracking       Truncate tracking + gameplay (cascade)
 *   db:clean:reference      Truncate reference + tracking + gameplay (cascade)
 */

import { CATEGORIES, CATEGORY_ORDER } from "../config/database.config.js";
import {
  confirmOrExit,
  getFlag,
  isForceMode,
  showDangerWarning,
} from "../helpers/cli.js";
import { getFilteredTables, truncateTables } from "../helpers/db-operations.js";
import { withClient } from "../helpers/db.js";
import { loadEnvironment } from "../helpers/env.js";
import { logger, withTiming } from "../helpers/logger.js";

/**
 * Get schemas to clean for a given category (including downstream).
 */
function getSchemasForClean(category) {
  if (!category) {
    return CATEGORY_ORDER.flatMap((c) => CATEGORIES[c].schemas);
  }
  const idx = CATEGORY_ORDER.indexOf(category);
  return CATEGORY_ORDER.slice(idx).flatMap((c) => CATEGORIES[c].schemas);
}

async function main() {
  loadEnvironment();
  logger.header("Database Clean");

  const category = getFlag("category");

  if (category && !CATEGORY_ORDER.includes(category)) {
    logger.failure(`Unknown category: ${category}`);
    logger.info(`Valid categories: ${CATEGORY_ORDER.join(", ")}`);
    process.exit(1);
  }

  const schemas = getSchemasForClean(category);
  const label = category ? `Clean: ${category} (+ downstream)` : "Clean: all";
  showDangerWarning(label, schemas);

  if (!isForceMode()) {
    await confirmOrExit(
      `This will TRUNCATE all tables in ${schemas.join(", ")}. Continue?`,
    );
  }

  await withClient(async (client) => {
    await withTiming(async () => {
      const tables = await getFilteredTables(client, schemas);

      if (tables.length === 0) {
        logger.warning("No tables found to truncate");
        return;
      }

      logger.keyValue("Tables to truncate", tables.length);
      await truncateTables(client, tables);
      logger.success(
        `Truncated ${tables.length} table(s) in ${schemas.join(", ")}`,
      );
    }, "Clean");
  });
}

main().catch((err) => {
  logger.failure(err.message);
  process.exit(1);
});
