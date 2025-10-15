#!/usr/bin/env node

import { readFileSync } from "fs";
import { join } from "path";
import { Client } from "pg";

// Load environment variables manually
const envContent = readFileSync(join(process.cwd(), ".env.local"), "utf8");
envContent.split("\n").forEach((line) => {
  const [key, ...valueParts] = line.split("=");
  if (key && valueParts.length > 0) {
    const value = valueParts.join("=").trim();
    if (value) {
      process.env[key.trim()] = value;
    }
  }
});

// Get connection details from environment
const dbUrl = process.env.SUPABASE_DB_URL;
const dbPassword = process.env.SUPABASE_DB_PASSWORD;

if (!dbUrl || !dbPassword) {
  console.error("❌ Missing required environment variables:");
  console.error("Required: SUPABASE_DB_URL, SUPABASE_DB_PASSWORD");
  console.error(
    "\n💡 Get these from your Supabase Dashboard > Settings > Database"
  );
  console.error("Look for 'Connection string' and 'Database password'");
  process.exit(1);
}

// Build connection string (replace [YOUR-PASSWORD] with actual password)
const connectionString = dbUrl.replace("[YOUR-PASSWORD]", dbPassword);

console.log("🚀 Connecting to PostgreSQL database...");
console.log(
  "📡 Connection string:",
  connectionString.replace(dbPassword, "***")
);

const client = new Client({
  connectionString: connectionString,
  ssl: {
    rejectUnauthorized: false,
  },
});

const migrations = [
  "001_create_schemas.sql",
  "002_create_core_meta_tables.sql",
  "003_create_dex_tables.sql",
  "004_create_pokemon_learnsets.sql",
  "006_create_meta_progress_tables.sql",
  "005_create_gameplay_tables.sql",
  "007_create_meta_other_tables.sql",
];

async function runMigration(filename) {
  console.log(`\n🔄 Running migration: ${filename}`);

  try {
    const sqlContent = readFileSync(
      join(process.cwd(), "database", "migrations", filename),
      "utf8"
    );

    // Execute the entire SQL content as one query
    // PostgreSQL can handle multiple statements in one query
    await client.query(sqlContent);

    console.log(`✅ ${filename} completed successfully`);
    return true;
  } catch (error) {
    console.error(`❌ Error in ${filename}:`, error.message);
    return false;
  }
}

async function runAllMigrations() {
  try {
    // Connect to database
    await client.connect();
    console.log("✅ Connected to database successfully");

    console.log("\n📊 Starting database migrations...");

    // Run migrations in order
    for (const migration of migrations) {
      const success = await runMigration(migration);
      if (!success) {
        console.error("❌ Migration failed. Stopping execution.");
        process.exit(1);
      }
    }

    console.log("\n🎉 All migrations completed successfully!");

    // Verify tables were created
    console.log("\n📊 Verifying created tables...");
    const result = await client.query(`
      SELECT 
        schemaname,
        tablename
      FROM pg_tables 
      WHERE schemaname IN ('dex', 'meta', 'gameplay')
      ORDER BY schemaname, tablename;
    `);

    console.log("\n📋 Created tables:");
    result.rows.forEach((row) => {
      console.log(`   ${row.schemaname}.${row.tablename}`);
    });

    // Count unique schemas
    const schemaCount = new Set(result.rows.map((row) => row.schemaname)).size;

    console.log(
      `\n✨ Database ready! Created ${result.rows.length} tables across ${schemaCount} schemas.`
    );
  } catch (error) {
    console.error("❌ Database connection failed:", error.message);
    console.error("\n🔍 Common issues:");
    console.error(
      "1. Check your .env.local file has correct SUPABASE_DB_URL and SUPABASE_DB_PASSWORD"
    );
    console.error(
      "2. Make sure your database URL includes the correct region and project ID"
    );
    console.error("3. Verify your database password is correct");
    console.error(
      "4. Check if your IP is whitelisted (if using direct connection)"
    );
    process.exit(1);
  } finally {
    await client.end();
  }
}

runAllMigrations();
