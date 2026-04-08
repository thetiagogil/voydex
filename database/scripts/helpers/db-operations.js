/**
 * Database operations — schema/table cleaning, impact analysis.
 */

import { PROTECTED_TABLES, SCHEMA_TYPES } from "../config/database.config.js";
import { getCustomSchemas, getTablesFromSchemas } from "./db.js";

// ── Schema operations ────────────────────────────────

export async function dropSchemas(client, schemas) {
  if (!schemas?.length)
    return { success: false, message: "No schemas to drop" };

  const sql = schemas
    .map((s) => `DROP SCHEMA IF EXISTS "${s}" CASCADE;`)
    .join("\n");
  await client.query(sql);
  return { success: true, message: `Dropped ${schemas.length} schema(s)` };
}

// ── Table operations ─────────────────────────────────

export async function getFilteredTables(client, schemas, options) {
  const { excludeProtected = false } = options || {};
  const tables = await getTablesFromSchemas(client, schemas);

  if (!excludeProtected) return tables;
  return tables.filter(
    (t) => !PROTECTED_TABLES.includes(`${t.schemaname}.${t.tablename}`),
  );
}

export async function truncateTables(client, tables) {
  if (!tables?.length)
    return { success: false, message: "No tables to truncate" };

  const qualified = tables.map((t) => `"${t.schemaname}"."${t.tablename}"`);
  await client.query(
    `TRUNCATE TABLE ${qualified.join(", ")} RESTART IDENTITY CASCADE;`,
  );
  return { success: true, message: `Truncated ${tables.length} table(s)` };
}

// ── Analysis ─────────────────────────────────────────

export function categorizeSchemas(schemas) {
  return {
    static: schemas.filter((s) => SCHEMA_TYPES.STATIC.includes(s)),
    dynamic: schemas.filter((s) => SCHEMA_TYPES.DYNAMIC.includes(s)),
    presentation: schemas.filter((s) => SCHEMA_TYPES.PRESENTATION.includes(s)),
    unknown: schemas.filter((s) => !SCHEMA_TYPES.ALL_CUSTOM.includes(s)),
  };
}

export async function analyzeImpact(client, operation) {
  const allSchemas = await getCustomSchemas(client);
  const cat = categorizeSchemas(allSchemas);

  let affected = [];
  let preserved = [];
  let warningLevel = "safe";

  switch (operation) {
    case "drop-all":
      affected = allSchemas;
      warningLevel = "danger";
      break;
    case "drop-static":
      affected = [...cat.static, ...cat.presentation];
      preserved = cat.dynamic;
      warningLevel = "warning";
      break;
    case "truncate-all":
      affected = allSchemas;
      warningLevel = "danger";
      break;
    case "truncate-static":
      affected = cat.static;
      preserved = [...cat.dynamic, ...cat.presentation];
      break;
    default:
      throw new Error(`Unknown operation: ${operation}`);
  }

  const affectedTables = await getFilteredTables(client, affected);
  const preservedTables = preserved.length
    ? await getFilteredTables(client, preserved)
    : [];

  return {
    affectedSchemas: affected,
    preservedSchemas: preserved,
    affectedTables,
    preservedTables,
    warningLevel,
    hasUserData: affected.some((s) => cat.dynamic.includes(s)),
  };
}

// ── View operations ──────────────────────────────────

export async function refreshMaterializedView(
  client,
  schemaName,
  viewName,
  concurrently = false,
) {
  const clause = concurrently ? "CONCURRENTLY " : "";
  const sql = `REFRESH MATERIALIZED VIEW ${clause}"${schemaName}"."${viewName}";`;

  const start = Date.now();
  await client.query(sql);
  return { success: true, duration: Date.now() - start };
}

// ── Stats ────────────────────────────────────────────

export async function getDatabaseStats(client) {
  const schemas = await getCustomSchemas(client);
  const tables = await getTablesFromSchemas(client, schemas);
  const totalRows = tables.reduce((sum, t) => sum + (t.row_count ?? 0), 0);

  return {
    schemaCount: schemas.length,
    tableCount: tables.length,
    totalRows,
  };
}
