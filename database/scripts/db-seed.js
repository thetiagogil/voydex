#!/usr/bin/env node
/**
 * Database Seeding
 *
 * Runs SQL seed files to populate reference data.
 * Interactive mode lets you choose which file to run,
 * or run all seed files in order.
 */

import path from "path";
import { fileURLToPath } from "url";
import { SEED_CONFIG } from "./config/database.config.js";
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

    // Get seed files directory (dynamically from config)
    const seedsDir = path.join(
      __dirname,
      "..",
      SEED_CONFIG.baseDir,
      SEED_CONFIG.approvedDir,
    );
    const available = listSqlFiles(seedsDir);

    if (available.length === 0) {
      logger.failure(
        `No seed files found in database/${SEED_CONFIG.baseDir}/${SEED_CONFIG.approvedDir}`,
      );
      logger.info("Add SQL seed files to that directory first");
      process.exit(1);
    }

    // Get filename from args or prompt user
    let filename = process.argv[2];

    if (!filename) {
      logger.header("Database Seeding (Interactive)", "🌱");
      filename = await chooseFromList(available, {
        prompt: "Choose a seed file to run",
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
      logger.section("Running All Seed Files", "🌱");
      logger.warning("This will run all seed files in alphabetical order");
      logger.blank();
      logger.list(available, { bullet: "•" });

      await confirmOrExit("Type 'y' to run all seed files: ", { flag: "--y" });

      logger.section("Seeding Database", "⚙️");
      const filePaths = available.map((f) => path.join(seedsDir, f));

      const success = await runSequentialFiles(filePaths, (filePath) =>
        runSqlFile(filePath, path.basename(filePath)),
      );

      logger.blank();
      if (success) {
        logger.success("All seed files applied successfully");
      } else {
        logger.failure("Stopped after failed seed file");
        process.exit(1);
      }

      return;
    }

    // Run single file
    logger.header("Database Seeding", "🌱");
    logger.info(`Running seed file: ${filename}`);
    logger.blank();

    const filePath = path.join(seedsDir, filename);
    const success = await runSqlFile(filePath, filename);

    logger.blank();
    if (success) {
      logger.success("Seed file applied successfully");
    } else {
      logger.failure("Seed file failed");
      process.exit(1);
    }
  } catch (err) {
    logger.blank();
    logger.failure(`Script failed: ${err.message}`);
    process.exit(1);
  }
}

main();
