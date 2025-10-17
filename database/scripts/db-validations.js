#!/usr/bin/env node
import path from "path";
import { chooseFromList } from "../helpers/cli.js";
import { withClient } from "../helpers/db.js";
import { logger } from "../helpers/logger.js";
import { listSqlFiles, readSqlFile } from "../helpers/sql-runner.js";

async function main() {
  const args = process.argv.slice(2);
  const flagList = args.includes("--list");
  const flagShowFile = args.includes("--show-file");
  let filename = args.find((a) => !a.startsWith("--"));

  const seedsDir = path.resolve(process.cwd(), "database", "seed");
  const available = listSqlFiles(seedsDir);

  if (flagList) {
    logger.section("Available seed files", "📚");
    logger.list(available);
    process.exit(0);
  }

  if (!filename) {
    filename = await chooseFromList(available, {
      prompt: "Validation runner (interactive)",
    });
    if (!filename) {
      logger.failure("No selection made. Exiting.");
      process.exit(1);
    }
  }

  const filePath = path.resolve(seedsDir, filename);

  if (flagShowFile) {
    const content = readSqlFile(filePath);
    console.log(content);
    process.exit(0);
  }

  let content;
  try {
    content = readSqlFile(filePath);
  } catch (err) {
    logger.failure(`Unable to read file: ${filePath}`);
    process.exit(1);
  }

  // Find the VALIDATION QUERIES section (case-insensitive)
  const m = content.match(/--+\s*VALIDATION QUERIES[\s\S]*/i);
  if (!m) {
    logger.failure("No VALIDATION QUERIES section found in file.");
    process.exit(1);
  }

  const block = m[0]
    .split("\n")
    .map((l) => l.trim())
    // remove pure comment lines
    .filter((l) => !/^--/.test(l))
    .join("\n");

  // Split into statements by semicolon and keep SELECTs
  const rawStmts = block
    .split(";")
    .map((s) => s.trim())
    .filter(Boolean);
  const stmts = rawStmts
    .filter((s) => /^SELECT\b/i.test(s))
    .map((s) => s + ";");

  if (stmts.length === 0) {
    logger.failure(
      "No SELECT validation queries found in the VALIDATION QUERIES section."
    );
    process.exit(1);
  }

  try {
    logger.header(`Running validations from ${filename}`, "🔬");
    await withClient(async (client) => {
      for (let i = 0; i < stmts.length; i++) {
        const q = stmts[i];
        logger.section(`Validation ${i + 1}`, "🔎");
        console.log(q);
        try {
          const res = await client.query(q);
          if (!res || !res.rows) {
            logger.success("Query executed (no rows returned)");
          } else if (res.rows.length === 0) {
            logger.success("No rows (0)");
          } else {
            console.table(res.rows);
          }
        } catch (err) {
          logger.failure(`Query failed: ${err.message || err}`);
        }
      }
    });
  } catch (err) {
    logger.failure(`Validation run failed: ${err.message || err}`);
    process.exit(1);
  }
}

main();
