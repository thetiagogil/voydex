#!/usr/bin/env node

import fs from "node:fs";
import path from "node:path";
import { spawnSync } from "node:child_process";
import prettier from "prettier";
import {
  databaseDir,
  databaseTypesPath,
  exposedSchemas,
  resolveSupabaseBin,
  rootDir,
} from "./context.mjs";

const args = process.argv.slice(2);
const sourceFlags = args.filter(
  (argument) => argument === "--local" || argument === "--linked",
);
const checkOnly = args.includes("--check");
const unknownArgs = args.filter(
  (argument) =>
    argument !== "--local" && argument !== "--linked" && argument !== "--check",
);

if (sourceFlags.length !== 1) {
  console.error(
    "Choose exactly one type source: pass either --local or --linked.",
  );
  process.exit(1);
}

if (unknownArgs.length > 0) {
  console.error(`Unknown type generation option: ${unknownArgs.join(", ")}`);
  process.exit(1);
}

const supabaseBin = resolveSupabaseBin();
const useShell =
  process.platform === "win32" && supabaseBin.toLowerCase().endsWith(".cmd");
const result = spawnSync(
  supabaseBin,
  [
    "gen",
    "types",
    "--lang",
    "typescript",
    sourceFlags[0],
    "--schema",
    exposedSchemas.join(","),
  ],
  {
    cwd: databaseDir,
    env: process.env,
    encoding: "utf8",
    shell: useShell,
  },
);

if (result.error) {
  if (result.error.code === "ENOENT") {
    console.error(
      "Supabase CLI was not found. Run `npm install` in this repo first.",
    );
    process.exit(127);
  }

  console.error(result.error.message);
  process.exit(1);
}

if (result.status !== 0) {
  if (result.stdout) {
    process.stdout.write(result.stdout);
  }

  if (result.stderr) {
    process.stderr.write(result.stderr);
  }

  process.exit(result.status ?? 1);
}

const formattedTypes = await prettier.format(result.stdout, {
  filepath: databaseTypesPath,
});
const relativeOutput = path.relative(rootDir, databaseTypesPath);

if (checkOnly) {
  if (
    !fs.existsSync(databaseTypesPath) ||
    fs.readFileSync(databaseTypesPath, "utf8") !== formattedTypes
  ) {
    console.error(`Generated database types are stale: ${relativeOutput}`);
    console.error("Run `npm run db:types` to regenerate them.");
    process.exit(1);
  }

  console.log(`Verified ${relativeOutput} against the local database.`);
} else {
  fs.mkdirSync(path.dirname(databaseTypesPath), { recursive: true });
  fs.writeFileSync(databaseTypesPath, formattedTypes);
  console.log(`Wrote ${relativeOutput}`);
}
