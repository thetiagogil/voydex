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
- Every Scarlet / Violet form with its own rows has its TMs checked against
  PKHeX's personal table, so a form neither misses its DLC TMs nor keeps a
  sibling form's moves (Midday Lycanroc has no Fire Punch). TM001-TM171 sit in
  the base game, TM172-TM201 in The Teal Mask and TM202-TM229 in The Indigo
  Disk, except for Pokémon that only arrive in The Indigo Disk, whose Teal Mask
  TMs sit there too. Evolved Pokémon list their baby's egg moves, as Low Key
  Toxtricity lists Toxel's.
- A form with its own learnset rows in a version group carries level-up and
  machine rows there wherever its default does, and rows in each DLC scope
  where its default has them; otherwise it would lose moves its default keeps.
  Two exceptions match the game: Alolan Vulpix has no Isle of Armor tutor and
  female Indeedee no Teal Mask TM.
- Forms used by teams require a valid species/form pair and game-era support.
- Opponent teams from Red / Blue to Emerald (every Story battle and legendary
  encounter in those seven version groups) were checked row by row on
  2026-10-29 against each game's own trainer data in the pret disassemblies:
  the trainer parties, the set moves the game gives a trainer's Pokémon, and
  the default moveset the game builds from a Pokémon's level-up learnset
  when it gives none. Species, levels, held items and moves all matched.
  Every Story point of a battle type names the opponent you fight there; the
  seed audit refuses one that does not.
- Diamond / Pearl, Platinum and HeartGold / SoulSilver (147 battles) were
  checked the same way on 2026-10-29 against the pret decompilations' trainer
  data and matched row by row. Black / White to Omega Ruby / Alpha Sapphire
  (287 battles) have no game dump to read, so every row was checked against
  Bulbapedia's trainer and location pages and, wherever the two disagreed,
  against Serebii; seven move rows that both sites agreed on were corrected
  (Bianca's Route 8 monkeys, Burgh's Swadloon, Hugh's Samurott in Undella
  Town, Maxie's and Archie's Weezing and Crobat), and Korrina's Geosenge Town
  battle and the Delta Episode battles with Zinnia at Granite Cave and
  Wallace were added. Where only one site differs from the seed (a fourth
  move present or not for N's Purrloin, the Striaton Gym, Roxie's Koffing,
  Elesa's Emolga and Flaaffy and Colress's Elgyem; Mud Shot or Mud Bomb on
  the rival's Marshtomp; the party order of Cheren, Grimsley, Caitlin,
  Siebold and Drasna) the seed keeps Serebii's reading, and a move's slot
  order within a Pokémon follows Serebii too. Sun / Moon onwards are the last
  slice of the per-game audit (#115).
  The pgTAP file `350_gen4_6_story_audit.sql` pins the corrected rows and the
  added battles.
- Opponent teams from Sun / Moon to Z-A Mega Dimension (thirteen version
  groups) were compared row by row on 2026-10-29 with Bulbapedia's trainer and
  encounter pages, read through its API, with Serebii as the second reading and
  PokéWiki where those two disagree. The rows matched except a dozen (Necrozma's
  Ultranecrozium Z at Mount Lanakila, Hop's Wooloo's Defense Curl, Mustard's
  Urshifu signature moves, the Crowned Zacian and Zamazenta of the post-game
  episode, Dondozo's Order Up), and 61 battles the story forces were missing
  and are now seeded: the evil-team admins and bosses (Faba, Plumeria, the
  Ultra Recon Squad, the Rainbow Rocket bosses, Archer, Jessie & James, Oleana,
  Sordward and Shielbert, Mars, Jupiter and Saturn), the Alola trial captains'
  own battles, the Galar Champion Cup finals, and the Legends: Arceus wardens,
  clan leaders and Miss Fortunes. Every Alola totem is its own `totem`
  opponent, as Totem Kommo-o was. An opponent fought twice on one Story point
  has one row per battle (Faba, Sordward, Shielbert, Hop in the Slumbering
  Weald). Team Star's five Starmobiles are battle forms of Revavroom with
  Bulbapedia's type and ability and Revavroom's base stats, since the game
  scripts their stats per boss. The audit refuses a team row whose form is
  shown only while holding an item (the Crowned forms, Ogerpon's masks,
  Silvally's memories) when it holds none; Giratina's Origin Forme is exempt
  because Ramanas Park and Hisui show it without the Griseous Orb. Optional
  battles both sites confirm were added too: Red at Indigo Plateau in Let's
  Go, Perrin in Mossui Town, and Mega Dimension's Special Scan legendaries,
  the rogue Mega Zeraora and Magearna's gift; the Mystery-Gift-gated Diancie
  and Mewtwo missions stay out. Kept against
  a single site: the totem allies' levels (Bulbapedia), the Freezington steeds,
  Arceus and the lake guardians (game data), Barry's Roselia (Serebii and
  PokéWiki), Legends: Z-A (Serebii). This is the last slice of the per-game
  audit (#115).
- The evil-team admin battles the story forces in Diamond / Pearl, Platinum
  and HeartGold / SoulSilver (#187) come from each game's own trainer data in
  the pret decompilations, cross-checked with Bulbapedia's trainer pages: the
  Galactic Commanders (Mars, Jupiter and Saturn, and Mars & Jupiter's Multi
  Battle at Spear Pillar with Barry beside you) and the Rocket Executives
  (Proton, Petrel, Ariana and Archer, and Ariana's Double Battle with a Grunt
  at the Team Rocket HQ with Lance beside you). Platinum's Stark Mountain
  battles with Mars and Jupiter are in too, since both sources have them.
  Where the two differ the game wins: the Grunt's Drowzee knows Hypnosis,
  Petrel's last Radio Tower Koffing knows Smog, and move order follows the
  game. Barry's and Lance's partner teams rest on the game data alone.
  At the Team Galactic HQ you beat Cyrus before Saturn, in Brilliant
  Diamond / Shining Pearl too, whose order is corrected here.
  `360_gen4_admin_battles.sql` pins the battles.
- Black 2 / White 2, X / Y and Omega Ruby / Alpha Sapphire have no game dump
  to read, so their admin battles (#187) come from Bulbapedia's trainer
  pages, cross-checked with Serebii's Pokéarth for species, levels and items:
  Zinzolin and the three Shadows of the Shadow Triad (Hugh beside you at
  Lacunosa Town and on the Plasma Frigate), the Team Flare scientists Aliana,
  Celosia, Bryony, Mable and Xerosic (Serena / Calem beside you at the Poké
  Ball Factory), and each Hoenn game's own Admins: Tabitha and Courtney in
  Omega Ruby, Shelly and Matt in Alpha Sapphire, with Brendan / May beside you
  at Meteor Falls and Steven at Southern Island and the Delta Episode's Space
  Center. Black 2 / White 2 levels are Normal Mode's (Serebii lists the
  Challenge Mode level for the Lacunosa Grunt). An Admin fought twice before
  one badge gets a second opponent row (Courtney and Matt at the hideouts).
  Rood's optional battle in Driftveil City and the post-game Shadow Triad
  rematches in Icirrus City are left out. `370_gen5_6_admin_battles.sql` pins
  the battles.
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
- Every collectible set (`tracking.mainline_collectibles`) has a
  `reward_summary`: one short line in our own words saying what completing the
  whole set rewards. Each was checked on two references where both cover it
  (the seed header names them): Zygarde's Power Construct at 100 Cells and Cores and the five Core
  moves, the Totem-size Pokémon at each Totem Sticker count (Ribombee in Ultra
  Sun, Kommo-o in Ultra Moon at 100), the Isle of Armor Diglett gifts with an
  Alolan Diglett at 150, the shrine and Treasure of Ruin each stake colour
  unseals, and Vessa's items with Spiritomb at level 60 for all 107 wisps.
  Only one reference names the stake colour of each shrine; the other confirms
  which Treasure of Ruin each shrine holds.

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
