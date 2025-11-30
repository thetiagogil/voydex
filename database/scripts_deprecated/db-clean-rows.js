#!/usr/bin/env node
import { confirmOrExit, countdown, sqlEnabled } from "./helpers/cli.js";
import {
  getCustomSchemas,
  getTablesFromSchemas,
  withClient,
} from "./helpers/db.js";
import { loadEnvironment } from "./helpers/env.js";
import { logger } from "./helpers/logger.js";
import { executeSqlFile } from "./helpers/sql-runner.js";

// Usage:
// node database/scripts/clear-data.js [--dry] [--y]
// --dry  : don't execute, only print the SQL that would run
// --y  : skip interactive confirmation and run immediately

async function main() {
  const args = process.argv.slice(2);
  const dryRun = args.includes("--dry");

  const env = loadEnvironment();

  try {
    const schemas = await withClient(async (client) => {
      return await getCustomSchemas(client);
    }, env.SUPABASE_DB_URL);
    if (!schemas || schemas.length === 0) {
      logger.failure("No custom schemas found to clear");
      return;
    }

    const allTables = await withClient(async (client) => {
      return await getTablesFromSchemas(client, schemas);
    }, env.SUPABASE_DB_URL);
    if (!allTables || allTables.length === 0) {
      logger.failure("No tables found in custom schemas");
      return;
    }

    // IMPORTANT: Protect user-generated data tables
    // Only truncate reference/static data that can be safely reseeded
    const PROTECTED_TABLES = [
      "gameplay.plays", // User playthroughs (NEVER delete)
      "gameplay.team", // User team compositions (NEVER delete)
      "gameplay.progress", // User progress tracking (NEVER delete)
      "gameplay.pokemon_caught", // User caught Pokemon (NEVER delete)
      "public.users", // User profiles (NEVER delete)
    ];

    // Filter out protected tables
    const tables = allTables.filter((t) => {
      const qualifiedName = `${t.schemaname}.${t.tablename}`;
      return !PROTECTED_TABLES.includes(qualifiedName);
    });

    if (tables.length === 0) {
      logger.failure(
        "No safe tables found to truncate (all tables are protected)",
      );
      return;
    }

    logger.header("Clear data from tables", "🧹");
    logger.section("Tables to be truncated (reference data only)", "📚");
    logger.list(tables.map((t) => `${t.schemaname}.${t.tablename}`));

    if (allTables.length !== tables.length) {
      console.log("");
      logger.section("Protected tables (skipped)", "🔒");
      logger.list(PROTECTED_TABLES);
    }

    const qualified = tables.map((t) => `${t.schemaname}.${t.tablename}`);
    const sql = `TRUNCATE TABLE ${qualified.join(", ")} RESTART IDENTITY CASCADE;`;
    if (sqlEnabled()) logger.sqlBlock(sql);

    if (dryRun) {
      logger.section("Dry run — no changes will be made", "🔍");
      return;
    }

    await confirmOrExit("Type 'y' to confirm truncating the above tables: ", {
      flag: "--y",
    });

    await countdown(5);

    logger.section("Executing TRUNCATE statements", "🔥");
    const ok = await withClient(async (client) => {
      return await executeSqlFile(client, sql, "db-clean-rows");
    }, env.SUPABASE_DB_URL);
    if (!ok) process.exit(1);
    logger.success("Data cleared from tables");
  } catch (err) {
    console.error("❌ Clear data failed:", err.message || err);
    process.exit(1);
  }
}

main();
