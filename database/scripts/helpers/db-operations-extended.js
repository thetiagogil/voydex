/**
 * Database Operations Helper - Extended
 *
 * Additional helper functions for database operations.
 * These supplement db-operations.js with view-specific and
 * migration-specific utilities.
 */

import { withClient } from "./db.js";
import { logger } from "./logger.js";

// =====================================================
// View Operations
// =====================================================

/**
 * Get all views in a schema
 */
export async function getViewsInSchema(schemaName, dbUrl) {
  return withClient(async (client) => {
    const result = await client.query(
      `
      SELECT table_name 
      FROM information_schema.views 
      WHERE table_schema = $1
      ORDER BY table_name;
      `,
      [schemaName],
    );
    return result.rows.map((row) => row.table_name);
  }, dbUrl);
}

/**
 * Check if a view exists
 */
export async function viewExists(schemaName, viewName, dbUrl) {
  return withClient(async (client) => {
    const result = await client.query(
      `
      SELECT EXISTS (
        SELECT 1 
        FROM information_schema.views 
        WHERE table_schema = $1 AND table_name = $2
      ) as exists;
      `,
      [schemaName, viewName],
    );
    return result.rows[0]?.exists || false;
  }, dbUrl);
}

/**
 * Refresh a materialized view
 */
export async function refreshMaterializedView(
  schemaName,
  viewName,
  concurrently = false,
  dbUrl,
) {
  const concurrentlyClause = concurrently ? "CONCURRENTLY " : "";
  const sql = `REFRESH MATERIALIZED VIEW ${concurrentlyClause}"${schemaName}"."${viewName}";`;

  return withClient(async (client) => {
    const start = Date.now();
    try {
      await client.query(sql);
      const duration = Date.now() - start;
      return { success: true, duration };
    } catch (err) {
      const duration = Date.now() - start;
      return { success: false, error: err, duration };
    }
  }, dbUrl);
}

// =====================================================
// Index Operations
// =====================================================

/**
 * Get all indexes for a table
 */
export async function getTableIndexes(schemaName, tableName, dbUrl) {
  return withClient(async (client) => {
    const result = await client.query(
      `
      SELECT 
        indexname,
        indexdef
      FROM pg_indexes
      WHERE schemaname = $1 AND tablename = $2
      ORDER BY indexname;
      `,
      [schemaName, tableName],
    );
    return result.rows;
  }, dbUrl);
}

/**
 * Check if an index exists
 */
export async function indexExists(schemaName, indexName, dbUrl) {
  return withClient(async (client) => {
    const result = await client.query(
      `
      SELECT EXISTS (
        SELECT 1 
        FROM pg_indexes 
        WHERE schemaname = $1 AND indexname = $2
      ) as exists;
      `,
      [schemaName, indexName],
    );
    return result.rows[0]?.exists || false;
  }, dbUrl);
}

// =====================================================
// Statistics & Reporting
// =====================================================

/**
 * Get database size statistics
 */
export async function getDatabaseStats(dbUrl) {
  return withClient(async (client) => {
    const result = await client.query(`
      SELECT 
        pg_database.datname AS database_name,
        pg_size_pretty(pg_database_size(pg_database.datname)) AS size
      FROM pg_database
      WHERE pg_database.datname = current_database();
    `);
    return result.rows[0];
  }, dbUrl);
}

/**
 * Get table sizes for a schema
 */
export async function getTableSizes(schemaName, dbUrl) {
  return withClient(async (client) => {
    const result = await client.query(
      `
      SELECT 
        tablename,
        pg_size_pretty(pg_total_relation_size('"' || schemaname || '"."' || tablename || '"')) AS total_size,
        pg_size_pretty(pg_relation_size('"' || schemaname || '"."' || tablename || '"')) AS table_size,
        pg_size_pretty(pg_indexes_size('"' || schemaname || '"."' || tablename || '"')) AS indexes_size
      FROM pg_tables
      WHERE schemaname = $1
      ORDER BY pg_total_relation_size('"' || schemaname || '"."' || tablename || '"') DESC;
      `,
      [schemaName],
    );
    return result.rows;
  }, dbUrl);
}

/**
 * Print a summary of database status
 */
export async function printDatabaseSummary(schemas, dbUrl) {
  logger.section("Database Summary", "📊");

  // Get overall stats
  const stats = await getDatabaseStats(dbUrl);
  logger.keyValue({
    Database: stats.database_name,
    "Total Size": stats.size,
  });

  // Per-schema breakdown
  for (const schema of schemas) {
    const tableSizes = await getTableSizes(schema, dbUrl);
    if (tableSizes.length > 0) {
      logger.blank();
      console.log(`  📁 ${schema}:`);
      tableSizes.forEach((t) => {
        console.log(
          `     • ${t.tablename}: ${t.total_size} (data: ${t.table_size}, indexes: ${t.indexes_size})`,
        );
      });
    }
  }
}

// =====================================================
// Validation Helpers
// =====================================================

/**
 * Validate that required tables exist
 */
export async function validateRequiredTables(requiredTables, dbUrl) {
  const missing = [];
  const found = [];

  for (const table of requiredTables) {
    const [schema, tableName] = table.split(".");
    const exists = await withClient(async (client) => {
      const result = await client.query(
        `
        SELECT EXISTS (
          SELECT 1 FROM pg_tables 
          WHERE schemaname = $1 AND tablename = $2
        ) as exists;
        `,
        [schema, tableName],
      );
      return result.rows[0]?.exists || false;
    }, dbUrl);

    if (exists) {
      found.push(table);
    } else {
      missing.push(table);
    }
  }

  return { found, missing, valid: missing.length === 0 };
}

/**
 * Validate foreign key relationships
 */
export async function validateForeignKeys(schemaName, dbUrl) {
  return withClient(async (client) => {
    const result = await client.query(
      `
      SELECT
        tc.table_name,
        kcu.column_name,
        ccu.table_schema AS foreign_table_schema,
        ccu.table_name AS foreign_table_name,
        ccu.column_name AS foreign_column_name
      FROM information_schema.table_constraints AS tc
      JOIN information_schema.key_column_usage AS kcu
        ON tc.constraint_name = kcu.constraint_name
        AND tc.table_schema = kcu.table_schema
      JOIN information_schema.constraint_column_usage AS ccu
        ON ccu.constraint_name = tc.constraint_name
        AND ccu.table_schema = tc.table_schema
      WHERE tc.constraint_type = 'FOREIGN KEY' 
        AND tc.table_schema = $1;
      `,
      [schemaName],
    );
    return result.rows;
  }, dbUrl);
}
