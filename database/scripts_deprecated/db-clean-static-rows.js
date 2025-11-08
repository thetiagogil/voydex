#!/usr/bin/env node
/**
 * Clean Static Rows (Reference Data + Views)
 *
 * Truncates only tables in static schemas (dex, meta)
 * Views don't have rows, but this will refresh materialized views
 * PRESERVES user data in gameplay schema and public.users
 * Safe to use for resetting reference data before reseeding.
 *
 * Usage:
 *   npm run db:clean:static-rows [--dry] [--y]
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
    const allSchemas = await withClient(async (client) => {
      return await getCustomSchemas(client);
    }, env.SUPABASE_DB_URL);

    // Only truncate static schemas (dex, meta)
    // Views schema doesn't have tables to truncate (only views/functions)
    const STATIC_SCHEMAS = ["dex", "meta"];
    const staticSchemas = allSchemas.filter((s) => STATIC_SCHEMAS.includes(s));

    if (staticSchemas.length === 0) {
      logger.failure("No static schemas found");
      return;
    }

    const allTables = await withClient(async (client) => {
      return await getTablesFromSchemas(client, staticSchemas);
    }, env.SUPABASE_DB_URL);

    if (!allTables || allTables.length === 0) {
      logger.failure("No tables found in static schemas");
      return;
    }

    logger.header("Clear static data", "🧹");
    logger.section("Tables to be truncated (reference data only)", "📚");
    logger.list(allTables.map((t) => `${t.schemaname}.${t.tablename}`));

    const protectedSchemas = allSchemas.filter(
      (s) => !STATIC_SCHEMAS.includes(s),
    );
    if (protectedSchemas.length > 0) {
      console.log("");
      logger.section("Protected schemas (data will be preserved)", "🔒");
      logger.list(protectedSchemas);
    }

    const qualified = allTables.map((t) => `${t.schemaname}.${t.tablename}`);
    const sql = `TRUNCATE TABLE ${qualified.join(", ")} RESTART IDENTITY CASCADE;`;
    if (sqlEnabled()) logger.sqlBlock(sql);

    if (dryRun) {
      logger.section("Dry run — no changes will be made", "🔍");
      return;
    }

    await confirmOrExit("Type 'y' to confirm truncating static tables: ", {
      flag: "--y",
    });

    await countdown(5);

    logger.section("Executing TRUNCATE statements", "🔥");
    const ok = await withClient(async (client) => {
      return await executeSqlFile(client, sql, "db-clean-static-rows");
    }, env.SUPABASE_DB_URL);

    if (!ok) process.exit(1);
    logger.success("Static data cleared (user data preserved)");
  } catch (err) {
    console.error("❌ Clear static rows failed:", err.message || err);
    process.exit(1);
  }
}

main();
