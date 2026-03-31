#!/usr/bin/env node
/**
 * Interactive Migration Runner
 *
 * Allows running individual migration files or all migrations.
 * Useful for testing specific migrations or running custom SQL files.
 */

import path from "path";
import { fileURLToPath } from "url";
import { chooseFromList, confirmOrExit } from "./helpers/cli.js";
import { loadEnvironment } from "./helpers/env.js";
import { logger } from "./helpers/logger.js";
import {
  listSqlFiles,
  runSequentialFiles,
  runSqlFile,
} from "./helpers/sql-runner.js";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

async function main() {
  try {
    // Load environment
    loadEnvironment();

    // Get migrations directory
    const migrationsDir = path.join(__dirname, "..", "migrations");
    const available = listSqlFiles(migrationsDir);

    if (available.length === 0) {
      logger.failure("No migration files found in database/migrations");
      process.exit(1);
    }

    // Get filename from args or prompt user
    let filename = process.argv[2];

    if (!filename) {
      logger.header("Migration Runner (Interactive)", "📁");
      filename = await chooseFromList(available, {
        prompt: "Choose a migration file to run",
        defaultLatest: true,
      });

      if (!filename) {
        logger.failure("No selection made. Exiting.");
        process.exit(1);
      }

      if (filename !== "all" && filename !== available[available.length - 1]) {
        logger.info(`Selected: ${filename}`);
      }
    }

    // Handle "all" selection
    if (filename === "all") {
      logger.section("Running All Migrations", "⚠️");
      logger.warning("This will run ALL migration files in order");
      logger.blank();
      logger.list(available, { bullet: "•" });

      await confirmOrExit("Type 'y' to run all migrations: ", { flag: "--y" });

      logger.section("Running Migrations", "⚙️");
      const filePaths = available.map((f) => path.join(migrationsDir, f));

      const success = await runSequentialFiles(filePaths, (filePath) =>
        runSqlFile(filePath, path.basename(filePath)),
      );

      logger.blank();
      if (success) {
        logger.success("All migrations applied successfully");
      } else {
        logger.failure("Stopped after failed migration");
        process.exit(1);
      }

      return;
    }

    // Run single file
    logger.header("Migration Runner", "📁");
    logger.info(`Running migration: ${filename}`);
    logger.blank();

    const filePath = path.join(migrationsDir, filename);
    const success = await runSqlFile(filePath, filename);

    logger.blank();
    if (success) {
      logger.success("Migration applied successfully");
    } else {
      logger.failure("Migration failed");
      process.exit(1);
    }
  } catch (err) {
    logger.blank();
    logger.failure(`Script failed: ${err.message}`);
    process.exit(1);
  }
}

main();
