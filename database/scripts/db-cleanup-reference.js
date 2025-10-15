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

if (!dbUrl) {
  console.error("❌ Missing database connection info in .env.local");
  console.error("\n🔧 You need to add this to your .env.local file:");
  console.error(
    "SUPABASE_DB_URL=postgresql://postgres.[project]:[password]@aws-0-[region].pooler.supabase.com:6543/postgres"
  );
  process.exit(1);
}

// Database connection string
const connectionString = dbUrl;

async function cleanupReferenceData() {
  const client = new Client({ connectionString });

  try {
    console.log("🧹 Cleaning up reference data (dex + meta schemas only)...");
    console.log("📡 Connecting to: aws-1-eu-west-3.pooler.supabase.com:6543");
    await client.connect();
    console.log("✅ Connected to database successfully\n");

    console.log(
      "⚠️  WARNING: This will delete Pokemon reference data (dex + meta schemas)!"
    );
    console.log(
      "🛡️  User gameplay data will be PRESERVED (gameplay schema untouched)."
    );
    console.log("🏗️  Database structure will be preserved.");
    console.log("💾 Make sure you have backed up any important data.\n");

    // 20-second countdown
    console.log("🔄 Reference data cleanup will begin in:");
    for (let i = 20; i > 0; i--) {
      console.log(`   ⏰ ${i} seconds... (Press Ctrl+C to cancel)`);
      await new Promise((resolve) => setTimeout(resolve, 2000));
    }

    console.log("🧹 Starting reference data cleanup NOW...\n");

    // Get tables from dex and meta schemas only
    const tablesResult = await client.query(`
      SELECT schemaname, tablename 
      FROM pg_tables 
      WHERE schemaname IN ('dex', 'meta')
      ORDER BY 
        CASE schemaname 
          WHEN 'meta' THEN 1 
          WHEN 'dex' THEN 2 
        END,
        tablename;
    `);

    if (tablesResult.rows.length === 0) {
      console.log("📭 No reference data tables found to cleanup.");
      return;
    }

    console.log(
      "🏗️  Found schemas: dex, meta (gameplay schema will be preserved)"
    );
    console.log("🗑️  Clearing reference data from tables...");

    // Disable foreign key checks temporarily for faster cleanup
    await client.query("SET session_replication_role = replica;");

    // Clear data from each table (dex and meta only)
    for (const row of tablesResult.rows) {
      const tableName = `${row.schemaname}.${row.tablename}`;
      console.log(`   🗑️  Clearing ${tableName}`);

      await client.query(`TRUNCATE TABLE ${tableName} CASCADE;`);
    }

    // Re-enable foreign key checks
    await client.query("SET session_replication_role = DEFAULT;");

    // Verify gameplay data is preserved
    const gameplayCheck = await client.query(`
      SELECT COUNT(*) as table_count
      FROM pg_tables 
      WHERE schemaname = 'gameplay';
    `);

    console.log("\n🧹 Reference data cleanup completed successfully!");
    console.log("🗑️  Cleared: dex + meta schemas (Pokemon reference data)");
    console.log(
      `🛡️  Preserved: gameplay schema (${gameplayCheck.rows[0].table_count} tables with user data intact)`
    );
    console.log("🏗️  All table structures preserved.");
    console.log("💡 Run seed script to reload Pokemon reference data.");
  } catch (error) {
    console.error("❌ Reference data cleanup failed:", error.message);
    process.exit(1);
  } finally {
    await client.end();
  }
}

cleanupReferenceData();
