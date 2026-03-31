#!/usr/bin/env node
/**
 * Drop All Schemas (DANGER)
 *
 * Drops ALL custom schemas (meta, gameplay, views).
 * This is a DESTRUCTIVE operation that deletes user data.
 * Only use in development environments.
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
    logger.header("Drop All Schemas", "💀");

    // Analyze impact
    logger.section("Analyzing Database", "🔍");
    const impact = await analyzeImpact("drop-all", env.SUPABASE_DB_URL);

    if (impact.affectedSchemas.length === 0) {
      logger.info("No custom schemas found. Nothing to do.");
      return;
    }

    // Show what will be affected
    logger.section("Impact Analysis", "📊");
    logger.keyValue({
      "Schemas to drop": impact.affectedSchemas.length,
      "Tables affected": impact.affectedTables.length,
      "Warning Level": impact.warningLevel.toUpperCase(),
    });

    logger.blank();
    logger.list(impact.affectedSchemas, { bullet: "🔥" });

    // Danger warning
    showDangerWarning("DROP ALL SCHEMAS", [
      "This will delete ALL custom schemas",
      "User gameplay data WILL BE LOST",
      "This operation CANNOT be undone",
      "Only proceed in development environments",
    ]);

    // Confirm
    await confirmOrExit("Type 'y' to proceed with DROP ALL: ");

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
      logger.info("You can now run migrations to recreate the database");
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
