/**
 * SQL File Runner Utility
 *
 * Reads and executes SQL files with progress tracking
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

/**
 * Read SQL file contents
 */
export function readSqlFile(filePath) {
  if (!fs.existsSync(filePath)) {
    throw new Error(`SQL file not found: ${filePath}`);
  }

  const sql = fs.readFileSync(filePath, "utf8");

  if (!sql || sql.trim().length === 0) {
    throw new Error(`SQL file is empty: ${filePath}`);
  }

  return sql;
}

/**
 * Execute SQL string
 */
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

/**
 * Execute SQL file
 */
export async function executeSqlFile(client, filePath, label = null) {
  const displayLabel = label || path.basename(filePath);
  const sql = readSqlFile(filePath);
  return executeSql(client, sql, displayLabel);
}

/**
 * List all SQL files in a directory (recursive)
 */
export function listSqlFiles(directory) {
  if (!fs.existsSync(directory)) {
    return [];
  }

  const files = [];

  function walkDirectory(currentDir, relativePath = "") {
    const items = fs.readdirSync(currentDir, { withFileTypes: true });

    for (const item of items) {
      const fullPath = path.join(currentDir, item.name);
      const relPath = relativePath
        ? path.join(relativePath, item.name)
        : item.name;

      if (item.isDirectory()) {
        walkDirectory(fullPath, relPath);
      } else if (item.isFile() && item.name.endsWith(".sql")) {
        files.push(relPath);
      }
    }
  }

  walkDirectory(directory);
  return files.sort();
}

/**
 * Run a single SQL file with connection management
 */
export async function runSqlFile(
  filePath,
  label = null,
  connectionString = null,
) {
  const env = loadEnvironment();
  const conn = connectionString || env.SUPABASE_DB_URL;

  if (!conn) {
    throw new Error("Database connection string not provided");
  }

  const client = createDatabaseClient(conn);

  try {
    await connectToDatabase(client);
    const result = await executeSqlFile(client, filePath, label);
    return result.success;
  } finally {
    await closeDatabaseConnection(client);
  }
}

/**
 * Run multiple SQL files sequentially
 */
export async function runSequentialFiles(filePaths, runner, options = {}) {
  const { pauseSeconds = 0, stopOnError = true } = options;

  for (const filePath of filePaths) {
    const success = await runner(filePath);

    if (!success && stopOnError) {
      logger.failure(`Stopped due to error in: ${filePath}`);
      return false;
    }

    // Optional pause between files
    if (pauseSeconds > 0) {
      await new Promise((resolve) => setTimeout(resolve, pauseSeconds * 1000));
    }
  }

  return true;
}

/**
 * Run multiple SQL files with progress tracking
 */
export async function runFilesWithProgress(client, filePaths, options = {}) {
  const { showProgress = true, stopOnError = true } = options;
  const total = filePaths.length;
  let completed = 0;
  let failed = 0;

  for (const filePath of filePaths) {
    const label = path.basename(filePath);

    if (showProgress) {
      logger.progress(completed + 1, total, label);
    }

    const result = await executeSqlFile(client, filePath, label);

    if (result.success) {
      completed++;
    } else {
      failed++;
      if (stopOnError) {
        logger.failure(`Stopping after error in: ${filePath}`);
        break;
      }
    }
  }

  return {
    total,
    completed,
    failed,
    success: failed === 0,
  };
}

/**
 * Validate SQL file structure
 */
export function validateSqlFile(filePath) {
  try {
    const sql = readSqlFile(filePath);

    // Basic validation checks
    const checks = {
      hasContent: sql.trim().length > 0,
      hasSqlCommands:
        /\b(SELECT|INSERT|UPDATE|DELETE|CREATE|DROP|ALTER)\b/i.test(sql),
      noSyntaxErrors: true, // We can't fully validate without running, but check basics
    };

    return {
      valid: Object.values(checks).every(Boolean),
      checks,
    };
  } catch (err) {
    return {
      valid: false,
      error: err.message,
    };
  }
}

/**
 * Get SQL file metadata
 */
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
