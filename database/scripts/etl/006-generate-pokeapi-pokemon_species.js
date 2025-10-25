#!/usr/bin/env node
import fs from "fs";
import path from "path";
import { DEFAULT_DELAY_MS, SKIP_SLUGS } from "../../config/pokeapi-config.js";
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
  "012_pokeapi_pokemon_species.sql"
);

async function main() {
  logger.header("Generate PokeAPI Pokemon Species seed", "🌱");

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

  logger.section(
    "Fetching /pokemon-species index from PokeAPI (all pages)",
    "🔎"
  );
  const candidates = await fetchAllIndexEntries("pokemon-species", {
    filterCandidates: true,
    skipSet: SKIP_SLUGS,
    idThreshold: 10000,
    dry,
  });

  prettyLog(`Preparing to fetch ${candidates.length} pokemon species details`);

  const rows = [];
  const total = candidates.length;
  for (let i = 0; i < total; i++) {
    const e = candidates[i];
    prettyLog(`${i + 1}/${total} - ${String(e.name || e.url)}`);
    try {
      const obj = await fetchJson(e.url);
      if (!obj || typeof obj.id !== "number") continue;
      const slug = String(obj.name || "").toLowerCase();
      // Skip Pokemon Conquest / other large-ids
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
      const introduced_generation_id = getGenerationId(obj.generation, 1);

      // egg groups: use first two if present (parse id from url)
      let egg_group1_id = null;
      let egg_group2_id = null;
      if (Array.isArray(obj.egg_groups) && obj.egg_groups.length > 0) {
        try {
          const g1 = obj.egg_groups[0];
          const m1 = String(g1?.url || "").match(/\/(\d+)\/?$/);
          if (m1) egg_group1_id = Number(m1[1]);
        } catch (err) {
          /* ignore */
        }
        if (obj.egg_groups.length > 1) {
          try {
            const g2 = obj.egg_groups[1];
            const m2 = String(g2?.url || "").match(/\/(\d+)\/?$/);
            if (m2) egg_group2_id = Number(m2[1]);
          } catch (err) {
            /* ignore */
          }
        }
      }

      // national number: prefer pokedex_numbers entry for the 'national' pokedex
      let national_number = null;
      if (Array.isArray(obj.pokedex_numbers)) {
        const nat = obj.pokedex_numbers.find(
          (p) => p.pokedex && p.pokedex.name === "national"
        );
        if (nat && typeof nat.entry_number === "number")
          national_number = nat.entry_number;
      }
      if (national_number == null) national_number = obj.id;

      const color = obj.color ? titleCase(obj.color.name) : null;
      const gender_rate =
        typeof obj.gender_rate === "number" ? obj.gender_rate : null;
      const capture_rate =
        typeof obj.capture_rate === "number" ? obj.capture_rate : null;
      const base_happiness =
        typeof obj.base_happiness === "number" ? obj.base_happiness : null;
      const growth_rate = obj.growth_rate
        ? String(obj.growth_rate.name || obj.growth_rate)
        : null;
      const is_baby = !!obj.is_baby;
      const is_legendary = !!obj.is_legendary;
      const is_mythical = !!obj.is_mythical;

      rows.push({
        id,
        slug,
        name,
        introduced_generation_id,
        egg_group1_id,
        egg_group2_id,
        national_number,
        color,
        gender_rate,
        capture_rate,
        base_happiness,
        growth_rate,
        is_baby,
        is_legendary,
        is_mythical,
      });
    } catch (err) {
      prettyLog(`Failed fetching ${e.url}: ${err.message || err}`, {
        emoji: "⚠️",
      });
    }

    const delayMs = dry ? 0 : DEFAULT_DELAY_MS;
    if (delayMs) await new Promise((res) => setTimeout(res, delayMs));
  }

  rows.sort((a, b) => a.id - b.id);

  const header = `-- Generated from PokeAPI (/pokemon-species)
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
        const introduced = r.introduced_generation_id || 1;
        const egg1 = r.egg_group1_id != null ? r.egg_group1_id : "NULL";
        const egg2 = r.egg_group2_id != null ? r.egg_group2_id : "NULL";
        const nat = r.national_number != null ? r.national_number : "NULL";
        const color = r.color ? `'${escapeSql(r.color)}'` : "NULL";
        const gender = r.gender_rate != null ? r.gender_rate : "NULL";
        const capture = r.capture_rate != null ? r.capture_rate : "NULL";
        const happiness = r.base_happiness != null ? r.base_happiness : "NULL";
        const growth = r.growth_rate ? `'${escapeSql(r.growth_rate)}'` : "NULL";
        const is_baby = r.is_baby ? "true" : "false";
        const is_legendary = r.is_legendary ? "true" : "false";
        const is_mythical = r.is_mythical ? "true" : "false";
        return `(${r.id}, '${slug}', '${name}', ${introduced}, ${egg1}, ${egg2}, ${nat}, ${color}, ${gender}, ${capture}, ${happiness}, ${growth}, ${is_baby}, ${is_legendary}, ${is_mythical})`;
      })
      .join(",\n");

    const insert = `INSERT INTO dex.pokemon_species (id, slug, name, introduced_generation_id, egg_group1_id, egg_group2_id, national_number, color, gender_rate, capture_rate, base_happiness, growth_rate, is_baby, is_legendary, is_mythical) VALUES\n${values}\nON CONFLICT (id) DO NOTHING;`;
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
