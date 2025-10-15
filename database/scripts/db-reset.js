#!/usr/bin/env node

import { readFileSync } from "fs";
import { join } from "path";
import { Client } from "pg";

// Load environment variables
const envPath = join(process.cwd(), ".env.local");
const envContent = readFileSync(envPath, "utf8");
envContent.split("\n").forEach((line) => {
  const [key, ...valueParts] = line.split("=");
  if (key && valueParts.length > 0) {
    const value = valueParts.join("=").trim();
    if (value) {
      process.env[key.trim()] = value;
    }
  }
});

const dbUrl = process.env.SUPABASE_DB_URL;
const dbPassword = process.env.SUPABASE_DB_PASSWORD;

if (!dbUrl || !dbPassword) {
  console.error("❌ Missing database connection info in .env.local");
  console.error("\n🔧 You need to add these to your .env.local file:");
  console.error("SUPABASE_DB_URL=your_connection_string_here");
  console.error("SUPABASE_DB_PASSWORD=your_database_password_here");
  console.error(
    "\n📋 Get these from: Supabase Dashboard > Settings > Database"
  );
  process.exit(1);
}

const connectionString = dbUrl.replace("[YOUR-PASSWORD]", dbPassword);

console.log("🧹 Resetting database...");
console.log(
  "📡 Connecting to:",
  connectionString.split("@")[1]?.split("/")[0] || "database"
);

const client = new Client({
  connectionString: connectionString,
  ssl: { rejectUnauthorized: false },
});

async function resetDatabase() {
  try {
    await client.connect();
    console.log("✅ Connected to database successfully");

    console.log(
      "\n⚠️  WARNING: This will PERMANENTLY DELETE all custom schemas and data!"
    );
    console.log("� This action cannot be undone!");
    console.log("💾 Make sure you have backed up any important data.");

    // 20-second countdown
    console.log("\n🔄 Database reset will begin in:");
    for (let i = 20; i > 0; i--) {
      console.log(`   ⏰ ${i} seconds... (Press Ctrl+C to cancel)`);
      await new Promise((resolve) => setTimeout(resolve, 2000));
    }

    console.log("🗑️  Starting database reset NOW...");

    // Drop schemas (CASCADE will drop all tables and data)
    const schemas = ["gameplay", "meta", "dex"];

    for (const schema of schemas) {
      try {
        console.log(`🗑️  Dropping schema: ${schema}`);
        await client.query(`DROP SCHEMA IF EXISTS ${schema} CASCADE`);
        console.log(`✅ Dropped ${schema} schema`);
      } catch (error) {
        console.log(`⚠️  Could not drop ${schema}: ${error.message}`);
      }
    }

    console.log("\n🧹 Database reset completed!");
    console.log(
      "💡 Run 'npm run db:setup' to recreate the database structure."
    );
  } catch (error) {
    console.error("❌ Reset failed:", error.message);
    process.exit(1);
  } finally {
    await client.end();
  }
}

resetDatabase();
