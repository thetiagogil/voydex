#!/usr/bin/env node

/**
 * Database Seeding Script
 *
 * Populates the database with Pokemon reference data including:
 * - Game metadata (generations, regions, games, types, natures)
 * - Pokemon abilities with official descriptions
 * - Pokemon moves with stats and descriptions
 *
 * Usage: npm run db:seed
 */

import { join } from "path";
import {
  closeDatabaseConnection,
  connectToDatabase,
  createDatabaseClient,
  displaySummary,
  executeSqlFile,
  getCustomSchemas,
  handleScriptError,
  loadEnvironment,
  readSqlFile,
} from "../helpers/script-utils.js";

/**
 * Seed files to execute in order
 * Static data must be loaded first as it provides base reference data
 */
const SEED_FILES = [
  "001_static_data.sql", // Base game data (generations, regions, types, etc.)
  "002_abilities.sql", // Pokemon abilities from PokeAPI
  "003_moves.sql", // Pokemon moves with stats and descriptions
];

/**
 * Execute a single seed file
 * @param {Client} client - Database client
 * @param {string} filename - Seed filename
 * @returns {Promise<boolean>} Success status
 */
async function runSeedFile(client, filename) {
  const seedPath = join(process.cwd(), "database", "seed", filename);
  const sqlContent = readSqlFile(seedPath);

  return await executeSqlFile(client, sqlContent, filename);
}

/**
 * Get data counts for summary display
 * @param {Client} client - Database client
 * @returns {Promise<Object>} Object with data counts
 */
async function getDataCounts(client) {
  try {
    const queries = [
      { key: "Types", query: "SELECT COUNT(*) FROM dex.types" },
      { key: "Pokemon", query: "SELECT COUNT(*) FROM dex.pokemon_base" },
      { key: "Moves", query: "SELECT COUNT(*) FROM dex.moves" },
      { key: "Abilities", query: "SELECT COUNT(*) FROM dex.abilities" },
      { key: "Generations", query: "SELECT COUNT(*) FROM meta.generations" },
    ];

    const results = {};

    for (const { key, query } of queries) {
      try {
        const result = await client.query(query);
        results[key] = parseInt(result.rows[0].count);
      } catch (error) {
        results[key] = 0; // Table might not exist or be empty
      }
    }

    return results;
  } catch (error) {
    console.error(
      "⚠️  Warning: Could not retrieve data counts:",
      error.message
    );
    return {};
  }
}

/**
 * Main function to run database seeding
 */
async function seedDatabase() {
  let client;

  try {
    console.log("🌱 Pokemon Tracker Database Seeding");
    console.log("===================================\n");

    // Load environment and create client
    const env = loadEnvironment();
    client = createDatabaseClient(env.SUPABASE_DB_URL);

    // Connect to database
    await connectToDatabase(client);

    // Verify schemas exist before seeding
    console.log("🔍 Verifying database structure...");
    const schemas = await getCustomSchemas(client);

    if (schemas.length === 0) {
      console.error("❌ No database schemas found!");
      console.error(
        '💡 Run "npm run db:setup" first to create the database structure'
      );
      process.exit(1);
    }

    console.log(`✅ Found schemas: ${schemas.join(", ")}\n`);

    console.log("📊 Executing seed files...\n");

    // Execute each seed file
    for (const filename of SEED_FILES) {
      const success = await runSeedFile(client, filename);

      if (!success) {
        throw new Error(`Seeding failed at ${filename} - stopping execution`);
      }

      // Brief pause between files for better logging
      await new Promise((resolve) => setTimeout(resolve, 100));
    }

    console.log("\n� Gathering data statistics...");

    // Get data counts for summary
    const dataCounts = await getDataCounts(client);

    // Display summary
    displaySummary("Database Seeding Complete", dataCounts);

    console.log("� Your Pokemon database is now ready for use!");
  } catch (error) {
    await handleScriptError(error, client, "Database seeding");
  } finally {
    if (client) {
      await closeDatabaseConnection(client);
    }
  }
}

// Execute the seeding
seedDatabase();
