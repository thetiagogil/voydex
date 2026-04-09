# Database Conventions

Conventions for the Poketracker database layer. All SQL files follow these rules.

---

## Folder Structure

```
database/
├── 01_scripts/               Tooling layer
│   ├── commands/             Entry points (thin wrappers)
│   ├── config/               Central configuration
│   ├── helpers/              Reusable logic (never run directly)
│   └── verify/               Data validation scripts
├── 02_migrations/            Schema definitions
│   ├── 01_public_tables/
│   ├── 02_reference_tables/
│   ├── 03_tracking_tables/
│   ├── 04_gameplay_tables/
│   └── 05_views/
├── 03_seeds/                 Static curated data
│   ├── 01_public_seeds/
│   ├── 02_reference_seeds/
│   │   ├── 01_base/
│   │   ├── 02_abilities/
│   │   ├── 03_moves/
│   │   ├── 04_pokemon/
│   │   ├── 05_items/
│   │   ├── 06_move_attributes/
│   │   ├── 07_pokedex/
│   │   ├── 08_pokedex_entries/
│   │   ├── 09_pokemon_availability/
│   │   ├── 10_move_availability/
│   │   ├── 11_item_availability/
│   │   └── 12_pokemon_learnsets/
│   ├── 03_tracking_seeds/
│   └── 04_gameplay_seeds/
└── 04_indexes/               Secondary performance indexes
    ├── 01_public_indexes.sql
    ├── 02_reference_indexes.sql
    ├── 03_tracking_indexes.sql
    └── 04_gameplay_indexes.sql
```

---

## Naming Rules

### General

- **snake_case** everywhere: tables, columns, indexes, enums, slugs, files.
- Column order in CREATE TABLE: PK → FKs → data → booleans → timestamps.

### Migration Files

```
{NNN}_{action}_{schema}_{table}_table.sql
```

- `000` files create the schema or common functions
- Sequential numbering within each folder
- One table per file

### Seed Folders

- Top-level: `{NN}_{schema}_seeds/`
- Subdirectory: `{NN}_{domain}/` or `{NNN}_{entity}/`

### Seed Files

```
{NNN}_{entity}_{scope}.sql
```

Scope suffixes:

| Suffix                       | Meaning                                                 |
| ---------------------------- | ------------------------------------------------------- |
| `_genN`                      | Base generation data                                    |
| `_genN_changes`              | Entities modified in this generation (not new entities) |
| `_genN_not_default`          | Non-default forms only (Alolan, Mega, etc.)             |
| `_genN_{vg_slug}`            | Version-group-specific data                             |
| `_genN_{vg_slug}_exclusives` | Version exclusives within a VG                          |
| `_genN_{vg_slug}_partN`      | Review-size splits for large files                      |
| `_global`                    | Generation-independent data                             |

---

## File Headers

### Migration Header

```sql
-- ============================================================================
-- Table: schema.table_name
-- Description of the table's purpose.
-- ============================================================================
```

### Seed Header

Two-section boxed format. Every seed file starts with:

```sql
-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (data cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 1
-- Table: reference.pokemon_availability
-- Scope: version-group-specific (rb)
-- Pokemon: 129 (VG-wide)
```

- **Source section**: Primary source is mandatory. Secondary is optional.
- **File Scope section**: Table is mandatory. Generation, Scope, and context lines as appropriate.
- No blank line between the header and the `INSERT INTO` statement.

---

## Row Comments

### Per-Pokémon Block Comments

Used in dex_entries, pokemon_availability, learnsets, and other per-Pokémon data:

```sql
    -- #001 Bulbasaur
    (1, 1, 1, 100, 1),
    -- #002 Ivysaur
    (2, 1, 2, 200, 2),
```

- `#NNN` is the national dex number, zero-padded to 3 digits
- One comment per species block, placed on the line above the first row
- In learnset files, separates multi-row Pokémon blocks

### Per-Move Block Comments

Used in move_attributes and similar move-indexed data:

```sql
    -- #002 Karate Chop
    (2, 2, 7, 50, 100, 25, 0, 'physical'),
```

- `#NNN` is the move ID

### Section Comments in Migrations

```sql
-- Primary identification
slug VARCHAR(50) NOT NULL UNIQUE,

-- Relationships
generation_id INTEGER NOT NULL REFERENCES reference.generations(id),
```

### Comment Style

- All comments use SQL line comments (`--`). No `/* */` blocks.
- The `============` box format is reserved for file headers only.
- Comments go on the line above, never inline at the end of a line.

---

## Schemas

| Schema      | Purpose                       | RLS |
| ----------- | ----------------------------- | --- |
| `public`    | Auth functions, user profiles | No  |
| `reference` | All canonical reference data  | No  |
| `gameplay`  | User-owned gameplay data      | Yes |
| `tracking`  | Tracking system               | No  |
| `views`     | Read-only presentation layer  | No  |

---

## Seed Conventions

### Insert Pattern

All seeds use direct `INSERT INTO ... VALUES` with literal integer IDs:

```sql
INSERT INTO
    reference.table_name (col1, col2, col3)
VALUES
    (1, 100, 'value'),
    (2, 200, 'value');
```

- No CTEs, no subqueries, no slug resolution at seed time
- All FK references use explicit integer IDs
- IDs are deterministic and stable

### Conflict Handling

Seeds do not use `ON CONFLICT`. Inserts fail loudly on constraint violations.

- A conflict means the seed is wrong or the schema has a bug
- Both must be investigated, not silently ignored

### File Splitting

- One file per version group is the default
- If a file exceeds ~5,000 lines, split into `_partN` files
- Each part is a complete `INSERT INTO` statement

---

## ID Strategy

### Explicit Integer PKs

Tables with `id INTEGER PRIMARY KEY` use manually assigned IDs in seeds:

- Lookup tables (`generations`, `regions`, `types`, etc.): sequential from 1
- `abilities`: by national ability index
- `moves`: by national move index
- `pokemon_species`: by national dex number
- `pokemon_forms`: deterministic formula `species_id * 100 + form_offset`
- Sequential tables (`dexes`, `dex_entries`, `pokemon_availability`, etc.): sequential from 1

### Composite PKs

Tables with composite primary keys need no manual IDs:

- `pokemon_attributes`: `(species_id, form_id, generation_start_id)`
- `move_attributes`: `(move_id, generation_start_id)`
- `move_availability`: `(move_id, version_group_id)`
- `item_availability`: `(item_id, version_group_id)`
- `pokemon_learnsets`: `(species_id, form_id, move_id, version_group_id, learn_method_id)`

### pokemon_forms ID Scheme

`species_id * 100 + form_offset`

- Offset 0 = default form
- Offset 1, 2, ... = alternate forms in Bulbapedia order
- Example: Charizard (species 6) → 600 (default), 601 (Mega X), 602 (Mega Y)
- Provides 100 form slots per species

---

## Timeline Model

`pokemon_attributes` and `move_attributes` store one row per change point:

- Keyed by `generation_start_id` (not one row per generation)
- Query: `WHERE generation_start_id <= target ORDER BY generation_start_id DESC LIMIT 1`
- Example: Tackle has 2 rows — power 35 in Gen 1, power 50 from Gen 5

---

## DLC Model

DLC expansions are modeled as version groups, not games:

- Base game VG: `swsh` (parent = NULL)
- DLC VG: `swsh-ioa` (parent via `parent_version_group_id`)
- Availability and learnset files for DLC VGs contain **only additions** over the base
- No fake DLC game rows — `reference.games` contains real games only

---

## Style Rules

- LF line endings (no CRLF)
- No trailing whitespace
- Single trailing newline at end of file
- 4-space indentation for SQL data rows
- Last VALUES row ends with `;` (or `)` for closing)
- `NOT NULL` on everything unless NULL has genuine meaning
- `TIMESTAMPTZ NOT NULL DEFAULT NOW()` for all timestamps
- Booleans: `NOT NULL DEFAULT FALSE`
- Inline `REFERENCES` for foreign keys (no explicit constraint names)

---

## Index Strategy

### Integrity Indexes (in migrations)

Stay in migration files — required for correct data:

- `CREATE UNIQUE INDEX uq_*` that enforce business rules
- Examples: `uq_pokemon_forms_one_default_per_species`, `uq_pokemon_avail_vg_wide`

Naming: `uq_{table}_{description}`

### Secondary Indexes (in `04_indexes/`)

Performance indexes that improve query speed but aren't needed for correctness:

- FK lookup indexes, composite sort indexes, partial filter indexes
- Created **after** seeding via `db:index`
- Use `CREATE INDEX IF NOT EXISTS` for idempotent re-runs
- One file per category: `01_public`, `02_reference`, `03_tracking`, `04_gameplay`

Naming: `idx_{table}_{column}` or `idx_{table}_{col1}_{col2}`

### Dropped Indexes (not created anywhere)

- Slug indexes on `UNIQUE` columns — PostgreSQL auto-indexes `UNIQUE` constraints
- Indexes on tiny tables (< 50 rows) — full table scans are faster
- Indexes on low-cardinality columns (enums with < 5 values) — no selectivity benefit

---

## Category System

Three categories with dependency ordering:

| Category    | Schema      | Depends On              | Description                      |
| ----------- | ----------- | ----------------------- | -------------------------------- |
| `reference` | `reference` | —                       | Canonical Pokémon data           |
| `tracking`  | `tracking`  | `reference`             | Game-specific tracking structure |
| `gameplay`  | `gameplay`  | `reference`, `tracking` | User-owned play data             |

**Cascade rule**: resetting a category also resets all downstream categories.

- `db:reset:reference` → drops reference + tracking + gameplay + views
- `db:reset:tracking` → drops tracking + gameplay + views
- `db:reset:gameplay` → drops gameplay + views
