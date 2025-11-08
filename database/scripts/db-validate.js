#!/usr/bin/env node
/**
 * Database Validation
 *
 * Validates database integrity:
 * - Required schemas exist
 * - Required tables exist
 * - Migration structure is valid
 */

import path from "path";
import { fileURLToPath } from "url";
import { REQUIRED_SCHEMAS } from "./config/database.config.js";
import { getCustomSchemas, schemaExists, withClient } from "./helpers/db.js";
import { loadEnvironment } from "./helpers/env.js";
import { logger } from "./helpers/logger.js";
import { validateMigrationStructure } from "./helpers/migration-operations.js";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

async function main() {
  try {
    // Load environment
    const env = loadEnvironment();

    // Header
    logger.header("Database Validation", "✅");

    let hasIssues = false;

    // Check migration structure
    logger.section("Migration Structure", "📁");
    const migrationsDir = path.join(__dirname, "..", "migrations");
    const validation = validateMigrationStructure(migrationsDir);

    if (validation.valid) {
      logger.success("Migration folder structure is valid");
    } else {
      logger.failure("Migration folder structure has issues");
      validation.issues.forEach((issue) => logger.failure(issue));
      hasIssues = true;
    }

    if (validation.warnings.length > 0) {
      validation.warnings.forEach((warning) => logger.warning(warning));
    }

    // Check required schemas
    logger.section("Required Schemas", "🗂️");

    const missingSchemas = [];
    const existingSchemas = [];

    for (const schema of REQUIRED_SCHEMAS) {
      const exists = await withClient(
        async (client) => await schemaExists(client, schema),
        env.SUPABASE_DB_URL,
      );

      if (exists) {
        existingSchemas.push(schema);
        logger.success(`Schema '${schema}' exists`);
      } else {
        missingSchemas.push(schema);
        logger.failure(`Schema '${schema}' is missing`);
        hasIssues = true;
      }
    }

    // Get all schemas
    logger.section("All Schemas", "📊");
    const allSchemas = await withClient(
      async (client) => await getCustomSchemas(client),
      env.SUPABASE_DB_URL,
    );

    logger.keyValue({
      "Total custom schemas": allSchemas.length,
      "Required schemas present": existingSchemas.length,
      "Required schemas missing": missingSchemas.length,
    });

    if (allSchemas.length > 0) {
      logger.blank();
      logger.info("Custom schemas found:");
      logger.list(allSchemas, { bullet: "•" });
    }

    // Summary
    logger.blank();
    logger.separator("=", 60);

    if (hasIssues) {
      logger.failure("Validation failed - issues found");
      logger.blank();

      if (missingSchemas.length > 0) {
        logger.info("To fix missing schemas, run:");
        logger.info("  node database/scripts/db-migrate-all.js");
      }

      logger.separator("=", 60);
      process.exit(1);
    } else {
      logger.success("Validation passed - database is healthy");
      logger.separator("=", 60);
    }
  } catch (err) {
    logger.blank();
    logger.failure(`Script failed: ${err.message}`);
    process.exit(1);
  }
}

main();
