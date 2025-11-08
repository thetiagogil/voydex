#!/usr/bin/env node
import { confirmOrExit, countdown, sqlEnabled } from "./helpers/cli.js";
import { getCustomSchemas, withClient } from "./helpers/db.js";
import { loadEnvironment } from "./helpers/env.js";
import { logger } from "./helpers/logger.js";
import { executeSqlFile } from "./helpers/sql-runner.js";

// Usage:
// node database/scripts/db-clean.js [--dry] [--y]
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
      logger.failure("No custom schemas found to drop");
      return;
    }

    logger.header("Database reset", "🧹");
    logger.section("Schemas to drop", "📚");
    logger.list(schemas);

    const sql = schemas
      .map((s) => `DROP SCHEMA IF EXISTS ${s} CASCADE;`)
      .join("\n");
    if (sqlEnabled()) logger.sqlBlock(sql);

    if (dryRun) {
      logger.section("Dry run — no changes will be made", "🔍");
      return;
    }

    // Respect --yes / VERBOSE env patterns via confirmOrExit
    await confirmOrExit("Type 'y' to confirm dropping the above schemas: ", {
      flag: "--y",
    });

    await countdown(5);

    logger.section("Executing DROP statements", "🔥");

    // Execute using withClient so we open/close a client for the operation
    const ok = await withClient(async (client) => {
      return await executeSqlFile(client, sql, "db-clean");
    }, env.SUPABASE_DB_URL);
    if (!ok) process.exit(1);
    logger.success("Database reset complete");
  } catch (err) {
    console.error("❌ Reset failed:", err.message || err);
    process.exit(1);
  }
}

main();
