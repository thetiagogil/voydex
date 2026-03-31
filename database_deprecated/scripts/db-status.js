#!/usr/bin/env node
/**
 * Database Status
 *
 * Shows current database structure:
 * - Custom schemas
 * - Tables in each schema
 * - Row counts
 */

import { categorizeSchemas } from "./helpers/db-operations.js";
import {
  getCustomSchemas,
  getTableRowCount,
  getTablesFromSchemas,
  withClient,
} from "./helpers/db.js";
import { loadEnvironment } from "./helpers/env.js";
import { logger } from "./helpers/logger.js";

async function main() {
  try {
    // Load environment
    const env = loadEnvironment();

    // Header
    logger.header("Database Status", "📊");

    // Get schemas
    logger.section("Fetching Database Info", "🔍");

    const schemas = await withClient(
      async (client) => await getCustomSchemas(client),
      env.SUPABASE_DB_URL,
    );

    if (schemas.length === 0) {
      logger.info("No custom schemas found. Database is empty.");
      return;
    }

    // Categorize schemas
    const categorized = categorizeSchemas(schemas);

    // Show schema summary
    logger.section("Schemas", "🗂️");
    logger.keyValue({
      "Total custom schemas": schemas.length,
      "Static (meta)": categorized.static.length,
      "Dynamic (gameplay)": categorized.dynamic.length,
      "Presentation (views)": categorized.presentation.length,
    });

    // Get tables and row counts
    logger.section("Tables by Schema", "📋");

    for (const schema of schemas) {
      const tables = await withClient(
        async (client) => await getTablesFromSchemas(client, [schema]),
        env.SUPABASE_DB_URL,
      );

      if (tables.length === 0) {
        logger.blank();
        console.log(`  🗂️  ${schema}: (empty schema)`);
        continue;
      }

      logger.blank();
      console.log(`  🗂️  ${schema}: ${tables.length} tables`);

      // Get row counts for each table
      for (const table of tables) {
        const rowCount = await withClient(
          async (client) =>
            await getTableRowCount(client, table.schemaname, table.tablename),
          env.SUPABASE_DB_URL,
        );

        console.log(
          `     • ${table.tablename}: ${rowCount.toLocaleString()} rows`,
        );
      }
    }

    logger.blank();
    logger.separator("=", 60);
    logger.success("Database status retrieved successfully");
    logger.separator("=", 60);
  } catch (err) {
    logger.blank();
    logger.failure(`Script failed: ${err.message}`);
    process.exit(1);
  }
}

main();
