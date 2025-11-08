#!/usr/bin/env node
import fs from "fs";
import path from "path";
import { SKIP_SLUGS } from "../../config/pokeapi-config.js";
import { confirmOrExit, getFlag } from "../../helpers/cli.js";
import { logger, prettyLog } from "../../helpers/logger.js";
import { escapeSql, fetchAllTypes } from "../../helpers/pokeapi.js";

const dry = getFlag("--dry");
const force = getFlag("--force");
const showSql = getFlag("--sql");

const OUT_FILE = path.resolve(
  process.cwd(),
  "database",
  "seed",
  "etl",
  "005_pokeapi_types.sql",
);

async function main() {
  logger.header("Generate PokeAPI Types seed", "🌱");

  if (fs.existsSync(OUT_FILE) && !force) {
    logger.section(
      `Seed file already exists: ${path.relative(process.cwd(), OUT_FILE)}`,
      "⚠️",
    );
    logger.list([
      "The generator will not overwrite the existing file unless you confirm.",
      "Pass '--force' to skip this prompt and overwrite.",
    ]);
    if (!dry) {
      await confirmOrExit("Type 'y' to overwrite the existing seed file: ", {
        flag: "--force",
      });
    }
  }

  logger.section("Fetching /type index from PokeAPI", "🔎");
  const rows = await fetchAllTypes({ delay: 100, dry });
  prettyLog(`Collected ${rows.length} normalized rows`);

  const header = `-- Generated from PokeAPI (/type)
-- Skipped slugs: ${Array.from(SKIP_SLUGS).join(", ")}
-- generation_introduced_id is derived from the PokeAPI generation field when present.
-- Generated at: ${new Date().toISOString()}
\n`;

  let sql;
  if (rows.length === 0) {
    sql = header + "-- No rows to insert\n";
  } else {
    const values = rows
      .map((r) => {
        const slug = escapeSql(r.slug) ?? "";
        const name = escapeSql(r.name) ?? "";
        return `(${r.id}, '${slug}', '${name}', ${r.generation_introduced_id})`;
      })
      .join(",\n");

    const insert = `INSERT INTO dex.types (id, slug, name, generation_introduced_id) VALUES\n${values}\nON CONFLICT (id) DO NOTHING;`;
    sql = header + insert + "\n";
  }

  if (dry) {
    if (showSql) {
      logger.section("SQL preview", "📄");
      logger.sqlBlock(sql);
    }
    logger.success(`Preview complete — ${rows.length} rows would be written.`);
    return;
  }

  const seedsDir = path.dirname(OUT_FILE);
  if (!fs.existsSync(seedsDir)) fs.mkdirSync(seedsDir, { recursive: true });

  fs.writeFileSync(OUT_FILE, sql, "utf8");
  logger.success(
    `Wrote ${path.relative(process.cwd(), OUT_FILE)} (${rows.length} rows)`,
  );
}

main().catch((err) => {
  logger.failure(err.message || err);
  process.exit(1);
});
