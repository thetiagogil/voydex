#!/usr/bin/env node
/**
 * Clean Static Schemas and Views
 *
 * Drops only static/reference schemas (dex, meta, views)
 * PRESERVES user data in gameplay schema and public.users
 * Safe to use in development for resetting reference data.
 *
 * Usage:
 *   npm run db:clean:static [--dry] [--y]
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
    const allSchemas = await withClient(async (client) => {
      return await getCustomSchemas(client);
    }, env.SUPABASE_DB_URL);

    // Only drop static/reference schemas (preserve gameplay and public)
    const STATIC_SCHEMAS = ["dex", "meta", "views"];
    const schemasToKeep = allSchemas.filter((s) => !STATIC_SCHEMAS.includes(s));
    const schemasToDrop = allSchemas.filter((s) => STATIC_SCHEMAS.includes(s));

    if (schemasToDrop.length === 0) {
      logger.failure("No static schemas found to drop");
      return;
    }

    logger.header("Drop static schemas", "🧹");
    logger.section("Schemas to drop (reference data + views)", "📚");
    logger.list(schemasToDrop);

    if (schemasToKeep.length > 0) {
      console.log("");
      logger.section("Protected schemas (will be preserved)", "🔒");
      logger.list(schemasToKeep);
    }

    const sql = schemasToDrop
      .map((s) => `DROP SCHEMA IF EXISTS ${s} CASCADE;`)
      .join("\n");
    if (sqlEnabled()) logger.sqlBlock(sql);

    if (dryRun) {
      logger.section("Dry run — no changes will be made", "🔍");
      return;
    }

    await confirmOrExit("Type 'y' to confirm dropping static schemas: ", {
      flag: "--y",
    });

    await countdown(5);

    logger.section("Executing DROP statements", "🔥");
    const ok = await withClient(async (client) => {
      return await executeSqlFile(client, sql, "db-clean-static");
    }, env.SUPABASE_DB_URL);

    if (!ok) process.exit(1);
    logger.success("Static schemas dropped (user data preserved)");
  } catch (err) {
    console.error("❌ Clean static failed:", err.message || err);
    process.exit(1);
  }
}

main();
