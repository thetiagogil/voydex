#!/usr/bin/env node
import fs from "fs";
import path from "path";
import { DEFAULT_DELAY_MS, SKIP_SLUGS } from "../config/pokeapi-config.js";
import { confirmOrExit, getFlag } from "../helpers/cli.js";
import { logger, prettyLog } from "../helpers/logger.js";
import {
  escapeSql,
  fetchAllIndexEntries,
  fetchJson,
  titleCase,
} from "../helpers/pokeapi.js";

const dry = getFlag("--dry");
const force = getFlag("--force");
const showSql = getFlag("--sql");
const splitByGen = getFlag("--split-by-generation");

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
  const rowsByGen = {};
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
      const introduced_generation_slug =
        obj.generation && obj.generation.name
          ? String(obj.generation.name)
          : "generation-i";

      // egg groups are handled in pokemon_attributes; don't include them here

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
      const is_baby = !!obj.is_baby;
      const is_legendary = !!obj.is_legendary;
      const is_mythical = !!obj.is_mythical;

      const row = {
        id,
        slug,
        name,
        introduced_generation_slug,
        national_number,
        color,
        is_baby,
        is_legendary,
        is_mythical,
      };
      rows.push(row);
      rowsByGen[introduced_generation_slug] =
        rowsByGen[introduced_generation_slug] || [];
      rowsByGen[introduced_generation_slug].push(row);
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
-- NOTE: This seed uses slug-based lookups. VALUES rows are (slug, name, introduced_generation_slug, national_number, color, is_baby, is_legendary, is_mythical)
\n`;

  function buildSqlForRows(rs) {
    if (!rs || rs.length === 0) return header + "-- No rows to insert\n";
    const values = rs
      .map((r) => {
        const slug = escapeSql(r.slug) ?? "";
        const name = escapeSql(r.name) ?? "";
        const introduced = r.introduced_generation_slug
          ? `${r.introduced_generation_slug}`
          : "generation-i";
        const nat = r.national_number != null ? r.national_number : "NULL";
        const color = r.color ? `'${escapeSql(r.color)}'` : "NULL";
        const is_baby = r.is_baby ? "TRUE" : "FALSE";
        const is_legendary = r.is_legendary ? "TRUE" : "FALSE";
        const is_mythical = r.is_mythical ? "TRUE" : "FALSE";
        return `('${slug}','${name}','${introduced}',${nat},${color},${is_baby},${is_legendary},${is_mythical})`;
      })
      .join(",\n");

    const sql = `${header}WITH vals(slug,name,introduced_generation_slug,national_number,color,is_baby,is_legendary,is_mythical) AS (\nVALUES\n${values}\n)\nINSERT INTO dex.pokemon_species (slug,name,introduced_generation_id,national_number,color,is_baby,is_legendary,is_mythical,created_at)\nSELECT v.slug, v.name, g.id, v.national_number, v.color, v.is_baby, v.is_legendary, v.is_mythical, now()\nFROM vals v\nLEFT JOIN meta.generations g ON g.slug = v.introduced_generation_slug\nON CONFLICT (slug) DO NOTHING;\n`;
    return sql;
  }

  if (splitByGen) {
    // write one file per generation present in rowsByGen
    const base = path.resolve(
      process.cwd(),
      "database",
      "seed",
      "generated",
      "pokemon_species"
    );
    if (!fs.existsSync(base)) fs.mkdirSync(base, { recursive: true });
    const shortGen = (g) => {
      const map = {
        "generation-i": "gen1",
        "generation-ii": "gen2",
        "generation-iii": "gen3",
        "generation-iv": "gen4",
        "generation-v": "gen5",
        "generation-vi": "gen6",
        "generation-vii": "gen7",
        "generation-viii": "gen8",
        "generation-ix": "gen9",
      };
      return map[g] || g.replace(/[^a-z0-9_-]/gi, "_");
    };

    const gens = Object.keys(rowsByGen).sort();
    for (const gen of gens) {
      const rs = rowsByGen[gen];
      const sql = buildSqlForRows(rs);
      if (dry) {
        const preview = path.resolve(
          process.cwd(),
          "database",
          "seed",
          "reports",
          `pokemon_species_preview_${shortGen(gen)}_${Date.now()}.sql`
        );
        fs.mkdirSync(path.dirname(preview), { recursive: true });
        fs.writeFileSync(preview, sql, "utf8");
        logger.success(`Wrote preview SQL: ${preview} (${rs.length} rows)`);
      } else {
        const fname = path.join(
          base,
          `010_pokemon_species_${shortGen(gen)}_generated.sql`
        );
        fs.writeFileSync(fname, sql, "utf8");
        logger.success(
          `Wrote ${path.relative(process.cwd(), fname)} (${rs.length} rows)`
        );
      }
    }
    return;
  }

  // not split: write a single generated file
  const sql = buildSqlForRows(rows);
  if (dry) {
    if (showSql) {
      logger.section("SQL preview", "📄");
      logger.sqlBlock(sql);
    }
    const preview = path.resolve(
      process.cwd(),
      "database",
      "seed",
      "reports",
      `pokemon_species_preview_${Date.now()}.sql`
    );
    fs.mkdirSync(path.dirname(preview), { recursive: true });
    fs.writeFileSync(preview, sql, "utf8");
    logger.success(
      `Preview complete — ${rows.length} rows would be written. Wrote preview: ${preview}`
    );
    return;
  }

  const outDir = path.resolve(
    process.cwd(),
    "database",
    "seed",
    "etl",
    "pokemon_species"
  );
  if (!fs.existsSync(outDir)) fs.mkdirSync(outDir, { recursive: true });
  const outFile = path.join(
    outDir,
    `012_pokeapi_pokemon_species_generated.sql`
  );
  fs.writeFileSync(outFile, sql, "utf8");
  logger.success(
    `Wrote ${path.relative(process.cwd(), outFile)} (${rows.length} rows)`
  );
}

main().catch((err) => {
  logger.failure(err.message || err);
  process.exit(1);
});
