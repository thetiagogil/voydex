import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const scriptsDir = path.dirname(fileURLToPath(import.meta.url));

export const rootDir = path.resolve(scriptsDir, "..", "..");
export const databaseDir = path.join(rootDir, "database");
export const supabaseDir = path.join(databaseDir, "supabase");
export const databaseTypesPath = path.join(
  rootDir,
  "src",
  "shared",
  "types",
  "database.types.ts",
);
export const exposedSchemas = [
  "public",
  "reference",
  "tracking",
  "gameplay",
  "planning",
  "views",
];

export function resolveSupabaseBin() {
  if (process.platform === "win32") {
    const localExe = path.join(
      rootDir,
      "node_modules",
      "supabase",
      "bin",
      "supabase.exe",
    );

    if (fs.existsSync(localExe)) {
      return localExe;
    }

    const localCmd = path.join(rootDir, "node_modules", ".bin", "supabase.cmd");

    if (fs.existsSync(localCmd)) {
      return localCmd;
    }

    return "supabase.exe";
  }

  const localBin = path.join(rootDir, "node_modules", ".bin", "supabase");
  return fs.existsSync(localBin) ? localBin : "supabase";
}
