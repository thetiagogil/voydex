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

  const seedsDir = path.resolve(process.cwd(), "database", "seed", "approved");
  const available = listSqlFiles(seedsDir);

  if (!filename) {
    logger.header("Seed runner (interactive)", "🌱");
    filename = await chooseFromList(available, {
      prompt: "Seed runner (interactive)",
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
    logger.section("You selected: run ALL seed files", "⚠️");
    await confirmOrExit(
      "Type 'y' to confirm running ALL seed files in order: ",
      {
        flag: "--y",
      },
    );

    const filePaths = available.map((f) => path.resolve(seedsDir, f));
    const ok = await runSequentialFiles(filePaths, (p) =>
      runSqlFile(p, path.basename(p)),
    );
    if (!ok) {
      logger.failure("Stopped after a failed seed file");
      process.exit(1);
    }
    logger.success("All seed files applied");
    process.exit(0);
  }

  const filePath = path.resolve(seedsDir, filename);
  const ok = await runSqlFile(filePath, filename);
  process.exit(ok ? 0 : 1);
}

main();
