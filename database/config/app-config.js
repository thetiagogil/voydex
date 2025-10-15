/**
 * Pokemon Tracker Database Configuration
 *
 * Application-specific database configuration including schema definitions,
 * table relationships, and operational settings. This file contains all
 * app-specific logic separated from generic database utilities.
 */

/**
 * Database schemas used by the Pokemon Tracker application
 */
export const APP_SCHEMAS = {
  // Pokemon reference data (types, moves, abilities, etc.)
  DEX: "dex",

  // Game metadata (generations, regions, games, etc.)
  META: "meta",

  // User gameplay data (playthroughs, progress, teams, etc.)
  GAMEPLAY: "gameplay",
};

/**
 * Schema groups for different operations
 */
export const SCHEMA_GROUPS = {
  // Reference data that can be safely cleared and re-seeded
  REFERENCE: [APP_SCHEMAS.DEX, APP_SCHEMAS.META],

  // User data that should never be automatically deleted
  USER_DATA: [APP_SCHEMAS.GAMEPLAY],

  // All application schemas
  ALL: [APP_SCHEMAS.DEX, APP_SCHEMAS.META, APP_SCHEMAS.GAMEPLAY],
};

/**
 * Table deletion order for safe cleanup (respects foreign key constraints)
 */
export const TABLE_CLEANUP_ORDER = {
  // Order for deleting data while preserving referential integrity
  SAFE_DELETE_ORDER: [
    APP_SCHEMAS.GAMEPLAY, // User data first (has FKs to reference data)
    APP_SCHEMAS.META, // Game metadata second
    APP_SCHEMAS.DEX, // Pokemon reference data last
  ],

  // Order for dropping schemas (reverse dependency order)
  SCHEMA_DROP_ORDER: [APP_SCHEMAS.GAMEPLAY, APP_SCHEMAS.META, APP_SCHEMAS.DEX],
};

/**
 * Migration files configuration
 */
export const MIGRATIONS_CONFIG = {
  // Directory containing migration files
  MIGRATIONS_DIR: "migrations",

  // Migration files in dependency order (006 must run before 005)
  FILES: [
    "001_create_schemas.sql",
    "002_create_core_meta_tables.sql",
    "003_create_dex_tables.sql",
    "004_create_pokemon_learnsets.sql",
    "006_create_meta_progress_tables.sql", // Note: 006 before 005 due to dependencies
    "005_create_gameplay_tables.sql",
    "007_create_meta_other_tables.sql",
  ],
};

/**
 * Seed files configuration
 */
export const SEED_CONFIG = {
  // Directory containing seed files
  SEED_DIR: "seed",

  // Seed files in dependency order
  FILES: [
    "001_static_data.sql", // Game metadata (generations, regions, types, etc.)
    "002_abilities.sql", // Pokemon abilities from PokeAPI
    "003_moves.sql", // Pokemon moves from PokeAPI
    "004_gen1_pokemon.sql", // Generation 1 Pokemon data
    "005_gen2_pokemon.sql", // Generation 2 Pokemon data
    "006_gen3_pokemon.sql", // Generation 3 Pokemon data
  ],
};

/**
 * Environment configuration
 */
export const ENV_CONFIG = {
  // Possible environment variable names for database URL
  DB_URL_KEYS: ["SUPABASE_DB_URL", "DATABASE_URL", "DB_URL"],

  // Default environment file name
  ENV_FILE: ".env.local",
};

/**
 * Operation configurations for different cleanup types
 */
export const OPERATIONS = {
  FULL_RESET: {
    name: "Database Reset",
    description: "Complete database reset - drops all schemas and data",
    schemas: SCHEMA_GROUPS.ALL,
    action: "drop_schemas",
    countdownSeconds: 10,
    warnings: [
      "This will PERMANENTLY DELETE all custom schemas and data!",
      "This action cannot be undone!",
      "Make sure you have backed up any important data.",
    ],
  },

  DATA_CLEANUP: {
    name: "Database Cleanup",
    description: "Clear all data while preserving database structure",
    schemas: SCHEMA_GROUPS.ALL,
    action: "truncate_tables",
    countdownSeconds: 10,
    warnings: [
      "This will PERMANENTLY DELETE all data from all schemas!",
      "Database structure (tables, schemas) will be preserved.",
      "Make sure you have backed up any important data.",
    ],
  },

  REFERENCE_CLEANUP: {
    name: "Reference Data Cleanup",
    description:
      "Clear Pokemon reference data while preserving user gameplay data",
    schemas: SCHEMA_GROUPS.REFERENCE,
    action: "truncate_tables",
    countdownSeconds: 5,
    warnings: [
      "This will delete Pokemon reference data (dex + meta schemas)!",
      "User gameplay data will be PRESERVED (gameplay schema untouched).",
      "Database structure will be preserved.",
      "Make sure you have backed up any important data.",
    ],
  },
};

/**
 * Gets expected table count for verification
 */
export const EXPECTED_DATA_COUNTS = {
  // Expected counts after seeding (for verification)
  TYPES: 18,
  GENERATIONS: 9,
  NATURES: 25,
  ABILITIES: 307,
  MOVES: 919,

  // Minimum expected table counts per schema
  MIN_TABLES: {
    [APP_SCHEMAS.DEX]: 6, // abilities, types, moves, etc.
    [APP_SCHEMAS.META]: 7, // generations, games, regions, etc.
    [APP_SCHEMAS.GAMEPLAY]: 3, // plays, progress, team_pokemon
  },
};

/**
 * Error messages and suggestions
 */
export const ERROR_MESSAGES = {
  NO_DB_URL: {
    message: "Database connection string not found",
    suggestions: [
      `Add one of these to your ${ENV_CONFIG.ENV_FILE} file:`,
      ...ENV_CONFIG.DB_URL_KEYS.map(
        (key) => `${key}=postgresql://user:pass@host:port/db`
      ),
      "Get your connection string from Supabase Dashboard → Settings → Database",
    ],
  },

  SCHEMA_NOT_FOUND: {
    message: "Required schemas not found in database",
    suggestions: [
      "Run database setup first: npm run db:setup",
      "Check if migrations completed successfully",
      "Verify database connection and permissions",
    ],
  },

  MIGRATION_FAILED: {
    message: "Database migration failed",
    suggestions: [
      "Check database connection and permissions",
      "Verify SQL syntax in migration files",
      "Check for conflicting database objects",
      "Review database logs for detailed error information",
    ],
  },
};

/**
 * Helper function to get operation configuration
 * @param {string} operationType - Type of operation (FULL_RESET, DATA_CLEANUP, etc.)
 * @returns {Object} Operation configuration
 */
export function getOperationConfig(operationType) {
  const config = OPERATIONS[operationType];
  if (!config) {
    throw new Error(`Unknown operation type: ${operationType}`);
  }
  return config;
}

/**
 * Helper function to validate app schemas exist
 * @param {Array} existingSchemas - Array of existing schema names
 * @returns {Object} Validation result with missing schemas
 */
export function validateAppSchemas(existingSchemas) {
  const missingSchemas = SCHEMA_GROUPS.ALL.filter(
    (schema) => !existingSchemas.includes(schema)
  );

  return {
    isValid: missingSchemas.length === 0,
    missingSchemas,
    existingSchemas: existingSchemas.filter((schema) =>
      SCHEMA_GROUPS.ALL.includes(schema)
    ),
  };
}
