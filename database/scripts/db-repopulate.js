#!/usr/bin/env node
import { spawn } from "child_process";
import { countdown, promptConfirm } from "../helpers/cli.js";
import { logger } from "../helpers/logger.js";

function runCmd(cmd, args = []) {
  return new Promise((resolve, reject) => {
    const p = spawn(cmd, args, { stdio: "inherit", shell: true });
    p.on("close", (code) => {
      if (code === 0) resolve(true);
      else reject(new Error(`${cmd} ${args.join(" ")} exited ${code}`));
    });
    p.on("error", (err) => reject(err));
  });
}

async function main() {
  logger.header("Repopulate DB — single confirmation", "⚠️");
  const ok = await promptConfirm(
    "This will DROP/RECREATE schemas and IMPORT seed data. Type 'y' to proceed: "
  );
  if (!ok) {
    logger.failure("Aborted by user");
    process.exit(1);
  }

  // 10 second countdown to allow user to cancel
  await countdown(10, "Starting DB repopulate in");

  try {
    // Run cleanup (skip interactive prompts with --y)
    await runCmd("node", ["database/scripts/db-cleanup.js", "--y"]);
    // Run all migrations non-interactively
    await runCmd("node", ["database/scripts/db-migration.js", "all", "--y"]);
    // Run each ETL script directly with --force (avoids interactive selection)
    await runCmd("node", [
      "database/scripts/etl/001_generate-pokeapi-types.js",
      "--force",
    ]);
    await runCmd("node", [
      "database/scripts/etl/002_generate-pokeapi-natures.js",
      "--force",
    ]);
    await runCmd("node", [
      "database/scripts/etl/003_generate-pokeapi-egg_groups.js",
      "--force",
    ]);
    await runCmd("node", [
      "database/scripts/etl/004_generate-pokeapi-abilities.js",
      "--force",
    ]);
    // Run seed runner to apply all seed files non-interactively
    await runCmd("node", ["database/scripts/db-seed.js", "all", "--y"]);

    logger.success("DB repopulate complete");
  } catch (err) {
    logger.failure(err.message || err);
    process.exit(1);
  }
}

main();
