#!/usr/bin/env node

/**
 * Command: db-status
 * Shows current database state: schemas, tables, row counts.
 */

import { getDatabaseStats } from "../helpers/db-operations.js";
import {
  getCustomSchemas,
  getTablesFromSchemas,
  withClient,
} from "../helpers/db.js";
import { loadEnvironment } from "../helpers/env.js";
import { logger } from "../helpers/logger.js";

async function main() {
  loadEnvironment();
  logger.header("Database Status");

  await withClient(async (client) => {
    const schemas = await getCustomSchemas(client);
    logger.section("Schemas");
    if (schemas.length === 0) {
      logger.warning("No custom schemas found");
      return;
    }
    logger.list(schemas);

    const tables = await getTablesFromSchemas(client, schemas);
    logger.section("Tables");
    for (const table of tables) {
      logger.keyValue(table.full_name, `${table.row_count ?? "?"} rows`);
    }

    const stats = await getDatabaseStats(client);
    logger.section("Summary");
    logger.keyValue("Schemas", stats.schemaCount);
    logger.keyValue("Tables", stats.tableCount);
    logger.keyValue("Total rows", stats.totalRows);
  });
}

main().catch((err) => {
  logger.failure(err.message);
  process.exit(1);
});
