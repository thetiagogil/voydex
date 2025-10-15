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

console.log("🍃 Seeding database with Pokemon data...");
console.log(
  "📡 Connecting to:",
  connectionString.split("@")[1]?.split("/")[0] || "database"
);

const client = new Client({
  connectionString: connectionString,
  ssl: { rejectUnauthorized: false },
});

const seedFiles = ["001_static_data.sql", "002_abilities.sql", "003_moves.sql"];

async function runSeedFile(filename) {
  console.log(`\n🌱 Seeding: ${filename}`);

  try {
    const sqlContent = readFileSync(
      join(process.cwd(), "database", "seed", filename),
      "utf8"
    );

    // Execute the SQL content
    await client.query(sqlContent);

    console.log(`✅ ${filename} completed successfully`);
    return true;
  } catch (error) {
    console.error(`❌ Error in ${filename}:`, error.message);
    return false;
  }
}

async function seedDatabase() {
  try {
    await client.connect();
    console.log("✅ Connected to database successfully");

    console.log("\n🌱 Starting database seeding...");

    // Check if schemas exist
    const schemaCheck = await client.query(`
      SELECT schema_name 
      FROM information_schema.schemata 
      WHERE schema_name IN ('dex', 'meta', 'gameplay')
      ORDER BY schema_name
    `);

    if (schemaCheck.rows.length === 0) {
      console.error("❌ Database schemas not found!");
      console.error(
        "💡 Run 'npm run db:setup' first to create the database structure."
      );
      process.exit(1);
    }

    console.log(
      "🏗️ Found schemas:",
      schemaCheck.rows.map((r) => r.schema_name).join(", ")
    );

    // Run seed files in order
    for (const seedFile of seedFiles) {
      const success = await runSeedFile(seedFile);
      if (!success) {
        console.error("❌ Seeding failed. Stopping execution.");
        process.exit(1);
      }
    }

    console.log("\n🎉 Database seeding completed successfully!");

    // Show summary
    console.log("\n📊 Seeding Summary:");
    const counts = await Promise.all([
      client.query("SELECT COUNT(*) FROM dex.types"),
      client.query("SELECT COUNT(*) FROM dex.pokemon_base"),
      client.query("SELECT COUNT(*) FROM dex.moves"),
      client.query("SELECT COUNT(*) FROM dex.abilities"),
      client.query("SELECT COUNT(*) FROM meta.generations"),
    ]);

    console.log(`   🔷 Types: ${counts[0].rows[0].count}`);
    console.log(`   🐾 Pokemon: ${counts[1].rows[0].count}`);
    console.log(`   ⚔️  Moves: ${counts[2].rows[0].count}`);
    console.log(`   ✨ Abilities: ${counts[3].rows[0].count}`);
    console.log(`   📚 Generations: ${counts[4].rows[0].count}`);

    console.log("\n🚀 Database is ready for use!");
  } catch (error) {
    console.error("❌ Seeding failed:", error.message);
    process.exit(1);
  } finally {
    await client.end();
  }
}

seedDatabase();
