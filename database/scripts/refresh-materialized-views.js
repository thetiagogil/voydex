#!/usr/bin/env node
/**
 * Refresh Materialized Views
 *
 * Manually refresh materialized views in the database.
 * Supports refreshing all views or a specific view.
 */

import { MATERIALIZED_VIEWS } from "./config/database.config.js";
import { confirmOrExit, getFlag } from "./helpers/cli.js";
import { withClient } from "./helpers/db.js";
import { loadEnvironment } from "./helpers/env.js";
import { logger } from "./helpers/logger.js";

/**
 * Refresh a single materialized view
 */
async function refreshView(client, viewConfig, useConcurrent = false) {
  const { name, description, supportsConcurrent } = viewConfig;
  const concurrent = useConcurrent && supportsConcurrent ? "CONCURRENTLY" : "";

  logger.section(`Refreshing: ${name}`, "🔄");
  if (description) {
    logger.info(description);
  }

  const sql = `REFRESH MATERIALIZED VIEW ${concurrent} ${name};`;
  const startTime = Date.now();

  try {
    await client.query(sql);
    const duration = Date.now() - startTime;
    logger.withDuration(`Refreshed ${name}`, duration, "✅");
    return true;
  } catch (err) {
    logger.failure(`Failed to refresh ${name}: ${err.message}`);
    return false;
  }
}

async function main() {
  try {
    // Load environment
    const env = loadEnvironment();

    // Parse arguments
    const args = process.argv.slice(2);
    const viewArg = args.find((arg) => arg.startsWith("--view="));
    const viewName = viewArg ? viewArg.split("=")[1] : null;
    const useConcurrent = getFlag("--concurrent");
    const autoConfirm = getFlag("--y");

    // Header
    logger.header("Refresh Materialized Views", "🔄");

    // Check if we have any views configured
    if (MATERIALIZED_VIEWS.length === 0) {
      logger.info("No materialized views configured");
      logger.blank();
      logger.info("Add materialized view configurations to this script");
      return;
    }

    // Determine which views to refresh
    let viewsToRefresh = MATERIALIZED_VIEWS;
    if (viewName) {
      viewsToRefresh = MATERIALIZED_VIEWS.filter((v) => v.name === viewName);
      if (viewsToRefresh.length === 0) {
        logger.failure(`View not found: ${viewName}`);
        logger.blank();
        logger.info("Available views:");
        MATERIALIZED_VIEWS.forEach((v) => logger.list([v.name]));
        process.exit(1);
      }
    }

    // Display refresh plan
    logger.section("Refresh Plan", "📋");
    viewsToRefresh.forEach((v) => {
      const concurrent =
        useConcurrent && v.supportsConcurrent ? " (CONCURRENTLY)" : "";
      logger.blank();
      console.log(`  • ${v.name}${concurrent}`);
      if (v.description) {
        console.log(`    ${v.description}`);
        console.log(`    Estimated rows: ${v.estimatedRows}`);
      }
    });

    if (useConcurrent) {
      logger.blank();
      logger.info(
        "CONCURRENT refresh avoids blocking reads but requires unique index",
      );
    }

    // Confirm before proceeding
    if (!autoConfirm) {
      logger.blank();
      await confirmOrExit("Type 'y' to proceed with refresh: ", {
        flag: "--y",
      });
    }

    // Refresh views
    logger.section("Refreshing Views", "⚙️");
    const results = await withClient(async (client) => {
      const results = [];
      for (const view of viewsToRefresh) {
        const success = await refreshView(client, view, useConcurrent);
        results.push({ view: view.name, success });
      }
      return results;
    }, env.SUPABASE_DB_URL);

    // Summary
    logger.blank();
    logger.separator("=", 60);

    const successCount = results.filter((r) => r.success).length;
    const failureCount = results.length - successCount;

    if (failureCount === 0) {
      logger.success(`All ${successCount} view(s) refreshed successfully`);
    } else {
      logger.failure(`${failureCount} view(s) failed to refresh`);
      logger.blank();
      logger.info("Failed views:");
      results.filter((r) => !r.success).forEach((r) => logger.failure(r.view));
      process.exit(1);
    }

    logger.separator("=", 60);
  } catch (err) {
    logger.blank();
    logger.failure(`Script failed: ${err.message}`);
    process.exit(1);
  }
}

main();
