#!/usr/bin/env node
/**
 * Truncate All Tables (DANGER)
 *
 * Truncates ALL tables in all custom schemas.
 * This is a DESTRUCTIVE operation that deletes user data.
 * Only use in development environments.
 */

import { confirmOrExit, showDangerWarning } from "./helpers/cli.js";
import { analyzeImpact, truncateTables } from "./helpers/db-operations.js";
import { loadEnvironment } from "./helpers/env.js";
import { logger } from "./helpers/logger.js";

async function main() {
  try {
    // Load environment
    const env = loadEnvironment();

    // Header
    logger.header("Truncate All Tables", "💀");

    // Analyze impact
    logger.section("Analyzing Database", "🔍");
    const impact = await analyzeImpact("truncate-all", env.SUPABASE_DB_URL);

    if (impact.affectedTables.length === 0) {
      logger.info("No tables found. Nothing to do.");
      return;
    }

    // Show what will be affected
    logger.section("Impact Analysis", "📊");
    logger.keyValue({
      "Schemas affected": impact.affectedSchemas.length,
      "Tables to truncate": impact.affectedTables.length,
      "Warning Level": impact.warningLevel.toUpperCase(),
    });

    logger.blank();
    logger.info("Tables to truncate:");
    const tableNames = impact.affectedTables.map(
      (t) => `${t.schemaname}.${t.tablename}`,
    );
    logger.list(tableNames, { bullet: "🔥" });

    // Danger warning
    showDangerWarning("TRUNCATE ALL TABLES", [
      "This will delete ALL data from ALL tables",
      "User gameplay data WILL BE LOST",
      "This operation CANNOT be undone",
      "Only proceed in development environments",
    ]);

    // Confirm
    await confirmOrExit("Type 'y' to proceed with TRUNCATE ALL: ");

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
      logger.info("You can now run seed scripts to repopulate data");
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
