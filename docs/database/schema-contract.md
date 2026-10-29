# Schema Contract

This document summarizes the application-facing database contract. Exact
columns, foreign keys, constraints, grants, and policies are authoritative in
`database/schema` and generated types.

## Identity And Personalization

- `public.profiles` is one-to-one with `auth.users`; the signup trigger also
  creates `public.user_preferences`. It holds the display name, the Pokémon
  icon (`icon_form_id`, a foreign key to `reference.pokemon_forms` added in the
  reference tables, which load after it), the default trainer name and
  `welcome_completed_at`.
- `public.tags` are user-owned, reusable, and attached through typed gameplay
  and planning join tables.
- `public.user_preferences` holds global defaults that are not play-specific:
  the New Play defaults (`default_track_story`, `default_pokedex_mode` as
  `caught_only` or `caught_and_seen`, `default_track_collectibles`), `motion`
  (`full`, `reduced` or `system`) and `search_filters_open` (lists show their
  search and filter bar on arrival). The owner reads and upserts it directly.
  Pokémon reuse is a Play's No Pokémon reuse rule.

## Reference And Tracking

- `reference` stores product families, games, content scopes, Pokémon identity,
  forms, mechanics, moves, items, evolution, availability, learnsets, and
  Pokedex definitions.
- Generation-aware attributes preserve mechanics that changed over time.
- `reference.items.effect_summary` is a short "what it does" sentence, set for
  every held item and empty for items that are never held.
- `reference.tera_types` is the Tera Type lookup (the 18 types plus Stellar).
  `gameplay.mainline_play_pokemon.tera_type_id` points at it, and a form in
  `reference.pokemon_fixed_tera_types` accepts only its fixed Tera Type (or
  none). `views.mainline_play_team_detail` exposes the member's Tera Type and
  the form's `fixed_tera_type_*` columns.
- Application read models resolve mechanic support from one exact game,
  version-group, and generation context owned by the `reference` module.
- Optional content is modeled as content-scope deltas and dependencies instead
  of duplicating the full parent scope.
- `tracking` stores definitions for milestones, decisions, opponents, badges,
  collectibles, and snapshot policy. It does not store user progress.
- An opponent's team in a Story battle and the team of an ally fighting
  beside the player there share `tracking.mainline_opponent_team_members`:
  an ally's rows name it in `ally_opponent_id` (an opponent of the same
  version group, role `ally` when it never battles the player), are their own
  side for slots, choices and variants, and never count as the opponent's.
- `held_item_id` on those rows is what each Pokémon holds in that battle, from
  the game's own data where it is public (Gen 2-4 trainer data, wild Pokémon's
  species data), else from trainer tables checked against Bulbapedia. NULL
  means it holds nothing; the few items no source names are listed with a
  reason in the header of the game's team seed file.

## Plays And Teams

`gameplay.mainline_plays` is the user-owned root for a concrete playthrough.
Lifecycle status and archival are separate. Completion is derived from settings,
selected scopes, and sparse progress.

`gameplay.mainline_play_settings` carries the Play's tracking switches:
`story_tracking_enabled`, `pokedex_mode` (`caught_only` or `caught_and_seen`)
and `collectibles_tracking_enabled`, beside the completion choices. Story off
leaves milestones out of the completion counts and totals; collectibles off
leaves entries out (and `include_collectibles_in_completion` must then be
false). Recorded progress is never deleted. `views.mainline_play_overview`
exposes the three settings, `mainline_play_milestone_detail` and
`mainline_play_collectible_detail` mark `is_included_in_completion` from them.

Current roster rules are authoritative and distinct from planning groups:

- Active Pokémon use slots 1–6.
- Reserve Pokémon use slots 7–12.
- Retired and replaced Pokémon have no current slot.
- One Pokémon per current slot, checked at the end of each statement
  (deferrable), so one update can swap two Pokémon.
- Current move slots are normalized and limited to four.

Play Pokémon rows represent current mutable identity. Timeline Pokémon refs and
team snapshots preserve event-time identity so evolution, form changes,
retirement, replacement, and later corrections do not erase history.

## Progress And History

- Milestone, collectible, and Pokedex progress is sparse; absence means the
  default incomplete state.
- Pokedex progress is species-level and caught implies seen.
- Timeline events are user-facing history, not a technical audit log.
- Exact timestamps may be absent for imported historical plays; play-local
  ordering remains explicit.
- Team snapshots belong to timeline events and copy the visible active roster
  and moves at that moment.

## Planning

- Team plans exist independently of plays and remain reusable.
- A play can link to at most one focused Team Plan.
- Creating a play from a plan does not populate the current team.
- A Plan owns one to six ordered planned targets. Species and form are required;
  ability, nature, held item, gender, and moves are optional.
- Plan comparison is computed at read time. No per-member status or manual
  Plan-member-to-Play-member relationship is persisted.
- `planning.clone_mainline_team_plan_for_play` copies a linked Plan and relinks
  only the selected Play for future Play-scoped editing.

## App-Facing Mutations

Use reviewed security-invoker functions for atomic workflows:

- `gameplay.create_mainline_play` starts a playing Play for the caller with its
  settings, owned expansions (non-base content scopes of that game), challenge
  rules (each once, with its options; the rule-scope trigger refuses another
  trainer's rule, an option the rule lacks, or a type the game doesn't have)
  and optional partner in one transaction. `p_track_story`, `p_pokedex_mode`
  and `p_track_collectibles` set the tracking switches; left out (NULL), they
  come from the caller's `user_preferences` defaults, else on / `caught_and_seen`
  / on. An unknown Pokédex mode is refused (22023). When the game's first Story milestone
  with a Pokémon decision offers the partner (exact form, else species), the
  partner joins slot 1 and that milestone is completed with its decision and a
  "<Species> chose you" moment; otherwise the partner joins slot 1 with its own
  Added moment.
- `gameplay.save_mainline_challenge_rule_set` makes or changes one of your
  presets (`gameplay.mainline_challenge_rule_sets`) and its rules, each once
  and in no order, in one transaction; a preset needs at least one rule and
  holds only Voydex's rules and your own.
- `gameplay.add_mainline_play_event` adds a free-form moment (journal note or
  status change, manual or recorded-action origin) at the next timeline place
  under the Play's advisory lock. Milestone, Pokémon and Hall of Fame moments
  stay with their own functions.
- `gameplay.update_mainline_play_general_settings` saves a Play's name,
  trainer, start day, playtime and status (every field is written) and, only
  when the status changes, adds one recorded-action status-change moment
  titled with the new status, in one transaction.
- `gameplay.choose_mainline_play_partner` records a Play's partner from a
  decision option: `gameplay.find_mainline_partner_milestone` resolves the
  game's partner milestone (the rule `create_mainline_play` uses), the option
  must be one of its Pokémon choices and the milestone not yet completed; an
  empty team gets the partner in slot 1 with no Added moment, and the
  milestone is completed with the decision and one "<Species> chose you"
  moment. `gameplay.undo_mainline_play_partner` marks that milestone
  incomplete through `mark_mainline_play_milestone_incomplete` (refused when
  anything recorded since depends on it) and deletes the partner Pokémon the
  choice added, in one transaction.
- `gameplay.add_mainline_play_pokemon` and related lifecycle functions.
- `gameplay.update_mainline_play_pokemon` saves a Play Pokémon's editable
  details (every field is written) and replaces its current moves in slot
  order, at most four, in one transaction. It is not a moment.
- `gameplay.move_mainline_play_pokemon` moves a team or reserve Pokémon to
  another slot (1–6 team, 7–12 reserve; the state follows the slot) and swaps
  it with the Pokémon already there, in one statement. It refuses to leave the
  team empty and is not a moment. That rule belongs to moves only: retiring or
  removing the last team Pokémon is allowed. It locks the rows, then the Play,
  in the order every roster function does.
- `gameplay.remove_mainline_play_pokemon` deletes a Pokémon recorded by
  mistake; when it undoes an add it also deletes that Pokémon's own Added
  moment in the same transaction. Its other moments stay, with the Pokémon
  link cleared.
- `gameplay.complete_mainline_play_milestone` distinguishes omitted detail
  values from explicit replacement, so a submitted `Not recorded` decision or
  empty note clears the existing value without changing unrelated milestone
  evidence. `p_record_earlier_milestone_ids` records Story's "the N before it"
  in the same call: each must be a required milestone or a choice (decision type) of the same journey
  before the target in Story order (category, then milestone order), the
  journey must not be open world (`reference.version_groups.is_open_world`),
  and ones already recorded keep their record. They get no moment, note or
  decision; `completed_milestone_ids` returns what was newly recorded. Snapshot replacement writes member rows before move rows so every
  security-invoker write remains visible to the existing owner RLS policies.
- `gameplay.mark_mainline_play_milestone_incomplete` recomputes the completed
  transitive `required` and `story-unlock` dependent closure of the milestone
  and of `p_also_clear_milestone_ids` (Story's "the N after it", or an Undo's
  "the N before it"), validates it
  against the user-previewed milestone IDs, and atomically deletes affected
  progress, notes, decisions, milestone-linked History events, snapshots, and
  snapshot moves. Suggested and unrelated branches are not part of the
  correction.
- `gameplay.set_mainline_play_collectible_entry_progress`.
- `gameplay.set_mainline_play_pokedex_species_progress`.
- `planning.link_mainline_team_plan_to_play` links a Play to a Plan, moving
  an existing link when asked; plus plan-member realization helpers.
- `planning.save_mainline_team_plan` creates (no Plan id) or rewrites a Plan's
  row, ordered members, planned move slots and expansions in one transaction.
  It keeps the stored game while the version group is unchanged, otherwise
  stores the group's first game, and refuses a game change while a Play
  follows the Plan. Build validation against reference data stays with the
  caller.

Database constraints, RLS, and function transactions remain authoritative even
when the app performs earlier validation.

## Derived Views

The `views` schema exposes play, completion, team, timeline, Pokedex,
collectible, plan, collection, dashboard, stats, and resolved-reference read
models. These are query surfaces, not mutation targets. Derived values may be
cached later for measured performance needs without changing their source of
truth.
