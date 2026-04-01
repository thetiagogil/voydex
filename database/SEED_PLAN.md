# Poketracker Seed Plan

## Purpose

This document defines the seed architecture for the Poketracker database.

Seeds are the source of truth for canonical curated content.

The seed phase must be:

- deterministic
- reviewable
- highly granular
- generation-separated
- validation-friendly

Important source priority:

1. Bulbapedia
2. Serebii
3. PokemonDB
4. PokeAPI only as fallback reference, never canonical source of truth

---

## Core Seed Principles

- canonical rows use explicit stable IDs
- seed files must be easy to review and diff
- prefer many small files over fewer large files
- do not mix multiple generations in one file unless there is a very strong reason
- generation-specific changes must be isolated into separate files
- non-default forms / special variants must be isolated into separate files
- scripts may assist generation, but they do not define canonical truth
- final approved seed files must always be manually reviewable

Seed generation approach:

- human-curated
- script-assisted
- manually reviewed before approval

---

## Mandatory Seed File Organization Rules

These rules apply to all seed domains:

- pokemon species
- pokemon forms
- pokemon attributes
- abilities
- moves
- items
- move attributes
- dexes
- pokemon availability
- move availability
- item availability
- pokemon learnsets
- progress

Required approach:

- split seed files by generation
- split generation-specific changes into separate `_changes` files
- split non-default forms into separate `_not_default` files
- split version-group-specific domains into separate VG files
- if a file becomes too large to review, split it into numbered parts

---

## Naming Convention Standard

### Folder pattern

`{NN}_{domain}`

### Subfolder pattern

`{NNN}_{entity}`

### File pattern

`{table_number}_{entity}_{scope}.sql`

Examples:

- `011_pokemon_species_gen1.sql`
- `012_pokemon_forms_gen3_not_default.sql`
- `013_pokemon_attributes_gen4_changes.sql`
- `016_move_attributes_gen5_changes.sql`
- `017_pokemon_availability_gen1_rb.sql`
- `021_pokemon_learnsets_gen1_rb_part1.sql`
- `025_dex_gen3_rs.sql`
- `026_dex_entry_gen3_rs_hoenn.sql`

### Scope suffix rules

- `_genN` → base generation seed data
- `_genN_changes` → previously existing entities changed in that generation
- `_genN_not_default` → non-default variants/forms only
- `_genN_{vg_slug}` → version-group-specific data
- `_genN_{vg_slug}_exclusives` → exclusives within a VG
- `_global` → generation-independent lookup data
- `_partN` → review-size split only when needed

### Suffix clarifications

- `_changes` means: entities that existed in a previous generation but had their data modified in this generation (e.g. stat changes, type changes, ability changes). Does NOT mean "new entities added in this generation."
- `_not_default` means: non-default forms only (e.g. Alolan, Galarian, Mega, regional variants). Does NOT mean "rare" or "special." Default forms are seeded in the base `_genN` file.

### Naming rules

- use singular entity names
- use snake_case everywhere
- keep file names explicit and predictable

---

## Seed Folder Structure

```
seeds/approved/
  01_meta/
  02_reference/
  03_abilities/
  04_moves/
  05_pokemon/
    001_pokemon_species/
    002_pokemon_forms/
    003_pokemon_attributes/
  06_items/
  07_move_attributes/
  08_dexes/
  09_pokemon_availability/
  10_move_availability/
  11_item_availability/
  12_pokemon_learnsets/
  13_progress/
    001_progress_categories/
    002_progress_items/
    003_progress_pokemon_refs/
  14_gameplay_foundation/
```

### Folder-to-table mapping

| Folder                    | Table(s)                                                                                      |
| ------------------------- | --------------------------------------------------------------------------------------------- |
| `01_meta`                 | `meta.generations`, `meta.regions`, `meta.game_types`, `meta.version_groups`, `meta.games`    |
| `02_reference`            | `meta.types`, `meta.natures`, `meta.egg_groups`, `meta.learn_methods`, `meta.item_categories` |
| `03_abilities`            | `meta.abilities`                                                                              |
| `04_moves`                | `meta.moves`                                                                                  |
| `05_pokemon`              | `meta.pokemon_species`, `meta.pokemon_forms`, `meta.pokemon_attributes`                       |
| `06_items`                | `meta.items`                                                                                  |
| `07_move_attributes`      | `meta.move_attributes`                                                                        |
| `08_dexes`                | `meta.dexes`, `meta.dex_entries`                                                              |
| `09_pokemon_availability` | `meta.pokemon_availability`                                                                   |
| `10_move_availability`    | `meta.move_availability`                                                                      |
| `11_item_availability`    | `meta.item_availability`                                                                      |
| `12_pokemon_learnsets`    | `meta.pokemon_learnsets`                                                                      |
| `13_progress`             | `meta.progress_categories`, `meta.progress_items`, `meta.progress_item_pokemon_refs`          |
| `14_gameplay_foundation`  | `gameplay.play_statuses`                                                                      |

---

## Seed Execution Batches

### Batch A — Foundation

Covers:

- `01_meta`: generations, regions, game_types, version_groups, games
- `02_reference`: types, natures, egg_groups, learn_methods, item_categories
- `14_gameplay_foundation`: play_statuses

Purpose:

- bootstrap all foundational lookup and reference data
- unblock every downstream batch

Notes:

- `meta.generations` does not store `end_year`. Start year only.
- `meta.games` does not store dex counts. Counts are derived from `meta.dex_entries`.
- `meta.regions` includes Hisui (id=10) as a distinct region for Legends: Arceus.

Risk: low — small row counts, no complex FKs

### Batch B — Abilities + Moves

Covers:

- `03_abilities`: abilities
- `04_moves`: moves

Purpose:

- establish canonical move and ability identity layer

Depends on: Batch A (generations)

Risk: medium — move count is large (~900) but structure is simple

### Batch C — Pokémon Core

Covers:

- `05_pokemon/001_pokemon_species`: pokemon_species
- `05_pokemon/002_pokemon_forms`: pokemon_forms
- `05_pokemon/003_pokemon_attributes`: pokemon_attributes

Purpose:

- establish canonical Pokémon identity, forms, and generation timeline attributes

Depends on: Batch A (generations, types, egg_groups), Batch B (abilities)

Risk: high — largest domain, most forms and attribute rows, most review effort

Note: per-species form lists (mapping each species to its alternate forms with `species_id * 100 + offset` IDs) will be authored as part of normal seed work during this batch. This is expected authoring effort, not a structural blocker.

### Batch D — Items + Move Attributes

Covers:

- `06_items`: items
- `07_move_attributes`: move_attributes

Purpose:

- establish curated item identity and move mechanical timeline data

Depends on: Batch A (generations, item_categories, types), Batch B (moves)

Risk: medium — move_attributes has many rows but predictable structure

### Batch E — Dexes + Availability

Covers:

- `08_dexes`: dexes, dex_entries
- `09_pokemon_availability`: pokemon_availability
- `10_move_availability`: move_availability
- `11_item_availability`: item_availability

Purpose:

- define dex membership per version group
- define broad obtainability per version group
- support UI distinctions such as "available but not in the regional dex"

Depends on: Batch A (version_groups, games), Batch B (moves), Batch C (pokemon_species, pokemon_forms), Batch D (items)

Risk: high — pokemon_availability is per-VG per-form, dex_entries is per-dex per-form

Note: the partial unique index design on `pokemon_availability` (VG-wide vs game-specific) will be validated during seed authoring for this batch. If edge cases surface, the indexes can be adjusted. This is a validation concern, not a schema blocker.

### Batch F — Learnsets

Covers:

- `12_pokemon_learnsets`: pokemon_learnsets

Purpose:

- define curated learnability by version group and method

Depends on: Batch A (version_groups, learn_methods), Batch B (moves), Batch C (pokemon_species, pokemon_forms)

Risk: very high — largest table by far, one file per VG, may need part splits

Note: default rule is one file per version group. If a file becomes too large to review comfortably, split into `_partN` files. This is a review guideline applied during authoring, not an architectural decision to make upfront.

### Batch G — Progress

Covers:

- `13_progress/001_progress_categories`: progress_categories
- `13_progress/002_progress_items`: progress_items
- `13_progress/003_progress_pokemon_refs`: progress_item_pokemon_refs

Purpose:

- define curated product progress milestones

Depends on: Batch A (version_groups), Batch C (pokemon_species, pokemon_forms)

Risk: low — product-defined, not sourced from external data

---

## Dependency Order

```
Batch A  Foundation
  │
  ├──► Batch B  Abilities + Moves
  │      │
  │      ├──► Batch C  Pokémon Core
  │      │      │
  │      │      ├──► Batch D  Items + Move Attributes
  │      │      │      │
  │      │      │      └──► Batch E  Dexes + Availability
  │      │      │             │
  │      │      │             └──► Batch F  Learnsets
  │      │      │
  │      │      └──► Batch G  Progress
```

### Foundation (Batch A)

No FK dependencies on other seed batches.

Internal ordering within 01_meta:

1. generations (no FKs)
2. regions (no FKs)
3. game_types (no FKs)
4. version_groups (FK → generations)
5. games (FK → version_groups, game_types)

Internal ordering within 02_reference:

1. types (FK → generations)
2. natures (no FKs)
3. egg_groups (no FKs)
4. learn_methods (no FKs)
5. item_categories (no FKs)
6. play_statuses (no FKs)

### Abilities + Moves (Batch B) depend on

- generations (Batch A)

### Pokémon Core (Batch C) depends on

- generations, types, egg_groups (Batch A)
- abilities (Batch B)

### Items + Move Attributes (Batch D) depend on

- generations, item_categories, types (Batch A)
- moves (Batch B)

### Dexes + Availability (Batch E) depend on

- version_groups, games (Batch A)
- moves (Batch B)
- pokemon_species, pokemon_forms (Batch C)
- items (Batch D)

### Learnsets (Batch F) depend on

- version_groups, learn_methods (Batch A)
- moves (Batch B)
- pokemon_species, pokemon_forms (Batch C)

### Progress (Batch G) depends on

- version_groups (Batch A)
- pokemon_species, pokemon_forms (Batch C)
- progress_categories (internal to Batch G)

---

## Dex Domain

The dex domain is required, first-class, and distinct from availability.

### Conceptual distinction

- `pokemon_availability` answers: "can this Pokémon exist in this game?"
- `dexes` + `dex_entries` answers: "is this Pokémon listed in a specific in-game dex?"

These are different concepts. Both are required.

### Why multi-dex

A version group can have multiple dexes:

- Hoenn Dex + National Dex (Gen 3 RS)
- Central Kalos + Coastal Kalos + Mountain Kalos + National Dex (Gen 6 XY)
- Galar Dex (Gen 8 SwSh base) + Isle of Armor Dex + Crown Tundra Dex (DLC VGs)

The old single `regional_dex_entries` table with a `dex_type` enum could not model this. The new two-table design (`dexes` + `dex_entries`) can.

### Product behavior

When adding a Pokémon to a team, the UI must be able to show that a Pokémon:

- IS available in the play (has a `pokemon_availability` row)
- but is NOT in the relevant regional dex (no `dex_entries` row in any regional-kind dex for that VG)

### Schema

Migration `025`: `meta.dexes` — one row per dex per version group

| Column             | Type                                 | Notes                                                |
| ------------------ | ------------------------------------ | ---------------------------------------------------- |
| `id`               | `INTEGER PRIMARY KEY`                | Surrogate ID for deterministic seeding               |
| `version_group_id` | `INTEGER NOT NULL`                   | FK → `meta.version_groups(id)`                       |
| `slug`             | `TEXT NOT NULL`                      | e.g. `hoenn-dex`, `national-dex`, `central-kalos`    |
| `name`             | `TEXT NOT NULL`                      | Display name                                         |
| `dex_kind`         | `meta.dex_kind NOT NULL`             | ENUM: `regional`, `expansion`, `national`, `special` |
| `sort_order`       | `INTEGER NOT NULL`                   | Display order within VG (1 = primary)                |
| `created_at`       | `TIMESTAMPTZ NOT NULL DEFAULT NOW()` |                                                      |

Unique: `(version_group_id, slug)`

Migration `026`: `meta.dex_entries` — one row per form per dex

| Column       | Type                                 | Notes                                             |
| ------------ | ------------------------------------ | ------------------------------------------------- |
| `id`         | `INTEGER PRIMARY KEY`                | Surrogate ID for deterministic seeding            |
| `dex_id`     | `INTEGER NOT NULL`                   | FK → `meta.dexes(id)` ON DELETE CASCADE           |
| `species_id` | `INTEGER NOT NULL`                   | FK → `meta.pokemon_species(id)` ON DELETE CASCADE |
| `form_id`    | `INTEGER NOT NULL`                   | FK → `meta.pokemon_forms(id)` ON DELETE CASCADE   |
| `dex_number` | `INTEGER NOT NULL`                   | CHECK > 0. Unique per dex                         |
| `created_at` | `TIMESTAMPTZ NOT NULL DEFAULT NOW()` |                                                   |

Unique: `(dex_id, dex_number)` and `(dex_id, species_id, form_id)`

### Dex kind values

- `regional` — main regional dex (e.g. Kanto Dex, Hoenn Dex, Galar Dex)
- `expansion` — DLC or expansion dex (e.g. Isle of Armor Dex, Crown Tundra Dex)
- `national` — full national Pokédex when available in-game
- `special` — any other dex (e.g. sub-regional like Kalos Central/Coastal/Mountain)

### DLC handling

- DLC dexes use the DLC `version_group_id`
- The `dex_kind` is `expansion`
- The base game dex uses the base `version_group_id` with `dex_kind = regional`

### Seed file examples

```
08_dexes/
  025_dex_gen1_rb.sql          (defines: Kanto Dex)
  026_dex_entry_gen1_rb.sql    (entries for Kanto Dex)
  025_dex_gen3_rs.sql          (defines: Hoenn Dex + National Dex)
  026_dex_entry_gen3_rs_hoenn.sql
  026_dex_entry_gen3_rs_national.sql
  025_dex_gen6_xy.sql          (defines: Central + Coastal + Mountain + National)
  026_dex_entry_gen6_xy_central.sql
  026_dex_entry_gen6_xy_coastal.sql
  026_dex_entry_gen6_xy_mountain.sql
  026_dex_entry_gen6_xy_national.sql
  025_dex_gen8_swsh.sql        (defines: Galar Dex)
  026_dex_entry_gen8_swsh_galar.sql
  025_dex_gen8_swsh_ioa.sql    (defines: Isle of Armor Dex)
  026_dex_entry_gen8_swsh_ioa.sql
```

---

## Learnset Splitting Rule

Default:

- one file per version group

Do not split by species range initially.

If a learnset file becomes too large to review:

- split into numbered parts

Example:

- `021_pokemon_learnsets_gen1_rb_part1.sql`
- `021_pokemon_learnsets_gen1_rb_part2.sql`

Do NOT introduce species-range suffixes unless necessary.

---

## Conflict Handling

Do not default to `ON CONFLICT DO NOTHING`.

Preferred behavior:

- fail loudly for curated approved seeds
- only use conflict handling when explicitly justified

Rationale:

- curated seeds should not silently skip rows
- a conflict on an approved seed means either the seed is wrong or the schema has a bug
- both cases must be investigated, not ignored

When `ON CONFLICT` IS appropriate:

- re-runnable reference lookups where idempotency is explicitly required
- must be documented with a comment explaining why

---

## ID Strategy

### Tables with explicit INTEGER PRIMARY KEY

These tables require manually assigned IDs in seed files:

- `meta.generations` — sequential from 1
- `meta.regions` — sequential from 1
- `meta.game_types` — sequential from 1
- `meta.version_groups` — sequential from 1
- `meta.games` — sequential from 1
- `meta.types` — sequential from 1
- `meta.natures` — sequential from 1
- `meta.egg_groups` — sequential from 1
- `meta.learn_methods` — sequential from 1
- `meta.item_categories` — sequential from 1
- `meta.abilities` — by national ability index
- `meta.moves` — by national move index
- `meta.pokemon_species` — by national dex number
- `meta.pokemon_forms` — deterministic scheme (species_id \* 100 + form_offset)
- `meta.items` — sequential from 1
- `meta.dexes` — sequential from 1
- `meta.dex_entries` — sequential from 1
- `meta.pokemon_availability` — sequential from 1
- `meta.progress_categories` — sequential from 1
- `meta.progress_items` — sequential from 1
- `gameplay.play_statuses` — sequential from 1

### Tables with composite PRIMARY KEY

These tables do not need manual IDs — the composite PK is the identity:

- `meta.pokemon_attributes` — PK: `(species_id, form_id, generation_start_id)`
- `meta.move_attributes` — PK: `(move_id, generation_start_id)`
- `meta.move_availability` — PK: `(move_id, version_group_id)`
- `meta.item_availability` — PK: `(item_id, version_group_id)`
- `meta.pokemon_learnsets` — PK: `(species_id, form_id, move_id, version_group_id, learn_method_id)`
- `meta.progress_item_pokemon_refs` — PK: `(progress_item_id, species_id, form_id)`

### pokemon_forms ID scheme

Formula: `species_id * 100 + form_offset`

- `form_offset = 0` → default form
- `form_offset = 1, 2, ...` → alternate forms in Bulbapedia order

Example: Charizard (species 6)

- 600 = default
- 601 = Mega Charizard X
- 602 = Mega Charizard Y

This gives 100 form slots per species (sufficient for all known Pokémon).

### Surrogate ID strategy for dexes, dex_entries, pokemon_availability

These tables use `id INTEGER PRIMARY KEY` with row counts that grow per VG.

Strategy: assign IDs sequentially starting from 1, incrementing across files.

Do not pre-reserve complex range blocks. If re-ordering is needed later, a renumbering script can be run.

---

## FK Resolution Convention

- all FKs in seed files must use explicit integer IDs, not slug lookups
- IDs are deterministic and defined by this plan
- seed SQL must be pure INSERT statements with literal values
- no CTEs, no subqueries, no slug resolution at seed time

Rationale:

- makes seed files maximally simple and reviewable
- avoids runtime dependency on other rows existing
- all IDs are stable and documented

Maintainability note: with hundreds of seed files, using explicit IDs means FK values are always visible and greppable in the SQL. If a move's ID is 85 (Thunderbolt), every file that references it uses the literal `85`. This is intentional — it optimizes for auditability over write convenience.

---

## Source Header Convention

Every seed file must start with a source header:

```sql
-- Source: Bulbapedia
-- Secondary source: Serebii (optional, omit if not used)
-- Generation: 1
-- Version Group: rb (omit for generation-scoped or global files)
-- Scope: base generation seed
```

Valid scope values:

- `base generation seed`
- `generation changes`
- `non-default forms`
- `version-group-specific`
- `version exclusives`
- `global`

---

## Structural Gaps and Risks

### Resolved

- Dex domain redesigned: `meta.dexes` + `meta.dex_entries` replace `meta.regional_dex_entries`
- Migrations: `025_create_meta_dexes_table.sql` + `026_create_meta_dex_entries_table.sql`
- Seed folder renamed: `08_regional_dex` → `08_dexes`
- Seed batch grouping consolidated into 7 clean batches (A through G) + `14_gameplay_foundation`
- `meta.generations`: `end_year` removed from migration and seeds. Start year only.
- `meta.games`: `regional_dex_count` and `national_dex_count` removed from migration and seeds. Dex counts derived from `meta.dex_entries`.
- `meta.regions`: Hisui added (id=10). Required for Legends: Arceus.
- Legends: Arceus classification locked: Gen 8, Hisui (region 10), `type_id=1` (main series).
- Legends: Z-A included: Gen 9, Kalos (region 6), `type_id=1` (main series), release 2025.
- `gameplay.play_statuses` moved to dedicated `14_gameplay_foundation/` folder.
- Conflict handling clarified: fail loudly, no silent `ON CONFLICT DO NOTHING`
- ID strategy documented for all tables
- FK resolution convention: explicit IDs, no slug lookups at seed time
- `_changes` and `_not_default` suffix semantics clarified
- Batch C form-list authoring: expected seed work, not a structural blocker
- Batch E partial unique index validation: validation concern during authoring, not a schema blocker
- Batch F learnset file sizing: review guideline during authoring, not an architectural blocker

### No remaining blockers before Batch A

All Foundation tables have approved migrations. Batch A seeds are complete and corrected. Batch A is done — Batch B can start.

---

## Batch A Readiness Checklist

- [x] All Foundation tables have approved migrations
- [x] Seed folder structure exists (`01_meta/`, `02_reference/`, `14_gameplay_foundation/`)
- [x] `db-seed.js` discovers and runs seed files from `seeds/approved/` alphabetically
- [x] Naming convention is defined
- [x] Source header convention is defined
- [x] Conflict handling policy is defined
- [x] ID strategy for all Batch A tables is defined (sequential from 1)
- [x] Dex domain redesigned and migration files created
- [x] Open questions from previous pass all resolved
- [x] `meta.generations.end_year` removed — migration and seeds corrected
- [x] `meta.games` dex count columns removed — migration and seeds corrected
- [x] Hisui added as region (id=10) — regions and games seeds corrected
- [x] Legends: Arceus region corrected to Hisui (region_id=10)
- [x] Legends: Z-A confirmed: Gen 9, Kalos, main series, 2025
- [x] No unresolved blockers

Batch A is complete. Batch B can start.
