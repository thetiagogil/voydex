# Database Scripts Guide

## 📂 Migration Folder Structure

```
migrations/
├── 001_public_tables/          # User profiles (public schema)
│   └── 001_create_public_users_table.sql
│
├── 002_static_tables/          # Reference data (safe to reset)
│   ├── 000_create_meta_and_dex_schemas.sql
│   ├── 001-015_*.sql           # Meta & Dex tables
│
├── 003_dynamic_tables/         # User gameplay (NEVER reset in prod)
│   ├── 000_create_gameplay_schema.sql
│   ├── 001-004_*.sql           # Gameplay tables
│
└── 004_views/                  # Presentation layer (safe to recreate)
    ├── 000_create_views_schema.sql
    └── 001-004_*.sql           # View definitions
```

---

## 🧹 Cleaning Scripts

### Full Reset (Development Only)

#### `npm run db:clean:all`

**Drops ALL custom schemas**

- Deletes: `dex`, `meta`, `gameplay`, `views` schemas
- ⚠️ **WARNING**: Destroys ALL data including user progress!
- Use case: Fresh start in development

```bash
npm run db:clean:all          # Interactive confirmation
npm run db:clean:all -- --y   # Auto-confirm
npm run db:clean:all -- --dry # Preview only
```

---

### Partial Reset (Development Safe)

#### `npm run db:clean:static`

**Drops only static/reference schemas**

- Deletes: `dex`, `meta`, `views` schemas
- Preserves: `gameplay` schema, `public.users`
- Use case: Reset reference data, keep user progress

```bash
npm run db:clean:static
npm run db:clean:static -- --y
npm run db:clean:static -- --dry
```

---

### Clear All Data (Keep Structure)

#### `npm run db:clean:all-rows`

**Truncates ALL tables**

- Clears data from: ALL custom schemas
- ⚠️ **WARNING**: Deletes ALL data including user progress!
- Keeps: Table structures, indexes, constraints
- Use case: Fresh data import while keeping structure

```bash
npm run db:clean:all-rows
npm run db:clean:all-rows -- --y
npm run db:clean:all-rows -- --dry
```

---

### Clear Static Data Only

#### `npm run db:clean:static-rows`

**Truncates only static/reference tables**

- Clears data from: `dex.*`, `meta.*`
- Preserves: `gameplay.*`, `public.users`
- Use case: Reseed reference data without touching user progress

```bash
npm run db:clean:static-rows
npm run db:clean:static-rows -- --y
npm run db:clean:static-rows -- --dry
```

#### `npm run db:clean:rows` (Legacy - Now Protected)

**Same as `db:clean:static-rows` but with protection**

- Originally cleared everything (dangerous!)
- Now has PROTECTED_TABLES list to prevent accidents
- Preserves: `gameplay.*`, `public.users`
- Use case: Backward compatibility

```bash
npm run db:clean:rows
```

---

## 🚀 Migration Scripts

### Run All Migrations

#### `npm run db:migrate:all`

**Runs migrations in order (excludes public tables)**

- Order: `002_static_tables` → `003_dynamic_tables` → `004_views`
- Skips: `001_public_tables` (manual Supabase setup)
- Use case: Initial database setup or full rebuild

```bash
npm run db:migrate:all
npm run db:migrate:all -- --y
```

#### `npm run db:migrate` (Legacy - Single File)

**Interactive migration runner**

- Choose specific file or run all (flat structure)
- Use case: Running individual migrations

```bash
npm run db:migrate                    # Interactive prompt
npm run db:migrate all                # Run all (old flat structure)
npm run db:migrate 001_create_*.sql   # Run specific file
```

---

## 🌱 Seeding Scripts

#### `npm run db:seed`

**Load reference data**

- Seeds: `dex.*`, `meta.*` tables
- Use case: After cleaning static data

```bash
npm run db:seed           # Interactive prompt
npm run db:seed all       # Run all seed files
```

---

## 🔄 View Management

#### `npm run db:refresh-views`

**Refresh materialized views**

- Refreshes: `views.mv_adventures_generation_metadata`
- Use case: After seeding or updating reference data

```bash
npm run db:refresh-views -- --y
npm run db:refresh-views -- --view=views.mv_adventures_generation_metadata --y
npm run db:refresh-views -- --concurrent --y
```

---

## 📊 Utility Scripts

#### `npm run db:status`

**Show database structure**

- Lists: All custom schemas and tables
- Use case: Verify what exists

```bash
npm run db:status
```

#### `npm run db:validate`

**Validate database integrity**

- Checks: Constraints, indexes, relationships
- Use case: Verify database health

```bash
npm run db:validate
```

---

## 🎯 Common Workflows

### Fresh Development Setup

```bash
# 1. Drop everything
npm run db:clean:all -- --y

# 2. Run all migrations
npm run db:migrate:all -- --y

# 3. Seed reference data
npm run db:seed all

# 4. Refresh views
npm run db:refresh-views -- --y

# 5. Verify
npm run db:status
```

### Reset Reference Data (Keep User Progress)

```bash
# 1. Drop static schemas
npm run db:clean:static -- --y

# 2. Recreate static tables and views
npm run db:migrate:all -- --y

# 3. Reseed reference data
npm run db:seed all

# 4. Refresh views
npm run db:refresh-views -- --y
```

### Update Reference Data Only

```bash
# 1. Clear static data (keeps structure)
npm run db:clean:static-rows -- --y

# 2. Reseed
npm run db:seed all

# 3. Refresh views
npm run db:refresh-views -- --y
```

### Add New View

```bash
# 1. Create migration file in 004_views/
# 2. Run just that view migration
npm run db:migrate 004_views/005_create_view_*.sql

# 3. If materialized, refresh it
npm run db:refresh-views -- --y
```

---

## 🔒 Production Safety

### ❌ NEVER Run in Production

- `db:clean:all`
- `db:clean:all-rows`
- `db:clean:static` (only if you know what you're doing)

### ✅ Safe for Production

- `db:migrate:all` (with proper testing!)
- `db:seed` (initial setup only)
- `db:refresh-views`
- `db:clean:static-rows` (only for reference data updates)

### 🛡️ Protected Tables

These tables are automatically protected by `db:clean:rows`:

- `gameplay.plays`
- `gameplay.team_pokemon`
- `gameplay.progress`
- `gameplay.pokemon_caught`
- `public.users`

---

## 📝 Script Comparison

| Script                 | Schemas Affected        | Data Loss          | User Data Safe? | Use Case        |
| ---------------------- | ----------------------- | ------------------ | --------------- | --------------- |
| `db:clean:all`         | All (drop)              | ⚠️ **Total**       | ❌ No           | Dev reset       |
| `db:clean:static`      | dex, meta, views (drop) | ⚠️ **Static only** | ✅ Yes          | Partial reset   |
| `db:clean:all-rows`    | All (truncate)          | ⚠️ **Total**       | ❌ No           | Keep structure  |
| `db:clean:static-rows` | dex, meta (truncate)    | ⚠️ **Static only** | ✅ Yes          | Reseed ref data |
| `db:clean:rows`        | Protected truncate      | ⚠️ **Static only** | ✅ Yes          | Legacy safe     |
| `db:migrate:all`       | All (create)            | ✅ None            | ✅ Yes          | Initial setup   |
| `db:seed`              | dex, meta (insert)      | ✅ None            | ✅ Yes          | Load ref data   |
| `db:refresh-views`     | views (refresh)         | ✅ None            | ✅ Yes          | Update agg data |

---

## 🔧 Flags

All cleaning and migration scripts support:

- `--y` : Skip confirmation prompts (auto-yes)
- `--dry` : Preview changes without executing

---

## 📚 Related Documentation

- [Migration Organization Proposal](./MIGRATION_ORGANIZATION_PROPOSAL.md) - Detailed proposal
- [Migration Completion Summary](./MIGRATION_COMPLETION_SUMMARY.md) - What's been done
- [Views Guide for Frontend Devs](./VIEWS_GUIDE_FOR_FRONTEND_DEVS.md) - How to work with views

---

## 🆘 Troubleshooting

### "No custom schemas found"

Run migrations first: `npm run db:migrate:all -- --y`

### "Protected tables skipped"

This is normal! It means user data is safe from `db:clean:rows`

### "Migration failed"

Check the error message. Common issues:

- Table already exists: Drop schema first or use `IF NOT EXISTS`
- Missing dependencies: Run migrations in order
- Syntax error: Check the SQL file

### Views returning NULL records

This is normal when there's no authenticated user. Views use `auth.uid()` which returns NULL when not logged in.

---

**Remember**: Always test in development before running any scripts in production!
