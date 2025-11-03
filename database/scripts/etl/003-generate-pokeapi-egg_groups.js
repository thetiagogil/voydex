#!/usr/bin/env node
import fs from "fs";
import path from "path";
import { SKIP_SLUGS } from "../../config/pokeapi-config.js";
import { confirmOrExit, getFlag } from "../../helpers/cli.js";
import { logger, prettyLog } from "../../helpers/logger.js";
import {
  escapeSql,
  fetchAllIndexEntries,
  fetchJson,
  getGenerationId,
  titleCase,
} from "../../helpers/pokeapi.js";

const dry = getFlag("--dry");
const force = getFlag("--force");
const showSql = getFlag("--sql");

const OUT_FILE = path.resolve(
  process.cwd(),
  "database",
  "seed",
  "etl",
  "007_pokeapi_egg_groups.sql",
);

async function main() {
  logger.header("Generate PokeAPI Egg Groups seed", "🌱");

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

  logger.section("Fetching /egg-group index from PokeAPI (all pages)", "🔎");
  const candidates = await fetchAllIndexEntries("egg-group", {
    filterCandidates: true,
    skipSet: SKIP_SLUGS,
    dry,
  });

  prettyLog(`Preparing to fetch ${candidates.length} egg-group details`);

  const rows = [];
  const total = candidates.length;
  for (let i = 0; i < total; i++) {
    const e = candidates[i];
    prettyLog(`${i + 1}/${total} - ${String(e.name || e.url)}`);
    try {
      const obj = await fetchJson(e.url);
      if (!obj || typeof obj.id !== "number") continue;
      const slug = String(obj.name || "").toLowerCase();
      if (SKIP_SLUGS.has(slug)) {
        prettyLog(`Skipping ${slug}`, { emoji: "⏭️" });
        continue;
      }

      const id = obj.id;
      const name = titleCase(slug);
      const generation_introduced_id = getGenerationId(obj.generation, 1);

      rows.push({ id, slug, name, generation_introduced_id });
    } catch (err) {
      prettyLog(`Failed fetching ${e.url}: ${err.message || err}`, {
        emoji: "⚠️",
      });
    }

    const delayMs = dry ? 0 : 100;
    if (delayMs) await new Promise((res) => setTimeout(res, delayMs));
  }

  rows.sort((a, b) => a.id - b.id);

  const header = `-- Generated from PokeAPI (/egg-group)
-- Skipped slugs: ${Array.from(SKIP_SLUGS).join(", ")}
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

    const insert = `INSERT INTO dex.egg_groups (id, slug, name, generation_introduced_id) VALUES\n${values}\nON CONFLICT (id) DO NOTHING;`;
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
