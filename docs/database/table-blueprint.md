# Table Blueprint

This is the clean Voydex table blueprint before SQL implementation.

It defines intended tables, ownership, and important columns. It is not executable SQL.

## public

### `public.profiles`

Auth-linked profile row. This table mirrors application profile data for `auth.users` without reusing the `users` table name in `public`.

Important fields:

- `id`: auth user ID.
- `display_name`.
- `avatar_url`.
- `created_at`.
- `updated_at`.

Notes:

- One row per auth user.
- User-owned through `id = auth.uid()`.

### `public.user_preferences`

User-level app defaults.

Important fields:

- `user_id`.
- `pokemon_reuse_scope`: none, form, species, evolution_family.
- `pokemon_reuse_behavior`: warn, filter, or block where allowed.
- UI/display preferences that are truly global and not play-specific.
- `created_at`.
- `updated_at`.

Notes:

- Play-specific settings stay in gameplay tables.

### `public.tags`

User-owned tag definitions.

Important fields:

- `id`.
- `user_id`.
- `slug`.
- `name`.
- `color_token`, nullable visual token.
- `created_at`.
- `updated_at`.

Rules:

- Tag slugs are unique per user.
- Tag links live in the schema that owns the tagged object.

## reference

### Base Game Data

#### `reference.generations`

Pokémon generations.

Important fields:

- `id`.
- `slug`.
- `name`.
- `start_year`.
- `sort_order`.

#### `reference.regions`

Pokémon regions.

Important fields:

- `id`.
- `slug`.
- `name`.
- `sort_order`.

#### `reference.product_families`

Pokémon product families.

Important fields:

- `id`.
- `slug`: mainline, dungeon, pokopia, go, home, ranger, sleep.
- `name`.
- `description`.
- `support_status`: active, planned, or backlog.
- `sort_order`.

Rules:

- Product families are Pokémon product boundaries, not database schemas or frontend UI modules.
- Current active product family is `mainline`.
- Future product families can share reference data while owning their own tracking/gameplay/planning models.
- `home` is a product family even though it does not need `reference.games` rows.

#### `reference.game_types`

Mainline game classification.

Important fields:

- `id`.
- `slug`: main, enhanced, remake, sequel.
- `name`.
- `description`.
- `sort_order`.

Notes:

- Do not include generic fallback game types unless a scoped game actually uses one.

#### `reference.version_groups`

Game content scopes.

Important fields:

- `id`.
- `slug`.
- `name`.
- `generation_id`.
- `parent_version_group_id` for DLC/optional child scopes.
- `sort_order`.
- `created_at`.

Rules:

- DLC is a child version group, not a game.
- Parent and child version groups must belong to the same generation unless a future official case requires otherwise.

#### `reference.platforms`

Known play platforms/consoles.

Important fields:

- `id`.
- `slug`.
- `name`.
- `manufacturer`.
- `platform_kind`: console, handheld, hybrid, service, emulator.
- `sort_order`.

Rules:

- Platforms support play metadata and stats.
- Do not use generic fallback rows for user-specific values; store those as custom play labels when needed.

#### `reference.games`

Individual games that belong to a Voydex product family.

Important fields:

- `id`.
- `slug`.
- `name`.
- `product_family_id`.
- `generation_id`.
- `region_id`.
- `version_group_id`.
- `game_type_id`.
- `release_year`.
- `sort_order`.
- `created_at`.

Rules:

- Games are real games only, not DLC.
- Current seeded games all belong to the `mainline` product family.
- `generation_id` must be consistent with the referenced version group.
- Optional `game_id` in dependent reference tables is used for version exclusives.

#### `reference.game_platforms`

Official game release platforms.

Important fields:

- `game_id`.
- `platform_id`.
- `release_kind`: native or enhanced.
- `sort_order`.
- `created_at`.

Rules:

- One native platform per game for the canonical release platform.
- Enhanced platform rows cover official enhanced editions such as a Switch 2 Edition.
- Do not model every backward-compatible console path here; user-specific play hardware can still use play metadata/custom platform labels.

#### `reference.game_content_scopes`

Maps games to base and optional content scopes.

Important fields:

- `game_id`.
- `version_group_id`.
- `is_base_scope`.
- `sort_order`.
- `created_at`.

Rules:

- One row per game/content scope pair.
- Base game rows use `is_base_scope = true`.
- Optional DLC/content rows use the same game with a child version group.
- Game-scoped availability and learnset rows must reference this table.

#### `reference.content_scope_dependencies`

Ordered dependencies between optional content scopes.

Important fields:

- `version_group_id`, the content scope being resolved.
- `required_version_group_id`, another optional scope that must be included first.
- `dependency_kind`, currently `required`.
- `sort_order`.
- `created_at`.

Rules:

- Dependencies are for optional sibling scopes that share the same base parent.
- Parent/base inclusion still comes from `reference.version_groups.parent_version_group_id`.
- Use this table for source-backed progression dependencies such as The Indigo Disk requiring The Teal Mask.
- Do not use this table to model commercial bundles when the content can still be tracked independently.

### Pokémon Identity And Mechanics

#### `reference.evolution_families`

Evolution family/reuse grouping.

Important fields:

- `id`.
- `slug`.
- `name`.
- `sort_order`.

Rules:

- This supports Pokémon reuse policy with `evolution_family` scope.
- Forms inherit their species family unless future product scope requires form-specific family branches.
- Family IDs and names follow the Bulbapedia evolutionary-line convention: the line is anchored by the species that appears first in National Pokedex order, not necessarily the lowest evolutionary stage.
- Through Generation IX, the curated seed target is 541 evolution families.
- Biological root/evolution-start points are derived from `reference.pokemon_evolution_edges` instead of being duplicated here.

#### `reference.pokemon_species`

National Dex species.

Important fields:

- `id`.
- `national_number`.
- `slug`.
- `name`.
- `introduced_generation_id`.
- `evolution_family_id`.
- `color`.
- `is_baby`.
- `is_legendary`.
- `is_mythical`.
- `created_at`.

Rules:

- Species identity powers Pokedex completion.
- Evolution family identity powers broad Pokémon reuse checks.

#### `reference.pokemon_forms`

Concrete Pokémon form identities.

Important fields:

- `id`.
- `species_id`.
- `slug`.
- `name`.
- `introduced_generation_id`.
- `is_default`.
- `form_order`.
- `height_decimeters`.
- `weight_hectograms`.
- `sprite_slug` or source-specific sprite key.
- `created_at`.

Rules:

- Exactly one default form per species.
- Composite integrity must enforce `species_id + form_id` relationships in dependent tables.
- Non-default form seeds include forms that are persistent, team-selectable, mechanically relevant, evolution-relevant, regional, or meaningful to Pokémon biography/history.
- Do not seed battle-only transformations as team-selectable forms. This excludes Mega Evolution, Gigantamax, Primal Reversion, and battle-triggered forms such as Crowned Zacian/Zamazenta, Palafin Hero, and Terapagos Terastal/Stellar.
- Do not seed purely cosmetic/living-dex variants unless a future living-dex feature explicitly needs them. Current accepted exclusions include Deerling/Sawsbuck seasonal forms and Gimmighoul Roaming Form; the default Gimmighoul row represents Chest Form for playthrough tracking.

#### `reference.pokemon_form_rules`

Form behavior metadata for planning/team builder/display.

Important fields:

- `form_id`.
- `form_kind`: default, regional, alternate, cosmetic, battle, special.
- `is_team_selectable`.
- `is_battle_only`.
- `is_cosmetic`.
- `is_regional`.
- `is_evolution_locked`.
- `condition_summary`.
- `notes`.

Rules:

- Battle-only forms are not team-builder forms by default.
- Held-item-driven mechanics live in `reference.pokemon_form_item_requirements`.
- Default forms use implicit default behavior; `pokemon_form_rules` is seeded for curated non-default forms.

#### `reference.pokemon_form_item_requirements`

Item relationships that select, maintain, or explain Pokémon forms.

Important fields:

- `form_id`.
- `item_id`.
- `generation_start_id`.
- `generation_end_id`, nullable.
- `version_group_start_id`, nullable.
- `version_group_end_id`, nullable.
- `requirement_kind`: required_held_item, alternative_held_item, or form_change_item.
- `type_effect_scope`: form_type, secondary_type, signature_move_type, or null.
- `type_id`, nullable.
- `notes`.
- `created_at`.

Rules:

- This table owns item-driven form behavior; `pokemon_form_rules` only owns display/planning behavior flags.
- Use generation bounds for broad historical behavior and version-group bounds when a rule changes inside the same generation, such as Giratina Origin Forme using Griseous Orb through BDSP and Griseous Core from Legends: Arceus onward.
- `required_held_item` means the item must be held to maintain/select the form in that generation scope.
- `alternative_held_item` means one of multiple held items can select the same form, such as Arceus Plates and Generation VII Z-Crystals.
- `form_change_item` means the item changes form without being the held item, such as Dialga's Adamant Crystal and Palkia's Lustrous Globe.
- Type-linked rows must set both `type_effect_scope` and `type_id`.
- Generation-bounded behavior must set `generation_end_id`; Generation VII Arceus Z-Crystal rows are the current known case.
- Current curated scope includes Giratina Origin Forme, Arceus Plate/Z-Crystal forms, Silvally Memory forms, Genesect Drive forms, Dialga/Palkia Origin Formes, and Ogerpon mask forms.

#### `reference.pokemon_attributes`

Generation timeline rows for stats, types, abilities, and egg groups.

Important fields:

- `species_id`.
- `form_id`.
- `generation_start_id`.
- Primary and secondary type IDs.
- Primary, secondary, and hidden ability IDs.
- Primary and secondary egg group IDs.
- Base stats.
- `created_at`.

Rules:

- One row per change point, not one row per generation.
- Query latest row where `generation_start_id <= target_generation_id`.
- Must enforce `species_id + form_id` integrity.
- Every seeded form must have an attribute row at the form's introduced generation.
- Generation 1 uses one Special stat; seed it into both special attack and special defense columns so the table shape stays stable.
- Generation 1 rows must not set egg groups or abilities because those mechanics did not exist yet.
- Generation 2 rows introduce egg groups and split Special into special attack and special defense.
- Generation 3 rows introduce abilities.
- Generation 5 rows introduce hidden abilities.

#### `reference.evolution_methods`

Evolution method lookup.

Important fields:

- `id`.
- `slug`.
- `name`.
- `description`.
- `sort_order`.

Examples:

- level-up.
- item.
- trade.
- friendship.
- move-known.
- location.
- time-of-day.
- gender-specific.
- special-condition.

#### `reference.pokemon_evolution_edges`

Evolution relationships from one species/form to another.

Important fields:

- `id`, generated surrogate key; seed files omit it.
- `from_species_id`.
- `from_form_id`.
- `to_species_id`.
- `to_form_id`.
- `version_group_id`, nullable for broadly applicable rows.
- `introduced_generation_id`.
- `evolution_method_id`.
- `minimum_level`.
- `item_id`.
- `held_item_id`.
- `known_move_id`.
- `known_type_id`.
- `gender`.
- `time_of_day`.
- `location_label`.
- `condition_summary`.
- `condition_data` for hard-to-model edge cases.
- `sort_order`.

Rules:

- Must enforce composite form integrity for from and to forms.
- Use broad rows where the evolution rule applies across the mainline series.
- Use version-group-specific rows where historic game behavior differs, such as Pokémon Legends: Arceus item alternatives for trade evolutions.
- Evolution method is the primary user-facing action family, not a complete decomposition of every condition. Combined mechanics can still set supporting columns such as `held_item_id`, `gender`, `time_of_day`, or `condition_data`.
- Use `condition_data` for edge cases that need structured support without adding unstable one-off lookup rows, such as rare form outcomes, party composition, move-use counts, upside-down evolution, recoil damage, and collectible counters.
- Form-sensitive edges must point to the concrete source and target form, including regional evolutions, gender outcomes, authenticity/masterpiece forms, rare family/segment outcomes, and style/form outcomes.
- Supports team evolution actions and plan target progression.
- Row identity is the from-form, to-form, version scope, method, and condition payload; `id` is not source meaningful.

### Moves, Abilities, Items, Types

#### `reference.types`

Pokémon elemental types.

Important fields:

- `id`.
- `slug`.
- `name`.
- `introduced_generation_id`.
- `sort_order`.

#### `reference.natures`

Pokémon natures.

Important fields:

- `id`.
- `slug`.
- `name`.
- `introduced_generation_id`.
- `increased_stat`.
- `decreased_stat`.
- `sort_order`.

#### `reference.egg_groups`

Pokémon egg groups.

Important fields:

- `id`.
- `slug`.
- `name`.
- `introduced_generation_id`.
- `sort_order`.

#### `reference.type_matchups`

Generation-aware type effectiveness rows.

Important fields:

- `attacking_type_id`.
- `defending_type_id`.
- `generation_start_id`.
- `multiplier_numerator`.
- `multiplier_denominator`.
- `created_at`.

Rules:

- One row per matchup change point, not one row per generation.
- Query latest row where `generation_start_id <= target_generation_id`.
- Use rational multiplier fields instead of floats so values like 0.5, 1, 2, and 0 are exact.
- This powers team strengths/weaknesses and Pokedex type matchup display by game era.

#### `reference.abilities`

Pokémon abilities.

Important fields:

- `id`.
- `slug`.
- `name`.
- `external_id` or source ID where useful.
- `introduced_generation_id`.
- `sort_order`.

Rules:

- `name` is not unique because source identities can share display names.
- Slug and source IDs should remain unique.
- Ability identity scope is mainline playthrough games; official non-playthrough battle-source abilities are outside supported product scope until a product feature needs them.

#### `reference.ability_attributes`

Version-group timeline rows for ability mechanics and product-facing effect text.

Important fields:

- `ability_id`.
- `version_group_start_id`.
- `effect_summary`.
- `created_at`.

Rules:

- One row per ability effect summary change point.
- Query latest row whose start version group is at or before the target version group, ordered by `reference.version_groups.generation_id` and `sort_order`.
- This keeps historic ability behavior separate from current ability identity.
- Do not seed current-only ability text as if it applied from introduction. Rows require historical version-group or generation-start source evidence.
- Do not seed current-only ability text as historic data. If historic text is unavailable for a specific ability, document that ability as an accepted exception during the ability attribute source pass.

#### `reference.move_kinds`

Move identity categories.

Important fields:

- `id`.
- `slug`.
- `name`.
- `description`.
- `sort_order`.

Rules:

- Required categories are `regular`, `z-move`, `max-move`, and `g-max-move`.
- UI surfaces that represent a Pokémon's learned/current moves should filter to regular moves unless a feature explicitly supports battle-only special moves.

#### `reference.moves`

Pokémon moves.

Important fields:

- `id`.
- `slug`.
- `name`.
- `move_kind_id`.
- `external_id` or source ID where useful.
- `introduced_generation_id`.
- `sort_order`.

Rules:

- This is move identity only; mechanics live in `reference.move_attributes`.
- Seed this as a full canonical move catalog before evolution edges or move attributes reference moves.
- Indexed rows use the source move index as internal ID and external ID; G-Max rows use a reserved internal ID range because the curated source has only local G-Max order.

#### `reference.move_attributes`

Move mechanical timeline rows.

Important fields:

- `move_id`.
- `generation_start_id`.
- `type_id`.
- `power`.
- `accuracy`.
- `pp`.
- `priority`.
- `damage_class`: physical, special, status, or variable.
- Optional effect/source text fields.

Rules:

- One row per move mechanics/effect change point.
- Null `power`, `accuracy`, or `pp` means the source has no fixed value for that field.
- Use `damage_class = variable` when the class is inherited from a compatible base move, such as collapsed generic Z-Moves, damaging Max Moves, and most G-Max Moves.

#### `reference.move_machines`

Version- and game-scoped TM/HM/TR machine catalog.

Important fields:

- `id`, curated deterministic machine id.
- `move_id`.
- `version_group_id`.
- `game_id`, nullable for version-group-wide machine catalogs.
- `learn_method_id`, restricted to TM/HM/TR methods.
- `machine_label`, such as TM24, HM03, or TR10.
- `scope_operation`, default `add`.
- `sort_order`.

Rules:

- One source-of-truth row per machine label in a version group or game-specific scope.
- Optional child scopes seed only newly introduced, source-changed, or removed machine labels. Parent machine rows are inherited through resolved views.
- Machine labels are acquisition/distribution facts, not move mechanics; do not store them in `reference.moves` or `reference.move_attributes`.
- Game-specific rows must match `reference.game_content_scopes`.
- `id` uses the deterministic formula documented in the schema comment so learnset seeds can reference stable machine rows.
- TM/HM/TR learnset rows reference this table through `reference.pokemon_learnsets.move_machine_id`.
- Child-scope learnset rows may reference a machine introduced in the parent/dependency closure.

#### `reference.item_categories`

Pokémon-relevant item categories.

Important fields:

- `id`.
- `slug`.
- `name`.
- `description`.
- `sort_order`.

#### `reference.items`

Pokémon-relevant item catalog.

Important fields:

- `id`.
- `slug`.
- `name`.
- `primary_category_id`, required default UI grouping.
- `introduced_generation_id`.
- `external_id`, nullable.
- `sort_order`.

Rules:

- This is not a full item encyclopedia.
- Include only Pokémon-held items or items essential to Pokémon biography/mechanics.
- Evolution stones/items, held trade items, form-change items, and Pokémon-biography evolution resources can be seeded as reduced dependency batches before full availability rows.
- Exclude general medicine, treasures, ingredients, decorations, clothing, mail, generic key items, TMs/HMs/TRs, ability modifiers, nature mints, and unrelated bag items unless a future feature needs them.

#### `reference.item_category_memberships`

Many-to-many item category membership.

Important fields:

- `item_id`.
- `category_id`.

Rules:

- Items can belong to multiple categories.
- Example: a Mega Stone is both `held_item` and `mega_stone`.
- Example: a held form-change item is both `held_item` and `form_change_item`.

### Availability And Learnsets

#### `reference.availability_methods`

Availability method/context lookup.

Important fields:

- `id`.
- `slug`.
- `name`.
- `description`.
- `sort_order`.

Seed slugs:

- `native_encounter`.
- `static_encounter`.
- `starter`.
- `gift`.
- `in_game_trade`.
- `fossil_restoration`.
- `evolution`.
- `breeding`.
- `roaming_encounter`.
- `raid_or_special`.
- `event`.
- `external_trade`.
- `transfer_only`.

#### `reference.pokemon_availability`

Pokémon/form availability by content scope.

Important fields:

- `id`, generated surrogate key; seed files omit it.
- `species_id`.
- `form_id`.
- `version_group_id`.
- `game_id`, nullable for version-group-wide availability.
- `availability_method_id`.
- `scope_operation`, default `add`.
- `notes`.

Rules:

- Delta model: raw rows describe availability introduced, changed, or removed by the row's content scope.
- Resolved positive model: row exists in the resolved view when the Pokémon/form is available in the effective scope.
- There is no negative availability flag; after a completed source pass, missing rows mean unavailable or outside the supported product scope.
- `game_id` set means game-specific/version-exclusive availability and must match `reference.game_content_scopes`.
- Uniqueness is scoped by `species_id + form_id + version_group_id + availability_method_id` for version-group-wide rows and additionally by `game_id` for game-specific rows.
- Multiple methods for the same Pokémon/form/scope are allowed only when the methods are meaningfully distinct acquisition paths.
- Must enforce `species_id + form_id` integrity.

#### `reference.move_availability`

Move availability by content scope.

Important fields:

- `id`, generated surrogate key; seed files omit it.
- `move_id`.
- `version_group_id`.
- `game_id`, nullable.
- `scope_operation`, default `add`.

Rules:

- `game_id` supports version-specific move availability if needed and must match `reference.game_content_scopes`.
- Delta model: raw rows describe move availability introduced, changed, or removed by the row's content scope.
- Resolved positive model: row exists in the resolved view when the move is available/usable in the effective scope after audit.
- Move acquisition method belongs in `reference.pokemon_learnsets`, not in this table.
- Source/version caveats stay in seed comments and audit docs, not loaded row values.

#### `reference.item_availability`

Item availability by content scope.

Important fields:

- `id`, generated surrogate key; seed files omit it.
- `item_id`.
- `version_group_id`.
- `game_id`, nullable.
- `availability_method_id`, nullable until item-specific acquisition methods are intentionally modeled.
- `scope_operation`, default `add`.
- `notes`.

Rules:

- `game_id` supports version-specific item availability if needed and must match `reference.game_content_scopes`.
- Delta model: raw rows describe item availability introduced, changed, or removed by the row's content scope.

#### `reference.learn_methods`

Move learn method lookup.

Important fields:

- `id`.
- `slug`.
- `name`.
- `description`.
- `sort_order`.

#### `reference.pokemon_learnsets`

Pokémon/form move learnsets by version group.

Important fields:

- `id`, generated surrogate key; seed files omit it.
- `species_id`.
- `form_id`.
- `move_id`.
- `version_group_id`.
- `game_id`, nullable if method differs by game.
- `learn_method_id`.
- `level_learned_at`.
- `source_item_id`, nullable for item-based non-machine methods.
- `move_machine_id`, nullable except required for TM/HM/TR methods.
- `condition_summary`.
- `scope_operation`, default `add`.
- `sort_order`.

Rules:

- Preserve source-valid method and level rows.
- Allow multiple level-up rows for the same move/method when sources list different valid levels.
- Keep prior-evolution, move-reminder, event, and transfer sections out of direct level/TM/HM seeds unless represented by an explicit learn method and product behavior.
- Must enforce form integrity.
- Game-specific rows must match `reference.game_content_scopes`.
- Optional-content rows can use child version groups; move usability and machine labels can be inherited from the resolved parent/dependency closure, but acquisition stays scoped to the optional content.
- Optional child scopes seed only learnset rows not already present in the resolved parent/dependency closure, unless a source-backed `override` or `remove` row is needed.
- Level-up rows must set `level_learned_at`; every other method must leave it null.
- TM/HM/TR rows must set `move_machine_id`; every other method must leave it null.
- Row identity is Pokémon form, move, scope, method, level/item/machine details, and sort order within that form/scope; `id` is not source meaningful.
- Uniqueness is scoped by Pokémon form, move, version group, learn method, and normalized level/item/move machine, with separate indexes for version-group-wide and game-specific rows.
- `sort_order` is contiguous within each Pokémon form + version group + game scope.
- `source_item_id` is optional because TMs/HMs/TRs are intentionally not part of the reduced item catalog; use `move_machine_id` for machine display through `reference.move_machines`.

### Pokedex

#### `reference.pokedex`

Pokedex definitions by version group.

Important fields:

- `id`.
- `version_group_id`.
- `slug`.
- `name`.
- `pokedex_kind`: national, regional, local, dlc, special.
- `sort_order`.
- `is_completion_relevant`.

Rules:

- Pokedex rows represent source-visible Pokedex scopes for browsing and tracking.
- National and special post-game Pokedexes can be completion-relevant, but play completion includes them only when `include_optional_pokedexes_in_completion` is enabled.
- Browse-only local sections that duplicate an aggregate regional Pokedex should use `is_completion_relevant = false`.

#### `reference.pokedex_entries`

Species-level membership in a Pokedex.

Important fields:

- `pokedex_id`.
- `species_id`.
- `display_form_id`, nullable.
- `pokedex_number`.

Rules:

- Completion is species-level.
- Primary key is `(pokedex_id, species_id)`.
- `display_form_id` is for display/source specificity only and must not change completion identity.
- `pokedex_number` can be zero for source-authentic cases such as Victini #000 in the Unova Pokedex.
- For browse-only local Pokedex sections, `pokedex_number` stores the section-local source order; aggregate regional numbering is derived by joining the same species to the regional Pokedex for the version group.
- Each species appears at most once per Pokedex.
- Source-visible optional entries remain seeded with `is_source_required_for_completion = false` so browse/search can show them while completion math can either match source defaults or include optional entries per play setting.

## tracking

Tracking owns curated game progression definitions. Gameplay owns user progress.

Tracking rows are read-only to authenticated clients and writable only by service/admin roles.

### `tracking.mainline_snapshot_policies`

Snapshot behavior lookup.

Important fields:

- `id`.
- `slug`: none, optional, recommended.
- `name`.
- `sort_order`.

### `tracking.mainline_categories`

Mainline tracking categories by version group.

Important fields:

- `id`.
- `version_group_id`.
- `slug`.
- `name`.
- `category_kind`: story, collectible.
- `sort_order`.

Rules:

- Categories are version-group-wide grouping containers.
- Game-specific differences belong on mainline_milestones, mainline_opponents, mainline_badges, and mainline_collectibles.

### `tracking.mainline_milestone_types`

Story milestone type lookup.

Important fields:

- `id`.
- `slug`.
- `name`.
- `sort_order`.

Examples:

- story.
- gym.
- trial.
- grand-trial.
- rival.
- boss.
- elite-four.
- champion.
- titan.
- team-star.
- noble.
- decision.

### `tracking.mainline_milestone_prerequisite_kinds`

Milestone prerequisite relationship lookup.

Important fields:

- `id`.
- `slug`: suggested, required, story-unlock.
- `name`.
- `description`.
- `sort_order`.

Rules:

- These rows are product-facing because they explain why the app is prompting the user about earlier milestones.
- `suggested` supports bulk-completion prompts without implying a hard unlock.
- `required` and `story-unlock` are for stronger progression relationships that the UI can surface differently later.

### `tracking.mainline_milestones`

Story/progression step definitions.

`mainline_milestones` is the internal database term because it keeps table, foreign key, index, and generated type names short. The product UI may call these Story Steps.

Important fields:

- `id`.
- `version_group_id`.
- `game_id`, nullable for version-group-wide mainline_milestones.
- `category_id`.
- `milestone_type_id`.
- `snapshot_policy_id`.
- `parent_milestone_id`.
- `slug`.
- `name`.
- `description`.
- `sort_order`.
- `is_required_for_completion`.

Rules:

- Milestones are ordered by `sort_order` within their final play category scope for display.
- Game-specific milestones can fill order slots between version-group-wide milestones; per-game projected milestone lists must remain contiguous.
- `sort_order` does not define the full story graph. Previous-step prompts, route dependencies, and unlock guidance use `tracking.mainline_milestone_prerequisites`.
- Important fights can use optional or recommended snapshot policy.
- Bulk completion must remain possible without snapshots.
- Game-specific mainline_milestones must match `reference.game_content_scopes`.
- Category and milestone version groups must match.

### `tracking.mainline_milestone_prerequisites`

Prerequisite links between mainline milestone definitions.

Important fields:

- `id`, generated by the database.
- `milestone_id`.
- `prerequisite_milestone_id`.
- `version_group_id`.
- `prerequisite_kind_id`.
- `sort_order`.
- `notes`.

Rules:

- Milestone and prerequisite milestone must belong to the same version group.
- A milestone cannot reference itself.
- If both linked milestones are game-specific, they must use the same game.
- `sort_order` is local to the target milestone and controls prompt ordering when multiple previous steps matter.
- This table powers UI behavior such as "also mark previous milestones complete?" without forcing open-route games into one linear list.

### `tracking.mainline_opponents`

Opponent definitions.

Important fields:

- `id`.
- `version_group_id`.
- `game_id`, nullable for version-group-wide mainline_opponents.
- `slug`.
- `name`.
- `opponent_role`.
- Primary and secondary specialty type IDs.
- `sprite_slug` or source-specific sprite key.
- `sort_order`.

Rules:

- `opponent_role` is a curated slug, not user-owned data.
- Game-specific mainline_opponents must match `reference.game_content_scopes`.

### `tracking.mainline_badges`

Badge definitions.

Important fields:

- `id`.
- `version_group_id`.
- `game_id`, nullable for version-group-wide mainline_badges.
- `slug`.
- `name`.
- `type_id`, nullable.
- `sprite_slug` or source-specific sprite key.
- `sort_order`.

Rules:

- `type_id` supports badge display/filtering where a badge has a clear type association.
- Game-specific mainline_badges must match `reference.game_content_scopes`.

### `tracking.mainline_collectible_types`

Collectible family lookup. These rows are intentionally broader than individual collectible groups so the UI can group related checklists without adding another hierarchy table.

Important fields:

- `id`.
- `slug`.
- `name`.
- `sort_order`.

Initial seed slugs:

- `zygarde-component`.
- `totem-sticker`.
- `alolan-diglett`.
- `wisp`.
- `ominous-stake`.

### `tracking.mainline_collectibles`

Collectible groups.

Important fields:

- `id`.
- `version_group_id`.
- `game_id`, nullable for version-group-wide mainline_collectibles.
- `collectible_type_id`.
- `slug`.
- `name`.
- `total_count`, nullable.
- `sprite_slug` or source-specific sprite key.
- `sort_order`.
- `is_required_for_completion`.

Rules:

- Game-specific mainline_collectibles must match `reference.game_content_scopes`.
- `total_count` is optional so a group can be represented before every individual entry is modeled.

### `tracking.mainline_collectible_entries`

Individual collectible entries.

Important fields:

- `id`.
- `collectible_id`.
- `slug`.
- `name`.
- `location_label`.
- `sub_location_label`.
- `description`.
- `sort_order`.

### Reference Join Tables

Implemented tables:

- `tracking.mainline_milestone_pokemon_refs`.
- `tracking.mainline_milestone_opponent_refs`.
- `tracking.mainline_milestone_badge_refs`.
- `tracking.mainline_milestone_collectible_refs`.
- `tracking.mainline_milestone_decision_options`.

Rules:

- These connect milestone definitions to reference/context entities.
- Join refs include `relation_kind`, `sort_order`, `version_group_id` where needed for same-version integrity, and optional notes where useful.
- Pokémon refs enforce species/form integrity when a form is present.
- Opponent, badge, and collectible refs enforce same-version integrity with their milestone. If both sides are game-specific, they must use the same game. Collectible refs can target a collectible group or a specific collectible entry.
- User choices and completion state live in gameplay.

## gameplay

### `gameplay.mainline_play_statuses`

Play status lookup.

Seed statuses:

- not_started.
- playing.
- paused.
- completed.
- abandoned.

Rules:

- Archive is not a lifecycle status; use `mainline_plays.archived_at`.

### `gameplay.mainline_plays`

Central playthrough entity.

Important fields:

- `id`.
- `user_id`.
- `game_id`.
- `version_group_id`.
- `status_id`.
- `name`.
- `trainer_name`.
- `platform_id`, nullable.
- `custom_platform_name`, nullable.
- `started_on`.
- `completed_on`.
- `playtime_minutes`.
- `notes`.
- `save_notes`.
- `archived_at`, nullable.
- `created_at`.
- `updated_at`.

Rules:

- `name` is required; default-name generation happens in the app before insert.
- `version_group_id` must match the selected game's `version_group_id`; it is stored to support composite constraints for optional content, tracking, and availability joins.
- Archive is separate from lifecycle status.
- `completed_on` cannot be before `started_on` when both dates are present.
- `playtime_minutes` cannot be negative.
- `platform_id` references known platforms; `custom_platform_name` covers user-specific edge cases.
- The optional one-to-one play-to-team-plan link lives in `planning.mainline_play_plan_links`, not on the play row.

### `gameplay.mainline_play_settings`

Play-specific tracking and completion settings.

Important fields:

- `play_id`.
- `pokedex_tracking_enabled`.
- `include_pokedex_in_completion`.
- `include_collectibles_in_completion`.
- `include_optional_pokedexes_in_completion`.
- `include_optional_pokedex_entries_in_completion`.
- `created_at`.
- `updated_at`.

Rules:

- `include_optional_pokedexes_in_completion` controls whole optional Pokedex scopes such as National or special post-game Pokedexes.
- `include_optional_pokedex_entries_in_completion` controls optional entries inside an included Pokedex, such as source-visible optional mythicals or explicit optional entries.
- Optional Pokedex scope and optional entry settings are only meaningful when `include_pokedex_in_completion = true`.

Rules:

- Story progress is base play progress and does not need an include flag.
- Completion totals are derived; do not store percentage values here.
- Optional content such as DLC is selected in `mainline_play_optional_content_scopes`.

### `gameplay.mainline_play_optional_content_scopes`

Optional content selected for a play.

Important fields:

- `play_id`.
- `game_id`.
- `version_group_id`.
- `created_at`.

Rules:

- Stores only optional child version groups such as DLC.
- Base version group is implied by the play's game.
- `game_id` is duplicated from the play so the table can enforce `reference.game_content_scopes(game_id, version_group_id)` with a composite FK.
- Selected optional version groups must belong to the same generation and parent/base version group as the play's game unless a future official edge case requires otherwise.

### `gameplay.mainline_play_pokemon_roster_states`

Roster state lookup.

Examples:

- active.
- reserve.
- retired.
- replaced.

Rules:

- Active and reserve states require current slots.
- Retired and replaced states do not count toward the current roster limit.

### `gameplay.mainline_play_pokemon`

Pokémon recorded in a play.

Important fields:

- `id`.
- `play_id`.
- `roster_state_id`.
- `slot`, nullable for non-current states.
- `species_id`.
- `form_id`.
- `nickname`.
- `level`.
- `gender`.
- `is_shiny`.
- `nature_id`.
- `ability_id`.
- `held_item_id`.
- `met_location_label`.
- `met_level`.
- `ball_item_id`.
- `personal_notes`.
- `is_mvp`.
- `final_status`.
- `created_at`.
- `updated_at`.

Rules:

- Active Pokémon use slots 1 to 6.
- Reserve Pokémon use slots 7 to 12.
- Slot must be unique per play when set.
- Slot must be null when retired/replaced.
- Active/reserve states require a slot in their valid range.
- Retired/replaced states require no slot.
- Must enforce `species_id + form_id` integrity.
- Current `species_id` and `form_id` can change through recorded evolutions or form changes; event Pokémon refs preserve event-time identity for history.

### `gameplay.mainline_play_pokemon_moves`

Current moves for a play Pokémon.

Important fields:

- `play_pokemon_id`.
- `slot`.
- `move_id`.
- `created_at`.
- `updated_at`.

Rules:

- Slot is 1 to 4.
- One move per slot.

### Mainline Play Pokémon Mutation Functions

Preferred app-facing mutation functions for in-game team history.

Functions:

- `gameplay.add_mainline_play_pokemon`: inserts a play Pokémon, optional current moves, and optional Pokémon Added event/ref.
- `gameplay.evolve_mainline_play_pokemon`: updates the current species/form and writes `from` and `to` event Pokémon refs.
- `gameplay.change_mainline_play_pokemon_form`: updates current form, optionally updates/clears held item, and writes `from` and `to` event Pokémon refs.
- `gameplay.retire_mainline_play_pokemon`: moves a Pokémon to retired state and optionally writes a Pokémon Retired event/ref.
- `gameplay.replace_mainline_play_pokemon`: moves the old Pokémon to replaced state, inserts the replacement Pokémon, optional current moves, and optionally writes `replaced` and `replacement` event refs.

Rules:

- Run as `SECURITY INVOKER`; RLS remains the authorization boundary.
- Lock the play timeline for the transaction before assigning a new `timeline_order`.
- In-game identity changes should use these functions so Collection and used-before checks retain historical identities.
- Correction-only edits can update current rows directly without creating timeline history.
- Replacement defaults to the replaced Pokémon's current roster state and slot unless the caller provides a different current slot.
- Re-running mutation functions should create a new timeline event when the user is recording a new in-game action; correction-only edits should not use these functions.

### `gameplay.mainline_play_milestone_progress`

Per-play story/progression milestone progress.

Important fields:

- `play_id`.
- `milestone_id`.
- `completed_at`.
- `notes`.
- `created_at`.
- `updated_at`.

Rules:

- Row existence means completed; absence means incomplete.
- `completed_at` can be null when importing old mainline_plays with known completion but unknown exact timing.
- Milestones must belong to the play's base version group or selected optional version groups.
- Progress can exist without a timeline event for bulk logging, imports, or users who do not want snapshots.
- A milestone-linked timeline event must point to an existing progress row for the same play and milestone.

### `gameplay.mainline_play_milestone_decisions`

Selected decision option for a play milestone.

Important fields:

- `play_id`.
- `milestone_id`.
- `decision_option_id`.
- `created_at`.
- `updated_at`.

Rules:

- The selected decision option must belong to the same milestone.
- Decision rows are only required for mainline_milestones with user choices.

### `gameplay.complete_mainline_play_milestone`

Preferred app-facing mutation function for interactive Story progress.

Important parameters:

- `p_play_id`.
- `p_milestone_id`.
- `p_completed_at`, nullable timestamp for imported or approximate history.
- `p_progress_notes`, nullable.
- `p_decision_option_id`, nullable.
- `p_mark_prerequisite_milestone_ids`, direct prerequisite milestones the user agreed to mark complete.
- `p_create_event`, whether to create or update the linked milestone completion event.
- `p_event_title`, `p_event_body`, and `p_event_happened_at`, nullable event fields.
- `p_include_team_snapshot`, whether to snapshot the current active team onto the linked event.

Rules:

- Runs as `SECURITY INVOKER`; RLS remains the authorization boundary.
- Locks the play timeline for the transaction before assigning a new `timeline_order`.
- Validates that accepted prerequisite IDs are direct prerequisites of the target milestone.
- Upserts the target progress row and any accepted direct prerequisite progress rows.
- Upserts the milestone decision when a decision option is supplied.
- Creates at most one milestone-linked event for the target milestone.
- Team snapshots copy the current active roster slots 1 to 6 and their current moves.
- Existing snapshot rows are not overwritten, so historical snapshots are not silently changed by re-running the function.

### `gameplay.mainline_play_collectible_entry_progress`

Per-play collectible progress.

Important fields:

- `play_id`.
- `collectible_entry_id`.
- `collected_at`.
- `created_at`.
- `updated_at`.

Rules:

- Row existence means collected; absence means uncollected.
- `collected_at` can be null when importing old mainline_plays with known collection but unknown exact timing.
- Collectible entries must belong to the play's base version group or selected optional version groups.

### `gameplay.set_mainline_play_collectible_entry_progress`

Preferred app-facing mutation function for collectible toggles.

Important parameters:

- `p_play_id`.
- `p_collectible_entry_id`.
- `p_is_collected`.
- `p_collected_at`, nullable timestamp for imported or approximate history.

Rules:

- Runs as `SECURITY INVOKER`; RLS remains the authorization boundary.
- Setting collected inserts or updates the sparse progress row.
- Setting uncollected deletes the sparse progress row.
- Repeated collected updates preserve the first stored `collected_at` timestamp unless the row is corrected directly.
- The collectible-entry scope trigger still validates that the entry belongs to the play's base version group or selected optional content.

### `gameplay.mainline_play_pokedex_species_progress`

Per-play species-level Pokedex progress.

Important fields:

- `play_id`.
- `species_id`.
- `is_seen`.
- `is_caught`.
- `seen_at`.
- `caught_at`.
- `created_at`.
- `updated_at`.

Rules:

- Store progress by species, not by Pokedex entry.
- Caught implies seen.
- Absence means neither seen nor caught.
- Stored species must belong to a Pokedex in the play base version group or a selected optional content scope.
- Completion joins selected reference Pokedex entries to these species progress rows.

### `gameplay.set_mainline_play_pokedex_species_progress`

Preferred app-facing mutation function for Pokedex seen/caught toggles.

Important parameters:

- `p_play_id`.
- `p_species_id`.
- `p_is_seen`.
- `p_is_caught`.
- `p_seen_at`, nullable timestamp for imported or approximate history.
- `p_caught_at`, nullable timestamp for imported or approximate history.

Rules:

- Runs as `SECURITY INVOKER`; RLS remains the authorization boundary.
- Caught forces seen.
- Setting both seen and caught to false deletes the sparse progress row.
- Repeated seen/caught updates preserve the first stored `seen_at` and `caught_at` timestamps unless the row is corrected directly.
- Downgrading from caught to seen-only clears `caught_at`.
- The Pokedex-species scope trigger still validates that the species belongs to a Pokedex in the play base version group or selected optional content.

### `gameplay.mainline_play_event_origins`

Timeline event origin lookup.

Examples:

- manual.
- recorded_action.
- milestone_completion.
- hall_of_fame.
- import.

### `gameplay.mainline_play_event_types`

Timeline event type lookup.

Examples:

- story_milestone.
- pokemon_added.
- pokemon_evolved.
- pokemon_retired.
- pokemon_replaced.
- pokemon_form_changed.
- hall_of_fame.
- journal_note.
- status_change.

### `gameplay.mainline_play_events`

User-facing timeline/journal events.

Important fields:

- `id`.
- `play_id`.
- `event_type_id`.
- `event_origin_id`.
- `title`.
- `body`.
- `happened_at`, nullable.
- `timeline_order`.
- `milestone_id`, nullable.
- `is_pinned`.
- `created_at`.
- `updated_at`.

Rules:

- This is not a technical audit log.
- `timeline_order` supports old/imported mainline_plays where exact timestamps are unknown.
- `happened_at` can be null when the user only knows relative order.
- Milestone completion events can reference `milestone_id`.
- Referenced mainline_milestones must belong to the play's base version group or selected optional version groups.
- A populated `milestone_id` means the event is the completion/history event for that milestone; use unlinked journal notes for other commentary about the same story step.
- A play can have at most one milestone-linked event per milestone.

### `gameplay.mainline_play_event_pokemon_refs`

Links timeline events to play Pokémon.

Important fields:

- `event_id`.
- `play_id`.
- `play_pokemon_id`, nullable.
- `role`: subject, from, to, replaced, replacement.
- `species_id`.
- `form_id`.
- `nickname`, nullable.
- `level`, nullable.
- `sort_order`.

Rules:

- `play_id` is stored for composite same-play integrity with the parent event.
- Store event-time identity instead of relying only on the mutable current play Pokémon row.
- Evolution events can use `from` and `to` rows for the same `play_pokemon_id`.
- Replacement events can use `replaced` and `replacement` rows.
- If `play_pokemon_id` is present, it must belong to the same play as the event.
- `play_pokemon_id` can be null for imported/historical events or Pokémon identities that should remain as event-time history without a current Pokémon row.
- Must enforce `species_id + form_id` integrity.

### `gameplay.mainline_play_event_team_snapshots`

Historical team member snapshot rows.

Important fields:

- `id`.
- `event_id`.
- `play_id`.
- `play_pokemon_id`, nullable.
- `position`.
- `species_id`.
- `form_id`.
- `nickname`.
- `level`.
- `gender`.
- `is_shiny`.
- `nature_id`.
- `ability_id`.
- `held_item_id`.
- `notes`.

Rules:

- `play_id` is stored for composite same-play integrity with the parent event.
- Snapshot rows are historical display copies attached to an event.
- Snapshot rows do not define the current roster.
- Usually snapshots include active party display positions 1 to 6; final team or custom snapshots can include any displayed roster slots when the UI supports it.
- If `play_pokemon_id` is present, it must belong to the same play as the event.
- Must enforce `species_id + form_id` integrity.

### `gameplay.mainline_play_event_team_snapshot_moves`

Snapshot move slots.

Important fields:

- `snapshot_id`.
- `slot`.
- `move_id`.

### Tags And Rules

Implemented tables:

- `gameplay.mainline_play_tags`.
- `gameplay.mainline_play_pokemon_tags`.
- `gameplay.mainline_challenge_rule_types`.
- `gameplay.mainline_challenge_rules`.
- `gameplay.mainline_play_challenge_rules`.

Important fields for `mainline_challenge_rule_types`:

- `id`.
- `slug`: reuse, team_composition, encounter, difficulty, custom.
- `name`.
- `sort_order`.

Important fields for `mainline_challenge_rules`:

- `id`.
- `user_id`, nullable for predefined rules.
- `rule_type_id`.
- `slug`.
- `name`.
- `description`.
- `config`, jsonb for structured rule options.
- `created_at`.
- `updated_at`.

Important fields for `mainline_play_challenge_rules`:

- `play_id`.
- `challenge_rule_id`.
- `config_override`, nullable jsonb.
- `created_at`.

Rules:

- Predefined rules have `user_id` null.
- Custom user rules have `user_id` set.
- Predefined rule slugs are unique among predefined rules.
- Custom rule slugs are unique per user.
- Reuse rules should encode scope/behavior in structured config rather than only free text.
- User-authored descriptive rules can use custom text with minimal or empty config.

Rules for tag links:

- `mainline_play_tags` stores `play_id`, `tag_id`, and `user_id` so the tag owner must match the play owner.
- `mainline_play_pokemon_tags` stores `play_pokemon_id`, `play_id`, `tag_id`, and `user_id` so the tagged Pokémon, play, and tag all belong to the same user.

### Backlog / Wishlist

Implemented tables:

- `gameplay.user_game_library_entries`.
- `gameplay.user_game_library_statuses`.

Important fields for `user_game_library_statuses`:

- `id`.
- `slug`: want_to_play, planned, playing, completed, skipped.
- `name`.
- `sort_order`.

Important fields for `user_game_library_entries`:

- `user_id`.
- `game_id`.
- `library_status_id`.
- `notes`.
- `updated_at`.

Rules:

- This is independent user intent, not a strict mirror of play lifecycle.
- Library rows can be managed with direct CRUD; they do not create play history or mutate concrete playthrough state.
- App workflows can suggest changes when mainline_plays are created/completed.

## planning

### `planning.mainline_team_plan_statuses`

Team plan status lookup.

Examples:

- draft.
- active.
- archived.

Rules:

- Creating a play from a plan does not automatically archive the plan.

### `planning.mainline_team_plans`

User-owned team plan.

Important fields:

- `id`.
- `user_id`.
- `game_id`.
- `version_group_id`.
- `status_id`.
- `name`.
- `notes`.
- `created_at`.
- `updated_at`.

Rules:

- `version_group_id` must match the selected game's `version_group_id`; it is stored to support composite constraints for optional content and availability joins.

### `planning.mainline_team_plan_optional_content_scopes`

Optional content selected for a plan.

Important fields:

- `team_plan_id`.
- `game_id`.
- `version_group_id`.
- `created_at`.

Rules:

- Stores optional child version groups such as DLC.
- Enables DLC-aware availability before a play exists.
- `game_id` is duplicated from the plan so the table can enforce `reference.game_content_scopes(game_id, version_group_id)` with a composite FK.
- Selected optional version groups must belong to the same generation and parent/base version group as the plan's game unless a future official edge case requires otherwise.

### `planning.mainline_team_plan_members`

Planned Pokémon target.

Important fields:

- `id`.
- `team_plan_id`.
- `member_group`: primary, alternate.
- `slot`.
- `target_species_id`.
- `target_form_id`.
- `preferred_start_species_id`.
- `preferred_start_form_id`.
- `role_label`.
- `notes`.
- `nature_id`.
- `ability_id`.
- `held_item_id`.
- `created_at`.
- `updated_at`.

Rules:

- Target is usually the final/evolved Pokémon.
- Preferred start is optional and can be suggested by evolution data.
- Mainline planned Pokémon use slots 1 to 6.
- Alternate/reserve planned Pokémon use slots 1 to 6.
- Slot must be unique per plan and member group when set.
- Must enforce target `species_id + form_id` integrity.
- Must enforce preferred-start `species_id + form_id` integrity when preferred start is set.
- Target and preferred-start identities support preemptive Pokémon reuse warnings before a play begins or before a blocked evolution is reached.

### `planning.mainline_team_plan_member_moves`

Planned move slots.

Important fields:

- `team_plan_member_id`.
- `slot`.
- `move_id`.

### `planning.mainline_play_plan_links`

Links a play to a plan.

Important fields:

- `id`.
- `play_id`.
- `team_plan_id`.
- `user_id`.
- `game_id`.
- `version_group_id`.
- `created_from_plan`.
- `created_at`.

Rules:

- A play can be created from a plan while the plan remains available.
- A play can link at most one team plan; alternate ideas belong inside the plan as alternate members, not as separate linked plans.
- `user_id`, `game_id`, and `version_group_id` are duplicated so the table can enforce that the linked play and plan have the same owner and game scope.

### `planning.mainline_plan_member_link_statuses`

Plan member link status lookup.

Values:

- pending.
- linked.
- reached.
- skipped.

### `planning.mainline_play_plan_member_links`

Links planned members to actual play Pokémon.

Important fields:

- `play_plan_link_id`.
- `play_id`.
- `team_plan_id`.
- `team_plan_member_id`.
- `play_pokemon_id`, nullable.
- `status_id`.
- `linked_at`.
- `reached_at`.
- `skipped_at`.
- `notes`.

Rules:

- Status belongs to one play/plan relationship, not to the reusable plan member globally.
- `play_id` and `team_plan_id` are duplicated from the play-plan link to enforce same-play and same-plan integrity.
- Pending rows cannot have `play_pokemon_id`.
- Linked/reached rows must point to a play Pokémon from the linked play.
- Reached can be derived from current identity or recorded event-time identity, but storing `reached_at` preserves timeline and UX state.
- Deleting a linked play Pokémon deletes that play-specific member link; `planning.initialize_mainline_play_plan_member_links` can recreate a missing pending link.

### Mainline Team Plan To Play Mutation Functions

Preferred app-facing mutation functions for plan realization.

Functions:

- `planning.link_mainline_team_plan_to_play`: links a play to a reusable team plan, optionally marks it primary, and optionally creates pending member links.
- `planning.initialize_mainline_play_plan_member_links`: creates missing pending member-link rows for a linked play/plan, useful after members are added to an already linked plan.
- `planning.realize_mainline_team_plan_member`: creates an actual play Pokémon from a planned member through `gameplay.add_mainline_play_pokemon`, then links the result to that plan member.
- `planning.link_mainline_play_pokemon_to_plan_member`: links an existing play Pokémon to a planned member.
- `planning.refresh_mainline_play_plan_member_link_status`: updates the play-specific member status to pending, linked, or reached from current play Pokémon identity and event-time Pokémon refs.
- `planning.skip_mainline_team_plan_member`: marks a play-specific plan member as skipped and clears its Pokémon link.

Rules:

- Run as `SECURITY INVOKER`; gameplay and planning RLS remain the authorization boundary.
- Creating a play from a plan does not auto-fill the active team; realization is explicit per member.
- Realization preserves the reusable plan and only changes the play-specific member link.
- `use_preferred_start` lets the app add a planned starter/evolution-stage Pokémon while keeping the target final evolution as the plan goal.
- Planned moves are copied only when requested, because planned final-form moves may not fit a preferred starting Pokémon.
- Reached status is derived from either the linked Pokémon's current identity or its recorded event-time identity.

### Tags And Rules

Implemented tables:

- `planning.mainline_team_plan_tags`.
- `planning.mainline_team_plan_challenge_rules`.

Important fields for `mainline_team_plan_challenge_rules`:

- `team_plan_id`.
- `challenge_rule_id`.
- `config_override`, nullable jsonb.
- `created_at`.

## views

Views are implemented as app-facing read models over the base tables.

Implemented read models:

- `views.mainline_play_summary`.
- `views.mainline_play_completion_summary`.
- `views.mainline_play_overview`.
- `views.mainline_play_milestone_detail`.
- `views.mainline_play_milestone_category_summary`.
- `views.mainline_play_team_detail`.
- `views.mainline_play_timeline_detail`.
- `views.mainline_play_pokedex_detail`.
- `views.mainline_play_collectible_detail`.
- `views.mainline_team_plan_summary`.
- `views.mainline_team_plan_detail`.
- `views.mainline_collection_detail`.
- `views.mainline_collection_used_identities`.
- `views.mainline_dashboard_summary`.
- `views.mainline_stats_summary`.

Rules:

- Views are read models.
- They should use `security_invoker = true` where supported and needed.
- They should not be mutation targets.
- Summary counts should use the play's currently enabled base and optional content scopes, not unscoped raw progress rows.
- Milestone category summaries should expose required, optional, completed, and percentage counts so the UI can render Story sections without reimplementing completion rules.

## private

No private tables are required at initial schema design.

Use `private` only if internal maintenance helpers or security definer functions become necessary.
