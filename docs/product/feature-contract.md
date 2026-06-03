# Feature Contract

This document defines the agreed feature set for the Voydex rebuild.

## Primary App Areas

### Dashboard

The Dashboard is the logged-in home page.

It should surface:

- Recent plays.
- Continue-play shortcuts.
- Quick actions for creating a play or plan.
- Recent meaningful activity.
- Summary stats.

The Dashboard is derived from user-owned gameplay, planning, timeline, and stats data.

### Plays

Plays are user-owned playthroughs/adventures.

The Plays area should support:

- Listing all plays.
- Filtering by generation, game, status, tags, rules, and completion state.
- Creating a play directly through a searchable game selector.
- Entering a play hub.

The user should not be forced through `Generations -> Games -> Plays` to create or continue a play.

### Play Hub

The Play Hub is the central workspace for a play.

It should summarize:

- Play metadata and status.
- Pokemon team preview.
- Story progression.
- Collectibles.
- Pokedex progress.
- Completion.
- Timeline highlights.
- Selected optional content such as DLC.

The Play Hub should link to deeper play-specific routes instead of trying to expose every control on one page.

### Team Management

Each play has a managed Pokemon roster.

The current active/reserve roster should be capped to prevent unbounded team growth. The working product limit is 12 current Pokemon: active party plus reserves.

The Team page should support:

- Active and reserve Pokemon.
- Levels, forms, abilities, natures, gender, shiny state, moves, and notes.
- Team strengths and weaknesses.
- Pokemon lifecycle actions: add, evolve, retire, replace.
- Correction-only edits versus in-game recorded changes.

Retired/replaced Pokemon should be preserved as history when the user records the change as an in-game event, but they should not count toward the current 12-slot roster limit.

### Story Progression

Story progression is game/version-group-specific milestone tracking.

Important milestones can optionally support team snapshots:

- Gym leaders.
- Rival battles.
- Elite Four.
- Champion.
- Major bosses.
- Final story milestones.

Snapshots must be optional. Users logging already-completed games should be able to bulk-complete milestones without being forced to attach snapshots.

### Play Timeline And Journal

The Play Timeline is a user-facing adventure history, not a technical audit log.

Timeline entries should focus on meaningful events:

- Important story milestones.
- Team snapshots for key fights.
- Pokemon added, evolved, retired, or replaced.
- Hall of Fame/final team.
- Manual journal notes.

Normal Pokedex and collectible progress should not automatically create timeline noise.

### Pokedex Progress

Pokedex progress is tracked per play.

Product rules:

- Completion is species-level.
- Seen/caught states are supported.
- Optional DLC Pokedex scopes are controlled by play settings.
- Mythical inclusion is controlled by play settings.

Pokedex progress is gameplay state joined with reference Pokedex definitions and entries.

### Collectibles

Collectibles are game-specific checklist groups.

They support manual collected/uncollected tracking. They should not automatically create timeline events by default.

### Plans

Team plans are separate from plays.

Plans should support:

- Planning a team before a play exists.
- Planning target/final Pokemon.
- Optional preferred forms, roles, notes, abilities, natures, and moves.
- Creating a play from a plan.
- Keeping the plan as a persistent reference after a play is created.

Creating a play from a plan should not auto-fill the active team. The play starts with an empty current team, and the user can add planned Pokemon into the play when they are actually obtained.

Plan member statuses:

- `pending`: planned but not linked to a play Pokemon.
- `linked`: linked to an actual play Pokemon but target not reached.
- `reached`: linked play Pokemon reached the planned target species/form.
- `skipped`: user decided not to use the planned member.

When adding a planned target to a play, the app should suggest the earliest or first obtainable evolution-stage Pokemon when possible.

### Pokedex Search

The global Pokedex is a reference/search/planning surface.

It should support filters for:

- Generation.
- Game.
- Availability.
- Type.
- Used/not used.
- Species/form.

Pokemon detail pages can show:

- Forms.
- Stats by generation.
- Abilities.
- Learnsets.
- Evolutions.
- Availability by game.
- User history with that Pokemon.

### Collection

Collection is the user's used Pokemon history across plays.

It is derived from actual play Pokemon and meaningful play history, not only from current active team slots.

It should support filters by:

- Game.
- Generation.
- Species/form.
- Type.
- Shiny.
- Status.
- Tags.
- Used-before state.

Collection also supports users who want to avoid reusing a species or form across playthroughs.

### Stats

Stats are derived from user data.

Stats may include:

- Plays by generation and game.
- Completed plays.
- Favorite or most-used Pokemon.
- Favorite types.
- Challenge/rule stats.
- Pokedex and collectible completion.
- Team composition trends.

### Browse

Browse is a top-nav dropdown, not a primary app pillar.

It contains:

- Generations.
- Games.

Generation and Game pages remain useful contextual pages, but they are not the required path for creating or continuing plays.

### Settings

Settings should include:

- Profile.
- Preferences.
- Account.

Preferences should support product defaults such as DLC behavior, mythical inclusion, completion defaults, and planning rules.

## Personalization Features

### Play Metadata

Plays should support metadata useful for old and current games:

- Trainer name.
- Platform or console.
- Started date.
- Completed date.
- Playtime.
- Save notes.

### Rules And Challenges

Rules/challenges can attach to plays and plans.

Examples:

- Nuzlocke.
- Monotype.
- No repeated species.
- No repeated forms.
- Shiny-only.
- No legendary Pokemon.
- Custom rules.

Rules should be modeled flexibly. The app should support predefined rules and user-authored custom rules.

### Tags

Tags should be user-owned and attachable to:

- Plays.
- Plans.
- Play Pokemon.

Tags should support filtering and personal organization.

### Backlog And Wishlist

Users should be able to track game-level intent:

- Want to play.
- Planned.
- Playing.
- Completed.
- Skipped.

This is separate from a play. A user may want to play a game before creating a concrete playthrough.

### Pokemon Biography

Play Pokemon should support optional personal biography fields:

- Met/caught location.
- Met level.
- Ball.
- Personal notes.
- MVP flag.
- Final status.

These fields enrich Collection and timeline features.

## Current Backlog Features

These are accepted product directions but not immediate build targets:

- Shareable recap.
- Progression-aware planning by story point/location.
- Achievements.
