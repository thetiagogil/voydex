#!/usr/bin/env node
/**
 * Clean All Custom Schemas
 *
 * Drops ALL custom schemas (dex, meta, gameplay, views)
 * WARNING: This deletes EVERYTHING including user data!
 * Use only in development environments.
 *
 * Usage:
 *   npm run db:clean:all [--dry] [--y]
 */

import { confirmOrExit, countdown, sqlEnabled } from "./helpers/cli.js";
import { getCustomSchemas, withClient } from "./helpers/db.js";
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
      logger.failure("No custom schemas found to drop");
      return;
    }

    logger.header("Drop all custom schemas", "🗑️");
    logger.section("Schemas to drop (includes ALL user data)", "⚠️");
    logger.list(schemas);

    const sql = schemas
      .map((s) => `DROP SCHEMA IF EXISTS ${s} CASCADE;`)
      .join("\n");
    if (sqlEnabled()) logger.sqlBlock(sql);

    if (dryRun) {
      logger.section("Dry run — no changes will be made", "🔍");
      return;
    }

    console.log("");
    logger.section(
      "⚠️  WARNING: This will delete ALL data including user progress!",
    );

    await confirmOrExit("Type 'y' to confirm dropping ALL schemas: ", {
      flag: "--y",
    });

    await countdown(5);

    logger.section("Executing DROP statements", "🔥");
    const ok = await withClient(async (client) => {
      return await executeSqlFile(client, sql, "db-clean-all");
    }, env.SUPABASE_DB_URL);

    if (!ok) process.exit(1);
    logger.success("All custom schemas dropped");
  } catch (err) {
    console.error("❌ Clean all failed:", err.message || err);
    process.exit(1);
  }
}

main();
