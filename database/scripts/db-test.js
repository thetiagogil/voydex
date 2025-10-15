#!/usr/bin/env node

import { readFileSync } from "fs";
import { join } from "path";
import { Client } from "pg";

// Load environment variables
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

const dbUrl = process.env.SUPABASE_DB_URL;
const dbPassword = process.env.SUPABASE_DB_PASSWORD;

if (!dbUrl || !dbPassword) {
  console.error("❌ Missing database connection info in .env.local");
  console.error("\n🔧 You need to add these to your .env.local file:");
  console.error("SUPABASE_DB_URL=your_connection_string_here");
  console.log("SUPABASE_DB_PASSWORD=your_database_password_here");
  console.error(
    "\n📋 Get these from: Supabase Dashboard > Settings > Database"
  );
  process.exit(1);
}

const connectionString = dbUrl.replace("[YOUR-PASSWORD]", dbPassword);

console.log("🧪 Testing database connection...");
console.log(
  "📡 Connecting to:",
  connectionString.split("@")[1]?.split("/")[0] || "database"
);

const client = new Client({
  connectionString: connectionString,
  ssl: { rejectUnauthorized: false },
});

async function testConnection() {
  try {
    await client.connect();
    console.log("✅ Database connection successful!");

    // Test a simple query
    const result = await client.query("SELECT version()");
    console.log("📊 PostgreSQL version:", result.rows[0].version.split(" ")[0]);

    // Check if our schemas exist
    const schemas = await client.query(`
      SELECT schema_name 
      FROM information_schema.schemata 
      WHERE schema_name IN ('dex', 'meta', 'gameplay')
      ORDER BY schema_name
    `);

    if (schemas.rows.length > 0) {
      console.log(
        "🏗️ Existing custom schemas:",
        schemas.rows.map((r) => r.schema_name).join(", ")
      );
    } else {
      console.log("📝 No custom schemas found - ready for migration!");
    }

    console.log("\n🎯 Connection test passed! You can now run migrations.");
  } catch (error) {
    console.error("❌ Connection failed:", error.message);
    console.error("\n💡 Common solutions:");
    console.error(
      "1. Double-check your SUPABASE_DB_URL and SUPABASE_DB_PASSWORD in .env.local"
    );
    console.error(
      "2. Make sure you're using the 'Transaction' pooler connection string"
    );
    console.error("3. Verify your project is active and not paused");
    console.error("4. Check if you need to whitelist your IP address");
  } finally {
    await client.end();
  }
}

testConnection();
