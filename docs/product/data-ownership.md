# Data Ownership

This document defines source-of-truth and derived-data rules for Voydex.

## Ownership Rule

The app should store user intent and meaningful user state. It should derive summaries, stats, completion, and collection views whenever practical.

## Source Of Truth

| Feature                          | Source of truth                                                 |
| -------------------------------- | --------------------------------------------------------------- |
| User profile                     | `public.profiles`                                               |
| Static Pokémon/game data         | `reference` schema                                              |
| Story/collectible definitions    | `tracking` schema                                               |
| Plays                            | `gameplay.mainline_plays`                                       |
| Play metadata/settings           | `gameplay.mainline_play_settings` and play-owned columns/tables |
| Current play roster              | User-owned play Pokémon rows with active/reserve state          |
| Retired/replaced Pokémon history | Play Pokémon lifecycle state plus play events                   |
| Play Pokedex progress            | Gameplay species progress joined to reference Pokedex entries   |
| Play collectibles                | Gameplay collectible progress joined to tracking definitions    |
| Story progress                   | Gameplay tracking progress joined to tracking definitions       |
| Timeline/journal                 | `gameplay.mainline_play_events` and snapshot tables             |
| Team snapshots                   | `gameplay.mainline_play_event_team_snapshots`                   |
| Team plan                        | `planning.mainline_team_plans`                                  |
| Play plan link/status            | `planning.mainline_play_plan_links` and member links            |
| Tags                             | User-owned tag tables and join tables                           |
| Backlog/wishlist                 | User-owned game intent tables                                   |
| Preferences                      | User-owned preference tables                                    |

## Derived Data

These should be calculated through queries, views, or app services:

- Dashboard summaries.
- Completion percentages.
- Collection.
- Used-before flags.
- Stats.
- Recent activity.
- Play overview summaries.
- Team strengths and weaknesses.
- Plan target reached state when it can be derived from linked play Pokémon.
- Collection used-before state at form, species, and evolution-family levels.

Some derived values may be cached later for performance, but caching should not redefine the source of truth.

## Plays

`mainline_play` is the database naming for the central gameplay entity in the active `mainline` module.

A play owns:

- Game choice.
- Status.
- Metadata.
- Settings.
- Selected optional content.
- Team/roster state.
- Progress state.
- Timeline/journal.

Plays should not own static reference data. They should reference games, Pokémon, moves, forms, Pokedex entries, and tracking definitions.

## Team And Pokémon History

The current roster should be limited to active/reserve Pokémon.

Retired or replaced Pokémon can remain associated with the play as history, but they should not count toward the current team limit.

Current roster ordering uses explicit roster state plus slot. Active Pokémon use slots 1 to 6; reserve Pokémon use slots 7 to 12. Retired and replaced Pokémon have no current slot.

Important team actions can create timeline events:

- Added.
- Evolved.
- Retired.
- Replaced.
- Final team/Hall of Fame.

Timeline event Pokémon references should store event-time Pokémon identity. This preserves usage history when the current Pokémon row later changes species/form through evolution, form change, replacement, or correction.

Simple correction edits should not create timeline history.

## Story Snapshots

Story milestone snapshots are optional.

When a snapshot is created, it must store a historical copy of the relevant team state. It must not rely only on current team rows because Pokémon can later evolve, move, retire, or be edited.

Snapshot rows are owned by the timeline event that created them. They are not the source of truth for current roster state.

Timeline ordering should not require exact timestamps. Old imported plays can use manual order or milestone order when exact dates are unknown.

## Team Plan

A Team Plan is separate from a play's current team.

The product contract is one focused linked Team Plan per play. The database can still represent this through play plan link and member link tables, but the user-facing play workflow should not encourage multiple competing team plans inside one play.

A Team Plan owns planned target Pokémon, notes, roles, and preferences.

A Team Plan can also own optional content scope such as DLC availability before a play exists.

Codex can initiate plan-related actions, but it should not own planning state.
When a user marks a Pokemon as a target, starts a plan from a Pokemon detail
page, or adds a Pokemon to a plan, the durable state belongs to the planning
model and any linked Mainline play/plan relationship.

When a play is created from a Team Plan:

- The Team Plan remains.
- The play starts with an empty current team.
- Planned members can be linked to actual play Pokémon later.

Plan-to-play member status belongs to the relationship between one linked play and its linked Team Plan. Alternate team ideas should live as member notes, alternate targets, skipped targets, or future standalone planning concepts rather than multiple active plans for the same play.

## Collection

Collection is derived from actual Pokémon used in plays and recorded play history.

Collection should not be sourced only from current active team slots. Removing a Pokémon from the current team should not erase the user's history with that Pokémon.

Collection should also consider recorded team-history events. A Pokémon that was used before evolving should remain part of the user's usage history.

Collection should not have a primary mutable table. It should be a read model over current Pokémon rows, event Pokémon references, and team snapshots.

## Completion

Completion percentage is derived from:

- Play settings.
- Selected optional content scopes.
- Story progress.
- Collectibles.
- Pokedex progress.

Completion rules should be explicit and testable. Optional content, optional Pokedex scopes, and optional Pokedex entries must be controlled by play settings.

Progress tables should generally be sparse. Missing story, collectible, or Pokedex progress rows represent default incomplete/uncollected/unseen state unless a table explicitly documents otherwise.

## Module Scope

These ownership rules describe the active `mainline` module. Future modules may reuse shared reference/profile concepts, but they should not be forced into `mainline_plays`, `mainline_team_plans`, or mainline story progress if their product behavior differs.

## Audit And History

Play Timeline is user-facing history.

It is not a complete technical audit log. If technical audit logging is needed later, it should be separate from the user-facing play timeline.
