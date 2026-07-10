#!/usr/bin/env node

import fs from "node:fs";
import path from "node:path";
import { databaseDir } from "./context.mjs";

const schemaRoot = path.join(databaseDir, "schema");
const retiredIndexesRoot = path.join(databaseDir, "indexes");

function collectSqlFiles(directory) {
  if (!fs.existsSync(directory)) {
    return [];
  }

  const files = [];

  for (const entry of fs.readdirSync(directory, { withFileTypes: true })) {
    const entryPath = path.join(directory, entry.name);

    if (entry.isDirectory()) {
      files.push(...collectSqlFiles(entryPath));
    } else if (entry.isFile() && entry.name.endsWith(".sql")) {
      files.push(entryPath);
    }
  }

  return files;
}

function relativePath(filePath) {
  return path.relative(databaseDir, filePath).replaceAll(path.sep, "/");
}

const errors = [];
const schemaFiles = collectSqlFiles(schemaRoot).sort((a, b) =>
  relativePath(a).localeCompare(relativePath(b)),
);
const retiredIndexFiles = collectSqlFiles(retiredIndexesRoot);

if (schemaFiles.length === 0) {
  errors.push("No Voydex schema SQL files were found.");
}

if (retiredIndexFiles.length > 0) {
  errors.push(
    `Retired secondary-index source contains SQL: ${retiredIndexFiles
      .map(relativePath)
      .join(", ")}. Move validated indexes beside their owning table schema.`,
  );
}

const tablePattern =
  /\bCREATE\s+TABLE\s+(?:IF\s+NOT\s+EXISTS\s+)?([a-z_][\w$]*)\.([a-z_][\w$]*)/gi;
const indexPattern =
  /\bCREATE\s+(?:UNIQUE\s+)?INDEX\s+(?:CONCURRENTLY\s+)?(?:IF\s+NOT\s+EXISTS\s+)?([a-z_][\w$]*)\s+ON\s+(?:ONLY\s+)?([a-z_][\w$]*)\.([a-z_][\w$]*)/gi;
const indexStatementPattern =
  /\bCREATE\s+(?:UNIQUE\s+)?INDEX\s+(?:CONCURRENTLY\s+)?/gi;

const tables = new Set();
const indexes = [];
let indexStatementCount = 0;

for (const filePath of schemaFiles) {
  const sql = fs.readFileSync(filePath, "utf8");

  for (const match of sql.matchAll(tablePattern)) {
    tables.add(`${match[1].toLowerCase()}.${match[2].toLowerCase()}`);
  }

  for (const match of sql.matchAll(indexPattern)) {
    indexes.push({
      filePath,
      indexName: match[1].toLowerCase(),
      relation: `${match[2].toLowerCase()}.${match[3].toLowerCase()}`,
      schemaName: match[2].toLowerCase(),
    });
  }

  indexStatementCount += [...sql.matchAll(indexStatementPattern)].length;
}

if (indexes.length !== indexStatementCount) {
  errors.push(
    `Parsed ${indexes.length} of ${indexStatementCount} CREATE INDEX statements. Use unquoted, schema-qualified index targets or update the audit parser.`,
  );
}

const indexesByQualifiedName = new Map();

for (const index of indexes) {
  const qualifiedName = `${index.schemaName}.${index.indexName}`;
  const previous = indexesByQualifiedName.get(qualifiedName);

  if (previous) {
    errors.push(
      `Duplicate index name ${qualifiedName}: ${relativePath(previous.filePath)} and ${relativePath(index.filePath)}.`,
    );
  } else {
    indexesByQualifiedName.set(qualifiedName, index);
  }

  if (!tables.has(index.relation)) {
    errors.push(
      `Index ${qualifiedName} targets missing table ${index.relation} in ${relativePath(index.filePath)}.`,
    );
  }
}

if (errors.length > 0) {
  for (const error of errors) {
    console.error(`- ${error}`);
  }

  process.exit(1);
}

console.log(
  `Verified ${schemaFiles.length} schema files, ${tables.size} tables, and ${indexes.length} schema-owned indexes.`,
);
