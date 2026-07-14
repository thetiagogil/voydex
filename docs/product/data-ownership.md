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
- Plan-owned comparison state when it can be derived from linked play Pokémon.
- Collection used-before state at form, species, and evolution-family levels.

Some derived values may be cached later for performance, but caching should not redefine the source of truth.

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
must leave reference and user-owned truth unchanged.

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
existing event-time History unless History itself explicitly deletes it. Team
must reject deletion while a Plan-owned member relationship exists so the Team
mutation cannot cascade into planning data.

## Story Snapshots

Story milestone snapshots are optional.

When a snapshot is created, it must store a historical copy of the relevant team state. It must not rely only on current team rows because Pokémon can later evolve, move, retire, or be edited.

Snapshot rows are owned by the timeline event that created them. They are not the source of truth for current roster state.

Timeline ordering should not require exact timestamps. Old imported plays can use manual order or milestone order when exact dates are unknown.

## History Events And Ordering

History owns the user-facing event narrative and the event-time evidence
attached to it. Story, Team, Progress, and Plan remain the sources of truth for
their current facts; a History entry records what was deliberately preserved
about a moment rather than becoming a second current-state model.

One explicit journey sequence is the canonical order for exact, approximate,
and undated events. Date certainty and date values remain separate metadata.
Database creation time is never a fallback for user-facing recency. Highlighting
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

Main Story is the contributing baseline. Per-Play configuration owns the
`Counts toward completion`, `Track only`, or `Not tracked` choice for applicable
Postgame and optional-content Story paths, meaningful named Pokédexes, and
supported Collectible groups. A tracked Pokédex also owns its optional-entry or
supported optional-group requirement. Static definitions still own which
paths, scopes, entries, and groups apply to the selected game and content.

Lifecycle status does not own or freeze Team, Progress, Plan, or History.
Marking a Play completed is not evidence that every completion requirement is
complete. Archive remains a reversible visibility state separate from
lifecycle. Deleting a Play removes Play-owned records and Play-specific Plan
relationships, but it does not delete the independently reusable Team Plan,
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
unrecorded date knowledge. No lifecycle mutation owns Progress completion or an
automatic History event.

`notes` owns durable general Play context. V1 has no next-session reminder. The
existing `save_notes` column has no accepted V1 consumer and must not be exposed
accidentally as a second notes field. Its eventual retention, rename, reuse, or
removal belongs to the later database audit for the deferred bookmark concept.

Rule definitions and rule applications are different facts. Product-owned
predefined rule definitions are immutable. A user-authored rule definition is
reusable across the owner's Plays and Plans; its name, description, category,
and base configuration belong to that shared definition. The Play-rule or
Plan-rule relationship owns only attachment and supported local configuration.
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

The product contract is one focused linked Team Plan per play. The database can still represent this through play plan link and member link tables, but the user-facing play workflow should not encourage multiple competing team plans inside one play.

A Team Plan owns planned target Pokémon, notes, roles, and preferences.

The Plan experience also exclusively owns explicit Plan-member-to-Play-member
relationships and their management. Linking, relinking, unlinking, skipping,
target changes, and Plan-status decisions happen only in Plan. Team can consume
a derived comparison as read-only information and route the user back to Plan.

Actual Team composition never owns or rewrites those authored Plan facts. An
off-plan addition creates only the Play Pokémon and its normal Play-owned state;
it creates no Plan-member link and changes no Plan target. Only an explicit Plan
edit can change the intended lineup. Removing the focused relationship from a
Play unlinks the Plan without deleting the independently owned Plan.

Team lifecycle writes—including evolution, movement, replacement, and
retirement—update only Team and applicable History data. They do not refresh or
mutate Plan relationships or member state. Plan derives its comparison from the
latest Team state when the Plan experience is read.

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

Team-tab reached/target summaries must derive from those explicit member
relationships. Species or form similarity can support suggestions but does not
own or establish Plan progress.

During an active Play, an unresolved pending target may be presented as `Not
used yet`; after completion or abandonment it may be presented as `Not used`.
That lifecycle-aware wording is derived comparison state, not an implicit edit
to the reusable Team Plan or an inferred `skipped` write.

The Play Plan surface may additionally derive `In progress` for an explicitly
linked member still on the valid directed path, `Reached` for recorded exact
target evidence, and `Diverged` for a linked unresolved member that left the
path. `Skipped` remains an explicit Play-specific decision. An actual Pokémon
without a relationship is `Off-plan`; it is never paired to a target by slot or
similarity.

Editing a target, preference, role, move, note, or slot changes the reusable
Team Plan and may affect every Play linked to it. The Plan experience must
disclose that wider impact when applicable. Linking, relinking, unlinking,
skipping, and restoring remain specific to one Play-Plan relationship and never
edit or delete the actual Pokémon.

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
context. Corrections remain owned by Team and History.

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
