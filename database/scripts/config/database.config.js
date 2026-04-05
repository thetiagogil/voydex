/**
 * Database Scripts Configuration
 *
 * Central config for all database scripts.
 * Update this file when schemas, tables, or folder structure changes.
 */

// =====================================================
// Schema Configuration
// =====================================================

export const SCHEMA_TYPES = {
  STATIC: ["meta"],
  DYNAMIC: ["gameplay", "progress"],
  PRESENTATION: ["views"],
  ALL_CUSTOM: ["meta", "gameplay", "progress", "views"],
};

export const PROTECTED_TABLES = [
  "gameplay.plays",
  "gameplay.play_optional_version_groups",
  "gameplay.play_dex_entries",
  "gameplay.play_collectible_entries",
  "gameplay.pokemon_team",
  "gameplay.play_progress",
  "progress.play_items",
  "progress.play_choices",
  "progress.collectible_entries",
  "public.users",
];

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

// =====================================================
// Migration Configuration
// =====================================================

export const MIGRATION_FOLDERS = {
  PUBLIC: "01_public_tables",
  META: "02_meta_tables",
  GAMEPLAY: "03_gameplay_tables",
  PROGRESS: "04_progress_tables",
  VIEWS: "05_views",
};

export const MIGRATION_FOLDER_INFO = {
  "01_public_tables": {
    name: "Public Tables",
    description: "User profiles (public schema)",
    emoji: "🔵",
  },
  "02_meta_tables": {
    name: "Meta Tables",
    description: "Reference data (meta schema)",
    emoji: "🟢",
  },
  "03_gameplay_tables": {
    name: "Gameplay Tables",
    description: "User gameplay data",
    emoji: "🟡",
  },
  "04_progress_tables": {
    name: "Progress Tables",
    description: "Progress tracking data",
    emoji: "🟠",
  },
  "05_views": {
    name: "Views",
    description: "Presentation layer",
    emoji: "🟣",
  },
};

export const REQUIRED_SCHEMAS = SCHEMA_TYPES.ALL_CUSTOM;

// =====================================================
// Seed Configuration
// =====================================================

export const SEED_CONFIG = {
  baseDir: "seeds",
};

// =====================================================
// Materialized Views
// =====================================================

export const MATERIALIZED_VIEWS = [
  {
    name: "views.mv_dashboard_generation_metadata",
    description: "Generation metadata with games and regions",
    supportsConcurrent: true,
    estimatedRows: "< 20",
  },
];

// =====================================================
// Timeouts (milliseconds)
// =====================================================

export const TIMEOUTS = {
  statement: 30000,
  migration: 60000,
};
