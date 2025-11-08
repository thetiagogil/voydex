#!/usr/bin/env node
/**
 * Drop Static Schemas
 *
 * Drops static reference schemas (dex, meta, views).
 * Preserves user gameplay data.
 * Safe for development refresh.
 */

import { confirmOrExit, showDangerWarning } from "./helpers/cli.js";
import { analyzeImpact, dropSchemas } from "./helpers/db-operations.js";
import { loadEnvironment } from "./helpers/env.js";
import { logger } from "./helpers/logger.js";

async function main() {
  try {
    // Load environment
    const env = loadEnvironment();

    // Header
    logger.header("Drop Static Schemas", "🧹");

    // Analyze impact
    logger.section("Analyzing Database", "🔍");
    const impact = await analyzeImpact("drop-static", env.SUPABASE_DB_URL);

    if (impact.affectedSchemas.length === 0) {
      logger.info("No static schemas found. Nothing to do.");
      return;
    }

    // Show what will be affected
    logger.section("Impact Analysis", "📊");
    logger.keyValue({
      "Schemas to drop": impact.affectedSchemas.length,
      "Schemas preserved": impact.preservedSchemas.length,
      "Tables affected": impact.affectedTables.length,
      "Tables preserved": impact.preservedTables.length,
    });

    logger.blank();
    logger.info("Schemas to drop:");
    logger.list(impact.affectedSchemas, { bullet: "🔥" });

    if (impact.preservedSchemas.length > 0) {
      logger.blank();
      logger.info("Schemas preserved:");
      logger.list(impact.preservedSchemas, { bullet: "✅" });
    }

    // Warning
    showDangerWarning("DROP STATIC SCHEMAS", [
      "This will delete reference data schemas (dex, meta, views)",
      "User gameplay data will be preserved",
      "Run migrations after to recreate schemas",
    ]);

    // Confirm
    await confirmOrExit("Type 'y' to proceed with DROP STATIC: ");

    // Execute
    logger.section("Dropping Schemas", "🗑️");
    const result = await dropSchemas(
      impact.affectedSchemas,
      env.SUPABASE_DB_URL,
    );

    // Report
    logger.blank();
    if (result.success) {
      logger.success(result.message);
      logger.blank();
      logger.info("Next step: Run db-migrate-all.js to recreate schemas");
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
