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
  "006_pokeapi_moves.sql"
);

async function main() {
  logger.header("Generate PokeAPI Moves seed", "🌱");

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

  logger.section("Fetching /move index from PokeAPI (all pages)", "🔎");
  const candidates = await fetchAllIndexEntries("move", {
    filterCandidates: true,
    idThreshold: 10000,
    skipSet: SKIP_SLUGS,
    dry,
  });

  prettyLog(`Preparing to fetch ${candidates.length} move details`);

  const rows = [];
  const total = candidates.length;
  for (let i = 0; i < total; i++) {
    const e = candidates[i];
    prettyLog(`${i + 1}/${total} - ${String(e.name || e.url)}`);
    try {
      const obj = await fetchJson(e.url);
      if (!obj || typeof obj.id !== "number") continue;
      const slug = String(obj.name || "").toLowerCase();
      // Skip Pokemon Conquest / other large-ids (not needed for app)
      if (obj.id > 10000) {
        prettyLog(`Skipping ${slug} (id ${obj.id} > 10000)`, { emoji: "⏭️" });
        continue;
      }
      if (SKIP_SLUGS.has(slug)) {
        prettyLog(`Skipping ${slug}`, { emoji: "⏭️" });
        continue;
      }

      const id = obj.id;
      const name = titleCase(slug);
      const generation_introduced_id = getGenerationId(obj.generation, 1);

      // description: use English flavor_text_entries when available; fallback to effect_entries
      let description = null;
      if (Array.isArray(obj.flavor_text_entries)) {
        const en = obj.flavor_text_entries.find(
          (x) => x.language && x.language.name === "en"
        );
        if (en) description = en.flavor_text || null;
      }
      if (!description && Array.isArray(obj.effect_entries)) {
        const en = obj.effect_entries.find(
          (x) => x.language && x.language.name === "en"
        );
        if (en) description = en.short_effect || en.effect || null;
      }

      rows.push({ id, slug, name, generation_introduced_id, description });
    } catch (err) {
      prettyLog(`Failed fetching ${e.url}: ${err.message || err}`, {
        emoji: "⚠️",
      });
    }

    const delayMs = dry ? 0 : 100;
    if (delayMs) await new Promise((res) => setTimeout(res, delayMs));
  }

  rows.sort((a, b) => a.id - b.id);

  const header = `-- Generated from PokeAPI (/move)
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
        const desc = r.description ? `'${escapeSql(r.description)}'` : "NULL";
        return `(${r.id}, '${slug}', '${name}', ${r.generation_introduced_id}, ${desc})`;
      })
      .join(",\n");

    const insert = `INSERT INTO dex.moves (id, slug, name, generation_introduced_id, description) VALUES\n${values}\nON CONFLICT (id) DO NOTHING;`;
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
