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

### Plans Are Separate From Plays

Team plans can exist before plays and remain available after a play is created from them.

Creating a play from a plan does not auto-fill the active team.

### Plan Member Statuses

Plan members use these statuses:

- `pending`
- `linked`
- `reached`
- `skipped`

Reached target is derived when possible from the linked play Pokemon reaching the target species/form.

### Current Roster Limit

The current active/reserve roster for a play is capped.

The working limit is 12 Pokemon.

Retired/replaced Pokemon can remain in play history without counting toward the current roster limit.

### Team Edit Intent

Team edits can be:

- Correction-only/in-app edit.
- Recorded in-game change.

Only recorded in-game changes should create timeline history.

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

### Pokedex Completion Is Species-Level

Play Pokedex completion should match common online Pokedex completion behavior and track by species.

Form-level dex completion is not part of the current product contract.

### DLC Is Optional Completion

DLC is modeled as optional content per play.

Not every user owns or wants to include DLC for a game.

### Collection Is Derived

Collection is derived from actual play Pokemon and meaningful recorded history.

It is not sourced only from current team slots and should not be manually maintained as a separate primary collection.

### Backlog Features

These are accepted future directions but not immediate implementation targets:

- Shareable recap.
- Progression-aware planning.
- Achievements.

## Decisions Deferred To Schema Design

These are not product blockers, but they should be resolved when designing the clean database schema:

- Whether play Pokemon moves use four nullable columns or a normalized move-slot table.
- Whether tags live in `gameplay`, `public`, or a separate personalization schema.
- Whether preferences live in `public` or a dedicated user/preferences schema.
- Whether game backlog/wishlist belongs in `gameplay` or a user-owned personalization schema.
- Whether challenge/rule definitions are global reference-like data, user-owned data, or both.
- The exact initial item catalog scope.
- The initial depth of availability data beyond native/transfer/event.
