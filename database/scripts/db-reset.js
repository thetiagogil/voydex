#!/usr/bin/env node

/**
 * Database Reset Script
 *
 * 🔥 EXTREME DANGER: This script completely destroys all database schemas and data.
 * This is the most destructive operation available - use only when absolutely necessary.
 *
 * What it does:
 * - Drops all custom schemas (dex, meta, gameplay) entirely
 * - Removes all tables, data, relationships, and constraints
 * - Requires complete rebuild via db-setup after execution
 *
 * Manual execution only: node database/scripts/db-reset.js
 */

import {
  closeDatabaseConnection,
  connectToDatabase,
  createDatabaseClient,
  displaySummary,
  getCustomSchemas,
  handleScriptError,
  loadEnvironment,
  showCountdown,
} from "../helpers/script-utils.js";

/**
 * Drop schemas in safe order (reverse dependency order)
 * @param {Client} client - Database client
 * @param {string[]} schemaNames - Schema names to drop
 * @returns {Promise<number>} Number of schemas dropped
 */
async function dropSchemasInOrder(client, schemaNames) {
  // Drop in reverse dependency order to avoid constraint issues
  const dropOrder = ["gameplay", "meta", "dex"];
  const schemasToProcess = dropOrder.filter((schema) =>
    schemaNames.includes(schema)
  );

  let droppedCount = 0;

  for (const schemaName of schemasToProcess) {
    try {
      console.log(`🗑️  Dropping schema: ${schemaName}`);
      await client.query(`DROP SCHEMA IF EXISTS ${schemaName} CASCADE;`);
      console.log(`✅ Dropped ${schemaName} schema`);
      droppedCount++;
    } catch (error) {
      console.error(`❌ Failed to drop ${schemaName} schema:`, error.message);
    }
  }

  return droppedCount;
}

/**
 * Main function to run database reset
 */
async function resetDatabase() {
  let client;

  try {
    console.log("🔥 Pokemon Tracker Database Reset");
    console.log("=================================\n");

    // Load environment and create client
    const env = loadEnvironment();
    client = createDatabaseClient(env.SUPABASE_DB_URL);

    // Connect to database
    await connectToDatabase(client);

    // Display extreme warnings
    console.log("🚨🚨🚨 EXTREME DANGER ZONE 🚨🚨🚨");
    console.log("💀 This will PERMANENTLY DELETE ALL schemas and data!");
    console.log("💀 This action CANNOT BE UNDONE!");
    console.log("💾 Make sure you have backed up any important data");
    console.log(
      '🔄 You will need to run "npm run db:setup" to rebuild the database\n'
    );

    // Check existing schemas
    const schemas = await getCustomSchemas(client);

    if (schemas.length === 0) {
      console.log("📭 No custom schemas found to reset");
      return;
    }

    console.log(`💀 Will destroy: ${schemas.join(", ")} schemas\n`);

    // Extended countdown for this dangerous operation
    await showCountdown(20, "Database reset will begin");

    console.log("💀 Starting database reset NOW...\n");

    // Drop all schemas
    const droppedCount = await dropSchemasInOrder(client, schemas);

    // Display summary
    displaySummary("Database Reset Complete", {
      "Schemas Dropped": droppedCount,
      "Tables Removed": "All",
      "Data Removed": "All",
      Status: "Database Empty",
    });

    console.log("⚠️  Database has been completely reset!");
    console.log('💡 Run "npm run db:setup" to recreate the database structure');
  } catch (error) {
    await handleScriptError(error, client, "Database reset");
  } finally {
    if (client) {
      await closeDatabaseConnection(client);
    }
  }
}

// Execute the database reset operation
resetDatabase();
