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
  STATIC: ["reference"],
  DYNAMIC: ["gameplay", "tracking"],
  PRESENTATION: ["views"],
  ALL_CUSTOM: ["reference", "gameplay", "tracking", "views"],
};

/**
 * Category system for dependency-aware operations.
 * Order: reference → tracking → gameplay (cascade direction)
 */
export const CATEGORIES = {
  reference: {
    schemas: ["reference"],
    label: "Reference",
    emoji: "🟢",
    description: "Canonical reference data (species, moves, items, etc.)",
  },
  tracking: {
    schemas: ["tracking"],
    label: "Tracking",
    emoji: "🟡",
    description: "Game-specific tracking structure (items, badges, opponents)",
    dependsOn: ["reference"],
  },
  gameplay: {
    schemas: ["gameplay"],
    label: "Gameplay",
    emoji: "🔴",
    description: "User-owned gameplay data (plays, teams, progress)",
    dependsOn: ["reference", "tracking"],
  },
};

/**
 * Category dependency order (for cascading operations).
 * Resetting a category also resets all categories after it.
 */
export const CATEGORY_ORDER = ["reference", "tracking", "gameplay"];

export const PROTECTED_TABLES = [
  "gameplay.plays",
  "gameplay.play_optional_version_groups",
  "gameplay.play_pokedex_entries",
  "gameplay.play_collectible_entries",
  "gameplay.pokemon_team",
  "gameplay.play_tracking_items",
  "gameplay.play_tracking_decisions",
  "tracking.collectible_entries",
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
// Directory Layout (relative to database/)
// =====================================================

export const DIRS = {
  scripts: "01_scripts",
  migrations: "02_migrations",
  seeds: "03_seeds",
  indexes: "04_indexes",
};

// =====================================================
// Migration Configuration
// =====================================================

export const MIGRATION_FOLDERS = {
  PUBLIC: "01_public_tables",
  REFERENCE: "02_reference_tables",
  TRACKING: "03_tracking_tables",
  GAMEPLAY: "04_gameplay_tables",
  VIEWS: "05_views",
};

export const MIGRATION_FOLDER_INFO = {
  "01_public_tables": {
    name: "Public Tables",
    description: "User profiles (public schema)",
    emoji: "🔵",
  },
  "02_reference_tables": {
    name: "Reference Tables",
    description: "Reference data (reference schema)",
    emoji: "🟢",
  },
  "03_tracking_tables": {
    name: "Tracking Tables",
    description: "Tracking data",
    emoji: "🟡",
  },
  "04_gameplay_tables": {
    name: "Gameplay Tables",
    description: "User gameplay data",
    emoji: "🔴",
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
  baseDir: "03_seeds",
};

export const SEED_FOLDERS = {
  public: "01_public_seeds",
  reference: "02_reference_seeds",
  tracking: "03_tracking_seeds",
  gameplay: "04_gameplay_seeds",
};

// =====================================================
// Index Configuration
// =====================================================

export const INDEX_FILES = {
  public: "01_public_indexes.sql",
  reference: "02_reference_indexes.sql",
  tracking: "03_tracking_indexes.sql",
  gameplay: "04_gameplay_indexes.sql",
};

/**
 * Category → migration folders mapping.
 */
export const CATEGORY_MIGRATION_FOLDERS = {
  reference: [MIGRATION_FOLDERS.REFERENCE],
  tracking: [MIGRATION_FOLDERS.TRACKING],
  gameplay: [MIGRATION_FOLDERS.GAMEPLAY],
};

/**
 * Category → seed folders mapping.
 */
export const CATEGORY_SEED_FOLDERS = {
  reference: [SEED_FOLDERS.reference],
  tracking: [SEED_FOLDERS.tracking],
  gameplay: [SEED_FOLDERS.gameplay],
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
