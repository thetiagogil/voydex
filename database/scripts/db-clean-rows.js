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

    const tables = await withClient(async (client) => {
      return await getTablesFromSchemas(client, schemas);
    }, env.SUPABASE_DB_URL);
    if (!tables || tables.length === 0) {
      logger.failure("No tables found in custom schemas");
      return;
    }

    logger.header("Clear data from tables", "🧹");
    logger.section("Tables to be truncated", "📚");
    logger.list(tables.map((t) => `${t.schemaname}.${t.tablename}`));

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
