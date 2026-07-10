# Schema Contract

This document summarizes the application-facing database contract. Exact
columns, foreign keys, constraints, grants, and policies are authoritative in
`database/schema` and generated types.

## Identity And Personalization

- `public.profiles` is one-to-one with `auth.users`; the signup trigger also
  creates `public.user_preferences`.
- `public.tags` are user-owned, reusable, and attached through typed gameplay
  and planning join tables.
- Global Pokémon reuse preferences are defaults. Play and plan rules may apply
  more specific behavior.

## Reference And Tracking

- `reference` stores product families, games, content scopes, Pokémon identity,
  forms, mechanics, moves, items, evolution, availability, learnsets, and
  Pokedex definitions.
- Generation-aware attributes preserve mechanics that changed over time.
- Optional content is modeled as content-scope deltas and dependencies instead
  of duplicating the full parent scope.
- `tracking` stores definitions for milestones, decisions, opponents, badges,
  collectibles, and snapshot policy. It does not store user progress.

## Plays And Teams

`gameplay.mainline_plays` is the user-owned root for a concrete playthrough.
Lifecycle status and archival are separate. Completion is derived from settings,
selected scopes, and sparse progress.

Current roster rules are authoritative and distinct from planning groups:

- Active Pokémon use slots 1–6.
- Reserve Pokémon use slots 7–12.
- Retired and replaced Pokémon have no current slot.
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
- Planned primary members use slots 1–6; alternate/reserve planned members also
  use group-local slots 1–6.
- Plan-member progress belongs to the specific play-plan relationship.

## App-Facing Mutations

Use reviewed security-invoker functions for atomic workflows:

- `gameplay.add_mainline_play_pokemon` and related lifecycle functions.
- `gameplay.complete_mainline_play_milestone`.
- `gameplay.set_mainline_play_collectible_entry_progress`.
- `gameplay.set_mainline_play_pokedex_species_progress`.
- `planning.link_mainline_team_plan_to_play` and plan-member realization
  helpers.

Database constraints, RLS, and function transactions remain authoritative even
when the app performs earlier validation.

## Derived Views

The `views` schema exposes play, completion, team, timeline, Pokedex,
collectible, plan, collection, dashboard, stats, and resolved-reference read
models. These are query surfaces, not mutation targets. Derived values may be
cached later for measured performance needs without changing their source of
truth.
