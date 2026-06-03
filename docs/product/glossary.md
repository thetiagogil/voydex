# Glossary

This glossary standardizes product language for the Voydex rebuild.

## Core Terms

### Play

A user-owned Pokemon playthrough/adventure.

A play records the user's game, status, metadata, team, story progress, collectibles, Pokedex progress, selected optional content, and timeline.

### Play Hub

The central page for a play.

It summarizes team, story, collectibles, Pokedex progress, completion, and timeline highlights. It links to deeper play-specific routes.

### Plan

A user-owned team plan that can exist before a play.

A plan usually targets final/evolved Pokemon and can later be linked to a play. Creating a play from a plan does not automatically fill the active team.

### Planned Member

One Pokemon target in a team plan.

A planned member can be pending, linked, reached, or skipped.

### Play Pokemon

An individual Pokemon recorded in a user's play.

This is not only a species reference. It can include personal fields such as nickname, level, nature, ability, moves, notes, met location, MVP flag, and lifecycle state.

### Current Roster

The active/reserve Pokemon currently managed for a play.

The current roster is capped to prevent unbounded team growth. Retired or replaced Pokemon can remain in history but do not count toward the current roster limit.

### Collection

The user's Pokemon usage history across plays.

Collection is derived from actual play Pokemon and meaningful recorded history, not only current team slots.

### Pokedex

The global reference/search/planning surface.

The Pokedex helps users search Pokemon by generation, game, availability, type, and used-before state.

### Play Pokedex Progress

The user's seen/caught progress for a specific play.

Completion is species-level.

### Story Progression

Game/version-group-specific milestones that represent progress through a play.

Important story milestones can optionally support team snapshots.

### Collectibles

Game-specific collectible groups and entries.

Collectibles are tracked manually and do not automatically create timeline events.

### Timeline

User-facing adventure history for a play.

Timeline entries should represent meaningful events such as story milestones, team changes, evolutions, Hall of Fame/final team, and manual journal notes.

### Snapshot

A historical copy of team or Pokemon state at a meaningful moment.

Snapshots should not depend on current team rows because the team can later change.

### Hall Of Fame / Final Team

A special timeline event and team snapshot representing a completed run or final clear.

### Rules / Challenges

Structured or custom constraints attached to a play or plan.

Examples include Nuzlocke, monotype, no repeated species, no repeated forms, shiny-only, and no legendaries.

### Tags

User-owned labels attachable to plays, plans, or play Pokemon.

Tags are for filtering and personal organization.

### Backlog / Wishlist

User-owned game intent state.

This records whether a user wants to play, planned, is playing, completed, or skipped a game independent of concrete plays.

## Reference Data Terms

### Species

The National Dex identity of a Pokemon.

Pokedex completion uses species-level identity.

### Form

A concrete Pokemon form identity.

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

An optional content scope selected per play, usually DLC.

### Availability

Reference data describing whether and how Pokemon, moves, or items are available in a game/version group.

Initial availability should support planning by game and DLC. More detailed location/story-gate availability is backlog.
