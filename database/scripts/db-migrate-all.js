#!/usr/bin/env node
/**
 * Run All Migrations
 *
 * Runs all migration files in order:
 * 1. Public tables (user profiles)
 * 2. Static tables (dex, meta)
 * 3. Dynamic tables (gameplay)
 * 4. Views (presentation layer)
 */

import path from "path";
import { fileURLToPath } from "url";
import { confirmOrExit } from "./helpers/cli.js";
import { loadEnvironment } from "./helpers/env.js";
import { createProgressReporter, logger } from "./helpers/logger.js";
import {
  getAllMigrationFiles,
  getFolderInfo,
  runMigrations,
  validateMigrationStructure,
} from "./helpers/migration-operations.js";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

async function main() {
  try {
    // Load environment
    loadEnvironment();

    // Header
    logger.header("Run All Migrations", "🚀");

    // Find migrations directory
    const migrationsDir = path.join(__dirname, "..", "migrations");

    // Validate structure
    logger.section("Validating Migration Structure", "🔍");
    const validation = validateMigrationStructure(migrationsDir);

    if (!validation.valid) {
      logger.failure("Migration structure validation failed");
      validation.issues.forEach((issue) => logger.failure(issue));
      process.exit(1);
    }

    if (validation.warnings.length > 0) {
      validation.warnings.forEach((warning) => logger.warning(warning));
      logger.blank();
    }

    // Get all migration files
    const migrationFiles = getAllMigrationFiles(migrationsDir);

    if (migrationFiles.length === 0) {
      logger.info("No migration files found. Nothing to run.");
      return;
    }

    // Show migration plan
    logger.section("Migration Plan", "📋");
    logger.keyValue({
      "Total migrations": migrationFiles.length,
    });

    logger.blank();
    logger.info("Migrations by folder:");

    const byFolder = {};
    migrationFiles.forEach((mig) => {
      if (!byFolder[mig.folder]) {
        byFolder[mig.folder] = [];
      }
      byFolder[mig.folder].push(mig);
    });

    Object.entries(byFolder).forEach(([folder, files]) => {
      const info = getFolderInfo(folder);
      logger.blank();
      console.log(`  ${info.emoji} ${info.name} (${files.length} files)`);
      files.forEach((file) => {
        console.log(`     • ${file.filename}`);
      });
    });

    // Confirm
    logger.blank();
    await confirmOrExit("Type 'y' to run all migrations: ");

    // Execute migrations
    logger.section("Running Migrations", "⚙️");

    const progress = createProgressReporter(migrationFiles.length);

    const result = await runMigrations(migrationFiles, {
      onProgress: ({ current, total, migration }) => {
        progress.next(migration.displayName);
      },
      stopOnError: true,
    });

    // Report results
    logger.blank();
    logger.separator("=", 60);

    if (result.success) {
      logger.success(
        `All ${result.completed} migrations completed successfully`,
      );
    } else {
      logger.failure(
        `Migration failed: ${result.completed}/${result.total} completed`,
      );
      logger.blank();
      logger.info("Failed migrations:");
      result.results
        .filter((r) => !r.success)
        .forEach((r) => logger.failure(r.migration));
      process.exit(1);
    }

    logger.separator("=", 60);
    logger.blank();
    logger.info("Next step: Run seed scripts to populate reference data");
  } catch (err) {
    logger.blank();
    logger.failure(`Script failed: ${err.message}`);
    console.error(err);
    process.exit(1);
  }
}

main();
