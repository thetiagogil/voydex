# Glossary

This glossary standardizes product language for the Voydex rebuild.

## Product Terms

### App Module

A frontend product workspace inside the Voydex app.

Current app modules include `mainline` and `codex`.

Dashboard is a view inside `mainline`. Settings is a global app/account area.

### Product Family

A Pokémon content or game family stored in reference data.

Current product families are `mainline`, `dungeon`, `pokopia`, `go`, `home`, `ranger`, and `sleep`. Schemas describe data responsibility; product families describe Pokémon content scope.

### Codex Module

The frontend reference browser for Pokémon, games, generations, and future reference data.

Codex is not a database product family. It can read reference data across product families as Voydex grows.

### Mainline Module

The active Voydex app module for mainline-style Pokémon RPG playthroughs.

Mainline includes the play/team/story/Pokedex/planning companion experience. Its user-facing label is Mainline. Database tables and functions for this product family use the `mainline_` prefix.

### Play

A user-owned Pokémon playthrough.

A play records the user's game, status, metadata, team, story progress, collectibles, Pokedex progress, selected optional content, and timeline.

### Play Status

The lifecycle state of a play.

Statuses are `not_started`, `playing`, `paused`, `completed`, and `abandoned`.

Archive is separate from play status so a play can keep its real lifecycle state while being hidden from primary lists.

### Play Settings

Play-specific choices for tracking and completion behavior.

Examples include Pokedex tracking, Pokedex completion inclusion, collectible completion inclusion, optional Pokedex scopes, optional Pokedex entries, and selected optional content such as DLC.

### Play Hub

The central page for a play.

It summarizes team, story, collectibles, Pokedex progress, completion, and timeline highlights. It links to deeper play-specific routes.

### Plan

A user-owned team plan that can exist before a play.

A plan usually targets final/evolved Pokémon and can later be linked to a play. Creating a play from a plan does not automatically fill the active team.

Plans can include optional content scope, such as DLC availability, before a play exists.

### Planned Member

One Pokémon target in a team plan.

A planned member can be pending, linked, reached, or skipped.

When a plan is linked to a play, the member status belongs to that play/plan relationship.

### Play Pokémon

An individual Pokémon recorded in a user's play.

This is not only a species reference. It can include personal fields such as nickname, level, nature, ability, moves, notes, met location, MVP flag, and lifecycle state.

The current Play Pokémon row represents the current state. Recorded timeline references preserve event-time identities so past species/forms are not lost after evolution or form changes.

### Current Roster

The active/reserve Pokémon currently managed for a play.

The current roster is capped to prevent unbounded team growth. Retired or replaced Pokémon can remain in history but do not count toward the current roster limit.

### Collection

The user's Pokémon usage history across plays.

Collection is derived from actual play Pokémon and meaningful recorded history, not only current team slots.

Collection includes current Pokémon identity, recorded event-time identities, and relevant team snapshots.

### Pokedex

The global reference/search/planning surface.

The Pokedex helps users search Pokémon by generation, game, availability, type, and used-before state.

Global Pokedex search is not the same as Play Pokedex Progress. It is a reference and planning surface.

### Play Pokedex Progress

The user's seen/caught progress for a specific play.

Completion is species-level.

### Story Progression

Game/version-group-specific milestones that represent progress through a play.

Important story milestones can optionally support team snapshots.

### Mainline Milestone

The product term for a mainline story/progression step. Database objects use the `mainline_` prefix for these records.

The UI can call these Story Steps. Badges are represented as story milestones when that is how they occur in the game.

### Collectibles

Game-specific collectible groups and entries.

Collectibles are tracked manually and do not automatically create timeline events.

### Timeline

User-facing play history for a play.

Timeline entries should represent meaningful events such as story milestones, team changes, evolutions, Hall of Fame/final team, and manual journal notes.

Timeline entries can be ordered without exact timestamps, which is important for imported historical plays.

### Snapshot

A historical copy of team or Pokémon state at a meaningful moment.

Snapshots should not depend on current team rows because the team can later change.

### Hall Of Fame / Final Team

A special timeline event and team snapshot representing a completed run or final clear.

### Rules / Challenges

Structured or custom constraints attached to a play or plan.

Examples include Nuzlocke, monotype, no repeated species, no repeated forms, shiny-only, and no legendaries.

### Pokémon Reuse Policy

The rule used to detect whether a Pokémon has already been used by the user.

The policy applies both when planning teams and when adding Pokémon to an actual play team.

Reuse scope is cascading and mutually exclusive:

- `none`: do not warn, filter, or block reused Pokémon.
- `form`: only the exact species/form counts as reused.
- `species`: any form of the same species counts as reused.
- `evolution_family`: any Pokémon in the same evolution family counts as reused.

The scope should not be modeled as independent booleans. `evolution_family` is broader than `species`, and `species` is broader than `form`.

Reuse checks should support:

- Real usage warnings for the Pokémon being selected, added, replaced, or evolved now.
- Preemptive warnings for planned targets, preferred starting Pokémon, and future evolution destinations.

### Tags

User-owned labels attachable to plays, plans, or play Pokémon.

Tags are for filtering and personal organization.

### Backlog / Wishlist

User-owned game intent state.

This records whether a user wants to play, planned, is playing, completed, or skipped a game independent of concrete plays.

## Reference Data Terms

### Species

The National Dex identity of a Pokémon.

Pokedex completion uses species-level identity.

### Form

A concrete Pokémon form identity.

Forms can be default, regional, alternate, cosmetic, battle-only, held-item-driven, evolution-locked, or otherwise special.

### Form Rule

Metadata describing how a form should behave in team builder, planning, and display.

### Evolution Edge

A reference relationship from one species/form to another species/form under a method and condition.

Evolution edges power evolution actions, history, and planning suggestions.

### Version Group

A game content scope shared by one or more games.

DLC is modeled as an optional child version group of a base game version group.

### Optional Version Group

Legacy wording for optional content scope, usually DLC.

Prefer "optional content scope" in product/app docs because the app-facing concept is content inclusion, not the database implementation detail.

### Optional Content Scope

An optional game content scope selected per play or plan, usually DLC.

Optional content controls which story steps, collectibles, Pokedexes, availability, moves, items, and completion rules should apply.

### Availability

Reference data describing whether and how Pokémon, moves, or items are available in a game/version group.

Initial availability should support planning by game and DLC. More detailed location/story-gate availability is backlog.
