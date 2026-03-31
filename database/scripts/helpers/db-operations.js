/**
 * Database operations — schema/table cleaning, impact analysis.
 * Absorbs view utilities from the old db-operations-extended.js.
 */

import { PROTECTED_TABLES, SCHEMA_TYPES } from "../config/database.config.js";
import { getCustomSchemas, getTablesFromSchemas, withClient } from "./db.js";

// ── Schema operations ────────────────────────────────

export async function getSchemasByType(type, dbUrl) {
  const all = await withClient((client) => getCustomSchemas(client), dbUrl);
  const targets = SCHEMA_TYPES[type] || [];
  return all.filter((s) => targets.includes(s));
}

export async function dropSchemas(schemas, dbUrl) {
  if (!schemas?.length)
    return { success: false, message: "No schemas to drop" };

  try {
    const sql = schemas
      .map((s) => `DROP SCHEMA IF EXISTS "${s}" CASCADE;`)
      .join("\n");
    await withClient((client) => client.query(sql), dbUrl);
    return { success: true, message: `Dropped ${schemas.length} schema(s)` };
  } catch (err) {
    return { success: false, message: `Failed: ${err.message}`, error: err };
  }
}

// ── Table operations ─────────────────────────────────

export async function getFilteredTables(schemas, options, dbUrl) {
  const { excludeProtected = false } = options || {};
  const tables = await withClient(
    (client) => getTablesFromSchemas(client, schemas),
    dbUrl,
  );

  if (!excludeProtected) return tables;
  return tables.filter(
    (t) => !PROTECTED_TABLES.includes(`${t.schemaname}.${t.tablename}`),
  );
}

export async function truncateTables(tables, dbUrl) {
  if (!tables?.length)
    return { success: false, message: "No tables to truncate" };

  try {
    const qualified = tables.map((t) => `"${t.schemaname}"."${t.tablename}"`);
    await withClient(
      (client) =>
        client.query(
          `TRUNCATE TABLE ${qualified.join(", ")} RESTART IDENTITY CASCADE;`,
        ),
      dbUrl,
    );
    return { success: true, message: `Truncated ${tables.length} table(s)` };
  } catch (err) {
    return { success: false, message: `Failed: ${err.message}`, error: err };
  }
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

export async function analyzeImpact(operation, dbUrl) {
  const allSchemas = await withClient(
    (client) => getCustomSchemas(client),
    dbUrl,
  );
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

  const affectedTables = await getFilteredTables(affected, {}, dbUrl);
  const preservedTables = preserved.length
    ? await getFilteredTables(preserved, {}, dbUrl)
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

// ── View operations (absorbed from extended) ─────────

export async function refreshMaterializedView(
  schemaName,
  viewName,
  concurrently = false,
  dbUrl,
) {
  const clause = concurrently ? "CONCURRENTLY " : "";
  const sql = `REFRESH MATERIALIZED VIEW ${clause}"${schemaName}"."${viewName}";`;

  return withClient(async (client) => {
    const start = Date.now();
    try {
      await client.query(sql);
      return { success: true, duration: Date.now() - start };
    } catch (err) {
      return { success: false, error: err, duration: Date.now() - start };
    }
  }, dbUrl);
}

export async function getDatabaseStats(dbUrl) {
  return withClient(async (client) => {
    const res = await client.query(`
      SELECT datname AS database_name,
             pg_size_pretty(pg_database_size(datname)) AS size
      FROM pg_database WHERE datname = current_database();
    `);
    return res.rows[0];
  }, dbUrl);
}
