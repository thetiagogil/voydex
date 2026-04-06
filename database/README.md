# Database Layer

PostgreSQL via Supabase. 56 migrations, 563 seed files.

---

## Structure Philosophy

| Layer          | Purpose                                              | Schema                                   |
| -------------- | ---------------------------------------------------- | ---------------------------------------- |
| **Migrations** | Schema definitions — tables, enums, indexes, RLS     | `public`, `reference`, `gameplay`, `tracking` |
| **Seeds**      | Curated static data — reference tables, Pokémon data | `reference`, `gameplay`, `tracking`           |
| **Views**      | Read-only presentation layer                         | `views`                                  |

Migrations define **what exists**. Seeds fill **what's true**. Gameplay stores **what users do**. Views precompute **what's shown**.

### Folder Structure

```
database/
├── migrations/
│   ├── 01_public_tables/       Auth functions + user profiles (2)
│   ├── 02_reference_tables/         All reference data tables (27)
│   ├── 03_tracking_tables/     User gameplay tables with RLS (7)
│   ├── 04_gameplay_tables/     Tracking system (15)
│   └── 05_views/               Standard views (5)
├── scripts/
│   ├── config/                 Central configuration
│   │   └── database.config.js
│   ├── helpers/                Reusable logic (never run directly)
│   │   ├── cli.js              Flag parsing, prompts
│   │   ├── db.js               PG client, introspection
│   │   ├── db-operations.js    Schema/table operations
│   │   ├── env.js              Environment loading
│   │   ├── logger.js           Colored console output
│   │   ├── migration-operations.js  Migration discovery/execution
│   │   └── sql-runner.js       SQL file reading/execution
│   ├── commands/               Entry points only (thin wrappers)
│   │   ├── db-migrate.js       Run migrations
│   │   ├── db-seed.js          Run seed files
│   │   ├── db-reset.js         Drop + re-migrate
│   │   ├── db-status.js        Show database state
│   │   └── db-verify.js        Run verification suite
│   └── verify/                 Data validation scripts
│       ├── verify-seeds.js     FK integrity, slug consistency
│       ├── verify-availability.js  Coverage per VG
│       └── verify-learnsets.js Learnset integrity
└── seeds/
    ├── 01_public_seeds/              (empty)
    ├── 02_reference_seeds/
    │   ├── 01_base/                  Generations, regions, VGs, games, types, etc.
    │   ├── 02_abilities/             Per-generation ability lists
    │   ├── 03_moves/                 Per-generation move lists
    │   ├── 04_pokemon/               Species, forms, attributes (sub-folders)
    │   ├── 05_items/                 Per-generation item lists
    │   ├── 06_move_attributes/       Move mechanics (timeline model)
    │   ├── 07_pokedex/                 Per-VG pokedex definitions
    │   ├── 08_pokedex_entries/           Per-VG pokedex membership
    │   ├── 09_pokemon_availability/  Per-VG species availability
    │   ├── 10_move_availability/     Per-VG move availability
    │   ├── 11_item_availability/     Per-VG item availability
    │   └── 12_pokemon_learnsets/     Per-VG learnsets (134 files)
    ├── 03_gameplay_seeds/            Play statuses
    └── 04_tracking_seeds/            Tracking milestones, badges, opponents, items
```

---

## Naming Conventions

### General

- **snake_case** everywhere: tables, columns, indexes, enums, slugs.
- Column order: PK → FKs → data columns → booleans → timestamps.

### Columns

| Pattern                    | Example                             | Rule                                                |
| -------------------------- | ----------------------------------- | --------------------------------------------------- |
| `introduced_generation_id` | types, abilities, moves             | Always this order, never `generation_introduced_id` |
| `generation_start_id`      | pokemon_attributes, move_attributes | Timeline model start point                          |
| `parent_version_group_id`  | version_groups                      | DLC → base game link                                |
| `species_id` / `form_id`   | pokemon tables                      | Always reference both                               |
| `is_*`                     | `is_baby`, `is_default`             | Boolean flags                                       |
| `*_count`                  | `new_pokemon_count`                 | Precomputed counts                                  |

### Version Group Slugs

Abbreviated, lowercase, hyphenated for DLC:

| Games                | Slug       | Notes                |
| -------------------- | ---------- | -------------------- |
| Red/Blue             | `rb`       |                      |
| FireRed/LeafGreen    | `frlg`     |                      |
| HeartGold/SoulSilver | `hgss`     |                      |
| Black 2/White 2      | `b2w2`     |                      |
| Sword/Shield         | `swsh`     | Base game            |
| Isle of Armor        | `swsh-ioa` | DLC, parent = `swsh` |
| Crown Tundra         | `swsh-ct`  | DLC, parent = `swsh` |

DLC version groups set `parent_version_group_id` to the base game VG. No fake DLC game rows in `reference.games` — games table contains real games only.

### Indexes

```
idx_{table}_{column}              -- single column
idx_{table}_{col1}_{col2}         -- composite
uq_{table}_{description}          -- unique partial index
```

### Foreign Keys

Inline `REFERENCES` in `CREATE TABLE`. No explicit constraint names.

### Enums

```
reference.{descriptive_name}           -- e.g. reference.stat_name, reference.flavor_name
```

---

## Migration Rules

### File Format

One table per file. Numbered sequentially within each folder.

```
{NNN}_{action}_{schema}_{table}_table.sql
```

Examples:

- `000_create_common_functions.sql`
- `001_create_reference_generations_table.sql`
- `002_create_gameplay_plays_table.sql`

### Header Block

Every migration file starts with:

```sql
-- ============================================================================
-- {Type}: {schema}.{name}
-- {Description}
-- ============================================================================
```

### WHAT / WHY Comments

Use inline section comments for clarity:

```sql
-- Primary identification
slug VARCHAR(50) NOT NULL UNIQUE,

-- Relationships
generation_id INTEGER NOT NULL REFERENCES reference.generations(id),

-- Timestamps
created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
```

### Constraints

- `INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY` for auto-increment IDs
- `TIMESTAMPTZ NOT NULL DEFAULT NOW()` for all timestamps
- `NOT NULL` on everything unless NULL has genuine meaning
- `CHECK` constraints inline for simple, table-level for complex
- Booleans always `NOT NULL DEFAULT FALSE`

### Indexes

Created after the table in the same file. One `CREATE INDEX` per line.

### RLS

Applied **only** to gameplay tables:

- `ALTER TABLE ... ENABLE ROW LEVEL SECURITY`
- `ALTER TABLE ... FORCE ROW LEVEL SECURITY`
- Four policies: `{table}_select`, `{table}_insert`, `{table}_update`, `{table}_delete`
- Direct `auth.uid() = user_id` on `plays`
- `EXISTS (SELECT 1 FROM gameplay.plays WHERE ...)` on child tables

---

## Seed Rules

### Insert Pattern

All seeds use direct `INSERT INTO ... VALUES` with literal integer IDs:

```sql
INSERT INTO
    reference.table_name (id, col1, col2)
VALUES
    -- #001 Bulbasaur
    (1, 100, 'value'),
    -- #002 Ivysaur
    (2, 200, 'value');
```

- FK references use explicit integer IDs — no CTEs, no slug lookups, no subqueries
- IDs are deterministic and stable across all seed files
- Conflict handling: none — seeds fail loudly on constraint violations

### VALUES Blocks

One row per line. Per-Pokémon or per-entity block comments (`-- #NNN Name`) above each group.

### Seed Folders

2-digit prefix (`01_`–`13_`). Files within each folder use 3-digit prefixes matching the migration table sequence. Sub-folders use 3-digit prefixes within their parent domain.

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
| **Clear ownership** | Each file has a single responsibility                 |

---

## DLC Model

DLC expansions are modeled as version groups, not games:

1. Base game VG: `swsh` (parent = NULL)
2. DLC VG: `swsh-ioa` (parent = `swsh`)
3. `play_optional_version_groups` tracks which DLCs a user has opted into
4. Effective VGs for a play = base VG UNION opted-in DLC VGs
5. Availability/learnset files for DLC VGs contain **only additions** over the base

### Timeline Model

`pokemon_attributes` and `move_attributes` use composite keys with `generation_start_id`:

- One row per change point (not per generation)
- Query: `WHERE generation_start_id <= target_gen ORDER BY generation_start_id DESC LIMIT 1`
- Example: Tackle has power=35 in Gen 1, power=50 from Gen 5 onward (2 rows total)

---

## Further Reference

See [CONVENTIONS.md](CONVENTIONS.md) for detailed rules on file headers, row comments, ID strategy, style, and schema responsibilities.
