/**
 * Database Operations Helper
 *
 * Centralized business logic for database cleaning operations.
 * Keeps scripts clean by abstracting schema/table management.
 */

import { PROTECTED_TABLES, SCHEMA_TYPES } from "../config/database.config.js";
import { getCustomSchemas, getTablesFromSchemas, withClient } from "./db.js";

// =====================================================
// Schema Operations
// =====================================================

/**
 * Get schemas by type
 */
export async function getSchemasByType(type, dbUrl) {
  const allSchemas = await withClient(
    async (client) => await getCustomSchemas(client),
    dbUrl,
  );

  const targetSchemas = SCHEMA_TYPES[type] || [];
  return allSchemas.filter((schema) => targetSchemas.includes(schema));
}

/**
 * Drop schemas with CASCADE
 */
export async function dropSchemas(schemas, dbUrl) {
  if (!schemas || schemas.length === 0) {
    return { success: false, message: "No schemas to drop" };
  }

  try {
    const sql = schemas
      .map((schema) => `DROP SCHEMA IF EXISTS "${schema}" CASCADE;`)
      .join("\n");

    await withClient(async (client) => {
      await client.query(sql);
    }, dbUrl);

    return {
      success: true,
      message: `Dropped ${schemas.length} schema(s)`,
    };
  } catch (err) {
    return {
      success: false,
      message: `Failed to drop schemas: ${err.message}`,
      error: err,
    };
  }
}

// =====================================================
// Table Operations
// =====================================================

/**
 * Get tables from schemas, with optional filtering
 */
export async function getFilteredTables(schemas, options, dbUrl) {
  const { excludeProtected = false } = options || {};

  const allTables = await withClient(
    async (client) => await getTablesFromSchemas(client, schemas),
    dbUrl,
  );

  if (!excludeProtected) {
    return allTables;
  }

  // Filter out protected tables
  return allTables.filter((table) => {
    const qualifiedName = `${table.schemaname}.${table.tablename}`;
    return !PROTECTED_TABLES.includes(qualifiedName);
  });
}

/**
 * Truncate tables with RESTART IDENTITY CASCADE
 */
export async function truncateTables(tables, dbUrl) {
  if (!tables || tables.length === 0) {
    return { success: false, message: "No tables to truncate" };
  }

  try {
    const qualified = tables.map((t) => `"${t.schemaname}"."${t.tablename}"`);
    const sql = `TRUNCATE TABLE ${qualified.join(", ")} RESTART IDENTITY CASCADE;`;

    await withClient(async (client) => {
      await client.query(sql);
    }, dbUrl);

    return {
      success: true,
      message: `Truncated ${tables.length} table(s)`,
    };
  } catch (err) {
    return {
      success: false,
      message: `Failed to truncate tables: ${err.message}`,
      error: err,
    };
  }
}

// =====================================================
// Analysis & Reporting
// =====================================================

/**
 * Categorize schemas by type
 */
export function categorizeSchemas(schemas) {
  return {
    static: schemas.filter((s) => SCHEMA_TYPES.STATIC.includes(s)),
    dynamic: schemas.filter((s) => SCHEMA_TYPES.DYNAMIC.includes(s)),
    presentation: schemas.filter((s) => SCHEMA_TYPES.PRESENTATION.includes(s)),
    unknown: schemas.filter((s) => !SCHEMA_TYPES.ALL_CUSTOM.includes(s)),
  };
}

/**
 * Analyze what will be affected by an operation
 */
export async function analyzeImpact(operation, dbUrl) {
  const allSchemas = await withClient(
    async (client) => await getCustomSchemas(client),
    dbUrl,
  );

  const categorized = categorizeSchemas(allSchemas);

  let affectedSchemas = [];
  let preservedSchemas = [];
  let warningLevel = "safe";

  switch (operation) {
    case "drop-all":
      affectedSchemas = allSchemas;
      warningLevel = "danger";
      break;

    case "drop-static":
      affectedSchemas = [...categorized.static, ...categorized.presentation];
      preservedSchemas = categorized.dynamic;
      warningLevel = "warning";
      break;

    case "truncate-all":
      affectedSchemas = allSchemas;
      warningLevel = "danger";
      break;

    case "truncate-static":
      affectedSchemas = categorized.static;
      preservedSchemas = [...categorized.dynamic, ...categorized.presentation];
      warningLevel = "safe";
      break;

    default:
      throw new Error(`Unknown operation: ${operation}`);
  }

  const affectedTables = await getFilteredTables(affectedSchemas, {}, dbUrl);
  const preservedTables =
    preservedSchemas.length > 0
      ? await getFilteredTables(preservedSchemas, {}, dbUrl)
      : [];

  return {
    affectedSchemas,
    preservedSchemas,
    affectedTables,
    preservedTables,
    warningLevel,
    hasUserData: affectedSchemas.some((s) => categorized.dynamic.includes(s)),
  };
}
