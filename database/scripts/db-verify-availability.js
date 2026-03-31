#!/usr/bin/env node
/**
 * Availability Verification
 *
 * Validates availability seed data:
 * - Pokemon availability coverage per version group
 * - Move availability coverage per version group
 * - Item availability coverage per version group
 * - FK integrity for availability tables
 * - No duplicate entries
 *
 * Usage:
 *   node database/scripts/db-verify-availability.js
 *   node database/scripts/db-verify-availability.js --vg=1    # Check specific VG
 *   node database/scripts/db-verify-availability.js --summary # Coverage summary only
 */

import { getFlag } from "./helpers/cli.js";
import { withClient } from "./helpers/db.js";
import { loadEnvironment } from "./helpers/env.js";
import { logger } from "./helpers/logger.js";

// =====================================================
// Verification Queries
// =====================================================

const FK_CHECKS = [
  {
    name: "pokemon_availability → species",
    query: `SELECT pa.species_id FROM meta.pokemon_availability pa WHERE NOT EXISTS (SELECT 1 FROM meta.pokemon_species ps WHERE ps.id = pa.species_id)`,
  },
  {
    name: "pokemon_availability → form",
    query: `SELECT pa.form_id FROM meta.pokemon_availability pa WHERE NOT EXISTS (SELECT 1 FROM meta.pokemon_forms pf WHERE pf.id = pa.form_id)`,
  },
  {
    name: "pokemon_availability → version_group",
    query: `SELECT pa.version_group_id FROM meta.pokemon_availability pa WHERE NOT EXISTS (SELECT 1 FROM meta.version_groups vg WHERE vg.id = pa.version_group_id)`,
  },
  {
    name: "pokemon_availability → game (when specified)",
    query: `SELECT pa.game_id FROM meta.pokemon_availability pa WHERE pa.game_id IS NOT NULL AND NOT EXISTS (SELECT 1 FROM meta.games g WHERE g.id = pa.game_id)`,
  },
  {
    name: "move_availability → move",
    query: `SELECT ma.move_id FROM meta.move_availability ma WHERE NOT EXISTS (SELECT 1 FROM meta.moves m WHERE m.id = ma.move_id)`,
  },
  {
    name: "move_availability → version_group",
    query: `SELECT ma.version_group_id FROM meta.move_availability ma WHERE NOT EXISTS (SELECT 1 FROM meta.version_groups vg WHERE vg.id = ma.version_group_id)`,
  },
  {
    name: "item_availability → item",
    query: `SELECT ia.item_id FROM meta.item_availability ia WHERE NOT EXISTS (SELECT 1 FROM meta.items i WHERE i.id = ia.item_id)`,
  },
  {
    name: "item_availability → version_group",
    query: `SELECT ia.version_group_id FROM meta.item_availability ia WHERE NOT EXISTS (SELECT 1 FROM meta.version_groups vg WHERE vg.id = ia.version_group_id)`,
  },
];

const DUPLICATE_CHECKS = [
  {
    name: "pokemon_availability duplicates",
    query: `
      SELECT species_id, form_id, version_group_id, method, COALESCE(game_id, 0) as game_id, COUNT(*) as cnt
      FROM meta.pokemon_availability
      GROUP BY species_id, form_id, version_group_id, method, COALESCE(game_id, 0)
      HAVING COUNT(*) > 1
    `,
  },
  {
    name: "move_availability duplicates",
    query: `
      SELECT move_id, version_group_id, COUNT(*) as cnt
      FROM meta.move_availability
      GROUP BY move_id, version_group_id
      HAVING COUNT(*) > 1
    `,
  },
  {
    name: "item_availability duplicates",
    query: `
      SELECT item_id, version_group_id, COUNT(*) as cnt
      FROM meta.item_availability
      GROUP BY item_id, version_group_id
      HAVING COUNT(*) > 1
    `,
  },
];

// =====================================================
// Coverage Analysis
// =====================================================

async function showCoverageSummary(client) {
  logger.section("Pokemon Availability Coverage", "🐾");

  try {
    const result = await client.query(`
      SELECT
        vg.id,
        vg.slug,
        vg.parent_version_group_id IS NOT NULL AS is_dlc,
        COUNT(DISTINCT pa.species_id) AS species_count,
        COUNT(*) AS total_rows
      FROM meta.version_groups vg
      LEFT JOIN meta.pokemon_availability pa ON pa.version_group_id = vg.id
      GROUP BY vg.id, vg.slug, vg.parent_version_group_id
      ORDER BY vg.id
    `);

    if (result.rows.length === 0) {
      logger.info("No version groups found");
      return;
    }

    for (const row of result.rows) {
      const dlcTag = row.is_dlc ? " (DLC)" : "";
      const status = row.total_rows > 0 ? "✅" : "⏭️";
      console.log(
        `  ${status} vg=${row.id} ${row.slug}${dlcTag}: ${row.species_count} species, ${row.total_rows} rows`,
      );
    }
  } catch (err) {
    if (err.message.includes("does not exist")) {
      logger.info("pokemon_availability table not yet created/seeded");
    } else {
      throw err;
    }
  }

  logger.section("Move Availability Coverage", "⚔️");

  try {
    const result = await client.query(`
      SELECT
        vg.id,
        vg.slug,
        COUNT(DISTINCT ma.move_id) AS move_count
      FROM meta.version_groups vg
      LEFT JOIN meta.move_availability ma ON ma.version_group_id = vg.id
      GROUP BY vg.id, vg.slug
      ORDER BY vg.id
    `);

    for (const row of result.rows) {
      const status = row.move_count > 0 ? "✅" : "⏭️";
      console.log(
        `  ${status} vg=${row.id} ${row.slug}: ${row.move_count} moves`,
      );
    }
  } catch (err) {
    if (err.message.includes("does not exist")) {
      logger.info("move_availability table not yet created/seeded");
    } else {
      throw err;
    }
  }

  logger.section("Item Availability Coverage", "🎒");

  try {
    const result = await client.query(`
      SELECT
        vg.id,
        vg.slug,
        COUNT(DISTINCT ia.item_id) AS item_count
      FROM meta.version_groups vg
      LEFT JOIN meta.item_availability ia ON ia.version_group_id = vg.id
      GROUP BY vg.id, vg.slug
      ORDER BY vg.id
    `);

    for (const row of result.rows) {
      const status = row.item_count > 0 ? "✅" : "⏭️";
      console.log(
        `  ${status} vg=${row.id} ${row.slug}: ${row.item_count} items`,
      );
    }
  } catch (err) {
    if (err.message.includes("does not exist")) {
      logger.info("item_availability table not yet created/seeded");
    } else {
      throw err;
    }
  }
}

async function checkSpecificVG(client, vgId) {
  logger.section(`Version Group ${vgId} Detail`, "🔎");

  try {
    const vg = await client.query(
      `SELECT id, slug, name FROM meta.version_groups WHERE id = $1`,
      [vgId],
    );
    if (vg.rows.length === 0) {
      logger.failure(`Version group ${vgId} not found`);
      return 1;
    }

    console.log(`  VG: ${vg.rows[0].slug} (${vg.rows[0].name})`);
    logger.blank();

    // Pokemon availability breakdown by method
    const pokemonMethods = await client.query(
      `
      SELECT method, COUNT(*) as cnt
      FROM meta.pokemon_availability
      WHERE version_group_id = $1
      GROUP BY method ORDER BY method
    `,
      [vgId],
    );

    console.log("  Pokemon availability by method:");
    if (pokemonMethods.rows.length === 0) {
      console.log("     (none seeded)");
    } else {
      pokemonMethods.rows.forEach((r) =>
        console.log(`     ${r.method}: ${r.cnt}`),
      );
    }

    // Move count
    const moves = await client.query(
      `SELECT COUNT(*) as cnt FROM meta.move_availability WHERE version_group_id = $1`,
      [vgId],
    );
    console.log(`  Moves available: ${moves.rows[0].cnt}`);

    // Item count
    const items = await client.query(
      `SELECT COUNT(*) as cnt FROM meta.item_availability WHERE version_group_id = $1`,
      [vgId],
    );
    console.log(`  Items available: ${items.rows[0].cnt}`);
  } catch (err) {
    if (err.message.includes("does not exist")) {
      logger.info("Availability tables not yet created/seeded");
    } else {
      throw err;
    }
  }

  return 0;
}

// =====================================================
// Main
// =====================================================

async function main() {
  try {
    const env = loadEnvironment();
    logger.header("Availability Verification", "🔍");

    let totalPassed = 0;
    let totalFailed = 0;

    const summaryOnly = getFlag("--summary");
    const vgFlag = process.argv.find((a) => a.startsWith("--vg="));
    const specificVG = vgFlag ? parseInt(vgFlag.split("=")[1], 10) : null;

    await withClient(async (client) => {
      if (!summaryOnly) {
        // FK integrity
        logger.section("Foreign Key Integrity", "🔗");
        for (const check of FK_CHECKS) {
          try {
            const result = await client.query(check.query);
            if (result.rows.length === 0) {
              logger.success(`  ${check.name}`);
              totalPassed++;
            } else {
              logger.failure(
                `  ${check.name} — ${result.rows.length} violation(s)`,
              );
              result.rows
                .slice(0, 3)
                .forEach((row) => console.log(`     ↳ ${JSON.stringify(row)}`));
              totalFailed++;
            }
          } catch (err) {
            if (err.message.includes("does not exist")) {
              console.log(`  ⏭️  ${check.name} — table not yet created`);
            } else {
              logger.failure(`  ${check.name} — ${err.message}`);
              totalFailed++;
            }
          }
        }

        // Duplicate checks
        logger.section("Duplicate Detection", "🔄");
        for (const check of DUPLICATE_CHECKS) {
          try {
            const result = await client.query(check.query);
            if (result.rows.length === 0) {
              logger.success(`  ${check.name}`);
              totalPassed++;
            } else {
              logger.failure(
                `  ${check.name} — ${result.rows.length} duplicate group(s)`,
              );
              result.rows
                .slice(0, 3)
                .forEach((row) => console.log(`     ↳ ${JSON.stringify(row)}`));
              totalFailed++;
            }
          } catch (err) {
            if (err.message.includes("does not exist")) {
              console.log(`  ⏭️  ${check.name} — table not yet created`);
            } else {
              logger.failure(`  ${check.name} — ${err.message}`);
              totalFailed++;
            }
          }
        }
      }

      // Coverage summary
      await showCoverageSummary(client);

      // Specific VG detail
      if (specificVG) {
        const vgFails = await checkSpecificVG(client, specificVG);
        totalFailed += vgFails;
      }
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
