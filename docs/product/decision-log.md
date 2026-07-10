# Decision Log

This log captures accepted product and app-contract decisions for the clean Voydex rebuild.

## Accepted Decisions

### Product Identity

Voydex is a Pokémon companion for tracking, remembering, and planning playthroughs.

It should not become only a generic Pokémon wiki. Reference search exists to support play tracking, planning, and user history.

### App Modules

Voydex is organized by product modules, not by forcing every Pokémon game family into one play model.

Active module names:

- `mainline`
- `codex`

Accepted future module names:

- `dungeon`
- `pokopia`
- `go`
- `home`
- `ranger`
- `sleep`

The active playthrough module is `mainline`. It covers mainline-style Pokémon RPG playthrough companion behavior, including traditional mainline games, remakes, Let's Go-style entries, and Legends-style RPG entries where team, story, Pokedex, collectibles, and planning apply. Its user-facing label is Mainline.

`codex` is the active reference-browsing module. It is not a database product family.

Future modules can share profile, shell, reference, and design foundations, but they should get module-specific tables and flows when their mechanics differ.

### Codex Is A Shared Reference Module

Codex should remain its own module, not a child of Mainline.

Codex can be mainline-heavy while mainline is the active seeded product family,
but its long-term role is shared reference browsing across product families.

Codex pages may expose authenticated module-aware actions such as adding a
Pokemon to a Mainline plan, adding a Pokemon to a play team, starting a plan
from the current Pokemon/game context, marking a Pokemon as a target, checking
availability in a play, comparing against a planned team, or showing
used/planned/targeted indicators.

Codex does not own those mutations. It should pass the selected reference
context to the target module, and the target module should validate and execute
the action.

### Primary Navigation

The main navbar is module-aware. It shows a module switcher plus the active module's view links.

Current mounted module views:

- Mainline: Plays.
- Codex: Pokémon, Games.

Dashboard remains an accepted planned Mainline view.

Generations remain reference data for grouping, filtering, and future detail
routes, but they are not a current navbar view. Games are a Codex browse route,
not the required product funnel.

### Play Is The Central Gameplay Entity

A play is the central user-owned playthrough record.

The user can create or continue a play without navigating through Generation and Game pages.

### Play Lifecycle

Play statuses are:

- `not_started`
- `playing`
- `paused`
- `completed`
- `abandoned`

Archive is separate from play lifecycle status.

Play-specific completion settings belong to the play, not global preferences. Pokedex tracking, Pokedex completion inclusion, collectible completion inclusion, optional Pokedex-scope inclusion, optional Pokedex-entry inclusion, and optional content such as DLC are selected per play.

Completion values are derived from settings and progress rows, not stored as source-of-truth percentages.

### Plans Are Separate From Plays

Team plans can exist before plays and remain available after a play is created from them.

Creating a play from a plan does not auto-fill the active team.

Plans can include optional content scope such as DLC availability before a play exists.

Plan-to-play member status belongs to the relationship between a specific linked play and its linked Team Plan, not to the standalone pre-play plan definition.

A play has one focused linked Team Plan. Voydex should not support multiple competing team plans inside a single play; variants should live as alternates, notes, skipped members, or future standalone planning concepts.

### Plan Member Statuses

Plan members use these statuses:

- `pending`
- `linked`
- `reached`
- `skipped`

Reached target is derived when possible from the linked play Pokémon reaching the target species/form.

### Current Roster Limit

The current active/reserve roster for a play is capped.

The working limit is 6 active Pokémon plus 6 reserve Pokémon.

Retired/replaced Pokémon can remain in play history without counting toward the current roster limit.

Roster state and slot are explicit. Active Pokémon use slots 1 to 6, reserve Pokémon use slots 1 to 6, and retired/replaced Pokémon have no current slot.

### Team Edit Intent

Team edits can be:

- Correction-only/in-app edit.
- Recorded in-game change.

Only recorded in-game changes should create timeline history.

Recorded Pokémon lifecycle events should preserve event-time species/form identity. This keeps Collection and reuse checks accurate after evolutions or form changes mutate the current team row.

### Story Snapshots Are Optional

Important story milestones can support team snapshots, but snapshots are optional.

Bulk logging completed plays should remain fast and should not force snapshots.

### Timeline Is User-Facing History

Timeline is not a technical audit log.

It should focus on meaningful play events:

- Story milestone completion.
- Important fight snapshots.
- Pokémon added, evolved, retired, or replaced.
- Hall of Fame/final team.
- Manual notes.

Normal Pokedex and collectible progress should not automatically create timeline events.

Timeline ordering must support imported old plays where exact timestamps are unknown. The model should allow manually ordered or milestone-ordered entries without requiring precise event dates.

Team snapshots belong to timeline events and freeze visible team state at that moment. They are not current roster rows.

### Pokedex Completion Is Species-Level

Play Pokedex completion should match common online Pokedex completion behavior and track by species.

Form-level dex completion is not part of the current product contract.

Gameplay Pokedex progress should be stored per play and species. Reference Pokedex entries decide which species count for each game/content scope, including optional DLC, National, and special Pokedex scopes.

### Optional Pokedexes Are Supported

Regional Pokedexes are the baseline tracking scope.

National and special post-game Pokedexes are supported optional scopes. They are trackable/browsable when seeded and count toward completion only when the play enables optional Pokedex scopes.

Optional Pokedex scopes and optional Pokedex entries are separate settings:

- Optional scopes decide whether whole National/special Pokedexes count.
- Optional entries decide whether source-visible but optional species inside an included Pokedex count.

### DLC Is Optional Completion

DLC is modeled as optional content per play.

Not every user owns or wants to include DLC for a game.

DLC/reference rows should be modeled as cumulative content-scope deltas where practical. Base scopes seed base facts; child scopes seed additions, source-backed overrides, or source-backed removals.

### Collection Is Derived

Collection is derived from actual play Pokémon and meaningful recorded history.

It is not sourced only from current team slots and should not be manually maintained as a separate primary collection.

Collection should consider current play Pokémon, event-time Pokémon references, and relevant team snapshots.

### Backlog Is Independent User Intent

Game backlog/wishlist state is separate from concrete plays.

Creating or completing a play can suggest changing backlog status, but it should not force a strict one-to-one mirror of play lifecycle.

### Pokémon Reuse Applies Beyond Planning

Pokémon reuse rules apply to both team planning and adding Pokémon to an actual play team.

The product should use one reuse policy concept instead of a planning-only setting.

Reuse scopes cascade:

- `form`
- `species`
- `evolution_family`

These are mutually exclusive scopes, not independent flags.

Reuse validation should include both real usage checks and preemptive checks. The app should validate the current selected Pokémon, planned targets, preferred starting Pokémon, and future evolution destinations so conflicts are visible before a user reaches a blocked evolution.

### Rules Support Structure And Description

Voydex should support predefined rules seeded by the product and custom descriptive rules created by users.

Structured rules can affect app validation, warnings, filters, stats, and planning. Descriptive custom rules can document personal challenges even when the app cannot enforce them yet.

### Availability Is Curated Reference Data

Pokémon availability answers how a Pokémon can be obtained or used in a game/content scope.

Availability methods should be curated carefully as stable lookup data because they power Pokedex search, team planning, DLC behavior, and preemptive warnings.

Curated source logic should favor historically accurate sources such as Bulbapedia, Serebii, and PokemonDB over treating PokeAPI as the curated source of truth. PokeAPI can still be useful for automated checks and consistency detection.

### Codex Pokemon Detail Is Game-Scoped

Pokemon detail URLs are scoped by selected game and species:

```txt
/codex/pokemon/[gameSlug]/[speciesSlug]
```

The selected game determines the generation, so the route should not add a
separate generation segment.

Generation controls on the detail page should open game choices for that
generation. Games are enabled when the selected Pokemon/form has seeded
availability for that game. DLC-only availability counts as available for the
game, but the UI must communicate the DLC requirement instead of treating the
Pokemon as unavailable.

Forms must be validated against the selected game, not only against the
generation. A form available somewhere in a generation must not be selectable
inside a game where that form has no seeded availability.

### Pokemon Forms Need A Clear Selection Surface

Shiny state is a visual alternate and can stay as a small direct toggle.

Pokemon form selection changes meaningful reference data such as typing,
stats, abilities, availability, and sometimes game validity. It should be
represented as a proper selection surface rather than a tiny portrait rail.

Current accepted UI:

- Keep the portrait focused on the selected form artwork.
- Keep shiny as a direct in-portrait toggle because it does not change data.
- Render a dedicated Forms card when additional forms exist.
- Form options should include image, National number, form name, type identity,
  and disabled or warning states where availability requires it.
- Do not render a Forms section when no additional forms exist.
- Add search, grouping, popovers, or mobile sheets only when the concrete option
  count or viewport makes the inline list less usable.

### Item Catalog Is Pokémon-Relevant Only

Voydex should not include a full item encyclopedia.

The reference item catalog should include only Pokémon-held items or items essential to Pokémon biography/mechanics, such as Poke Balls, held items, evolution items, fossils, form-change items, berries, Mega Stones, and Z-Crystals.

General medicine, treasures, ingredients, decorations, clothing, mail, generic key items, and unrelated bag items are out of scope unless a future feature requires them.

Source names or external source labels should stay in comments/docs, not stored as product database values.

### Green Is Out Of Scope For Now

Pokémon Red/Blue are the initial Generation I paired-game scope. Pokémon Green is not included for now because the app is targeting the localized mainline playthrough scope first, and Green would need careful source handling for differences and naming.

### Local Supabase Is A Verification Gate

The primary audit target is the schema/seed files, but local Supabase is useful as an execution/load verification gate.

App work should treat `00-databases/projects/voydex` as the database source of truth and consume generated types from that project.

### The Active Voydex Database Will Move Into The App Repository

The active authored Voydex schema, seeds, indexes, migrations, local Supabase
config, verification scripts, and database docs will be co-located in
`13-voydex`. Legacy database trees, generated seed wrappers, temporary Supabase
state, secrets, and unrelated multi-project tooling will not move.

The relocation must follow a verified two-repository cutover. Until the import
passes the full local database workflow, `00-databases/projects/voydex` remains
the source of truth. See
`docs/decisions/0002-colocate-database-source.md` for the tradeoffs and size
policy.

### UUID Strategy Depends On New Project Postgres Version

For a new Supabase project, use native UUIDv7 defaults if the project is on Postgres 18 or newer.

If the project is not on Postgres 18+, use `gen_random_uuid()` as the default. The column type remains `uuid`, so UUIDv4 and UUIDv7 values can coexist if the project upgrades later.

### Backlog Features

These are accepted future directions but not immediate implementation targets:

- Shareable recap.
- Progression-aware planning.
- Achievements.

## Database Decisions

The database design decisions for moves, tags, preferences, backlog/wishlist, rules, item scope, availability depth, snapshots, IDs, roster limits, product families, tracking, gameplay, planning, and views are resolved in:

```txt
00-databases/projects/voydex/docs/schema-design-decisions.md
```

The app-facing database handoff lives in:

```txt
00-databases/projects/voydex/docs/app-handoff.md
```

This app should use those docs and `src/shared/types/database.types.ts` as the implementation contract.
