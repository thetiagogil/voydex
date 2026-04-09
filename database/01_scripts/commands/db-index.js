#!/usr/bin/env node

/**
 * Command: db-index
 * Creates or drops secondary performance indexes.
 *
 * Usage:
 *   db:index                Create all secondary indexes
 *   db:index:reference      Create reference indexes only
 *   db:index:tracking       Create tracking indexes only
 *   db:index:gameplay       Create gameplay indexes only
 *   db:index:drop           Drop all secondary indexes
 *   db:index:drop:reference Drop reference indexes only
 */

import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";
import { CATEGORY_ORDER, INDEX_FILES } from "../config/database.config.js";
import {
  confirmOrExit,
  getFlag,
  hasFlag,
  isForceMode,
} from "../helpers/cli.js";
import { withClient } from "../helpers/db.js";
import { loadEnvironment } from "../helpers/env.js";
import { logger, withTiming } from "../helpers/logger.js";
import { executeSql } from "../helpers/sql-runner.js";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const INDEXES_DIR = path.resolve(__dirname, "../../04_indexes");

/**
 * Parse index names from a SQL file (both CREATE INDEX and CREATE INDEX IF NOT EXISTS).
 */
function parseIndexNames(sqlContent) {
  const names = [];
  const regex = /CREATE\s+INDEX\s+(?:IF\s+NOT\s+EXISTS\s+)?(\w+)/gi;
  let match;
  while ((match = regex.exec(sqlContent)) !== null) {
    names.push(match[1]);
  }
  return names;
}

/**
 * Parse schema names from index definitions to know which schema to drop from.
 */
function parseIndexSchemaMap(sqlContent) {
  const map = {};
  const regex =
    /CREATE\s+INDEX\s+(?:IF\s+NOT\s+EXISTS\s+)?(\w+)\s+ON\s+(\w+)\./gi;
  let match;
  while ((match = regex.exec(sqlContent)) !== null) {
    map[match[1]] = match[2];
  }
  return map;
}

/**
 * Get index files for the specified categories.
 */
function getIndexFiles(categories) {
  return categories
    .map((cat) => {
      const filename = INDEX_FILES[cat];
      if (!filename) return null;
      const fullPath = path.join(INDEXES_DIR, filename);
      if (!fs.existsSync(fullPath)) return null;
      return { category: cat, filename, fullPath };
    })
    .filter(Boolean);
}

async function createIndexes(client, categories) {
  const files = getIndexFiles(categories);

  if (files.length === 0) {
    logger.warning("No index files found");
    return;
  }

  for (const { category, filename, fullPath } of files) {
    const sql = fs.readFileSync(fullPath, "utf8");
    const indexNames = parseIndexNames(sql);
    logger.info(`Creating ${indexNames.length} indexes for ${category}`);

    const result = await executeSql(client, sql, `Indexes: ${filename}`);
    if (!result.success) {
      logger.failure(`Failed to create indexes for ${category}`);
      process.exit(1);
    }
  }
}

async function dropIndexes(client, categories) {
  const files = getIndexFiles(categories);

  if (files.length === 0) {
    logger.warning("No index files found");
    return;
  }

  for (const { category, fullPath } of files) {
    const sql = fs.readFileSync(fullPath, "utf8");
    const schemaMap = parseIndexSchemaMap(sql);

    const dropStatements = Object.entries(schemaMap)
      .map(([name, schema]) => `DROP INDEX IF EXISTS "${schema}"."${name}";`)
      .join("\n");

    if (!dropStatements) {
      logger.info(`No indexes to drop for ${category}`);
      continue;
    }

    logger.info(
      `Dropping ${Object.keys(schemaMap).length} indexes for ${category}`,
    );
    const result = await executeSql(
      client,
      dropStatements,
      `Drop indexes: ${category}`,
    );
    if (!result.success) {
      logger.failure(`Failed to drop indexes for ${category}`);
      process.exit(1);
    }
  }
}

async function main() {
  loadEnvironment();

  const drop = hasFlag("drop");
  const category = getFlag("category");

  if (category && !CATEGORY_ORDER.includes(category) && category !== "public") {
    logger.failure(`Unknown category: ${category}`);
    logger.info(`Valid categories: public, ${CATEGORY_ORDER.join(", ")}`);
    process.exit(1);
  }

  const categories = category ? [category] : ["public", ...CATEGORY_ORDER];

  if (drop) {
    logger.header("Drop Secondary Indexes");

    if (!isForceMode()) {
      await confirmOrExit(
        `Drop secondary indexes for: ${categories.join(", ")}?`,
      );
    }

    await withClient(async (client) => {
      await withTiming(() => dropIndexes(client, categories), "Drop Indexes");
    });
  } else {
    logger.header("Create Secondary Indexes");

    await withClient(async (client) => {
      await withTiming(
        () => createIndexes(client, categories),
        "Create Indexes",
      );
    });
  }
}

main().catch((err) => {
  logger.failure(err.message);
  process.exit(1);
});
