#!/usr/bin/env node
import fs from "fs";
import path from "path";
import { createDatabaseClient } from "./helpers/db.js";

function argVal(flag) {
  const idx = process.argv.indexOf(flag);
  return idx >= 0 && idx + 1 < process.argv.length
    ? process.argv[idx + 1]
    : null;
}

function usage() {
  console.log(
    "Usage: node db-validate.js [--dir <seed-folder>] [--preview] [--db <connectionString>]",
  );
  process.exit(1);
}

function findSqlFilesRecursive(dir) {
  if (!fs.existsSync(dir)) return [];
  const out = [];
  const items = fs.readdirSync(dir, { withFileTypes: true });
  for (const it of items) {
    const full = path.join(dir, it.name);
    if (it.isDirectory()) {
      out.push(...findSqlFilesRecursive(full));
    } else if (it.isFile() && it.name.endsWith(".sql")) {
      out.push(full);
    }
  }
  return out.sort();
}

function runStaticChecks(sql, filePath) {
  const problems = [];
  if (/,,/.test(sql)) {
    problems.push(
      "Found adjacent commas (,,) — possible missing value in VALUES",
    );
  }
  // warn only when the SELECT projection explicitly includes `gen.slug` (common mistake)
  const selMatch = sql.match(/SELECT([\s\S]*?)FROM/i);
  if (selMatch && /\bgen\.slug\b/i.test(selMatch[1])) {
    problems.push(
      "Selecting gen.slug in the SELECT projection — prefer resolving to gen.id in the SELECT",
    );
  }
  // empty WITH detection: WITH <name> AS (    )
  if (/WITH\s+\w+\s+AS\s*\(\s*\)/i.test(sql)) {
    problems.push("Found empty WITH block");
  }
  // check for INSERT ... (col, col) that contains a *_slug column name
  const insertCols = sql.match(/INSERT\s+INTO[\s\S]*?\(([\s\S]*?)\)\s*SELECT/i);
  if (insertCols && insertCols[1]) {
    const cols = insertCols[1]
      .split(",")
      .map((s) => s.trim())
      .filter(Boolean);
    // only treat *_slug columns as problematic (plain 'slug' is often a valid target column)
    const slugCols = cols.filter((c) => c.endsWith("_slug"));
    if (slugCols.length > 0) {
      problems.push(
        `INSERT column list contains slug-like columns (${slugCols.join(", ")}) — ensure the SELECT resolves slugs to ids`,
      );
    }
  }

  return problems;
}

async function runTransactionalDryRun(client, sql, label) {
  try {
    await client.query("BEGIN");
    await client.query(sql);
    await client.query("ROLLBACK");
    return { ok: true };
  } catch (err) {
    try {
      await client.query("ROLLBACK");
    } catch (e) {
      // ignore
    }
    return { ok: false, error: err.message || String(err) };
  }
}

async function main() {
  const dirArg = argVal("--dir");
  const preview =
    process.argv.includes("--preview") ||
    process.argv.includes("--static-only");
  const dbArg = argVal("--db");

  const seedsDir = dirArg
    ? path.resolve(process.cwd(), dirArg)
    : path.resolve(process.cwd(), "database", "seed", "approved");

  if (!fs.existsSync(seedsDir)) {
    console.error("Seed folder not found:", seedsDir);
    usage();
  }

  console.log("Scanning seed folder:", seedsDir);
  const files = findSqlFilesRecursive(seedsDir);
  if (files.length === 0) {
    console.log("No .sql files found in folder");
    process.exit(0);
  }

  const results = [];

  // Static checks first
  for (const f of files) {
    const sql = fs.readFileSync(f, "utf8");
    const problems = runStaticChecks(sql, f);
    results.push({ file: f, sql, problems, runtime: null });
  }

  // Print static report
  let totalProblems = 0;
  for (const r of results) {
    if (r.problems.length > 0) {
      console.log(`\n[WARN] ${path.relative(process.cwd(), r.file)}`);
      r.problems.forEach((p) => console.log("  -", p));
      totalProblems += r.problems.length;
    }
  }

  if (preview) {
    console.log(
      `\nPreview mode: skipping any DB execution. (${results.length} files scanned)`,
    );
    console.log(`Problems found: ${totalProblems}`);
    process.exit(totalProblems > 0 ? 2 : 0);
  }

  const conn = dbArg || process.env.SUPABASE_DB_URL;
  if (!conn) {
    console.error(
      "No database connection string provided. Use --db <conn> or set SUPABASE_DB_URL",
    );
    process.exit(3);
  }

  const client = createDatabaseClient(conn);
  try {
    await client.connect();
  } catch (err) {
    console.error("Failed to connect to database:", err.message || err);
    process.exit(4);
  }

  console.log(
    "Connected to DB — running transactional dry-runs (each file in its own transaction)",
  );

  let failures = 0;
  for (const r of results) {
    const rel = path.relative(process.cwd(), r.file);
    if (r.problems.length > 0) {
      console.log(`\n[SKIP] ${rel} — static problems present`);
      failures += r.problems.length;
      continue;
    }
    process.stdout.write(`\n[TEST] ${rel} ... `);
    const start = Date.now();
    const out = await runTransactionalDryRun(client, r.sql, rel);
    const took = Date.now() - start;
    if (out.ok) {
      console.log(`✅ OK (${took}ms)`);
    } else {
      console.log(`❌ FAIL (${took}ms)`);
      console.error("   ", out.error);
      failures++;
    }
  }

  await client.end();

  console.log(
    `\nDone. Files scanned: ${results.length}. Failures: ${failures}. Static problems: ${totalProblems}`,
  );
  process.exit(failures > 0 || totalProblems > 0 ? 5 : 0);
}

main().catch((err) => {
  console.error(err);
  process.exit(10);
});
