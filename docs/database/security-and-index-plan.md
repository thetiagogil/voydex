# Security And Index Plan

This document defines security and index expectations for the clean schema before SQL files are written.

## Security Principles

- Client-facing reference and tracking data is read-only.
- Gameplay and planning data is user-owned.
- RLS must be enabled on exposed user-owned tables.
- Client writes must be constrained by database ownership rules, not only app logic.
- Views are read models and should use Supabase-safe security behavior.
- Service/admin roles can seed and maintain data.

## Grants And RLS By Schema

### public

Expected client access:

- Users can read and update their own profile/preferences.
- Users can CRUD their own tags.

Expected RLS model:

- `public.profiles`: `id = auth.uid()`.
- `public.user_preferences`: `user_id = auth.uid()`.
- `public.tags`: `user_id = auth.uid()`.

### reference

Expected client access:

- `anon`: SELECT only, if public app reference data should be reachable before login.
- `authenticated`: SELECT only.
- No client INSERT, UPDATE, or DELETE.

Expected admin access:

- `postgres`, `service_role`, and configured admin/dashboard roles can seed and maintain data.

Expected RLS model:

- Enable RLS as defense in depth if the schema is exposed.
- Add read policies for client roles.
- Do not add client write policies.

### tracking

Expected client access:

- `authenticated`: SELECT only.
- `anon`: no access by default unless unauthenticated browsing later needs tracking definitions.
- No client INSERT, UPDATE, or DELETE.

Expected RLS model:

- Enable RLS if the schema is exposed.
- Add authenticated read policies.
- Do not add client write policies.

### gameplay

Expected client access:

- Authenticated users can read and mutate only their own gameplay rows.

Expected RLS model:

- Tables with direct `user_id` use `user_id = auth.uid()`.
- Child tables without `user_id` use parent ownership through play or play Pokémon.
- Insert policies must verify parent ownership.
- Update policies must verify existing and new parent ownership.
- Delete policies must verify parent ownership.

### planning

Expected client access:

- Authenticated users can read and mutate only their own plans and plan children.

Expected RLS model:

- `mainline_team_plans` use direct `user_id = auth.uid()`.
- Child rows use parent plan ownership.
- Plan-to-play link tables must verify ownership of both the plan and the play where both are present.

### views

Expected client access:

- Views should expose read models needed by the app.
- Views reading RLS-protected tables should use `security_invoker = true` where supported.
- Views should not receive write grants.
- Initial clean view files grant authenticated and service roles SELECT only.

## Index Principles

Postgres does not automatically index foreign keys. Every foreign key used in joins, RLS parent checks, or cascades should have an index unless covered by a composite primary key or composite index.

Active indexes are colocated with their owning current-state table under
`database/schema`. The former standalone index SQL files were retired
after a July 2026 audit found removed relations, removed columns, duplicate
definitions, and a conflicting index name. They must not be restored as an
unreviewed generator input.

The same local audit found 88 foreign-key paths without a confirmed leading
index. This is a review queue, not proof that 88 indexes should be added. Check
each candidate against cascade/RLS behavior, application filters and joins,
existing composite left prefixes, and `EXPLAIN` evidence before changing the
owning table source and adding a forward migration.

Composite indexes should match real query patterns:

- Equality filters first.
- Sort/range columns after equality filters.
- Avoid redundant single-column indexes when a composite index already covers the leftmost prefix.

## Expected High-Value Indexes

This is not a final index file. It is an implementation checklist.

### public

- `profiles(id)` primary key.
- `user_preferences(user_id)` primary key.
- `tags(user_id, slug)` unique.
- `tags(user_id, name)` optional for search/filtering.

### reference

Base lookup:

- Unique slug indexes for most lookup tables.
- `platforms(slug)` unique.
- `games(version_group_id)`.
- `games(generation_id, sort_order)`.
- `games(region_id)`.
- `game_platforms(game_id, platform_id)` primary/unique.
- `game_platforms(platform_id, game_id)`.
- `version_groups(generation_id, sort_order)`.
- `version_groups(parent_version_group_id)`.
- `game_content_scopes(game_id, version_group_id)` primary/unique.
- `game_content_scopes(game_id)` partial unique for one base scope.
- `game_content_scopes(version_group_id, game_id)`.

Pokémon/forms:

- `pokemon_species(national_number)` unique.
- `pokemon_species(slug)` unique.
- `pokemon_species(evolution_family_id)`.
- `pokemon_forms(species_id, id)` unique for composite FK integrity.
- `pokemon_forms(species_id, is_default)` partial unique for one default form.
- `pokemon_forms(species_id, form_order)`.
- `pokemon_form_rules(form_id)` primary/unique.
- `pokemon_form_item_requirements(form_id, item_id, generation_start_id)` primary/unique.
- `pokemon_form_item_requirements(item_id, generation_start_id, generation_end_id, version_group_start_id, version_group_end_id, form_id)`.
- `types(introduced_generation_id, sort_order)`.
- `natures(introduced_generation_id, sort_order)`.
- `egg_groups(introduced_generation_id, sort_order)`.
- `abilities(introduced_generation_id, sort_order)`.
- `pokemon_attributes(species_id, form_id, generation_start_id)` primary/unique.
- `type_matchups(attacking_type_id, defending_type_id, generation_start_id)` primary/unique.
- `type_matchups(defending_type_id, generation_start_id)` for weakness lookups.
- `ability_attributes(ability_id, version_group_start_id)` primary/unique.

Moves and items:

- `moves(move_kind_id, introduced_generation_id, sort_order)`.
- `moves(introduced_generation_id, sort_order)`.
- `move_attributes(move_id, generation_start_id)` primary/unique.
- `move_attributes(type_id, generation_start_id)`.
- `items(primary_category_id)`.
- `items(introduced_generation_id, sort_order)`.
- `item_category_memberships(item_id, category_id)` primary/unique.
- `item_category_memberships(category_id)`.

Evolutions:

- `pokemon_evolution_edges(from_species_id, from_form_id)`.
- `pokemon_evolution_edges(to_species_id, to_form_id)`.
- `pokemon_evolution_edges(version_group_id)`.
- `pokemon_evolution_edges(evolution_method_id)`.
- `pokemon_evolution_edges(item_id)` and `pokemon_evolution_edges(held_item_id)` where present.
- `pokemon_evolution_edges(known_move_id)` and `pokemon_evolution_edges(known_type_id)` where present.
- Composite indexes that support planner queries from planned target back to starting species may be needed later.

Availability:

- `pokemon_availability(version_group_id, game_id)`.
- `pokemon_availability(species_id, form_id, version_group_id)`.
- `pokemon_availability(availability_method_id)`.
- Partial unique index on `pokemon_availability(species_id, form_id, version_group_id, availability_method_id)` where `game_id IS NULL`.
- Partial unique index on `pokemon_availability(species_id, form_id, version_group_id, game_id, availability_method_id)` where `game_id IS NOT NULL`.
- Similar version-group/game indexes for move and item availability, with item availability uniqueness using `COALESCE(availability_method_id, 0)` because that method field is nullable.

Learnsets:

- `pokemon_learnsets_form_scope_lookup_idx` on `(species_id, form_id, version_group_id, game_id, sort_order)`.
- `pokemon_learnsets_move_scope_lookup_idx` on `(move_id, version_group_id, game_id)`.
- `pokemon_learnsets_method_scope_lookup_idx` on `(version_group_id, learn_method_id)`.
- `pokemon_learnsets_source_item_lookup_idx` on `(source_item_id)` where `source_item_id IS NOT NULL`.
- `pokemon_learnsets_vg_unique` distinguishes version-group-wide rows by Pokémon form, move, method, normalized level, item, and machine label.
- `pokemon_learnsets_game_unique` distinguishes game-specific rows by Pokémon form, move, game scope, method, normalized level, item, and machine label.

Pokedex:

- `pokedex(version_group_id, slug)` unique.
- `pokedex_entries(pokedex_id, species_id)` primary key for species-level completion.
- `pokedex_entries(pokedex_id, pokedex_number)` unique.
- `pokedex_entries(species_id)` for Pokémon detail pages.

### tracking

- `mainline_categories(version_group_id, sort_order)` unique.
- `mainline_categories(version_group_id, slug)` unique.
- `mainline_milestones(version_group_id, game_id)`.
- `mainline_milestones(version_group_id, category_id, sort_order)` for version-group-wide rows.
- `mainline_milestones(version_group_id, game_id, category_id, sort_order)` for game-specific rows.
- Partial unique milestone slug indexes split by `game_id IS NULL` and `game_id IS NOT NULL`.
- `mainline_milestones(snapshot_policy_id)` and `mainline_milestones(milestone_type_id)`.
- `mainline_milestone_prerequisites(milestone_id, sort_order)` unique.
- `mainline_milestone_prerequisites(prerequisite_milestone_id)` and `mainline_milestone_prerequisites(prerequisite_kind_id)`.
- `mainline_opponents(version_group_id, game_id)` with partial unique slug/sort indexes.
- `mainline_opponents(opponent_role)` and specialty type indexes.
- `mainline_badges(version_group_id, game_id)` with partial unique slug/sort indexes.
- `mainline_badges(type_id)` where present.
- `mainline_collectibles(version_group_id, game_id)` with partial unique slug/sort indexes.
- `mainline_collectibles(collectible_type_id)` and completion inclusion index.
- `mainline_collectible_entries(collectible_id, sort_order)` unique.
- Join tables should index both sides of each FK.
- Join tables with nullable form/entry references need partial unique indexes. Opponent, badge, and collectible milestone refs also carry `version_group_id` for composite FK integrity.

### gameplay

Plays:

- `mainline_plays(user_id, updated_at)` for dashboard/recent mainline_plays.
- `mainline_plays(user_id, status_id)`.
- `mainline_plays(status_id)`.
- `mainline_plays(user_id, game_id)`.
- `mainline_plays(game_id, version_group_id)`.
- `mainline_plays(user_id, version_group_id)`.
- `mainline_plays(version_group_id)` for optional-content/tracking joins.
- `mainline_plays(platform_id)` for stats/filtering.
- `mainline_plays(user_id, archived_at)` for active/archive lists.

Play settings/content:

- `mainline_play_settings(play_id)` primary key.
- `mainline_play_optional_content_scopes(play_id, version_group_id)` primary key.
- `mainline_play_optional_content_scopes(play_id, game_id)`.
- `mainline_play_optional_content_scopes(game_id, version_group_id)`.
- `mainline_play_optional_content_scopes(version_group_id)`.

Play Pokémon:

- `mainline_play_pokemon(play_id, slot)` partial unique where slot is not null.
- `mainline_play_pokemon(play_id, roster_state_id)`.
- `mainline_play_pokemon(roster_state_id)`.
- `mainline_play_pokemon(play_id, species_id, form_id)`.
- `mainline_play_pokemon(species_id, form_id)` for Collection.
- Nullable lookup indexes on play Pokémon nature, ability, held item, and ball item.
- `mainline_play_pokemon_moves(play_pokemon_id, slot)` unique.
- `mainline_play_pokemon_moves(move_id)` for analysis/search.

Progress:

- `mainline_play_milestone_progress(play_id, milestone_id)` primary/unique.
- `mainline_play_milestone_progress(milestone_id)`.
- `mainline_play_milestone_decisions(play_id, milestone_id)` primary/unique.
- `mainline_play_milestone_decisions(milestone_id)`.
- `mainline_play_milestone_decisions(decision_option_id, milestone_id)`.
- `mainline_play_collectible_entry_progress(play_id, collectible_entry_id)` primary/unique.
- `mainline_play_collectible_entry_progress(collectible_entry_id)`.
- `mainline_play_pokedex_species_progress(play_id, species_id)` primary/unique.
- `mainline_play_pokedex_species_progress(species_id)`.

Timeline:

- `mainline_play_events(play_id, timeline_order)` unique or ordered index.
- `mainline_play_events(play_id, happened_at)`.
- `mainline_play_events(play_id, event_type_id, happened_at)`.
- `mainline_play_events(event_origin_id)`.
- `mainline_play_events(milestone_id)`.
- `mainline_play_events(play_id, milestone_id)` unique where `milestone_id` is not null.
- `mainline_play_event_pokemon_refs(event_id, play_id)` for same-play integrity.
- `mainline_play_event_pokemon_refs(play_id)` for play-scoped timeline lookups.
- `mainline_play_event_pokemon_refs(play_pokemon_id)`.
- `mainline_play_event_pokemon_refs(species_id, form_id)` for Collection/history.
- `mainline_play_event_team_snapshots(event_id, play_id)` for same-play integrity.
- `mainline_play_event_team_snapshots(play_id)` for play-scoped timeline lookups.
- `mainline_play_event_team_snapshots(event_id, position)`.
- `mainline_play_event_team_snapshots(species_id, form_id)` for Collection/history.
- Nullable lookup indexes on snapshot nature, ability, and held item.
- `mainline_play_event_team_snapshot_moves(snapshot_id, slot)` unique.
- `mainline_play_event_team_snapshot_moves(move_id)`.

Mutation helpers:

- `gameplay.complete_mainline_play_milestone` must stay `SECURITY INVOKER` because it lives in an exposed schema and writes user-owned gameplay rows.
- Mainline play Pokémon mutation helpers must stay `SECURITY INVOKER` for the same reason. They write current Pokémon state, timeline events, and event Pokémon refs under the caller's RLS permissions.
- Mainline collectible and Pokedex progress mutation helpers must stay `SECURITY INVOKER` for the same reason. They write user-owned sparse progress rows under the caller's RLS permissions and rely on the scope triggers for version/content validity.
- Grant execute to `authenticated` and `service_role`; do not grant to `anon`.
- Mutation helpers rely on existing table RLS for ownership checks and use a transaction-scoped advisory lock before assigning timeline order.

Tags/rules/backlog:

- `mainline_play_tags(play_id, tag_id)` primary/unique.
- `mainline_play_tags(play_id, user_id)` and `mainline_play_tags(tag_id, user_id)`.
- `mainline_play_pokemon_tags(play_pokemon_id, tag_id)` primary/unique.
- `mainline_play_pokemon_tags(play_pokemon_id, play_id)`, `mainline_play_pokemon_tags(play_id, user_id)`, and `mainline_play_pokemon_tags(tag_id, user_id)`.
- `mainline_challenge_rules(slug)` unique where `user_id IS NULL` for predefined rules.
- `mainline_challenge_rules(user_id, slug)` unique where `user_id IS NOT NULL` for custom rules.
- `mainline_challenge_rules(user_id)` and `mainline_challenge_rules(rule_type_id)`.
- `mainline_play_challenge_rules(play_id, challenge_rule_id)` primary/unique.
- `mainline_play_challenge_rules(challenge_rule_id)`.
- `user_game_library_entries(user_id, game_id)` primary/unique.
- `user_game_library_entries(user_id, library_status_id)`.
- `user_game_library_entries(game_id)` and `user_game_library_entries(library_status_id)`.

### planning

Plans:

- `mainline_team_plans(user_id, updated_at)`.
- `mainline_team_plans(user_id, game_id)`.
- `mainline_team_plans(game_id, version_group_id)`.
- `mainline_team_plans(user_id, version_group_id)`.
- `mainline_team_plans(user_id, status_id)`.
- `mainline_team_plans(status_id)`.
- `mainline_team_plans(version_group_id)`.
- `mainline_team_plan_optional_content_scopes(team_plan_id, version_group_id)` primary/unique.
- `mainline_team_plan_optional_content_scopes(team_plan_id, game_id)`.
- `mainline_team_plan_optional_content_scopes(game_id, version_group_id)`.
- `mainline_team_plan_optional_content_scopes(version_group_id)`.

Plan members:

- `mainline_team_plan_members(team_plan_id, member_group, slot)` unique where slot is not null.
- `mainline_team_plan_members(team_plan_id)` for listing and FK/cascade support.
- `mainline_team_plan_members(target_species_id, target_form_id)` for used-before/planner joins.
- `mainline_team_plan_members(preferred_start_species_id, preferred_start_form_id)` for preemptive warning joins.
- Nullable lookup indexes on plan member nature, ability, and held item.
- `mainline_team_plan_member_moves(team_plan_member_id, slot)` unique.
- `mainline_team_plan_member_moves(move_id)`.

Plan/play links:

- `mainline_play_plan_links(play_id)` unique to enforce one linked team plan per play.
- `mainline_play_plan_links(team_plan_id)`.
- `mainline_play_plan_links(game_id, version_group_id)`.
- `mainline_play_plan_links(user_id)`.
- `mainline_play_plan_links(play_id, user_id, game_id, version_group_id)`.
- `mainline_play_plan_links(team_plan_id, user_id, game_id, version_group_id)`.
- `mainline_play_plan_member_links(play_plan_link_id, team_plan_member_id)` primary/unique.
- `mainline_play_plan_member_links(play_pokemon_id)`.
- `mainline_play_plan_member_links(play_pokemon_id, play_id)`.
- `mainline_play_plan_member_links(status_id)`.
- `mainline_play_plan_member_links(play_plan_link_id)` for ownership/RLS parent checks.
- `mainline_play_plan_member_links(play_plan_link_id, play_id, team_plan_id)`.
- `mainline_play_plan_member_links(team_plan_member_id, team_plan_id)`.

Mutation helpers:

- Planning mutation helpers must stay `SECURITY INVOKER` because they live in an exposed schema and write user-owned planning/gameplay rows.
- Grant execute to `authenticated` and `service_role`; do not grant to `anon`.
- Plan realization helpers rely on existing table RLS for ownership checks and call gameplay helpers instead of duplicating current-team event logic.

Tags/rules:

- `mainline_team_plan_tags(team_plan_id, tag_id)` primary/unique.
- `mainline_team_plan_tags(team_plan_id, user_id)` and `mainline_team_plan_tags(tag_id, user_id)`.
- `mainline_team_plan_challenge_rules(team_plan_id, challenge_rule_id)` primary/unique.
- `mainline_team_plan_challenge_rules(challenge_rule_id)`.

## Constraint Expectations

The SQL implementation should include DB constraints for:

- Roster slot range and current roster uniqueness.
- Move slot range 1 to 4.
- Level range 1 to 100.
- Caught implies seen for Pokedex progress.
- Pokedex progress species must exist in a Pokedex attached to the play base version group or selected optional content.
- `species_id + form_id` composite integrity everywhere forms are referenced.
- `version_group_id + game_id` consistency where both are stored.
- One default form per species.
- One species entry per Pokedex.
- Plays and team plans must enforce `game_id + version_group_id` consistency.
- Optional DLC version groups must reference a child version group.
- Selected optional version groups for mainline_plays/plans must match the base game/version group lineage.
- Plan member group/slot values should be unique per plan when set.
- Timeline order should be unique or otherwise deterministic per play.
- Plan member reached/linked statuses should be consistent with `play_pokemon_id` where practical.

## Verification Gates

After SQL implementation, run gates for:

- No missing FK indexes.
- RLS enabled on exposed user-owned tables.
- No client write grants on reference/tracking.
- Views use safe security behavior.
- Views are not granted INSERT, UPDATE, or DELETE.
- Roster cap cannot be exceeded.
- Pokedex caught cannot be true while seen is false.
- Invalid species/form pairs cannot be inserted.
- Invalid game/version-group pairs cannot be inserted.
