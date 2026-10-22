# Reference Data

## Purpose And Scope

Reference data supports Voydex's play, team, planning, Pokedex, and history
workflows. It is curated for mainline-style playthroughs through the current
Generation IX and modeled Pokémon Legends: Z-A scope. It is not intended to be a
complete general-purpose Pokémon encyclopedia.

## Source Hierarchy

Use sources in this order when they disagree:

1. Official Pokémon material and game data.
2. Serebii.
3. Bulbapedia.
4. Pokémon Database.
5. PokeAPI CSV snapshots for machine-readable sanity checks only.

PokeAPI is useful for coverage and consistency detection, but curated historical
sources remain authoritative for game-specific mechanics and availability.

## Curation Rules

- Every seed file declares its source and file scope in comments.
- Source labels and research notes stay in SQL comments or this document, not
  product-facing table columns.
- Base content scopes seed base facts. Child/DLC scopes seed additions,
  evidence-backed overrides, or removals.
- Availability distinguishes game/version group, content scope, method, and
  useful condition summary without pretending that full location/story-gate
  data exists.
- Learnsets preserve game/version context, method, level, machine, and source
  item where applicable.
- Forms used by teams require a valid species/form pair and game-era support.
- Battle forms (Megas, Primals, Gigantamax and in-battle changes) are seeded as
  non-team-selectable forms whose rule names their `battle_mechanic`. A trigger
  refuses them as a Play or Plan member's form; opponent teams store the form a
  Pokémon battles in. Megas new to Legends: Z-A have no ability, because that
  game has none.
- Z-Moves come from `reference.z_move_sources` (a type crystal and the move's
  type, or an exclusive crystal, Pokémon and move); G-Max Moves from
  `reference.g_max_move_sources`. A damaging move's Max Move is the Max Move of
  its type, and a status move's is Max Guard.
- Evolution edges, mechanics, move/ability attributes, and type matchups retain
  generation boundaries when behavior changed. A change row starts in the
  first generation that has the new value (Flamethrower 90 starts in
  Generation VI). Let's Go values that differ from their generation are
  version-group overrides, never generation rows.
- Evolution edges that only exist in some games (regional forms, location
  methods) are scoped to those version groups.
- Seed comments stay plain and line by line so the owner can read every row.
- Item coverage is limited to held items and items needed for Pokémon biography
  or mechanics, such as balls, evolution/form items, fossils, berries, Mega
  Stones, and Z-Crystals.

## Audit Contract

The seed audit parses every authored insert and verifies:

- File/folder ordering and source headers.
- Table and column existence.
- Exact lookup slugs and stable ordering.
- Duplicate and relationship constraints that can be checked offline.
- Curated rowset fingerprints and expected coverage.
- Cross-table availability, learnset, evolution, Pokedex, tracking, and content
  scope consistency.

Audit expectations are executable code under `scripts/database/seed-audit`,
grouped by data responsibility. Documentation explains policy; it does not copy
large expected rowsets or per-game fingerprints.

## Known Gaps

These are deliberate future domains, not defects in the current app contract:

- Full locations, encounters, and story-gate availability.
- Platform/rerelease-specific availability changes.
- Game/version-scoped Pokedex entry prose.
- Richer breeding/training facts such as hatch cycles and catch rate.
- HOME/living-dex workflows and non-mainline product-family reference models.

When a product slice requires one of these areas, define its user behavior and
source rules before expanding the schema or seed corpus.
