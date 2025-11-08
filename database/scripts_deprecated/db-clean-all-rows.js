#!/usr/bin/env node
/**
 * Clean All Rows from All Custom Schemas
 *
 * Truncates ALL tables in ALL custom schemas
 * WARNING: This deletes ALL data including user gameplay!
 * Use only in development environments.
 *
 * Usage:
 *   npm run db:clean:all-rows [--dry] [--y]
 */

import { confirmOrExit, countdown, sqlEnabled } from "./helpers/cli.js";
import {
  getCustomSchemas,
  getTablesFromSchemas,
  withClient,
} from "./helpers/db.js";
import { loadEnvironment } from "./helpers/env.js";
import { logger } from "./helpers/logger.js";
import { executeSqlFile } from "./helpers/sql-runner.js";

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

    logger.header("Clear all data from all tables", "🗑️");
    logger.section("Tables to be truncated (includes user data)", "⚠️");
    logger.list(tables.map((t) => `${t.schemaname}.${t.tablename}`));

    const qualified = tables.map((t) => `${t.schemaname}.${t.tablename}`);
    const sql = `TRUNCATE TABLE ${qualified.join(", ")} RESTART IDENTITY CASCADE;`;
    if (sqlEnabled()) logger.sqlBlock(sql);

    if (dryRun) {
      logger.section("Dry run — no changes will be made", "🔍");
      return;
    }

    console.log("");
    logger.section(
      "⚠️  WARNING: This will delete ALL data including user progress!",
    );

    await confirmOrExit("Type 'y' to confirm truncating ALL tables: ", {
      flag: "--y",
    });

    await countdown(5);

    logger.section("Executing TRUNCATE statements", "🔥");
    const ok = await withClient(async (client) => {
      return await executeSqlFile(client, sql, "db-clean-all-rows");
    }, env.SUPABASE_DB_URL);

    if (!ok) process.exit(1);
    logger.success("All data cleared from all tables");
  } catch (err) {
    console.error("❌ Clear all rows failed:", err.message || err);
    process.exit(1);
  }
}

main();
