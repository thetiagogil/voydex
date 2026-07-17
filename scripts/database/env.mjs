import fs from "node:fs";
import { databaseEnvPath } from "./context.mjs";

function parseEnvLine(line) {
  const trimmed = line.trim();

  if (!trimmed || trimmed.startsWith("#")) {
    return null;
  }

  const separatorIndex = trimmed.indexOf("=");

  if (separatorIndex === -1) {
    return null;
  }

  const key = trimmed.slice(0, separatorIndex).trim();
  let value = trimmed.slice(separatorIndex + 1).trim();

  if (!key) {
    return null;
  }

  if (
    (value.startsWith('"') && value.endsWith('"')) ||
    (value.startsWith("'") && value.endsWith("'"))
  ) {
    value = value.slice(1, -1);
  }

  return [key, value];
}

function loadDatabaseEnvFile() {
  if (!fs.existsSync(databaseEnvPath)) {
    return {};
  }

  const values = {};
  const fileContents = fs.readFileSync(databaseEnvPath, "utf8");

  for (const line of fileContents.split(/\r?\n/)) {
    const entry = parseEnvLine(line);

    if (entry) {
      const [key, value] = entry;
      values[key] = value;
    }
  }

  return values;
}

export function buildDatabaseEnv() {
  return {
    ...loadDatabaseEnvFile(),
    ...process.env,
  };
}
