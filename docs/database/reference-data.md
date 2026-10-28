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
- Legendary and mythical level-up and TM/HM/TR rows (every game) and tutor rows
  (Sword / Shield, Legends: Arceus) were checked against each game's own data,
  read from PKHeX's learnset and personal tables, with Bulbapedia and Serebii
  as the second source. Where they disagree the game wins: Dawn Wings Necrozma
  learns Autotomize and Prismatic Laser at 60 and 66 in Sword / Shield, and
  Rapid Strike Urshifu has no Metal Claw TM in Scarlet / Violet. Left as is on
  purpose: Poison Arceus in Brilliant Diamond / Shining Pearl has no Flash in
  the game files, but removing its plate makes it Normal, which learns it;
  Regigigas's Mega Punch flag in Scarlet / Violet sits in a slot no TM teaches;
  FireRed / LeafGreen share Emerald's TM flags in PKHeX, Dive included, but
  those games have no Dive HM.
- A form with its own learnset rows in a version group carries every method
  there (level-up and machines alike), and rows in each DLC scope where its
  default has them; otherwise it would lose moves its default keeps.
- Forms used by teams require a valid species/form pair and game-era support.
- Every non-default form's rule carries its `form_class`: `variant` (caught
  and kept), `form` (switched on a Play) or `battle`. The seed audit holds the
  list of switchable forms; every other curated form is a variant.
- `is_cosmetic` marks a form that changes only looks (the audit holds the
  list). Such forms repeat their default's attribute change points and have no
  learnset rows: a form with no learnset rows in a version group learns its
  default's. Alcremie is modelled by cream only; the sweet is a per-Pokémon
  detail not yet recorded.
- Battle forms (Megas, Primals, Gigantamax and in-battle changes) are seeded as
  non-team-selectable forms whose rule names their `battle_mechanic`. A trigger
  refuses them as a Play or Plan member's form; opponent teams store the form a
  Pokémon battles in. Megas new to Legends: Z-A have no ability, because that
  game has none. Wild rogue Megas and Primals hold no Mega Stone or orb. Hyperspace shows
  bosses above Lv. 100, so those are stored at the level you catch them at.
- Z-Moves come from `reference.z_move_sources` (a type crystal and the move's
  type, or an exclusive crystal, Pokémon and move); G-Max Moves from
  `reference.g_max_move_sources`. A damaging move's Max Move is the Max Move of
  its type, and a status move's is Max Guard.
- `reference.pokemon_battle_form_bases` names the stored forms that reach each
  Mega, Primal, Ultra Burst and Gigantamax form (Low Key Toxtricity reaches
  only its own Gigantamax form; Ultra Necrozma comes from Dusk Mane or Dawn
  Wings; only Eternal Flower Floette reaches Mega Floette; each Magearna
  reaches its own Mega). A battle form with no row is one no player's Pokémon
  reaches (Eternamax Eternatus). Which games have each mechanic is the
  exact-game capability contract's, not this table's.
- A battle form's held item is bounded to the games where a player's Pokémon
  uses it: the Primal orbs from Omega Ruby / Alpha Sapphire to Ultra Sun /
  Ultra Moon and again in Mega Dimension (the Rogue Primals are bosses), and
  Ultranecrozium Z only in Ultra Sun / Ultra Moon.
- `reference.tera_types` holds the 18 types (same id and slug as
  `reference.types`) from Scarlet / Violet, plus Stellar (id 19, no type) from
  The Indigo Disk. `reference.pokemon_fixed_tera_types` lists the forms whose
  Tera Type never changes (each Ogerpon mask, Terapagos as Stellar); a trigger
  refuses any other Tera Type on a Play member of that form.
- Eternal Flower Floette and Original Color Magearna are stored forms with
  their own attribute rows. Original Color Magearna's availability covers only
  the HOME transfers into Sword / Shield and Scarlet / Violet.
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
- Every held item has a `reference.items.effect_summary`: one short sentence in
  our own words on what it does in recent games, with an "In Gen X-Y" note only
  when an older behaviour matters. Items that are never held (Poké Balls,
  evolution stones, fossils) leave it empty.
- Every `reference.move_attributes` row has an `effect_summary`: one short
  sentence in our own words on what the move does from that row's generation,
  worded the same way for the same effect. When behaviour changed inside a
  row's range without a numeric change, the row adds an "In Gen X" note.
- A Poké Ball is available in a game when that game's item data has it, so
  event-only balls (the Cherish Ball) and balls that only arrive on transferred
  or traded Pokémon count; their rows say so in `notes`. Park Ball and Strange
  Ball stay out of the catalog, and Legends: Arceus lists only its own balls.
  Let's Go lists only the balls a Pokémon there can be in, plus the Cherish
  Ball.

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
