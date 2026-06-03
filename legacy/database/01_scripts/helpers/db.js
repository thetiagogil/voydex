/**
 * Database connection — pg client lifecycle and introspection queries.
 */

import { Client } from "pg";
import { SYSTEM_SCHEMAS, TIMEOUTS } from "../config/database.config.js";
import { loadEnvironment } from "./env.js";

export function createDatabaseClient(connectionString) {
  if (!connectionString) {
    throw new Error("Missing database connection string.");
  }
  return new Client({
    connectionString,
    statement_timeout: TIMEOUTS.statement,
  });
}

export async function connectToDatabase(client) {
  try {
    await client.connect();
  } catch (err) {
    throw new Error(`Failed to connect to database: ${err.message}`);
  }
}

export async function closeDatabaseConnection(client) {
  try {
    await client.end();
  } catch {
    /* ignore cleanup errors */
  }
}

/**
 * Run callback with automatic connect/disconnect.
 */
export async function withClient(callback, connectionString) {
  const env = loadEnvironment();
  const conn = connectionString || env.SUPABASE_DB_URL;
  const client = createDatabaseClient(conn);

  try {
    await connectToDatabase(client);
    return await callback(client);
  } finally {
    await closeDatabaseConnection(client);
  }
}

// ── Introspection ────────────────────────────────────

export async function getCustomSchemas(client) {
  const result = await client.query(`
    SELECT nspname FROM pg_namespace
    WHERE nspname NOT LIKE 'pg_%'
    ORDER BY nspname;
  `);
  return result.rows
    .map((r) => r.nspname)
    .filter((name) => name && !SYSTEM_SCHEMAS.has(name));
}

export async function getTablesFromSchemas(client, schemas) {
  if (!schemas?.length) return [];
  const rows = await Promise.all(
    schemas.map(async (schema) => {
      const res = await client.query(
        `SELECT schemaname, tablename FROM pg_tables WHERE schemaname = $1 ORDER BY tablename;`,
        [schema],
      );
      // Fetch row counts for each table
      const tables = [];
      for (const row of res.rows) {
        let row_count = 0;
        try {
          const countRes = await client.query(
            `SELECT COUNT(*) AS count FROM "${row.schemaname}"."${row.tablename}";`,
          );
          row_count = parseInt(countRes.rows[0]?.count ?? "0", 10);
        } catch {
          row_count = null;
        }
        tables.push({
          schemaname: row.schemaname,
          tablename: row.tablename,
          full_name: `${row.schemaname}.${row.tablename}`,
          row_count,
        });
      }
      return tables;
    }),
  );
  return rows.flat();
}

export async function getAllCustomTables(client) {
  const schemas = await getCustomSchemas(client);
  return getTablesFromSchemas(client, schemas);
}

export async function schemaExists(client, schemaName) {
  const res = await client.query(
    `SELECT EXISTS (SELECT 1 FROM pg_namespace WHERE nspname = $1) AS exists;`,
    [schemaName],
  );
  return res.rows[0]?.exists ?? false;
}

export async function tableExists(client, schemaName, tableName) {
  const res = await client.query(
    `SELECT EXISTS (SELECT 1 FROM pg_tables WHERE schemaname = $1 AND tablename = $2) AS exists;`,
    [schemaName, tableName],
  );
  return res.rows[0]?.exists ?? false;
}

export async function getTableRowCount(client, schemaName, tableName) {
  const res = await client.query(
    `SELECT COUNT(*) AS count FROM "${schemaName}"."${tableName}";`,
  );
  return parseInt(res.rows[0]?.count ?? "0", 10);
}

export async function getViewsInSchema(client, schemaName) {
  const res = await client.query(
    `SELECT table_name FROM information_schema.views WHERE table_schema = $1 ORDER BY table_name;`,
    [schemaName],
  );
  return res.rows.map((r) => r.table_name);
}
