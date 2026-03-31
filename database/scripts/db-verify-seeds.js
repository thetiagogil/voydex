#!/usr/bin/env node
/**
 * Seed Verification
 *
 * Validates seed data integrity:
 * - FK references resolve correctly
 * - Slug uniqueness and format consistency
 * - Row counts match expected ranges
 * - No orphaned references
 *
 * Usage:
 *   node database/scripts/db-verify-seeds.js
 */

import { withClient } from "./helpers/db.js";
import { loadEnvironment } from "./helpers/env.js";
import { logger } from "./helpers/logger.js";

// =====================================================
// Verification Queries
// =====================================================

const FK_CHECKS = [
  {
    name: "games → generations",
    query: `SELECT g.id, g.slug FROM meta.games g WHERE NOT EXISTS (SELECT 1 FROM meta.generations gen WHERE gen.id = g.generation_id)`,
  },
  {
    name: "games → regions",
    query: `SELECT g.id, g.slug FROM meta.games g WHERE NOT EXISTS (SELECT 1 FROM meta.regions r WHERE r.id = g.region_id)`,
  },
  {
    name: "games → version_groups",
    query: `SELECT g.id, g.slug FROM meta.games g WHERE NOT EXISTS (SELECT 1 FROM meta.version_groups vg WHERE vg.id = g.version_group_id)`,
  },
  {
    name: "version_groups → parent_version_group",
    query: `SELECT vg.id, vg.slug FROM meta.version_groups vg WHERE vg.parent_version_group_id IS NOT NULL AND NOT EXISTS (SELECT 1 FROM meta.version_groups pvg WHERE pvg.id = vg.parent_version_group_id)`,
  },
  {
    name: "pokemon_species → generation",
    query: `SELECT ps.id, ps.slug FROM meta.pokemon_species ps WHERE NOT EXISTS (SELECT 1 FROM meta.generations gen WHERE gen.id = ps.generation_id)`,
  },
  {
    name: "pokemon_forms → species",
    query: `SELECT pf.id FROM meta.pokemon_forms pf WHERE NOT EXISTS (SELECT 1 FROM meta.pokemon_species ps WHERE ps.id = pf.species_id)`,
  },
  {
    name: "pokemon_attributes → form",
    query: `SELECT pa.form_id FROM meta.pokemon_attributes pa WHERE NOT EXISTS (SELECT 1 FROM meta.pokemon_forms pf WHERE pf.id = pa.form_id)`,
  },
  {
    name: "pokemon_attributes → type1",
    query: `SELECT pa.form_id FROM meta.pokemon_attributes pa WHERE NOT EXISTS (SELECT 1 FROM meta.types t WHERE t.id = pa.type1_id)`,
  },
  {
    name: "pokemon_attributes → ability1",
    query: `SELECT pa.form_id FROM meta.pokemon_attributes pa WHERE NOT EXISTS (SELECT 1 FROM meta.abilities a WHERE a.id = pa.ability1_id)`,
  },
  {
    name: "progress_items → category",
    query: `SELECT pi.id, pi.slug FROM meta.progress_items pi WHERE NOT EXISTS (SELECT 1 FROM meta.progress_categories pc WHERE pc.id = pi.category_id)`,
  },
  {
    name: "progress_items → version_group",
    query: `SELECT pi.id, pi.slug FROM meta.progress_items pi WHERE NOT EXISTS (SELECT 1 FROM meta.version_groups vg WHERE vg.id = pi.version_group_id)`,
  },
  {
    name: "regional_dex → species",
    query: `SELECT rd.id FROM meta.regional_dex rd WHERE NOT EXISTS (SELECT 1 FROM meta.pokemon_species ps WHERE ps.id = rd.species_id)`,
  },
  {
    name: "regional_dex → form",
    query: `SELECT rd.id FROM meta.regional_dex rd WHERE NOT EXISTS (SELECT 1 FROM meta.pokemon_forms pf WHERE pf.id = rd.form_id)`,
  },
  {
    name: "regional_dex → version_group",
    query: `SELECT rd.id FROM meta.regional_dex rd WHERE NOT EXISTS (SELECT 1 FROM meta.version_groups vg WHERE vg.id = rd.version_group_id)`,
  },
];

const SLUG_CHECKS = [
  {
    name: "generations slugs",
    query: `SELECT slug, COUNT(*) as cnt FROM meta.generations GROUP BY slug HAVING COUNT(*) > 1`,
  },
  {
    name: "regions slugs",
    query: `SELECT slug, COUNT(*) as cnt FROM meta.regions GROUP BY slug HAVING COUNT(*) > 1`,
  },
  {
    name: "games slugs",
    query: `SELECT slug, COUNT(*) as cnt FROM meta.games GROUP BY slug HAVING COUNT(*) > 1`,
  },
  {
    name: "version_groups slugs",
    query: `SELECT slug, COUNT(*) as cnt FROM meta.version_groups GROUP BY slug HAVING COUNT(*) > 1`,
  },
  {
    name: "types slugs",
    query: `SELECT slug, COUNT(*) as cnt FROM meta.types GROUP BY slug HAVING COUNT(*) > 1`,
  },
  {
    name: "abilities slugs",
    query: `SELECT slug, COUNT(*) as cnt FROM meta.abilities GROUP BY slug HAVING COUNT(*) > 1`,
  },
  {
    name: "moves slugs",
    query: `SELECT slug, COUNT(*) as cnt FROM meta.moves GROUP BY slug HAVING COUNT(*) > 1`,
  },
  {
    name: "pokemon_species slugs",
    query: `SELECT slug, COUNT(*) as cnt FROM meta.pokemon_species GROUP BY slug HAVING COUNT(*) > 1`,
  },
  {
    name: "slug format (lowercase-hyphen)",
    query: `
      SELECT 'generations' as tbl, slug FROM meta.generations WHERE slug ~ '[^a-z0-9-]'
      UNION ALL SELECT 'regions', slug FROM meta.regions WHERE slug ~ '[^a-z0-9-]'
      UNION ALL SELECT 'games', slug FROM meta.games WHERE slug ~ '[^a-z0-9-]'
      UNION ALL SELECT 'types', slug FROM meta.types WHERE slug ~ '[^a-z0-9-]'
      UNION ALL SELECT 'abilities', slug FROM meta.abilities WHERE slug ~ '[^a-z0-9-]'
      UNION ALL SELECT 'moves', slug FROM meta.moves WHERE slug ~ '[^a-z0-9-]'
      UNION ALL SELECT 'pokemon_species', slug FROM meta.pokemon_species WHERE slug ~ '[^a-z0-9-]'
    `,
  },
];

const ROW_COUNT_EXPECTATIONS = [
  { table: "meta.generations", min: 9, max: 10 },
  { table: "meta.regions", min: 9, max: 12 },
  { table: "meta.version_groups", min: 22, max: 30 },
  { table: "meta.games", min: 30, max: 50 },
  { table: "meta.types", min: 18, max: 20 },
  { table: "meta.natures", min: 25, max: 25 },
  { table: "meta.abilities", min: 250, max: 320 },
  { table: "meta.moves", min: 800, max: 1000 },
  { table: "meta.pokemon_species", min: 900, max: 1100 },
  { table: "meta.pokemon_forms", min: 1000, max: 1600 },
];

// =====================================================
// Verification Logic
// =====================================================

async function runChecks(client, checks, checkType) {
  let passed = 0;
  let failed = 0;

  for (const check of checks) {
    try {
      const result = await client.query(check.query);
      if (result.rows.length === 0) {
        logger.success(`  ${check.name}`);
        passed++;
      } else {
        logger.failure(`  ${check.name} — ${result.rows.length} violation(s)`);
        result.rows.slice(0, 5).forEach((row) => {
          console.log(`     ↳ ${JSON.stringify(row)}`);
        });
        if (result.rows.length > 5) {
          console.log(`     ↳ ... and ${result.rows.length - 5} more`);
        }
        failed++;
      }
    } catch (err) {
      // Table might not exist yet — skip gracefully
      if (err.message.includes("does not exist")) {
        console.log(`  ⏭️  ${check.name} — table not yet seeded`);
      } else {
        logger.failure(`  ${check.name} — error: ${err.message}`);
        failed++;
      }
    }
  }

  return { passed, failed };
}

async function checkRowCounts(client) {
  let passed = 0;
  let failed = 0;

  for (const exp of ROW_COUNT_EXPECTATIONS) {
    try {
      const result = await client.query(
        `SELECT COUNT(*)::int as cnt FROM ${exp.table}`,
      );
      const count = result.rows[0].cnt;

      if (count >= exp.min && count <= exp.max) {
        logger.success(
          `  ${exp.table}: ${count} rows (expected ${exp.min}-${exp.max})`,
        );
        passed++;
      } else if (count === 0) {
        console.log(`  ⏭️  ${exp.table}: 0 rows — not yet seeded`);
      } else {
        logger.failure(
          `  ${exp.table}: ${count} rows (expected ${exp.min}-${exp.max})`,
        );
        failed++;
      }
    } catch (err) {
      if (err.message.includes("does not exist")) {
        console.log(`  ⏭️  ${exp.table} — table does not exist`);
      } else {
        logger.failure(`  ${exp.table} — error: ${err.message}`);
        failed++;
      }
    }
  }

  return { passed, failed };
}

// =====================================================
// Main
// =====================================================

async function main() {
  try {
    const env = loadEnvironment();
    logger.header("Seed Verification", "🔍");

    let totalPassed = 0;
    let totalFailed = 0;

    await withClient(async (client) => {
      // FK integrity
      logger.section("Foreign Key Integrity", "🔗");
      const fk = await runChecks(client, FK_CHECKS, "FK");
      totalPassed += fk.passed;
      totalFailed += fk.failed;

      // Slug uniqueness & format
      logger.section("Slug Validation", "🏷️");
      const slugs = await runChecks(client, SLUG_CHECKS, "Slug");
      totalPassed += slugs.passed;
      totalFailed += slugs.failed;

      // Row counts
      logger.section("Row Count Expectations", "📊");
      const counts = await checkRowCounts(client);
      totalPassed += counts.passed;
      totalFailed += counts.failed;
    }, env.SUPABASE_DB_URL);

    // Summary
    logger.blank();
    logger.separator("=", 60);
    if (totalFailed > 0) {
      logger.failure(
        `Verification failed: ${totalFailed} issue(s), ${totalPassed} passed`,
      );
      process.exit(1);
    } else {
      logger.success(`Verification passed: ${totalPassed} check(s)`);
    }
    logger.separator("=", 60);
  } catch (err) {
    logger.failure(`Script failed: ${err.message}`);
    process.exit(1);
  }
}

main();
