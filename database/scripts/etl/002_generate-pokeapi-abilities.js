#!/usr/bin/env node
import fs from "fs";
import path from "path";
import {
  DEFAULT_DELAY_MS,
  GEN_MAP,
  SKIP_SLUGS,
} from "../../config/pokeapi-config.js";
import { confirmOrExit, getFlag } from "../../helpers/cli.js";
import { logger, prettyLog } from "../../helpers/logger.js";
import {
  fetchAllIndexEntries,
  fetchJson,
  titleCase,
} from "../../helpers/pokeapi.js";

const dry = getFlag("--dry");
const force = getFlag("--force");
const showSql = getFlag("--sql");

const OUT_FILE = path.resolve(
  process.cwd(),
  "database",
  "seed",
  "005_pokeapi_abilities.sql"
);

async function main() {
  logger.header("Generate PokeAPI Abilities seed", "🌱");

  if (fs.existsSync(OUT_FILE) && !force) {
    logger.section(
      `Seed file already exists: ${path.relative(process.cwd(), OUT_FILE)}`,
      "⚠️"
    );
    logger.list([
      "The generator will not overwrite the existing file unless you confirm.",
      "Pass '--force' to skip this prompt and overwrite.",
    ]);
    if (!dry)
      await confirmOrExit("Type 'y' to overwrite the existing seed file: ", {
        flag: "--force",
      });
  }

  logger.section("Fetching /ability index from PokeAPI (all pages)", "🔎");
  const candidates = await fetchAllIndexEntries("ability", {
    filterCandidates: true,
    idThreshold: 10000,
    skipSet: SKIP_SLUGS,
    dry,
  });

  prettyLog(`Preparing to fetch ${candidates.length} ability details`);

  const rows = [];
  const total = candidates.length;
  for (let i = 0; i < total; i++) {
    const e = candidates[i];
    prettyLog(`${i + 1}/${total} - ${String(e.name || e.url)}`);
    try {
      const obj = await fetchJson(e.url);
      if (!obj || typeof obj.id !== "number") continue;
      const slug = String(obj.name || "").toLowerCase();
      // Skip Pokemon Conquest (big ids)
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
      let generation_introduced_id = 1;
      if (obj.generation && obj.generation.name) {
        const g = String(obj.generation.name).toLowerCase();
        if (GEN_MAP[g]) generation_introduced_id = GEN_MAP[g];
      }
      let effect_short = null;
      let effect_long = null;
      if (Array.isArray(obj.effect_entries)) {
        const en = obj.effect_entries.find(
          (x) => x.language && x.language.name === "en"
        );
        if (en) {
          effect_short = en.short_effect || null;
          effect_long = en.effect || null;
        }
      }

      rows.push({
        id,
        slug,
        name,
        generation_introduced_id,
        effect_short,
        effect_long,
      });
    } catch (err) {
      prettyLog(`Failed fetching ${e.url}: ${err.message || err}`, {
        emoji: "⚠️",
      });
    }
    // avoid unnecessary waiting during dry runs; respect DEFAULT_DELAY_MS otherwise
    const delayMs = dry ? 0 : DEFAULT_DELAY_MS;
    if (delayMs) await new Promise((res) => setTimeout(res, delayMs));
  }

  rows.sort((a, b) => a.id - b.id);

  const header = `-- Generated from PokeAPI (/ability)
-- Skipped slugs: ${Array.from(SKIP_SLUGS).join(", ")}
-- Generated at: ${new Date().toISOString()}
\n`;

  let sql;
  if (rows.length === 0) {
    sql = header + "-- No rows to insert\n";
  } else {
    const values = rows
      .map((r) => {
        const slug = String(r.slug).replace(/'/g, "''");
        const name = String(r.name).replace(/'/g, "''");
        const shortEff = r.effect_short
          ? String(r.effect_short).replace(/'/g, "''")
          : null;
        const longEff = r.effect_long
          ? String(r.effect_long).replace(/'/g, "''")
          : null;
        return `(${r.id}, '${slug}', '${name}', ${r.generation_introduced_id}, ${shortEff ? `'${shortEff}'` : "NULL"}, ${longEff ? `'${longEff}'` : "NULL"})`;
      })
      .join(",\n");

    const insert = `INSERT INTO dex.abilities (id, slug, name, generation_introduced_id, effect_short, effect_long) VALUES\n${values}\nON CONFLICT (id) DO NOTHING;`;
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
