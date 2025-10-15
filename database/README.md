# 🗄️ Pokemon Tracker Database

This directory contains database setup, migrations, and seed data for the Pokemon Tracker application.

## 🎯 Data Philosophy

We provide **historically accurate** Pokemon data with modern automation:

- **Manual Curation**: Pokemon stats and relationships manually verified for accuracy
- **PokeAPI Integration**: Official moves and abilities data automatically fetched
- **Generation-Specific**: Each generation maintains its original mechanics and data
- **Authentic Experience**: Matches how the games actually worked when released

## 📁 Structure

```
database/
├── scripts/                                  # Database management scripts (organized)
│   ├── db-test.js                            # Test database connection
│   ├── db-setup.js                           # Create database schemas & tables
│   ├── db-seed.js                            # Populate with Pokemon data
│   ├── db-reset.js                           # ⚠️ DANGER: Complete database reset
│   ├── db-cleanup.js                         # ⚠️ DANGER: Clear all data, keep structure
│   └── db-cleanup-static.js               # Clear reference data, preserve user data
├── migrations/                               # Database schema files (in dependency order)
│   ├── 001_create_schemas.sql
│   ├── 002_create_core_meta_tables.sql
│   ├── 003_create_dex_tables.sql
│   ├── 004_create_pokemon_learnsets.sql
│   ├── 005_create_gameplay_tables.sql        # Fixed: Gameplay tables
│   ├── 006_create_meta_progress_tables.sql   # Fixed: Progress tables
│   └── 007_create_meta_other_tables.sql
├── seed/                                     # Pokemon data and static content
└── helpers/                                  # Database utility functions
```

## 🚀 Quick Start

```bash
# 1. Test your database connection
npm run db:test

# 2. Create database structure
npm run db:setup

# 3. Populate with Pokemon data
npm run db:seed
```

## 📋 Safe Scripts (Available in package.json)

| Script       | Command            | Description                |
| ------------ | ------------------ | -------------------------- |
| **db:test**  | `npm run db:test`  | Test database connection   |
| **db:setup** | `npm run db:setup` | Create schemas and tables  |
| **db:seed**  | `npm run db:seed`  | Populate with Pokemon data |

## ⚠️ Dangerous Scripts (Manual execution only)

These scripts are **NOT** included in package.json for safety. Run them manually only when needed:

| Script                | Command                                      | Description                                     |
| --------------------- | -------------------------------------------- | ----------------------------------------------- |
| **db-reset**          | `node database/scripts/db-reset.js`          | 🔥 Delete ALL schemas (10s countdown)           |
| **db-cleanup**        | `node database/scripts/db-cleanup.js`        | 🧹 Clear all data, keep structure (10s)         |
| **db-cleanup-static** | `node database/scripts/db-cleanup-static.js` | 🎯 Clear reference data, preserve gameplay (5s) |

### 🛡️ Safety Features

- **Countdown timers**: 5-10 seconds to cancel with Ctrl+C
- **Clear warnings**: Multiple warnings about data loss
- **Preserved user data**: `db-cleanup-static` preserves gameplay schema

## 🔧 Prerequisites

1. **Environment Variables** in `.env.local`:

   ```bash
   SUPABASE_DB_URL=postgresql://postgres.[project]:[password]@aws-0-[region].pooler.supabase.com:6543/postgres
   SUPABASE_DB_PASSWORD=your_database_password
   ```

2. **Get these from**: Supabase Dashboard → Settings → Database → "Connection string"

## 📊 Database Schemas

### **`dex`** - Pokemon Reference Data

- `types` - All 18 Pokemon types
- `pokemon_base` - Pokemon with generation-accurate stats
- `moves` - 919 moves from PokeAPI (all generations)
- `abilities` - 367 abilities from PokeAPI (Gen 3+)
- `natures` - Stat-affecting natures (Gen 3+)
- `egg_groups` - Breeding compatibility groups
- `pokemon_learnsets` - Move learning relationships

### **`meta`** - Game Metadata

- `generations` - Pokemon generations (1-9)
- `regions` - Game regions (Kanto, Johto, etc.)
- `games` - Individual Pokemon games
- `progress_categories` & `progress_items` - Progress tracking templates

### **`gameplay`** - User Data

- `plays` - User playthroughs/challenges
- `team_pokemon` - Team members with movesets
- `progress` - Completed objectives

## 🎮 What's Included

### Pokemon Data (Generations 1-3):

- ✅ **151 Gen 1 Pokemon** - Original Red/Blue/Yellow stats
- ✅ **100 Gen 2 Pokemon** - Gold/Silver/Crystal additions
- ✅ **135 Gen 3 Pokemon** - Ruby/Sapphire/Emerald roster

### Official Move & Ability Data:

- ✅ **919 Moves** - All moves across all generations (PokeAPI)
- ✅ **367 Abilities** - All abilities from Gen 3+ (PokeAPI)
- ✅ **Accurate Stats** - Power, accuracy, PP, damage class, priority

### Game Structure:

- ✅ **18 Pokemon Types** - Complete type system
- ✅ **9 Generations** - All mainline Pokemon generations
- ✅ **25 Natures** - Stat-modifying natures (Gen 3+)
- ✅ **15 Egg Groups** - Breeding compatibility

## 🔧 Troubleshooting

### Connection Issues:

```bash
# Test your connection first
npm run db:test
```

**Common fixes**:

- Verify `.env.local` has correct `SUPABASE_DB_URL` and `SUPABASE_DB_PASSWORD`
- Use the "Transaction pooler" connection string from Supabase
- Ensure your Supabase project is active (not paused)

### Schema Issues:

```bash
# Reset and start fresh if needed (⚠️ 10 second countdown)
npm run db:reset
npm run db:setup
npm run db:seed
```

### Manual Setup:

If automation fails, copy `complete-setup.sql` content into Supabase SQL Editor.

## 🛡️ Safety Features

- **Database Reset Protection**: 10-second countdown with clear warnings
- **Connection Validation**: All scripts test connection before proceeding
- **Error Handling**: Clear error messages with troubleshooting tips
- **Environment Validation**: Checks for required credentials before running

## 🚀 Development

The database uses modern PostgreSQL features:

- **UUID primary keys** for user data
- **Foreign key constraints** for data integrity
- **Proper indexing** for performance
- **Row Level Security** ready for multi-user access
- **TypeScript-friendly** schema design
- **Dynamic schema counting** for accurate reporting
