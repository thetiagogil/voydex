import fs from "fs";
import path from "path";
import {
  closeDatabaseConnection,
  connectToDatabase,
  createDatabaseClient,
} from "./db.js";
import { loadEnvironment } from "./env.js";

export function readSqlFile(filePath) {
  if (!fs.existsSync(filePath)) {
    throw new Error(`SQL file not found: ${filePath}`);
  }
  return fs.readFileSync(filePath, "utf8");
}

export async function executeSqlFile(client, sql, label = "sql") {
  const start = Date.now();
  try {
    console.log(`➡️  Executing ${label}...`);
    await client.query(sql);
    const took = Date.now() - start;
    console.log(`✅ ${label} executed successfully (${took}ms)`);
    return true;
  } catch (err) {
    const took = Date.now() - start;
    console.error(
      `❌  Error executing ${label} (${took}ms):`,
      err.message || err,
    );
    return false;
  }
}

export function listSqlFiles(dir) {
  if (!fs.existsSync(dir)) return [];
  const out = [];
  function walk(currentDir, relPath = "") {
    const items = fs.readdirSync(currentDir, { withFileTypes: true });
    for (const it of items) {
      const full = path.join(currentDir, it.name);
      const rel = relPath ? path.join(relPath, it.name) : it.name;
      if (it.isDirectory()) {
        walk(full, rel);
      } else if (it.isFile() && it.name.endsWith(".sql")) {
        out.push(rel);
      }
    }
  }
  walk(dir);
  return out.sort();
}

export async function runSqlFile(filePath, label, connectionString) {
  const env = loadEnvironment();
  const conn = connectionString || env.SUPABASE_DB_URL;
  const sql = readSqlFile(filePath);
  // show SQL controlled by cli.sqlEnabled -> scripts decide when to call logger.sqlBlock
  const client = createDatabaseClient(conn);
  try {
    await connectToDatabase(client);
    return await executeSqlFile(client, sql, label);
  } finally {
    await closeDatabaseConnection(client);
  }
}

export async function runSequentialFiles(filePaths, runner, opts = {}) {
  const { pauseSeconds = 0 } = opts;
  for (const f of filePaths) {
    const ok = await runner(f);
    if (!ok) return false;
    if (pauseSeconds > 0)
      await new Promise((res) => setTimeout(res, pauseSeconds * 1000));
  }
  return true;
}
