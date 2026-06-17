# Data Ownership

This document defines source-of-truth and derived-data rules for Voydex.

## Ownership Rule

The app should store user intent and meaningful user state. It should derive summaries, stats, completion, and collection views whenever practical.

## Source Of Truth

| Feature                          | Source of truth                                               |
| -------------------------------- | ------------------------------------------------------------- |
| User profile                     | `public.profiles`                                             |
| Static Pokemon/game data         | `reference` schema                                            |
| Story/collectible definitions    | `tracking` schema                                             |
| Plays                            | `gameplay.core_plays`                                         |
| Play metadata/settings           | `gameplay.core_play_settings` and play-owned columns/tables   |
| Current play roster              | User-owned play Pokemon rows with active/reserve state        |
| Retired/replaced Pokemon history | Play Pokemon lifecycle state plus play events                 |
| Play Pokedex progress            | Gameplay species progress joined to reference Pokedex entries |
| Play collectibles                | Gameplay collectible progress joined to tracking definitions  |
| Story progress                   | Gameplay tracking progress joined to tracking definitions     |
| Timeline/journal                 | `gameplay.core_play_events` and snapshot tables               |
| Team snapshots                   | `gameplay.core_play_event_team_snapshots`                     |
| Team plans                       | `planning.core_team_plans`                                    |
| Plan-to-play links               | `planning.core_play_plan_links` and member links              |
| Tags                             | User-owned tag tables and join tables                         |
| Backlog/wishlist                 | User-owned game intent tables                                 |
| Preferences                      | User-owned preference tables                                  |

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
- Plan target reached state when it can be derived from linked play Pokemon.
- Collection used-before state at form, species, and evolution-family levels.

Some derived values may be cached later for performance, but caching should not redefine the source of truth.

## Plays

`core_play` is the current database naming for the central gameplay entity in the active `mainline` module.

A play owns:

- Game choice.
- Status.
- Metadata.
- Settings.
- Selected optional content.
- Team/roster state.
- Progress state.
- Timeline/journal.

Plays should not own static reference data. They should reference games, Pokemon, moves, forms, Pokedex entries, and tracking definitions.

## Team And Pokemon History

The current roster should be limited to active/reserve Pokemon.

Retired or replaced Pokemon can remain associated with the play as history, but they should not count toward the current team limit.

Current roster ordering uses explicit roster state plus slot. Active and reserve groups each have slots 1 to 6. Retired and replaced Pokemon have no current slot.

Important team actions can create timeline events:

- Added.
- Evolved.
- Retired.
- Replaced.
- Final team/Hall of Fame.

Timeline event Pokemon references should store event-time Pokemon identity. This preserves usage history when the current Pokemon row later changes species/form through evolution, form change, replacement, or correction.

Simple correction edits should not create timeline history.

## Story Snapshots

Story milestone snapshots are optional.

When a snapshot is created, it must store a historical copy of the relevant team state. It must not rely only on current team rows because Pokemon can later evolve, move, retire, or be edited.

Snapshot rows are owned by the timeline event that created them. They are not the source of truth for current roster state.

Timeline ordering should not require exact timestamps. Old imported plays can use manual order or milestone order when exact dates are unknown.

## Plans

Plans are separate from plays.

A plan owns planned target Pokemon, notes, roles, and preferences.

Plans can also own optional content scope such as DLC availability before a play exists.

When a play is created from a plan:

- The plan remains.
- The play starts with an empty current team.
- Planned members can be linked to actual play Pokemon later.

Plan-to-play member status belongs to the relationship between one linked play and one linked plan. The same plan may remain reusable elsewhere.

## Collection

Collection is derived from actual Pokemon used in plays and recorded play history.

Collection should not be sourced only from current active team slots. Removing a Pokemon from the current team should not erase the user's history with that Pokemon.

Collection should also consider recorded team-history events. A Pokemon that was used before evolving should remain part of the user's usage history.

Collection should not have a primary mutable table. It should be a read model over current Pokemon rows, event Pokemon references, and team snapshots.

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

These ownership rules describe the active `mainline` module. Future modules may reuse shared reference/profile concepts, but they should not be forced into `core_plays`, `core_team_plans`, or mainline story progress if their product behavior differs.

## Audit And History

Play Timeline is user-facing history.

It is not a complete technical audit log. If technical audit logging is needed later, it should be separate from the user-facing play timeline.
