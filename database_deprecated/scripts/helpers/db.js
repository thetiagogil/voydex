/**
 * Database Connection Utility
 *
 * Manages PostgreSQL client creation and connection lifecycle
 */

import { Client } from "pg";
import { SYSTEM_SCHEMAS, TIMEOUTS } from "../config/database.config.js";
import { loadEnvironment } from "./env.js";

/**
 * Create a new PostgreSQL client
 */
export function createDatabaseClient(connectionString) {
  if (!connectionString) {
    throw new Error(
      "Missing database connection string. Ensure SUPABASE_DB_URL is set in your environment.",
    );
  }

  return new Client({
    connectionString,
    // Increase timeout for long-running migrations
    statement_timeout: TIMEOUTS.statement,
  });
}

/**
 * Connect to database
 */
export async function connectToDatabase(client) {
  try {
    await client.connect();
  } catch (err) {
    throw new Error(`Failed to connect to database: ${err.message}`);
  }
}

/**
 * Close database connection
 */
export async function closeDatabaseConnection(client) {
  try {
    await client.end();
  } catch (err) {
    // Ignore errors during cleanup
  }
}

/**
 * Execute operation with automatic connection management
 */
export async function withClient(callback, connectionString) {
  const env = loadEnvironment();
  const conn = connectionString || env.SUPABASE_DB_URL;

  if (!conn) {
    throw new Error(
      "Database connection string not provided and SUPABASE_DB_URL not set",
    );
  }

  const client = createDatabaseClient(conn);

  try {
    await connectToDatabase(client);
    return await callback(client);
  } finally {
    await closeDatabaseConnection(client);
  }
}

/**
 * Get list of custom schemas (excludes system/supabase schemas)
 */
export async function getCustomSchemas(client) {
  const result = await client.query(`
    SELECT nspname 
    FROM pg_namespace 
    WHERE nspname NOT LIKE 'pg_%'
    ORDER BY nspname;
  `);

  return result.rows
    .map((row) => row.nspname)
    .filter((name) => {
      if (!name) return false;
      if (SYSTEM_SCHEMAS.has(name)) return false;
      return true;
    });
}

/**
 * Get tables from specific schemas
 */
export async function getTablesFromSchemas(client, schemas) {
  if (!schemas || schemas.length === 0) {
    return [];
  }

  const results = await Promise.all(
    schemas.map(async (schema) => {
      const result = await client.query(
        `
        SELECT schemaname, tablename 
        FROM pg_tables 
        WHERE schemaname = $1 
        ORDER BY tablename;
        `,
        [schema],
      );
      return result.rows;
    }),
  );

  return results.flat();
}

/**
 * Get all tables in the database (custom schemas only)
 */
export async function getAllCustomTables(client) {
  const schemas = await getCustomSchemas(client);
  return getTablesFromSchemas(client, schemas);
}

/**
 * Check if a schema exists
 */
export async function schemaExists(client, schemaName) {
  const result = await client.query(
    `
    SELECT EXISTS (
      SELECT 1 FROM pg_namespace WHERE nspname = $1
    ) as exists;
    `,
    [schemaName],
  );
  return result.rows[0]?.exists || false;
}

/**
 * Check if a table exists
 */
export async function tableExists(client, schemaName, tableName) {
  const result = await client.query(
    `
    SELECT EXISTS (
      SELECT 1 
      FROM pg_tables 
      WHERE schemaname = $1 AND tablename = $2
    ) as exists;
    `,
    [schemaName, tableName],
  );
  return result.rows[0]?.exists || false;
}

/**
 * Get table row count
 */
export async function getTableRowCount(client, schemaName, tableName) {
  const result = await client.query(
    `SELECT COUNT(*) as count FROM "${schemaName}"."${tableName}";`,
  );
  return parseInt(result.rows[0]?.count || "0", 10);
}
