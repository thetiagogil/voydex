#!/usr/bin/env node

/**
 * Database Setup Script
 *
 * Creates database schemas and tables by running migration files in the correct order.
 * This script establishes the complete database structure needed for the Pokemon Tracker application.
 *
 * Usage: npm run db:setup
 */

import { join } from "path";
import {
  closeDatabaseConnection,
  connectToDatabase,
  createDatabaseClient,
  displaySummary,
  executeSqlFile,
  getCustomSchemas,
  getTablesFromSchemas,
  handleScriptError,
  loadEnvironment,
  readSqlFile,
} from "../helpers/script-utils.js";

/**
 * Migration files in dependency order
 * Note: 006 must run before 005 due to foreign key dependencies
 */
const MIGRATION_FILES = [
  "001_create_schemas.sql",
  "002_create_core_meta_tables.sql",
  "003_create_dex_tables.sql",
  "004_create_pokemon_learnsets.sql",
  "006_create_meta_progress_tables.sql", // Dependencies require this order
  "005_create_gameplay_tables.sql",
  "007_create_meta_other_tables.sql",
];

/**
 * Execute a single migration file
 * @param {Client} client - Database client
 * @param {string} filename - Migration filename
 * @returns {Promise<boolean>} Success status
 */
async function runMigration(client, filename) {
  const migrationPath = join(process.cwd(), "database", "migrations", filename);
  const sqlContent = readSqlFile(migrationPath);

  return await executeSqlFile(client, sqlContent, filename);
}

/**
 * Main function to run database setup
 */
async function setupDatabase() {
  let client;

  try {
    console.log("🏗️  Pokemon Tracker Database Setup");
    console.log("=====================================\n");

    // Load environment and create client
    const env = loadEnvironment();
    client = createDatabaseClient(env.SUPABASE_DB_URL);

    // Connect to database
    await connectToDatabase(client);

    console.log("📊 Executing database migrations...\n");

    // Execute each migration file
    for (const filename of MIGRATION_FILES) {
      const success = await runMigration(client, filename);

      if (!success) {
        throw new Error(`Migration ${filename} failed - stopping setup`);
      }

      // Brief pause between migrations for better logging
      await new Promise((resolve) => setTimeout(resolve, 100));
    }

    console.log("\n� Verifying database structure...");

    // Get created schemas and tables
    const schemas = await getCustomSchemas(client);
    const tables = await getTablesFromSchemas(client, schemas);

    // Display verification results
    console.log("\n📋 Created tables:");
    tables.forEach((table) => {
      console.log(`   ${table.schemaname}.${table.tablename}`);
    });

    // Display summary
    displaySummary("Database Setup Complete", {
      "Schemas Created": schemas.length,
      "Tables Created": tables.length,
      "Migrations Executed": MIGRATION_FILES.length,
    });
  } catch (error) {
    await handleScriptError(error, client, "Database setup");
  } finally {
    if (client) {
      await closeDatabaseConnection(client);
    }
  }
}

// Execute the setup
setupDatabase();
