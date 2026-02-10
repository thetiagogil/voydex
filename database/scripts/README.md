# Database Scripts

Clean, professional database management scripts for the PokéTracker application.

## 🎯 Configuration First!

**All configurable values are in `config/database.config.js`**

- Schema definitions
- Protected tables
- Migration folders
- Materialized views
- Seed folder locations

**Update the config file instead of modifying scripts directly!** See `config/README.md` for details.

## Overview

This directory contains essential scripts for database operations:

- **Clean scripts**: Drop schemas or truncate tables
- **Migration scripts**: Run database migrations
- **Utility scripts**: Status, validation, seeding

All scripts follow a consistent pattern:

1. Load environment and validate
2. Analyze impact of operation
3. Show clear plan to user
4. Confirm before destructive operations
5. Execute with progress tracking
6. Report results with next steps

## Scripts

### Clean Scripts

#### `db-clean-all.js` ⚠️ DANGER

Drops ALL custom schemas (dex, meta, gameplay, views). Deletes user data. Development only.

```bash
node database/scripts/db-clean-all.js
```

#### `db-clean-static.js`

Drops static reference schemas (dex, meta, views). Preserves user gameplay data.

```bash
node database/scripts/db-clean-static.js
```

#### `db-clean-all-rows.js` ⚠️ DANGER

Truncates ALL tables. Deletes user data. Development only.

```bash
node database/scripts/db-clean-all-rows.js
```

#### `db-clean-static-rows.js`

Truncates tables in static schemas (dex, meta). Preserves gameplay data and views.

```bash
node database/scripts/db-clean-static-rows.js
```

### Migration Scripts

#### `db-migrate-all.js`

Runs all migrations in correct order:

1. Public tables (user profiles)
2. Static tables (dex, meta)
3. Dynamic tables (gameplay)
4. Views (presentation layer)

```bash
node database/scripts/db-migrate-all.js
```

### Utility Scripts

#### `db-status.js`

Shows current database structure, schemas, tables, and row counts.

```bash
node database/scripts/db-status.js
```

#### `db-info.js`

Comprehensive database information with multiple output modes:

```bash
# Full summary (all sections)
node database/scripts/db-info.js

# Tables only with row counts
node database/scripts/db-info.js --tables

# Views only
node database/scripts/db-info.js --views

# Size statistics
node database/scripts/db-info.js --sizes

# Data summary (key table counts)
node database/scripts/db-info.js --data
```

#### `db-validate.js`

Validates database integrity, checks required schemas and migration structure.

```bash
node database/scripts/db-validate.js
```

#### `db-refresh-views.js`

Drops and recreates all views from migration files:

```bash
# Interactive mode
node database/scripts/db-refresh-views.js

# Auto-confirm
node database/scripts/db-refresh-views.js --y
```

#### `db-seed.js`

Interactive seed file runner. Choose specific file or run all.

```bash
# Interactive mode
node database/scripts/db-seed.js

# Run specific file
node database/scripts/db-seed.js 001_seed_types.sql

# Run all files
node database/scripts/db-seed.js all
```

#### `db-migrate.js`

Interactive single-file migration runner. Useful for testing individual migrations.

```bash
# Interactive mode
node database/scripts/db-migrate.js

# Run specific file
node database/scripts/db-migrate.js 002_static_tables/001_create_types_table.sql

# Run all (same as db-migrate-all.js)
node database/scripts/db-migrate.js all
```

#### `refresh-materialized-views.js`

Refresh materialized views manually. Configure views in the script.

```bash
# Refresh all views
node database/scripts/refresh-materialized-views.js

# Refresh specific view
node database/scripts/refresh-materialized-views.js --view=views.mv_dashboard_generation_metadata

# Use CONCURRENT (non-blocking)
node database/scripts/refresh-materialized-views.js --concurrent
```

## Flags

### Global Flags

- `--force` or `-f`: Skip confirmation prompts
- `--sql`: Show SQL statements before execution
- `--y`: Auto-confirm (seed script only)

Example:

```bash
node database/scripts/db-clean-static.js --force
```

## Typical Workflows

### Fresh Database Setup

```bash
# 1. Run migrations
node database/scripts/db-migrate-all.js

# 2. Seed reference data
node database/scripts/db-seed.js all

# 3. Validate
node database/scripts/db-validate.js
```

### Refresh Static Data

```bash
# 1. Clean static schemas
node database/scripts/db-clean-static.js

# 2. Run migrations (recreate schemas)
node database/scripts/db-migrate-all.js

# 3. Reseed data
node database/scripts/db-seed.js all
```

### Refresh Static Data (Preserve Structure)

```bash
# 1. Truncate static tables only
node database/scripts/db-clean-static-rows.js

# 2. Reseed data
node database/scripts/db-seed.js all
```

### Check Database Health

```bash
# Show current state
node database/scripts/db-status.js

# Show comprehensive info
node database/scripts/db-info.js

# Validate integrity
node database/scripts/db-validate.js
```

### Refresh Views After Changes

```bash
# Recreate all views from migration files
node database/scripts/db-refresh-views.js --y
```

## Helper Modules

All business logic is in the `helpers/` folder:

- **env.js**: Environment configuration loading
- **logger.js**: Consistent, professional logging
- **cli.js**: Interactive prompts and confirmations
- **db.js**: Database connection management
- **sql-runner.js**: SQL file execution
- **db-operations.js**: Schema and table operations
- **migration-operations.js**: Migration workflow

## Environment Variables

Required in `.env.local` or `.env`:

```
SUPABASE_DB_URL=postgresql://user:pass@host:port/database
```

Optional:

```
SHOW_SQL=1              # Show SQL statements
```

## Error Handling

All scripts:

- ✅ Validate environment before running
- ✅ Show clear error messages
- ✅ Exit with proper status codes
- ✅ Use try-catch for all operations
- ✅ Clean up database connections

## Logging

All output uses the logger utility:

- ✅ No raw console.log or console.error
- ✅ Consistent formatting across scripts
- ✅ Professional appearance
- ✅ Progress tracking for long operations
- ✅ Color-coded status messages

## Development Notes

### Adding a New Script

1. Import required helpers
2. Follow the standard pattern (analyze → plan → confirm → execute → report)
3. Use logger for all output
4. Add try-catch error handling
5. Exit with proper status code
6. Update this README

### Modifying Helpers

Helpers contain business logic. Scripts should be simple orchestration. If a script is getting complex, move logic to a helper.

### Testing

Always test scripts in a development environment first. Use `--force` flag carefully.

## Migration Structure

Migrations are organized in numbered folders:

```
migrations/
  001_public_tables/      # User profiles (public schema)
  002_static_tables/      # Reference data (dex, meta)
  003_dynamic_tables/     # User gameplay data
  004_views/              # Presentation layer
```

Files run alphabetically within each folder. Prefix with numbers for explicit ordering (e.g., `000_create_schema.sql`, `001_create_tables.sql`).

## Safety Features

### Protected Tables

The following tables are marked as protected and scripts will warn before affecting them:

- `gameplay.plays`
- `gameplay.team`
- `gameplay.progress`
- `gameplay.pokemon_caught`
- `public.users`

### Danger Warnings

Scripts that delete user data show prominent danger warnings with:

- ⚠️ Clear operation description
- 📋 List of what will be affected
- 🔥 Explicit confirmation required

### Impact Analysis

Before destructive operations, scripts analyze and display:

- Schemas affected vs. preserved
- Tables affected vs. preserved
- Warning level (safe / warning / danger)
- Whether user data is at risk

## Not Yet Implemented

The following scripts from `scripts_deprecated` have not been migrated yet:

### `db-import.js` and ETL Scripts

- **Purpose**: Interactive runner for PokeAPI ETL scripts
- **Location**: `scripts_deprecated/etl/` and `scripts_deprecated/config/`
- **Status**: Not migrated yet (ETL functionality preserved in deprecated folder)
- **Usage**: If needed, use from deprecated folder or migrate when ETL is required

These can be added to the new structure when needed by following the same pattern:

1. Copy config folder if needed
2. Copy/refactor ETL scripts with improved logging
3. Create new db-import.js following the clean pattern

---

**Note**: The old scripts folder has been renamed to `scripts_deprecated` and can be safely deleted once the new scripts are verified working. The ETL functionality is still available in the deprecated folder if needed.
