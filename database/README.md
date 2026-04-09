# Database Layer

PostgreSQL via Supabase. Migrations define schema, seeds fill reference data, indexes optimize queries.

---

## Structure Philosophy

| Layer          | Directory        | Purpose                                                    |
| -------------- | ---------------- | ---------------------------------------------------------- |
| **Scripts**    | `01_scripts/`    | Tooling — commands, config, helpers, verification          |
| **Migrations** | `02_migrations/` | Schema definitions — tables, enums, UNIQUE indexes, RLS    |
| **Seeds**      | `03_seeds/`      | Curated static data — reference tables, tracking structure |
| **Indexes**    | `04_indexes/`    | Secondary performance indexes — applied after seeding      |

Migrations define **what exists**. Seeds fill **what's true**. Indexes optimize **what's queried**. Gameplay stores **what users do**.

### Folder Structure

```
database/
├── 01_scripts/
│   ├── commands/               Entry points only (thin wrappers)
│   │   ├── db-clean.js         Truncate tables by category
│   │   ├── db-index.js         Create/drop secondary indexes
│   │   ├── db-migrate.js       Run migrations
│   │   ├── db-reset.js         Drop + re-migrate by category
│   │   ├── db-seed.js          Run seed files
│   │   ├── db-status.js        Show database state
│   │   └── db-verify.js        Run verification suite
│   ├── config/
│   │   └── database.config.js  Central configuration
│   ├── helpers/                Reusable logic (never run directly)
│   │   ├── cli.js              Flag parsing, prompts
│   │   ├── db.js               PG client, introspection
│   │   ├── db-operations.js    Schema/table operations
│   │   ├── env.js              Environment loading
│   │   ├── logger.js           Colored console output
│   │   ├── migration-operations.js  Migration discovery/execution
│   │   └── sql-runner.js       SQL file reading/execution
│   └── verify/
│       └── verify-seeds.js     FK integrity, slug consistency
├── 02_migrations/
│   ├── 01_public_tables/       Auth functions + user profiles
│   ├── 02_reference_tables/    All reference data tables
│   ├── 03_tracking_tables/     Tracking system
│   ├── 04_gameplay_tables/     User gameplay tables with RLS
│   └── 05_views/               Standard views
├── 03_seeds/
│   ├── 01_public_seeds/
│   ├── 02_reference_seeds/     Reference data (species, moves, items, etc.)
│   ├── 03_tracking_seeds/      Tracking structure (items, badges, opponents)
│   └── 04_gameplay_seeds/      Play statuses
└── 04_indexes/
    ├── 01_public_indexes.sql
    ├── 02_reference_indexes.sql
    ├── 03_tracking_indexes.sql
    └── 04_gameplay_indexes.sql
```

---

## Commands

### Atomic Commands

| Command                   | Description                                       |
| ------------------------- | ------------------------------------------------- |
| `db:status`               | Show database state (schemas, tables, row counts) |
| `db:migrate`              | Run all migrations                                |
| `db:migrate:reference`    | Run reference migrations only                     |
| `db:migrate:tracking`     | Run tracking migrations only                      |
| `db:migrate:gameplay`     | Run gameplay migrations only                      |
| `db:seed`                 | Run all seed files                                |
| `db:seed:reference`       | Run reference seeds only                          |
| `db:seed:tracking`        | Run tracking seeds only                           |
| `db:seed:gameplay`        | Run gameplay seeds only                           |
| `db:index`                | Create all secondary indexes                      |
| `db:index:reference`      | Create reference indexes only                     |
| `db:index:tracking`       | Create tracking indexes only                      |
| `db:index:gameplay`       | Create gameplay indexes only                      |
| `db:index:drop`           | Drop all secondary indexes                        |
| `db:index:drop:reference` | Drop reference secondary indexes only             |
| `db:index:drop:tracking`  | Drop tracking secondary indexes only              |
| `db:index:drop:gameplay`  | Drop gameplay secondary indexes only              |
| `db:clean`                | Truncate all category tables                      |
| `db:clean:reference`      | Truncate reference + downstream                   |
| `db:clean:tracking`       | Truncate tracking + gameplay                      |
| `db:clean:gameplay`       | Truncate gameplay tables only                     |
| `db:reset`                | Full reset: drop all → migrate                    |
| `db:reset:reference`      | Drop reference + downstream → migrate             |
| `db:reset:tracking`       | Drop tracking + gameplay → migrate                |
| `db:reset:gameplay`       | Drop gameplay → migrate                           |
| `db:verify`               | Run verification suite                            |

### Common Workflows

**Full rebuild** (nuclear option):

```bash
npm run db:reset:force
npm run db:seed:force
npm run db:index
```

**Reseed tracking only** (most common during development):

```bash
npm run db:index:drop:tracking
npm run db:clean:tracking
npm run db:seed:tracking
npm run db:index:tracking
```

**Reseed reference** (heavy — rebuilds everything downstream):

```bash
npm run db:index:drop
npm run db:clean:reference
npm run db:seed:reference
npm run db:seed:tracking
npm run db:index
```

---

## Category System

Three categories with dependency ordering:

| Category    | Schema      | Depends On              | Cascade Reset Drops                     |
| ----------- | ----------- | ----------------------- | --------------------------------------- |
| `reference` | `reference` | —                       | reference + tracking + gameplay + views |
| `tracking`  | `tracking`  | `reference`             | tracking + gameplay + views             |
| `gameplay`  | `gameplay`  | `reference`, `tracking` | gameplay + views                        |

**Rule**: resetting a category always resets downstream dependents.

---

## Index Strategy

Indexes are split between migrations and `04_indexes/`:

| Location          | What lives there                             | When created                   |
| ----------------- | -------------------------------------------- | ------------------------------ |
| **Migrations**    | `UNIQUE` constraints, partial unique indexes | During `db:migrate`            |
| **`04_indexes/`** | FK lookups, composite sorts, query paths     | After `db:seed` via `db:index` |

**Why separated**: Secondary indexes cause write amplification during bulk inserts. Dropping them before seeding, then recreating after, reduces Supabase Disk IO by ~50% for large reference tables (learnsets: ~500K rows, availability: ~20K rows).

---

## Schemas

| Schema      | Purpose                       | RLS |
| ----------- | ----------------------------- | --- |
| `public`    | Auth functions, user profiles | No  |
| `reference` | Canonical reference data      | No  |
| `tracking`  | Game tracking structure       | No  |
| `gameplay`  | User-owned gameplay data      | Yes |
| `views`     | Read-only presentation layer  | No  |

DLC version groups set `parent_version_group_id` to the base game VG. No fake DLC game rows in `reference.games` — games table contains real games only.

---

## Naming Conventions

```
idx_{table}_{column}              -- secondary index (in 04_indexes/)
uq_{table}_{description}          -- unique partial index (in migrations)
{NNN}_{action}_{schema}_{table}_table.sql  -- migration file
{NNN}_{entity}_{scope}.sql        -- seed file
```

---

## Script Rules

| Rule                | Detail                                                |
| ------------------- | ----------------------------------------------------- |
| **helpers/**        | Reusable logic only — never run directly              |
| **commands/**       | Entry points only — thin wrappers that call helpers   |
| **verify/**         | Data validation only — exported functions, no CLI     |
| **No duplication**  | Shared logic lives in one helper, imported everywhere |
| **Config-driven**   | All constants in `database.config.js`                 |
| **Minimal logging** | Use `logger.*` methods, no raw `console.log`          |

---

## DLC Model

DLC expansions are modeled as version groups, not games:

1. Base game VG: `swsh` (parent = NULL)
2. DLC VG: `swsh-ioa` (parent = `swsh`)
3. `play_optional_version_groups` tracks which DLCs a user has opted into
4. Effective VGs for a play = base VG UNION opted-in DLC VGs
5. Availability/learnset files for DLC VGs contain **only additions** over the base

---

## Further Reference

See [CONVENTIONS.md](CONVENTIONS.md) for detailed rules on file headers, row comments, ID strategy, style, and schema responsibilities.
