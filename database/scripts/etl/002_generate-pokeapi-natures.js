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
  formatStatField,
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
  "003_pokeapi_natures.sql"
);

async function main() {
  logger.header("Generate PokeAPI Natures seed", "🌱");

  if (fs.existsSync(OUT_FILE) && !force) {
    logger.section(
      `Seed file already exists: ${path.relative(process.cwd(), OUT_FILE)}`,
      "⚠️"
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

  logger.section("Fetching /nature index from PokeAPI (all pages)", "🔎");
  const candidates = await fetchAllIndexEntries("nature", {
    filterCandidates: true,
    skipSet: SKIP_SLUGS,
    dry,
  });

  prettyLog(`Preparing to fetch ${candidates.length} nature details`);

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
      const generation_introduced_id = getGenerationId(obj.generation, 3);

      // Map stat/flavor fields; these may be null or object with .name
      const increased_stat = formatStatField(obj.increased_stat);
      const decreased_stat = formatStatField(obj.decreased_stat);
      const liked_flavor = obj.likes_flavor
        ? String(obj.likes_flavor.name)
        : null;
      const disliked_flavor = obj.dislikes_flavor
        ? String(obj.dislikes_flavor.name)
        : null;

      rows.push({
        id,
        slug,
        name,
        generation_introduced_id,
        increased_stat,
        decreased_stat,
        liked_flavor,
        disliked_flavor,
      });
    } catch (err) {
      prettyLog(`Failed fetching ${e.url}: ${err.message || err}`, {
        emoji: "⚠️",
      });
    }

    const delayMs = dry ? 0 : 100;
    if (delayMs) await new Promise((res) => setTimeout(res, delayMs));
  }

  rows.sort((a, b) => a.id - b.id);

  const header = `-- Generated from PokeAPI (/nature)
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
        const inc = r.increased_stat
          ? `'${escapeSql(r.increased_stat)}'`
          : "NULL";
        const dec = r.decreased_stat
          ? `'${escapeSql(r.decreased_stat)}'`
          : "NULL";
        const liked = r.liked_flavor
          ? `'${escapeSql(r.liked_flavor)}'`
          : "NULL";
        const disliked = r.disliked_flavor
          ? `'${escapeSql(r.disliked_flavor)}'`
          : "NULL";
        return `(${r.id}, '${slug}', '${name}', ${r.generation_introduced_id}, ${inc}, ${dec}, ${liked}, ${disliked})`;
      })
      .join(",\n");

    const insert = `INSERT INTO dex.natures (id, slug, name, generation_introduced_id, increased_stat, decreased_stat, liked_flavor, disliked_flavor) VALUES\n${values}\nON CONFLICT (id) DO NOTHING;`;
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
    `Wrote ${path.relative(process.cwd(), OUT_FILE)} (${rows.length} rows)`
  );
}

main().catch((err) => {
  logger.failure(err.message || err);
  process.exit(1);
});
