#!/usr/bin/env node
/**
 * Truncate Static Tables
 *
 * Truncates tables in static schemas (dex, meta).
 * Preserves user gameplay data and views.
 * Safe for development refresh.
 */

import { confirmOrExit } from "./helpers/cli.js";
import { analyzeImpact, truncateTables } from "./helpers/db-operations.js";
import { loadEnvironment } from "./helpers/env.js";
import { logger } from "./helpers/logger.js";

async function main() {
  try {
    // Load environment
    const env = loadEnvironment();

    // Header
    logger.header("Truncate Static Tables", "🧹");

    // Analyze impact
    logger.section("Analyzing Database", "🔍");
    const impact = await analyzeImpact("truncate-static", env.SUPABASE_DB_URL);

    if (impact.affectedTables.length === 0) {
      logger.info("No static tables found. Nothing to do.");
      return;
    }

    // Show what will be affected
    logger.section("Impact Analysis", "📊");
    logger.keyValue({
      "Schemas affected": impact.affectedSchemas.length,
      "Tables to truncate": impact.affectedTables.length,
      "Tables preserved": impact.preservedTables.length,
    });

    logger.blank();
    logger.info("Tables to truncate:");
    const affectedNames = impact.affectedTables.map(
      (t) => `${t.schemaname}.${t.tablename}`,
    );
    logger.list(affectedNames, { bullet: "🗑️" });

    if (impact.preservedTables.length > 0) {
      logger.blank();
      logger.info("Tables preserved:");
      const preservedNames = impact.preservedTables.map(
        (t) => `${t.schemaname}.${t.tablename}`,
      );
      logger.list(preservedNames, { bullet: "✅" });
    }

    // Confirm
    logger.blank();
    await confirmOrExit("Type 'y' to proceed with TRUNCATE STATIC: ");

    // Execute
    logger.section("Truncating Tables", "🗑️");
    const result = await truncateTables(
      impact.affectedTables,
      env.SUPABASE_DB_URL,
    );

    // Report
    logger.blank();
    if (result.success) {
      logger.success(result.message);
      logger.blank();
      logger.info("Next step: Run seed scripts to repopulate reference data");
    } else {
      logger.failure(result.message);
      process.exit(1);
    }
  } catch (err) {
    logger.blank();
    logger.failure(`Script failed: ${err.message}`);
    process.exit(1);
  }
}

main();
