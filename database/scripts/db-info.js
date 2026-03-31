#!/usr/bin/env node
/**
 * Database Info
 *
 * Shows comprehensive database information including:
 * - Schemas and tables with row counts
 * - Views in the views schema
 * - Index information
 * - Size statistics
 *
 * Usage:
 *   node database/scripts/db-info.js              # Full summary
 *   node database/scripts/db-info.js --tables     # Tables only
 *   node database/scripts/db-info.js --views      # Views only
 *   node database/scripts/db-info.js --sizes      # Size info only
 */

import { getFlag } from "./helpers/cli.js";
import {
  getDatabaseStats,
  getTableSizes,
  getViewsInSchema,
} from "./helpers/db-operations-extended.js";
import { categorizeSchemas } from "./helpers/db-operations.js";
import {
  getCustomSchemas,
  getTableRowCount,
  getTablesFromSchemas,
  withClient,
} from "./helpers/db.js";
import { loadEnvironment } from "./helpers/env.js";
import { logger } from "./helpers/logger.js";

// =====================================================
// Display Functions
// =====================================================

async function showSchemasSummary(schemas, dbUrl) {
  const categorized = categorizeSchemas(schemas);

  logger.section("Schema Overview", "🗂️");
  logger.keyValue({
    "Total custom schemas": schemas.length,
    "Static (meta)": categorized.static.length,
    "Dynamic (gameplay)": categorized.dynamic.length,
    "Presentation (views)": categorized.presentation.length,
  });

  if (categorized.unknown.length > 0) {
    logger.blank();
    logger.warning(`Unknown schemas: ${categorized.unknown.join(", ")}`);
  }
}

async function showTablesSummary(schemas, dbUrl) {
  logger.section("Tables by Schema", "📋");

  for (const schema of schemas) {
    const tables = await withClient(
      async (client) => await getTablesFromSchemas(client, [schema]),
      dbUrl,
    );

    if (tables.length === 0) {
      logger.blank();
      console.log(`  🗂️  ${schema}: (empty schema)`);
      continue;
    }

    logger.blank();
    console.log(`  🗂️  ${schema}: ${tables.length} tables`);

    // Get row counts for each table
    for (const table of tables) {
      const rowCount = await withClient(
        async (client) =>
          await getTableRowCount(client, table.schemaname, table.tablename),
        dbUrl,
      );

      const countStr = rowCount.toLocaleString().padStart(8);
      console.log(`     ${countStr} rows │ ${table.tablename}`);
    }
  }
}

async function showViewsSummary(dbUrl) {
  logger.section("Views", "👁️");

  const views = await getViewsInSchema("views", dbUrl);

  if (views.length === 0) {
    logger.info("No views found in the 'views' schema");
    return;
  }

  logger.keyValue({ "Total views": views.length });
  logger.blank();

  // Group views by prefix
  const grouped = {};
  views.forEach((view) => {
    const prefix = view.split("_")[0];
    if (!grouped[prefix]) grouped[prefix] = [];
    grouped[prefix].push(view);
  });

  for (const [prefix, viewList] of Object.entries(grouped)) {
    console.log(`  📊 ${prefix}:`);
    viewList.forEach((v) => console.log(`     • ${v}`));
  }
}

async function showSizesSummary(schemas, dbUrl) {
  logger.section("Size Statistics", "💾");

  // Overall database size
  const stats = await getDatabaseStats(dbUrl);
  logger.keyValue({
    Database: stats.database_name,
    "Total Size": stats.size,
  });

  // Per-schema sizes
  for (const schema of schemas) {
    const tableSizes = await getTableSizes(schema, dbUrl);

    if (tableSizes.length === 0) continue;

    logger.blank();
    console.log(`  📁 ${schema}:`);

    // Calculate totals
    let totalData = 0;
    let totalIndexes = 0;

    tableSizes.forEach((t) => {
      console.log(
        `     ${t.total_size.padStart(10)} │ ${t.tablename} (data: ${t.table_size}, idx: ${t.indexes_size})`,
      );
    });
  }
}

async function showDataSummary(dbUrl) {
  logger.section("Data Summary", "📈");

  // Get counts from key tables
  const counts = {};

  const tablesToCount = [
    ["meta", "generations"],
    ["meta", "regions"],
    ["meta", "games"],
    ["meta", "pokemon_species"],
    ["meta", "pokemon_forms"],
    ["meta", "pokemon_attributes"],
    ["meta", "types"],
    ["meta", "abilities"],
    ["meta", "moves"],
    ["meta", "natures"],
    ["meta", "items"],
    ["meta", "progress_categories"],
    ["meta", "progress_items"],
    ["meta", "regional_dex"],
    ["meta", "pokemon_availability"],
    ["meta", "move_attributes"],
    ["meta", "move_availability"],
    ["meta", "item_availability"],
    ["meta", "pokemon_learnsets"],
    ["gameplay", "plays"],
    ["gameplay", "play_optional_version_groups"],
    ["gameplay", "play_team_pokemon"],
    ["gameplay", "play_pokemon_caught"],
    ["gameplay", "play_progress"],
  ];

  for (const [schema, table] of tablesToCount) {
    try {
      const count = await withClient(
        async (client) => await getTableRowCount(client, schema, table),
        dbUrl,
      );
      counts[`${schema}.${table}`] = count.toLocaleString();
    } catch {
      counts[`${schema}.${table}`] = "(missing)";
    }
  }

  // Display in groups
  console.log("  📦 Reference Data:");
  console.log(`     Generations:      ${counts["meta.generations"]}`);
  console.log(`     Regions:          ${counts["meta.regions"]}`);
  console.log(`     Games:            ${counts["meta.games"]}`);
  console.log(`     Types:            ${counts["meta.types"]}`);
  console.log(`     Abilities:        ${counts["meta.abilities"]}`);
  console.log(`     Moves:            ${counts["meta.moves"]}`);
  console.log(`     Natures:          ${counts["meta.natures"]}`);
  console.log(`     Items:            ${counts["meta.items"]}`);

  logger.blank();
  console.log("  🐾 Pokemon Data:");
  console.log(`     Species:          ${counts["meta.pokemon_species"]}`);
  console.log(`     Forms:            ${counts["meta.pokemon_forms"]}`);
  console.log(`     Attributes:       ${counts["meta.pokemon_attributes"]}`);
  console.log(`     Regional Dex:     ${counts["meta.regional_dex"]}`);
  console.log(`     Availability:     ${counts["meta.pokemon_availability"]}`);
  console.log(`     Learnsets:        ${counts["meta.pokemon_learnsets"]}`);

  logger.blank();
  console.log("  📝 Move & Item Data:");
  console.log(`     Move Attributes:  ${counts["meta.move_attributes"]}`);
  console.log(`     Move Availability:${counts["meta.move_availability"]}`);
  console.log(`     Item Availability:${counts["meta.item_availability"]}`);

  logger.blank();
  console.log("  📋 Progress Data:");
  console.log(`     Categories:       ${counts["meta.progress_categories"]}`);
  console.log(`     Items:            ${counts["meta.progress_items"]}`);

  logger.blank();
  console.log("  🎮 Gameplay Data:");
  console.log(`     Plays:            ${counts["gameplay.plays"]}`);
  console.log(
    `     Optional VGs:     ${counts["gameplay.play_optional_version_groups"]}`,
  );
  console.log(`     Team Pokemon:     ${counts["gameplay.play_team_pokemon"]}`);
  console.log(
    `     Pokemon Caught:   ${counts["gameplay.play_pokemon_caught"]}`,
  );
  console.log(`     Progress:         ${counts["gameplay.play_progress"]}`);
}

// =====================================================
// Main
// =====================================================

async function main() {
  try {
    // Load environment
    const env = loadEnvironment();

    // Header
    logger.header("Database Information", "📊");

    // Get schemas
    const schemas = await withClient(
      async (client) => await getCustomSchemas(client),
      env.SUPABASE_DB_URL,
    );

    if (schemas.length === 0) {
      logger.info("No custom schemas found. Database appears empty.");
      logger.blank();
      logger.info("Run migrations to set up the database:");
      logger.info("  node database/scripts/db-migrate-all.js");
      return;
    }

    // Check flags for specific output
    const showTablesOnly = getFlag("--tables");
    const showViewsOnly = getFlag("--views");
    const showSizesOnly = getFlag("--sizes");
    const showDataOnly = getFlag("--data");
    const showSpecific =
      showTablesOnly || showViewsOnly || showSizesOnly || showDataOnly;

    // Show requested sections (or all if no specific flag)
    if (!showSpecific || showTablesOnly) {
      await showSchemasSummary(schemas, env.SUPABASE_DB_URL);
      await showTablesSummary(schemas, env.SUPABASE_DB_URL);
    }

    if (!showSpecific || showViewsOnly) {
      await showViewsSummary(env.SUPABASE_DB_URL);
    }

    if (!showSpecific || showSizesOnly) {
      await showSizesSummary(schemas, env.SUPABASE_DB_URL);
    }

    if (!showSpecific || showDataOnly) {
      await showDataSummary(env.SUPABASE_DB_URL);
    }

    // Footer
    logger.blank();
    logger.separator("=", 60);
    logger.success("Database info retrieved successfully");
    logger.separator("=", 60);
  } catch (err) {
    logger.blank();
    logger.failure(`Script failed: ${err.message}`);
    process.exit(1);
  }
}

main();
