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
| Play plan link                   | `planning.mainline_play_plan_links`                             |
| Tags                             | User-owned tag tables and join tables                           |
| Backlog/wishlist                 | User-owned game intent tables                                   |
| Preferences                      | User-owned preference tables                                    |

## Derived Data

These should be calculated through queries, views, or app services:

- Mainline Home summaries.
- Completion percentages.
- Collection.
- Used-before flags.
- Stats.
- Recent activity.
- Play overview summaries.
- Team strengths and weaknesses.
- Plan-owned comparison state when it can be derived from linked play Pokémon.
- Collection used-before state at form, species, and evolution-family levels.

Some derived values may be cached later for performance, but caching should not redefine the source of truth.

## Authentication And Global Settings

Supabase Auth owns account identity, email, password, confirmation, recovery,
and authenticated session truth. `public.profiles` owns the optional Voydex
Display name, the Pokémon icon (`icon_form_id`, a reference form), the default
trainer name a new Play starts with and when Welcome was finished or skipped
(`welcome_completed_at`). `public.user_preferences` is the home for global defaults that
are not play-specific: the New Play defaults (`default_track_story`,
`default_pokedex_mode`, `default_track_collectibles`), the motion
preference (`motion`: full, reduced or system) and the Search and filters
choice (`search_filters_open`). Pokémon reuse is a Play's No Pokémon reuse
rule.

The game and partner picked on Start a Play are a wish, not a record: they
travel as `?game=` and `?partner=`, then wait on the Auth user's metadata
(`voydex_intent`) so a confirmation link opened on another device keeps them.
Mainline reads them with `auth.getUser()`, validates them again when it starts
the Play, and clears them once the Play is started or put aside. The email
typed on an auth page is kept for half an hour in an HTTP-only cookie so the
next page can say where the link went; it never goes in a URL.

An email change is Auth-owned: Supabase sends a confirmation link and the
change takes effect once it is opened. Voydex offers no export or import of
your data for now; a Plan's share link is the one import.

Validated authentication destination and action context are temporary
application state. They are not a second user-owned workflow record and never
authorize a Mainline mutation. The owning destination revalidates exact game,
species/form, content, ownership, capacity, lifecycle, and stale state after
authentication.

V1 has no user-owned theme state: public and protected surfaces use the
canonical light-first presentation. Any later Appearance choice begins as a
presentation contract and must not become a profile or cross-device promise
without an explicit product and data decision.

Account deletion is an Auth-owned destructive workflow that must remove the
Auth identity and allow reviewed foreign-key cascades to remove the profile and
dependent owner-scoped data. A client must never delete application rows first
or report success before Auth identity deletion succeeds. Sign out changes only
the current session and must not delete user data.

## Shared System States

Loading, pending, empty, partial, error, not-found, permission, expired-session,
service-status, and success presentation are application state. They do not
create database truth. Health status is a transient observation from the
existing health endpoint. Error references may be logged by infrastructure but
must not become user-editable or expose private data.

## Codex Pokémon

Pokémon Browse and Pokémon Detail are public read models over static
`reference` facts. One exact Codex Game Context determines every game-dependent
type, persistent form, artwork, availability, Pokédex placement, stat, ability,
evolution, matchup, learnset, and detail destination. The app must not combine a
latest-era attribute with a different historical game merely because each fact
is individually valid.

Browse URL state and the last exact game selected during the current Codex
browser session are application state. They are not new user-owned database
truth in V1. A future account preference or cache requires evidence from usage
or profiling and must not redefine reference ownership.

Codex may pass exact game, species, persistent form, content or availability
context, and an intended Mainline action. Mainline remains responsible for
authentication, eligible destinations, ownership, validation, warnings, and
all Plan, Play, Team, or Collection mutations. A failed or cancelled handoff
must leave reference and user-owned truth unchanged. The signed-in pieces on
Codex pages (Add to a Play, In your Plays, Start a {Version} Play, Your Plays,
Played counts) are Mainline reads that the Codex routes inject through the
Codex's slots; they only link into Mainline, which owns the write.

## Codex Games

Games Browse, Game Detail, and Game Pokédex are public read models over exact
game, generation, version-group, region, platform, game-type, content-scope,
Pokédex, membership, availability, species, form, type, ability, stat, and
artwork facts owned by `reference`.

Base and DLC Pokédex inclusion is derived through the selected game's
applicable content scopes. A truthful available-species count is derived from
resolved availability and never from the size of the largest Pokédex. Related
releases appear only when current reference facts establish an explainable
relationship; the app does not persist editorial guesses as relationship
truth.

Games and Game Pokédex URL criteria, selected named Pokédex, and loaded-result
position are application state. They are not user-owned database truth. Codex
may pass the exact game and an intended Start Play, Create Plan, or Add to Game
List action. Mainline owns authentication, lifecycle and scope validation,
atomic Play or Plan creation, the independent Game List row, and every personal
mutation. A failed or cancelled handoff changes none of those records.

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

The Play Pokémon row owns the individual's current form identity. Reference
data separately owns whether that current form has a valid directed transition
in the Play's game and content scope. A selectable fixed form remains unchanged
through ordinary Team editing; only a validated form-transition action or an
explicit correction may replace it.

Moving, reordering, or swapping current members changes only roster state and
slot and creates no History in V1. A compound move or swap must be atomic.
Unknown positions are knowledge state, not available destinations.

Past Members is a Team-owned view over retired and replaced Play Pokémon, not a
second History model. Returning a past member reuses the same Play Pokémon row,
clears historical-only state, assigns one current slot, and records the return.
It never creates a duplicate member.

Adding a Pokémon goes through `add_mainline_play_pokemon`: the server picks
the first open slot of the team or reserve, so two quick adds can't claim the
same one, and the addition joins History; Undo right after deletes the
Pokémon and its own Added moment together (`remove_mainline_play_pokemon`).
Choosing a brand-new Play's partner (`choose_mainline_play_partner`) adds it
to slot 1 of an empty team and records the game's partner-choice milestone,
found by the database from the Play's game, with that choice and the team it
starts; Undo (`undo_mainline_play_partner`) reverses both in one call.
Saving a Pokémon's details replaces its moves in the same call
(`update_mainline_play_pokemon`) and is not a moment.
Moving a member to another team or reserve slot, or swapping it with the one
there, is one call (`move_mainline_play_pokemon`); its state follows the slot,
the team keeps at least one Pokémon, and a move is not a moment.

Important team actions can create timeline events:

- Added.
- Evolved.
- Persistent form changed.
- Retired.
- Replaced.
- Returned to Team.
- Final team/Hall of Fame.

Routine Pokémon updates and correction-only edits do not create timeline
history in V1. Meaningful Team history is created through dedicated recorded
lifecycle actions, Team-moment snapshots, and History workflows.

A V1 Team-moment snapshot owns a historical copy of the recorded Active slots
only. Reserve rows remain current roster state rather than snapshot
participants. Unknown Active positions remain unknown in the captured moment;
they are not converted to confirmed empty positions.

Timeline event Pokémon references should store event-time Pokémon identity. This preserves usage history when the current Pokémon row later changes species/form through evolution, form change, replacement, or correction.

`Correct record` changes current truth without creating lifecycle History.
Existing event-time identity remains owned by History and is corrected there
separately. Physical deletion removes a mistaken member record but must preserve
existing event-time History unless History itself explicitly deletes it. Plan
comparison has no persisted member association, so deleting the current member
only removes that member from future comparison and never mutates Plan data.

## Story Snapshots

Story milestone snapshots are optional.

When a snapshot is created, it must store a historical copy of the relevant team state. It must not rely only on current team rows because Pokémon can later evolve, move, retire, or be edited.

Snapshot rows are owned by the timeline event that created them. They are not the source of truth for current roster state.

Timeline ordering should not require exact timestamps. Old imported plays can use manual order or milestone order when exact dates are unknown.

## History Events And Ordering

One History owns every moment of a Play; the former Team History is its Team
filter, not a second projection. Recording a milestone in place (Overview's
Record) writes its completion, its moment and, where the milestone keeps
snapshots, the current team in one step; Undo marks it incomplete, which also
removes the moment, and the database refuses when something recorded since
depends on it. Notes are appended at the end of the timeline
(`add_mainline_play_event`, which takes the next place under the Play's
lock); a status change saved from Settings is appended the same way inside
`update_mainline_play_general_settings`.

History owns the user-facing event narrative and the event-time evidence
attached to it. Story, Team, Progress, and Plan remain the sources of truth for
their current facts; a History entry records what was deliberately preserved
about a moment rather than becoming a second current-state model.

History, Overview and Home order moments by when they happened: the date a
moment was given, else when it was recorded. The journey sequence
(`timeline_order`) only breaks ties, so a moment logged later for an earlier
day still sits on that day and out-of-order positions never scramble the
months. Date certainty and date values remain separate metadata. Highlighting
an event changes only its pinned state; it does not change the journey sequence
or create a duplicate entry.

Manual memories own editable narrative, date certainty, related Pokémon, and
journey position. Structured events may allow narrative and ordering edits, but
changes to event-time identities or snapshots require a guarded History-owned
correction. That correction never mutates the current Team, Story, Progress, or
Plan state.

Deleting a History entry deletes only the event and its attached references and
snapshot evidence. It does not reverse the Team or Story action that originally
created the event. Related Pokémon on a manual memory must be selected from
Pokémon that actually belonged to the Play, including Past Members, so the
reference cannot become false usage history.

A six-position Team snapshot must distinguish an occupied slot, a
confirmed-empty slot, and a slot whose historical state was not recorded. The
snapshot remains valid after current Pokémon rows change or are removed.

## Play Settings And Lifecycle

The Play row owns identity and lifecycle metadata. The selected game and
version scope are immutable through V1 Settings because Team, Progress,
availability, and Plan relationships depend on them. Renaming or editing
trainer, platform, dates, playtime, and notes does not change the owning game.

Started and completed date knowledge owns a value plus Exact, Approximate, or
`Not recorded` certainty. Approximate month/year or year values must not be
coerced into an invented day. A recorded completion date belongs to the known
completion fact: it is current while status is Completed and remains historical
after a normal Reopen. `Correct recorded status` clears it only when the earlier
completion was false. Started date belongs only after the Play has started.
General metadata correction never owns a lifecycle transition, decides that a
completion was false, or creates a History event.

Completion configuration owns scope and contribution intent, not recorded
progress. Disabling a tracker, optional-content scope, named Pokédex, optional
entry group, or Collectible group must preserve existing progress so it can be
restored if the scope is enabled again. Derived completion recalculates from
the new active definition; the settings write never rewrites progress to match
a percentage.

A Play keeps three tracking switches in `gameplay.mainline_play_settings`:
`story_tracking_enabled`, `pokedex_mode` (`caught_only` or `caught_and_seen`)
and `collectibles_tracking_enabled`. A new Play copies them from the owner's
New Play defaults unless Start a Play sets them. With Story or collectibles
off, completion leaves their entries out; what was recorded stays. Counting
collectibles toward completion (`include_collectibles_in_completion`) stays its
own choice and requires collectible tracking.

Main Story is the contributing baseline. Per-Play configuration owns the
`Counts toward completion`, `Track only`, or `Not tracked` choice for applicable
Postgame and optional-content Story paths, meaningful named Pokédexes, and
supported Collectible groups. A tracked Pokédex also owns its optional-entry or
supported optional-group requirement. Static definitions still own which
paths, scopes, entries, and groups apply to the selected game and content.

Lifecycle status does not own or freeze Team, Progress, Plan, or History.
Marking a Play completed is not evidence that every completion requirement is
complete. Archive remains a reversible visibility state separate from
lifecycle. Deleting a Play removes Play-owned records and its focused Plan link,
but it does not delete the independently reusable Team Plan,
shared tags, or reusable rule definitions.

The persistent Play Header initiates ordinary status transitions. Play Status
& Management owns correction of wrongly recorded status plus Archive, Restore,
and Delete. These surfaces must call the same owner-scoped lifecycle contract;
placement never creates a second status truth or a separate mutation model.
That contract preserves `completed_on` through normal Reopen and clears it only
through an explicit mistaken-completion correction.

Each routine transition owns one atomic status-and-applicable-date result.
Starting and completing may write date value plus certainty; Pause, Resume,
Abandon, and Reopen do not invent dates. Historical completion defaults to
unrecorded date knowledge. No lifecycle mutation owns Progress completion. As
built (v3), a status change saved from Play Settings' General card also
appends a status-change moment to History, in the same transaction as the
save.

`notes` owns durable general Play context. V1 has no next-session reminder. The
existing `save_notes` column has no accepted V1 consumer and must not be exposed
accidentally as a second notes field. Its eventual retention, rename, reuse, or
removal belongs to the later database audit for the deferred bookmark concept.

Rule definitions and rule applications are different facts. Product-owned
predefined rule definitions are immutable. A user-authored rule definition is
reusable across the owner's Plays; its name, description, category,
and base configuration belong to that shared definition. The Play-rule
relationship owns only attachment and supported local configuration.
The shipped V1 application catalogue owns which predefined rules are checkable
and how their configuration is validated; custom rules are recorded only.
Detaching a rule never deletes the shared definition, and V1 rule evaluation
produces warnings rather than blocking mutations.

Tags are reusable user-owned definitions across Plays, Plans, and Play Pokémon.
Each typed relationship owns only attachment. Removing a Tag from one Play is a
local detach. V1 Play Settings does not own shared Tag rename or deletion. Tags
own no completion, validation, or History meaning.

The Rules & Tags section owns one atomic local save across staged attachments,
new reusable definitions, and Play-specific rule configuration. It never
rewrites an existing shared definition as a side effect of one Play's save.

## Team Plan

A Team Plan is separate from a play's current team.

As built, the Team Planner saves a Plan's name, game and Pokémon with their
planned moves. There is no single save-Plan database function yet, so the
Pokémon are rewritten in order and a failure puts the previous ones back. A
Plan stores one game, its version group's first, until
`planning.mainline_team_plans` holds a version preference. An unsaved new
Plan lives only in the browser's local storage, and a shared Plan lives only
in a link's hash; neither is user-owned truth until saved. Following a Plan
from a Play links it through `link_mainline_team_plan_to_play`, or re-points
the existing link in one update; the database checks the Plan is yours and
for the same game.

The product contract is one focused linked Team Plan per play.

A Team Plan owns planned target Pokémon, notes, and preferences.

The Plan owns one to six ordered targets. Species and form are required;
ability, nature, held item, gender, and moves are optional preferences.

Actual Team composition never owns or rewrites those authored Plan facts. An
off-plan addition creates only the Play Pokémon and its normal Play-owned state;
it creates no comparison state and changes no Plan target. Only an explicit Plan
edit can change the intended lineup. Removing the focused relationship from a
Play unlinks the Plan without deleting the independently owned Plan.

Team lifecycle writes—including evolution, movement, replacement, and
retirement—update only Team and applicable History data. The contextual Plan
comparison is derived from current Play Pokémon whenever it is read.

A Team Plan can also own optional content scope such as DLC availability before a play exists.

Codex can initiate plan-related actions, but it should not own planning state.
When a user marks a Pokemon as a target, starts a plan from a Pokemon detail
page, or adds a Pokemon to a plan, the durable state belongs to the planning
model and any linked Mainline play/plan relationship.

When a play is created from a Team Plan:

- The Team Plan remains.
- The play starts with an empty current team.
- Planned members are compared with actual Play Pokémon automatically.

Comparison status is not durable state. It is derived through deterministic,
one-to-one species, form, and evolution-family matching. Active and Reserve
members support exact optional-build comparison. Retired and replaced members
contribute identity-only lifecycle evidence. Orphaned historical evidence for a
hard-deleted member is ignored.

Editing a target, preference, role, move, note, or slot changes the reusable
Team Plan and may affect every Play linked to it. The Plan experience must
disclose that wider impact when applicable. A Plan edit initiated inside one
Play clones the Plan and relinks only that Play before saving, preserving the
original for every other linked Play.

## Collection

Collection is derived from actual Pokémon used in Plays and recorded Play
History. It is species-led for browsing, while preserving exact forms,
distinct Play-Pokémon companions, and supporting Plays as separate facts.

Collection must not be sourced only from current Active slots. Moving or
retiring a Pokémon must not erase the user's history with it, and a Pokémon
used before evolving must remain evidence for that earlier species and form.
Event Pokémon references and Team snapshots may preserve historical evidence,
but repeated references to the same companion or moment are not additional
usage. Planned members and Pokédex Seen/Caught state do not establish use.

Collection has no primary mutable table. It is an owner-scoped read model over
Play Pokémon, event Pokémon references, Team snapshots, and their Play and game
context (archived Plays included). Corrections remain owned by Team and
History. Collection and Statistics share one reader
(`mainline/shared/server/trainer-pokemon-reader.ts`).

## Stats

Stats is a derived read model over Plays, Collection evidence, initialized
Progress, and attached Rules. It may count distinct companions, supporting
Plays, species, games, and trustworthy completed scopes, but must preserve
unknown-versus-zero and expose the denominator behind partial coverage.

Stats does not own a mutable aggregate. It must not infer favorites, Team
quality, Rule success, completion, or chronology from rankings, repeated
evidence rows, warnings, missing records, or database creation time. A future
cache may optimize the same facts without replacing their owning sources.

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
