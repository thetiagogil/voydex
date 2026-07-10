# Schema Contract

This is the table-level product contract reflected by the current clean SQL source.

The goal is to keep each schema's ownership, app contract, and clean SQL source aligned.

## reference

### Base Game Data

Implemented tables:

- `reference.generations`
- `reference.regions`
- `reference.product_families`
- `reference.game_types`
- `reference.version_groups`
- `reference.games`
- `reference.game_content_scopes`
- `reference.content_scope_dependencies`
- `reference.platforms`
- `reference.game_platforms`

Rules:

- DLC is modeled as version groups with a parent base version group.
- Games are real games, not DLC entries.
- `reference.game_content_scopes` maps each game to the base and optional version-group scopes that can apply to it.
- `reference.content_scope_dependencies` records ordered optional-content dependencies for cumulative resolved reference data.
- Game generation and version-group generation must be consistent at DB level.
- Mainline Pokémon RPG playthrough scope is the default active product scope.
- Platforms support normalized play metadata and stats; user-specific edge cases can still use a custom platform label on the play.
- `reference.game_platforms` maps games to official native or enhanced release platforms for UI filtering and default play metadata.
- Reference availability seeds model original historical game behavior by default. Future platform-specific rerelease differences should use explicit platform/content-scope modeling instead of changing canonical original-game rows.
- Lookup/classification tables with product-facing meaning store stable `description` text for UI help and audit clarity.
- Voydex product scope is organized by product families. Current active product family is `mainline`; future product families are `dungeon`, `pokopia`, `go`, `home`, `ranger`, and `sleep`.
- Games reference an product family. Current seeded games all belong to `mainline`; `home` can exist as an product family without game rows.
- Schemas describe data responsibility, while product families describe product behavior. Do not create one schema per product family.
- Shared tables keep generic names. Module-specific tracking, gameplay, planning, and views use a product-family prefix such as `mainline_`.

### Pokémon Identity And Mechanics

Implemented tables:

- `reference.evolution_families`
- `reference.pokemon_species`
- `reference.pokemon_forms`
- `reference.pokemon_form_rules`
- `reference.pokemon_form_item_requirements`
- `reference.pokemon_attributes`
- `reference.evolution_methods`
- `reference.pokemon_evolution_edges`

Rules:

- Species are National Dex identities.
- Forms are concrete selectable/displayable identities.
- Evolution families are reuse groupings anchored by the first species in National Pokedex order, matching Bulbapedia's evolutionary-line convention.
- Breeding-only relationships are not evolution families; Phione and Manaphy remain separate for reuse checks.
- Non-default forms are curated for team/planner/history usefulness: regional forms, persistent alternate forms, held-item forms, evolution-outcome forms, gender/size/authenticity forms with gameplay or biography meaning.
- Battle-only transformations, Mega/Gigantamax/Primal forms, and purely cosmetic living-dex variants are excluded from team-selectable form scope unless a future feature explicitly needs them. Current accepted exclusions include Deerling/Sawsbuck seasonal forms and Gimmighoul Roaming Form; the default Gimmighoul row represents Chest Form for playthrough tracking.
- Attributes are timeline/change-point rows by generation.
- Attribute rows must model historical mechanics timing: Generation 1 has no egg groups or abilities, Generation 2 introduces egg groups and split Special stats, Generation 3 introduces abilities, and Generation 5 introduces hidden abilities.
- Form rules describe whether a form is team-selectable, battle-only, cosmetic, regional, evolution-locked, or otherwise special.
- Item-driven form mechanics live in `reference.pokemon_form_item_requirements`, including held-item requirements, alternative held items, form-change items, and type/signature-move effects.
- Arceus Plate/Z-Crystal forms, Silvally Memory forms, Genesect Drive forms, Giratina Origin Forme, Dialga/Palkia Origin Formes, and Ogerpon mask forms are modeled as curated non-default forms plus item requirement rows.
- Generation-bounded item behavior must use `generation_start_id` and `generation_end_id`; for example, Arceus Z-Crystal form requirements are Generation VII only.
- Version-group bounds refine item-form behavior when generation bounds are too broad; for example, Griseous Orb covers Giratina Origin Forme through BDSP while Griseous Core starts at Legends: Arceus.
- Evolutions must support team evolution actions, history, and planner suggestions.
- Evolution data should use broad rows where rules are stable and version-group-aware rows where historic game behavior differs.
- Evolution edges are form-aware. Regional evolutions, gender outcomes, authenticity/masterpiece forms, rare family/segment outcomes, and style/form outcomes should reference concrete source and target forms.
- Evolution method is the primary action family; supporting conditions such as held item, gender, time of day, known move/type, location labels, and structured edge-case data can coexist on the same edge.
- Hard-to-model edge cases should use structured `condition_data` rather than adding unstable one-off method lookup rows.
- Method lookup descriptions define broad product meaning only; row-specific evolution requirements stay on `reference.pokemon_evolution_edges`.

### Moves, Abilities, Items

Implemented tables:

- `reference.types`
- `reference.natures`
- `reference.egg_groups`
- `reference.type_matchups`
- `reference.abilities`
- `reference.ability_attributes`
- `reference.move_kinds`
- `reference.moves`
- `reference.move_attributes`
- `reference.item_categories`
- `reference.items`
- `reference.item_category_memberships`

Rules:

- Type matchups are generation-aware so team weakness/resistance calculations match the selected game era.
- Ability identity follows the agreed source hierarchy, not PokeAPI when curated sources disagree.
- Ability identity scope is mainline playthrough games. Official non-playthrough battle-source identities, such as Pokémon Champions-only Mega abilities, are outside the supported product scope unless they become relevant to a mainline playthrough game or product feature.
- Duplicate source names must be allowed where official/source identity requires it.
- Ability attributes are timeline/change-point rows by version group when ability mechanics or descriptions changed historically.
- Ability attributes must not be seeded from current-only descriptions where historic behavior differs. Each row needs historical version-group or generation-start source evidence, and row text should stay concise/product-facing rather than simulator-complete.
- Move attributes are timeline/change-point rows by generation for move mechanics and effect text.
- Move attributes must support variable damage class and null fixed values for moves whose power, category, or PP is inherited from a base move, such as generic Z-Moves, Max Moves, and G-Max Moves.
- Move identity should be seeded as a full canonical catalog before evolution edges or move attributes reference moves.
- Move kinds separate regular moves from Z-Moves, Max Moves, and G-Max Moves so team planning/current moves can filter regular learnable moves while preserving the complete core-series catalog.
- Item scope is Pokémon-relevant only: held items and biography/mechanics items, not a full item encyclopedia.
- Item category descriptions define Voydex inclusion scope and can be reused by UI filters.
- Item seeds can start in small dependency batches, such as form-change items and evolution items required by seeded mechanics, then expand as availability and biography features need them.

### Availability And Learnsets

Implemented tables:

- `reference.availability_methods`
- `reference.pokemon_availability`
- `reference.move_availability`
- `reference.item_availability`
- `reference.learn_methods`
- `reference.pokemon_learnsets`

Rules:

- Availability must support planning by game/version group and optional DLC.
- Game-specific availability and learnset rows must reference `reference.game_content_scopes` for `game_id + version_group_id` consistency.
- Availability, machine, and learnset rows are cumulative content-scope delta rows. Base scopes seed base facts; optional child scopes seed additions, source-backed overrides, or source-backed removals.
- `scope_operation = add` is the normal positive row. `override` and `remove` are reserved for source changes that supersede earlier scopes.
- Pokémon availability is a resolved positive model: row existence in the resolved view means available in that effective scope after audit.
- Pokémon availability should use curated method slugs: `native_encounter`, `static_encounter`, `starter`, `gift`, `in_game_trade`, `fossil_restoration`, `evolution`, `breeding`, `roaming_encounter`, `raid_or_special`, `event`, `external_trade`, and `transfer_only`.
- Availability and learn method descriptions are stable product-facing definitions; row-specific details stay in availability, learnset, and product note rows.
- Item availability can reference an availability method where the current method set fits, but a full item-specific acquisition taxonomy is outside the supported product scope for now.
- Future availability detail may include source-specific locations, encounter methods, story gates, and availability windows.
- Future availability detail may also include platform-specific rerelease behavior, especially where official rereleases or enhanced platform editions change connectivity, transfer paths, or availability constraints.
- Learnsets must preserve source-valid method and level rows, including multiple level-up rows when source data lists them.
- Learnset acquisition can be scoped to optional child version groups such as DLC; move usability and machine labels can be inherited from the resolved parent/dependency closure when the move or machine was introduced earlier.
- Move availability is a positive game/content-scope model for whether a move is available or usable in that scope. Move learn/acquisition method belongs in `reference.pokemon_learnsets`.
- Move machines are the source of truth for TM/HM/TR label-to-move mappings by version group/game scope. Child scopes seed only newly introduced machine labels. Machine learnset rows reference `move_machine_id`.
- Evolution edges, Pokémon availability, move availability, item availability, and Pokémon learnsets use generated surrogate `id` values. Seed files must omit `id`; natural/composite uniqueness rules define row identity.

### Pokedex

Implemented tables:

- `reference.pokedex`
- `reference.pokedex_entries`

Rules:

- Pokedex completion is species-level.
- Pokedex entries may keep an optional display form, but completion identity and uniqueness remain species-level.
- A version group can have multiple Pokedexes.
- DLC Pokedexes are optional completion scopes.
- National and special post-game Pokedexes are supported optional completion scopes. They are trackable/browsable when seeded and count toward completion only when `include_optional_pokedexes_in_completion` is enabled for the play.
- Optional Pokedex scopes and optional Pokedex entries are separate settings: scope inclusion controls whole National/special Pokedexes; entry inclusion controls optional species inside an included Pokedex.

## tracking

Implemented tables:

- `tracking.mainline_snapshot_policies`
- `tracking.mainline_categories`
- `tracking.mainline_milestone_types`
- `tracking.mainline_milestone_prerequisite_kinds`
- `tracking.mainline_milestones`
- `tracking.mainline_milestone_prerequisites`
- `tracking.mainline_opponents`
- `tracking.mainline_badges`
- `tracking.mainline_collectible_types`
- `tracking.mainline_collectibles`
- `tracking.mainline_collectible_entries`
- `tracking.mainline_milestone_decision_options`
- Reference join tables for Pokémon/opponent/badge/collectible relations.

Rules:

- Tracking defines what can be tracked; gameplay records the user's state.
- Tracking rows are authenticated-client read-only and service/admin writable.
- `mainline_milestones` is the internal database name for ordered story/progression steps. The UI can label these as Story Steps without renaming the schema tables.
- Categories are version-group-wide; mainline_milestones, mainline_opponents, mainline_badges, and mainline_collectibles may be version-group-wide or game-specific.
- Milestone `sort_order` is category-local display order in the final play scope. Game-specific milestones can fill order slots between version-group-wide milestones, and previous-step prompts, route dependencies, and unlock guidance are modeled by `tracking.mainline_milestone_prerequisites`.
- Game-specific tracking rows must reference `reference.game_content_scopes` for `game_id + version_group_id` consistency. Milestone refs and milestone prerequisites cannot link two game-specific definitions from different games.
- Important story mainline_milestones can have a snapshot policy: none, optional, recommended.
- Bulk completion must remain easy; snapshots are not mandatory.
- Pokedex and collectible changes should not automatically become timeline events.

## gameplay

Implemented tables and app-facing functions:

- `gameplay.mainline_play_statuses`
- `gameplay.mainline_plays`
- `gameplay.mainline_play_settings`
- `gameplay.mainline_play_optional_content_scopes`
- `gameplay.mainline_play_pokemon_roster_states`
- `gameplay.mainline_play_pokemon`
- `gameplay.mainline_play_pokemon_moves`
- `gameplay.add_mainline_play_pokemon`
- `gameplay.evolve_mainline_play_pokemon`
- `gameplay.change_mainline_play_pokemon_form`
- `gameplay.retire_mainline_play_pokemon`
- `gameplay.replace_mainline_play_pokemon`
- `gameplay.mainline_play_milestone_progress`
- `gameplay.mainline_play_milestone_decisions`
- `gameplay.mainline_play_collectible_entry_progress`
- `gameplay.set_mainline_play_collectible_entry_progress`
- `gameplay.mainline_play_pokedex_species_progress`
- `gameplay.set_mainline_play_pokedex_species_progress`
- `gameplay.mainline_play_event_origins`
- `gameplay.mainline_play_event_types`
- `gameplay.mainline_play_events`
- `gameplay.mainline_play_event_team_snapshots`
- `gameplay.mainline_play_event_team_snapshot_moves`
- `gameplay.mainline_play_event_pokemon_refs`
- `gameplay.mainline_play_tags`
- `gameplay.mainline_play_pokemon_tags`
- `gameplay.mainline_challenge_rule_types`
- `gameplay.mainline_challenge_rules`
- `gameplay.mainline_play_challenge_rules`
- `gameplay.user_game_library_statuses`
- `gameplay.user_game_library_entries`

Rules:

- A play is the central user-owned adventure.
- Play statuses are not_started, playing, paused, completed, and abandoned.
- Archive is separate from play status.
- Play name is required in stored data; the app should generate a default during create flow when the user does not provide one.
- Plays should store a constrained `version_group_id` alongside `game_id` so optional content and tracking joins can enforce base content lineage cleanly.
- Play settings own play-specific tracking/completion choices such as Pokedex tracking, Pokedex completion inclusion, collectible completion inclusion, optional Pokedex-scope inclusion, optional Pokedex-entry inclusion, and selected optional content.
- Current active/reserve roster is capped at 6 active Pokémon plus 6 reserve Pokémon.
- Retired/replaced Pokémon can remain in history without counting toward current roster limit.
- Team edits can be correction-only or recorded as in-game changes.
- Recorded team lifecycle events must preserve event-time species/form identity for Collection and reuse history.
- Play events are user-facing history, not a technical audit log.
- Timeline ordering must support imported mainline_plays without exact timestamps.
- Story snapshots must store historical copies of team state.
- Hall of Fame/final team is a special event/snapshot type.
- Story and collectible progress tables use sparse positive rows: absence means incomplete/uncollected, row existence means completed/collected.
- Pokedex progress uses sparse species rows: absence means neither seen nor caught, while stored rows can represent seen-only or caught.
- Pokedex progress is stored by species, not Pokedex entry.
- Pokedex progress rows are limited to species in a Pokedex attached to the play base version group or selected optional content.
- Collectible and Pokedex progress mutation helpers are the preferred app write path for ordinary toggles because they preserve sparse-row behavior and let the existing scope triggers enforce play/version validity.
- Tags, challenge-rule links, and game-library rows can use direct table CRUD because their ownership rules are enforced by RLS plus composite foreign keys/triggers and they do not need timeline/history side effects.

## planning

Implemented tables and app-facing functions:

- `planning.mainline_team_plan_statuses`
- `planning.mainline_team_plans`
- `planning.mainline_team_plan_optional_content_scopes`
- `planning.mainline_team_plan_members`
- `planning.mainline_team_plan_member_moves`
- `planning.mainline_play_plan_links`
- `planning.mainline_plan_member_link_statuses`
- `planning.mainline_play_plan_member_links`
- `planning.link_mainline_team_plan_to_play`
- `planning.initialize_mainline_play_plan_member_links`
- `planning.refresh_mainline_play_plan_member_link_status`
- `planning.link_mainline_play_pokemon_to_plan_member`
- `planning.realize_mainline_team_plan_member`
- `planning.skip_mainline_team_plan_member`
- `planning.mainline_team_plan_tags`
- `planning.mainline_team_plan_challenge_rules`

Rules:

- Plans can exist before mainline_plays.
- Plans can select optional content such as DLC before a play exists.
- Team plans should store a constrained `version_group_id` alongside `game_id` so optional content and availability joins can enforce base content lineage cleanly.
- Play-plan links should enforce same owner, same game, and same version group.
- Creating a play from a plan does not auto-fill the active team.
- Planned members remain as reference unless the user deletes them.
- Plan member statuses are pending, linked, reached, skipped.
- Plan member status belongs to the play/plan relationship.
- Reached target should be derived when linked play Pokémon species/form matches the planned target, or from recorded event-time identity when the target was reached historically.
- The app should suggest first obtainable/evolution-stage Pokémon when adding a planned final evolution to a play.
- Pokémon reuse validation must support real usage checks and preemptive checks for planned targets, preferred starting Pokémon, and future evolution destinations.
- Plan-to-play mutation helpers are the preferred app write path for linking plans to plays, initializing plan member checklist rows, realizing a planned member as an actual play Pokémon, linking an existing play Pokémon to a plan member, refreshing reached status, and skipping a play-specific planned member.
- Plan tags and plan challenge-rule links can use direct table CRUD because their ownership rules are enforced by RLS plus composite foreign keys/triggers and they do not mutate play/team realization state.

## public / user-owned personalization

Implemented responsibilities:

- Profiles.
- Preferences.
- User-owned global tags.

Rules:

- Preferences should support global user behavior such as Pokémon reuse warnings/filtering. Play-specific completion choices such as DLC, Pokedex, optional Pokedex-scope inclusion, and optional Pokedex-entry inclusion remain per-play settings.

## views

Implemented read models:

- Play summary.
- Play completion summary.
- Play overview.
- Play milestone detail.
- Play team detail.
- Play timeline detail.
- Play Pokedex detail.
- Play collectible detail.
- Plan summary.
- Plan detail.
- Collection detail.
- Collection used identities.
- Dashboard summary.
- Stats summary.

Rules:

- Views are app-facing read models.
- They should not become mutation targets.
- Views reading user-owned tables need Supabase-safe security behavior.
- Summary counts should respect the play's currently enabled base and optional content scopes.
