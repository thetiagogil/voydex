/**
 * Database Scripts Configuration
 *
 * All configurable values for database scripts.
 * Update this file to maintain scripts without changing script logic.
 */

// =====================================================
// Schema Configuration
// =====================================================

/**
 * Schema classifications for clean/migration operations
 */
export const SCHEMA_TYPES = {
  STATIC: ["dex", "meta"], // Reference data (safe to reset)
  DYNAMIC: ["gameplay"], // User data (NEVER reset in prod)
  PRESENTATION: ["views"], // Views/functions (safe to recreate)
  ALL_CUSTOM: ["dex", "meta", "gameplay", "views"],
};

/**
 * Tables that should NEVER be truncated without explicit confirmation
 * Format: "schema.table"
 */
export const PROTECTED_TABLES = [
  "gameplay.plays",
  "gameplay.pokemon_team",
  "gameplay.progress",
  "gameplay.pokemon_caught",
  "public.users",
];

// =====================================================
// Migration Configuration
// =====================================================

/**
 * Migration folder structure
 * Order matters - migrations run in this sequence
 */
export const MIGRATION_FOLDERS = {
  PUBLIC: "001_public_tables",
  STATIC: "002_static_tables",
  DYNAMIC: "003_dynamic_tables",
  VIEWS: "004_views",
};

/**
 * Display information for migration folders
 */
export const MIGRATION_FOLDER_INFO = {
  "001_public_tables": {
    name: "Public Tables",
    description: "User profiles (public schema)",
    emoji: "🔵",
  },
  "002_static_tables": {
    name: "Static Tables",
    description: "Reference data (dex, meta)",
    emoji: "🟢",
  },
  "003_dynamic_tables": {
    name: "Dynamic Tables",
    description: "User gameplay data",
    emoji: "🟡",
  },
  "004_views": {
    name: "Views",
    description: "Presentation layer",
    emoji: "🟣",
  },
};

/**
 * Required schemas that must exist for app to function
 */
export const REQUIRED_SCHEMAS = SCHEMA_TYPES.ALL_CUSTOM;

// =====================================================
// Seed Configuration
// =====================================================

/**
 * Seed files directory structure
 */
export const SEED_CONFIG = {
  baseDir: "seeds", // Changed from "seed" to "seeds"
  approvedDir: "approved", // Subdirectory for approved seed files
};

// =====================================================
// Materialized Views Configuration
// =====================================================

/**
 * Materialized views to manage
 * Add new views here as they're created
 */
export const MATERIALIZED_VIEWS = [
  {
    name: "views.mv_dashboard_generation_metadata",
    description:
      "Generation metadata with games and regions for /dashboard page",
    supportsConcurrent: true,
    estimatedRows: "< 20",
  },
  // Add more materialized views below:
  // {
  //   name: "views.mv_your_view_name",
  //   description: "Description of your view",
  //   supportsConcurrent: true,  // Set to false if no unique index
  //   estimatedRows: "~1000",
  // },
];

// =====================================================
// Database Connection Configuration
// =====================================================

/**
 * System/Supabase schemas to exclude from operations
 */
export const SYSTEM_SCHEMAS = new Set([
  "information_schema",
  "public",
  "extensions",
  "auth",
  "graphql",
  "graphql_public",
  "realtime",
  "storage",
  "vault",
  "pgsodium",
  "pgsodium_masks",
  "supabase_functions",
  "supabase_migrations",
]);

/**
 * Database query timeouts (milliseconds)
 */
export const TIMEOUTS = {
  statement: 30000, // 30 seconds for individual statements
  migration: 60000, // 60 seconds for migration files
};
