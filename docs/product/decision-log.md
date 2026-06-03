# Decision Log

This log captures accepted product decisions before database schema design starts.

## Accepted Decisions

### Product Identity

Voydex is a Pokemon companion for tracking, remembering, and planning playthroughs.

It should not become only a generic Pokemon wiki. Reference search exists to support play tracking, planning, and user history.

### Primary Navigation

Main navbar:

- Dashboard
- Plays
- Plans
- Pokedex
- Collection
- Stats
- Browse

Browse contains:

- Generations
- Games

Generations and Games are contextual browse routes, not the required product funnel.

### Play Is The Central Gameplay Entity

A play is the central user-owned adventure.

The user can create or continue a play without navigating through Generation and Game pages.

### Play Core Lifecycle

Play statuses are:

- `not_started`
- `playing`
- `paused`
- `completed`
- `abandoned`

Archive is separate from play lifecycle status.

Play-specific completion settings belong to the play, not global preferences. Pokedex tracking, Pokedex completion inclusion, collectible completion inclusion, mythical inclusion, and optional content such as DLC are selected per play.

Completion values are derived from settings and progress rows, not stored as source-of-truth percentages.

### Plans Are Separate From Plays

Team plans can exist before plays and remain available after a play is created from them.

Creating a play from a plan does not auto-fill the active team.

Plans can include optional content scope such as DLC availability before a play exists.

Plan-to-play member status belongs to the relationship between a specific linked play and linked plan, not to the reusable plan itself.

A play can link multiple plans, with one primary plan for focused UI display.

### Plan Member Statuses

Plan members use these statuses:

- `pending`
- `linked`
- `reached`
- `skipped`

Reached target is derived when possible from the linked play Pokemon reaching the target species/form.

### Current Roster Limit

The current active/reserve roster for a play is capped.

The working limit is 6 active Pokemon plus 6 reserve Pokemon.

Retired/replaced Pokemon can remain in play history without counting toward the current roster limit.

Roster state and slot are explicit. Active Pokemon use slots 1 to 6, reserve Pokemon use slots 1 to 6, and retired/replaced Pokemon have no current slot.

### Team Edit Intent

Team edits can be:

- Correction-only/in-app edit.
- Recorded in-game change.

Only recorded in-game changes should create timeline history.

Recorded Pokemon lifecycle events should preserve event-time species/form identity. This keeps Collection and reuse checks accurate after evolutions or form changes mutate the current team row.

### Story Snapshots Are Optional

Important story milestones can support team snapshots, but snapshots are optional.

Bulk logging completed plays should remain fast and should not force snapshots.

### Timeline Is User-Facing History

Timeline is not a technical audit log.

It should focus on meaningful adventure events:

- Story milestone completion.
- Important fight snapshots.
- Pokemon added, evolved, retired, or replaced.
- Hall of Fame/final team.
- Manual notes.

Normal Pokedex and collectible progress should not automatically create timeline events.

Timeline ordering must support imported old plays where exact timestamps are unknown. The model should allow manually ordered or milestone-ordered entries without requiring precise event dates.

Team snapshots belong to timeline events and freeze visible team state at that moment. They are not current roster rows.

### Pokedex Completion Is Species-Level

Play Pokedex completion should match common online Pokedex completion behavior and track by species.

Form-level dex completion is not part of the current product contract.

Gameplay Pokedex progress should be stored per play and species. Reference Pokedex entries decide which species count for each game, version group, and optional DLC scope.

### DLC Is Optional Completion

DLC is modeled as optional content per play.

Not every user owns or wants to include DLC for a game.

### Collection Is Derived

Collection is derived from actual play Pokemon and meaningful recorded history.

It is not sourced only from current team slots and should not be manually maintained as a separate primary collection.

Collection should consider current play Pokemon, event-time Pokemon references, and relevant team snapshots.

### Backlog Is Independent User Intent

Game backlog/wishlist state is separate from concrete plays.

Creating or completing a play can suggest changing backlog status, but it should not force a strict one-to-one mirror of play lifecycle.

### Pokemon Reuse Applies Beyond Planning

Pokemon reuse rules apply to both team planning and adding Pokemon to an actual play team.

The product should use one reuse policy concept instead of a planning-only setting.

Reuse scopes cascade:

- `form`
- `species`
- `evolution_family`

These are mutually exclusive scopes, not independent flags.

Reuse validation should include both real usage checks and preemptive checks. The app should validate the current selected Pokemon, planned targets, preferred starting Pokemon, and future evolution destinations so conflicts are visible before a user reaches a blocked evolution.

### Rules Support Structure And Description

Voydex should support predefined rules seeded by the product and custom descriptive rules created by users.

Structured rules can affect app validation, warnings, filters, stats, and planning. Descriptive custom rules can document personal challenges even when the app cannot enforce them yet.

### Availability Is Curated Reference Data

Pokemon availability answers how a Pokemon can be obtained or used in a game/content scope.

Availability methods should be curated carefully as stable lookup data because they power Pokedex search, team planning, DLC behavior, and preemptive warnings.

### UUID Strategy Depends On New Project Postgres Version

For a new Supabase project, use native UUIDv7 defaults if the project is on Postgres 18 or newer.

If the project is not on Postgres 18+, use `gen_random_uuid()` as the default. The column type remains `uuid`, so UUIDv4 and UUIDv7 values can coexist if the project upgrades later.

### Backlog Features

These are accepted future directions but not immediate implementation targets:

- Shareable recap.
- Progression-aware planning.
- Achievements.

## Schema Decisions

The database design decisions for moves, tags, preferences, backlog/wishlist, rules, item scope, availability depth, snapshots, IDs, and roster limits are resolved in:

```txt
00-databases/projects/voydex/docs/schema-design-decisions.md
```

Those decisions should be reviewed before clean SQL files are written.
