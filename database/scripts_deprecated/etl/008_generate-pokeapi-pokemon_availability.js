#!/usr/bin/env node
import fs from "fs";
import fetch from "node-fetch";
import path from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const SEED_DIR = path.resolve(__dirname, "../../seeds/etl");
const GEN_FILES = [
  "015_pokeapi_pokemon_availability_gen1.sql",
  "015_pokeapi_pokemon_availability_gen2.sql",
  "015_pokeapi_pokemon_availability_gen3.sql",
  "015_pokeapi_pokemon_availability_gen4.sql",
].map((f) => path.join(SEED_DIR, f));

function parseArgs() {
  const args = process.argv.slice(2);
  return {
    dry: args.includes("--dry"),
    force: args.includes("--force"),
    sqlOnly: args.includes("--sql"),
  };
}

function extractPokemonIdsFromFile(fileContent) {
  // look for '{"pokemonId":NUMBER' in the file
  const re = /\{"pokemonId":(\d+)[^}]*\}/g;
  const ids = new Set();
  let m;
  while ((m = re.exec(fileContent)) !== null) {
    ids.add(Number(m[1]));
  }
  return Array.from(ids);
}

async function fetchSpeciesSlugForPokemonId(id) {
  const url = `https://pokeapi.co/api/v2/pokemon-species/${id}/`;
  const res = await fetch(url);
  if (!res.ok) throw new Error(`Failed to fetch ${url} : ${res.status}`);
  const json = await res.json();
  return json.slug || json.name || null; // name is usually slug-like
}

async function fetchPokemonData(id) {
  const url = `https://pokeapi.co/api/v2/pokemon/${id}/`;
  const res = await fetch(url);
  if (!res.ok) throw new Error(`Failed to fetch ${url} : ${res.status}`);
  return res.json();
}

function escapeSqlString(s) {
  return s.replace(/'/g, "''");
}

function buildCuratedSqlForRows(rows) {
  // rows: array of { species_slug, form_slug, game_id, is_available, is_version_exclusive, source, source_metadata_json }
  const tuples = rows.map((r) => {
    const species = r.species_slug
      ? `'${escapeSqlString(r.species_slug)}'`
      : "NULL";
    const form = r.form_slug ? `'${escapeSqlString(r.form_slug)}'` : "NULL";
    const gameId = r.game_id ?? "NULL";
    const isAvailable = r.is_available ? "true" : "false";
    const isVersionExclusive = r.is_version_exclusive ? "true" : "false";
    const source = r.source ? `'${escapeSqlString(r.source)}'` : "'pokeapi'";
    const meta = r.source_metadata_json
      ? `'${escapeSqlString(JSON.stringify(r.source_metadata_json))}'::jsonb`
      : "'{}'::jsonb";
    return `(${species}, ${form}, ${gameId}, ${isAvailable}, ${isVersionExclusive}, ${source}, ${meta})`;
  });

  const header = `-- Generated curated availability (values -> join by slug)\n-- Generated at: ${new Date().toISOString()}\n\nWITH v AS (\n  SELECT * FROM (\n    VALUES\n    ${tuples.join(",\n    ")}\n  ) AS t(\n    species_slug,\n    form_slug,\n    game_id,\n    is_available,\n    is_version_exclusive,\n    source,\n    source_metadata\n  )\n)\nINSERT INTO meta.pokemon_availability (species_id, form_id, game_id, is_available, is_version_exclusive, source, source_metadata)\nSELECT\n  s.id AS species_id,\n  COALESCE(f.id, df.id) AS form_id,\n  v.game_id::integer,\n  v.is_available::boolean,\n  v.is_version_exclusive::boolean,\n  v.source::text,\n  v.source_metadata::jsonb\nFROM v\nJOIN meta.pokemon_species s ON s.slug = v.species_slug\nLEFT JOIN meta.pokemon_forms f ON f.slug = v.form_slug AND f.species_id = s.id\nLEFT JOIN meta.pokemon_forms df ON df.species_id = s.id AND df.is_default = true\nON CONFLICT ON CONSTRAINT uq_availability_species_form_per_game DO UPDATE SET\n  is_available = EXCLUDED.is_available,\n  is_version_exclusive = EXCLUDED.is_version_exclusive,\n  source = EXCLUDED.source,\n  source_metadata = EXCLUDED.source_metadata,\n  updated_at = NOW();\n\n`;

  return header;
}

async function main() {
  const { dry, force } = parseArgs();

  const filesToProcess = GEN_FILES.filter((f) => fs.existsSync(f));
  if (filesToProcess.length === 0) {
    console.error("No generated per-gen availability files found in", SEED_DIR);
    process.exit(1);
  }

  // read all files, collect rows per file
  for (const filePath of filesToProcess) {
    const content = fs.readFileSync(filePath, "utf8");
    // parse per-row INSERT lines to extract information
    const insertRe =
      /INSERT INTO dex\.pokemon_availability \([^)]*\) VALUES \(([^)]+)\) ON CONFLICT[^;]+;/g;
    const rows = [];
    let m;
    while ((m = insertRe.exec(content)) !== null) {
      const valuesStr = m[1];
      // split top-level commas - naive split will work because values are simple in our files
      const parts = valuesStr
        .split(/, (?=(?:[^']*'[^']*')*[^']*$)/)
        .map((p) => p.trim());
      // expected order in file: species_id, form_id, game_id, is_available, is_version_exclusive, source, source_metadata
      const species_id = parts[0] === "NULL" ? null : Number(parts[0]);
      const form_id = parts[1] === "NULL" ? null : Number(parts[1]);
      const game_id = parts[2] === "NULL" ? null : Number(parts[2]);
      const is_available = parts[3] === "true";
      const is_version_exclusive = parts[4] === "true";
      const source = parts[5] ? parts[5].replace(/^'|'$/g, "") : "pokeapi";
      const metadataRaw = parts[6] || "{}";
      let metadataJson = {};
      try {
        // try to coerce single-quoted JSON into double-quoted (simple)
        const jsonStr = metadataRaw.replace(/^'|'$/g, "");
        metadataJson = JSON.parse(jsonStr);
      } catch (err) {
        try {
          // fallback: read as is (if already double-quoted)
          metadataJson = JSON.parse(metadataRaw);
        } catch (err2) {
          metadataJson = { raw: metadataRaw };
        }
      }
      rows.push({
        species_id,
        form_id,
        game_id,
        is_available,
        is_version_exclusive,
        source,
        source_metadata_json: metadataJson,
      });
    }

    // collect unique pokemonIds from rows
    const pokemonIds = new Set();
    for (const r of rows) {
      if (r.source_metadata_json && r.source_metadata_json.pokemonId)
        pokemonIds.add(r.source_metadata_json.pokemonId);
    }

    const idToSpeciesSlug = {};
    const idToFormSlug = {};

    // resolve slugs for each pokemon id
    for (const id of Array.from(pokemonIds)) {
      try {
        // fetch pokemon endpoint for forms & species
        const pk = await fetchPokemonData(id);
        // pokemon data has species.url and forms info, and name
        const speciesUrl = pk.species?.url;
        let speciesSlug = null;
        if (speciesUrl) {
          const spRes = await fetch(speciesUrl);
          const spJson = await spRes.json();
          speciesSlug = spJson.slug || spJson.name || null;
        }
        // use pokemon.name as fallback for form slug
        const formSlug = pk.name || null;
        idToSpeciesSlug[id] = speciesSlug;
        idToFormSlug[id] = formSlug;
      } catch (err) {
        console.error(`Failed to resolve pokemonId=${id}:`, err.message);
      }
    }

    // build curated rows
    const curatedRows = rows.map((r) => {
      const pid = r.source_metadata_json?.pokemonId;
      return {
        species_slug: pid ? idToSpeciesSlug[pid] : null,
        form_slug: pid ? idToFormSlug[pid] : null,
        game_id: r.game_id,
        is_available: r.is_available,
        is_version_exclusive: r.is_version_exclusive,
        source: r.source,
        source_metadata_json: r.source_metadata_json,
      };
    });

    // sanity check: any unresolved species slug?
    const unresolved = curatedRows.filter((x) => !x.species_slug);
    if (unresolved.length > 0) {
      console.warn(
        `Warning: ${unresolved.length} rows could not be resolved to species_slug for file ${path.basename(filePath)}.`,
      );
      // show a couple
      console.warn(unresolved.slice(0, 5));
    }

    const curatedSql = buildCuratedSqlForRows(curatedRows);

    if (dry) {
      console.log(`\n--- Preview for ${path.basename(filePath)} ---\n`);
      console.log(curatedSql.slice(0, 2000));
      console.log("\n---- end preview ----\n");
    } else {
      // write backup & write file
      const backupPath = `${filePath}.bak`;
      if (fs.existsSync(filePath) && !force) {
        console.error(`${filePath} exists. Re-run with --force to overwrite.`);
        continue;
      }
      if (fs.existsSync(filePath)) fs.copyFileSync(filePath, backupPath);
      fs.writeFileSync(filePath, curatedSql, "utf8");
      console.log(`Wrote curated SQL to ${filePath} (backup at ${backupPath})`);
    }
  }
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});
