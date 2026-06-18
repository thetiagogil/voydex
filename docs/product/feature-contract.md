# Feature Contract

This document defines the agreed feature set for the Voydex rebuild.

## Product Scope

The active build target is the `mainline` product family and its Adventures app workspace: mainline-style Pokemon RPG playthrough tracking, planning, Pokedex search, Collection, and stats.

Future product families such as `dungeon`, `pokopia`, `go`, `home`, `ranger`, and `sleep` are accepted product directions, but they should not distort the `mainline` play/team/story model. They can share account, reference, style, and high-level shell concepts while using product-family-specific data models where needed.

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

### Play Model

A play is a concrete adventure record for one user and one `mainline` product-family game.

Play lifecycle statuses:

- `not_started`: created as a future or imported play, but not actively underway.
- `playing`: currently in progress.
- `paused`: temporarily stopped.
- `completed`: the user considers the main playthrough complete.
- `abandoned`: stopped with no intent to continue.

Archive should be separate from lifecycle status. A completed or abandoned play can be archived without changing what happened in the play.

Plays should support:

- User-owned name.
- Game.
- Lifecycle status.
- Trainer name.
- Platform or console.
- Started date.
- Completed date.
- Playtime.
- Notes and save notes.

Play names should be required in stored data. If the user does not provide one, the app should generate a clear default name during create flow.

Play-specific settings should control optional completion behavior:

- Whether Pokedex tracking is enabled for the play.
- Whether Pokedex progress counts toward completion.
- Whether collectibles count toward completion.
- Whether optional Pokedex entries count toward completion.
- Whether optional Pokedex scopes such as National or special Pokedexes count toward completion.
- Which optional content scopes, such as DLC, are enabled for the play.

Story progress is part of the base play. Completion percentages should be derived from play settings, selected optional content, and recorded progress instead of stored as source-of-truth values.

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

The current active/reserve roster should be capped to prevent unbounded team growth. The working product limit is 6 active Pokemon plus 6 reserve Pokemon.

The Team page should support:

- Active and reserve Pokemon.
- Levels, forms, abilities, natures, gender, shiny state, moves, and notes.
- Team strengths and weaknesses.
- Pokemon lifecycle actions: add, evolve, retire, replace.
- Correction-only edits versus in-game recorded changes.
- Real-time Pokemon reuse validation when adding, replacing, or evolving a Pokemon.

Retired/replaced Pokemon should be preserved as history when the user records the change as an in-game event, but they should not count toward the current roster limit.

Roster slots:

- Active Pokemon use slots 1 to 6.
- Reserve Pokemon use slots 1 to 6.
- Retired and replaced Pokemon have no current roster slot.

Recorded in-game team changes should create timeline events with enough Pokemon identity data to preserve usage history. For example, if Squirtle evolves into Wartortle and then Blastoise, Collection and reuse checks should still know that Squirtle, Wartortle, and Blastoise were used.

Correction-only edits should update the current Pokemon record without creating timeline history.

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

Story progress rows should track milestone completion. If a milestone has a player decision, such as a starter choice or fossil choice, the selected option should be stored separately from simple completion.

Absence of a progress row should mean incomplete by default. The app should not need to pre-create every possible progress row for every play.

### Play Timeline And Journal

The Play Timeline is a user-facing adventure history, not a technical audit log.

Timeline entries should focus on meaningful events:

- Important story milestones.
- Team snapshots for key fights.
- Pokemon added, evolved, retired, or replaced.
- Hall of Fame/final team.
- Manual journal notes.

Normal Pokedex and collectible progress should not automatically create timeline noise.

Timeline Pokemon references should snapshot the relevant species/form at the event time. They should not rely only on the current Pokemon row, because that row can later evolve, change form, retire, or be corrected.

Timeline events can be created from:

- User-written journal notes.
- Recorded in-game team actions.
- Important story milestone completions when the user chooses to record them.
- Hall of Fame/final team moments.
- Imported historical events for already-completed plays.

Timeline ordering should support old imported plays where exact timestamps are unknown. The UI should be able to show manually ordered or milestone-ordered entries without forcing exact dates.

Team snapshots are attached to timeline events. A snapshot should freeze the visible team state at that moment, including position, species/form, nickname, level, shiny state, gender, nature, ability, held item, moves, and notes.

### Pokedex Progress

Pokedex progress is tracked per play.

Product rules:

- Completion is species-level.
- Seen/caught states are supported.
- Optional DLC Pokedex scopes are controlled by play settings.
- Optional Pokedex scopes are controlled by play settings.
- Optional Pokedex entries are controlled by play settings.

Pokedex progress is stored per play and species. Reference Pokedex definitions and entries decide which species count for each game/content scope, including optional DLC, National, and special Pokedex scopes.

Absence of a Pokedex progress row means the species is neither seen nor caught for that play.

### Collectibles

Collectibles are game-specific checklist groups.

They support manual collected/uncollected tracking. They should not automatically create timeline events by default.

Absence of a collectible progress row should mean uncollected by default. Collectible completion is derived from selected game/optional-content scopes and play settings.

### Plans

Team plans are separate from plays.

Plans should support:

- Planning a team before a play exists.
- Planning target/final Pokemon.
- Planning optional content scope such as DLC availability.
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

Plans should show preemptive Pokemon reuse warnings. If a planned target, preferred starting Pokemon, or likely future evolution conflicts with the active reuse policy, the UI should show the conflict before the user starts the play or adds the Pokemon.

Plan member slots should support a primary team plus alternates/reserves. Primary planned Pokemon use slots 1 to 6. Alternate/reserve planned Pokemon use slots 1 to 6. The planning cap should match the current roster cap unless the product later introduces a separate unlimited idea board.

When a plan is linked to a play, member status is tracked for that play/plan relationship. A plan can remain reusable for another play.

A play can link multiple plans. One linked plan can be marked primary so the UI can stay focused while still supporting variants.

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

It is derived from actual play Pokemon, recorded team lifecycle events, and meaningful snapshots, not only from current active team slots.

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

Collection should expose used-before identity at form, species, and evolution-family levels so it can power both browsing filters and reuse warnings.

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

Stats should remain read-model/query output. User-facing stats should not become manually maintained source-of-truth tables unless a later performance need requires cached aggregates.

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

Preferences should support global user behavior such as Pokemon reuse warnings/filtering. Play-specific completion choices such as DLC, Pokedex tracking, optional Pokedex scopes, and optional Pokedex entries are decided per play.

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
- No repeated evolution families.
- Shiny-only.
- No legendary Pokemon.
- Custom rules.

Rules should be modeled flexibly. The app should support predefined rules and user-authored custom rules. Pokemon reuse rules apply both when planning teams and when adding Pokemon to a play team.

Pokemon reuse checks should support both real usage warnings and preemptive warnings. Real usage warnings validate the Pokemon being selected now. Preemptive warnings validate planned targets and future evolution destinations so the user is not surprised later in a play.

Predefined rules should be structured where they affect app behavior. User-authored descriptive rules should also be supported for personal challenges that the app cannot validate yet.

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

Creating or completing a play can suggest updates to backlog/wishlist status, but the game intent row remains independent user intent rather than a strict mirror of play status.

### Pokemon Biography

Play Pokemon should support optional personal biography fields:

- Met/caught location.
- Met level.
- Ball.
- Personal notes.
- MVP flag.
- Final status.

These fields enrich Collection and timeline features.

### Pokemon-Relevant Items

Voydex should not become an item encyclopedia.

The item catalog should only include items that are held by Pokemon or are essential to Pokemon biography/mechanics:

- Poke Balls for caught-ball history.
- Held items for team display and planning.
- Evolution items where they explain evolution history or availability.
- Fossils where they explain Pokemon origin/availability.
- Form-change items where they affect selectable/displayed Pokemon forms.
- Berries, Mega Stones, and Z-Crystals as held item subgroups.

General medicine, treasures, ingredients, decorations, clothing, mail, generic key items, and unrelated bag items should stay out unless a future feature needs them.

## Current Backlog Features

These are accepted product directions but not immediate build targets:

- Shareable recap.
- Progression-aware planning by story point/location.
- Achievements.
