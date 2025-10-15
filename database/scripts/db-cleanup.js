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

async function cleanupDatabase() {
  const client = new Client({ connectionString });

  try {
    console.log(
      "🧹 Cleaning up database (removing all data, keeping structure)..."
    );
    console.log("📡 Connecting to: aws-1-eu-west-3.pooler.supabase.com:6543");
    await client.connect();
    console.log("✅ Connected to database successfully\n");

    console.log(
      "⚠️  WARNING: This will PERMANENTLY DELETE all data from all schemas!"
    );
    console.log("🏗️  Database structure (tables, schemas) will be preserved.");
    console.log("💾 Make sure you have backed up any important data.\n");

    // 20-second countdown
    console.log("🔄 Database cleanup will begin in:");
    for (let i = 20; i > 0; i--) {
      console.log(`   ⏰ ${i} seconds... (Press Ctrl+C to cancel)`);
      await new Promise((resolve) => setTimeout(resolve, 2000));
    }

    console.log("🧹 Starting database cleanup NOW...\n");

    // Get all schemas we manage
    const schemasResult = await client.query(`
      SELECT schema_name 
      FROM information_schema.schemata 
      WHERE schema_name IN ('dex', 'meta', 'gameplay')
      ORDER BY schema_name;
    `);

    console.log(
      "🏗️  Found schemas:",
      schemasResult.rows.map((row) => row.schema_name).join(", ")
    );

    // Get all tables from our schemas (in dependency order for deletion)
    const tablesResult = await client.query(`
      SELECT schemaname, tablename 
      FROM pg_tables 
      WHERE schemaname IN ('dex', 'meta', 'gameplay')
      ORDER BY 
        CASE schemaname 
          WHEN 'gameplay' THEN 1 
          WHEN 'meta' THEN 2 
          WHEN 'dex' THEN 3 
        END,
        tablename;
    `);

    if (tablesResult.rows.length === 0) {
      console.log("📭 No tables found to cleanup.");
      return;
    }

    console.log("\n🗑️  Clearing data from tables...");

    // Disable foreign key checks temporarily for faster cleanup
    await client.query("SET session_replication_role = replica;");

    // Clear data from each table
    for (const row of tablesResult.rows) {
      const tableName = `${row.schemaname}.${row.tablename}`;
      console.log(`   🗑️  Clearing ${tableName}`);

      await client.query(`TRUNCATE TABLE ${tableName} CASCADE;`);
    }

    // Re-enable foreign key checks
    await client.query("SET session_replication_role = DEFAULT;");

    console.log("\n🧹 Database cleanup completed successfully!");
    console.log("🏗️  All table structures preserved.");
    console.log("💡 Run npm script to reseed data if needed.");
  } catch (error) {
    console.error("❌ Cleanup failed:", error.message);
    process.exit(1);
  } finally {
    await client.end();
  }
}

cleanupDatabase();
