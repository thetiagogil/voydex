#!/usr/bin/env node
import { spawn } from "child_process";
import fs from "fs";
import path from "path";
import {
  chooseFromList,
  confirmOrExit,
  countdown,
  getFlag,
} from "../helpers/cli.js";
import { logger } from "../helpers/logger.js";

async function listEtlScripts() {
  const dir = path.resolve(process.cwd(), "database", "scripts", "etl");
  if (!fs.existsSync(dir)) return [];
  return fs
    .readdirSync(dir)
    .filter((f) => f && f.endsWith(".js") && f !== "run-pokeapi-etl.js")
    .sort();
}

function runNodeScript(scriptPath, args = []) {
  return new Promise((resolve) => {
    const p = spawn("node", [scriptPath, ...args], { stdio: "inherit" });
    p.on("close", (code) => resolve(code === 0));
    p.on("error", () => resolve(false));
  });
}

async function main() {
  logger.header("PokeAPI ETL runner", "🔁");
  const scripts = await listEtlScripts();
  if (scripts.length === 0) {
    logger.failure("No ETL scripts found in database/scripts/etl");
    process.exit(1);
  }

  const choice = await chooseFromList(scripts, {
    prompt: "Select an ETL script to run",
  });
  if (!choice) {
    logger.failure("No selection made. Exiting.");
    process.exit(1);
  }

  const scriptsToRun = choice === "all" ? scripts : [choice];

  // check dry and force flags from CLI
  const dry = getFlag("--dry");
  const force = getFlag("--force");

  for (const s of scriptsToRun) {
    const scriptPath = path.resolve(
      process.cwd(),
      "database",
      "scripts",
      "etl",
      s
    );
    logger.section(`Running: ${s}`, "▶️");
    if (!force) {
      await confirmOrExit(`Type 'y' to execute ${s}: `, { flag: "--force" });
    }
    if (!dry) await countdown(3, `Executing ${s} in:`);
    const args = [];
    if (dry) args.push("--dry");
    if (force) args.push("--force");
    // Some ETL scripts require a --gen flag (e.g. pokemon_forms, pokemon_learnsets).
    // If none is provided, run them for a sensible default set of generations.
    const needsGen = /pokemon_forms|pokemon_learnsets/.test(s);
    const hasGenFlag =
      args.some((a) => a.startsWith("--gen")) ||
      process.argv.slice(2).some((a) => a.startsWith("--gen"));
    if (needsGen && !hasGenFlag) {
      // Use generations 1 through 8 by default (covers mainline gens).
      args.push("--gen=1,2,3,4,5,6,7,8");
    }
    // run the script
    const ok = await runNodeScript(scriptPath, args);
    if (!ok) {
      logger.failure(`Script failed: ${s}`);
      process.exit(1);
    }
    logger.success(`Script completed: ${s}`);
  }
  logger.success("All selected ETL scripts completed");
}

main().catch((err) => {
  logger.failure(err.message || err);
  process.exit(1);
});
