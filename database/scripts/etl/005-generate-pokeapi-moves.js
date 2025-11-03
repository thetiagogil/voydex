#!/usr/bin/env node
import fs from "fs";
import path from "path";
import { SKIP_SLUGS } from "../config/pokeapi-config.js";
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
const splitByGeneration = getFlag("--split-by-generation");

const OUT_FILE = path.resolve(
  process.cwd(),
  "database",
  "seed",
  "etl",
  "008_pokeapi_moves.sql",
);

async function main() {
  logger.header("Generate PokeAPI Moves seed", "🌱");

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
      const generation_introduced_slug =
        obj.generation && obj.generation.name
          ? String(obj.generation.name).toLowerCase()
          : null;

      // effect: use English flavor_text_entries when available; fallback to effect_entries
      let effect = null;
      if (Array.isArray(obj.flavor_text_entries)) {
        const en = obj.flavor_text_entries.find(
          (x) => x.language && x.language.name === "en",
        );
        if (en) effect = en.flavor_text || null;
      }
      if (!effect && Array.isArray(obj.effect_entries)) {
        const en = obj.effect_entries.find(
          (x) => x.language && x.language.name === "en",
        );
        if (en) effect = en.short_effect || en.effect || null;
      }

      rows.push({ id, slug, name, generation_introduced_slug, effect });
    } catch (err) {
      prettyLog(`Failed fetching ${e.url}: ${err.message || err}`, {
        emoji: "⚠️",
      });
    }

    const delayMs = dry ? 0 : 100;
    if (delayMs) await new Promise((res) => setTimeout(res, delayMs));
  }

  // canonical ordering by PokeAPI id
  rows.sort((a, b) => (a.id || 0) - (b.id || 0));

  const header = `-- Generated from PokeAPI (/move)
-- Skipped slugs: ${Array.from(SKIP_SLUGS).join(", ")}
-- Generated at: ${new Date().toISOString()}

`;

  if (rows.length === 0) {
    logger.section("No rows collected — nothing to write", "ℹ️");
    return;
  }

  function sanitizeSlug(s) {
    if (!s) return "unknown";
    return String(s)
      .toLowerCase()
      .replace(/[^a-z0-9]+/g, "-")
      .replace(/^-+|-+$/g, "")
      .replace(/-+/g, "-");
  }

  if (splitByGeneration) {
    const groups = rows.reduce((acc, r) => {
      const g = r.generation_introduced_slug || "unknown";
      acc[g] = acc[g] || [];
      acc[g].push(r);
      return acc;
    }, {});

    const seedsDir = path.dirname(OUT_FILE);
    if (!fs.existsSync(seedsDir)) fs.mkdirSync(seedsDir, { recursive: true });

    const summaries = [];
    for (const gen of Object.keys(groups)) {
      const grp = groups[gen];
      const values = grp
        .map((r) => {
          const slug = escapeSql(r.slug) ?? "";
          const name = escapeSql(r.name) ?? "";
          const genSlug = r.generation_introduced_slug
            ? `'${escapeSql(r.generation_introduced_slug)}'`
            : "NULL";
          const extId = typeof r.id === "number" ? r.id : "NULL";
          const desc = r.effect ? `'${escapeSql(r.effect)}'` : "NULL";
          return `('${slug}', '${name}', ${extId}, ${genSlug}, ${desc})`;
        })
        .join(",\n");

      const insert = `INSERT INTO dex.moves (slug, name, generation_introduced_slug, effect) VALUES\n${values}\nON CONFLICT (slug) DO NOTHING;`;
      const sql = header + insert + "\n";

      const fname = `009_moves_${sanitizeSlug(gen)}.sql`;
      const outPath = path.resolve(seedsDir, fname);

      if (dry) {
        if (showSql) {
          logger.section(`SQL preview — ${fname}`, "📄");
          logger.sqlBlock(sql);
        }
        summaries.push({ file: fname, rows: grp.length });
      } else {
        fs.writeFileSync(outPath, sql, "utf8");
        logger.success(
          `Wrote ${path.relative(process.cwd(), outPath)} (${grp.length} rows)`,
        );
      }
    }

    if (dry) {
      logger.success(
        `Preview complete — ${rows.length} rows across ${Object.keys(groups).length} generation files.`,
      );
      for (const s of summaries) prettyLog(`- ${s.file}: ${s.rows} rows`);
      return;
    }

    return;
  }

  const values = rows
    .map((r) => {
      const slug = escapeSql(r.slug) ?? "";
      const name = escapeSql(r.name) ?? "";
      const genSlug = r.generation_introduced_slug
        ? `'${escapeSql(r.generation_introduced_slug)}'`
        : "NULL";
      const desc = r.effect ? `'${escapeSql(r.effect)}'` : "NULL";
      return `('${slug}', '${name}', ${genSlug}, ${desc})`;
    })
    .join(",\n");

  const insert = `INSERT INTO dex.moves (slug, name, generation_introduced_slug, effect) VALUES\n${values}\nON CONFLICT (slug) DO NOTHING;`;
  const sql = header + insert + "\n";

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
