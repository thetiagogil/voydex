import fs from "node:fs";
import path from "node:path";

export function collectFiles(directory, predicate = () => true) {
  if (!fs.existsSync(directory)) return [];

  const files = [];
  for (const entry of fs.readdirSync(directory, { withFileTypes: true })) {
    const entryPath = path.join(directory, entry.name);
    if (entry.isDirectory()) {
      files.push(...collectFiles(entryPath, predicate));
    } else if (entry.isFile() && predicate(entryPath)) {
      files.push(entryPath);
    }
  }
  return files.sort((left, right) => left.localeCompare(right));
}

export function collectDirectories(directory) {
  if (!fs.existsSync(directory)) return [];

  const directories = [];
  for (const entry of fs.readdirSync(directory, { withFileTypes: true })) {
    if (!entry.isDirectory()) continue;
    const entryPath = path.join(directory, entry.name);
    directories.push(entryPath, ...collectDirectories(entryPath));
  }
  return directories.sort((left, right) => left.localeCompare(right));
}

export function collectSqlFiles(directory) {
  return collectFiles(directory, (filePath) => filePath.endsWith(".sql"));
}

export function relativePath(root, filePath) {
  return path.relative(root, filePath).replaceAll(path.sep, "/");
}
