#!/usr/bin/env node

/**
 * Command: db-seed
 * Runs seed files from approved/ directories in order.
 */

import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";
import { SEED_CONFIG } from "../config/database.config.js";
import { confirmOrExit, getFlag, isForceMode } from "../helpers/cli.js";
import { withClient } from "../helpers/db.js";
import { loadEnvironment } from "../helpers/env.js";
import { logger, withTiming } from "../helpers/logger.js";
import { listSqlFiles, runSequentialFiles } from "../helpers/sql-runner.js";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const SEEDS_DIR = path.resolve(
  __dirname,
  "../../",
  SEED_CONFIG.baseDir,
  SEED_CONFIG.approvedDir,
);

function discoverSeedFiles(seedsDir) {
  if (!fs.existsSync(seedsDir)) return [];

  const domainFolders = fs
    .readdirSync(seedsDir, { withFileTypes: true })
    .filter((d) => d.isDirectory())
    .sort((a, b) => a.name.localeCompare(b.name));

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
  const seedFiles = discoverSeedFiles(SEEDS_DIR);

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
        filtered.map((f) => f.path),
        client,
      );
    }, "Seeding");
  });
}

main().catch((err) => {
  logger.failure(err.message);
  process.exit(1);
});
