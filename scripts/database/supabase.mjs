#!/usr/bin/env node

import { spawn } from "node:child_process";
import { databaseDir, resolveSupabaseBin } from "./context.mjs";

const args = process.argv.slice(2);
const supabaseBin = resolveSupabaseBin();

function printHelp() {
  console.log(`Usage:
  node scripts/database/supabase.mjs <supabase args...>
  node scripts/database/supabase.mjs --version

Examples:
  npm run db:start
  npm run db:reset
  npm run db:new -- add_feature
`);
}

if (args.length === 0) {
  printHelp();
  process.exit(0);
}

const useShell =
  process.platform === "win32" && supabaseBin.toLowerCase().endsWith(".cmd");
const child = spawn(supabaseBin, args, {
  cwd: databaseDir,
  env: process.env,
  stdio: "inherit",
  shell: useShell,
});

child.on("error", (error) => {
  if (error.code === "ENOENT") {
    console.error(
      "Supabase CLI was not found. Run `npm install` in this repo first.",
    );
    process.exit(127);
  }

  console.error(error.message);
  process.exit(1);
});

child.on("exit", (code, signal) => {
  if (signal) {
    console.error(`Supabase CLI exited from signal ${signal}.`);
    process.exit(1);
  }

  process.exit(code ?? 0);
});
