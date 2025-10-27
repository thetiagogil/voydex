#!/usr/bin/env node
import path from "path";
import { chooseFromList, confirmOrExit } from "./helpers/cli.js";
import { logger } from "./helpers/logger.js";
import {
  listSqlFiles,
  runSequentialFiles,
  runSqlFile,
} from "./helpers/sql-runner.js";

async function main() {
  let filename = process.argv[2];

  const migrationsDir = path.resolve(process.cwd(), "database", "migrations");
  const available = listSqlFiles(migrationsDir);

  if (!filename) {
    logger.header("Migration runner (interactive)", "📁");
    filename = await chooseFromList(available, {
      prompt: "Migration runner (interactive)",
      defaultLatest: true,
    });
    if (!filename) {
      logger.failure("No selection made. Exiting.");
      process.exit(1);
    }
    if (filename !== "all" && filename !== available[available.length - 1]) {
      logger.section(`Selected: ${filename}`);
    }
  }

  if (filename === "all") {
    logger.section("You selected: run ALL migrations", "⚠️");
    await confirmOrExit(
      "Type 'y' to confirm running ALL migrations in order: ",
      {
        flag: "--y",
      }
    );

    const filePaths = available.map((f) => path.resolve(migrationsDir, f));
    const ok = await runSequentialFiles(filePaths, (p) =>
      runSqlFile(p, path.basename(p))
    );
    if (!ok) {
      logger.failure("Stopped after a failed migration");
      process.exit(1);
    }
    logger.success("All migrations applied");
    process.exit(0);
  }

  const filePath = path.resolve(migrationsDir, filename);
  const ok = await runSqlFile(filePath, filename);
  process.exit(ok ? 0 : 1);
}

main();
