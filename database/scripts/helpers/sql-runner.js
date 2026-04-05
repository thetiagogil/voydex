/**
 * SQL file runner — read, execute, list, and validate .sql files.
 */

import fs from "fs";
import path from "path";
import {
  closeDatabaseConnection,
  connectToDatabase,
  createDatabaseClient,
} from "./db.js";
import { loadEnvironment } from "./env.js";
import { logger } from "./logger.js";

// ── Read / Execute ───────────────────────────────────

export function readSqlFile(filePath) {
  if (!fs.existsSync(filePath))
    throw new Error(`SQL file not found: ${filePath}`);
  const sql = fs.readFileSync(filePath, "utf8");
  if (!sql.trim()) throw new Error(`SQL file is empty: ${filePath}`);
  return sql;
}

export async function executeSql(client, sql, label = "SQL") {
  const start = Date.now();
  try {
    await client.query(sql);
    const duration = Date.now() - start;
    logger.withDuration(label, duration, "✅");
    return { success: true, duration };
  } catch (err) {
    const duration = Date.now() - start;
    logger.withDuration(`${label} (failed)`, duration, "❌");
    logger.failure(err.message);
    return { success: false, error: err, duration };
  }
}

export async function executeSqlFile(client, filePath, label = null) {
  return executeSql(
    client,
    readSqlFile(filePath),
    label || path.basename(filePath),
  );
}

// ── Discovery ────────────────────────────────────────

export function listSqlFiles(directory) {
  if (!fs.existsSync(directory)) return [];
  const files = [];

  function walk(dir, rel = "") {
    for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
      const full = path.join(dir, entry.name);
      const relPath = rel ? path.join(rel, entry.name) : entry.name;
      if (entry.isDirectory()) walk(full, relPath);
      else if (entry.isFile() && entry.name.endsWith(".sql"))
        files.push(relPath);
    }
  }

  walk(directory);
  return files.sort();
}

// ── Single-file runner (with connection management) ──

export async function runSqlFile(
  filePath,
  label = null,
  connectionString = null,
) {
  const env = loadEnvironment();
  const conn = connectionString || env.SUPABASE_DB_URL;
  const client = createDatabaseClient(conn);

  try {
    await connectToDatabase(client);
    const result = await executeSqlFile(client, filePath, label);
    return result.success;
  } finally {
    await closeDatabaseConnection(client);
  }
}

// ── Batch runners ────────────────────────────────────

export async function runSequentialFiles(client, filePaths, options = {}) {
  const { stopOnError = true } = options;

  for (const filePath of filePaths) {
    const result = await executeSqlFile(client, filePath);
    if (!result.success && stopOnError) {
      logger.failure(`Stopped due to error in: ${filePath}`);
      return false;
    }
  }
  return true;
}

export async function runFilesWithProgress(client, filePaths, options = {}) {
  const { showProgress = true, stopOnError = true } = options;
  const total = filePaths.length;
  let completed = 0;
  let failed = 0;

  for (const filePath of filePaths) {
    const label = path.basename(filePath);
    if (showProgress) logger.progress(completed + 1, total, label);

    const result = await executeSqlFile(client, filePath, label);
    if (result.success) {
      completed++;
    } else {
      failed++;
      if (stopOnError) {
        logger.failure(`Stopping after: ${filePath}`);
        break;
      }
    }
  }

  return { total, completed, failed, success: failed === 0 };
}

// ── Validation ───────────────────────────────────────

export function validateSqlFile(filePath) {
  try {
    const sql = readSqlFile(filePath);
    const checks = {
      hasContent: sql.trim().length > 0,
      hasSqlCommands:
        /\b(SELECT|INSERT|UPDATE|DELETE|CREATE|DROP|ALTER)\b/i.test(sql),
    };
    return { valid: Object.values(checks).every(Boolean), checks };
  } catch (err) {
    return { valid: false, error: err.message };
  }
}

export function getSqlFileInfo(filePath) {
  const stats = fs.statSync(filePath);
  const content = fs.readFileSync(filePath, "utf8");
  return {
    path: filePath,
    name: path.basename(filePath),
    size: stats.size,
    lines: content.split("\n").length,
    modified: stats.mtime,
  };
}
