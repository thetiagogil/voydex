# Database Scripts Configuration

This folder contains all configurable values for database scripts. **Update this config file instead of modifying script logic directly.**

## Configuration File

### `database.config.js`

The single source of truth for all database script configurations.

## What Can Be Configured

### 1. Schema Configuration

**Schemas are classified into types:**

- `STATIC`: Reference data schemas (safe to reset in dev)
- `DYNAMIC`: User data schemas (NEVER reset in production)
- `PRESENTATION`: Views and functions (safe to recreate)
- `ALL_CUSTOM`: All custom application schemas

**To add a new schema:**

```javascript
export const SCHEMA_TYPES = {
  STATIC: ["dex", "meta", "your_new_static_schema"], // Add here
  DYNAMIC: ["gameplay"],
  PRESENTATION: ["views"],
  ALL_CUSTOM: ["dex", "meta", "gameplay", "views", "your_new_schema"], // And here
};
```

### 2. Protected Tables

Tables that should NEVER be truncated without explicit confirmation.

**To add a protected table:**

```javascript
export const PROTECTED_TABLES = [
  "gameplay.plays",
  "gameplay.team",
  "gameplay.progress",
  "gameplay.pokemon_caught",
  "public.users",
  "your_schema.your_protected_table", // Add here
];
```

### 3. Migration Folders

Define migration folder structure and execution order.

**To add a new migration folder:**

```javascript
export const MIGRATION_FOLDERS = {
  PUBLIC: "001_public_tables",
  STATIC: "002_static_tables",
  DYNAMIC: "003_dynamic_tables",
  VIEWS: "004_views",
  YOUR_NEW: "005_your_new_folder", // Add here
};

// Add display info for the folder
export const MIGRATION_FOLDER_INFO = {
  // ... existing folders ...
  "005_your_new_folder": {
    name: "Your Folder Name",
    description: "Description of what this folder contains",
    emoji: "🔷",
  },
};
```

⚠️ **Important**: Migration order is determined by folder names (001*, 002*, etc). The scripts will automatically pick up and run folders in alphabetical order.

### 4. Required Schemas

Schemas that must exist for the app to function properly.

**To change required schemas:**

```javascript
export const REQUIRED_SCHEMAS = SCHEMA_TYPES.ALL_CUSTOM; // Or customize
```

### 5. Seed Configuration

Configure seed file directory structure.

**To change seed folder structure:**

```javascript
export const SEED_CONFIG = {
  baseDir: "seeds", // Main seed folder name
  approvedDir: "approved", // Subdirectory for approved seeds
};
```

### 6. Materialized Views

Configure which materialized views to manage.

**To add a new materialized view:**

```javascript
export const MATERIALIZED_VIEWS = [
  {
    name: "views.mv_dashboard_generation_metadata",
    description: "Generation metadata with games and regions",
    supportsConcurrent: true, // true if view has unique index
    estimatedRows: "< 20",
  },
  // Add your new view:
  {
    name: "views.mv_your_view_name",
    description: "What your view does",
    supportsConcurrent: false, // Set based on your view
    estimatedRows: "~1000", // Approximate row count
  },
];
```

### 7. System Schemas

Schemas to exclude from database operations (Supabase/Postgres internals).

**To add a system schema to exclude:**

```javascript
export const SYSTEM_SCHEMAS = new Set([
  "information_schema",
  "public",
  "auth",
  // ... existing schemas ...
  "your_system_schema", // Add here if needed
]);
```

### 8. Timeouts

Configure query timeouts for different operations.

**To adjust timeouts:**

```javascript
export const TIMEOUTS = {
  statement: 30000, // 30 seconds for individual statements
  migration: 60000, // 60 seconds for migration files
};
```

## How Scripts Use This Config

All scripts import from `./config/database.config.js`:

```javascript
import { SCHEMA_TYPES, PROTECTED_TABLES } from "./config/database.config.js";
```

When you update the config, **all scripts automatically use the new values**. No need to modify script logic.

## Best Practices

1. **Document changes**: Add comments explaining why you changed values
2. **Test after changes**: Run `npm run db:validate` to verify configuration
3. **Keep it organized**: Follow the existing structure and naming conventions
4. **Version control**: Commit config changes with clear commit messages
5. **Review impacts**: Consider what scripts will be affected by your changes

## Example: Adding a New Schema Type

Let's say you want to add a new "analytics" schema:

1. **Update SCHEMA_TYPES:**

```javascript
export const SCHEMA_TYPES = {
  STATIC: ["dex", "meta"],
  DYNAMIC: ["gameplay"],
  PRESENTATION: ["views"],
  ANALYTICS: ["analytics"], // New type
  ALL_CUSTOM: ["dex", "meta", "gameplay", "views", "analytics"],
};
```

2. **Add migration folder (if needed):**

```javascript
export const MIGRATION_FOLDERS = {
  PUBLIC: "001_public_tables",
  STATIC: "002_static_tables",
  DYNAMIC: "003_dynamic_tables",
  VIEWS: "004_views",
  ANALYTICS: "005_analytics_tables", // New folder
};

export const MIGRATION_FOLDER_INFO = {
  // ... existing ...
  "005_analytics_tables": {
    name: "Analytics Tables",
    description: "Analytics and reporting data",
    emoji: "📊",
  },
};
```

3. **Test the changes:**

```bash
npm run db:validate
npm run db:status
```

That's it! All scripts now know about your analytics schema.

## Need Help?

- Check script output for configuration-related errors
- Review existing values in `database.config.js` for examples
- Test configuration changes in development first
- Refer to script documentation in `database/scripts/README.md`
