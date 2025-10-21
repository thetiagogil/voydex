#!/usr/bin/env node
import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const INPUT = path.resolve(
  __dirname,
  "../../bulbapedia/pokemon_availability.md"
);
const OUT_DIR = path.resolve(__dirname, "../../seed/curated");

// Column mapping for Avail-1 template (the order must match the file's header columns)
// We'll map each column to the `meta.games.slug` defined in curated/001_meta_data.sql for generations 1..4
const AVAIL_1_GAME_SLUGS = [
  // Generation I (4)
  "red",
  "blue",
  "yellow",
  // Generation II (3)
  "gold",
  "silver",
  "crystal",
  // Generation III (5)
  "ruby",
  "sapphire",
  "firered",
  "leafgreen",
  "emerald",
  // GCN (2)
  "colosseum",
  "xd",
  // Generation IV (5)
  "diamond",
  "pearl",
  "platinum",
  "heartgold",
  "soulsilver",
  // Generation V (4)
  "black",
  "white",
  "black-2",
  "white-2",
  // Generation VI (4)
  "x",
  "y",
  "omega-ruby",
  "alpha-sapphire",
  // Generation VII (6)
  "sun",
  "moon",
  "ultra-sun",
  "ultra-moon",
  "lets-go-pikachu",
  "lets-go-eevee",
  // Generation VIII (5)
  "sword",
  "shield",
  "brilliant-diamond",
  "shining-pearl",
  "swsh-dlc?",
  // Note: last placeholder to keep column counts aligned; we'll only use gens 1..4 for now
];

function slugify(s) {
  return String(s || "")
    .toLowerCase()
    .replace(/\s+/g, "-")
    .replace(/[^a-z0-9\-]/g, "-")
    .replace(/-+/g, "-")
    .replace(/(^-|-$)/g, "");
}

function parseAvailTemplates(md) {
  // regex to capture templates like {{Avail-1|0001|Bulbasaur|R|R|...}}
  const tplRe = /\{\{Avail-(\d)\|([^|}]+)\|([^|}]+)\|([^}]*)\}\}/g;
  const rowsByGen = { 1: [], 2: [], 3: [], 4: [] };
  let m;
  while ((m = tplRe.exec(md)) !== null) {
    const genIdx = Number(m[1]);
    if (genIdx < 1 || genIdx > 4) continue;
    const ndex = m[2];
    const name = m[3];
    const rest = m[4];
    const codes = rest.split("|").map((s) => s.trim());
    rowsByGen[genIdx].push({ ndex, name, codes });
  }
  return rowsByGen;
}

function buildSqlForGen(gen, rows) {
  const rowsFiltered = [];
  for (const r of rows) {
    const species_slug = slugify(
      r.name.replace(/^form=-/i, "").replace(/\(.+\)$/, "")
    );
    // only Avail-1 mapping implemented; we map columns to games within generations 1..4
    // For Avail-1, the first N columns correspond to red, blue, yellow, gold, silver, crystal, ruby, sapphire, firered, leafgreen, emerald, colosseum, xd, diamond, pearl, platinum, heartgold, soulsilver
    const codes = r.codes;
    for (let i = 0; i < codes.length; i++) {
      const code = codes[i];
      if (!code || code === "—") continue;
      const gameSlug = AVAIL_1_GAME_SLUGS[i];
      if (!gameSlug) continue;
      // only include games belonging to generations 1..4
      const gameGen = [
        "red",
        "blue",
        "yellow",
        "gold",
        "silver",
        "crystal",
        "ruby",
        "sapphire",
        "firered",
        "leafgreen",
        "emerald",
        "colosseum",
        "xd",
        "diamond",
        "pearl",
        "platinum",
        "heartgold",
        "soulsilver",
      ].includes(gameSlug)
        ? ["red", "blue", "yellow"].includes(gameSlug)
          ? 1
          : ["gold", "silver", "crystal"].includes(gameSlug)
            ? 2
            : ["ruby", "sapphire", "firered", "leafgreen", "emerald"].includes(
                  gameSlug
                )
              ? 3
              : 4
        : null;
      if (gameGen === null || gameGen !== gen) continue;

      rowsFiltered.push({
        species_slug,
        form_slug: null,
        game_slug: gameSlug,
        code,
      });
    }
  }

  if (rowsFiltered.length === 0) return null;

  const header = `-- Generated from Bulbapedia extract (CC BY-SA)
-- Source file: database/bulbapedia/pokemon_availability.md
-- Generation: ${gen}
-- Generated at: ${new Date().toISOString()}
\n`;

  function mapCodeToMethod(code) {
    if (!code) return "other";
    const c = code.toLowerCase();
    // common codes: 'R' (red/available), 'G' (green?), 'T' (trade?), 'E' (event?), 'F' (ferry?), 'S' (starter?)
    // Heuristic: event-like codes contain 'E' or 'event', trade-like contain 'T' or 'trade', gift contain 'gift' or 'G', starter or catch default to 'catch'
    if (c.includes("e") || c.includes("event")) return "event";
    if (c.includes("t") || c.includes("trade")) return "trade";
    if (c.includes("gift") || c === "g") return "gift";
    // default -> catch
    return "catch";
  }

  const tuples = rowsFiltered.map((r) => {
    const species = `'${r.species_slug}'`;
    const form = r.form_slug ? `'${r.form_slug}'` : "NULL";
    const game = `'${r.game_slug}'`;
    // Default flags: available, not version-exclusive. Adjust later if you want to map codes->flags
    const isAvailable = "true";
    const isVersionExclusive = "false";
    const method = `'${mapCodeToMethod(r.code)}'`;
    return `(${species}, ${form}, ${game}, ${isAvailable}, ${isVersionExclusive}, ${method})`;
  });

  const sql = `${header}WITH v AS (\n  SELECT * FROM (\n    VALUES\n    ${tuples.join(",\n    ")}\n  ) AS t(\n    species_slug, form_slug, game_slug, is_available, is_version_exclusive, method\n  )\n)\nINSERT INTO dex.pokemon_availability_per_game (species_id, form_id, version_group_id, game_id, is_available, is_version_exclusive, method)\nSELECT\n  s.id AS species_id,\n  COALESCE(f.id, df.id) AS form_id,\n  g.version_group_id,\n  g.id AS game_id,\n  v.is_available::boolean AS is_available,\n  v.is_version_exclusive::boolean AS is_version_exclusive,\n  v.method::meta.availability_method AS method\nFROM v\nJOIN dex.pokemon_species s ON s.slug = v.species_slug\nLEFT JOIN dex.pokemon_forms f ON f.slug = v.form_slug AND f.species_id = s.id\nLEFT JOIN dex.pokemon_forms df ON df.species_id = s.id AND df.is_default = true\nJOIN meta.games g ON g.slug = v.game_slug\nON CONFLICT ON CONSTRAINT uq_availability_species_form_per_game DO UPDATE SET\n  is_available = EXCLUDED.is_available,\n  is_version_exclusive = EXCLUDED.is_version_exclusive,\n  method = EXCLUDED.method;\n\n`;

  return sql;
}

function main() {
  if (!fs.existsSync(INPUT)) {
    console.error("Input file not found:", INPUT);
    process.exit(1);
  }
  const md = fs.readFileSync(INPUT, "utf8");
  const rowsByGen = parseAvailTemplates(md);
  for (let gen = 1; gen <= 4; gen++) {
    const sql = buildSqlForGen(gen, rowsByGen[gen]);
    if (!sql) {
      console.log("No rows for gen", gen);
      continue;
    }
    const outPath = path.join(
      OUT_DIR,
      `009_bulbapedia_availability_gen${gen}.sql`
    );
    fs.writeFileSync(outPath, sql, "utf8");
    console.log("Wrote", outPath);
  }
}

main();
