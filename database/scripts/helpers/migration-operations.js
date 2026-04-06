/**
 * Migration operations — folder discovery, ordering, execution.
 */

import fs from "fs";
import path from "path";
import {
  MIGRATION_FOLDERS,
  MIGRATION_FOLDER_INFO,
} from "../config/database.config.js";
import { executeSqlFile, listSqlFiles } from "./sql-runner.js";

// ── Order ────────────────────────────────────────────

export const MIGRATION_ORDER = [
  MIGRATION_FOLDERS.PUBLIC,
  MIGRATION_FOLDERS.REFERENCE,
  MIGRATION_FOLDERS.TRACKING,
  MIGRATION_FOLDERS.GAMEPLAY,
  MIGRATION_FOLDERS.VIEWS,
];

// ── Discovery ────────────────────────────────────────

export function getAllMigrationFiles(migrationsDir) {
  const all = [];

  for (const folder of MIGRATION_ORDER) {
    const folderPath = path.join(migrationsDir, folder);
    if (!fs.existsSync(folderPath)) {
      console.warn(`⚠️  Missing: ${folder}`);
      continue;
    }

    for (const file of listSqlFiles(folderPath)) {
      all.push({
        folder,
        filename: file,
        fullPath: path.join(folderPath, file),
        displayName: `${folder}/${file}`,
      });
    }
  }

  return all;
}

export function getMigrationFilesFromFolders(migrationsDir, folderNames) {
  const all = [];

  for (const folder of folderNames) {
    if (!MIGRATION_ORDER.includes(folder)) {
      console.warn(`⚠️  Unknown: ${folder}`);
      continue;
    }
    const folderPath = path.join(migrationsDir, folder);
    if (!fs.existsSync(folderPath)) {
      console.warn(`⚠️  Missing: ${folder}`);
      continue;
    }

    for (const file of listSqlFiles(folderPath)) {
      all.push({
        folder,
        filename: file,
        fullPath: path.join(folderPath, file),
        displayName: `${folder}/${file}`,
      });
    }
  }

  return all;
}

// ── Validation ───────────────────────────────────────

export function validateMigrationStructure(migrationsDir) {
  const issues = [];
  const warnings = [];

  if (!fs.existsSync(migrationsDir)) {
    issues.push(`Migrations directory not found: ${migrationsDir}`);
    return { valid: false, issues, warnings };
  }

  for (const folder of MIGRATION_ORDER) {
    const folderPath = path.join(migrationsDir, folder);
    if (!fs.existsSync(folderPath)) {
      warnings.push(`Missing folder: ${folder}`);
      continue;
    }
    if (listSqlFiles(folderPath).length === 0)
      warnings.push(`Empty folder: ${folder}`);
  }

  return { valid: issues.length === 0, issues, warnings };
}

// ── Execution ────────────────────────────────────────

export async function runMigrations(client, migrationFiles, options = {}) {
  const { onProgress, stopOnError = true } = options;
  const results = [];

  for (let i = 0; i < migrationFiles.length; i++) {
    const migration = migrationFiles[i];
    if (onProgress)
      onProgress({ current: i + 1, total: migrationFiles.length, migration });

    const result = await executeSqlFile(
      client,
      migration.fullPath,
      migration.displayName,
    );
    results.push({ migration: migration.displayName, success: result.success });

    if (!result.success && stopOnError) {
      return {
        success: false,
        completed: i + 1,
        total: migrationFiles.length,
        results,
        failed: results.filter((r) => !r.success).length,
      };
    }
  }

  const failed = results.filter((r) => !r.success).length;
  return {
    success: failed === 0,
    completed: migrationFiles.length,
    total: migrationFiles.length,
    results,
    failed,
  };
}

// ── Reporting ────────────────────────────────────────

export function getMigrationSummary(migrationsDir) {
  const summary = {};
  let totalFiles = 0;

  for (const folder of MIGRATION_ORDER) {
    const folderPath = path.join(migrationsDir, folder);
    if (!fs.existsSync(folderPath)) {
      summary[folder] = { count: 0, exists: false };
      continue;
    }

    const files = listSqlFiles(folderPath);
    summary[folder] = {
      count: files.length,
      exists: true,
      files: files.map((f) => ({ name: f, path: path.join(folderPath, f) })),
    };
    totalFiles += files.length;
  }

  return { folders: summary, totalFiles };
}

export function getFolderInfo(folderName) {
  return (
    MIGRATION_FOLDER_INFO[folderName] || {
      name: folderName,
      description: "Unknown",
      emoji: "⚪",
    }
  );
}
