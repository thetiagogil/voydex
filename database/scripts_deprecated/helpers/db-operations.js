/**
 * Database Operations Helper
 * 
 * Centralized business logic for database cleaning operations.
 * Keeps scripts clean by abstracting schema/table management.
 */

import { getCustomSchemas, getTablesFromSchemas, withClient } from "./db.js";

// =====================================================
// Schema Classifications
// =====================================================

export const SCHEMA_TYPES = {
  STATIC: ['dex', 'meta'],      // Reference data (safe to reset)
  DYNAMIC: ['gameplay'],         // User data (NEVER reset in prod)
  PRESENTATION: ['views'],       // Views/functions (safe to recreate)
  ALL_CUSTOM: ['dex', 'meta', 'gameplay', 'views']
};

export const PROTECTED_TABLES = [
  'gameplay.plays',
  'gameplay.team_pokemon',
  'gameplay.progress',
  'gameplay.pokemon_caught',
  'public.users'
];

// =====================================================
// Schema Operations
// =====================================================

/**
 * Get schemas by type
 */
export async function getSchemasByType(type, dbUrl) {
  const allSchemas = await withClient(
    async (client) => await getCustomSchemas(client),
    dbUrl
  );

  const targetSchemas = SCHEMA_TYPES[type] || [];
  return allSchemas.filter(s => targetSchemas.includes(s));
}

/**
 * Drop schemas with confirmation
 */
export async function dropSchemas(schemas, dbUrl) {
  if (!schemas || schemas.length === 0) {
    return { success: false, message: "No schemas to drop" };
  }

  const sql = schemas
    .map(s => `DROP SCHEMA IF EXISTS ${s} CASCADE;`)
    .join('\n');

  const success = await withClient(
    async (client) => {
      await client.query(sql);
      return true;
    },
    dbUrl
  );

  return {
    success,
    message: success 
      ? `Dropped ${schemas.length} schema(s)` 
      : 'Failed to drop schemas'
  };
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
    dbUrl
  );

  if (!excludeProtected) {
    return allTables;
  }

  // Filter out protected tables
  return allTables.filter(t => {
    const qualifiedName = `${t.schemaname}.${t.tablename}`;
    return !PROTECTED_TABLES.includes(qualifiedName);
  });
}

/**
 * Truncate tables
 */
export async function truncateTables(tables, dbUrl) {
  if (!tables || tables.length === 0) {
    return { success: false, message: "No tables to truncate" };
  }

  const qualified = tables.map(t => `${t.schemaname}.${t.tablename}`);
  const sql = `TRUNCATE TABLE ${qualified.join(', ')} RESTART IDENTITY CASCADE;`;

  const success = await withClient(
    async (client) => {
      await client.query(sql);
      return true;
    },
    dbUrl
  );

  return {
    success,
    message: success 
      ? `Truncated ${tables.length} table(s)` 
      : 'Failed to truncate tables'
  };
}

// =====================================================
// Analysis & Reporting
// =====================================================

/**
 * Categorize schemas by type
 */
export function categorizeSchemas(schemas) {
  return {
    static: schemas.filter(s => SCHEMA_TYPES.STATIC.includes(s)),
    dynamic: schemas.filter(s => SCHEMA_TYPES.DYNAMIC.includes(s)),
    presentation: schemas.filter(s => SCHEMA_TYPES.PRESENTATION.includes(s)),
    unknown: schemas.filter(s => 
      !SCHEMA_TYPES.ALL_CUSTOM.includes(s)
    )
  };
}

/**
 * Analyze what will be affected by an operation
 */
export async function analyzeImpact(operation, dbUrl) {
  const allSchemas = await withClient(
    async (client) => await getCustomSchemas(client),
    dbUrl
  );

  const categorized = categorizeSchemas(allSchemas);
  
  let affectedSchemas = [];
  let preservedSchemas = [];
  let warningLevel = 'safe';

  switch (operation) {
    case 'drop-all':
      affectedSchemas = allSchemas;
      warningLevel = 'danger';
      break;
    
    case 'drop-static':
      affectedSchemas = [...categorized.static, ...categorized.presentation];
      preservedSchemas = categorized.dynamic;
      warningLevel = 'warning';
      break;
    
    case 'truncate-all':
      affectedSchemas = allSchemas;
      warningLevel = 'danger';
      break;
    
    case 'truncate-static':
      affectedSchemas = categorized.static;
      preservedSchemas = [...categorized.dynamic, ...categorized.presentation];
      warningLevel = 'safe';
      break;
  }

  const affectedTables = await getFilteredTables(affectedSchemas, {}, dbUrl);
  const preservedTables = preservedSchemas.length > 0 
    ? await getFilteredTables(preservedSchemas, {}, dbUrl)
    : [];

  return {
    affectedSchemas,
    preservedSchemas,
    affectedTables,
    preservedTables,
    warningLevel,
    hasUserData: affectedSchemas.some(s => categorized.dynamic.includes(s))
  };
}
