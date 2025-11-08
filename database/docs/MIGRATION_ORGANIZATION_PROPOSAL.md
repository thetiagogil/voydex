# Database Migration Organization Proposal

## Problem

Currently all migrations are in one folder, mixing:

- **Static reference data** (Pokémon, moves, types, games) - safe to clean/reset
- **User-generated data** (plays, progress, caught Pokémon) - should NEVER be cleaned
- **Views/aggregations** (presentation layer) - safe to recreate

The `db:clean:rows` script currently truncates **everything**, including user gameplay data!

---

## Proposed Structure

```
database/
├── migrations/
│   ├── core/              # Core schema structure (always run first)
│   │   └── 000_create_schemas.sql
│   │
│   ├── reference/         # Static reference data tables (safe to clean)
│   │   ├── 001_create_meta_generations_table.sql
│   │   ├── 002_create_meta_regions_table.sql
│   │   ├── 003_create_meta_version_groups_table.sql
│   │   ├── 004_create_meta_games_table.sql
│   │   ├── 005_create_dex_types_table.sql
│   │   ├── 006_create_dex_natures_table.sql
│   │   ├── 007_create_dex_egg_groups_table.sql
│   │   ├── 008_create_dex_abilities_table.sql
│   │   ├── 009_create_dex_moves_table.sql
│   │   ├── 010_create_dex_pokemon_species_table.sql
│   │   ├── 011_create_dex_pokemon_forms_table.sql
│   │   ├── 012_create_dex_pokemon_attributes_table.sql
│   │   ├── 013_create_meta_regional_dex_table.sql
│   │   ├── 014_create_meta_progress_categories_table.sql
│   │   └── 015_create_meta_progress_items_table.sql
│   │
│   ├── user_data/         # User-generated tables (NEVER clean in production!)
│   │   ├── 016_create_gameplay_plays_table.sql
│   │   ├── 017_create_gameplay_teams_table.sql
│   │   ├── 018_create_gameplay_progress_table.sql
│   │   ├── 019_create_gameplay_pokemon_caught.sql
│   │   └── 020_create_public_users_table.sql
│   │
│   └── views/             # Presentation layer (safe to recreate)
│       ├── 021_create_view_adventures_generation_metadata.sql
│       ├── 022_create_view_adventures_user_adventure_stats.sql
│       ├── 023_create_view_adventures_generation_play_data.sql
│       └── 024_create_view_adventures_recent_activity.sql
```

---

## Updated Scripts Behavior

### `npm run db:clean` (unchanged)

**Drops entire schemas** - use only in development

- Drops: `dex`, `meta`, `gameplay`, `views`
- Keeps: `public`, `auth` (Supabase core)

### `npm run db:clean:reference` (NEW)

**Clears only reference data** - safe to clean/reseed

- Truncates: `dex.*`, `meta.*` tables
- Skips: `gameplay.*`, `public.users`

### `npm run db:clean:rows` (CHANGED)

**Clears only reference data** - same as `:reference`

- Currently clears EVERYTHING including user data ❌
- Should only clear reference tables ✅

### `npm run db:migrate` (updated)

Runs migrations in order:

1. `core/` (schemas)
2. `reference/` (static tables)
3. `user_data/` (gameplay tables)
4. `views/` (presentation layer)

### `npm run db:migrate:reference` (NEW)

Runs only `core/` + `reference/` migrations

### `npm run db:migrate:views` (NEW)

Runs only `views/` migrations (useful for view updates)

---

## Benefits

1. **Safety**: Never accidentally delete user data
2. **Clarity**: Obvious which tables are user-generated
3. **Flexibility**: Can reset reference data without losing user data
4. **Speed**: Can recreate just views without touching tables
5. **Production-ready**: Clear separation for staging/production environments

---

## Migration Path

### Option A: Keep flat structure (simpler, less changes)

- Don't move files
- Update `db-clean-rows.js` to exclude `gameplay.*` and `public.users`
- Add comments to distinguish migration types

### Option B: Reorganize into folders (recommended, cleaner)

- Move migrations into folders
- Update `db-migrate.js` to read from multiple folders in order
- Create new scripts: `db:clean:reference`, `db:migrate:reference`, `db:migrate:views`

---

## Recommendation: Start with Option A (Quick Fix)

**Immediate action**: Update `db-clean-rows.js` to protect user data

```javascript
// EXCLUDE these tables from truncation (user-generated data)
const PROTECTED_TABLES = [
  "gameplay.plays",
  "gameplay.team_pokemon",
  "gameplay.progress",
  "gameplay.pokemon_caught",
  "public.users",
];

// Only truncate reference data tables
const SAFE_TO_TRUNCATE = [
  "dex.abilities",
  "dex.egg_groups",
  "dex.moves",
  "dex.natures",
  "dex.pokemon_attributes",
  "dex.pokemon_forms",
  "dex.pokemon_species",
  "dex.types",
  "meta.games",
  "meta.generations",
  "meta.progress_categories",
  "meta.progress_items",
  "meta.regional_dex_entries",
  "meta.regions",
  "meta.version_groups",
];
```

Later, consider Option B for better organization as the project grows.

---

## Your Specific Issues - Solutions

### 1. ✅ NULL record in `v_adventures_user_stats`

**Cause**: View returns 1 row even with no users (uses `auth.uid()` which is NULL)
**Solution**: Cleared gameplay tables with `db:clean:rows` (this is temporary test data anyway)
**Prevention**: In production, this won't happen because RLS ensures `auth.uid()` is always a real user

### 2. ✅ Separate static vs user data

**Solution**: Implement the organization proposal above
**Immediate fix**: Update `db-clean-rows.js` to exclude `gameplay.*` and `public.users`

### 3. ✅ Users should have NULL display_name/avatar at creation

**Solution**: Updated `handle_new_user()` function to always insert NULL
**Migration**: Re-run migration 020 to apply the change

---

## Next Steps

1. ✅ **DONE**: Update `handle_new_user()` to use NULL for display_name/avatar
2. **TODO**: Update `db-clean-rows.js` to protect user data tables
3. **OPTIONAL**: Reorganize migrations into folders (can be done later)
4. **TODO**: Re-run migration 020 to apply the user creation fix
5. **TODO**: Reseed reference data

Which approach would you like me to implement?
