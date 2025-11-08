#!/usr/bin/env node
/**
 * Refresh Materialized Views Script
 *
 * Purpose: Manually refresh all materialized views in the database
 * Usage: node database/scripts/refresh-materialized-views.js [--view=name]
 *
 * Options:
 *   --view=name    Refresh only a specific view (e.g., mv_generation_metadata)
 *   --all          Refresh all materialized views (default)
 *   --concurrent   Use CONCURRENTLY (requires unique index, avoids blocking)
 *   --y            Auto-confirm without prompts
 *
 * Examples:
 *   node database/scripts/refresh-materialized-views.js --all
 *   node database/scripts/refresh-materialized-views.js --view=mv_generation_metadata --concurrent
 */

import { confirmOrExit } from "./helpers/cli.js";
import { withClient } from "./helpers/db.js";
import { loadEnvironment } from "./helpers/env.js";
import { logger } from "./helpers/logger.js";

// Materialized views configuration
const MATERIALIZED_VIEWS = [
  {
    name: "views.mv_adventures_generation_metadata",
    description:
      "Generation metadata with games and regions for /adventures page",
    supportsConcurrent: true, // Has unique index
    estimatedRows: "< 20", // 9 generations
  },
  // Add more materialized views here as you create them
  // Example:
  // {
  //   name: "views.mv_leaderboard_stats",
  //   description: "Global leaderboard statistics",
  //   supportsConcurrent: true,
  //   estimatedRows: "~1000",
  // },
];

/**
 * Refresh a single materialized view
 */
async function refreshView(client, viewConfig, useConcurrent = false) {
  const { name, description, supportsConcurrent } = viewConfig;
  const concurrent = useConcurrent && supportsConcurrent ? "CONCURRENTLY" : "";

  logger.section(`Refreshing: ${name}`);
  if (description) {
    console.log(`Description: ${description}`);
  }

  const sql = `REFRESH MATERIALIZED VIEW ${concurrent} ${name};`;
  console.log(`SQL: ${sql}`);

  const startTime = Date.now();

  try {
    await client.query(sql);
    const duration = ((Date.now() - startTime) / 1000).toFixed(2);
    logger.success(`✓ Refreshed ${name} in ${duration}s`);
    return true;
  } catch (err) {
    logger.failure(`✗ Failed to refresh ${name}`);
    console.error(err.message);
    return false;
  }
}

/**
 * Main execution
 */
async function main() {
  const args = process.argv.slice(2);
  const viewArg = args.find((arg) => arg.startsWith("--view="));
  const viewName = viewArg ? viewArg.split("=")[1] : null;
  const useConcurrent = args.includes("--concurrent");
  const autoConfirm = args.includes("--y");

  const env = loadEnvironment();

  logger.header("Refresh Materialized Views", "🔄");

  // Determine which views to refresh
  let viewsToRefresh = MATERIALIZED_VIEWS;
  if (viewName) {
    viewsToRefresh = MATERIALIZED_VIEWS.filter((v) => v.name === viewName);
    if (viewsToRefresh.length === 0) {
      logger.failure(`View not found: ${viewName}`);
      logger.section("Available views:");
      MATERIALIZED_VIEWS.forEach((v) => console.log(`  - ${v.name}`));
      process.exit(1);
    }
  }

  // Display refresh plan
  logger.section("Refresh Plan:");
  viewsToRefresh.forEach((v) => {
    const concurrent =
      useConcurrent && v.supportsConcurrent ? " (CONCURRENTLY)" : "";
    console.log(`  - ${v.name}${concurrent}`);
    if (v.description) {
      console.log(`    ${v.description} (~${v.estimatedRows} rows)`);
    }
  });

  if (useConcurrent) {
    console.log("");
    logger.section(
      "ℹ️  CONCURRENT refresh avoids blocking reads but requires unique index",
    );
  }

  // Confirm before proceeding
  if (!autoConfirm) {
    await confirmOrExit("Proceed with refresh?", { flag: "--y" });
  }

  // Refresh views
  logger.section("Refreshing views...");
  const results = await withClient(async (client) => {
    const results = [];
    for (const view of viewsToRefresh) {
      const success = await refreshView(client, view, useConcurrent);
      results.push({ view: view.name, success });
    }
    return results;
  }, env.SUPABASE_DB_URL);

  // Summary
  logger.section("Summary:");
  const successCount = results.filter((r) => r.success).length;
  const failureCount = results.length - successCount;

  if (failureCount === 0) {
    logger.success(`✓ All ${successCount} view(s) refreshed successfully`);
    process.exit(0);
  } else {
    logger.failure(`✗ ${failureCount} view(s) failed to refresh`);
    results
      .filter((r) => !r.success)
      .forEach((r) => {
        console.log(`  - ${r.view}`);
      });
    process.exit(1);
  }
}

main();
