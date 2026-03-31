#!/usr/bin/env node
/**
 * Learnset Verification
 *
 * Validates pokemon_learnsets seed data:
 * - FK integrity (species, form, move, version_group)
 * - Duplicate detection (same move+method+VG for same pokemon)
 * - Level-up constraint: level_learned_at required only for level-up method
 * - VG coverage: learnsets exist for each seeded version group
 * - Sanity checks: level ranges, reasonable move counts per pokemon
 *
 * Usage:
 *   node database/scripts/db-verify-learnsets.js
 *   node database/scripts/db-verify-learnsets.js --vg=1    # Check specific VG
 *   node database/scripts/db-verify-learnsets.js --summary # Coverage summary only
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
    name: "learnsets → species",
    query: `SELECT pl.species_id FROM meta.pokemon_learnsets pl WHERE NOT EXISTS (SELECT 1 FROM meta.pokemon_species ps WHERE ps.id = pl.species_id)`,
  },
  {
    name: "learnsets → form",
    query: `SELECT pl.form_id FROM meta.pokemon_learnsets pl WHERE NOT EXISTS (SELECT 1 FROM meta.pokemon_forms pf WHERE pf.id = pl.form_id)`,
  },
  {
    name: "learnsets → move",
    query: `SELECT pl.move_id FROM meta.pokemon_learnsets pl WHERE NOT EXISTS (SELECT 1 FROM meta.moves m WHERE m.id = pl.move_id)`,
  },
  {
    name: "learnsets → version_group",
    query: `SELECT pl.version_group_id FROM meta.pokemon_learnsets pl WHERE NOT EXISTS (SELECT 1 FROM meta.version_groups vg WHERE vg.id = pl.version_group_id)`,
  },
];

const CONSTRAINT_CHECKS = [
  {
    name: "level-up must have level_learned_at",
    query: `SELECT species_id, form_id, move_id, version_group_id FROM meta.pokemon_learnsets WHERE learn_method = 'level-up' AND level_learned_at IS NULL`,
  },
  {
    name: "non-level-up should not have level_learned_at",
    query: `SELECT species_id, form_id, move_id, version_group_id, learn_method FROM meta.pokemon_learnsets WHERE learn_method != 'level-up' AND level_learned_at IS NOT NULL`,
  },
  {
    name: "level_learned_at range (0-100)",
    query: `SELECT species_id, form_id, move_id, version_group_id, level_learned_at FROM meta.pokemon_learnsets WHERE level_learned_at IS NOT NULL AND (level_learned_at < 0 OR level_learned_at > 100)`,
  },
];

const DUPLICATE_CHECK = {
  name: "learnset duplicates (species+form+move+vg+method)",
  query: `
    SELECT species_id, form_id, move_id, version_group_id, learn_method, COUNT(*) as cnt
    FROM meta.pokemon_learnsets
    GROUP BY species_id, form_id, move_id, version_group_id, learn_method
    HAVING COUNT(*) > 1
  `,
};

// =====================================================
// Coverage & Sanity
// =====================================================

async function showCoverageSummary(client) {
  logger.section("Learnset Coverage by Version Group", "📚");

  try {
    const result = await client.query(`
      SELECT
        vg.id,
        vg.slug,
        vg.parent_version_group_id IS NOT NULL AS is_dlc,
        COUNT(DISTINCT pl.species_id) AS species_count,
        COUNT(DISTINCT pl.move_id) AS move_count,
        COUNT(*) AS total_rows
      FROM meta.version_groups vg
      LEFT JOIN meta.pokemon_learnsets pl ON pl.version_group_id = vg.id
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
        `  ${status} vg=${row.id} ${row.slug}${dlcTag}: ${row.species_count} species, ${row.move_count} moves, ${row.total_rows} rows`,
      );
    }
  } catch (err) {
    if (err.message.includes("does not exist")) {
      logger.info("pokemon_learnsets table not yet created/seeded");
    } else {
      throw err;
    }
  }
}

async function showMethodBreakdown(client, vgId) {
  logger.section(`Learnset Methods for VG ${vgId}`, "🔎");

  try {
    const vg = await client.query(
      `SELECT slug, name FROM meta.version_groups WHERE id = $1`,
      [vgId],
    );
    if (vg.rows.length === 0) {
      logger.failure(`Version group ${vgId} not found`);
      return;
    }

    console.log(`  VG: ${vg.rows[0].slug} (${vg.rows[0].name})`);
    logger.blank();

    const methods = await client.query(
      `
      SELECT learn_method, COUNT(*) as cnt, COUNT(DISTINCT species_id) as species_count
      FROM meta.pokemon_learnsets
      WHERE version_group_id = $1
      GROUP BY learn_method
      ORDER BY cnt DESC
    `,
      [vgId],
    );

    if (methods.rows.length === 0) {
      console.log("  (no learnsets seeded for this VG)");
      return;
    }

    console.log("  Method breakdown:");
    methods.rows.forEach((r) => {
      console.log(
        `     ${r.learn_method}: ${r.cnt} entries across ${r.species_count} species`,
      );
    });

    // Top species by move count
    const topSpecies = await client.query(
      `
      SELECT ps.slug as species_slug, COUNT(*) as move_count
      FROM meta.pokemon_learnsets pl
      JOIN meta.pokemon_species ps ON ps.id = pl.species_id
      WHERE pl.version_group_id = $1
      GROUP BY ps.slug
      ORDER BY move_count DESC
      LIMIT 5
    `,
      [vgId],
    );

    logger.blank();
    console.log("  Top species by move count:");
    topSpecies.rows.forEach((r) => {
      console.log(`     ${r.species_slug}: ${r.move_count} moves`);
    });

    // Species with suspiciously few moves (< 4, likely incomplete)
    const lowMoves = await client.query(
      `
      SELECT ps.slug as species_slug, COUNT(*) as move_count
      FROM meta.pokemon_learnsets pl
      JOIN meta.pokemon_species ps ON ps.id = pl.species_id
      WHERE pl.version_group_id = $1
      GROUP BY ps.slug
      HAVING COUNT(*) < 4
      ORDER BY move_count ASC
      LIMIT 10
    `,
      [vgId],
    );

    if (lowMoves.rows.length > 0) {
      logger.blank();
      logger.warning(
        `  Species with < 4 moves (possibly incomplete): ${lowMoves.rows.length}`,
      );
      lowMoves.rows.forEach((r) => {
        console.log(`     ${r.species_slug}: ${r.move_count} moves`);
      });
    }
  } catch (err) {
    if (err.message.includes("does not exist")) {
      logger.info("pokemon_learnsets table not yet created/seeded");
    } else {
      throw err;
    }
  }
}

// =====================================================
// Main
// =====================================================

async function main() {
  try {
    const env = loadEnvironment();
    logger.header("Learnset Verification", "🔍");

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

        // Constraint checks
        logger.section("Constraint Validation", "📏");
        for (const check of CONSTRAINT_CHECKS) {
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

        // Duplicate check
        logger.section("Duplicate Detection", "🔄");
        try {
          const result = await client.query(DUPLICATE_CHECK.query);
          if (result.rows.length === 0) {
            logger.success(`  ${DUPLICATE_CHECK.name}`);
            totalPassed++;
          } else {
            logger.failure(
              `  ${DUPLICATE_CHECK.name} — ${result.rows.length} duplicate group(s)`,
            );
            result.rows
              .slice(0, 5)
              .forEach((row) => console.log(`     ↳ ${JSON.stringify(row)}`));
            totalFailed++;
          }
        } catch (err) {
          if (err.message.includes("does not exist")) {
            console.log(
              `  ⏭️  ${DUPLICATE_CHECK.name} — table not yet created`,
            );
          } else {
            logger.failure(`  ${DUPLICATE_CHECK.name} — ${err.message}`);
            totalFailed++;
          }
        }
      }

      // Coverage summary
      await showCoverageSummary(client);

      // Specific VG detail
      if (specificVG) {
        await showMethodBreakdown(client, specificVG);
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
