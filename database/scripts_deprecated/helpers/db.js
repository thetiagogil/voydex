import { Client } from "pg";
import { loadEnvironment } from "./env.js";

export function createDatabaseClient(connectionString) {
  if (!connectionString) {
    throw new Error("Missing SUPABASE_DB_URL environment variable");
  }

  return new Client({ connectionString });
}

export async function connectToDatabase(client) {
  await client.connect();
}

export async function closeDatabaseConnection(client) {
  try {
    await client.end();
  } catch (e) {
    // ignore
  }
}

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

// Return custom schemas (filters out system/supabase schemas)
export async function getCustomSchemas(client) {
  const res = await client.query(
    `select nspname from pg_namespace order by nspname;`,
  );

  const blacklist = new Set([
    "information_schema",
    "public",
    "extensions",
    "auth",
    "graphql",
    "graphql_public",
    "realtime",
    "storage",
    "vault",
  ]);

  return res.rows
    .map((r) => r.nspname)
    .filter((n) => {
      if (!n) return false;
      if (n.startsWith("pg")) return false;
      if (blacklist.has(n)) return false;
      return true;
    });
}

export async function getTablesFromSchemas(client, schemas) {
  if (!schemas || schemas.length === 0) return [];
  const list = await Promise.all(
    schemas.map(async (s) => {
      const r = await client.query(
        `select schemaname, tablename from pg_tables where schemaname = $1 order by tablename;`,
        [s],
      );
      return r.rows;
    }),
  );
  return list.flat();
}
