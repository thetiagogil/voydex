#!/usr/bin/env node
/**
 * Refresh Views
 *
 * Drops and recreates all views in the views schema.
 * Useful after table structure changes or to ensure views are up to date.
 *
 * Usage:
 *   node database/scripts/db-refresh-views.js           # Interactive mode
 *   node database/scripts/db-refresh-views.js --all     # Refresh all views
 *   node database/scripts/db-refresh-views.js --y       # Auto-confirm
 */

import path from "path";
import { fileURLToPath } from "url";
import { confirmOrExit } from "./helpers/cli.js";
import { getViewsInSchema } from "./helpers/db-operations-extended.js";
import { withClient } from "./helpers/db.js";
import { loadEnvironment } from "./helpers/env.js";
import { logger, withTiming } from "./helpers/logger.js";
import { listSqlFiles, runSqlFile } from "./helpers/sql-runner.js";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

async function main() {
  try {
    // Load environment
    const env = loadEnvironment();

    // Header
    logger.header("Refresh Views", "🔄");

    // Check what views currently exist
    logger.section("Current Views", "🔍");

    const existingViews = await getViewsInSchema("views", env.SUPABASE_DB_URL);

    if (existingViews.length === 0) {
      logger.info("No views currently exist in the 'views' schema");
    } else {
      logger.keyValue({
        "Views in schema": existingViews.length,
      });
      logger.blank();
      logger.list(existingViews, { bullet: "•" });
    }

    // Get view migration files
    const viewsDir = path.join(__dirname, "..", "migrations", "004_views");
    const viewFiles = listSqlFiles(viewsDir);

    if (viewFiles.length === 0) {
      logger.failure(
        "No view migration files found in database/migrations/004_views",
      );
      process.exit(1);
    }

    logger.section("View Files to Apply", "📁");
    logger.list(viewFiles, { bullet: "📄" });

    // Confirm
    logger.blank();
    await confirmOrExit("This will recreate all views. Type 'y' to proceed: ", {
      flag: "--y",
    });

    // Drop existing views (in reverse dependency order)
    if (existingViews.length > 0) {
      logger.section("Dropping Existing Views", "🗑️");

      const { success: dropSuccess } = await withTiming(async () => {
        await withClient(async (client) => {
          // Drop all views in reverse order (handles dependencies)
          for (const viewName of existingViews.reverse()) {
            await client.query(
              `DROP VIEW IF EXISTS views."${viewName}" CASCADE;`,
            );
            logger.info(`Dropped: views.${viewName}`);
          }
        }, env.SUPABASE_DB_URL);
      }, "Drop existing views");

      if (!dropSuccess) {
        logger.failure("Failed to drop existing views");
        process.exit(1);
      }
    }

    // Recreate views from migration files
    logger.section("Creating Views", "✨");

    let allSuccess = true;
    for (const file of viewFiles) {
      const filePath = path.join(viewsDir, file);
      const success = await runSqlFile(filePath, file);

      if (!success) {
        allSuccess = false;
        break;
      }
    }

    // Summary
    logger.blank();
    logger.separator("=", 60);

    if (allSuccess) {
      // Show what was created
      const newViews = await getViewsInSchema("views", env.SUPABASE_DB_URL);

      logger.success(`Successfully created ${newViews.length} views`);
      logger.blank();
      logger.list(newViews, { bullet: "✅" });
    } else {
      logger.failure("View refresh failed");
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
