# Voydex Seeds

These seeds are part of the clean Voydex database source.

They are designed for a fresh/reset database after the schema files have run once. They are not rerunnable patch scripts.

## Rules

- Use fixed numeric IDs for lookup/reference rows.
- Keep insert order deterministic and aligned with `sort_order`.
- Do not use `ON CONFLICT`, `DROP`, `ALTER`, or schema creation inside seed files.
- Do not add generic fallback rows such as `other` unless a real audited product case requires one.
- Use ASCII in seed source files.
- Store Pokémon names without accent marks in code-facing files unless a later display/localization layer intentionally handles official typography.
- Add a helper comment immediately before ID-heavy tuple rows so reviewers can understand the row without resolving foreign keys manually.
- Split large curated reference domains by generation or similarly reviewable scope instead of using one large file. This applies to abilities, moves, items, Pokémon identities/forms/attributes, availability, learnsets, and Pokedex data.
- Keep Pokedex entry seeds split one version group per file.

## Source Hierarchy

Use this hierarchy when sources disagree:

1. Official Pokémon sources for release/scope authority.
2. Serebii for game-specific learnsets, availability, version exclusives, dex pages, DLC, and current game data.
3. Bulbapedia for mechanics/history explanations, form timelines, ability/stat/type changes, and source disagreement context.
4. PokemonDB for cross-checking stats, moves, dex listings, and historic generation pages.
5. PokeAPI CSV snapshots for machine-readable sanity checks only.

PokeAPI is a sanity-check source, not the authority for curated historic behavior.

## Structure

- `00_foundation`: reserved for seed prerequisites that are not user data.
- `02_reference`: static Pokémon/game/reference data.
  - `01_base`: generations, regions, game types, version groups, games, platforms, and content-scope mappings.
  - `02_mechanics`: types, type matchups, natures, egg groups, and move kinds.
  - `03_methods`: item categories, evolution methods, availability methods, and learn methods.
  - `04_abilities`: ability identity rows split by generation and ability attribute change-point rows.
  - `05_items`: reduced Pokémon-relevant item catalog and item category membership rows.
  - `06_pokemon`: evolution families, Pokémon species, default forms, curated non-default forms, form rules, form item requirements, and Pokémon attributes split by generation/review scope.
  - `07_moves`: move-owned data grouped by review phase.
    - `01_identity`: full move identity rows split by generation before evolution edges or move attributes; G-Max moves are separated because they use reserved internal IDs.
    - `02_attributes`: generation change-point move mechanics rows.
  - `08_pokedex`: Pokedex definition rows followed by species-entry membership split by version group/review scope.
  - `09_evolutions`: form-aware Pokémon evolution edge rows split by introduced generation. These depend on Pokémon forms, evolution items, types, and move identity rows.
  - `10_availability`: Pokémon, item, and move availability rows.
  - `11_learnsets`: move machines and Pokémon learnsets split by version group/content scope.
- `03_tracking`: curated tracking definitions and lookup rows.
- `04_gameplay`: global product lookup rows used by user-owned gameplay tables.
- `05_planning`: global product lookup rows used by team planning tables.

## Verification

Run the offline seed audit after editing seed files:

```powershell
npm.cmd run db:audit
```

Run local SQL load/lint verification after schema or seed changes when Docker/Supabase local is available:

```powershell
npm.cmd run db:reset
npm.cmd run db:lint
```
