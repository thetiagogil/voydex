#!/usr/bin/env node

/**
 * Reference Data Cleanup Script
 *
 * ⚠️  Clears Pokemon reference data (dex + meta schemas) while preserving user gameplay data.
 * This is a safer alternative to full database cleanup when you want to refresh Pokemon data
 * but keep user progress intact.
 *
 * What it does:
 * - Removes all data from 'dex' schema (Pokemon, moves, abilities, types, etc.)
 * - Removes all data from 'meta' schema (games, generations, regions, etc.)
 * - PRESERVES all data in 'gameplay' schema (user plays, progress, teams)
 * - Preserves all table structures and relationships
 *
 * Manual execution only: node database/scripts/db-cleanup-static.js
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
 * Reference schemas to clean (excludes gameplay)
 */
const REFERENCE_SCHEMAS = ["dex", "meta"];

/**
 * Truncate tables in reference schemas only
 * @param {Client} client - Database client
 * @param {string[]} referenceSchemas - Reference schema names to clean
 * @returns {Promise<number>} Number of tables cleaned
 */
async function truncateReferenceTables(client, referenceSchemas) {
  let cleanedCount = 0;

  try {
    console.log("🔧 Disabling foreign key constraints...");
    await client.query("SET session_replication_role = replica;");

    // Get tables from reference schemas only
    const tables = await getTablesFromSchemas(client, referenceSchemas);

    if (tables.length === 0) {
      console.log("📭 No reference tables found to clean");
      return 0;
    }

    console.log(
      `\n🗑️  Clearing reference data from ${tables.length} tables...`
    );

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
 * Main function to run reference data cleanup
 */
async function cleanupReferenceData() {
  let client;

  try {
    console.log("🎯 Pokemon Reference Data Cleanup");
    console.log("=================================\n");

    // Load environment and create client
    const env = loadEnvironment();
    client = createDatabaseClient(env.SUPABASE_DB_URL);

    // Connect to database
    await connectToDatabase(client);

    // Display targeted warnings
    console.log("⚠️  This will delete Pokemon reference data ONLY");
    console.log(
      "🗑️  Target: dex + meta schemas (Pokemon data, games, moves, abilities)"
    );
    console.log("🛡️  PRESERVED: gameplay schema (user progress, plays, teams)");
    console.log("🏗️  Database structure will be preserved\n");

    // Get all schemas to show what will be preserved
    const allSchemas = await getCustomSchemas(client);
    const targetSchemas = allSchemas.filter((schema) =>
      REFERENCE_SCHEMAS.includes(schema)
    );
    const preservedSchemas = allSchemas.filter(
      (schema) => !REFERENCE_SCHEMAS.includes(schema)
    );

    if (targetSchemas.length === 0) {
      console.log("📭 No reference schemas found to clean");
      return;
    }

    console.log(`🎯 Will clean: ${targetSchemas.join(", ")}`);
    if (preservedSchemas.length > 0) {
      console.log(`🛡️  Will preserve: ${preservedSchemas.join(", ")}`);
    }
    console.log("");

    // Shorter countdown since this is safer
    await showCountdown(20, "Reference data cleanup will begin");

    // Perform the cleanup
    const cleanedTables = await truncateReferenceTables(client, targetSchemas);

    // Verify preserved data exists
    let preservedCount = 0;
    if (preservedSchemas.length > 0) {
      const preservedTables = await getTablesFromSchemas(
        client,
        preservedSchemas
      );
      preservedCount = preservedTables.length;
    }

    // Display summary
    displaySummary("Reference Data Cleanup Complete", {
      "Reference Schemas Cleaned": targetSchemas.length,
      "Reference Tables Cleared": cleanedTables,
      "Preserved Schemas": preservedSchemas.length,
      "Preserved Tables": preservedCount,
      "User Data": preservedCount > 0 ? "Intact" : "N/A",
    });

    console.log('💡 Run "npm run db:seed" to reload Pokemon reference data');
  } catch (error) {
    await handleScriptError(error, client, "Reference data cleanup");
  } finally {
    if (client) {
      await closeDatabaseConnection(client);
    }
  }
}

// Execute the reference data cleanup operation
cleanupReferenceData();
