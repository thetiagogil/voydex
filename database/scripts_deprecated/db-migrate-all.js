#!/usr/bin/env node
/**
 * Migrate All (Excluding Public Tables)
 *
 * Runs migrations in order: static_tables → dynamic_tables → views
 * Skips 001_public_tables (managed by Supabase/manual setup)
 *
 * Usage:
 *   npm run db:migrate:all [--y]
 */

import path from "path";
import { confirmOrExit } from "./helpers/cli.js";
import { logger } from "./helpers/logger.js";
import {
  listSqlFiles,
  runSequentialFiles,
  runSqlFile,
} from "./helpers/sql-runner.js";

async function main() {
  const migrationsDir = path.resolve(process.cwd(), "database", "migrations");

  // Define migration order (excludes 001_public_tables)
  const folders = ["002_static_tables", "003_dynamic_tables", "004_views"];

  logger.header("Migration runner (all non-public)", "📁");

  // Collect all files from all folders
  const allFiles = [];
  const folderSummary = [];

  for (const folder of folders) {
    const folderPath = path.join(migrationsDir, folder);
    const files = listSqlFiles(folderPath);

    if (files.length > 0) {
      folderSummary.push(`${folder}: ${files.length} files`);
      files.forEach((file) => {
        allFiles.push({
          folder,
          filename: file,
          fullPath: path.join(folderPath, file),
        });
      });
    }
  }

  if (allFiles.length === 0) {
    logger.failure("No migration files found");
    process.exit(1);
  }

  logger.section("Migration plan", "📚");
  folderSummary.forEach((summary) => {
    console.log(`  • ${summary}`);
  });
  console.log(`\n  Total: ${allFiles.length} migrations\n`);

  logger.section("Skipping 001_public_tables (manual setup)", "⏭️");

  logger.section("You selected: run ALL migrations", "⚠️");
  await confirmOrExit("Type 'y' to confirm running ALL migrations in order: ", {
    flag: "--y",
  });

  // Run migrations in order
  const ok = await runSequentialFiles(
    allFiles.map((f) => f.fullPath),
    (filePath, index) => {
      const fileInfo = allFiles[index];
      return runSqlFile(filePath, `${fileInfo.folder}/${fileInfo.filename}`);
    },
  );

  if (!ok) {
    logger.failure("Stopped after a failed migration");
    process.exit(1);
  }

  logger.success("All migrations applied");
  process.exit(0);
}

main();
