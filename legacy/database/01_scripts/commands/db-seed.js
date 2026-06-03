#!/usr/bin/env node

/**
 * Command: db-seed
 * Runs seed files from approved/ directories in order.
 */

import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";
import {
  CATEGORY_ORDER,
  SEED_CONFIG,
  SEED_FOLDERS,
} from "../config/database.config.js";
import { confirmOrExit, getFlag, isForceMode } from "../helpers/cli.js";
import { withClient } from "../helpers/db.js";
import { loadEnvironment } from "../helpers/env.js";
import { logger, withTiming } from "../helpers/logger.js";
import { listSqlFiles, runSequentialFiles } from "../helpers/sql-runner.js";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SEEDS_DIR = path.resolve(__dirname, "../../", SEED_CONFIG.baseDir);

function discoverSeedFiles(seedsDir, category) {
  if (!fs.existsSync(seedsDir)) return [];

  let domainFolders = fs
    .readdirSync(seedsDir, { withFileTypes: true })
    .filter((d) => d.isDirectory())
    .sort((a, b) => a.name.localeCompare(b.name));

  // Filter to specific category seed folder(s)
  if (category) {
    const seedFolder = SEED_FOLDERS[category];
    if (!seedFolder) return [];
    domainFolders = domainFolders.filter((d) => d.name === seedFolder);
  }

  const files = [];

  for (const folder of domainFolders) {
    const folderPath = path.join(seedsDir, folder.name);
    const subDirs = fs
      .readdirSync(folderPath, { withFileTypes: true })
      .filter((d) => d.isDirectory());

    if (subDirs.length > 0) {
      for (const sub of subDirs.sort((a, b) => a.name.localeCompare(b.name))) {
        const subPath = path.join(folderPath, sub.name);
        for (const f of listSqlFiles(subPath)) {
          files.push({
            path: path.join(subPath, f),
            display: `${folder.name}/${sub.name}/${f}`,
          });
        }
      }
    } else {
      for (const f of listSqlFiles(folderPath)) {
        files.push({
          path: path.join(folderPath, f),
          display: `${folder.name}/${f}`,
        });
      }
    }
  }

  return files;
}

async function main() {
  loadEnvironment();
  logger.header("Database Seeding");

  const domain = getFlag("domain");
  const category = getFlag("category");

  if (category && !CATEGORY_ORDER.includes(category)) {
    logger.failure(`Unknown category: ${category}`);
    logger.info(`Valid categories: ${CATEGORY_ORDER.join(", ")}`);
    process.exit(1);
  }

  const seedFiles = discoverSeedFiles(SEEDS_DIR, category);

  const filtered = domain
    ? seedFiles.filter((f) => f.display.startsWith(domain))
    : seedFiles;

  logger.keyValue("Seed files found", filtered.length);

  if (filtered.length === 0) {
    logger.warning("No seed files found");
    return;
  }

  if (!isForceMode()) {
    await confirmOrExit(`Run ${filtered.length} seed files?`);
  }

  await withClient(async (client) => {
    await withTiming(async () => {
      await runSequentialFiles(
        client,
        filtered.map((f) => f.path),
      );
    }, "Seeding");
  });
}

main().catch((err) => {
  logger.failure(err.message);
  process.exit(1);
});
