# History And Play Settings

This is the History And Play Settings part of the [Feature Contract](../feature-contract.md).

## Play Timeline And Journal

As built (v3), History (`/mainline/plays/[playId]/history`) lists every
moment the Play kept under month headings, newest or oldest first, with where
the Play began closing the list. Filters split it into Story (milestones and
the Hall of Fame), Team (every roster change; what Team History used to be),
Notes and Play (status changes and the rest). A search in front of the
filters matches each moment's kind, line and note, and the filter counts
follow it. `Add a note` keeps a note at the end of the timeline.
Highlights, editing, arranging and deleting entries below are accepted but
not built.

The Play Timeline is a user-facing History and journal, not a technical audit
log. Use one full-width journey timeline with a compact search, category,
Highlights, and order toolbar. The categories are All History, Story, Team, and
Memories filters rather than local navigation. Selecting an entry opens an
event-detail sheet; History does not keep a permanent selected-event panel.

Timeline entries focus on deliberately preserved events:

- important recorded Story moments and decisions;
- recorded Pokémon additions, evolutions, persistent form changes,
  retirements, replacements, and returns;
- current, remembered, final-Team, and Hall of Fame snapshots;
- manual memories and notes;
- explicitly recorded Play completion or abandonment;
- complete Pokédex scopes, Collectible groups, or similar major achievements
  only when the user chooses to preserve them.

Normal Pokédex and Collectible progress, ordinary Story completion, roster
movement and reorder, Pokémon-detail edits, corrections, Settings changes,
failed actions, and technical records never create timeline noise.

Each entry presents its event type, title, note preview, exact, approximate, or
unrecorded date, and event-time Pokémon context. Before/after actions preserve
both identities. Team snapshots freeze six Active positions with known
Pokémon, confirmed-empty, and not-recorded states plus the member details
supported by the snapshot contract. They never rely only on current Team rows.

`Add memory` asks for a title, date certainty, optional note, optional related
Pokémon that actually belonged to the Play, and a journey position only when
date knowledge cannot place it. It does not expose technical event types, a
Team-snapshot checkbox, or a Highlight checkbox. Completed, abandoned, and
imported Plays use `Add remembered event`, default away from today, and offer
`Save and add another`; V1 has no separate bulk History importer.

One canonical journey sequence orders dated and undated events. Current events
append; known historical dates propose a position; unknown dates require a
position when other entries exist. Newest first is the default presentation,
with oldest first available for reading the adventure from the beginning.
`Arrange timeline` provides move-up, move-down, and keyboard ordering. Database
creation time never determines perceived recency.

Pinned entries are presented as `Highlights`. Highlighting does not move or
duplicate an entry and does not replace effective recency in Overview.

Manual entries may edit their narrative, date certainty, related Pokémon, and
journey position. Structured Story and Team entries may edit narrative and
ordering fields without rewriting their owning fact. A separate guarded
`Correct recorded details` workflow changes event-time identities or snapshot
evidence without rewriting current Team, Story, Progress, or Plan state.

Deleting History removes the event and its attached historical refs and
snapshot after a consequence-aware confirmation. It never reverses the Team or
Story action that originally created the event.

## Play Settings

As built (v3), Play Settings is one quiet form in four cards, with a side
list of them on wide screens: General (name, trainer, start day, playtime and
status; a status change also joins History), Tracking (expansions you own;
Story, the Pokédex mode and Collectibles show where their settings will go),
Challenge rules (the rules you can attach, yours and Voydex's catalogue once
seeded) and Archive or delete (archive is reversible; delete asks first and
removes the Play and everything recorded in it). Each card saves on its own
from a footer that appears once it has unsaved changes. Turning an expansion
off hides it; nothing recorded is deleted. The accepted contract below
remains the target where it goes further.

Play Settings is a low-frequency configuration workspace rather than another
dashboard. It uses General, Completion & Tracking, Rules & Tags, and Play Status
& Management sections. Desktop presents a compact local section rail beside one
focused section; narrow screens use an accessible section selector. These
sections do not add more Play Hub tabs or require separate V1 routes.

Save one section at a time with explicit `Cancel` and `Save changes` actions
when it becomes dirty. Warn before leaving with unsaved changes, retain entered
values after recoverable failure, and keep lifecycle, archive, restore, and
delete outside a global settings save.

The owning game and version scope are read-only in V1. General edits the
required Play name, optional trainer, game-compatible or custom platform,
started and completed date knowledge, cumulative playtime, and one durable
Play-notes field. It does not expose a second notes field or the deferred
next-session bookmark.

Started and completed dates support Exact, Approximate, or `Not recorded`
certainty. Approximate dates preserve a month/year or year rather than inventing
a day. A current Completed state presents completion-date knowledge as current;
a value preserved through normal Reopen is presented as `Previously completed`.
Started date appears only after starting. General corrections do not change
lifecycle, decide that completion was false, or create History.
Rules define gameplay constraints while Tags organize Plays for filtering;
descriptive rules must not imply automated enforcement. Applied rules show
their category, current Play-specific configuration, and whether `Voydex can
check this` or the rule is `Recorded only`. Checkable V1 rules produce
explainable warnings and never hard-block Team or Plan actions.

Predefined rule definitions are immutable. User-authored rules are reusable
across Plays and Plans, but applying, configuring, or detaching one remains
local to the current owner. V1 Play Settings does not rename or delete an
existing shared rule definition; detaching it from a Play never deletes it.
Rule changes do not create History. The shipped app catalogue identifies
checkable predefined rules and validates their configuration, while custom
rules remain `Recorded only`.

Tags use searchable multi-select and wrapping text-labelled chips with optional
accessible color tokens. Tags affect organization and filtering only. Removing
one from a Play detaches it. Renaming or deleting reusable Tags across Plays,
Plans, and Play Pokémon is deferred beyond the V1 Play Settings scope.

Stage new custom rules or tags, attachments, and Play-specific configuration
until the explicit section save. Save the complete Rules & Tags result
atomically, preserve staged choices after failure, and do not leave orphan
definitions after Cancel or a partial write.

The persistent Play Header owns routine named status transitions. Play Status &
Management does not duplicate them; it owns current-status explanation,
`Correct recorded status`, Archive, Restore, and Delete. Status does not freeze
the Play, and marking it completed does not mark Progress as complete. Pause and
resume remain quiet. Completion or abandonment may hand off to final-Team or
History recording after success, but the status change does not automatically
create History.

Normal Reopen preserves any recorded completion date as historical knowledge.
Only the distinct consequence-aware correction route declares that completion
was recorded by mistake and clears the false date; neither path rewrites
Progress or creates History.

Start and Mark completed use date-aware sheets with editable Exact Today
defaults. Historical `Record as completed` defaults to `Not recorded` and never
invents Today. Pause, Resume, and Reopen are immediate; Abandon requires concise
confirmation but no abandonment date. When completion Progress is incomplete
or unknown, explain that the action changes status only and do not block it.
After success, offer at most one optional handoff: `Record final team` when
appropriate, otherwise `Add a memory`.

Archive is reversible and separate from lifecycle. Delete requires typed-name
confirmation, removes Play-owned Team, Progress, and History data, and does not
delete an independently reusable Team Plan.

Completion & Tracking leads with a readable current-goal summary, completion
under that definition when known, and a route back to the game-aware recommended
goal. Optional-content scopes control available game content without silently
making every associated tracker contribute.

Main Story is always tracked and contributes. Applicable Postgame and
optional-content Story paths, each meaningful named Pokédex, and each supported
Collectible group use one of three explicit states:

- `Counts toward completion`: visible, usable, and contributing;
- `Track only`: visible and usable without affecting overall completion;
- `Not tracked`: absent from normal Progress views while recorded data remains
  preserved.

Browse-only Pokédex subsections inherit their aggregate scope. Each tracked
Pokédex can require source-required entries only or include supported optional
entries or honest named groups such as Mythical Pokémon. Species progress
remains shared across overlapping Pokédexes. Games without supported
Collectibles omit that area.

Before one atomic save, preview the goal before and after, visibility and
contribution changes, optional-content dependencies, the recalculated percentage
when knowable, and preserved data. Unknown imported progress remains `Progress
not recorded`. Child tracks normalize inside Story, Pokédex, or Collectibles,
then contributing top-level groups remain equally weighted.
