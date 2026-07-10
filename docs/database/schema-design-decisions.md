# Schema Design Decisions

This document records the schema-design decisions implemented by the clean SQL
source.

Treat these decisions and the human-authored schema files as one contract. When
a decision changes, update this document and the affected SQL in the same
reviewed change.

## ID Strategy

Use a mixed ID strategy based on ownership and query behavior.

### Reference Tables

Use stable integer IDs where Pokémon/game source identity is stable and meaningful.

Examples:

- Pokémon species can use National Dex numbers.
- Moves and abilities can preserve curated source IDs.
- Generations, regions, version groups, and games can use curated stable IDs.

Use generated identity IDs for reference rows where the meaningful identity is a natural/composite key rather than a source-stable ID. This applies to large curated fact/join tables such as evolution edges, Pokémon availability, move availability, item availability, and Pokémon learnsets. Seed files for those tables omit `id`; uniqueness constraints and audit checks protect the real domain identity.

Rationale: reference rows are curated static data, source IDs are useful for stable entity catalogs, and generated IDs avoid manually maintaining meaningless row numbers in high-volume fact seeds while keeping Supabase/client row references ergonomic.

### User-Owned Top-Level Entities

Use UUID primary keys for top-level user-owned entities that appear in routes or can be referenced externally.

Examples:

- Plays.
- Team plans.
- Play Pokémon if it has a detail route or is frequently linked from timeline/collection.

Use native `uuidv7()` defaults for top-level user-owned UUIDs when the Supabase project is on Postgres 18 or newer. If the project is on an older Postgres version, use `gen_random_uuid()` as the default. Keep the column type as `uuid` either way, so UUIDv4 and UUIDv7 values can coexist after a future upgrade.

### High-Volume Child Tables

Use `bigint generated always as identity` for high-volume internal child rows.

Examples:

- Play events.
- Snapshot rows.
- Progress rows where no route-level external ID is needed.

Rationale: sequential IDs improve index locality and avoid UUIDv4 fragmentation for tables that can grow quickly.

## Data Type Defaults

Use:

- `text` for strings unless a real length constraint matters.
- `timestamptz` for timestamps.
- `date` for date-only fields such as started/completed date.
- `integer` for bounded Pokémon/reference numbers.
- `bigint` for generated identity primary keys.
- `jsonb` only for flexible condition details that cannot be modeled cleanly yet.

Avoid varchar length limits unless the limit is a product rule, such as a display nickname cap.

## Status And Enum Strategy

Prefer lookup tables for states that need names, sorting, display labels, or future extension.

Examples:

- Play statuses.
- Play Pokémon roster states.
- Plan member link statuses.
- Event types.
- Snapshot policies.
- Availability methods.
- Game backlog statuses.
- Challenge rule types.

Use check constraints only for simple technical bounds such as slot ranges, positive stats, and level ranges.

Avoid PostgreSQL enums for product states that may change. They are harder to evolve than lookup tables.

## Product Families

Decision: use `reference.product_families` for Pokémon product families instead of `game_families`.

Current product family slugs:

- `mainline`: active Pokémon RPG playthrough companion product family scope covering mainline, remakes, Legends, DLC, and optional content.
- `dungeon`: planned Pokémon Mystery Dungeon product family.
- `pokopia`: planned Pokopia product family.
- `go`: planned Pokémon GO product family.
- `home`: planned Pokémon HOME/living dex product family.
- `ranger`: backlog Pokémon Ranger product family.
- `sleep`: backlog Pokémon Sleep product family.

Rationale: product families are Pokémon product boundaries, not frontend/UI modules or official franchise taxonomy. Future product families can share reference data but should not be forced to share mainline_plays, teams, Pokedex progress, completion rules, or tracking definitions. Schemas continue to describe data responsibility: `reference`, `tracking`, `gameplay`, `planning`, and `views`.

Naming rule: shared tables keep generic names; product-family-specific tracking, gameplay, planning, and view tables should use a product-family prefix such as `mainline_`. This keeps future product families from overloading generic names like `mainline_plays`, `mainline_milestones`, or `mainline_team_plans`.

## Timeline-Aware Reference Mechanics

Decision: type matchups, ability attributes, and move attributes should be timeline-aware reference data.

Use `reference.type_matchups` as change-point rows by `generation_start_id` so team weakness/resistance calculations match the selected game's generation. Store effectiveness as rational numerator/denominator values instead of floats.

Use `reference.ability_attributes` as change-point rows by `version_group_start_id` so ability identity remains stable while historic mechanics and product-facing effect text can change at either generation or mid-generation version-group boundaries.

Use `reference.move_attributes` as change-point rows by `generation_start_id` for move mechanics and optional effect/source text. `reference.moves` stores move identity only, with `reference.move_kinds` separating regular, Z, Max, and G-Max moves for product filtering.

Rationale: Voydex needs historic game-era correctness for Pokedex search, team planning, and team analysis. Current-only mechanic text would be wrong for older games.

## Play Mainline Lifecycle

Decision: `gameplay.mainline_plays` is the concrete user-owned adventure root, while play-specific completion behavior lives in `gameplay.mainline_play_settings` and optional content links. Store a constrained `version_group_id` alongside `game_id` on mainline_plays so optional content and tracking joins can enforce base content lineage cleanly.

Use play lifecycle statuses:

- `not_started`: concrete play exists but has not begun.
- `playing`: currently in progress.
- `paused`: temporarily stopped.
- `completed`: main playthrough is complete from the user's perspective.
- `abandoned`: stopped with no intent to continue.

Archive should be separate from status, using an `archived_at` style field on the play. A completed play can be archived without losing its completed lifecycle state.

Play names are required in stored data. If a user omits a name in the UI, the app should generate one during create flow before insertion.

Completion percentages are derived from settings and progress rows, not stored as source-of-truth values.

Story and collectible progress use positive sparse rows. For `mainline_play_milestone_progress`, row existence means completed and absence means incomplete. For `mainline_play_collectible_entry_progress`, row existence means collected and absence means uncollected. Do not add redundant `is_completed` or `is_collected` booleans to those tables.

`views.mainline_play_completion_summary` derives milestone, collectible, Pokedex, and overall completion counts/percentages from play settings, selected optional content, and sparse progress rows.

Milestone completion remains row-level rather than category-level. A category can contain both required story steps and optional/history steps, so `tracking.mainline_milestones.is_required_for_completion` is the authoritative flag. `views.mainline_play_milestone_category_summary` rolls those rows up for Story UI sections and exposes required, optional, completed, and percentage counts without storing completion state.

## Play Pokémon Moves

Decision: use a normalized move-slot table.

Use a table conceptually like `gameplay.mainline_play_pokemon_moves` with:

- `play_pokemon_id`.
- `slot` from 1 to 4.
- `move_id`.

Rules:

- One move per slot.
- Slots are ordered.
- Duplicate moves for the same Pokémon should be prevented unless a future edge case requires otherwise.

Rationale: normalized move slots make snapshots, move history, and future move-change events cleaner than four nullable columns on the Pokémon row.

## Team History Identity

Decision: current play Pokémon rows store current identity, while timeline Pokémon references store event-time identity.

A recorded in-game change should create timeline data with the relevant species/form at that moment:

- Pokémon added events record the added identity.
- Evolution events record both `from` and `to` identities for the same play Pokémon.
- Form-change events record both previous and new form identities where useful.
- Replacement events record replaced and replacement Pokémon identities.

Correction-only edits update current rows without creating user-facing history.

Rationale: Collection and Pokémon reuse checks cannot depend only on the current team row. If Squirtle evolves into Wartortle and then Blastoise, the app must still know the user used Squirtle and Wartortle.

Event child tables should carry `play_id` where it helps enforce same-play integrity. For example, event Pokémon refs and team snapshot rows should match their parent event's play, and any linked `play_pokemon_id` must belong to that same play.

Milestone progress remains the source of truth for story-step completion. A progress row can exist without a timeline event for bulk logging and imports, but a timeline event with `milestone_id` is treated as the milestone's completion/history event and must match an existing progress row for the same play and milestone.

Use `gameplay.complete_mainline_play_milestone` as the preferred app mutation for interactive story progress. It runs as `SECURITY INVOKER`, so RLS still owns authorization, and it atomically handles the progress row, accepted direct prerequisite rows, optional decision option, optional linked timeline event, and optional active-team snapshot. The UI still owns whether the user accepts previous-step prompts; the function only validates and writes the prerequisite milestone IDs that the UI sends.

Use the mainline play Pokémon mutation functions for in-game team history: `add_mainline_play_pokemon`, `evolve_mainline_play_pokemon`, `change_mainline_play_pokemon_form`, `retire_mainline_play_pokemon`, and `replace_mainline_play_pokemon`. These functions update current team state and write event-time Pokémon refs so History, Collection, and used-before checks retain identities that no longer exist on the current Pokémon row. Correction-only edits can still update the current row directly without creating user-facing history.

Use `gameplay.set_mainline_play_collectible_entry_progress` and `gameplay.set_mainline_play_pokedex_species_progress` as the preferred app mutations for ordinary collectible and Pokedex toggles. They preserve sparse-row semantics, keep caught implying seen, and leave version/content validity to the existing progress scope triggers. Correction-only timestamp edits can still update the progress rows directly.

## Tags Location

Decision: tags are user-owned personalization data in `public`, with typed join tables in the owning schemas.

Use:

- `public.tags` for tag definitions.
- `gameplay.mainline_play_tags` for play tags.
- `gameplay.mainline_play_pokemon_tags` for play Pokémon tags.
- `planning.mainline_team_plan_tags` for plan tags.

Rationale: tags are broader than gameplay and attach across schemas. Typed join tables preserve real foreign keys and avoid polymorphic links.

Tag links are direct CRUD surfaces. The database enforces owner matching with `user_id` plus composite foreign keys, and RLS limits writes to the authenticated owner. They do not need mutation helper functions because they have no timeline, planning realization, or cross-row side effects.

## Preferences Location

Decision: preferences live in `public.user_preferences`.

Rationale: preferences are user-level settings, not play-specific data. Play-specific settings still belong in gameplay tables.

## Backlog / Wishlist Location

Decision: game backlog/wishlist lives in gameplay as `gameplay.user_game_library_entries` plus a status lookup.

Rationale: game backlog is user-owned gameplay intent. It belongs near mainline_plays while remaining separate from concrete playthrough records.

Backlog state is independent of play lifecycle. Creating or completing a play can suggest changing game intent status, but should not force it.

Library rows are direct CRUD surfaces. RLS owns user access and the row does not create play history or mutate concrete play state.

## Planning Optional Content And Links

Decision: team plans can select optional version groups such as DLC before a play exists. Store a constrained `version_group_id` alongside `game_id` on team plans so optional content and availability joins can enforce base content lineage cleanly.

Use a plan optional-content join equivalent to play optional content. This supports availability-aware planning for users who know they will include DLC.

Plan member link status belongs to a specific play/plan link. The same reusable plan can be linked to more than one play, and each linked play can have different member statuses. Each play can link at most one team plan, which keeps the Play UI aligned with the single active roster model.

Use planning mutation helpers for the plan-to-play bridge: link a plan to a play, initialize pending member links, realize a planned member as a play Pokémon, link existing play Pokémon back to a planned member, refresh reached status after evolution/form-history changes, and skip play-specific planned members. These functions preserve reusable plans and mutate only the play-specific link state.

Realizing a planned member can use the preferred starting identity when present, so a Charizard target can become a Charmander in the actual play while remaining linked to the Charizard goal. Planned moves are not copied by default because final-form planned moves can be invalid or misleading for the preferred starting Pokémon.

Rationale: plans are reusable references, not a mutable checklist owned by one play.

## Collection And Stats Derivation

Decision: Collection and Stats are derived read models.

Collection should derive used identities from:

- Current play Pokémon rows.
- Event-time Pokémon refs.
- Team snapshot rows when they represent meaningful play history.

Collection should expose form, species, and evolution-family identity for filtering and reuse checks.

Stats and dashboard summaries should derive from gameplay/planning rows and views. Cached summaries can be added later only if performance requires it.

Rationale: a manually maintained collection table would drift from play history and make evolution/form history harder to keep correct.

## Rules And Challenges

Decision: support predefined structured rules plus user custom descriptive rules.

Use a shared rule definition table conceptually like `gameplay.mainline_challenge_rules`:

- Predefined rules have `user_id` null.
- Custom user rules have `user_id` set.
- Structured rules use `config` for behavior the app can validate or summarize.
- Descriptive rules can use free-text fields with minimal or empty config.

Attach rules through typed joins:

- `gameplay.mainline_play_challenge_rules`.
- `planning.mainline_team_plan_challenge_rules`.

Rationale: rules apply to both mainline_plays and plans. A shared definition table avoids duplication while supporting product-seeded rules, enforceable rules, and user-authored descriptive challenges.

Rule definitions and typed rule links are direct CRUD surfaces except where future enforceable rules need richer workflows. Predefined rule slugs are unique globally with `user_id IS NULL`; custom rule slugs are unique per user with `user_id IS NOT NULL`.

## Pokémon Reuse Policy

Decision: use one Pokémon reuse policy concept across planning and actual play team editing.

Do not model reuse as independent booleans such as `form = true`, `species = false`, `evolution_family = true`. Those combinations are ambiguous because the scopes are naturally cascading.

Use a single reuse scope:

- `none`: do not warn, filter, or block reused Pokémon.
- `form`: only the exact species/form counts as reused.
- `species`: any form of the same species counts as reused.
- `evolution_family`: any Pokémon in the same evolution family counts as reused.

Cascade behavior:

- `form` is the narrowest meaningful match.
- `species` includes all forms of the same species, so it is broader than `form`.
- `evolution_family` includes all species/forms in the same evolution family, so it is broader than `species`.

Examples:

- Used Alolan Raichu, candidate normal Raichu: reused under `species` and `evolution_family`, not under `form`.
- Used Charmander, candidate Charizard: reused under `evolution_family`, not under `species` or `form`.
- Used Hisuian Samurott, candidate standard Samurott: reused under `species` and `evolution_family`, not under `form`.

Use a separate behavior field for what the app does with a match:

- `warn`: show a used-before warning but allow the action.
- `filter`: hide/filter reused Pokémon by default with an option to reveal them.
- `block`: disallow selection, intended for explicit challenge/rule enforcement rather than casual global preference.

Global user preferences can provide default reuse scope/behavior. Play or plan challenge rules can override those defaults.

Validation should support both real and preemptive checks:

- Real usage checks validate the Pokémon being selected, added, replaced, or evolved now.
- Preemptive checks validate planned targets, preferred starting Pokémon, and future evolution destinations.
- Planning UI should surface conflicts before a user starts a play or reaches a blocked evolution.

Effective policy resolution should be:

1. Explicit play rule, when editing a play team.
2. Explicit plan rule, when planning a team.
3. User preference.
4. Default `none`.

## Item Catalog Scope

Decision: use a Pokémon-relevant item catalog, not a full item encyclopedia.

Include only items that are held by Pokémon or are essential to Pokémon biography/mechanics:

- Poke Balls for caught-ball history.
- Held items for team display and planning.
- Evolution items where they explain evolution history or availability.
- Fossils where they explain Pokémon origin/availability.
- Form-change items where they affect selectable/displayed Pokémon forms.
- Berries as a held item subgroup.
- Mega Stones as a held item/form mechanic subgroup.
- Z-Crystals as a held item/mechanic subgroup.

Initial item category seeds:

- `poke_ball`
- `held_item`
- `evolution_item`
- `fossil`
- `form_change_item`
- `berry`
- `mega_stone`
- `z_crystal`

Use many-to-many category membership because an item can belong to multiple categories. For example, a Mega Stone is both a held item and a Mega Stone.

Exclude general medicine, treasures, ingredients, decorations, clothing, mail, generic key items, TMs/HMs/TRs, ability modifiers, nature mints, and unrelated bag items unless a future feature requires them.

Rationale: Voydex only needs items that affect Pokémon identity, team display/planning, form/evolution mechanics, availability, or biography. Bulbapedia and Serebii already cover the full item encyclopedia use case.

## Availability Depth

Decision: start with game/version-group availability plus method/context detail. Defer full location and story-gate modeling.

Availability should support methods such as:

- Native encounter.
- Starter.
- Gift.
- In-game trade.
- Fossil restoration.
- Evolution.
- Breeding.
- Raid or special encounter where relevant.
- Event.
- Transfer-only.

Use optional `game_id` for version exclusives when the version group contains multiple games. Game-specific rows reference `reference.game_content_scopes` so base games and optional DLC scopes can both be validated.

Use a positive availability model: row existence means available in that scope after audit. Do not store negative availability rows unless a future feature explicitly needs source-visible exceptions.

Do not model full route/location/story-gate availability yet. Leave room for it through future location/encounter tables.

Rationale: team planning needs to know whether a Pokémon is realistically usable in a game and why. Availability methods are curated reference data and should be maintained carefully with source comments and audit documentation. Progression-aware planning is accepted backlog and needs a larger source effort.

Backlog: current availability seeds model original historical game behavior. If official rereleases, enhanced platform editions, or service releases change availability behavior, model those differences with explicit platform/content-scope data instead of mixing rerelease behavior into canonical original-game rows.

Backlog: after all Pokémon availability seeds are present, run a cross-version form-availability consistency pass for item-driven and form-derived rows so eligible forms are modeled consistently across every game.

## Tracking Definition Scope

Decision: tracking definitions are version-group-wide by default, with optional game-specific rows where official game differences require them.

Keep `mainline_milestones` as the database name for story/progression steps. This preserves concise table names, reference table names, foreign keys, indexes, and generated TypeScript types while still allowing the UI to label the feature as Story Steps.

Categories stay version-group-wide grouping containers. Milestones, mainline_opponents, mainline_badges, and mainline_collectibles can store nullable `game_id`; when set, the row must match `reference.game_content_scopes`. Milestone refs and milestone prerequisites enforce same version group, and two game-specific linked definitions must use the same game.

Milestone `sort_order` is category-local display order in the final play scope, not the full story progression model. Game-specific rows may fill order slots between version-group-wide rows, and the projected per-game list must remain contiguous. `tracking.mainline_milestone_prerequisites` stores explicit prerequisite links so open-route games can show parallel story groups while still supporting "mark previous milestones complete?" prompts and future unlock guidance.

Tracking rows are authenticated-client read-only and service/admin writable. Source notes live beside curated tracking definitions so source disagreements and edge cases can be audited with the seed rows.

Rationale: this keeps common game structure reusable while supporting version-specific fights, mainline_badges, and mainline_collectibles without duplicating whole version-group datasets.

Seed status: `tracking.mainline_milestone_prerequisites` is seeded for every mainline version group from the curated milestone order. Same-category and linear category-transition links use `suggested`; explicit open-route unlocks, such as Scarlet / Violet's The Way Home dependencies on Victory Road, Starfall Street, and Path of Legends, use `story-unlock`.

Seed status: `tracking.mainline_collectible_types` includes `wisp`, and Pokémon Legends: Arceus Wisp groups/entries are seeded from Serebii's Spiritomb Wisp location table. The 107-Wisp request count is cross-checked against Bulbapedia's Vessa page.

## Snapshot Granularity

Decision: snapshot enough data to recreate the visible team state at a meaningful event.

A team snapshot should include:

- Play Pokémon link, when available.
- Position.
- Species and form.
- Nickname.
- Level.
- Gender.
- Shiny state.
- Nature.
- Ability.
- Held item, if tracked.
- Moves by ordered slot.
- Notes needed for display.

Rationale: the snapshot must remain historically accurate even if the current team later changes, evolves, retires, or is edited.

## Timeline Ordering

Decision: timeline events support both exact timestamps and explicit per-play ordering.

Use a nullable happened timestamp plus a play-local order field. Imported historical mainline_plays often know only the relative order of events, not exact dates or times.

Timeline event origin should be modeled separately from event type. Example origins are manual, recorded_action, milestone_completion, hall_of_fame, and import.

Rationale: ordering is product behavior, not just chronology. Users should be able to reconstruct an old adventure without inventing fake timestamps.

## Current Roster Limit

Decision: use explicit roster state plus slot to enforce the current team cap.

Design direction:

- Active Pokémon have `roster_state = active` and `slot` from 1 to 6.
- Reserve Pokémon have `roster_state = reserve` and `slot` from 7 to 12.
- Retired/replaced Pokémon have `slot = null`.
- A unique constraint on `(play_id, slot)` for current roster states prevents duplicate slots.

Rationale: this enforces the cap, gives the UI a single play-local roster position range, and preserves historical Pokémon without letting retired/replaced rows count against the current roster.

## Completion Calculation

Decision: completion is derived, not stored as the source of truth.

Completion should be calculated from:

- Play settings.
- Selected optional version groups.
- Story progress.
- Collectibles.
- Pokedex progress.

A cached completion summary can be introduced later if performance requires it.

## Sparse Progress Rows

Decision: progress tables use sparse rows where practical.

For story mainline_milestones, mainline_collectibles, and Pokedex species progress, absence means the default state:

- Milestone progress absent means incomplete.
- Collectible progress absent means uncollected.
- Pokedex species progress absent means unseen and uncaught.

Pokedex progress is stored per play/species, not per Pokedex entry. Reference Pokedex entries define completion scopes and are joined to species progress during calculation.

Rationale: this avoids pre-creating large numbers of rows for every play while preserving clear defaults.

## Views

Decision: views are read models only.

Views should support app queries but not become mutation targets. Views that read user-owned data must use Supabase-safe security behavior.

## Remaining Design Questions

There are no remaining product/schema decisions blocking clean SQL implementation.
