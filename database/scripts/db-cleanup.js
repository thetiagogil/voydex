#!/usr/bin/env node

/**
 * Database Cleanup Script
 *
 * ⚠️  DANGER: This script removes ALL data from ALL schemas while preserving table structure.
 * Use this when you want to clear all Pokemon and user data but keep the database structure intact.
 *
 * What it does:
 * - Removes all data from dex, meta, and gameplay schemas
 * - Preserves all table structures and relationships
 * - Maintains foreign key constraints
 *
 * Manual execution only: node database/scripts/db-cleanup.js
 */

import {
  closeDatabaseConnection,
  connectToDatabase,
  createDatabaseClient,
  displaySummary,
  getCustomSchemas,
  getTablesFromSchemas,
  handleScriptError,
  loadEnvironment,
  showCountdown,
} from "../helpers/script-utils.js";

/**
 * Truncate all tables in specified schemas
 * @param {Client} client - Database client
 * @param {string[]} schemaNames - Schema names to clean
 * @returns {Promise<number>} Number of tables cleaned
 */
async function truncateAllTables(client, schemaNames) {
  let cleanedCount = 0;

  try {
    console.log("🔧 Disabling foreign key constraints...");
    await client.query("SET session_replication_role = replica;");

    // Get all tables from specified schemas
    const tables = await getTablesFromSchemas(client, schemaNames);

    if (tables.length === 0) {
      console.log("📭 No tables found to clean");
      return 0;
    }

    console.log(`\n🗑️  Clearing data from ${tables.length} tables...`);

    // Truncate each table
    for (const table of tables) {
      const fullTableName = `${table.schemaname}.${table.tablename}`;
      console.log(`   🗑️  Clearing ${fullTableName}`);

      await client.query(`TRUNCATE TABLE ${fullTableName} CASCADE;`);
      cleanedCount++;
    }

    console.log("\n🔧 Re-enabling foreign key constraints...");
    await client.query("SET session_replication_role = DEFAULT;");

    return cleanedCount;
  } catch (error) {
    // Always try to re-enable constraints
    try {
      await client.query("SET session_replication_role = DEFAULT;");
    } catch (constraintError) {
      console.error("⚠️  Warning: Could not re-enable foreign key constraints");
    }
    throw error;
  }
}

/**
 * Main function to run database cleanup
 */
async function cleanupDatabase() {
  let client;

  try {
    console.log("🧹 Pokemon Tracker Database Cleanup");
    console.log("===================================\n");

    // Load environment and create client
    const env = loadEnvironment();
    client = createDatabaseClient(env.SUPABASE_DB_URL);

    // Connect to database
    await connectToDatabase(client);

    // Display strong warnings
    console.log("⚠️  ⚠️  ⚠️  DANGER ZONE ⚠️  ⚠️  ⚠️");
    console.log("🔥 This will PERMANENTLY DELETE all data from ALL schemas!");
    console.log(
      "🏗️  Database structure (tables, relationships) will be preserved"
    );
    console.log("💾 Make sure you have backed up any important data\n");

    // Get schemas to clean
    const schemas = await getCustomSchemas(client);

    if (schemas.length === 0) {
      console.log("📭 No custom schemas found to clean");
      return;
    }

    console.log(`🎯 Target schemas: ${schemas.join(", ")}\n`);

    // Show countdown with cancellation option
    await showCountdown(20, "Database cleanup will begin");

    // Perform the cleanup
    const cleanedTables = await truncateAllTables(client, schemas);

    // Display summary
    displaySummary("Database Cleanup Complete", {
      "Schemas Cleaned": schemas.length,
      "Tables Cleared": cleanedTables,
      "Data Removed": "All records",
      Structure: "Preserved",
    });

    console.log('💡 Run "npm run db:seed" to repopulate with Pokemon data');
  } catch (error) {
    await handleScriptError(error, client, "Database cleanup");
  } finally {
    if (client) {
      await closeDatabaseConnection(client);
    }
  }
}

/* if (!validation.isValid) {
  throw new Error(
    `${ERROR_MESSAGES.SCHEMA_NOT_FOUND.message}: ${validation.missingSchemas.join(", ")}`
  );
} */

// Execute the cleanup operation
cleanupDatabase();
