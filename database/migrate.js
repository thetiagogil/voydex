#!/usr/bin/env node
/**
 * Database Migration Runner
 *
 * Runs database migrations against Supabase
 * Usage: npm run migrate or node database/migrate.js
 */

import { createClient } from "@supabase/supabase-js";
import { readFileSync } from "fs";
import { join } from "path";

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!supabaseUrl || !supabaseServiceKey) {
  console.error("Missing Supabase environment variables");
  console.error(
    "Required: NEXT_PUBLIC_SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY"
  );
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseServiceKey);

const migrations = [
  "001_create_schemas.sql",
  "002_create_core_meta_tables.sql",
  "003_create_dex_tables.sql",
  "004_create_pokemon_learnsets.sql",
  "005_create_meta_progress_tables.sql",
  "006_create_gameplay_tables.sql",
  "007_create_meta_other_tables.sql",
];

async function runMigration(filename) {
  console.log(`\n🔄 Running migration: ${filename}`);

  try {
    const sqlContent = readFileSync(
      join(process.cwd(), "database", "migrations", filename),
      "utf8"
    );

    const { error } = await supabase.rpc("exec_sql", { sql: sqlContent });

    if (error) {
      console.error(`❌ Error in ${filename}:`, error);
      return false;
    }

    console.log(`✅ Successfully ran ${filename}`);
    return true;
  } catch (err) {
    console.error(`❌ Failed to read/run ${filename}:`, err);
    return false;
  }
}

async function main() {
  console.log("🚀 Starting database migrations...\n");

  for (const migration of migrations) {
    const success = await runMigration(migration);
    if (!success) {
      console.error("\n❌ Migration failed. Stopping execution.");
      process.exit(1);
    }
  }

  console.log("\n🎉 All migrations completed successfully!");

  // Verify tables were created
  console.log("\n📊 Verifying created tables...");
  const { data, error } = await supabase.rpc("exec_sql", {
    sql: `
      SELECT schemaname, tablename 
      FROM pg_tables 
      WHERE schemaname IN ('dex', 'meta', 'gameplay')
      ORDER BY schemaname, tablename;
    `,
  });

  if (error) {
    console.error("Error verifying tables:", error);
  } else {
    console.table(data);
  }
}

main().catch(console.error);
