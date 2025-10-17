#!/usr/bin/env node
import {
  getCustomSchemas,
  getTablesFromSchemas,
  withClient,
} from "../helpers/db.js";
import { loadEnvironment } from "../helpers/env.js";
import { logger } from "../helpers/logger.js";

async function main() {
  const env = loadEnvironment();
  try {
    const schemas = await withClient(async (client) => {
      return await getCustomSchemas(client);
    }, env.SUPABASE_DB_URL);

    const tables = await withClient(async (client) => {
      return await getTablesFromSchemas(client, schemas);
    }, env.SUPABASE_DB_URL);

    logger.header("Database status", "📊");
    logger.section("Inspecting database (custom schemas only)", "🔎");

    if (!schemas || schemas.length === 0) {
      logger.failure("No custom schemas found");
      return;
    }

    logger.section(`Found ${schemas.length} schemas`, "📚");
    logger.list(schemas);

    logger.section(`Found ${tables.length} tables`, "📚");
    logger.list(tables.map((t) => `${t.schemaname}.${t.tablename}`));

    logger.blank();
    logger.success("Status check complete");
  } catch (err) {
    console.error("❌ Status check failed:", err.message || err);
    process.exit(1);
  }
}

main();
