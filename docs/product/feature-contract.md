# Feature Contract

This document defines the agreed feature set for the Voydex rebuild.

## Product Scope

The active V1 target is the `mainline` product family and its Mainline app
workspace: traditional mainline and Legends-style Pokémon RPG playthrough
tracking, planning, Pokédex search, Collection, and stats.

Frontend modules and database product families are related but distinct. The
active modules are Mainline, the authenticated playthrough workspace, and
Codex, the shared public reference browser. Codex is not a database product
family and does not own gameplay or planning mutations.

Possible later product families include Mystery Dungeon, Pokopia, Pokémon
HOME, Pokémon GO, Pokémon Snap, Ranger, and Sleep. They are outside V1 and are
not implementation commitments. They should not distort the `mainline`
play/team/story model. They can share account, reference, style, and high-level
shell concepts while using product-family-specific workflows and data models
where needed.

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

Plays are user-owned playthroughs.

The Plays area should support:

- Listing all plays.
- Filtering by generation, game, status, tags, rules, and completion state.
- Creating a play directly through a searchable game selector.
- Entering a play hub.

The user should not be forced through Codex browsing to create or continue a
play.

### Play Model

A play is a concrete playthrough record for one user and one `mainline` product-family game.

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
- Pokémon team preview.
- Story progression.
- Collectibles.
- Pokedex progress.
- Completion.
- Timeline highlights.
- Selected optional content such as DLC.

The current Play Hub is a tabbed workspace. Focused deep routes may be added when
a real workflow benefits from its own URL; do not create or link empty routes
for tab shells.

Current Overview direction:

- The top play section is context, not the main workspace Card.
- The tab card is the main Play Hub workspace.
- Overview should show Journey Status, Current Team, Progress Summary, and
  Recent History.
- Team Health belongs in the Team tab until the app has a real analysis model.
- Progress Summary should only render applicable progress tracks. For each
  track, show the progress bar and `completed / total`; do not show a visible
  percent label.
- Overview previews should summarize real workflows and mature tabs. Do not add
  placeholder cards just to fill space.

### Team Management

Each play has a managed Pokémon roster.

The current active/reserve roster should be capped to prevent unbounded team growth. The working product limit is 6 active Pokémon plus 6 reserve Pokémon.

The Team page should support:

- Active and reserve Pokémon.
- Levels, forms, abilities, natures, gender, shiny state, moves, and notes.
- Team strengths and weaknesses.
- Pokémon lifecycle actions: add, evolve, retire, replace.
- Correction-only edits versus in-game recorded changes.
- Real-time Pokémon reuse validation when adding, replacing, or evolving a Pokémon.

Retired/replaced Pokémon should be preserved as history when the user records the change as an in-game event, but they should not count toward the current roster limit.

Roster slots:

- Active Pokémon use slots 1 to 6.
- Reserve Pokémon use slots 7 to 12.
- Retired and replaced Pokémon have no current roster slot.

Recorded in-game team changes should create timeline events with enough Pokémon identity data to preserve usage history. For example, if Squirtle evolves into Wartortle and then Blastoise, Collection and reuse checks should still know that Squirtle, Wartortle, and Blastoise were used.

Correction-only edits should update the current Pokémon record without creating timeline history.

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

The Play Timeline is a user-facing play history, not a technical audit log.

Timeline entries should focus on meaningful events:

- Important story milestones.
- Team snapshots for key fights.
- Pokémon added, evolved, retired, or replaced.
- Hall of Fame/final team.
- Manual journal notes.

Normal Pokedex and collectible progress should not automatically create timeline noise.

Timeline Pokémon references should snapshot the relevant species/form at the event time. They should not rely only on the current Pokémon row, because that row can later evolve, change form, retire, or be corrected.

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
- Planning target/final Pokémon.
- Planning optional content scope such as DLC availability.
- Optional preferred forms, roles, notes, abilities, natures, and moves.
- Creating a play from a plan.
- Keeping the plan as a persistent reference after a play is created.

Creating a play from a plan should not auto-fill the active team. The play starts with an empty current team, and the user can add planned Pokémon into the play when they are actually obtained.

Plan member statuses:

- `pending`: planned but not linked to a play Pokémon.
- `linked`: linked to an actual play Pokémon but target not reached.
- `reached`: linked play Pokémon reached the planned target species/form.
- `skipped`: user decided not to use the planned member.

When adding a planned target to a play, the app should suggest the earliest or first obtainable evolution-stage Pokémon when possible.

Plans should show preemptive Pokémon reuse warnings. If a planned target, preferred starting Pokémon, or likely future evolution conflicts with the active reuse policy, the UI should show the conflict before the user starts the play or adds the Pokémon.

Plan member slots should support a primary team plus alternates/reserves. Primary planned Pokémon use slots 1 to 6. Alternate/reserve planned Pokémon use slots 1 to 6. The planning cap should match the current roster cap unless the product later introduces a separate unlimited idea board.

When a plan is linked to a play, member status is tracked for that play's Team Plan relationship.

A play has one focused linked Team Plan. The UI should not support multiple competing plans inside the same play. If the user wants variants, they should be represented as alternates, notes, skipped members, or future standalone planning concepts instead of multiple linked team plans for one play.

### Pokedex Search

The global Pokedex is a reference/search/planning surface.

It should support filters for:

- Generation.
- Game.
- Availability.
- Type.
- Used/not used.
- Planned/targeted state.
- Species/form.

Pokémon detail pages can show:

- Forms.
- Stats by generation.
- Abilities.
- Learnsets.
- Evolutions.
- Availability by game.
- User history with that Pokémon.

Authenticated Codex surfaces should expose V1 module-aware actions when enough
context is known.

From Game Detail:

- Start a play with the selected game prefilled.
- Start a plan with the selected game prefilled.
- Add the game to the user's Game List.

From Pokémon Detail:

- Add to an existing or new plan.
- Start a plan with the current Pokémon prefilled.
- Add to an eligible play team.
- Check availability in one of the user's plays.
- Open the user's Collection history for that Pokémon.

These actions require authentication and must preserve the selected Codex
context through login. Compare-with-team, standalone targets, and automated
fit recommendations remain backlog.

These actions should use the current Codex context, such as species, form, game,
version group, and availability scope. Codex should not execute Mainline
mutations directly. It should pass intent to the owning module, where validation
for team size, reuse policy, DLC settings, availability, form validity, and
plan/play state happens.

Anonymous users can browse Codex normally. Authenticated-only actions may be
visible as sign-in prompts when that helps communicate the connected product
journey; they must never appear usable and then silently fail.

### Collection

Collection is the user's used Pokémon history across plays.

It is derived from actual play Pokémon, recorded team lifecycle events, and meaningful snapshots, not only from current active team slots.

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
- Favorite or most-used Pokémon.
- Favorite types.
- Challenge/rule stats.
- Pokedex and collectible completion.
- Team composition trends.

Stats should remain read-model/query output. User-facing stats should not become manually maintained source-of-truth tables unless a later performance need requires cached aggregates.

### Codex Browse

Codex browse is the public-readable reference surface, not a required product
funnel.

Current Codex browse views:

- Pokémon.
- Games.

Generations remain useful reference context for filters, grouping, and future
detail pages, but they are not the required path for creating or continuing
plays.

### Settings

Settings should include:

- Profile.
- Preferences.
- Account.

Preferences should support global user behavior such as Pokémon reuse warnings/filtering. Play-specific completion choices such as DLC, Pokedex tracking, optional Pokedex scopes, and optional Pokedex entries are decided per play.

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
- No legendary Pokémon.
- Custom rules.

Rules should be modeled flexibly. The app should support predefined rules and user-authored custom rules. Pokémon reuse rules apply both when planning teams and when adding Pokémon to a play team.

Pokémon reuse checks should support both real usage warnings and preemptive warnings. Real usage warnings validate the Pokémon being selected now. Preemptive warnings validate planned targets and future evolution destinations so the user is not surprised later in a play.

Predefined rules should be structured where they affect app behavior. User-authored descriptive rules should also be supported for personal challenges that the app cannot validate yet.

### Tags

Tags should be user-owned and attachable to:

- Plays.
- Plans.
- Play Pokémon.

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

### Pokémon Biography

Play Pokémon should support optional personal biography fields:

- Met/caught location.
- Met level.
- Ball.
- Personal notes.
- MVP flag.
- Final status.

These fields enrich Collection and timeline features.

### Pokémon-Relevant Items

Voydex should not become an item encyclopedia.

The item catalog should only include items that are held by Pokémon or are essential to Pokémon biography/mechanics:

- Poke Balls for caught-ball history.
- Held items for team display and planning.
- Evolution items where they explain evolution history or availability.
- Fossils where they explain Pokémon origin/availability.
- Form-change items where they affect selectable/displayed Pokémon forms.
- Berries, Mega Stones, and Z-Crystals as held item subgroups.

General medicine, treasures, ingredients, decorations, clothing, mail, generic key items, and unrelated bag items should stay out unless a future feature needs them.
