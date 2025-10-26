#!/usr/bin/env node
import fs from "fs";
import path from "path";
import { SKIP_FORM_PATTERNS, SKIP_SLUGS } from "../config/pokeapi-config.js";
import { getFlag } from "../helpers/cli.js";
import { logger, prettyLog } from "../helpers/logger.js";
import {
  escapeSql,
  fetchAllIndexEntries,
  fetchGenerationResources,
  fetchJson,
  getFormIntroducedGeneration,
  getGenerationId,
  titleCase,
} from "../helpers/pokeapi.js";

const dry = getFlag("--dry");
const showSql = getFlag("--sql");

function parseGenFlag() {
  const arg = process.argv.slice(2).find((a) => a.startsWith("--gen="));
  if (!arg) return null;
  const val = arg.split("=")[1];
  if (!val) return null;
  return val
    .split(",")
    .map((s) => Number(s.trim()))
    .filter(Boolean);
}

const gens = parseGenFlag();

async function runForGen(gen) {
  logger.section(`Processing generation ${gen}`, "🔎");
  const genRes = await fetchGenerationResources(gen);
  const allowedSpeciesSet = genRes.pokemon_species || new Set();
  prettyLog(`Filtering species by generation: ${gen}`);

  const candidates = await fetchAllIndexEntries("pokemon-species", {
    filterCandidates: true,
    skipSet: SKIP_SLUGS,
    idThreshold: 10000,
    dry,
  });

  const filtered = candidates.filter((c) =>
    allowedSpeciesSet.has(String(c.url || c.name).toLowerCase())
  );

  prettyLog(
    `Preparing to fetch ${filtered.length} species for forms generation (gen ${gen})`
  );

  const rows = [];
  const nondefault = [];
  const total = filtered.length;
  for (let i = 0; i < total; i++) {
    const e = filtered[i];
    prettyLog(`${i + 1}/${total} - ${String(e.name || e.url)}`);
    try {
      const species = await fetchJson(e.url);
      if (!species || typeof species.id !== "number") continue;
      const speciesSlug = String(species.name || "").toLowerCase();
      const speciesGen = getGenerationId(species.generation, 1);

      if (!Array.isArray(species.varieties) || species.varieties.length === 0)
        continue;
      for (const v of species.varieties) {
        const pokeUrl = v.pokemon?.url;
        if (!pokeUrl) continue;
        const poke = await fetchJson(pokeUrl);
        if (!poke || typeof poke.id !== "number") continue;

        const isDefault = !!v.is_default;
        const formSlugPart =
          poke.forms && poke.forms[0] && poke.forms[0].name
            ? String(poke.forms[0].name).toLowerCase().replace(/\s+/g, "-")
            : String(poke.name || "").toLowerCase();
        const slug = isDefault ? speciesSlug : `${speciesSlug}-${formSlugPart}`;
        const name = isDefault
          ? titleCase(speciesSlug)
          : titleCase(formSlugPart);
        // determine the form's introduced generation (inspect game_indices -> version_group -> generation)
        const introduced_generation_id = await getFormIntroducedGeneration(
          poke,
          speciesGen
        );

        // include only forms introduced in the requested generation
        if (introduced_generation_id !== gen) {
          prettyLog(
            `Skipping ${slug} (introduced in gen ${introduced_generation_id} != ${gen})`,
            { emoji: "⏭️" }
          );
          continue;
        }

        // skip by configured form patterns (mega, gmax, totem, event, etc.)
        // Apply skip patterns only to non-default forms. Default forms represent
        // the species canonical entry and should not be skipped just because
        // their slug contains substrings like "mega" (e.g. "meganium").
        if (!isDefault && Array.isArray(SKIP_FORM_PATTERNS)) {
          let skip = false;
          for (const rx of SKIP_FORM_PATTERNS) {
            if (
              rx.test(slug) ||
              rx.test(poke.name) ||
              rx.test(poke.forms?.[0]?.name || "")
            ) {
              skip = true;
              break;
            }
          }
          if (skip) {
            prettyLog(`Skipping ${slug} (matched skip pattern)`, {
              emoji: "⏭️",
            });
            continue;
          }
        }
        const height = typeof poke.height === "number" ? poke.height : null;
        const weight = typeof poke.weight === "number" ? poke.weight : null;
        const sprite =
          poke.sprites?.other?.["official-artwork"]?.front_default ||
          poke.sprites?.front_default ||
          null;

        const row = {
          species_id: species.id,
          species_slug: speciesSlug,
          slug,
          name,
          introduced_generation_id,
          height,
          weight,
          is_default: isDefault,
          sprite_url: sprite,
        };
        if (isDefault) rows.push(row);
        else nondefault.push(row);

        const delayMs = dry ? 0 : 50;
        if (delayMs) await new Promise((res) => setTimeout(res, delayMs));
      }
    } catch (err) {
      prettyLog(`Failed fetching ${e.url}: ${err.message || err}`, {
        emoji: "⚠️",
      });
    }
  }

  rows.sort(
    (a, b) => a.species_id - b.species_id || a.slug.localeCompare(b.slug)
  );
  nondefault.sort(
    (a, b) => a.species_id - b.species_id || a.slug.localeCompare(b.slug)
  );

  const header = `-- Generated from PokeAPI (pokemon_forms)\n-- Generated at: ${new Date().toISOString()}\n\n`;

  const outFileGen = path.resolve(
    process.cwd(),
    "database",
    "seed",
    "generated",
    "pokemon_forms",
    `013_pokeapi_pokemon_forms_gen${gen}_generated.sql`
  );

  let sql;
  if (rows.length === 0) sql = header + "-- No rows to insert\n";
  else {
    // Build slug-based VALUES with server-side joins (species slug -> id, generation slug -> id)
    const values = rows
      .map((r) => {
        const speciesSlug =
          escapeSql(r.species_slug || String(r.species_id)) ?? "";
        const slug = escapeSql(r.slug) ?? "";
        const name = escapeSql(r.name) ?? "";
        const sprite = r.sprite_url ? `'${escapeSql(r.sprite_url)}'` : "NULL";
        const h = r.height != null ? r.height : "NULL";
        const w = r.weight != null ? r.weight : "NULL";
        const genSlug = r.introduced_generation_id
          ? `generation-${r.introduced_generation_id}`
          : `generation-1`;
        const isDef = r.is_default ? "TRUE" : "FALSE";
        // order: slug, name, species_slug, introduced_generation_slug, height, weight, is_default, sprite_url
        return `('${slug}','${name}','${speciesSlug}','${genSlug}',${h},${w},${isDef},${sprite})`;
      })
      .join(",\n");

    const insert = `WITH vals(slug, name, species_slug, introduced_generation_slug, height, weight, is_default, sprite_url) AS (\nVALUES\n${values}\n)\nINSERT INTO dex.pokemon_forms (species_id, slug, name, introduced_generation_id, height, weight, is_default, sprite_url, created_at)\nSELECT sp.id, v.slug, v.name, g.id, v.height, v.weight, v.is_default, v.sprite_url, now()\nFROM vals v\nLEFT JOIN dex.pokemon_species sp ON sp.slug = v.species_slug\nLEFT JOIN meta.generations g ON g.slug = v.introduced_generation_slug\nWHERE sp.id IS NOT NULL\nON CONFLICT (species_id, slug) DO NOTHING;`;
    sql = header + insert + "\n";
  }

  if (dry) {
    if (showSql) {
      logger.section("SQL preview", "📄");
      logger.sqlBlock(sql);
    }
    // Do not write non-default JSON file per user's request; just report counts
    logger.success(
      `Preview complete — gen ${gen}: ${rows.length} default form rows would be written; ${nondefault.length} non-default candidates were identified (not written to disk).`
    );
    return {
      outFileGen,
      // reviewFileGen left for compatibility but not written
      reviewFileGen: null,
      rowsCount: rows.length,
      nondefaultCount: nondefault.length,
    };
  }

  const seedsDir = path.dirname(outFileGen);
  if (!fs.existsSync(seedsDir)) fs.mkdirSync(seedsDir, { recursive: true });
  fs.writeFileSync(outFileGen, sql, "utf8");
  // Do not write non-default JSON file per user's request. Keep behavior: write SQL and report nondefault count.
  logger.success(
    `Wrote gen ${gen}: ${path.relative(process.cwd(), outFileGen)} (${rows.length} rows). Identified ${nondefault.length} non-default candidates (not written to disk).`
  );
  return {
    outFileGen,
    reviewFileGen: null,
    rowsCount: rows.length,
    nondefaultCount: nondefault.length,
  };
}

async function main() {
  logger.header("Generate PokeAPI Pokemon Forms seed", "🌱");
  if (!Array.isArray(gens) || gens.length === 0) {
    logger.failure(
      "You must specify a generation using --gen=<n> (e.g. --gen=1 or --gen=1,2)"
    );
    process.exit(1);
  }

  for (const g of gens) {
    // run sequentially per-gen
    // eslint-disable-next-line no-await-in-loop
    await runForGen(g);
  }
}

main().catch((err) => {
  logger.failure(err.message || err);
  process.exit(1);
});
