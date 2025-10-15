/**
 * Database Script Helper
 *
 * Common functionality for database management scripts.
 * Provides connection management, environment loading, logging utilities,
 * and safety features for database operations.
 */

import { existsSync, readFileSync } from "fs";
import { join } from "path";
import { Client } from "pg";

/**
 * Load environment variables from .env.local file
 * @returns {Object} Environment variables object
 * @throws {Error} If .env.local file is not found or DATABASE_URL is missing
 */
export function loadEnvironment() {
  const envPath = join(process.cwd(), ".env.local");

  if (!existsSync(envPath)) {
    console.error("❌ Environment file not found: .env.local");
    console.error("💡 Create a .env.local file in your project root with:");
    console.error("   SUPABASE_DB_URL=your_database_connection_string");
    process.exit(1);
  }

  const env = {};
  const envContent = readFileSync(envPath, "utf8");

  envContent.split("\n").forEach((line) => {
    const trimmedLine = line.trim();
    if (trimmedLine && !trimmedLine.startsWith("#")) {
      const [key, ...valueParts] = trimmedLine.split("=");
      if (key && valueParts.length > 0) {
        const value = valueParts.join("=").trim();
        if (value) {
          env[key.trim()] = value;
        }
      }
    }
  });

  if (!env.SUPABASE_DB_URL) {
    console.error("❌ Missing SUPABASE_DB_URL in .env.local");
    console.error("💡 Add this line to your .env.local file:");
    console.error(
      "   SUPABASE_DB_URL=postgresql://postgres.[project]:[password]@[host]:6543/postgres"
    );
    process.exit(1);
  }

  return env;
}

/**
 * Create and configure a database client
 * @param {string} connectionString - PostgreSQL connection string
 * @returns {Client} Configured PostgreSQL client
 */
export function createDatabaseClient(connectionString) {
  return new Client({
    connectionString,
    // Connection timeout and other optimizations
    connectionTimeoutMillis: 30000,
    statement_timeout: 60000,
    query_timeout: 60000,
  });
}

/**
 * Establish database connection with error handling
 * @param {Client} client - PostgreSQL client
 * @returns {Promise<void>}
 */
export async function connectToDatabase(client) {
  try {
    console.log("📡 Establishing database connection...");
    await client.connect();
    console.log("✅ Database connection established successfully\n");
  } catch (error) {
    console.error("❌ Failed to connect to database:", error.message);
    console.error("💡 Check your connection string and network access");
    process.exit(1);
  }
}

/**
 * Safely close database connection
 * @param {Client} client - PostgreSQL client
 */
export async function closeDatabaseConnection(client) {
  try {
    await client.end();
    console.log("🔌 Database connection closed");
  } catch (error) {
    console.error(
      "⚠️  Warning: Error closing database connection:",
      error.message
    );
  }
}

/**
 * Execute SQL file content with error handling
 * @param {Client} client - Database client
 * @param {string} sqlContent - SQL content to execute
 * @param {string} filename - Filename for logging purposes
 * @returns {Promise<boolean>} Success status
 */
export async function executeSqlFile(client, sqlContent, filename) {
  try {
    console.log(`🔄 Executing: ${filename}`);
    await client.query(sqlContent);
    console.log(`✅ Successfully completed: ${filename}`);
    return true;
  } catch (error) {
    console.error(`❌ Failed to execute ${filename}:`);
    console.error(`   Error: ${error.message}`);
    return false;
  }
}

/**
 * Read SQL file with error handling
 * @param {string} filePath - Path to SQL file
 * @returns {string} SQL file content
 * @throws {Error} If file cannot be read
 */
export function readSqlFile(filePath) {
  try {
    return readFileSync(filePath, "utf8");
  } catch (error) {
    console.error(`❌ Failed to read SQL file: ${filePath}`);
    console.error(`   Error: ${error.message}`);
    process.exit(1);
  }
}

/**
 * Display a countdown with cancellation option
 * @param {number} seconds - Number of seconds to countdown
 * @param {string} message - Message to display during countdown
 * @returns {Promise<void>}
 */
export async function showCountdown(seconds, message = "Operation will begin") {
  console.log(`🔄 ${message} in:`);

  for (let i = seconds; i > 0; i--) {
    console.log(
      `   ⏰ ${i} second${i !== 1 ? "s" : ""}... (Press Ctrl+C to cancel)`
    );
    await new Promise((resolve) => setTimeout(resolve, 1000));
  }

  console.log("🚀 Starting operation NOW...\n");
}

/**
 * Get list of custom schemas (dex, meta, gameplay)
 * @param {Client} client - Database client
 * @returns {Promise<string[]>} Array of schema names
 */
export async function getCustomSchemas(client) {
  try {
    const result = await client.query(`
      SELECT schema_name 
      FROM information_schema.schemata 
      WHERE schema_name IN ('dex', 'meta', 'gameplay')
      ORDER BY schema_name;
    `);

    return result.rows.map((row) => row.schema_name);
  } catch (error) {
    console.error("❌ Failed to retrieve schemas:", error.message);
    return [];
  }
}

/**
 * Get list of tables from specified schemas
 * @param {Client} client - Database client
 * @param {string[]} schemaNames - Array of schema names to query
 * @returns {Promise<Array>} Array of table objects with schema and table names
 */
export async function getTablesFromSchemas(client, schemaNames) {
  try {
    const schemaList = schemaNames.map((name) => `'${name}'`).join(", ");

    const result = await client.query(`
      SELECT schemaname, tablename 
      FROM pg_tables 
      WHERE schemaname IN (${schemaList})
      ORDER BY schemaname, tablename;
    `);

    return result.rows;
  } catch (error) {
    console.error("❌ Failed to retrieve tables:", error.message);
    return [];
  }
}

/**
 * Display operation summary with emoji formatting
 * @param {string} title - Summary title
 * @param {Object} stats - Statistics object
 */
export function displaySummary(title, stats = {}) {
  console.log(`\n📊 ${title}:`);

  Object.entries(stats).forEach(([key, value]) => {
    const emoji = getEmojiForKey(key);
    console.log(`   ${emoji} ${key}: ${value}`);
  });

  console.log("\n🎉 Operation completed successfully!");
}

/**
 * Get appropriate emoji for a stat key
 * @param {string} key - Statistic key
 * @returns {string} Appropriate emoji
 */
function getEmojiForKey(key) {
  const emojiMap = {
    schemas: "🏗️",
    tables: "📋",
    types: "🔷",
    pokemon: "🐾",
    moves: "⚔️",
    abilities: "✨",
    generations: "📚",
    games: "🎮",
    regions: "🗺️",
    natures: "🧬",
  };

  const lowerKey = key.toLowerCase();
  return emojiMap[lowerKey] || "📊";
}

/**
 * Handle script errors with proper cleanup
 * @param {Error} error - The error that occurred
 * @param {Client} client - Database client to close
 * @param {string} operation - Name of the operation that failed
 */
export async function handleScriptError(error, client, operation) {
  console.error(`\n❌ ${operation} failed:`, error.message);

  if (client) {
    await closeDatabaseConnection(client);
  }

  console.error("\n💡 Check the error message above for details");
  process.exit(1);
}
