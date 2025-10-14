# Pokemon Tracker Database Setup

This directory contains all database migration scripts and manually curated seed data for the Pokemon Tracker application.

## Data Curation Philosophy

We manually curate all Pokemon data to ensure generation-specific historical accuracy:

- **Gen 1 Pokemon**: Original Red/Blue/Yellow stats including the single Special stat (no Special Attack/Defense split)
- **Generation-Accurate Moves**: Move lists reflect what was actually available in each generation
- **Historical Abilities**: Gen 1 had no abilities, Gen 2 introduced abilities, etc.
- **Period-Correct Types**: Original type effectiveness and Pokemon typing from each generation
- **Authentic Experience**: Matches the mechanics and data from the original games

This ensures players get an authentic experience that matches how the games actually worked when they were released.

## Structure

```
database/
├── migrations/           # Schema migration scripts
│   ├── 001_create_schemas.sql
│   ├── 002_create_core_meta_tables.sql
│   ├── 003_create_dex_tables.sql
│   ├── 004_create_pokemon_learnsets.sql
│   ├── 005_create_meta_progress_tables.sql
│   ├── 006_create_gameplay_tables.sql
│   └── run_all.sql
├── seed/                # Manually curated seed data
│   ├── 001_static_data_gen1.sql
│   ├── 002_pokemon_gen1.sql        # (Coming soon)
│   ├── 003_moves_gen1.sql         # (Coming soon)
│   └── 004_learnsets_gen1.sql     # (Coming soon)
├── helpers/             # Utility scripts
│   └── execute_sql.sql
└── migrate.js          # Migration runner script
```

## Running Setup

### Prerequisites

1. **Environment Variables**: Ensure these are set in your `.env.local`:

   ```
   NEXT_PUBLIC_SUPABASE_URL=your-supabase-url
   SUPABASE_SERVICE_ROLE_KEY=your-service-role-key
   ```

2. **Service Role Key**: You need the service role key (not anon key) for schema changes.

### Quick Setup

#### Option 1: Using setup scripts (Recommended)

```bash
# Windows
.\setup-db.bat

# Unix/Mac
./setup-db.sh
```

#### Option 2: Using npm script

```bash
npm run db:migrate
```

#### Option 3: Manual execution

```bash
# Run migrations
node database/migrate.js

# Then run seed files in Supabase SQL Editor or via psql
```

## Schema Overview

### `dex` schema - Pokemon Reference Data

- **pokemon**: Species and forms with generation-accurate stats
- **types**: Pokemon types with historical effectiveness
- **moves**: Pokemon moves with period-correct power/accuracy/PP
- **abilities**: Pokemon abilities (Gen 2+ only)
- **natures**: Stat-affecting natures (Gen 3+ only)
- **egg_groups**: Breeding groups
- Relationship tables linking the above

### `meta` schema - Game Metadata

- **generations**: Pokemon generations (I, II, III, etc.)
- **regions**: Game regions (Kanto, Johto, etc.)
- **version_groups**: Game version groups (Red/Blue, Gold/Silver, etc.)
- **games**: Individual Pokemon games linked to version groups
- **progress_categories/items**: Progress tracking templates
- **pokemon_availability**: Which Pokemon appear in which version groups

### `gameplay` schema - User Data

- **plays**: User's game playthroughs
- **team_pokemon**: Team members with movesets and stats
- **progress**: User's completed objectives

## Features

- ✅ **Historical Accuracy**: Generation-specific data ensures authentic gameplay
- ✅ **Row Level Security (RLS)**: Users can only access their own data
- ✅ **Performance Optimized**: Indexes for common queries
- ✅ **Data Integrity**: Foreign keys and constraints
- ✅ **Type Safety**: Designed for TypeScript integration
- ✅ **Flexible Teams**: Supports both current and planned teams
- ✅ **Progress Tracking**: Checkbox-style completion tracking

## Current Status

- ✅ **Database Schema**: Complete and tested
- ✅ **Gen 1 Static Data**: Games, types, version groups ready
- 🚧 **Gen 1 Pokemon Data**: In progress (151 Pokemon with original stats)
- 🚧 **Gen 1 Moves**: In progress (165 original moves)
- 🚧 **Gen 1 Learnsets**: In progress (original level-up and TM movesets)

## Troubleshooting

**Permission Errors**: Make sure you're using the service role key, not the anon key.

**Table Already Exists**: Drop and recreate schemas if needed:

```sql
DROP SCHEMA IF EXISTS dex CASCADE;
DROP SCHEMA IF EXISTS meta CASCADE;
DROP SCHEMA IF EXISTS gameplay CASCADE;
```

**Data Inconsistencies**: All data is manually curated and verified against original game sources.
