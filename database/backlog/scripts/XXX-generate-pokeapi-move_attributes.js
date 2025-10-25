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
  "010_pokeapi_move_attributes.sql"
);

async function main() {
  logger.header("Generate PokeAPI Move Attributes seed", "🌱");

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
      // Skip very large ids (e.g. Pokemon Conquest)
      if (obj.id > 10000) {
        prettyLog(`Skipping ${slug} (id ${obj.id} > 10000)`, { emoji: "⏭️" });
        continue;
      }
      if (SKIP_SLUGS.has(slug)) {
        prettyLog(`Skipping ${slug}`, { emoji: "⏭️" });
        continue;
      }

      const generation_start_slug =
        obj.generation && obj.generation.name
          ? String(obj.generation.name).toLowerCase()
          : null;

      const type_slug =
        obj.type && obj.type.name ? String(obj.type.name).toLowerCase() : null;
      const power = typeof obj.power === "number" ? obj.power : null;
      const accuracy = typeof obj.accuracy === "number" ? obj.accuracy : null;
      const pp = typeof obj.pp === "number" ? obj.pp : null;
      const priority = typeof obj.priority === "number" ? obj.priority : null;
      const damage_class =
        obj.damage_class && obj.damage_class.name
          ? String(obj.damage_class.name).toLowerCase()
          : null;

      // Only include rows where we have at least some attribute or the type
      if (
        type_slug ||
        power !== null ||
        accuracy !== null ||
        pp !== null ||
        priority !== null ||
        damage_class
      ) {
        rows.push({
          id: obj.id,
          slug,
          generation_start_slug,
          type_slug,
          power,
          accuracy,
          pp,
          priority,
          damage_class,
        });
      }
    } catch (err) {
      prettyLog(`Failed fetching ${e.url}: ${err.message || err}`, {
        emoji: "⚠️",
      });
    }

    const delayMs = dry ? 0 : DEFAULT_DELAY_MS;
    if (delayMs) await new Promise((res) => setTimeout(res, delayMs));
  }

  // canonical ordering by PokeAPI id (keeps ordering consistent with dex.moves)
  rows.sort((a, b) => (a.id || 0) - (b.id || 0));

  const header = `-- Generated from PokeAPI (/move) -> move_attributes
-- Generated at: ${new Date().toISOString()}

`;

  if (rows.length === 0) {
    const sql = header + "-- No rows to insert\n";
    if (dry) {
      if (showSql) (logger.section("SQL preview", "📄"), logger.sqlBlock(sql));
      logger.success("Preview complete — 0 rows would be written.");
    }
    return;
  }

  function valStr(v) {
    if (v === null || typeof v === "undefined") return "NULL";
    if (typeof v === "number") return String(v);
    return `'${escapeSql(String(v))}'`;
  }

  if (splitByGeneration) {
    const groups = rows.reduce((acc, r) => {
      const g = r.generation_start_slug || "unknown";
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
          const moveSlug = escapeSql(r.slug) ?? "";
          const genSlug = r.generation_start_slug
            ? escapeSql(r.generation_start_slug)
            : null;
          // PokeAPI doesn't provide version-group granularity for move attributes;
          // emit NULL by default. Curated overrides can set this when needed.
          const versionGroupSlug = null;
          const typeSlug = r.type_slug ? escapeSql(r.type_slug) : null;
          const powerV = valStr(r.power);
          const accuracyV = valStr(r.accuracy);
          const ppV = valStr(r.pp);
          const priorityV = valStr(r.priority);
          const dmgV = r.damage_class
            ? `'${escapeSql(r.damage_class)}'`
            : "NULL";
          // move_slug, generation_start_slug, version_group_start_slug, type_slug, power, accuracy, pp, priority, damage_class
          return `('${moveSlug}', ${genSlug ? `'${genSlug}'` : "NULL"}, ${versionGroupSlug ? `'${versionGroupSlug}'` : "NULL"}, ${typeSlug ? `'${typeSlug}'` : "NULL"}, ${powerV}, ${accuracyV}, ${ppV}, ${priorityV}, ${dmgV})`;
        })
        .join(",\n");

      const insert = `INSERT INTO dex.move_attributes (move_id, generation_start_id, version_group_start_id, type_id, power, accuracy, pp, priority, damage_class)
SELECT m.id, g.id, vg.id, t.id, v.power, v.accuracy, v.pp, v.priority, v.damage_class::dex.move_damage_class
FROM (VALUES
${values}
) AS v(move_slug, generation_start_slug, version_group_start_slug, type_slug, power, accuracy, pp, priority, damage_class)
LEFT JOIN dex.moves m ON m.slug = v.move_slug
LEFT JOIN meta.generations g ON g.slug = v.generation_start_slug
LEFT JOIN meta.version_groups vg ON vg.slug = v.version_group_start_slug
LEFT JOIN dex.types t ON t.slug = v.type_slug
WHERE m.id IS NOT NULL;`;

      const sql = header + insert + "\n";

      const fname = `010_move_attributes_${String(gen).replace(/[^a-z0-9-]+/gi, "-")}.sql`;
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
          `Wrote ${path.relative(process.cwd(), outPath)} (${grp.length} rows)`
        );
      }
    }

    if (dry) {
      logger.success(
        `Preview complete — ${rows.length} rows across ${Object.keys(groups).length} generation files.`
      );
      for (const s of summaries) prettyLog(`- ${s.file}: ${s.rows} rows`);
      return;
    }

    return;
  }

  // single file: one VALUES block
  const values = rows
    .map((r) => {
      const moveSlug = escapeSql(r.slug) ?? "";
      const genSlug = r.generation_start_slug
        ? escapeSql(r.generation_start_slug)
        : null;
      const versionGroupSlug = null;
      const typeSlug = r.type_slug ? escapeSql(r.type_slug) : null;
      const powerV = valStr(r.power);
      const accuracyV = valStr(r.accuracy);
      const ppV = valStr(r.pp);
      const priorityV = valStr(r.priority);
      const dmgV = r.damage_class ? `'${escapeSql(r.damage_class)}'` : "NULL";
      return `('${moveSlug}', ${genSlug ? `'${genSlug}'` : "NULL"}, ${versionGroupSlug ? `'${versionGroupSlug}'` : "NULL"}, ${typeSlug ? `'${typeSlug}'` : "NULL"}, ${powerV}, ${accuracyV}, ${ppV}, ${priorityV}, ${dmgV})`;
    })
    .join(",\n");

  const insert = `INSERT INTO dex.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
SELECT m.id, g.id, t.id, v.power, v.accuracy, v.pp, v.priority, v.damage_class::dex.move_damage_class
FROM (VALUES
${values}
) AS v(move_slug, generation_start_slug, type_slug, power, accuracy, pp, priority, damage_class)
LEFT JOIN dex.moves m ON m.slug = v.move_slug
LEFT JOIN meta.generations g ON g.slug = v.generation_start_slug
LEFT JOIN dex.types t ON t.slug = v.type_slug
WHERE m.id IS NOT NULL;`;

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
    `Wrote ${path.relative(process.cwd(), OUT_FILE)} (${rows.length} rows)`
  );
}

main().catch((err) => {
  logger.failure(err.message || err);
  process.exit(1);
});
