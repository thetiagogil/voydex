/**
 * Migration Operations Helper
 *
 * Centralized logic for running database migrations.
 * Handles folder structure, ordering, and execution.
 */

import fs from "fs";
import path from "path";
import {
  MIGRATION_FOLDERS,
  MIGRATION_FOLDER_INFO,
} from "../config/database.config.js";
import { listSqlFiles, runSqlFile } from "./sql-runner.js";

// =====================================================
// Migration Folder Structure
// =====================================================

export const MIGRATION_ORDER = [
  MIGRATION_FOLDERS.PUBLIC,
  MIGRATION_FOLDERS.META,
  MIGRATION_FOLDERS.GAMEPLAY,
  MIGRATION_FOLDERS.VIEWS,
];

// =====================================================
// Migration Discovery
// =====================================================

/**
 * Get all migration files from all folders
 */
export function getAllMigrationFiles(migrationsDir) {
  const allFiles = [];

  for (const folder of MIGRATION_ORDER) {
    const folderPath = path.join(migrationsDir, folder);

    if (!fs.existsSync(folderPath)) {
      console.warn(`⚠️  Warning: Migration folder not found: ${folder}`);
      continue;
    }

    const files = listSqlFiles(folderPath);

    files.forEach((file) => {
      allFiles.push({
        folder,
        filename: file,
        fullPath: path.join(folderPath, file),
        displayName: `${folder}/${file}`,
      });
    });
  }

  return allFiles;
}

/**
 * Get migration files from specific folders
 */
export function getMigrationFilesFromFolders(migrationsDir, folderNames) {
  const allFiles = [];

  for (const folder of folderNames) {
    if (!MIGRATION_ORDER.includes(folder)) {
      console.warn(`⚠️  Warning: Unknown folder name: ${folder}`);
      continue;
    }

    const folderPath = path.join(migrationsDir, folder);

    if (!fs.existsSync(folderPath)) {
      console.warn(`⚠️  Warning: Migration folder not found: ${folder}`);
      continue;
    }

    const files = listSqlFiles(folderPath);

    files.forEach((file) => {
      allFiles.push({
        folder,
        filename: file,
        fullPath: path.join(folderPath, file),
        displayName: `${folder}/${file}`,
      });
    });
  }

  return allFiles;
}

/**
 * Validate migration folder structure
 */
export function validateMigrationStructure(migrationsDir) {
  const issues = [];
  const warnings = [];

  // Check if migrations directory exists
  if (!fs.existsSync(migrationsDir)) {
    issues.push(`Migrations directory not found: ${migrationsDir}`);
    return { valid: false, issues, warnings };
  }

  // Check each expected folder
  for (const folder of MIGRATION_ORDER) {
    const folderPath = path.join(migrationsDir, folder);

    if (!fs.existsSync(folderPath)) {
      warnings.push(`Missing migration folder: ${folder}`);
      continue;
    }

    const files = listSqlFiles(folderPath);
    if (files.length === 0) {
      warnings.push(`Empty migration folder: ${folder}`);
    }
  }

  return {
    valid: issues.length === 0,
    issues,
    warnings,
  };
}

// =====================================================
// Migration Execution
// =====================================================

/**
 * Run migrations sequentially with progress tracking
 */
export async function runMigrations(migrationFiles, options = {}) {
  const { onProgress, stopOnError = true } = options;
  const results = [];

  for (let i = 0; i < migrationFiles.length; i++) {
    const migration = migrationFiles[i];

    if (onProgress) {
      onProgress({
        current: i + 1,
        total: migrationFiles.length,
        migration,
      });
    }

    const success = await runSqlFile(migration.fullPath, migration.displayName);

    results.push({
      migration: migration.displayName,
      success,
    });

    if (!success && stopOnError) {
      return {
        success: false,
        completed: i + 1,
        total: migrationFiles.length,
        results,
        failed: results.filter((r) => !r.success).length,
      };
    }
  }

  const failedCount = results.filter((r) => !r.success).length;

  return {
    success: failedCount === 0,
    completed: migrationFiles.length,
    total: migrationFiles.length,
    results,
    failed: failedCount,
  };
}

// =====================================================
// Analysis & Reporting
// =====================================================

/**
 * Get migration summary by folder
 */
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
      files: files.map((f) => ({
        name: f,
        path: path.join(folderPath, f),
      })),
    };
    totalFiles += files.length;
  }

  return {
    folders: summary,
    totalFiles,
  };
}

/**
 * Get folder display info
 */
export function getFolderInfo(folderName) {
  return (
    MIGRATION_FOLDER_INFO[folderName] || {
      name: folderName,
      description: "Unknown",
      emoji: "⚪",
    }
  );
}
