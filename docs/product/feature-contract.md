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

## V1 Loading Pattern

Initial asynchronous page reads use one accessible page-level Spinner inside
the persistent application shell. V1 does not use Skeleton placeholders. When
valid page content already exists, preserve it and place pending Spinner
feedback on the responsible control or section. Loading never substitutes for
empty, partial, unavailable, or error behavior.

## Primary App Areas

### Mainline Home

Mainline Home (`/mainline`) is where a signed-in trainer lands and what the
"V" tile opens. It is for resuming an adventure, not for figures (those belong
to Statistics), and it owns no mutation of its own.

- **With Plays:** a meadow band with the greeting, the shelf of your Plays
  (covers in recent order, each with its lead Pokémon; the dashed tile starts
  a new Play), the current Play's team standing on the meadow in its game's
  colour, one line on where it stands, and Continue. Picking another cover
  (`?play=`) switches the meadow, the line and the latest moments. Latest
  moments list the current Play's last five records as History draws them;
  a Play with nothing recorded shows where it began.
- **With one brand-new Play:** its first partners wait on the meadow; tapping
  one is the Play's own partner choice, with Undo in the toast.
- **With no Plays:** the game picker is the page. Pick a game, tap a partner
  and Start creates the Play at once (named "New Journey" with your trainer
  name; Play Settings change the rest).
- A game and partner picked on Start a Play before signing up are offered
  once, to start straight away or put aside.

The shelf reads as "last opened first" in v3; until Plays record when they
were last opened, it uses the latest update.

### Plays

Plays are user-owned playthroughs.

The Plays area should support:

- Listing all plays, with Search, Game, Generation, and Sort kept in the URL;
  status, tags, rules, and completion-state filters are later additions.
- Creating a play through New Play, from Plays, Home or a Codex game page.
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

As built, an archived Play is hidden from Home and the Plays list. Plays
shows `Archived · N` when there are any, opening an Archived list where each
Play has Restore; an archived Play still opens (from that list or
Collection) with an "Archived" note and Restore over its pages, and its
Settings offers Restore in place of Archive.

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

New Play has three short steps on one card. Inside Mainline every New Play
button opens it as a dialog over the current page (the address and the bar's
active link don't change). Its games, first partners and expansions are
static reference data, read once on the server through a cached reader and
handed to Mainline with its layout, so it always opens complete. From outside
Mainline (the Codex's "Start a {Version} Play", Start a Play signed in) a
link to `/mainline?new=<game>` (`?new=1` for no game) opens it over Home on
that game, and the parameter leaves the address once it is open. Either way: the game on the cover shelf, the partner on the meadow (or
choose later), then the Play's name, trainer name and what it tracks
(expansions you own; Story, the Pokédex mode, Collectibles and challenge rules
show where their settings will go). Start writes the Play and opens it. The
partner must be one the game offers; it joins slot 1 and is recorded as the
game's first partner-choice milestone. Games that hand you your partner
(Yellow, the Let's Go games) have no such choice. Exact Team members, Story
position, Pokédex and Collectible progress, and History belong inside the
created Play rather than in the creation flow.

The accepted game-aware completion-goal step (counts, track only, not
tracked per scope) is not built yet.

Play-specific settings should control:

- which optional-content scopes, such as DLC, are enabled;
- whether applicable Postgame and optional-content Story paths count, are
  track-only, or are not tracked;
- whether each meaningful named Pokédex counts, is track-only, or is not
  tracked;
- whether supported optional Pokédex entries or groups count within a tracked
  scope;
- whether each supported Collectible group counts, is track-only, or is not
  tracked.

Main Story remains part of the base Play. Completion percentages are derived
from Play settings, selected optional content, and recorded progress instead of
stored as source-of-truth values. Disabling a scope preserves its existing
progress.

### Play Hub

The Play Hub is the central workspace for a play.

The Play Header owns an adaptive, Play-wide Next Step action region. On desktop
it sits to the right of cover art and Play identity; on smaller screens it
stacks within the same header before the tabs. Do not repeat it as a separate
Overview banner. It shows one primary action and no more than two secondary
actions based on lifecycle and recorded data. An imported playing or paused
Play begins with `Add current team`, then promotes Story position and configured
progress as earlier actions are completed. Once enough baseline context exists,
the region evolves into a normal Play-wide action or compact utilities. Actions
specific to one Hub area remain inside that area.

Routine Play status transitions also remain available from the persistent
Header. Use contextual actions rather than a raw status dropdown: Start or
record a historical completion from Not started; Pause, Complete, or Abandon
from Playing; Resume, Complete, or Abandon from Paused; and Reopen from
Completed or Abandoned. If the adaptive Next Step promotes the same status
action, reuse or emphasize that action rather than showing a duplicate primary
CTA. Date and confirmation behavior is shared across placements.

Reopening a Completed Play is continuation, not correction. Preserve any
recorded completion date and show it as `Previously completed on ...`; do not
rewrite Progress, completion settings, or History. A completion recorded by
mistake is handled through `Correct recorded status`, which explicitly clears
the false completion date.

Start and Mark completed use focused date confirmation. Start defaults the
started date to Exact Today; Mark completed defaults the completion date to
Exact Today. Both allow another Exact date, Approximate knowledge, or `Not
recorded`. Historical `Record as completed` defaults to `Not recorded` rather
than Today and accepts optional started-date knowledge. Pause, Resume, and
Reopen are quiet immediate actions. Abandon uses a concise confirmation and
creates no abandonment date. Every transition is atomic and leaves Progress
and History unchanged.

The Play Header center keeps a stable hierarchy: Play name; lifecycle and game;
available region and generation context; conditional trainer, date, and
playtime facts; then a concise completion goal/state and defining challenge
rules. Do not show empty metadata placeholders. Completion may show zero for a
genuinely new Play, but an imported Play with uninitialized progress must show
`Progress not recorded` instead of a misleading percentage. Team counts,
detailed Pokedex counts, general tags, notes, and platform remain in Overview or
their owning detail and Settings surfaces.

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
  Recent History in three permanent cards. Journey Status and Progress Summary
  share one card while retaining distinct qualitative and numeric regions.
- Linked Team Plan context belongs to the Team tab rather than Overview. Keep
  exactly three permanent Overview cards whether or not a Plan is linked.
- Overview remains read-first. Section actions route to or invoke the canonical
  owning workflow rather than implementing a second editor.
- Journey Status shows the current or furthest known Story milestone and the
  next applicable objective when relevant. Numeric Story completion remains in
  the adjacent Progress Summary region rather than being repeated in both.
- Current Team always preserves one fixed six-slot layout. Occupied,
  confirmed-empty, and not-recorded slots use identical component geometry and
  explicit accessible state labels; only their portrait and text content
  change.
- Current Team shows the active lineup only, with a compact positive reserve
  count. Linked-Plan comparison belongs to Team. It does not use an
  Active/Reserve toggle. Recorded members open their Play-owned Team experience
  rather than navigating directly to generic reference detail.
- Team Health belongs in the Team tab until the app has a real analysis model.
- Progress Summary uses only the stable Story, Pokédex, and Collectibles groups.
  Story is always present; Pokédex and Collectibles render only when applicable
  and enabled. Each group shows a progress bar and visible normalized
  percentage, while named child tracks and native counts remain in Progress.
  Each visible row routes directly to its owning Story, Pokédex, or
  Collectibles view; Overview is the only cross-area Progress summary.
- Normalize each child track from its native units, average contributing child
  tracks equally within a group, and average enabled goal groups equally for
  the Play-wide completion result. Tracked-only groups do not affect overall
  completion, and unknown required progress is never treated as zero.
- Recent History shows only the latest three to five meaningful events. Routine
  Pokédex or Collectible updates, corrections, settings changes, and technical
  audit entries do not create preview noise.
- Recent History preserves effective or manual ordering and explicitly labels
  approximate or unknown dates. An imported Play with no Voydex history must
  not imply that nothing happened in the original save.
- Overview previews should summarize real workflows and mature tabs. Do not add
  placeholder cards just to fill space.

As built (v3): the next objective's main button records it in place (v3's
Record): one tap, no form, the moment joins History, the current team is saved
with it where the milestone keeps snapshots, the stamp slaps once and the
toast offers Undo, which marks it incomplete again (the database refuses if
something recorded since depends on it). A choice milestone opens Story's
form instead. `Add a note` keeps a journal note in History. A brand-new Play
opens on its partner choice (the pick becomes your sticker, with Undo) and
three first steps: choose your partner, add the Pokémon you catch, mark your
Pokédex.

### Team Management

Each play has a managed Pokémon roster.

The current active/reserve roster should be capped to prevent unbounded team growth. The working product limit is 6 active Pokémon plus 6 reserve Pokémon.

The Team page should support:

- Active and reserve Pokémon.
- Levels, forms, abilities, natures, gender, shiny state, moves, and notes.
- Team strengths and weaknesses.
- Pokémon lifecycle actions: add, evolve, change persistent form, replace,
  retire, and return from Past Members.
- Quiet current-roster move, swap, and reorder controls.
- Guarded current-record correction and deletion.
- Correction-only edits versus in-game recorded changes.
- Real-time Pokémon reuse validation when adding, replacing, or evolving a Pokémon.

Retired and replaced Pokémon remain complete Past Member records and do not
count toward the current roster limit. The named `Retire` and replacement
actions also preserve the change in History; a correction does not.

Roster slots:

- Active Pokémon use slots 1 to 6.
- Reserve Pokémon use slots 7 to 12.
- Retired and replaced Pokémon have no current roster slot.

The accepted desktop Team workspace uses a list-detail structure. One compact
left-side roster list keeps all six Active and six Reserve positions visible,
including explicit `Empty slot` rows. The initial baseline has no Reserve
summary or disclosure state. Add, move, replace, and correction workflows still
expose exact Reserve destinations when position choice matters. Selecting an occupied row
updates a larger Play-owned Pokémon detail on the right. Roster portraits remain
intentionally smaller than selected-member artwork so the source and result of
selection are immediately distinguishable. The Roster holds only the roster
and the selected detail; Plan and Analysis are its sibling views in the Team
menu. A link may name the member to open on
(`/mainline/plays/[playId]/team?pokemon=[playPokemonId]`, as an Overview
sticker does). On narrow screens, member selection opens a focused Team detail
sheet with a clear return to the roster.

When a roster or slot workflow exposes a detailed position, all twelve possible
positions use the same compact row geometry across occupied, selected,
confirmed-empty, not-recorded, pending, and unavailable states. An
occupied row is limited to slot, portrait, nickname or species and relevant
form identity, level, types, and the smallest necessary state cues. Selection
uses a visible non-color cue without displacing the row's stable overflow
action. Confirmed-empty positions open an add flow targeted to that slot;
not-recorded positions first let the user add a remembered Pokémon or confirm
that the slot is empty.

The row target and its sibling overflow action must both be keyboard operable.
Explicit move and reorder controls provide the complete workflow; drag and drop
may only supplement them. Roster counts distinguish confirmed empty capacity
from a Team that is only partially recorded.

One Move workflow covers current-roster placement. Choosing a confirmed-empty
slot moves the selected member; choosing an occupied slot swaps the two members.
A not-recorded slot is never available capacity. Move, swap, and reorder succeed
atomically, remain quiet in History, and never write Plan data. The V1 path for
preserving a meaningful lineup is `Record Team moment`.

The selected-Pokémon detail is an identity-first Play member record. It leads
with larger correct-form artwork, nickname and species identity, shiny state,
Active or Reserve position, level, types, and recorded held item. Current
setup, origin and personal facts, four ordered move positions, notes, and
contextual member actions follow in progressive groups. Missing imported facts
remain explicitly unrecorded, and fields unsupported by the game are omitted.

The panel does not duplicate generic species reference, Team-wide analysis,
complete member history, or complete Plan detail. Those route to Codex, Team
Analysis, History, and Plan respectively. Current HP, battle status, and current
PP are transient battle values and are not part of the V1 Play record. Routine
detail edits update current state without timeline noise; lifecycle changes
that affect History or Collection distinguish corrections from recorded
in-game events. V1 does not add a generic per-edit History option.

Every member has a concrete form identity, but form selection and form
changeability are separate. Fixed identities—including regional, encounter-,
evolution-, size-, gender-, or authenticity-derived forms that cannot transform
in the selected game—are chosen during Add, import, or correction and expose no
`Change form` action. Hisuian Growlithe cannot become Kantonian Growlithe.

`Change form` is a dedicated recorded lifecycle flow only when the same
individual has a game- and content-valid directed transition from its current
form to another persistent, team-selectable form. Rotom appliance changes are
the canonical example. Do not infer this from shared species or availability,
and exclude battle-only transformations and cosmetic-only variants. Preserve
the same member and personal details, resolve ability and required held-item
consequences safely, keep moves until the user reviews them, and store
before/after event-time identity. A wrongly entered form uses `Correct record`
without History.

`Replace` puts an incoming Pokémon into the selected current slot. When an
Active member is displaced and Reserve has confirmed capacity, recommend moving
the outgoing member to a chosen Reserve position; that member remains current
and the incoming addition is the recorded event. Otherwise the outgoing member
moves to Past Members as `Replaced`, and one event preserves both identities.
`Retire` moves a current member to Past Members without adding a replacement.
Neither flow discards a member, assumes unknown capacity, or changes Plan.

`Past members (N)` is a secondary Team-owned roster view for uncapped retired
and replaced Play Pokémon. It is not another Hub tab and is not the event-only
History view. Selecting a past member reuses member detail with past-state copy,
member History, correction, guarded deletion, and `Return to Team`. Return
reactivates the same member in one confirmed-empty current slot and records the
return. A full roster routes through Replace with that member preselected and
records one compound return-and-replacement moment rather than two competing
History entries.

`Correct record` repairs a wrongly entered identity or roster placement without
creating lifecycle History or false Collection evidence. Existing event-time
History remains unchanged and is corrected separately in History. The
destructive overflow action `Delete Pokémon record` is reserved for wholly
mistaken or duplicate records. It preserves existing History evidence. Because
Plan comparison has no persisted member association, deletion simply removes
that member from future comparison; it never rewrites the authored Plan.

As built: **Add Pokémon** is a side sheet (a bottom sheet on phones), opened
from the Roster head or `?add=` (the Codex's Add to a Play presets the
species and form). Pick a species of the Play's Pokédexes (base game and the
expansions it tracks) by name or number, then its nickname, level and team
or reserve; the server takes the first open slot, the moment joins History
and the toast offers Undo. **Edit Pokémon** is the same kind of sheet: Who,
Where, Build and Met, then Review changes before Save, offering only what the
game records. Evolve and Change form record their moment; Replace (picking
the incoming Pokémon in the Add sheet), Retire and Delete record act from its
head. Moving between team and reserve, or to another slot, waits on an atomic
roster-placement operation.

Team Analysis is the Team-owned review view. Its final metrics, calculation
strategy and evidence disclosure are deliberately deferred until the product
can define a reliable and explainable review model; do not replace its
unresolved strategy with invented matchup, balance, coverage, role, damage, or
competitive claims. Its Overall reading covers defensive matchups and recorded
damaging-move coverage. **Story matchups** (`?reading=story`) lists the
Play's Gym Leader and Champion battles by chapter: a battle won keeps who you
faced and the team saved with it; a battle ahead reads your active team
against the opponent's specialty type. The verdict, their team and the level
comparison wait for opponent party data.

There is no separate Team History. Team events (additions, evolutions, form
changes, replacements, retirements, removals and returns) are History's Team
filter, with event-time Pokémon identity.

`Plan` in the Team menu opens the comparison with the Plan this Play follows;
the Roster carries no Plan card. The comparison is computed from current
Play-owned records and never writes Plan progress. A Play with no Plan shows
`No Plan yet` with `Plan a team` (the Team Planner on the Play's version
group) and `Follow a Plan`, a menu of your Plans for this game; picking one
links it (or re-points the existing link) and the comparison redraws.

`Record Team moment` is a dedicated lower-emphasis Team action. It opens a compact dialog or mobile sheet with a read-only
six-position Active-Team preview, required title, exact, approximate, or unknown
date, and optional short note. V1 snapshots the recorded Active lineup only;
Reserve is excluded and unknown positions remain unknown. Completed or
abandoned Plays use final or remembered language, while a Play with no recorded
Active members routes to Team recording instead of saving an empty snapshot.
The History event and event-time snapshot appear only after the write succeeds.

Recorded in-game team changes should create timeline events with enough Pokémon identity data to preserve usage history. For example, if Squirtle evolves into Wartortle and then Blastoise, Collection and reuse checks should still know that Squirtle, Wartortle, and Blastoise were used.

Correction-only edits should update the current Pokémon record without creating timeline history.

### Progress Navigation And Ownership

Progress contains three focused route-backed views in stable order: Story,
Pokédex, and Collectibles. It has no separate Overall child view. The Play
Overview Progress Summary owns the cross-area normalized summary and routes
each visible row directly to its detailed Progress view. Settings owns tracking,
completion contribution, and optional-content scope.

Story is always present and is the default Progress destination. Pokédex and
Collectibles appear only when supported by the selected game and enabled by the
Play's tracking configuration. A supported but disabled destination may remain
visible as unavailable with a Settings handoff; a concept unsupported by the
game is omitted.

Every focused view owns its native summary, next step, detailed records, and
updates. Meaningful Story events belong in History; routine Pokédex and
Collectible updates remain quiet. Opening any child keeps Progress active and
uses the compound label `Progress - Story`, `Progress - Pokédex`, or
`Progress - Collectibles`. The Progress parent route opens Story, and the
attached Progress menu switches directly between the three siblings.

Overall completion remains derived only when every contributing area has enough
recorded context. Do not add Story milestones, Pokédex species, and Collectible
units into a cross-category raw count. Imported missing progress remains `Not
recorded`, not zero.

### Story Progression

Story progression is game/version-group-specific milestone tracking.

Story opens inside the Progress context as an ordered milestone list with a
larger selected-milestone detail region. Its summary shows the current or
furthest recorded position, the next applicable objective, and normalized Story
completion. Games with distinct Main Story, Postgame, DLC, or parallel paths
may expose a compact game-aware content-scope switcher in the milestone Card
header; games without separately authored scopes should retain one simple list.

Milestone rows provide completion state, identity, concise location or context,
type, and restrained decision or snapshot cues. The selected detail owns the
description, prerequisites, recorded decision, snapshot availability, notes,
and actions. Narrow screens open that detail in a focused view or sheet and
preserve a clear return to the list.

Milestone display order must not be treated as dependency order. Explicit
prerequisite relationships determine valid dependencies, next-objective
guidance, and historical catch-up suggestions. Nonlinear games should not
receive a universal `Complete next` action that invents a linear path.

Important milestones can optionally support team snapshots:

- Gym leaders.
- Rival battles.
- Elite Four.
- Champion.
- Major bosses.
- Final story milestones.

Snapshots must be optional. Users logging already-completed games should be able to bulk-complete milestones without being forced to attach snapshots.

Selecting a milestone changes only its detail. `Mark complete` is the routine
action and does not create History. When required or story-unlock prerequisites
are missing, show the exact dependency set and recommend completing it with the
target; suggested prerequisites remain optional, and display order never
substitutes for dependency data. Decisions may remain `Not recorded` for
forgotten or imported history.

Important milestones may separately offer `Record snapshot`. That deliberate
path creates one History event with the current Active Team snapshot. Recording
it again replaces that event's snapshot rather than creating another event.
Ordinary completion does neither. `Mark incomplete` is an explicit correction:
derive every currently completed transitive dependent connected through
`required` or `story-unlock`, preview the complete affected milestone and
recorded-data set, and require one confirmation. One atomic write then removes
those completion rows and their milestone-owned notes, decisions, History
events, Team snapshots, and snapshot moves. Suggested dependencies and
unrelated branches remain unchanged. The database must recompute the impact and
abort a stale confirmation rather than delete a set the user did not review.
Focused milestone editing uses a compact Dialog on desktop and a bottom Sheet
on narrow Play layouts. `Mark incomplete` uses a desktop confirmation Alert
Dialog before the correction is submitted.

Bulk completion is a separate imported-save and historical-catch-up workflow,
not part of the routine milestone action. The player chooses the furthest known
milestone for each applicable Story path, and the app computes the transitive
required and story-unlock prerequisite closure. Before one atomic write, preview
which milestones are already complete, will complete, remain excluded, or have
an unrecorded decision. Optional and suggested milestones stay excluded by
default, and decisions are never guessed.

Bulk completion creates no History events or snapshots in V1. It records
completion with unknown dates by default rather than stamping historical
milestones with the current date. Any failure leaves the entire reviewed set
unchanged.

Story progress rows should track milestone completion. If a milestone has a player decision, such as a starter choice or fossil choice, the selected option should be stored separately from simple completion.

Absence of a progress row should mean incomplete by default. The app should not need to pre-create every possible progress row for every play.

### Play Timeline And Journal

As built (v3), History (`/mainline/plays/[playId]/history`) lists every
moment the Play kept under month headings, newest or oldest first, with where
the Play began closing the list. Filters split it into Story (milestones and
the Hall of Fame), Team (every roster change; what Team History used to be),
Notes and Play (status changes and the rest). `Add a note` keeps a journal
note at the end of the timeline. Search, Highlights, editing, arranging and
deleting entries below are accepted but not built.

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
- manual memories and journal notes;
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

### Play Settings

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

### Pokedex Progress

Pokedex progress is tracked per play.

Product rules:

- Completion is species-level.
- Seen/caught states are supported.
- Optional DLC Pokedex scopes are controlled by play settings.
- Optional Pokedex scopes are controlled by play settings.
- Optional Pokedex entries are controlled by play settings.

Pokedex progress is stored per play and species. Reference Pokedex definitions and entries decide which species count for each game/content scope, including optional DLC, National, and special Pokedex scopes.

The focused tracker presents one named Pokédex at a time and keeps its selector
as a prominent orientation element. Do not merge overlapping Pokédexes into one
raw count. Because state is stored per Play and species, changing one species
updates every applicable Pokédex view containing it.

Use one purpose-built scope overview band for orientation. When multiple named
completion-relevant Pokédexes apply, use the shared Navigation Menu at content
width, preserve selection in the route, close it after selection, and show each
choice’s name, entry count, and Pokédex kind without adding search.
Browse-only local Pokédexes covered by the active aggregate scope do not appear
as peer destinations. Expose them through an optional Select control in the
entry-filter row; filtering preserves the parent scope’s numbering, summary,
route, and completion denominator. An adjacent information action explains
that these local scopes do not count separately. When only one independent
scope applies, show its name and entry count without an inactive menu or
redundant kind metadata. Keep orientation
and the continuous progress sentence on one responsive row, followed by one
full-width progress rail. Do not add a decorative icon, eyebrow label, internal
divider, or `All Pokédexes` pseudo-scope.

For the active Pokédex, show one continuous
`Caught · Seen · total · percentage` progress readout with the normalized
percentage inline in the same summary sentence. Completion-relevant scopes use
only included entries as their denominator and label the percentage
`Completed`. A browse-only local filter never replaces or recalculates the
aggregate completion summary. Use primary emphasis for the
Caught number, the established Seen-species secondary color for the Seen
number, and normal foreground for the total and percentage. Caught is the only
bold metric; Seen, total, and percentage use regular weight above a slightly
thicker-than-default progress rail. Do not divide those values into Story-like
metric tiles. Support search, state
and required/optional filters, Missing filtering, fixed Pokédex-number order,
and responsive Grid/List views using the established shared control sizes and
Button Group treatment. Keep Search and filters in the browse-control row, and
place the compact Seen/Caught mode and Grid/List groups together as actions in
the entries Card header. Prefix the Seen/Caught group with the non-interactive
label `Mark mode`.
Grid is the desktop default and presents five or six compact species entries
per row at wide Play widths. List is the narrow-screen default and is a
separate flat, full-bleed divided data list rather than a horizontal Grid Card.
It uses the entries section's full content width without a nested Card border,
radius, or side gutters. Each row shows number, framed portrait, name,
exact-generation types with visible names, explicit Seen/Caught status, and
the separate Codex action. Keep Active Team membership out of this browser
because it belongs to the Team workflow. Spread these desktop columns across
the available width rather than clustering metadata at the right. Seen and Caught rows use their matching
translucent state background without a state border color. Both presentations
use the shared actionable-row hover surface. A shared
`Seen`/`Caught` Button Group chooses the action applied by selecting a species
Card. Selecting Caught always includes Seen. Toggling off the active Caught or
Seen state returns the species directly to Missing. Otherwise, the selected
mark type overrides the Card's current state: Seen changes Caught to Seen, and
Caught changes Seen to Caught.
Absence stays an internal `Missing` state represented by the neutral base Card;
it may be filtered but is not a visible Card status or update action. Seen uses
a stronger secondary surface and Eye icon, while Caught uses the established
primary selected surface and Poké Ball icon. Each shadowless Grid Card keeps one
bottom-aligned footer with number and name at the left and the separate Codex
action at bottom-right, while the state icon stays at top-right; every
List row keeps the same action in its trailing column, so navigation never
triggers a progress update. Keep the filter toolbar stretched across the
available width, let search absorb width changes, and show the visible-entry
count immediately beneath it.

For an initialized known-zero scope, absence of a progress row means the species
is neither Seen nor Caught. For an imported scope with unknown coverage,
knowledge state must keep absence as `Not recorded` until the player initializes
or deliberately reconciles the scope.

`Catch up Pokédex` supports `Record what I know` and a reviewed `Completed this
Pokédex` proposal. Normal `Mark multiple` selects Seen or Caught and exact
species, previews every change, and applies the batch atomically. A future
reviewed clear-progress action may return exact species to the internal absence
state without exposing `Missing` as a routine status option. Do not accept only
an overall in-game count. Pokédex progress never creates History.

### Collectibles

Collectibles are game-specific groups with interactions determined by their
tracking definition. The focused area uses a family-grouped list-detail
workspace on desktop and a group-list-to-focused-detail flow on narrow screens.
Hide a redundant group navigator when only one group applies.

Show normalized page-level completion across active groups. Each selected group
owns its native collected/total and remaining counts, percentage, completion
context, and tracker. Play settings own which supported groups contribute.

Identifiable-entry groups use searchable and location-filterable rows with a
direct collected control. They support canonical-order and location sorting.
Group-level inclusion is not repeated on every entry. Routine changes never
create timeline events.

Imported progress supports exact-entry recording, an honest count-only total,
or a reviewed complete-group action. Count-only state must not assign arbitrary
entry identities or claim which locations are missing. When exact entries are
also known, distinguish the reported total from the identified subset and
require reconciliation before fully exact tracking. Quantity-only definitions
use a native count tracker without requiring fabricated entries.

Normal `Mark multiple` chooses Collected or Not collected, selects exact
entries, previews the change set, and applies it atomically. Avoid an immediate
filter-dependent `Mark visible collected` action.

Within initialized exact tracking, absence of an entry-progress row means
uncollected. Imported uninitialized or count-only groups preserve `Not recorded`
semantics through their group knowledge state. Collectible completion is
derived from selected game/optional-content scopes, per-Play group selection,
the group's tracking mode, and recorded progress.

### Plans

Team plans are separate from plays.

As built (v3):

- **Team Planner** (`/mainline/plans/new`, a saved Plan at
  `/mainline/plans/[planId]`, `?vg=` for the version group): pick a version
  group on the cover shelf menu, fill six slots from its Pokédexes (one range
  per Pokédex, search, Fully evolved only, type dots), drag to swap, Random
  and Clear, and open a slot to set its role, note and build (ability, nature,
  gender and held item where the version group has them, four moves it
  learns). Team check says whether the team can be built in one save and
  reads its defensive matchups from its types. Save writes the Plan; a new
  Plan is kept in this browser until saved. Share puts the version group, six
  Pokémon and roles in a link's hash; importing opens it as a new unsaved
  Plan.
- **My Plans** (`/mainline/plans`): every Plan as a card with its game, six
  Pokémon and who follows it, filtered by status and game and sorted by
  update, name or game; New Plan opens the Planner blank.
- A Plan is stored for one game, the version group's first, until Plans
  store a version preference. Plan Detail, Create Play from a Plan, cloning,
  lifecycle and the Game List below are accepted but not built.

The V1 standalone Plans family has three responsibilities:

- Plans Hub contains two obvious URL-backed sibling views: Team Plans, the
  default reusable-plan library, and Game List, the independent game-intent
  library. Each keeps its own controls and results rather than mixing records
  into one feed.
- Create Plan collects only game, editable suggested name, applicable optional
  content, and source context supplied by Codex or a Play. It creates a Draft
  and opens Plan Detail rather than asking the user to build a team in a modal.
- Plan Detail owns reusable target authoring, setup, checks, lifecycle, Play
  usage, and Create Play from Plan. Team owns the contextual automatic
  comparison for one linked Play and provides its compact Play-level entry.

Plans Hub summarizes game identity, lifecycle, up to six ordered target
positions, target count, relevant optional-content or
organization context, updated time, and linked-Play count. Archived Plans are
excluded from current work by default but remain readable through explicit
status filtering. Normal results open Plan Detail and do not expose inline
member editing, delete, lifecycle mutation, adherence, or Team scoring.

Plans reuse the Plays family where the task is equivalent: the shared centered
canvas, plain heading and one Create action, visible Search/Status/Game/Sort,
More filters with URL-backed chips, explicit Load more, and one cover-led result
per row in a responsive single-column library. Plan rows substitute lifecycle,
up to six ordered target positions, capacity/check context, organization,
usage, and
recency for Play Journey, actual Team, and Progress. Create Plan reuses Create
Play's focused contextual surface but remains one step. Plan Detail reuses the
responsive cover/identity/action Header structure without adding Play Hub tabs.

Game List records one explicit intent and optional note per game. It supports
Want to Play, Planned, Playing, Completed, and Skipped; game search; status and
generation filtering; and recent-update, name, generation, or status sorting.
Rows show game identity, intent, note preview, updated time, and quiet Plan/Play
counts for navigation. They may start canonical Create Plan or Create Play
flows without changing intent automatically.

Plans should support:

- Planning a team before a play exists.
- Planning target/final Pokémon.
- Planning optional content scope such as DLC availability.
- Required target forms plus optional roles, notes, abilities, natures, held
  items, gender, and moves.
- Creating a play from a plan.
- Keeping the plan as a persistent reference after a play is created.

Creating a play from a plan should not auto-fill the active team. The play starts with an empty current team, and the user can add planned Pokémon into the play when they are actually obtained.

Creating a Play from a Plan keeps the game and source Plan visible in the
accepted Create Play flow. The Plan's optional-content scope prefills the
Play's enabled content; the normal game-aware Completion Goal recommendation
then decides how that content participates unless the user customizes it.
Attached Plan Rules are copied as the Play's initial Rules. Plan Tags remain
Plan organization and are not copied. These values become independently
Play-owned after creation: later Plan edits do not silently synchronize into
the Play, and later Play Settings edits do not rewrite the Plan.

The Play, its initial settings, copied content and Rule links, and focused Plan
link are created atomically. The Plan
remains reusable, and the actual Active and Reserve Team positions remain
empty. A failed operation must leave no partial Play or Plan link.

The authored Plan is never changed automatically to match the actual Team.
Adding an unplanned Pokémon changes only Play-owned Team state. Plan targets,
forms, roles, preferences, and notes change only through an explicit Plan edit;
unlinking a Plan from a Play does not delete the standalone Plan.

A Plan contains one to six ordered targets. Species and form are
required. Ability, nature, held item, gender, and up to four moves are optional
constraints; level and ball are not part of V1 comparison. There are no
alternate targets or manually maintained Plan-member-to-Play-member links.

A play has one focused linked Team Plan. The comparison is computed at read
time and never writes progress state. Matching is deterministic and one-to-one:
exact species/form wins first, then alternate form, earlier or later evolution,
and another branch in the same evolution family. Active and Reserve members
receive full build comparison. Retired and replaced records establish only
that the planned family was previously used; hard-deleted members are absent.

The contextual Team Plan view remains inside the active Team tab and presents a
compact `planned Pokémon → computed status → matched Play Pokémon` list.
On desktop, selecting a row updates a persistent comparison panel beside the
list. Tablet and phone open the same focused comparison in a sheet. Accepted
statuses are `Exact match`, `Build differs`, `Alternate form`, `In progress`,
`Evolved beyond plan`, `Branched evolution`, `Previously used · retired`,
`Previously used · replaced`, and `Not found`. Unplanned members are summarized
only; they are not displayed as inspectable comparison rows.

Editing a reusable Plan outside a Play warns when multiple Plays are linked.
Editing from inside a Play clones the Plan and relinks only that Play before
applying changes. V1 comparison itself is read-only and exposes no manual
association controls.

Standalone Plan Detail uses one to six ordered target rows. Each member owns a
required species and form plus optional role, nature, ability, held item,
gender, four ordered moves, and notes. Add, edit, move, swap, and remove actions
are atomic and provide a keyboard alternative to drag and drop. Reusable edits
disclose every linked Play that may be affected but never change an actual Team
member.

Plan checks warn about game/content availability, invalid persistent forms,
reuse policy, and supported Rules. They do
not produce a completion percentage or overall score and do not block creative
planning unless the underlying identity or ownership is invalid. Plan notes,
optional content, Rules, and Tags remain separate editable responsibilities.

Draft means the Plan is being explored; Active means the user keeps it as a
current or reusable Plan. Both are editable and may create a Play. Archived
Plans remain readable with existing Play links intact but require explicit
reactivation before editing or creating new links. Deleting a Plan is a guarded
separate action: it never deletes linked Plays, actual Team members, Progress,
or History, and must fail without partial detachment if those consequences
cannot be preserved safely.

Standalone Plan Detail lists every linked Play with a concise comparison
summary and can enter that Play's comparison context directly. `Link to existing Play` offers only
owner-scoped Plays with the exact game/version and no other focused Plan.
Linking changes no Team member and stores no member association.

### Pokémon Browse And Detail

Codex Pokémon is a public, species-led reference surface. A Pokémon's entry
reads every changing fact (types, persistent forms, artwork, availability,
Pokédex placement, stats, abilities, evolution, matchups, learnsets, and
Mainline intent) in one explicit **version group**: a base group such as Sword
and Shield, its expansions (The Isle of Armor, The Crown Tundra) included. The
route names the group and the entry keeps it visible. V1 does not require an
account preference or database write for this choice.

Pokémon Browse must:

- keep Search, Generation (the introduced generation, as pills), Type, and
  Sort visible; category and version-group availability filters may follow in
  `More filters`;
- search species name, National Pokédex number, and applicable persistent form
  names;
- default to National number, with Name as the alternate sort, grouped by
  introduced generation;
- show one equal image-led result per species with artwork, National number,
  name, type, and only a concise form cue;
- open the entry in the first version group of the generation the species was
  introduced in, and expose no inline Mainline mutation;
- preserve URL-backed criteria, loaded position, scroll, and useful focus when
  moving between Browse and Detail;
- append small result batches automatically shortly before the user reaches the
  boundary, with a manual compatibility or recovery fallback when automatic
  continuation is unavailable;
- target a compact multi-column grid, three columns on common phone widths;
- use the shared initial Spinner, filtered empty and clear actions, isolated
  incremental retry, and per-result missing-data fallbacks without Skeletons.

Used, unused, planned, targeted, and never-used Browse filters or overlays are
not V1 requirements. They remain personalization follow-ups; personal usage
belongs primarily to Collection.

Pokémon Detail uses the canonical
`/codex/pokemon/[versionGroupSlug]/[speciesSlug]` route (a persistent form as
`?form=`). A game's slug or an expansion's child-group slug redirects
permanently (308) to its base group; an unknown group or species is a 404; a
group from before the species existed redirects to the group it was
introduced in. `/codex/pokemon/[speciesSlug]` opens the first base version
group of the generation the species was introduced in (a legacy `?game=` names
the group instead). It must:

- have an independent semantic `h1` for National number and species identity;
- retain the active version group while switching species and update the
  canonical route when switching group or persistent form;
- offer one pill per generation the species exists in, each opening that
  generation's first group the species can be found in, and, when a generation
  has several base groups, a version-group switch that shows but disables a
  group the species can't be found in;
- retain a searchable, contextual species switcher and direct Shiny artwork
  toggle;
- show a form selector only for persistent forms valid or meaningful in the
  current context, excluding temporary battle and cosmetic variants;
- organize reference content as identity/context, overview, evolution/forms,
  selected-game availability, type matchups, learnset, and Pokédex placement;
- omit absent optional facts instead of filling important space with `Unknown`;
- keep learnset mechanics game-correct and use a semantic table on wide screens
  with labelled stacked rows on narrow screens;
- preserve identity and unaffected sections when a secondary read fails;
- use real heading hierarchy, keyboard-operable selectors, visible focus,
  labelled Shiny state, and non-color type and matchup meaning.

As built, a signed-in entry offers `Add to a Play` (a menu of your Plays whose
Pokédex lists this species, each opening its Roster's Add Pokémon on this
species and form; with none, Start a Play) and an `In your Plays` card listing every one of this species on
your rosters. The entry's Training and breeding card shows egg groups where
the game has breeding; its other values, the Pokédex category, flavour text,
height and weight and Favourite are pending data. The accepted handoff below
remains the target.

Authenticated Pokémon Detail exposes one `Use in Mainline` entry with four
branches:

- `Add to Plan`, choosing an eligible Plan or continuing to Create Plan;
- `Add to Play`, choosing an eligible Play and Active or Reserve destination;
- `Check in my Plays`, inspecting availability without writing;
- `View my history`, opening Collection Pokémon Detail.

Creating a Plan is a branch of `Add to Plan`, not a duplicate top-level action.
The handoff preserves the version group, species, persistent form,
availability or content context, and intent through authentication. Mainline owns destination
selection, ownership, roster capacity, reuse policy, form and availability
validation, optional content, plan/play state, warnings, and every mutation.
Codex never writes Plan, Team, Play, or Collection truth directly. Cancellation
and failure return to the same Detail context without partial user data.

### Games Browse, Game Detail, And Game Pokédex

Codex Games is a public, cover-led catalogue of the exact traditional mainline
and Legends-style games supported by Voydex. Games Browse keeps Search and the
kind of game (Core series, Companions and remakes, Legends) in the URL, plus a
newest or oldest order and grouping by generation or region. It uses one game
card (`GameShelfCard`) with cover, short name, release year, and region,
opening its version group's page with that game picked. The V1 catalogue does
not require pagination, personal overlays, or inline Mainline actions. It
targets compact multi-column density on desktop and two phone columns.

Game Detail explains one base version group at
`/codex/games/[versionGroupSlug]`, with a version switch for its games
(`?version=[gameSlug]`; an unknown version falls back to the group's first
game). A game's slug or an expansion's child-group slug redirects permanently
(308) to the base group, keeping the game it named; an unknown slug is a 404.
The page carries structured identity, base and optional-content scopes, named
Pokédexes, the group's Pokémon, and only trustworthy related releases. `Start a Play` is its clear primary action;
`Create a Plan` and `Add to Game List` are supporting Mainline actions.
Reference links remain distinct from personal mutations. As built, the page
also shows the region the picked game is set in with its first partners
(the leaders are pending data; Legends games leave them out) and the version
exclusives: one column per game of the pair, the picked game first, counting
only what each game gives you itself. Signed in, its head offers `Start a
{Version} Play` and `Your Plays (N)`, and Games Browse adds a Played filter
and a flag on each game you've played.

Named Pokédexes are listed under the base group, its own first and then its
expansions', so seeded DLC scopes are not lost merely because their Pokédex
rows belong to a child version group. `Available species` is shown only when it is a
distinct-species count from the resolved game/content availability model. It
must never reuse the largest listed Pokédex size. Related releases require an
explainable paired or otherwise reference-supported relationship; sharing only
a generation or region is insufficient.

Game Pokédex uses the canonical
`/codex/games/[versionGroupSlug]/pokedexes/[pokedexSlug]` route (an expansion's
Pokédex is read under its base group; old game or child-group addresses
redirect permanently, unknown ones are a 404) and makes the named Pokédex its
prominent page scope. The selector groups Base game and applicable
optional-content Pokédexes, keeps the active name obvious without opening a
menu, and preserves valid URL-backed Search, Type, Sort, and loaded position
when switching.

Game Pokédex defaults to local Pokédex number and supports Search plus Type; an
optional simple Sort may offer Name and National number. Wide screens use a
semantic comparison table for local number, species, National number, types,
abilities, and base stats. Narrow screens use compact labelled species rows or
cards that keep identity and the Pokémon's entry in this version group visible
without requiring horizontal scrolling. Large Pokédexes use explicit `Load
more`, with full-result filtering, isolated retry, and no Skeletons.

Game-origin Mainline actions preserve the picked game, intended action, and
originating Detail route through authentication. `Start a Play` resumes the
accepted Create Play flow with fixed game context and ends at Play Overview.
`Create a Plan` resumes the concise Create Plan flow and ends at one new Draft
Plan Detail. `Add to Game List` edits the existing entry when present or creates
one focused status-and-note intent, then may remain on Game Detail with a link
to Game List. Mainline owns authentication, validation, duplicate prevention,
atomic personal writes, and every success destination; Codex owns no user-data
mutation.

### Collection

Collection is the user's used Pokémon history across plays.

As built (v3, `/mainline/collection`): every species that has joined one of
your teams, as stickers, with Search, a Show choice (All, On a team now, In
several Plays, Shiny), Sort (Recently recorded, Most used, Pokédex number)
and the type dots. A species opens its sheet (`?species=`): every Pokémon of
it on your Plays' rosters, each opening on its Play's roster, and the games it
joined you in. Archived Plays count.

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

V1 Collection browses one result per species. A species result aggregates exact
recorded forms, distinct actual Play-Pokémon companions, supporting Plays, and
meaningful historical evidence without counting repeated event or snapshot
rows as additional companions. Planned targets and Pokédex Seen/Caught state do
not establish Collection usage.

Collection reuses Mainline's URL-backed browse controls while adopting an
image-led Pokémon grid rather than the Plays list. Visible controls are Search,
Game, Type, and Sort; More filters may include Generation, exact Form,
Active/Reserve/Past or historical-only evidence, Shiny knowledge, MVP,
Play-Pokémon Tags, and supporting Play lifecycle. Archived Plays remain part of
personal history. The default sort is most recently recorded with unknown
chronology labelled rather than treated as recent.

Each species card shows stable Pokémon identity, form context, distinct
companion and Play counts, honest latest-appearance knowledge, and recorded
Shiny or MVP context. It never presents raw evidence count as `times used` and
has no inline Team mutation.

Collection Pokémon Detail is species-level and uses a URL-backed `All used
forms` or exact-form scope. It shows a personal identity header, distinct
companions, meaningful recorded moments grouped by Play, and compact
evolution-family usage context. A companion that evolved may appear on an
earlier-stage detail through recorded event evidence while remaining one actual
individual. Historical evidence without a surviving companion link remains an
explicit historical appearance rather than an invented companion.

Collection Detail is read-only. Companion rows route to the owning Play Team;
moments route to History; generic reference facts route to Codex. Exact,
approximate, and unrecorded dates remain honest, and events from different
Plays are not forced into a false global chronology.

### Stats

Stats are derived from user data.

As built (v3, `/mainline/stats`), Statistics leads with one sentence, then
where your time went, the regions you've travelled and your team style (types
you pick, old friends), all read from what you recorded; a new account says
what fills in as it records more.

Stats may include:

- Plays by generation and game.
- Completed plays.
- Favorite or most-used Pokémon.
- Favorite types.
- Challenge/rule stats.
- Pokedex and collectible completion.
- Team composition trends.

Stats should remain read-model/query output. User-facing stats should not become manually maintained source-of-truth tables unless a later performance need requires cached aggregates.

V1 Stats is one vertically ordered page with one shared All Mainline,
Generation, or Game scope. It contains no stateful category tabs and no
arbitrary date-range filter. Its sections are Overview values, Adventures,
Pokémon, Progress, and Challenges.

Overview uses no more than four trustworthy orientation values such as total
Plays, lifecycle Completed Plays, distinct games, and distinct recorded
species. Playtime appears only with its recording coverage. Adventures shows
lifecycle, game, generation, goal, and playtime distributions. Pokémon shows
most-used species/forms/types, multi-Play reuse, Shiny companions, and explicit
MVP companions. Progress summarizes only initialized named scopes with visible
coverage. Challenges reports Rule participation, not unproven success or
compliance.

Stats says `Most used`, not `Favorite`, unless the user explicitly recorded a
favorite through a future feature. It counts distinct companions and Plays
rather than repeated evidence rows, calculates type in the relevant Play's
generation context, treats unknown progress as unknown rather than zero, and
exposes the denominator behind every aggregate. Every meaningful result links
to supporting Plays, Collection, or Progress records.

Stats is read-only and explainable. V1 excludes scores, percentiles, streaks,
achievements, inferred best Teams, challenge success rates without outcome
evidence, and opaque correlations. A cache or enlarged aggregate projection is
a later performance choice, not a user-owned source of truth.

### Codex Browse

Codex browse is the public-readable reference surface, not a required product
funnel.

Current Codex browse views:

- Pokémon.
- Games.

Generations remain useful reference context for filters, grouping, and future
detail pages, but they are not the required path for creating or continuing
plays.

### Authentication And Resumption

Start a Play (`/start`) lets a visitor pick a game and partner before having
an account; the pick travels through Sign up and Log in and waits on the
account until Mainline starts the Play. Log in and Sign up share `/login`;
Reset your password, Choose a new password and Check your email are their own
routes ([Navigation And Routes](./navigation-and-routes.md)). Sign up has one
password with Show and no confirmation field (v3), then Welcome (`/welcome`):
your name on the trainer card, before your first Play.

Login is a focused global transition with visible Log in, Sign up, Recover
account, Check your email, or Choose a new password identity. Direct Login uses
the normal last-active-module resolver. A user who is already authenticated is
redirected to the validated destination or normal app entry rather than shown
the form again.

When authentication interrupts a protected route or Codex action, Login shows
a compact summary of what will resume. Preserve the exact internal destination,
game, Pokémon/form, content scope, action branch, and public origin when they
apply. Validate all continuation data, reject external or tampered targets, and
revalidate the owning Mainline operation after authentication. Login never
performs or automatically replays the mutation.

Log in uses Email, Password, password visibility, recovery, and an alternate
Create account action. Sign up uses Email, Password with visible requirements
and visibility, and an alternate Log in action. Do not add Profile,
preferences, game selection, or onboarding fields to account creation.

Password recovery returns the same neutral Check Email response whether or not
an account exists. Recovery links open a focused new-password mode and handle
expired or reused links without losing a safe destination. When email
confirmation is required after Sign up, show a clear Check Email state instead
of redirecting into a protected loop.

Recoverable errors preserve Email and non-sensitive intent, clear passwords,
associate field errors, translate provider messages into stable user-facing
copy, and move focus to the invalid field or summary. Pending state disables
only the submitted action. An expired session explicitly asks the user to log
in again, preserves safe read intent, and never silently replays a write.

### Global Settings

Global Settings is one authenticated `/settings` page outside product modules,
one readable column: the trainer card, which is the profile form (your
display name; the card changes as you type and Save appears once it has
changed), Look and feel, New Play defaults, Account and Your data. On phones
`/you` gathers the trainer card, Statistics, Collection and Settings.

Account shows your email with Change email (confirmed by a link Supabase
sends; the change takes effect once it is opened), Change password, and Log
out on this device. Your data offers Download your data (`/settings/export`,
every row you recorded as one JSON file; reference data is left out) and
Delete your account. Account deletion requires recent-auth handling when
necessary, a complete consequence summary, typed confirmation, one reviewed
server-owned operation, and no partial success; it removes the Auth identity
and dependent user-owned data, clears the session, and returns to the public
entry. Until that operation exists the action is pending data.

Look and feel (mode, colour theme, motion) and New Play defaults (Pokédex
mode, Story and Collectibles tracking) are drawn with pending markers until
`public.user_preferences` stores them; only the light look is designed. The
accepted Pokémon reuse preference (what counts as reuse, and warn or hide) is
not on the page yet. A Pokémon icon for the profile and a default trainer
name are pending too.

Play-specific completion choices, optional content, Pokédex and Collectible
scope, Rules, Tags, lifecycle, and metadata remain inside the owning Play or
Plan workflows rather than Global Settings.

### Shared System States

Use the smallest honest state: local pending/error for one operation,
partial/unavailable state when the page remains useful, page state when the
primary task cannot render, and global service status only when several
surfaces are affected.

Initial reads keep the shell and use one accessible page-level Spinner with a
concise label. V1 uses no Skeletons. In-place work preserves content and uses a
localized Spinner on the responsible control or section.

True empty, filtered empty, unrecorded, unavailable, and zero are distinct.
Filtered empty offers Clear filters. Partial failures retain identity,
navigation, validated criteria, and unaffected sections with local retry.

Page error uses a semantic heading, concise explanation, Try again, and one
safe owner-appropriate destination. It does not expose provider, database, or
stack details. Public Not Found routes to Home and Codex; protected resource
states avoid leaking existence and route to the nearest owning library rather
than always Mainline Plays.

Permission, locked-module, expired-session, disabled, and service-unavailable
states remain distinct. A broad connection problem uses a persistent
user-facing status banner with impact and retry, not a small tooltip-only
database icon. Success uses a toast, inline confirmation, or destination focus
according to consequence and navigation.

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

Rules should be modeled flexibly. The app should support immutable predefined
rules and reusable user-authored custom rules. A rule explicitly declares
whether Voydex can evaluate it or only record it. Pokémon reuse rules apply
both when planning teams and when adding Pokémon to a play team.

For V1, the shipped application catalogue owns that capability and the supported
configuration for predefined rules; custom rules are recorded only. A later
version may move those contracts into generalized database metadata if a real
administration or extensibility need appears.

Pokémon reuse checks should support both real usage warnings and preemptive warnings. Real usage warnings validate the Pokémon being selected now. Preemptive warnings validate planned targets and future evolution destinations so the user is not surprised later in a play.

Predefined rules should be structured where they affect app behavior.
User-authored descriptive rules should also be supported for personal
challenges that the app cannot validate yet. V1 evaluates supported rules as
warnings rather than hard action blockers.

### Tags

Tags should be user-owned and attachable to:

- Plays.
- Plans.
- Play Pokémon.

Tags should support filtering and personal organization.

Tags never affect completion, gameplay validation, or History. Detaching a
shared Tag from one record does not delete the reusable Tag. Shared rename and
delete administration is deferred beyond V1.

### Backlog And Wishlist

Users should be able to track game-level intent:

- Want to play.
- Planned.
- Playing.
- Completed.
- Skipped.

This is separate from a play. A user may want to play a game before creating a concrete playthrough.

Creating or completing a play can suggest updates to backlog/wishlist status, but the game intent row remains independent user intent rather than a strict mirror of play status.

Game List lives as the second clear view inside Mainline Plans Hub. `Add game`
defaults to Want to Play and lets the user confirm another intent and optional
note. Codex Game Detail uses the same confirmation with the game prefilled.
Creating a Plan, starting a Play, or completing a Play may offer an explicit
intent update, but never changes the row silently. Removing the row deletes
only that independent intent and note, not any Plan, Play, Team, Progress, or
History data.

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
