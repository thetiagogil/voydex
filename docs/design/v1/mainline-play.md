# V1 Mainline Play Functional Blueprint

This document defines the functional structure of a Mainline Play and Play Hub.
It captures accepted behavior, screen responsibilities, summary outputs, and
open questions while distinguishing provisional visual direction from
production implementation.

## Current Status

**Status: V1 functional contract accepted; Overview visually validated; initial read-only Team list-detail implemented; full Team workflows pending**

Use an inside-out product sequence and an outside-in visual sequence:

1. define what a Play contains and what each Hub area does;
2. derive the summaries needed by Plays Browse and Dashboard;
3. establish the visual system through the shared shell and Plays Browse;
4. apply that selected system to Dashboard and the detailed Play Hub one
   production view at a time.

## Mainline Review And Visual-Validation Rule

**Status: Accepted**

Approve the remaining Mainline views as functional contracts before treating
their exact visual composition as final. Each contract must still define
ownership, hierarchy, actions, responsive behavior, states, and data needs.
Layout directions are hypotheses for the first coherent UI draft.

During the current implementation pass, render related Mainline views with
realistic data and phone, tablet, and desktop states. Preserve accepted behavior
and ownership, but allow composition, density, emphasis, and local navigation
patterns to change when the working UI reveals a better solution. Capture
selected changes and validation criteria in versioned docs rather than leaving
them only in conversation context.

## What A Play Represents

**Status: Accepted**

A Play is one user's record of one specific run or save in one traditional
mainline or Legends-style Pokémon game. Multiple Plays may reference the same
game because each run has its own team, choices, progress, history, rules, and
memories.

A Play can represent:

- a current adventure the user updates while playing;
- a future run created before it begins;
- a paused, completed, or abandoned run;
- a historical playthrough added after the fact with partial information.

Historical entry must not require the same level of chronological detail as a
live Play.

## Lifecycle And Organization

**Status: Accepted**

Play lifecycle states are:

- `not_started`;
- `playing`;
- `paused`;
- `completed`;
- `abandoned`.

Archive is an organizational state, not another lifecycle state. Archiving does
not rewrite what happened in the Play.

## Play-Owned Information

**Status: Accepted at the contract level**

A Play owns or selects:

- user-defined name;
- game;
- lifecycle and archive state;
- trainer name;
- platform or console;
- started and completed dates;
- playtime;
- notes and save notes;
- tags, rules, and challenge context;
- enabled optional content such as DLC;
- completion and tracking settings;
- current and historical Pokémon roster state;
- story, Pokédex, and collectible progress;
- one focused linked Team Plan;
- user-facing timeline, journal, and snapshots.

Static game, Pokémon, form, move, Pokédex, story, and collectible definitions
remain reference or tracking data rather than being copied into the Play as
current source of truth. Historical events and snapshots preserve event-time
identity when later edits or evolutions would otherwise rewrite history.

## Play Hub Purpose

**Status: Accepted**

The Play Hub is the central workspace for understanding and updating one Play.
It should help the user answer:

- Where am I in this adventure?
- What is my current team?
- What remains incomplete?
- What was I planning to use?
- What changed recently?
- What should I do next?

The Play's name, game, lifecycle, and high-value context remain visible above
the workspace. The Play Hub owns five primary areas.

## Hub Areas

| Area     | Primary responsibility                                                 | Typical outputs and actions                                                                                                 |
| -------- | ---------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| Overview | Orient the user and surface the next useful action                     | Journey status, current team preview, applicable progress summaries, recent meaningful history, links into mature workflows |
| Team     | Manage the current roster and Pokémon lifecycle                        | Active/reserve move and swap, add, edit, evolve, change form, replace, retire, Past Members, correction, and Team analysis  |
| Progress | Understand and update completion-related tracks                        | Progress summary plus entry to Story, Pokédex, and Collectibles                                                             |
| History  | Preserve and review the user-facing story of the Play                  | Journal entries, meaningful events, milestones, snapshots, Hall of Fame, imported history                                   |
| Settings | Manage Play metadata, lifecycle, rules, scope, and destructive actions | Rename, dates, platform, status, optional content, tracking/completion settings, archive, delete                            |

Team contains one compact read-only Team Plan section and opens the comparison
as the route-backed `Team - Plan` child view. Plan is not a sixth primary Play
area. The Play shell and primary navigation remain visible.

## Overview Contract

**Status: Accepted V1 functional contract; visual validation pending**

Overview is a read-oriented summary and routing surface, not a duplicate editor
for every Hub area. It should contain only high-signal information:

- Journey Status;
- Current Team;
- Progress Summary;
- Recent History.

Each preview summarizes real underlying behavior and leads to the owning area.
Do not add filler cards or unsupported analysis. Team Health remains in Team
until a real analysis model exists.

Progress Summary keeps one stable row for each applicable top-level group:
Story, Pokédex, and Collectibles. Each row shows a progress bar and visible
rounded percentage. Named child tracks and their native counts remain in the
detailed Progress areas.

### Overview Content Contract

**Status: Accepted**

Keep exactly four permanent Overview sections. Together they answer the four
questions a returning user needs answered quickly without duplicating the Play
Header or the dedicated Hub areas.

| Section              | Question answered            | Content                                                                                                                                                    | Primary section action                        | Empty or sparse state                                                                                   |
| -------------------- | ---------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| **Journey Status**   | Where am I?                  | Current or furthest known Story milestone and the next applicable objective; numeric Story completion remains in Progress Summary                          | Open Story                                    | `Story position not recorded` with a route to set the current or furthest known position                |
| **Current Team**     | Who is with me?              | Six fixed state-aware active slots and optional reserve count                                                                                              | Manage Team                                   | Use explicit confirmed-empty or not-recorded slots; never infer an empty in-game team from missing data |
| **Progress Summary** | How much have I completed?   | Stable Story, Pokédex, and Collectibles group rows with normalized percentages; no named child tracks, raw group counts, or duplicate overall header score | Open Progress or the relevant detailed area   | Distinguish `Not recorded` from known zero; omit optional groups that are disabled or not applicable    |
| **Recent History**   | What happened most recently? | The latest three to five meaningful milestones, team changes, memories, snapshots, or journal entries in reverse chronological order                       | View History or add a memory when appropriate | Compact `No history recorded yet` state; routine Pokédex and Collectible updates do not create noise    |

Overview is read-first. Each section may expose one clear route or invoke the
same canonical workflow owned by its destination, but it should not contain a
second implementation of Team, Progress, or History editing.

Do not add a permanent fifth Overview card for Plan. Linked Plan context belongs
to the Team tab's compact Team Plan Card. Team owns the automatic Play-specific
comparison, while standalone Plan Detail owns reusable authoring and cross-Play
usage.

Do not add separate cards for Play details, rules, completion goal, quick
actions, notes, or Team analysis. Play details, defining rules, completion
context, and the next action already belong to the header; notes belong to
History or Settings; meaningful Team analysis remains in Team.

### Journey Status Contract

**Status: Accepted**

Journey Status answers only `Where am I in the Story?` It should not also answer
`How much have I completed?`; the numeric Story row in Progress Summary owns
that second question.

Its information hierarchy is:

1. **Current position:** the current or furthest known applicable Story
   milestone, using lifecycle-aware language such as `Current position`,
   `Furthest recorded`, or `Story completed`.
2. **Next objective:** the next applicable milestone only when the Play is still
   active and a next objective is known. It must respect game path, enabled
   content, and recorded branch decisions.
3. **Story route:** one lower-emphasis `Open Story` action. When position is
   unknown, the same destination may be labelled `Set Story position`. Do not
   repeat a primary-styled action already promoted by the Play Header.

Do not show a milestone count, Story percentage, path visualization, general
location field, player decisions, optional-side-content list, or multiple
logging controls in this Overview section. Counts belong to Progress Summary;
decisions and complete path detail belong to Story; meaningful past choices may
also appear in History. The existing scenic strip is a visual-design question,
not required functional content.

| Play state                        | Journey Status behavior                                                                                                                          |
| --------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| New `not_started` Play            | Show `Adventure not started` and the first applicable objective when known; zero Story progress remains valid in Progress Summary                |
| Active or paused with known Story | Show the current recorded milestone and next applicable objective                                                                                |
| Imported Play with unknown Story  | Show `Story position not recorded`; do not infer the beginning of the game from missing progress rows                                            |
| Completed with known Story        | Show `Story completed` and the final recorded milestone; do not show another next objective                                                      |
| Abandoned with known Story        | Show `Furthest recorded` and the final known milestone; do not frame the next uncompleted milestone as an active task unless the Play is resumed |
| Story definitions unavailable     | Show a compact unavailable state with a safe retry or route back; do not substitute invented milestones                                          |

### Current Team Contract

**Status: Accepted**

Current Team answers `Who is with me?` It summarizes the Play-owned active
lineup and routes to Team; it is not a second roster manager or a Pokémon
reference browser.

Its information hierarchy is:

1. **Lifecycle-aware identity:** use `Current Team` for active, paused, and
   not-started Plays, `Final Team` for completed Plays, and `Last Known Team`
   for abandoned Plays when that language reflects the recorded data.
2. **Active lineup:** retain six stable slots. Each recorded member shows its
   artwork, nickname or species identity, species when a nickname would hide
   it, and level when known. The portrait uses the correct form and shiny
   artwork, with a compact accessible indicator only when the visual difference
   needs clarification. Types remain in Team rather than adding density here.
3. **Reserve context:** show a small reserve count only when positive. Do not
   place an Active/Reserve toggle or the complete reserve roster in Overview.
4. **Team route:** provide one lower-emphasis `Open Team` or `Manage Team`
   action. When no Team has been recorded, the same destination may be labelled
   `Add current team` or `Record remembered team`. Do not duplicate a
   primary-styled action already promoted by the Play Header.

**Accepted slot invariant:** all six positions use the same slot component with
identical width, height, border, radius, padding, portrait area, name line, and
secondary-information line. Occupied, known-empty, and unknown states change
content only; they never change the slot's geometry or cause the grid to shift.

- **Occupied:** Pokémon portrait, display name, and available compact metadata.
- **Known empty:** an app-standard add or empty-slot icon in the portrait area,
  with an `Empty slot` label and appropriate add affordance.
- **Not recorded:** an app-standard question-mark icon in the portrait area,
  with a `Not recorded` label. Do not use the add icon because the slot has not
  been confirmed empty.

Long names truncate within the fixed name line while preserving an accessible
full label. Placeholder icons require equivalent accessible labels and cannot
rely on the icon alone to communicate state.

Selecting an occupied slot should open that Play-owned Pokémon in the Team
workflow, or the closest stable Team destination until member detail exists. It
should not navigate directly to the generic Codex species page; Codex remains a
secondary reference destination from the Pokémon detail experience.

Do not show reserve slots, moves, abilities, nature, held items, detailed stats,
coverage, weaknesses, Team Health, or Pokémon history in Overview. Those belong
to Team or the member-detail workflow.

| Play/team state                                 | Current Team behavior                                                                                                          |
| ----------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------ |
| New `not_started` Play                          | Six known empty active slots are valid; offer the Team route without implying that a team should already exist                 |
| Active or paused with a recorded partial lineup | Show recorded members and known empty slots                                                                                    |
| Imported active or paused with no Team record   | Retain six fixed slot frames in the unknown state and show `Current team not recorded`; do not present them as confirmed empty |
| Completed with a recorded final lineup          | Use `Final Team` and show the recorded final members                                                                           |
| Completed with partial remembered information   | Show remembered members and label the record as partial; unrecorded slots are unknown rather than confirmed empty              |
| Abandoned with recorded Team information        | Use `Last Known Team`; do not imply the lineup remained unchanged after the last recorded moment                               |
| Team data unavailable                           | Show a compact unavailable state and safe route or retry; do not substitute planned Pokémon or stale summary counts            |

### Progress Summary Contract

**Status: Accepted**

Use a stable two-level hierarchy:

- **Overview groups:** Story, Pokédex, and Collectibles;
- **Progress detail:** Main Story, Postgame, DLC stories, each named Pokédex,
  and each named Collectible group supported by the selected game.

Story is always present. Pokédex appears when applicable and enabled.
Collectibles appears only when the game has supported Collectible definitions
and the user enables at least one group. The stable taxonomy scales across games
without forcing an empty Collectibles row where the concept does not apply.

Each visible Overview group shows:

- the stable group name;
- one progress bar;
- one visible rounded percentage;
- concise contribution context such as `2 goal scopes` or `Tracked only` when
  needed;
- a route to its detailed Progress area.

Do not show a raw `completed / total` count at group level. Story milestones,
Pokédex species, and heterogeneous Collectible units are not interchangeable,
and overlapping Pokédex scopes must not be added together as though every entry
were unique. Native counts remain visible inside each detailed child track.

Use normalized hierarchical completion for V1:

1. Each child track calculates its own percentage from its native units—for
   example Main Story milestones, one named Pokédex, or one Collectible group.
2. A top-level group's completion percentage is the equal-weighted average of
   the child-track percentages selected to contribute to that group. Equal
   weighting keeps a large Pokédex or Collectible list from dominating solely
   because it contains more raw entries.
3. When a group has no contributing child tracks but does have tracked child
   tracks, show their equal-weighted tracking percentage and label the row
   `Tracked only`; it does not affect the overall Play result.
4. The Play Header's overall completion result is the equal-weighted average of
   the enabled top-level goal groups. Story is always included; Pokédex and
   Collectibles participate only when the completion definition includes them.
5. If any required child track is uninitialized or unknown, do not average it
   as zero or silently omit it. Show `Not recorded` or `Partially recorded` for
   the group and withhold a trustworthy overall result until the contributing
   state is sufficiently initialized.

The Progress Summary card remains one of the four permanent Overview sections.
If no group can currently be calculated, show a compact explanation or
unavailable state instead of removing the card and changing the page structure.

Do not add named child rows, raw counts, checklists, bulk updates, trends,
streaks, predictions, or unsupported achievements here. Those belong to the
detailed Progress areas, History, or future Stats surfaces.

### Recent History Contract

**Status: Accepted**

Recent History answers `What happened recently?` It is a short preview of the
Play's meaningful recorded story, not a raw activity or audit log.

Show the latest three to five eligible events in reverse chronological order by
their effective event date or preserved manual order. Eligible events include:

- important Story milestones and recorded path decisions;
- recorded Team lifecycle moments such as additions, evolutions, replacements,
  or retirements when the user chose the event-recording path;
- Team snapshots, Hall of Fame or final-Team records;
- journal entries and memories;
- major progress moments such as completing an entire Pokédex scope or
  Collectible group, but not routine species or item updates;
- meaningful Play lifecycle outcomes such as completion or abandonment when
  represented as recorded events.

Each row uses the shared event-type icon, one clear title, one concise context
line, and the event date when known. Show relevant Pokémon portraits or a small
snapshot preview only when they improve recognition. Approximate or unknown
dates require explicit labels; an event with no known date must not appear as
though it just happened.

Selecting a row opens the accepted History event-detail sheet. The section has
one lower-emphasis `Open History` or `View all` action. Its empty state may
offer `Add first memory`, but it must not repeat a primary action already
promoted in the Play Header.

Routine Pokédex and Collectible updates, corrections, settings edits, technical
IDs, complete notes, filters, and low-level audit data do not belong here.
Corrections update present truth without manufacturing a historical event;
explicitly recorded meaningful changes may create one. Journey Status and
Recent History may reference the same milestone because one communicates the
current state while the other records what happened.

| Play/history state                       | Recent History behavior                                                                    |
| ---------------------------------------- | ------------------------------------------------------------------------------------------ |
| New Play with no events                  | Show a compact `No history yet` state and an optional route to add the first memory        |
| Imported Play with no recorded history   | Show `No history recorded`; do not imply that nothing happened in the original save        |
| Events with known dates                  | Order newest first by effective event date                                                 |
| Events with approximate or unknown dates | Preserve approximate or manual ordering and label date certainty explicitly                |
| Partial or unavailable history data      | Show a compact unavailable state or safe retry; do not invent events, dates, or chronology |

Whether the preview uses a compact timeline or a simple list remains a visual
design decision. The event eligibility, information hierarchy, ordering, and
states above are the functional contract being reviewed.

### Post-Creation Overview

**Status: Accepted direction**

After Create Play succeeds, show a brief success toast and open the normal Play
Overview. Do not open another modal or a required setup wizard.

The Play Header above the section navigation is one coherent top section. On
desktop it uses:

- **left:** game cover art;
- **center:** stable Play identity, game and lifecycle context, meaningful known
  metadata, and concise global completion or challenge context;
- **right:** an adaptive, Play-wide Next Step action region derived from
  lifecycle and what the Play already contains.

The right region contains one primary action and no more than two secondary
actions. It is contextual guidance, not a second creation form. Because the
Play Header belongs to the shared Hub shell, its actions must remain useful
across every section. Actions specific to Team, Progress, History, or Settings
remain inside their owning area. Plan-specific work remains owned by Plan Detail
and is reached from Team's linked-Plan section.

On smaller screens, the action region stacks within the same Play Header after
the identity and context, before the navigation. It must not become a separate banner
inside Overview.

Preserve the current center-column information rhythm while giving each layer a
stable responsibility:

1. **Identity:** always show the user-defined Play name as the page title.
2. **Game and lifecycle:** always show lifecycle status and game name. Show
   region and generation as lower-emphasis reference context when available.
3. **Personal and time context:** show trainer name when known, then only
   lifecycle-appropriate dates and positive playtime. Active Plays may show
   their start date; completed Plays may show a played date range or completion
   date. Do not render placeholder facts such as `Not started` when the status
   already communicates that state.
4. **Global Play context:** show a compact completion summary and up to two
   defining challenge rules, followed by `+N` when more rules exist. The
   completion summary should identify the accepted goal and show a percentage
   only when contributing progress is trustworthy. A new `not_started` Play may
   truthfully show zero; an imported Play with unknown progress shows the
   explicit `Progress not recorded` state instead.

Do not use the persistent header for current-Team counts, detailed Pokédex
counts, general tags, notes, or platform. Team and Pokédex summaries already
belong to Overview and their owning areas; tags support organization and
filtering; notes and platform remain in Settings or detail surfaces. This keeps
the header stable across tabs instead of turning it into another dashboard.

#### Play Header Status Control

The persistent Play Header owns routine status transitions so they remain
quickly available from every Hub tab. Show the current status as a clear
control with contextual verb actions rather than a raw status dropdown:

| Current status | Header actions                                     |
| -------------- | -------------------------------------------------- |
| `Not started`  | `Start Play`; secondary `Record as completed`      |
| `Playing`      | `Pause Play`, `Mark completed`, or `Abandon Play`  |
| `Paused`       | `Resume Play`, `Mark completed`, or `Abandon Play` |
| `Completed`    | lower-emphasis `Reopen as playing`                 |
| `Abandoned`    | `Reopen as playing`                                |

When Start, Resume, or another status action is the adaptive Play-wide Next
Step, visually promote the same shared action instead of rendering a duplicate
button beside the status control. Actions requiring dates or consequence
confirmation open the same focused flow regardless of their header placement.
On narrow screens, the status control opens an accessible bottom sheet.

`Reopen as playing` is a continuation action, not a correction. When a
Completed Play already has a recorded completion date, reopening preserves that
date and presents it as `Previously completed on ...`. It does not change the
start date, completion definition, recorded Progress, or History. If completion
was recorded by mistake, the user must instead use `Correct recorded status`,
whose consequence review clears the false completion date.

The first Overview body should contain:

1. **Journey Status:** the current or furthest known story position, or an
   explicit `Not recorded yet` state with a route to Story.
2. **Current Team:** six fixed slots with explicit occupied, confirmed-empty,
   and not-recorded states plus an appropriate route to Team.
3. **Progress Summary:** stable Story, Pokédex, and Collectibles groups when
   applicable and enabled. Each uses a normalized percentage and distinguishes
   known zero progress from progress that has not been recorded in Voydex;
   named tracks and native counts remain in Progress.
4. **Recent History:** recent meaningful events when present; otherwise a compact
   empty state that does not dominate the page.

The next-step actions adapt as information is added:

- `not_started`: start the adventure, open or link a Plan, or review the
  completion goal;
- `playing` or `paused`: add the current team, set the current Story position,
  or update configured progress;
- `completed` or `abandoned`: add a remembered team, set the furthest known
  Story position, or preserve a memory.

The header action region's functional content is:

- a short contextual label, such as `Continue setup`;
- one clear title describing the most useful action;
- one sentence explaining why it helps;
- the primary action;
- up to two lower-emphasis alternatives.

For a newly imported `playing` or `paused` Play, begin with:

- title: `Add the team currently with you`;
- explanation: recording the current team makes the Play immediately personal
  and starts useful Pokémon history without reconstructing earlier changes;
- primary action: `Add current team`;
- secondary actions: `Set Story position` and `Update progress`.

After the team is added, promote `Set Story position`. After Team and Story have
enough context, promote the most useful configured progress action. Once the
Play has enough baseline context, the setup-specific recommendation should
evolve into the most useful Play-wide action or collapse to compact utility
actions when no strong recommendation exists. Do not leave an awkward empty
column or retain a permanent setup card.

Existing utilities such as `View game` and `Back to plays` should not compete
with the primary Next Step. Keep `View game` as a lower-emphasis action or
overflow item. Express return navigation as a back link, breadcrumb, or other
quiet shell navigation rather than a second prominent header button. Exact
styling will be resolved with the selected V1 visual system.

Do not show every possible setup task simultaneously. Prefer the easiest useful
action first, then replace it with the next missing high-value action after it
is completed. Derive these prompts from real Play data where practical rather
than storing a duplicate setup checklist.

For a genuinely new `not_started` Play, zero progress is meaningful. For a Play
created as `playing`, `paused`, `completed`, or `abandoned`, missing progress
must initially mean `Not recorded` rather than asserting that the in-game save
is at 0%. A completion percentage should not be presented as trustworthy until
the contributing tracks have enough initialized data.

## Team Contract

**Status: Read-only list-detail Team and linked Plan comparison implemented**

The current production baseline enables Team as a read-only Hub area. The
Roster Card header owns one canonical disabled Add action. All twelve positions
remain visible; the first occupied member opens in selected detail beside the
roster on desktop and in a focused sheet on tablet and phone. An absent
current-roster record renders as `Empty slot` without placeholder media or
explanatory copy.

A compact Team Plan section appears directly below Roster when the Play has a
focused linked Plan. It summarizes automatically matched target coverage and
off-plan current members, and its enabled `View plan` action opens the focused
comparison inside Team. Quick Team Analysis reports only current evidence
completeness, and Recent Team
Events loads the latest three qualifying Team events with hydrated historical
media. Their full destinations remain disabled. Mutation workflows, full
matchup and move-coverage calculations, Past Members content, Plan acquisition,
and standalone Plan Detail remain separate work. No linked Plan currently means
no permanent empty Plan card.

- Current roster capacity is six active plus six reserve Pokémon.
- Active uses slots 1–6; reserve uses slots 7–12.
- Retired and replaced Pokémon remain accessible in Past Members but occupy no
  current slot.
- Current-roster move, swap, and reorder actions are quiet. Named lifecycle
  actions and correction-only actions remain explicitly separate.
- Recorded additions, evolutions, persistent form changes, retirements,
  replacements, returns, and final-team moments preserve History and Collection
  evidence.
- Validation covers ownership, roster capacity, reuse policy, game
  availability, selectable form identity, game-valid form transitions,
  optional content scope, atomic slot changes, and the Team/Plan ownership
  boundary.

### Team Information Architecture Contract

**Status: Accepted**

Use the list-detail idea in
[the existing Team reference](../mainline-play/02_team.png) as the structural
direction without treating its exact styling or every control as fixed. Team's
first job is to answer `Who is on this Play, where are they now, and what can I
do with them?` while keeping the selected Pokémon meaningfully in focus.

Use this hierarchy:

1. **Roster Card header:** keep the screen free of a second Team introduction.
   Place one canonical `Add Pokémon` action in the Roster Card header. If the
   Play Header already recommends adding the Team, its route should hand the
   user into this workflow rather than creating two competing primary actions.
   Do not also promote Plan, Team Analysis, and Team History here when their
   preview sections already provide clear links.
2. **Twelve-position roster:** keep all six Active and six Reserve rows visible
   under their separate headings. Do not add an Active/Reserve mode switch,
   summary state, or disclosure control in the initial Team baseline. Every row
   keeps the same height and structure. An occupied row shows a portrait, slot,
   nickname or species, level, types, and only the smallest useful status cues.
   An unoccupied row uses the same concise `Empty slot` treatment in both
   groups.
3. **Past Members destination:** do not place a `Past members` route inside the
   current Roster Card. Keep the entry point deferred until its focused
   destination is implemented; retired and replaced records still remain
   outside the fixed twelve positions and History does not become the member
   browser.
4. **Selected Pokémon detail:** selecting an occupied row updates a larger
   Play-owned detail panel beside the roster. Lead with a 60/40 identity and
   caught-information row, with prominent artwork on the wider side. Follow it
   with a 60/40 Moves and battle-characteristics row, optional Notes, and a
   compact action footer. This is not a generic Codex page.
5. **Team Quick Analysis:** keep the section in this supporting position while
   its final metrics and explainable review strategy are designed. Do not
   manufacture analysis from incomplete inputs merely to fill the surface.
6. **Recent Team Events:** show the latest three Pokémon-specific Team changes,
   including roster movement and member lifecycle changes. One `View Team
history` route opens the focused Team projection; Play progress snapshots
   and Hall of Fame entries do not belong in this preview.
7. **Contextual additions:** when one focused Plan is linked, show a compact
   found/target comparison near the roster. Also allow one secondary snapshot
   action—`Record Team moment` or `Save Team snapshot`—for deliberate memories
   such as a Gym victory or Hall of Fame team. Neither needs a permanent empty
   card.

On desktop, use a two-column list-detail layout: the roster remains on the
left while member detail, quick analysis, and recent Team events use the wider
right side. On narrow screens, show the roster first and open the selected
member as a focused Team detail view or sheet with a clear return to the roster;
do not squeeze both columns side by side.

The compact roster artwork and row treatment must read as the source of the
selection, while the larger artwork and richer information on the right clearly
read as the selected result. Do not replace the list with a board of large
Pokémon cards for V1: when roster artwork approaches the selected artwork's
scale, both areas gain similar visual weight and the selection relationship
becomes less clear.

Keep selected Pokémon detail first in the right-side hierarchy, with Quick Team
Analysis and Recent Team Events as supporting sections below it. Their exact
relative heights and responsive stacking may be refined later without changing
the accepted list-detail structure.

Default to the first occupied Active member when one exists. With no recorded
members, use the detail area for the appropriate `Add first Pokémon` or `Team
not recorded` state. Selecting an empty slot opens the game-aware picker already
targeted to that position. A not-recorded slot first asks the user to record or
confirm its state rather than assuming it is empty.

Member lifecycle actions—add, evolve, change form, replace, retire, return, and
correct—belong to selected detail, Past Members, or the relevant slot workflow.
Keep row overflow actions limited to fast roster operations such as move or
reorder so lifecycle controls are not duplicated everywhere. Named lifecycle
actions record what happened; `Correct record` fixes Voydex data without an
event. Do not place that distinction behind a persistent global mode or generic
History checkbox. Reordering and moving members must have explicit
keyboard-accessible controls. Drag and drop may be added later as a convenience,
but cannot be the only method.

Do not add another permanent dashboard block merely to fill the page. Complete
notes, full member history, deep analysis, and generic reference browsing
belong in focused detail, History, Team Analysis, or Codex. The roster summary,
selected detail, quick analysis, recent Team events, and optional Plan or
snapshot context are sufficient for this screen.

### Roster Row Contract

**Status: Accepted**

Treat every detailed roster row as a compact selection or slot action, not as a
miniature Pokémon card. Active and Reserve positions use the same height,
column structure, padding, separators, focus treatment, and action region. Keep
all twelve rows visible in the initial baseline. Use user-facing slots `1`–`6`
for Active and `R1`–`R6` for Reserve; the underlying storage identity does not
need to appear.

| Row region                | Occupied member                                                                                                       | Confirmed-empty slot                         | Not-recorded slot                                  |
| ------------------------- | --------------------------------------------------------------------------------------------------------------------- | -------------------------------------------- | -------------------------------------------------- |
| **Move and slot**         | Quiet drag handle when supported plus the stable slot label                                                           | Same reserved geometry and slot label        | Same reserved geometry and slot label              |
| **Portrait**              | Compact correct-form artwork; use shiny artwork when applicable                                                       | Shared add or empty-slot icon                | Shared question-mark icon                          |
| **Identity**              | Nickname as primary text when present; species and non-default form remain visible as concise secondary identity      | `Empty slot` with `Add Pokémon` context      | `Not recorded` with `Record or confirm slot`       |
| **Level**                 | `Lv. N`; when unknown, retain the column with an accessible `Level not recorded` state                                | No invented value                            | No invented value                                  |
| **Types**                 | One or two compact type badges for the recorded form                                                                  | No badges                                    | No badges                                          |
| **Identity/state cues**   | Shiny cue when artwork alone is insufficient and at most one high-priority warning; gender and ordinary form stay out | Add affordance already communicates the task | Unknown-state cue already communicates uncertainty |
| **Selection and actions** | Reserved selected indicator plus a consistent overflow action position                                                | Main row action opens the targeted picker    | Main row action opens the slot-resolution workflow |

Do not add ability, nature, gender, held item, moves, notes, met information,
full Plan status, analysis results, or lifecycle actions to the default row.
Those details either belong in the selected Pokémon panel or would make the
roster compete with it. A non-default form may remain in the identity text when
omitting it would make the member ambiguous.

Use these state behaviors:

- **Occupied, unselected:** the main row target selects the member and updates
  the right-side detail. The overflow remains available for fast roster
  operations such as `Move to slot` or `Move to Active/Reserve`.
- **Occupied, selected:** preserve identical geometry and the same overflow
  position. Add a subtle surface tint or border plus a visible selected
  indicator; do not rely on color alone or replace the overflow button with the
  indicator.
- **Confirmed empty:** show `Empty slot` and an add affordance. Activating the
  row opens the game-aware picker already scoped to that exact position; it
  does not become the persistent selected member.
- **Not recorded:** show `Not recorded`, not `Empty slot`. Activating the row
  offers `Add remembered Pokémon` and `Confirm empty`; dismissal preserves the
  unknown state.
- **Pending mutation:** keep the row in place, disable conflicting actions, and
  show compact progress without changing its dimensions.
- **Unavailable member data:** show an explicit load or retry state. Never
  convert a failed member read into an empty or not-recorded slot.

The main row content is one standard keyboard-operable button. Any overflow
menu is a sibling control rather than a button nested inside the row button.
Both need clear focus treatment and accessible names containing the slot and
member or state. Drag and drop may remain a convenience, but `Move to slot` and
`Move to Active/Reserve` provide the complete non-drag path.

Section counts must preserve knowledge state. Use `6/6` or `3/6` only when the
remaining positions are confirmed empty. When some positions are unknown, use
language such as `3 recorded` or `Partially recorded` rather than implying the
unrecorded positions are empty.

### Selected Pokémon Detail Contract

**Status: Accepted**

The selected panel is the row's clear destination and the visual focus of the
Team workspace. It answers three questions in order: `Who is selected?`, `What
is currently recorded about this individual?`, and `What can I do next?` It is
a Play-owned member record, not a compressed generic Pokédex page.

Use this content hierarchy:

1. **Identity:** use one full-width band for nickname or species, optional
   species context, and type badges. If no nickname exists, show only the
   species name. Represent shiny state with a labelled star beside the displayed
   name rather than another fact row.
2. **Artwork, Build, and Origin:** align three equal columns below the identity
   band and keep materially larger correct-form artwork as the focal point,
   using shiny artwork when applicable. Build lists Level, Ability, Nature, and
   Held Item. Origin lists Gender, category-validated Poké Ball, met location,
   and met level. Keep both fact lists compact and top-aligned rather than
   stretching their rows to match the artwork height. Separate the three
   columns with quiet vertical rules. Omit Trainer until a useful per-Pokémon
   original-trainer record exists.
3. **Moves:** preserve four ordered move positions in one compact full-width
   row. Each occupied move uses a subtle type-colored surface, keeps its
   icon-only type badge at the left edge, and keeps the move name optically
   centered. Keep all four positions visible; a known empty move position shows
   only `Empty slot` with matching geometry and a dashed treatment.
4. **Notes:** show the Play-owned note only when recorded. Do not reserve an
   empty section or force long-form reference copy into the member panel.
5. **Actions:** place `Edit Pokémon` in the selected panel or sheet header as
   the primary record action. Keep exact-game `Open in Codex`, `Move slot`,
   `Replace`, `Evolve`, and `Retire` in one responsive footer row; expose only
   actions whose workflow and game-valid eligibility are implemented. Keep
   correction and deletion in a later advanced surface; deleting is the only
   destructive member action.

Routine edits to level, nickname, moves, item, or other recorded detail update
the current record without creating History noise or requiring a
correction-versus-event choice by default. Named lifecycle actions—evolution,
persistent form change, replacement, retirement, and return—record what happened
and preserve History or Collection evidence. `Correct record` fixes current data
without pretending an event occurred. When Plan's comparison read model relates
this member to a target, a compact read-only cue may appear in context with an
`Open Plan` route. Team exposes no relationship-management action.

Do not place a full stat dashboard, evolution chain, species description, Team
coverage analysis, complete member history, Plan alternatives, or long-form
notes in this panel. Team-wide strengths and weaknesses belong in Team
Analysis; meaningful events belong in History; generic species knowledge
belongs in Codex. Transient battle values such as current HP, battle status,
and current PP are outside the V1 Play record. A move's reference base PP
remains valid Moves context.

Adapt the detail to lifecycle and data state:

- **Playing or paused Play:** show the normal current-setup and lifecycle
  actions.
- **Completed Play:** label the member as part of the final recorded Team and
  favor remembered-detail or correction actions over forward-looking changes.
- **Abandoned Play:** describe the member as last known and use the same
  restrained editing model unless the Play is resumed.
- **Imported or partial record:** expose `Not recorded` honestly and never
  replace missing personal facts with reference defaults.
- **Past member:** preserve the identity-first detail hierarchy and replace
  current-roster actions with `Return to Team`, `View member history`, `Correct
record`, and guarded deletion.
- **Loading or failed read:** preserve the panel's geometry and provide an
  explicit retry instead of falling back to an empty-member state.

On desktop, the panel may place artwork and identity beside grouped facts, with
moves and actions below. On narrow screens, the focused Team detail view or
sheet preserves the same content order and provides a clear return to the
roster.

### Team Quick Analysis Contract

**Status: Accepted**

Team Quick Analysis remains an important, compact Team-wide surface beneath the
selected Pokémon detail. It is not selected-member context and does not change
when the user selects another roster row. Keep the current section in the UI
while its metrics, reliable inputs, calculation rules, evidence disclosure, and
partial-data behavior are designed in a later slice. Until that strategy is
accepted, do not present invented balance, matchup, coverage, role, damage, or
competitive conclusions as real analysis.

### Full Team Analysis View Contract

**Status: Accepted**

`Open full analysis` leads to the Play-owned route
`/mainline/plays/[playId]/team/analysis`. This is a focused child of Team, not a
new Play Hub tab or a global Mainline destination. Retain the Play Header and
Play Hub navigation, keep Team visibly active, and add a local `Team Analysis`
heading with a clear `Back to Team` or `Manage Team` route. Direct URLs must
load the same owner-scoped Play context and provide a stable return path.

The view is read-only and derived from the current Active lineup. Team edits
remain in Team; after a confirmed roster, form, move, ability, or item change,
the analysis reflects the new current state without storing a competing score
or analysis snapshot. Reserve Pokémon remain excluded in V1.

Use this information hierarchy:

1. **Team and evidence header:** show the current Active lineup, applicable
   game or generation rules, and a concise completeness statement for member
   typing, moves, abilities, and items. The compact member identities may route
   back to that selected member in Team.
2. **Defensive matchup matrix:** show each applicable attacking type against
   every Active member with exact multipliers, plus weak, resistant, and immune
   counts. Base form typing is always the explainable core. Apply an ability,
   item, or special-mechanic adjustment only when the fact is recorded and its
   effect is represented reliably; otherwise label the matrix as base typing.
3. **Recorded move coverage matrix:** show which damaging moves cover each
   defending type, which member provides them, move type and category, and
   whether the move receives same-type attack bonus. Keep this factual; without
   battle stats and opponent context, do not rank moves by expected damage.
4. **Explainable Team notes:** list the highest-signal shared weaknesses,
   4× exposures, coverage gaps, members without a known same-type damaging move,
   and the factual physical/special distribution of recorded attacks. Every
   note names the affected members or moves and the evidence behind it.
5. **Analysis basis:** disclose partial movesets, unrecorded ability or item
   facts, unsupported effect modifiers, and any mechanic the current analysis
   does not model. Keep this available without making it compete with the
   primary matrices.

On desktop and tablet, stack the two matrices vertically at the full workspace
width rather than compressing them into side-by-side cards. Use attacking or
defending types as rows and Active members as columns, with stable type and
member headers. Compact filters may isolate exposures, immunities, covered
types, or uncovered types without changing the underlying result.

On narrow screens, replace the wide matrices with type-grouped expandable rows.
Each collapsed row shows the summary counts; expansion reveals the affected
members, moves, and exact multipliers. Preserve semantic table or list
relationships, keyboard access, visible focus, and labels in addition to color.

Exact matrix density, compact filtering controls, and visual composition may
iterate during implementation. The accepted invariants are this view's route
and Team ownership, Active-only derivation, evidence sections, honest partial
states, and accessible responsive presentation.

Use these state rules:

- With no recorded Active members, replace the analysis with the appropriate
  `Add Pokémon` or `Record remembered team` route.
- With one to five recorded Active members and the remaining positions confirmed
  empty, analyze the Team as `Current N-member lineup`; a legitimate smaller
  early-game Team is not partial data.
- When one or more Active positions are unrecorded, analyze only the known
  members and label the result `Partially recorded lineup`; do not treat unknown
  positions as confirmed empty or as a balanced six-member Team.
- When typing is known but moves are partial, defensive analysis remains
  available while move coverage is explicitly partial or unavailable.
- For completed Plays, call this the recorded Final Team analysis. For
  abandoned Plays, call it the Last Known Team analysis and avoid prescriptive
  `fix your Team` language.
- On reference-data or calculation failure, show an unavailable state and retry
  path rather than a stale or invented conclusion.

Use icons, labels, counts, and multiplier text so meaning never depends on
color alone. Reserve warning emphasis for well-supported concerns. The Quick
Team Analysis preview may expose explanatory tooltips, but it keeps one
canonical route to this focused view.

### Recent Team Events Contract

**Status: Accepted**

Recent Team Events is a compact, read-only preview of Pokémon-specific Team
history. It answers `What changed in this Team recently?` for the whole
Active-and-Reserve roster. It is not selected-member context, so choosing a
different roster row does not change this section.

Show up to the latest three qualifying Team events, ordered by effective event
date or preserved manual timeline order rather than database creation time.
There are no filters or pagination inside the preview. One `View Team history`
route opens the focused Team History projection. Play History and Team History
may share an event store, but they keep separate eligibility and display rules.

A recorded Team change qualifies when it describes the roster or one of its
Pokémon. Eligible examples are:

- a Pokémon added to Active or Reserve;
- movement between Active and Reserve;
- a Pokémon record update or removal;
- an evolution, persistent form change, replacement, retirement, or return.

Story progress, Pokédex or Collectible progress, Team snapshots, final-Team or
Hall of Fame moments, journal entries, status changes, failed mutations, picker
attempts, and technical logs do not qualify. Those belong to Play History or no
user-facing history at all. A Team event appears only after its Team mutation
and event write succeed together.

V1 does not add a generic `Record this change in History` option to Pokémon edit
forms. That broader per-edit opt-in remains a later-version backlog direction.

Each compact event row contains:

- a recognizable event-type icon and accessible label;
- one concise Pokémon-first sentence, such as `Quagsire evolved from Wooper`,
  `Espeon joined the Active Team`, `Heracross retired from the Team`, or
  `Crobat returned to the Active Team`;
- the effective date or time when known, or an explicit label such as
  `Approx. Mar 2024` or `Date not recorded`;
- event-time visual identity: one portrait for an addition, update, retirement,
  removal, or return; a before-to-after pair for evolution, replacement, or
  recorded form change; or a portrait moving toward an Active or Reserve
  destination for roster movement.

Use the nickname, species, form, and other identity preserved with the event,
not the member's latest identity. Show event-time slot or Active/Reserve context
only when it was captured and helps explain the event; never substitute the
member's current position. The complete row is one keyboard-operable route to
the owning History event or closest stable History detail. Editing and deleting
events remain in History rather than adding overflow menus to the preview.

Keep `View Team history` as the section-header action. A lower-emphasis `Record
Team moment` footer action may appear when it is contextually useful, such as
for a playing or paused Play or to preserve a remembered final Team. It is not
a second permanent primary action, and completed or abandoned Plays should not
receive forward-looking prompts.

Use these state rules:

- A genuinely new Play shows compact `No Team events yet` copy without another
  `Add Pokémon` action; the Roster Card header already owns roster creation.
- An imported, active, completed, or abandoned Play with current Team data but
  no recorded event history says `No Team history recorded in Voydex` and may
  clarify that earlier changes can still have happened in the original save.
- A Play with other History but no qualifying Team event uses the explicit copy
  `No Team events recorded yet`; it never says `No history`.
- A remembered event may use an approximate or unknown effective date. The
  user may also add remembered roster details without creating an event. Never
  stamp an imported Team change as recent merely because it was entered into
  Voydex today.
- A failed or unavailable History read shows an explicit retry state rather
  than an empty state. A new event appears only after its write succeeds.

On desktop, place three consistent compact rows beneath Quick Team Analysis in
the supporting right-side hierarchy. On narrow screens, stack the same section
below the member detail and analysis while preserving concise artwork, row
semantics, keyboard behavior, visible focus, and meaning beyond color. Do not
expand this preview into large cards or a permanent empty filler panel.

### Linked Plan Context Contract

**Status: Accepted**

Linked Plan context answers `How is this actual Team relating to what I
planned?` without turning Team into a second Plan editor. Show it only when the
Play has one focused linked Team Plan.

Place one compact Team Plan Card directly below the Roster Card in the left
column. This keeps the relationship near the actual members it describes
without crowding the roster header or adding a full-width banner. Its
information hierarchy is:

1. **Plan identity and following state:** lead with the linked Plan name, then
   show one compact state label such as `Following the plan`, `Following with
changes`, `Not following the plan`, or `Plan not started`. This state is
   computed from the latest Play-owned Pokémon records.
2. **Target coverage:** state found targets as `3 of 6 planned Pokémon found`
   and show exact matches as supporting context.
3. **Changes from Plan:** summarize unplanned members without turning them into
   inspectable target rows.
4. **Comparison view:** one `View plan` action opens the focused view inside the
   active Team tab.

Do not add a percentage or large progress bar. Plan-member states are not
another completion system. Team computes the comparison as read-only data and
never persists a relationship state.

The authored Plan is never synchronized from the actual roster. The accepted
comparison labels are `Exact match`, `Build differs`, `Alternate form`, `In
progress`, `Evolved beyond plan`, `Branched evolution`, `Previously used`, and
`Not found`. Do not add Plan comparison to every roster row or let planned
Pokémon occupy actual Team positions.

Use these state rules:

- With no linked Plan, omit the comparison entirely. Plan or Play-level setup
  owns `Link a Plan`; Team does not show a permanent empty Plan card.
- With a linked Plan and no matching targets, show `0 of N planned Pokémon
found` honestly without framing the Team as a failure.
- Adding an unplanned Pokémon changes no Plan state. Keep the Team addition
  independent and do not show an `Update Plan` prompt.
- With partial or unavailable comparison data, label the result unavailable and
  keep a safe `Open Plan` or retry route rather than guessing from species.
- If the stored link points to a missing or inaccessible Plan, show a compact
  `Linked Plan unavailable` state with a route to resolve the relationship; do
  not silently make it look as though no Plan was linked.

On narrow screens, allow identity, summary, and action to stack without
becoming a card grid. Preserve one clear action, readable target language,
keyboard access, and visible focus.

### Record Team Moment Contract

**Status: Accepted**

`Record Team moment` is a dedicated way to preserve the current lineup at a
meaningful point in the adventure. It remains separate from editing a Pokémon
and does not reintroduce the deferred per-edit History option.

Keep the action lower-emphasis in the Recent Team Events footer. `View Team
history` remains the section-header route, and `Add Pokémon` remains the Team
screen's primary action. Activating `Record Team moment` opens a compact dialog
on wider screens or a sheet on narrow screens with this order:

1. **Active-Team preview:** show the six current Active positions using the
   same occupied, confirmed-empty, and not-recorded vocabulary. The preview is
   read-only and states clearly that Reserve is not included in the V1 snapshot.
2. **Moment title:** one concise required title, such as `Won the Cascade Badge`
   or `Ready for the Pokémon League`.
3. **When:** support an exact date, approximate date, or `Date not recorded`.
   `Today` may be the initial value only when an active or paused Play is saving
   a genuinely current moment; historical and imported flows must not imply
   today's date.
4. **Note:** one optional short memory. Do not add tags, per-member notes,
   participant checkboxes, or Pokémon editing to this flow.

Saving creates one meaningful History event and one event-time snapshot of the
recorded Active lineup. Preserve each captured position, species and form,
nickname, level, shiny state, and the other personal setup supported by the
snapshot contract. Unknown positions remain unknown; a partially recorded
lineup can still be saved when the preview labels it clearly. The event appears
in Recent Team Events only after the event and snapshot write succeeds.

Adapt the entry point to Play state:

- **Active or paused:** use `Record Team moment`; a current date may be
  suggested.
- **Completed:** when no final snapshot exists, prefer `Record final Team`;
  otherwise allow a restrained `Record remembered Team moment` path.
- **Abandoned:** use `Record remembered Team moment` and do not suggest today's
  date.
- **Not started or no recorded Active members:** omit the snapshot action and
  route the user to record the Team first rather than saving an empty moment.
- **Partially recorded Active lineup:** allow the moment with an explicit
  `Partial Team snapshot` explanation; do not turn unknown slots into empty
  slots.

A Story milestone, Hall of Fame, or Play-completion flow may reuse this same
snapshot workflow with the moment context and title prefilled. The generic Team
entry point does not need another moment-type selector. On failure, retain the
entered title, date, and note for retry and do not add an optimistic event.
Focus management, field labels, validation messages, and the snapshot summary
must remain accessible in both the dialog and sheet presentations.

### Add Pokémon Flow Recommendation

**Status: Accepted**

`Add Pokémon` is the Team tab's canonical primary action. It creates one actual
Play-owned roster member and never creates or changes Plan data. Standalone Plan
Detail may later reuse the roster-creation surface with one target prefilled,
but the linked comparison remains automatic and stores no member association. A
planned target never occupies a roster position by itself. The flow never adds
a generic Codex species record. Keep it short enough for use during a Play while
still supporting remembered and imported Teams honestly.

Use one responsive dialog on larger screens and a focused sheet on narrow
screens with two stages:

1. **Choose Pokémon:** search by species, form, or Pokédex number. Results show
   compact artwork, species and non-default form, types, and the most relevant
   game-availability method. Keep the search input visible while results scroll.
2. **Confirm member:** show the selected identity, destination, the small set of
   useful starting details, and validation context before one final add action.
   When Plan initiated the handoff, show its target only as retained read-only
   origin context.

Do not combine the selector and every possible member field into one long form.
The confirmation stage contains:

- **Team position:** Active or Reserve plus the exact available slot. A
  slot-row entry preselects its position; the toolbar entry chooses from the
  remaining positions.
- **Form identity:** required only when more than one game-valid persistent form
  needs a choice. Include selectable fixed identities, such as a supported
  regional form, without implying that the same Pokémon can later change into
  or out of them. Exclude temporary battle forms and explain unavailable forms.
- **Identity details:** optional nickname and level plus one direct shiny
  control. These facts immediately affect roster identity and artwork.
- **Plan origin:** only when the action began from a planned target. Show the
  source target as read-only context. Generic Team Add has no Plan selector,
  and no origin creates a persisted member association.

Gender, nature, ability, held item, origin, ball, moves, personal notes, and
other detailed setup remain in the selected-member editor after creation. On
success, close the flow, select the new roster row, and show its detail panel so
the user can continue only if they want to add more information.

#### Entry Points And Destination

- The Roster Card header's `Add Pokémon` entry has no hidden destination.
  Preselect the first confirmed-empty Active slot, otherwise the first
  confirmed-empty Reserve slot, and keep the destination visible and
  changeable.
- Activating a confirmed-empty row opens the same flow already targeted to that
  exact slot.
- Activating a not-recorded row first offers `Add remembered Pokémon` or
  `Confirm empty`. Choosing the remembered path targets that position and
  changes only that slot from unknown to occupied.
- A future Plan-owned `Add to Team` convenience may reuse the same
  roster-creation surface with its source target and valid actual stage
  prefilled. A Codex handoff may prefill species, form, or Play context only.
  Mainline still validates the destination and owns creation of the actual
  roster member; Plan comparison is recomputed after success.
- Occupied slots are not destinations in the add flow. Use the dedicated
  Replace workflow so the displaced member's state and history remain explicit.

Unknown slots are not counted as open capacity and are never silently chosen by
the toolbar default. The user may deliberately target one through the remembered
path. If all twelve positions are occupied, do not open an impossible form;
explain that the roster is full and route to `Replace a Pokémon` or `Retire a
Pokémon`.

#### Current Addition Versus Remembered Data

V1 does not add a generic History checkbox. Instead, the entry path carries the
meaning of the mutation:

- Adding to a confirmed-empty position in an active or paused Play is the
  dedicated `Pokémon joined the Team` lifecycle path and may create the matching
  History event with the effective date of the addition.
- `Add remembered Pokémon` from an unknown position, or adding information to a
  completed or abandoned Play, updates the recorded roster without pretending
  the Pokémon joined today.
- Correction-only workflows remain separate and never create History.

When the toolbar entry cannot infer the intent safely—for example, an active
import with both confirmed-empty and unknown positions—ask one concise choice:
`New Team member` or `Record existing member`. Do not expose event implementation
language or a persistent `Record this change in History` checkbox.

#### Availability And Reuse Context

Rank Pokémon obtainable in the Play's enabled base game and optional content
first. Keep externally traded and transfer-only Pokémon searchable when the
game's reference data supports them, with explicit `External Trade` or
`Transfer Only` context rather than treating them as invalid. A form that cannot
exist in the selected game is unavailable, not merely warned.

Generic Team search stays focused on actual obtainable Pokémon. It does not show
a `Planned targets` group, compatibility suggestions, or association actions.
When a linked Plan exists, the confirmation may show the informational unplanned
note defined below, but it never changes the search or writes planning data.

##### Plan-Origin Add Convenience

This convenience is deferred until standalone Plan Detail exists. If added, it
may open Team's canonical roster-creation surface with the planned target as
read-only origin and a valid current evolution stage prefilled. It must not add
a target selector to generic Team Add, persist a Plan-member association, or
store `In progress`/`Reached` state. After the Play Pokémon is created, the same
deterministic read-time comparison used by Team decides whether it is an exact,
alternate-form, earlier/later-evolution, branch, or unplanned result.

##### Unplanned Additions

If the selected Pokémon is outside every relevant pending target path, keep it
fully valid and show one concise warning in confirmation:

> This Pokémon isn't in `<Plan name>`. It will be added without changing your
> Plan.

Use the normal `Add Pokémon` confirmation. Do not add an `Update Plan` button,
ask which target to replace, infer a relationship from the chosen roster slot,
or require the user to dismiss a second confirmation. The new Play Pokémon has
no Plan-owned relationship row.

No Plan fact changes merely because an off-plan member joined Active or Reserve.
The Team comparison recomputes automatically without framing the difference as
an error. Editing or unlinking the Plan remains a deliberate Plan-owned action.

Before confirmation, surface applicable reuse-policy conflicts at species,
form, or evolution-family level. Reuse and unusual availability are explainable
warnings unless the Play's explicit rule makes them blocking; occupied slots,
invalid persistent forms, disabled content, ownership, and stale capacity are
hard validation failures.

#### States And Interaction

- Search loading preserves the input and result geometry. No results explains
  the active game/content scope and offers a clear reset without showing
  unrelated Pokémon as valid.
- Reference-data failure shows retry and does not fall back to an unscoped
  species list.
- During save, keep the dialog or sheet open, disable conflicting controls, and
  preserve the selected result and entered details.
- On a stale-slot or capacity conflict, refresh the destination choices and let
  the user recover without reselecting the Pokémon.
- On other failure, retain all user-entered information and provide a clear
  retry path. Do not add an optimistic roster row or History event.

Search results, form controls, availability labels, warnings, and destination
choices require keyboard access, visible focus, accessible names, and meaning
beyond color. Returning from a nested form or Plan explanation must preserve the
selected Pokémon and the user's current confirmation state.

### Edit Pokémon Surface Recommendation

**Status: Accepted**

Keep the selected Pokémon detail panel read-first and scannable. Ordinary
current-record changes use one canonical editor presented as a wide right-side
sheet on desktop and a full-screen sheet on narrow screens. This keeps the Team
workspace and selected member as context where space permits without forcing
every fact into a permanently editable panel.

`Edit details` opens the sheet at the beginning. A restrained edit action beside
Current setup, Moveset, or Origin and personal record opens the same sheet with
that group focused. These are entry points into one editor, not separate forms;
validation, save behavior, permissions, and field availability therefore remain
consistent.

Group the sheet as follows:

1. **Identity:** nickname, level, gender, and shiny state. Species and fixed
   form identity are not ordinary editable fields. A legitimate game-valid
   transition uses `Change form`, while an incorrectly recorded species or form
   uses a deliberate correction path.
2. **Current setup:** game-valid ability, nature, and held item. Omit fields the
   selected game does not support and show `Not recorded` rather than inventing
   a default.
3. **Moveset:** four stable ordered positions with game-aware move selectors.
   Preserve the difference between an unrecorded position and a position the
   user has confirmed is empty.
4. **Origin and personal record:** met location and level, ball, original
   trainer, trainer ID, and notes where supported.

Use one explicit Save and Cancel outcome with a sticky action footer. Preserve
unsaved changes while a nested move, ability, item, location, or form explanation
is open; warn before dismissing a dirty sheet; and connect validation errors to
the affected group. Do not autosave in V1, and do not create separate ability,
nature, item, move, or notes modals that each own their own save cycle.

Keep roster and lifecycle mutations outside the sheet: move between Active and
Reserve, reorder, evolve, change form, replace, and retire. These actions can
affect history, position, identity, game availability, and how Team compares
with Plan, so each needs purpose-specific confirmation and outcome handling.
After the
compact Add Pokémon flow succeeds, select the new member and let the user open
this editor only when they want to record richer information.

Plan authoring remains outside Team and this ordinary-details sheet.
Selected-member detail may show a compact read-only comparison row with `Open
Plan`; no surface manually links or relinks individual members.

All sheet triggers, groups, nested selectors, validation summaries, and sticky
actions require logical keyboard order, visible focus, accessible names, and
focus restoration to the invoking detail action after dismissal.

### Evolve Pokémon Flow Recommendation

**Status: Accepted interaction baseline; visual validation pending**

Use this contract to build the first UI. Reassess its hierarchy, density, copy,
branch-selection treatment, and exceptional ability/date states once the
working dialog and mobile sheet can be reviewed in context. Visual iteration
does not imply changing the Team, History, or Plan ownership rules.

`Evolve` is a dedicated lifecycle action from selected-member detail. It records
what happened to one existing Play Pokémon; it does not create a replacement
row, change roster position, or expose species as an ordinary editable field.
Keep the same `play_pokemon` identity so nickname, shiny state, gender, nature,
origin, ball, held item, moves, notes, and roster slot continue to belong to the
same individual. Evolution writes no Plan data or comparison status.

Use one focused dialog on wider screens and a sheet on narrow screens. Avoid a
multi-step wizard unless the number of valid branches makes selection require a
separate searchable surface. The normal layout is:

1. **Before and after:** persistent artwork, species and non-default form, and
   types for the current identity and selected direct evolution.
2. **Choose evolution:** only direct outcomes supported by the current form and
   selected game's version rules. Each option shows concise method context such
   as level, item, trade, time, location, friendship, known move, or other
   recorded condition. The user records the outcome; Voydex does not ask them
   to prove every condition.
3. **What changes:** resulting species/form and any safely derived ability.
   Read-only Plan context may explain how the choice compares with the target,
   but it is not part of the mutation. Do not add a stat comparison or generic
   Codex description.
4. **Moment details:** optional current level, effective date certainty, and an
   optional short note. Generate the event title from the two identities;
   custom title editing remains in History.

If only one valid outcome exists, preselect it while retaining the visible
preview and confirmation. If several branches exist, show equal option rows or
compact cards; selection changes the preview. Never skip an intermediate stage
or list another evolution-family member that is not a direct valid target for
the selected game and form. Exclude temporary battle forms and disabled
optional-content paths.

Use the recorded level as context rather than forcing it when unknown. A known
level that contradicts a fully modeled hard requirement blocks confirmation;
an unrecorded level or partially modeled special condition remains allowed with
honest context. Surface reuse-rule conflicts before confirmation without
treating a warning-only personal rule as a technical failure.

#### Preserved Details And Ability Handling

Preserve nature, moveset, held item, nickname, gender, shiny state, origin,
ball, personal notes, Active/Reserve position, and the Play Pokémon's stable
identity. Evolution does not open the ordinary details sheet or require the
user to review every carried fact.

When a recorded ability maps unambiguously from its current primary, secondary,
or hidden slot to a valid ability of the evolved form in this game, update it
and show the before-to-after ability in `What changes`. If the value remains
valid unchanged, preserve it. If no safe mapping exists, require the user to
choose a valid result or explicitly use `Not recorded`; never silently carry an
invalid ability into the evolved record. An unrecorded ability remains
unrecorded.

Keep all recorded moves in their ordered positions. Evolution may make new
moves available, but V1 does not turn this lifecycle action into a move-learning
workflow. After success, a lower-emphasis `Edit updated details` route may open
the canonical Pokémon editor for anyone who wants to update ability or moves.

#### History And Correction Intent

`Evolve` means `Record evolution`: it creates one meaningful History event with
before and after event-time identities. It is not a generic History checkbox.
A separate `Correct identity` action handles data entry mistakes or current-state
corrections without producing an event.

- For a playing or paused Play, default `When` to today while keeping it
  editable.
- For completed, abandoned, remembered, or imported history, label the action
  `Record past evolution`. Require an explicit exact, approximate, or
  not-recorded date choice rather than implying today.
- A not-started Play does not offer a current recorded evolution. It may use the
  correction path when the imported current identity was entered incorrectly.

The event title is generated from the two identities. The optional note becomes
event body context; it does not overwrite personal Pokémon notes.

#### Read-Only Plan Comparison

When the current Pokémon is relevant to a linked Plan target, confirmation may
show read-only comparison context:

- an evolution to the exact target explains that it matches the planned target;
- an on-path intermediate explains that it remains on the route to the target;
- another legitimate game evolution remains selectable and explains that it
  leaves the planned path.

These messages do not create, update, unlink, or refresh Plan data. Team derives
its comparison from the latest actual roster and existing lifecycle records.
Do not prompt the user to update the Plan or allow unavailable Plan comparison
data to block a valid Team evolution.

#### Completion And Failure States

On confirmation, current identity, safely resolved ability, optional level, and
before/after History references succeed as one Team-owned outcome. Keep the
current roster row selected, update its artwork and detail, and show a concise
success message. Recent Team Events updates only after the complete write
succeeds. No Plan write participates in this transaction.

Omit `Evolve` when trusted reference data confirms no direct evolution is
available. If evolution data is loading or unavailable, retain the action's
place with a loading, unavailable, or retry explanation so missing data cannot
masquerade as `fully evolved`. A stale identity, branch, game scope, or level
conflict refreshes the affected preview without discarding the user's date or
note. Unavailable Plan context degrades to no comparison and does not block the
write. Any failed write leaves current identity and History unchanged; Team
never attempted a Plan mutation.

Evolution options, method context, warnings, date controls, and confirmation
require keyboard access, visible focus, accessible names, and meaning beyond
color. Return focus to `Evolve` after cancellation and to the updated selected
member after success.

### Move, Reorder, And Swap Contract

**Status: Accepted interaction baseline; visual validation pending**

`Move` manages the current twelve-position roster without creating or deleting
Pokémon. Expose it from selected-member detail and the occupied-row overflow.
The focused dialog or mobile sheet shows the member's current position and all
twelve destinations using the established Active `1`–`6` and Reserve `R1`–`R6`
vocabulary.

Use these destination rules:

- choosing a confirmed-empty position moves the member there;
- choosing an occupied position swaps the two members;
- choosing the current position is a disabled no-op;
- a not-recorded position cannot be used until the user confirms it empty or
  records its occupant;
- pending or unavailable positions remain visible with an explanation but are
  not selectable.

Reordering within Active or Reserve uses the same move-or-swap contract. Drag
and drop may provide a direct desktop convenience, but the explicit destination
surface is the complete keyboard, touch, and assistive-technology path. Do not
add separate reorder modes, arrow-only controls, or a save-all staging state in
V1.

Move, swap, and reorder are quiet current-roster administration. They ask for no
date or note and create no History or Collection evidence. `Record Team moment`
is the deliberate way to preserve a meaningful lineup. Completed and abandoned
Plays may use the same controls to arrange the recorded Final or Last Known Team
as a correction, without pretending the arrangement happened today.

Apply the complete source-and-destination change atomically. After success,
retain selection on the member the user moved, update counts and Active-Team
analysis, and restore focus to its new row. On conflict or failure, keep every
member in the original position and refresh stale slot state. Plan comparison
remains read-only.

### Change Form Flow Recommendation

**Status: Accepted interaction baseline; visual validation pending**

Every current member has a recorded form identity. Separate whether that form
can be selected for the Play from whether this particular Pokémon can change
forms in the selected game:

- **Fixed form identity:** selected when the Pokémon is added, imported, or
  corrected because the individual is inherently in that form. Hisuian
  Growlithe remains Hisuian Growlithe and may later evolve along its valid
  regional evolution path, but it cannot change into Kantonian Growlithe.
- **Changeable form:** the same individual has at least one persistent,
  team-selectable destination reachable from its current form through a
  supported in-game mechanic. Rotom appliance changes are the canonical
  example.

`Change form` records only the second case. It is not an unrestricted form
dropdown and must not infer transitions merely because two forms share a
species or are both available in the game. Resolve valid destinations through
game- and content-scoped directed transitions so a form can be changeable in
one game but fixed or unavailable in another, and so one-way rules remain
possible.

Do not offer regional identities that cannot change into one another, fixed
encounter-, evolution-, size-, gender-, or authenticity-derived identities,
temporary battle transformations, Mega or Gigantamax states, or cosmetic-only
variants excluded by Voydex's reference policy. Fixed forms expose no
form-change action; an incorrect identity uses `Correct record`. If trusted
reference data confirms no outgoing transition, omit the action. If transition
data is unavailable, show an unavailable or retry explanation rather than
guessing.

Use one focused dialog on wider screens and a sheet on narrow screens:

1. **Before and after:** show current and selected artwork, species, form, and
   types with a clear directional relationship.
2. **Choose form:** show only valid destinations with concise game-specific
   method context. A single destination may be preselected; multiple forms use
   equal option rows rather than a generic searchable species picker.
3. **What changes:** explain form, typing, ability, and required held-item
   consequences. Resolve ability safely, or require a valid choice or the
   explicit `Not recorded` value. Apply a required held-item change explicitly;
   do not model bag inventory or item consumption.
4. **Moment details:** ask for effective date certainty and an optional short
   note. Active or paused Plays may suggest today; completed, abandoned, or
   remembered flows use `Record past form change` and never imply today's date.

Preserve the same Play Pokémon, slot, nickname, level, gender, shiny state,
nature, origin, ball, personal notes, and recorded moves. Do not silently change
moves for a form-specific signature move; explain the consequence and offer
`Review moves` after success.

`Record form change` creates one before/after History event so prior form usage
remains available to Collection and reuse evidence. Correcting a wrongly entered
form uses `Correct record` and creates no event. Save current form, any resolved
ability or item consequence, and event-time references atomically. Team never
writes Plan data; relevant Plan comparison is informational only.

### Replace And Retire Flow Recommendation

**Status: Accepted interaction baseline; visual validation pending**

`Replace` and `Retire` both remove a member from a current slot, but they answer
different user intents. Keep them separate and secondary to ordinary `Move`.

#### Replace A Slot

`Replace` means an incoming Pokémon takes the selected Active or Reserve slot.
Keep the outgoing member visible while reusing Add Pokémon's game-aware search
and compact identity confirmation for the incoming member. An existing current
member is handled by Move/Swap instead; a Past member may enter preselected when
Replace was opened from `Return to Team`.

Before confirmation, ask what happens to the outgoing member:

- **Move to Reserve:** recommend this for an outgoing Active member when a
  confirmed-empty Reserve position exists. Let the user choose that position.
  The outgoing member remains current; record only that the incoming Pokémon
  joined the Team.
- **Move to Past Members as Replaced:** use this when the user no longer wants
  the outgoing member in the current twelve, when Reserve has no confirmed
  capacity, or when replacing a Reserve member. Preserve the outgoing member
  with no current slot and record one replacement event containing both
  event-time identities.

Never treat a not-recorded Reserve position as capacity and never discard the
outgoing member implicitly. Keep the incoming destination fixed to the selected
slot in this flow; further arrangement belongs to Move.

Show reuse and availability context for the incoming identity, plus an optional
effective date and note. Active or paused Plays may suggest today; completed,
abandoned, and remembered records use `Record past replacement` language. The
incoming roster state, outgoing destination, and applicable History event are
one atomic outcome. Failure restores the complete previous roster.

#### Retire A Member

`Retire` removes the selected current Pokémon without adding another. The
confirmation explains that its complete record moves to Past Members, its slot
becomes confirmed empty, and it can return later. Show the selected identity,
current position, effective date certainty, and optional note. Use remembered
language for terminal or imported Plays.

Retirement records one meaningful event and preserves the member as `Retired`.
It never deletes the record. If the user only wants the Pokémon out of Active,
route to Move to Reserve; if the roster was entered incorrectly, route to
`Correct record`. Do not allow retirement of an already historical member or
create duplicate retirement events.

Neither Replace nor Retire changes a Plan target. Read-only
comparison may explain the resulting difference after success without adding a
Plan action to either confirmation.

### Past Members And Return To Team Contract

**Status: Accepted interaction baseline; visual validation pending**

Do not place a `Past members` route inside the current Roster Card. When the
focused destination is implemented, it presents a compact list of the Play's
`Retired` and `Replaced` Pokémon with a clear `Back to current Team` action. Do
not add a new Play Hub tab or hide full member records inside the event-only
History experience.

Past Members is uncapped because its rows occupy no current slots. Order members
by their effective leaving event or preserved manual timeline order when
available, with recently left members first. With no reliable event date, use
stable recorded order and honest `Date not recorded` context. Each row shows
last recorded artwork and identity plus `Retired` or `Replaced`; it has no drag
handle or current slot.

Selecting a past member reuses the identity-first detail hierarchy with a clear
Past Member badge and last recorded setup. Replace forward-looking current
actions with `Return to Team`, `View member history`, `Correct record`, `Open in
Codex`, and guarded deletion.

`Return to Team` reactivates the same Play Pokémon rather than creating a new
member. Choose one confirmed-empty Active or Reserve position, clear its past
status, preserve its details and History, and create a concise returned-to-Team
event with effective-date certainty. When all twelve current positions are
occupied, route into Replace with this past member already selected as the
incoming Pokémon; never remove somebody automatically. That compound flow
creates one event whose presentation makes both facts clear—for example,
`Crobat returned to the Team, replacing Noivern`—rather than separate return
and replacement entries for the same moment.

After success, return to Current Team, select the restored member in its new
slot, and update analysis and Recent Team Events. A stale slot or failed event
write leaves the member in Past Members. Return never changes Plan data.

### Correction And Deletion Contract

**Status: Accepted interaction baseline; visual validation pending**

Use three clearly different tools:

- `Edit details` changes ordinary recorded facts such as nickname, level,
  current setup, moves, origin, and notes.
- `Correct record` repairs a wrongly entered species, form, or roster placement
  without claiming that an in-game lifecycle event occurred.
- `Delete Pokémon record` removes a wholly mistaken or duplicate member and is
  the destructive last resort.

`Correct record` is a secondary sheet with an explicit explanation that it
changes Voydex's current truth and creates no History or Collection evidence.
Validate a corrected identity against persistent game-valid species and forms,
resolve or clear an incompatible ability, and flag moves that need review.
Preserve the same Play Pokémon identity and ordinary personal details unless the
user changes them deliberately. If the supposed correction is actually an
evolution, form change, replacement, retirement, or return, route to that named
lifecycle action instead.

Correction does not rewrite existing event-time History. When related events
exist, explain that their captured identity remains unchanged and provide a
`Review member history` route for separate correction. This protects real past
evidence from a current-record edit.

Keep `Delete Pokémon record` in advanced overflow with destructive styling only
inside confirmation. Name the member and the current or past record being
removed. Related History events and snapshots remain preserved as event-time
records and must be managed separately in History; Team never silently deletes
them. Make that consequence visible before confirmation.

No Plan-member relationship blocks deletion because none is persisted. A
successful hard delete removes that member from future automatic comparison
while preserving the authored Plan and separately owned event-time History. A
failed or stale delete changes nothing. Prefer Retire whenever the Pokémon
genuinely belonged to the Play.

## Progress Contract

**Status: Progress Overview, Story, Pokédex, and Collectibles interaction
contracts accepted; visual validation pending**

Progress Overview answers three questions without becoming another checklist:

- `How complete is this Play based on what I chose to track?`
- `What is the state of Story, Pokédex, and Collectibles?`
- `Where should I continue recording?`

Use this hierarchy:

1. **Progress heading and scope summary:** show enabled base/DLC content and the
   groups that currently contribute to completion in one compact line or strip.
   Provide one `Manage completion` route to Settings. Optional content changes
   what is applicable; it is not a fourth progress category.
2. **Overall completion:** show the derived normalized percentage only when the
   contributing groups are sufficiently recorded. Use `Completion not fully
recorded` when missing knowledge makes the result untrustworthy. Never show
   one raw completed/total number that mixes milestones, species, and
   Collectible units.
3. **Active tracking areas:** show Story, Pokédex, and Collectibles as large,
   consistent rows in that stable order. Every row owns its icon and label,
   normalized percentage or honest recording state, one clearly labelled native
   count when useful, one next step, and one `Open` action.
4. **Not tracked:** a supported but disabled Pokédex or Collectible area may
   appear in a quiet secondary group with a route to Settings. Omit a concept
   entirely when the selected game does not support it.

Do not add separate `Log milestone`, `Update Pokédex`, and `Mark collectible`
buttons to the page heading. Do not repeat every row's next step in another
`Next to update` card, or expand completion scope into a large Completion Rules
card. Each area owns its action and detailed workflow.

Do not add Recent Progress Activity in V1. Meaningful Story milestones may enter
History deliberately; routine Pokédex and Collectible updates remain quiet. A
technical update feed would duplicate ownership without helping the player
understand completion.

Progress contains three game-aware areas:

- **Story:** milestones, player decisions, bulk historical completion, and
  optional meaningful snapshots.
- **Pokédex:** game- and Pokédex-scoped seen/caught or applicable progress.
- **Collectibles:** game-scoped collectible definitions and completion.

Routine Pokédex and Collectible updates should not create timeline noise.
Important Story milestones may create meaningful History events and optional
team snapshots.

Completion is derived from recorded progress, selected optional content, and
Play settings. It is not manually stored as the primary truth.

Opening Story, Pokédex, or Collectibles keeps Progress as the active Play
section and enters a route-backed child view. Progress Overview remains the
parent route and appears as `Overview` inside the attached Progress menu. The
primary label remains simply `Progress` on that landing view and becomes a
compound label such as `Progress - Story` on a child route. Do not add a
persistent second tab row.

The Progress parent label always returns to Progress Overview, while the
attached menu enables direct switching between implemented sibling views.
Area-specific selectors such as Story paths, named Pokédexes, and Collectible
groups remain inside their owning view.

State rules:

- a new `not_started` Play may show known zero Story progress;
- imported, active, paused, completed, or abandoned Plays use `Not recorded`
  rather than zero when progress has not been initialized;
- partial groups show the known result and its evidence rather than pretending
  to be complete;
- a failed category read remains visibly unavailable without hiding the other
  categories;
- overall completion stays untrusted until every contributing area has enough
  recorded context.

### Story Information Architecture Contract

**Status: Accepted**

Story is a focused Progress workspace rather than another top-level Play Hub
tab. Use this hierarchy:

1. **Story summary:** show the current or furthest recorded position, the next
   applicable objective when one exists, and normalized Story completion. Do
   not repeat the entire Progress Overview.
2. **Game-aware tracks:** expose Main Story, Postgame, DLC stories, or parallel
   paths only when the selected game defines them. Keep one simple list when it
   does not.
3. **Milestone list:** show an ordered, selectable list with completion state,
   name, concise location or context, milestone type, and restrained decision
   or snapshot cues.
4. **Selected milestone detail:** show description, prerequisites, recorded
   decision, snapshot availability, notes, and the actions that apply to that
   milestone.

Keep the milestone list and selected detail visually distinct. Desktop may hold
them side by side, with the list as the clear selection source and the larger
detail region as the active subject. On narrow screens, keep the list primary
and open the selected milestone in a focused view or sheet with an explicit
return path and restored focus.

Milestone sort order is presentation, not dependency. Use explicit
prerequisites to determine what a milestone depends on, what may be suggested
next, and what a historical catch-up operation would include. Do not assume
that every earlier row is required, and do not use a universal `Complete next`
action for games with nonlinear or parallel paths.

Keep `Bulk complete` as a separate imported-save and historical-catch-up flow.
Do not place its complexity in routine milestone completion. Exact write,
decision, snapshot, History, correction, and bulk-preview behavior follows the
contract below.

### Story Completion And Catch-Up Contract

**Status: Accepted**

Selecting a milestone updates only the detail region. It never records progress
by itself.

For routine completion:

1. Use `Mark complete` as the primary action. When the milestone has no missing
   dependencies or additional context, keep the action direct and quiet.
2. Open a focused completion sheet only when needed for missing prerequisites,
   a decision, an optional note or date, or a deliberate Story moment.
3. If required or story-unlock prerequisites are not recorded, show the exact
   dependency set and recommend completing it with the selected milestone.
   Suggested prerequisites remain optional. Never infer dependencies from
   display order or force the player to invent missing historical progress.
4. Ask for the relevant decision when one exists, while preserving `Not
recorded` as a valid answer for forgotten or imported history.
5. `Mark complete` updates Story progress without creating History. Important
   milestones may also expose `Record story moment`, which deliberately creates
   one meaningful History event and may include an optional snapshot of the
   current Active Team.

An active completion may default its exact completion time to now. Historical
completion never defaults to now, and an unknown date remains valid. Notes are
optional milestone context and do not automatically become History notes.

After success, keep the completed milestone selected, update its state, and
make the next applicable objective visible without moving focus unexpectedly.
A completed milestone exposes `Edit record` and `Mark incomplete`. Marking it
incomplete does not automatically change later milestone rows, decisions, or
History. If a linked Story event exists, disclose it and route to History for
event correction rather than silently deleting or rewriting it.

`Bulk complete` is reserved for existing saves and historical catch-up:

1. Let the player choose the furthest known milestone for each applicable Story
   path. A linear game reduces this to one target.
2. Derive the transitive closure of required and story-unlock prerequisites;
   do not select every display-earlier milestone.
3. Preview exact groups for `Already complete`, `Will complete`, `Excluded`,
   and `Decision not recorded` before confirmation.
4. Keep suggested and optional milestones excluded by default. Never guess a
   decision; allow it to remain unrecorded.
5. Create no History events or Team snapshots in V1. Do not stamp the selected
   milestones with today's date. Bulk completion records completion state with
   unknown dates unless the user later edits a specific milestone.
6. Commit the reviewed set atomically. A stale target, invalid dependency,
   authorization failure, or any other error leaves every proposed row
   unchanged.

After success, return to Story with the furthest selected milestone visible and
the derived next objective refreshed. Bulk catch-up must not become the normal
day-to-day Story interaction.

### Pokédex Browser And Progress Contract

**Status: V1 interaction contract accepted; selector visual validation pending**

Pokédex stays inside the Progress context and presents one named Pokédex scope
at a time. Do not merge overlapping Pokédexes into one raw total. Species
progress belongs to the Play and is shared across every applicable Pokédex that
contains that species.

Use this hierarchy after the named-Pokédex selector:

1. **Active Pokédex summary:** show Caught as the primary native count, Seen as
   secondary context, normalized completion, and whether optional entries
   contribute. Provide one route to the relevant completion settings.
2. **Browser controls:** search by name or number, filter by progress state and
   required/optional status, sort by Pokédex number by default, and switch
   between Grid and List.
3. **Species browser:** use same-sized visual cards in the desktop-default Grid
   and compact rows in the narrow-screen-default List. Preserve the alternate
   view as a user choice.

Every species item uses stable regions for Pokédex number, sprite, name, types,
required/optional status, and one explicit state control. The state is one of
`Missing`, `Seen`, or `Caught`; Caught implies Seen. Selecting Seen from Caught
downgrades it, while selecting Missing clears both. Do not use two independent
checkboxes or toggles that can imply an impossible Caught-but-not-Seen state.

Selecting the Pokémon identity opens its Codex species reference with a clear
return to the Play's current Pokédex context. Status controls update the Play
directly and never create History.

For a new known-zero scope, absent species may render as Missing. For an
imported scope whose coverage has not been initialized, render absent species
as `Not recorded` and offer `Catch up Pokédex`:

- `Record what I know` lets the player mark exact species while leaving every
  unselected species unrecorded;
- `Completed this Pokédex` proposes all entries included by the active
  completion scope as Caught and requires an exact preview;
- neither path accepts only an overall count or stamps invented progress.

After initialization, expose `Mark multiple` as a focused batch sheet. The
player selects Missing, Seen, or Caught as the operation, narrows and selects
exact species, reviews every state change, and confirms one atomic write.
Caught automatically includes Seen. Checkboxes are appropriate only for this
temporary set selection, not as the persistent progress-state control. A stale
selection or any failed species update leaves the whole reviewed batch
unchanged.

The named-Pokédex selector is a primary orientation element. Prototype it as a
full-width horizontal card rail directly beneath the focused Pokédex heading.
Each scope card shows its name, region or content context, concise progress, and
a restrained progress indicator; the active card has clear accent, border, and
background treatment. Keep typical small scope sets visible together on
desktop.

On narrow screens, use an accessible horizontally scrollable and snapping
tablist with a partial next card visible. A Play with one applicable Pokédex
still shows one prominent static identity card. Preserve the selection in the
route. Do not add an `All Pokédexes` pseudo-scope because Progress Overview owns
the aggregate result.

This card rail is provisionally accepted for prototyping. Validate it with
realistic one-, two-, and three-scope games at desktop and mobile widths. It
must keep the active scope obvious, reveal alternatives, avoid excessive
vertical space, and remain subordinate to the species browser. If it fails
those checks, replace or simplify the component while preserving the selector's
prominence.

### Collectibles Workspace Contract

**Status: V1 interaction contract accepted; visual validation pending**

Collectibles is game-aware and appears only when the selected game and enabled
content define supported groups. Use one stable shell while allowing each group
to use the tracking interaction its data requires.

Use this hierarchy:

1. **Collectibles summary:** show normalized completion across active groups,
   the number of applicable groups, and one route to completion settings. Do
   not combine heterogeneous native units into one raw count.
2. **Group navigator:** on desktop, group collectible rows by their real family
   in a left column. Each row shows icon, name, native progress, and whether it
   contributes to completion. Hide the column when only one group applies.
3. **Selected group tracker:** show the selected group's native collected/total
   and remaining counts, percentage, completion context, filters, and the
   interaction appropriate to that group.

On narrow screens, show the group list first and open the selected group in a
focused view with a clear return path and restored focus. Preserve the selected
group in the route. Settings owns group contribution; do not place inclusion
switches among routine progress controls.

For a group with identifiable entries, use a dense location-aware list rather
than cards. Support search by name or location, `All`, `Missing`, `Collected`,
and location filters, plus canonical-order and location sorting. Each row shows
entry identity, location, sub-location, a useful hint, and one direct collected
control. Do not repeat group-level inclusion state on every row.

For an imported group with unknown coverage, offer:

- `Record exact entries`, leaving every unselected entry `Not recorded`;
- `I only know the total`, storing an honest reported total without assigning
  arbitrary entries;
- `Completed this group`, proposing the complete included set for review.

Count-only state may show how many remain, but it cannot claim which locations
are missing. If exact entries are also known, distinguish the reported total
from the individually identified subset, for example `63 collected · 12
identified`. Switching to fully exact tracking requires a deliberate
reconciliation so the same collected unit is never counted twice. A group that
is defined only by quantity uses the same native count tracker without an empty
entry list.

After initialization, `Mark multiple` opens a focused batch sheet. Choose
Collected or Not collected, narrow and select exact entries, preview every
change, and confirm one atomic write. Do not add an immediate `Mark visible
collected` action whose effect depends on a hidden filter. Routine updates and
catch-up never create History. Reward thresholds or unlock guidance may be
considered after V1 rather than expanding this tracker now.

## Linked Team Plan Contract

**Status: V1 automatic comparison implemented and browser-checked**

The Team section owns a focused comparison view for the one Team Plan linked to
the Play. The Play shell and active `Team - Plan` navigation remain visible.
Together they answer:

- `What did I intend to use?`
- `What has actually happened in this Play?`
- `How does the current and former Play Team compare with that intent?`

The authored Plan remains independent and reusable. The actual Team never
rewrites it, and a Play created from a Plan still begins with an empty recorded
roster.

### No Linked Plan

**Status: Accepted future entry; not implemented**

When the Play has no linked Plan, show one calm empty state rather than an empty
comparison list:

- explain that a Plan is an optional intended team and does not populate the
  actual Team;
- offer `Link existing Plan` for owner-scoped Plans with the same game and
  version group;
- offer `Create Plan for this Play` when no suitable Plan exists or the user
  wants a new one;
- make clear that linking a Plan changes no Team member and creates no inferred
  comparison state.

### Linked Plan Information Hierarchy

Use a compact responsive master-detail workspace:

1. **Plan identity:** show Plan name, lifecycle state, following state, found
   target count, exact-match count, and unplanned-member count.
2. **Planned team comparison:** render only the Plan's authored one to six
   ordered targets. Each row reads planned identity, computed status,
   and the automatically matched Play identity.
3. **Focused comparison detail:** on desktop, selecting a row updates a
   persistent panel beside the list. Tablet and phone open the same detail in a
   sheet. It explains identity relation and every optional build field
   specified by the Plan. Unspecified fields are neutral rather than failures.
4. **Plan notes:** show the reusable Plan note below the comparison when present.

Unplanned Play members are summarized by count and a concise tooltip. They are
not inspectable comparison rows and do not prompt the user to rewrite the Plan.

Do not add Recent Plan Activity, a duplicate Team analysis, or a large selected
Pokémon inspector in V1. Plan changes are authored intent rather than a second
History feed, and actual Pokémon detail remains in Team.

### Planned-Member Row

Each occupied row reads horizontally as `Planned target → comparison status →
actual result` on wider screens. Preserve these stable regions:

- slot and target artwork, species, form, and optional role;
- one explicit computed status label with a short explanatory tooltip;
- the automatically matched actual Pokémon's current identity, nickname when
  useful, and Active, Reserve, Retired, or Replaced placement;
- one row action that updates the focused comparison detail.

The row is scannable and has one clear selected state on desktop. V1 comparison
is read-only. Future editing inside the Play must clone the reusable Plan and
relink only this Play before changing authored intent.

### Comparison Language

| Label                        | Meaning                                                                               |
| ---------------------------- | ------------------------------------------------------------------------------------- |
| `Exact match`                | Species, form, and every optional build field specified by the Plan match.            |
| `Build differs`              | Species and form match, but one or more specified optional build fields differ.       |
| `Alternate form`             | The Play uses the planned species in another persistent form.                         |
| `In progress`                | The matched Play Pokémon is earlier on a directed evolution path to the target.       |
| `Evolved beyond plan`        | The matched Play Pokémon evolved beyond the species authored in the Plan.             |
| `Branched evolution`         | The matched Play Pokémon is on another branch in the same evolution family.           |
| `Previously used · retired`  | An existing retired member provides identity-only evidence that the family was used.  |
| `Previously used · replaced` | An existing replaced member provides identity-only evidence that the family was used. |
| `Not found`                  | No existing Play Pokémon belongs to the planned evolution family.                     |

Statuses are computed at read time and do not grade or mutate the Play.

### Automatic Matching And Ownership

Matching is deterministic and one-to-one. Prefer exact species and form, then
alternate form, earlier or later directed evolution, and finally another branch
in the same evolution family. A Play Pokémon can satisfy only one planned row.
Identity quality outranks roster placement; Active then Reserve win ties over
Retired and Replaced.

Active and Reserve members compare species, form, ability, nature, held item,
gender, and planned moves. Level and ball are excluded. Retired and Replaced
members support identity-only lifecycle messaging; build details are not
evaluated. Hard-deleted members are absent even if orphaned event-time evidence
remains.

Editing a reusable Plan from the standalone Plans experience warns when other
Plays are linked. Editing from inside a Play clones the Plan and relinks only
that Play before applying changes.

### Responsive And State Behavior

On narrow screens, each row stacks target, status, and actual result in that
order rather than forcing a horizontally scrolling comparison table. Return
focus to the originating row after the sheet closes. Status labels and roster
placement must never rely on color alone.

Preserve the Plan identity and unaffected rows when comparison or actual-Team
data fails independently. Distinguish no linked Plan, linked empty Plan,
archived Plan, and temporarily unavailable comparison.

## History Contract

**Status: V1 interaction contract accepted; visual validation pending**

History is the Play's personal story and historical record, not a technical
audit log or another progress dashboard. It answers:

- `What happened during this Play?`
- `Which moments do I want to remember?`
- `What did my Pokémon and Team look like at that time?`

Use one full-width journey timeline. Do not add a persistent selected-event
panel, summary-stat cards, or local sub-tabs. The timeline remains visually
dominant; filters, ordering, creation, and event detail support it.

### Information Hierarchy

1. **History heading:** use one primary `Add memory` action for current Plays.
   Completed, abandoned, and imported Plays use `Add remembered event`.
2. **Timeline controls:** provide search, one category filter, a
   Highlights-only control, and newest-first or oldest-first ordering in one
   compact toolbar. `All History`, `Story`, `Team`, and `Memories` are filters,
   not another tab bar.
3. **Journey timeline:** render one continuous sequence of meaningful entries.
   Use incremental loading when needed without changing filters, order, focus,
   or the selected event.

Do not add a permanent count, date-range summary, achievement score, or other
dashboard above the timeline. Those values do not help the user understand the
recorded journey.

### Eligible History

History may contain:

- deliberately recorded Story moments and important path decisions;
- recorded Pokémon additions, evolutions, persistent form changes,
  replacements, retirements, and returns;
- deliberate current, remembered, or final Team moments;
- Hall of Fame and final-Team records;
- personal memories and journal entries;
- explicitly recorded Play completion or abandonment;
- a complete Pokédex scope, Collectible group, or other major progress
  achievement only when the user deliberately chooses to preserve it.

Routine Pokédex or Collectible updates, ordinary Story completion, Active or
Reserve movement, reorder and swap, moveset or detail edits, corrections,
Settings changes, failed actions, technical records, and background reads never
create History. Pausing and resuming a Play also remain quiet unless the user
adds a memory about them.

### Timeline Row

Use one consistent row pattern with content that adapts to the event:

- event-type icon and accessible label;
- exact, approximate, or explicitly unrecorded date;
- one clear title and concise note preview;
- event-time Pokémon identity when relevant;
- a before-and-after pair for evolution, replacement, or recorded form change;
- a compact six-position preview for a Team moment, final Team, or Hall of Fame;
- a visible Highlight marker when the entry is pinned.

Show event-time species, form, nickname, level, artwork, and placement rather
than the Pokémon's current identity. The row is one keyboard-operable entry to
the event-detail sheet. Do not expose edit and delete menus on every default
row or expand all snapshot details inline.

### Event Detail

Selecting a row opens a wide contextual sheet on desktop and a full-screen sheet
on narrow screens. It may show:

- complete title, memory, date certainty, and journey position;
- user-facing Story, Team, Memory, or Play context rather than raw origin IDs;
- related event-time Pokémon and before/after identity;
- the full six-position Team snapshot with confirmed-empty and not-recorded
  states preserved;
- linked Story milestone or owning Team action when applicable;
- `Add to Highlights` or `Remove from Highlights`;
- state-appropriate actions for `Edit entry`, `Correct recorded details`, and
  `Delete entry`.

Closing returns focus to the originating row and preserves search, filters,
order, pagination, and scroll position. A direct event route is not required
for V1; the sheet owns the focused detail unless later sharing requirements
prove a route useful.

### Add Memory And Historical Catch-Up

Keep the manual entry flow deliberately small:

1. **Title:** concise and required.
2. **When:** choose Exact, Approximate, or `Date not recorded`. Exact uses a
   calendar date; Approximate supports a useful partial period such as a month
   and year or year only.
3. **Memory:** one optional long-form note.
4. **Related Pokémon:** optional collapsed context, limited to Pokémon that
   actually belonged to this Play. Do not let a free reference mention become
   false Team usage or Collection evidence.
5. **Journey position:** when the date cannot place the entry reliably, choose
   the beginning, after an existing event, or the end of the recorded journey.

Do not add a Team-snapshot checkbox, technical event type, origin selector,
tags, status controls, or a Highlight checkbox to the base memory form.
`Record Team moment` remains the dedicated snapshot workflow, and Highlights
remain an event action after creation.

V1 does not add a separate bulk History importer. Completed, abandoned, and
imported Plays use `Add remembered event`, default away from today's date, and
offer `Save and add another` after success. This supports practical catch-up
without turning History into another setup wizard.

Related Pokémon selection uses existing Play Pokémon, including Past Members.
A memory may still mention any other Pokémon in free text, but V1 does not
attach arbitrary reference Pokémon because event references also inform usage
history.

### Journey Ordering

One canonical journey sequence owns ordering even when dates are incomplete:

- current recorded events append naturally;
- an exact or approximate historical date proposes the appropriate journey
  position and previews it before save;
- an unknown date requires an explicit journey position when other entries
  exist;
- default History presentation is newest first, with an oldest-first option
  for reading the adventure from the beginning;
- `Arrange timeline` is a low-frequency mode with move-up, move-down, and
  keyboard-operable ordering rather than drag-only behavior;
- database creation time never determines perceived recency.

Known date labels remain attached to the event even when the user deliberately
adjusts its journey order. Approximate and unknown events never receive a false
exact timestamp merely to make sorting easier.

### Highlights

Use the existing pinned concept as the user-facing `Highlight`. Adding an entry
to Highlights does not move or duplicate it in the canonical timeline. It adds
one visible marker and makes the entry available through the Highlights-only
filter. Recent History remains based on effective journey recency rather than
being replaced by old highlighted moments.

### Editing, Correction, And Deletion

Manual memories may edit title, note, date certainty, journey position, and
related existing Play Pokémon. Structured Story and Team events may edit their
narrative title, note, date certainty, journey position, and Highlight state
without changing the fact recorded by the owning action.

`Correct recorded details` is a separate guarded History workflow for wrong
event-time species, form, nickname, level, before/after identity, placement, or
snapshot evidence. It changes only historical evidence. It never rewrites the
current Pokémon, Team placement, Story progress, Plan, or Collection source
facts outside the corrected event's derived consequences.

Deleting an entry removes that History event and its attached Pokémon refs and
snapshots only after a consequence-aware confirmation. It does not reverse an
evolution, remove a current or Past Member, mark a Story milestone incomplete,
rewrite a Plan, or change current progress. A milestone-linked or
structured event must explain that its underlying Story or Team fact remains.

### State And Responsive Rules

- A genuinely new Play shows `No history yet` and may offer `Add first memory`.
- An imported or historical Play with no Voydex events shows `No history
recorded in Voydex`; never imply that nothing happened in the original save.
- An empty filter result offers `Clear filters` without replacing the complete
  History empty state.
- A failed read preserves the page and exposes retry rather than showing an
  empty timeline.
- A recoverable create or edit failure retains entered data, date certainty,
  context, and intended journey position.
- A new or changed event appears only after its event, refs, and snapshot write
  succeeds atomically.

On narrow screens, stack row date, title, context, artwork, and snapshot preview
without compressing them into a horizontal table. Collapse secondary controls
into an accessible filter surface when needed, keep the primary add action
visible, and preserve non-color event and Highlight meaning.

## Settings Contract

**Status: Information architecture, General, Completion & Tracking, and Rules &
Tags accepted; Play Status & Management workflow in progress**

Settings owns lower-frequency configuration rather than filling Overview with
editing controls:

- name and metadata;
- lifecycle and archive state;
- trainer, platform, dates, playtime, and notes;
- tags and rules;
- optional content scope;
- whether Pokédex or Collectible tracking is enabled or contributes to
  completion;
- optional Pokédex scope and entry behavior;
- delete or other destructive Play-level actions.

### Settings Workspace

Use one Settings workspace rather than one long undifferentiated form. On
desktop, use a compact local section rail beside one focused section. On narrow
screens, replace the rail with an accessible section selector. These are local
Settings sections, not additional Play Hub tabs or separate V1 routes:

1. **General:** read-only game identity, Play name, trainer name, platform,
   started and completed dates, playtime, and durable Play notes.
2. **Completion & Tracking:** current goal summary, optional-content scope,
   Story baseline, named Pokédex scope and optional-entry behavior, and
   applicable Collectible groups.
3. **Rules & Tags:** gameplay constraints and organizational labels remain
   visually and semantically distinct.
4. **Play Status & Management:** recorded-status correction, archive and
   restore, and destructive Play deletion.

Game identity is read-only in V1. Changing the owning game or version scope
would invalidate too many Team, Progress, availability, and Plan facts; the
user creates another Play instead.

### Save And Navigation Behavior

Save one section at a time. When a section becomes dirty, show a restrained
sticky `Cancel` and `Save changes` action region. Do not autosave consequential
completion, scope, lifecycle, archive, or destructive choices. Moving to
another Settings section or leaving the Play must warn about unsaved changes.
A recoverable failure retains every entered value and explains which section
was not saved.

Recorded-status correction, archive, restore, and delete remain explicit
actions rather than part of a global `Save all` form. Use consequence-aware
confirmation for terminal or destructive actions.

### General Contract

**Status: V1 interaction contract accepted; visual validation pending**

Merge durable Play notes into General rather than keeping a nearly empty Notes
section. Use one readable form with this hierarchy:

1. **Game identity:** show cover, game name, version context, and other compact
   identity as read-only information. V1 never presents a change-game control.
2. **Play identity:** required Play name and optional trainer name.
3. **Platform:** prefer platforms explicitly mapped to the game. Offer `Other`
   only as a deliberate path to one custom platform name; never submit both a
   reference platform and custom value.
4. **Dates:** optional started and completed date knowledge with Exact,
   Approximate, or `Not recorded` certainty.
5. **Playtime:** optional cumulative hours and minutes, stored as one
   nonnegative duration. Approximate values are allowed without adding another
   precision control.
6. **Play notes:** one plain multiline field for durable overall context. V1
   does not expose the deferred next-session bookmark or a second notes field.

Exact dates use a calendar date. Approximate dates accept a meaningful partial
period such as month and year or year only. `Not recorded` preserves genuine
unknown knowledge instead of inventing a date. A currently Completed Play shows
its completion date knowledge as `Completed`; after a normal Reopen, an existing
value remains available as `Previously completed`. Started date appears after
the Play has started. General corrects date knowledge later but never changes
lifecycle, decides that a completion was false, or creates History implicitly.

When both dates have comparable known ranges, completion cannot precede the
start. Date validation must respect precision instead of coercing a year or
month into a false exact day. Playtime accepts an hours-and-minutes input and
formats the stored duration consistently throughout the app.

Save every General value and its date certainty as one section-scoped result.
Inline validation keeps focus near the relevant field. A stale or failed save
retains the form, preserves the read-only game identity, and does not partially
update notes, dates, platform, or identity.

### Rules And Tags Contract

**Status: V1 interaction contract accepted; visual validation pending**

Keep one Settings section with two clearly separated vertical areas. Rules
describe how the Play is being played; Tags organize it for browsing and
filtering. Rules appear first because they can influence contextual warnings,
but neither area should visually absorb the other.

#### Applied Rules

Show the Play's applied rules as compact rows. Each row includes:

- rule name and concise description;
- category such as Pokémon Reuse, Team Composition, Encounter, Difficulty, or
  Custom;
- the configured Play-specific value when one exists, such as `Water types
only`;
- an explicit capability label: `Voydex can check this` or `Recorded only`;
- focused edit and detach actions.

`Voydex can check this` means the app can evaluate the rule from supported
recorded facts and surface an explainable warning. V1 rule checks never
hard-block Team or Plan actions: a player may intentionally break a personal
challenge, and imported records may contain legitimate exceptions. `Recorded
only` means Voydex preserves and displays the rule but cannot validate it.

`Add rule` opens a focused sheet. Search and category groups cover recommended
predefined rules and the user's reusable custom-rule library. Choose the rule
before showing only the configuration controls that apply to it; do not expose
one generic JSON-like rule form or a long wall of toggles.

Predefined rule definitions are product-owned and immutable. Their supported
Play-specific configuration may be edited locally. A user-authored rule is a
reusable shared definition, while changing this Play's configuration remains
local. V1 Play Settings may create, attach, configure, and detach a custom rule,
but it does not rename or delete an existing shared definition. Detaching a
rule from this Play never deletes it. Rules and rule changes do not create
History events.

The V1 app catalogue owns which shipped predefined rules Voydex can check and
the supported configuration for each one. User-authored custom rules are
`Recorded only`. Do not add generalized capability columns or database-driven
form schemas solely to make this catalogue more extensible in V1.

#### Tags

Use a searchable multi-select with wrapping text-labelled chips. The user may
attach an existing reusable tag or stage a new tag with a required name and an
optional accessible color token. Color supports recognition but never carries
the label or state by itself.

Tags are organizational only. They support browse and filter experiences but
do not affect completion, rule checks, Team behavior, or History. Removing a
tag from this Play detaches it only. V1 Play Settings does not rename or delete
the reusable Tag definition because the same Tag may belong to Plays, Plans, or
Play Pokémon; shared Tag administration belongs to a later version.

#### Save, Conflict, And Responsive Behavior

Stage rule attachments, Play-specific configuration, tag attachments, and any
new reusable rule or tag until `Save changes`. Save the complete Rules & Tags
section atomically so Cancel never leaves an orphan definition or a partial
attachment. Reuse the smallest Settings mutation needed for that coherent save
rather than introducing a broader rule or tag administration model.

If a staged name duplicates an existing reusable rule or tag, offer the
existing item or let the user choose another name. A stale attachment or failed
section save preserves every local choice and explains what must be reviewed
before retrying. On narrow screens, stack rule content and actions, allow chips
to wrap, and never introduce horizontal page scrolling.

### Play Status And Management Contract

**Status: V1 functional contract accepted; visual validation pending**

Do not repeat routine status-transition buttons inside Settings because the
persistent Play Header remains visible on the Settings tab. This section owns
the lower-frequency Play-record operations:

- show the current recorded status and a concise explanation of its meaning;
- `Correct recorded status` for an imported or mistakenly recorded state;
- Archive and Restore;
- permanent Delete.

Correction is a focused consequence-aware flow, not a bare status dropdown. It
must distinguish correcting recorded truth from progressing through ordinary
Play status actions. Archive and Delete never masquerade as lifecycle
transitions.

Lifecycle status describes the Play; it does not lock Team, Progress, History,
or linked Plan editing. A Completed or Abandoned Play remains fully editable, and
marking a Play completed never marks its recorded Progress as 100 percent.

#### Routine Transition Contract

Use lightweight interaction proportional to the consequence. Every transition
is one owner-scoped atomic result; a stale or failed mutation leaves the prior
status and dates unchanged and retains any open sheet values.

| Action                       | Interaction                                                                             | Date behavior                                                                                                | Result                                                                       |
| ---------------------------- | --------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------- |
| `Start Play`                 | Compact confirmation sheet                                                              | Started date defaults to Exact Today; user may choose another Exact date, Approximate, or `Not recorded`     | Status becomes Playing; Progress and History remain unchanged                |
| `Record as completed`        | Historical-completion sheet from Not started                                            | Started date is optional; completion defaults to `Not recorded`; both support Exact or Approximate knowledge | Status becomes Completed without inventing when the historical Play happened |
| `Pause Play` / `Resume Play` | Immediate quiet action                                                                  | No date changes                                                                                              | Only status changes                                                          |
| `Mark completed`             | Focused completion sheet                                                                | Completion defaults to Exact Today; user may choose another Exact date, Approximate, or `Not recorded`       | Status becomes Completed; recorded Progress is not changed                   |
| `Abandon Play`               | Concise confirmation explaining that data remains editable and the Play can be reopened | No new date; preserve any earlier historical completion date                                                 | Status becomes Abandoned without changing Progress or creating History       |
| `Reopen as playing`          | Immediate quiet action with clear success feedback                                      | Preserve started date and any recorded historical completion date                                            | Status becomes Playing without changing Progress or creating History         |

`Today` uses the user's local calendar date and is always an editable default,
never a hidden write. A completion percentage below 100 percent or still
unknown produces the calm explanation `This changes Play status only`; it does
not block completion or imply that Progress will be filled in.

After successful completion, offer at most one contextual secondary handoff.
Prioritize `Record final team` when no suitable final-team moment exists;
otherwise offer `Add a memory`. Neither handoff runs automatically, and
dismissing it leaves the completed status intact.

Archive remains reversible and separate from lifecycle. Archiving removes the
Play from normal browse results and returns the user to Plays; an Archived
filter owns restoration. Delete requires typed-name confirmation and explains
that Play-owned Team, Progress, and History data will be removed while an
independently reusable Team Plan remains.

A normal `Reopen as playing` preserves any recorded completion date as
historical knowledge and labels it `Previously completed on ...` wherever it is
shown. The transition does not create History or rewrite Progress. `Correct
recorded status` is the distinct route for a completion recorded by mistake;
its consequence review explicitly clears the false completion date when the
corrected status is applied.

### Completion And Tracking Contract

**Status: V1 interaction contract accepted; visual validation pending**

Lead with a readable current-goal summary rather than raw switches. It names
the Story paths, Pokédexes, optional-entry policy, and Collectible groups that
currently define completion, shows the percentage under that definition when
progress is known, and offers a secondary `Restore recommended goal` action.
The recommendation is game-aware and always passes through the same consequence
preview before replacing custom choices.

#### Optional Content

Show only optional-content scopes that apply to the Play's game. Each scope is
an enabled or disabled content card rather than another completion checkbox.
Enabling a scope makes its Story paths, Pokédexes, Collectibles, Pokémon
availability, and other reference context available for the Play. Resolve and
explain required content dependencies. Enabling content does not silently make
every new tracker contribute to completion.

Disabling optional content never deletes Team, Progress, History, or Plan
evidence already recorded through it. The consequence preview explains which
active trackers will be hidden or stop contributing and that re-enabling the
scope restores their recorded data.

#### Tracking States

Use one consistent state language for configurable paths and scopes instead of
separate tracking and completion checkboxes:

| State                      | Meaning                                                                        |
| -------------------------- | ------------------------------------------------------------------------------ |
| `Counts toward completion` | The tracker remains visible and contributes to its top-level group.            |
| `Track only`               | The tracker remains visible and usable but does not affect overall completion. |
| `Not tracked`              | The tracker leaves normal Progress views while recorded data is preserved.     |

Use segmented or radio-group controls on wider layouts and an accessible
single-choice control on narrow screens. Never communicate the states through
color alone.

#### Story

Main Story is always tracked and always counts toward completion. It is shown
as a locked baseline with a short explanation rather than as a disabled-looking
control. Applicable Postgame and enabled optional-content Story paths use the
three configurable states. A disabled content scope removes its paths from the
active configuration without deleting prior progress.

#### Pokédex

Configure every meaningful named Pokédex independently with the same three
states. Browse-only local subsections covered by one aggregate completion scope
inherit that parent scope and do not become duplicate settings rows.

Each tracked Pokédex also defines its local requirement as source-required
entries only or source-required plus optional entries. When reference data can
name honest optional groups, such as Mythical Pokémon, present those groups
instead of hundreds of species checkboxes. Do not invent a named group from one
generic optional flag. Species progress remains shared across overlapping
Pokédexes while each scope keeps its own denominator and contribution choice.

#### Collectibles

Show every applicable Collectible group independently with the same three
states. Omit the entire area when the game has no supported Collectibles. Keep
each group's interaction mode and native count in its focused tracker; Settings
owns only whether the group is tracked and whether it contributes.

#### Calculation And Save Preview

The accepted normalization model remains unchanged. Contributing child tracks
normalize within Story, Pokédex, or Collectibles, then the contributing
top-level groups are weighted equally. `Track only` and `Not tracked` content do
not affect overall completion.

Before save, preview:

- the goal summary before and after;
- trackers that become visible, hidden, contributing, or track-only;
- optional-content dependencies being enabled or disabled;
- the resulting percentage when all required knowledge is available;
- `Progress not recorded` rather than a false zero or invented percentage when
  imported progress remains unknown;
- a clear assurance that recorded progress is preserved.

Apply the reviewed configuration atomically. A failed or stale save retains the
user's choices and current goal, explains the conflict, and never leaves a
partial completion definition.

## Summary Outputs

The Play Hub must provide stable summaries for higher-level surfaces.

### Plays Browse Needs

- Play name and game identity;
- lifecycle and archive state;
- trainer or personalized identity when useful;
- started/completed context;
- concise current progress/completion context;
- current team preview when space supports it;
- tags or rules needed for filtering;
- one clear open/continue action.

### Dashboard Needs

- active and recent Plays;
- a continue destination;
- the most useful next action;
- recent meaningful activity;
- concise team and progress context;
- signals from future Plans when no active Play is the priority.

Dashboard and Plays Browse may present different projections of the same Play;
they should not invent independent status or completion meanings.

## Existing In-Game Save Catch-Up

**Status: Accepted creation direction**

A user may begin using Voydex halfway through an active game save. Creating the
Voydex Play must support initializing it at the user's current point rather than
pretending the adventure starts empty or treating it as a completed historical
record.

The creation modal should use progressive disclosure rather than being either
one tiny form or a complete Play setup wizard.

### Step 1 — Play Details

1. select the game;
2. enter or accept a suggested Play name;
3. select the current lifecycle: `not_started`, `playing`, `paused`, `completed`,
   or `abandoned`.

### Step 2 — Completion Goal

Completion settings belong near creation because they define what the Play's
percentage and `complete` state mean. This step should initially show one clear,
game-aware recommendation and a concise summary. The user can accept it without
opening every setting or choose `Customize completion`.

Customization should reveal only options applicable to the selected game:

- enabled optional-content scopes, such as DLC;
- whether applicable Postgame or optional-content Story paths contribute, are
  tracked only, or are not tracked;
- which main, regional, DLC, National, or special Pokédex scopes contribute,
  are tracked only, or are not tracked;
- whether optional Pokédex entries or groups, such as Mythical Pokémon,
  contribute;
- which applicable Collectible groups contribute, are tracked only, or are not
  tracked.

Main Story remains part of the base Play contract. Optional completion areas
should default explicitly rather than being inferred from whether the user has
entered progress. The chosen definition remains editable later in Play
Settings.

After these two steps, create the Play and enter its Overview.

Do not ask for Team members, exact Story position, Pokédex species progress,
individual Collectible progress, rules, dates, playtime, or remembered History
inside creation. Those concepts belong to their owning Play areas, where the
user has more context and can use the correct interaction without blocking
creation.

Contextual entry points may prefill the same minimal modal:

- creating from a game page prefills the game;
- creating from a Team Plan shows that Plan as linked context rather than adding
  a generic Plan selector;
- other future handoffs may prefill known context without adding more required
  fields.

After creation, the Play Header may show compact setup guidance in its adaptive
action region. It routes to the owning areas instead of becoming another
wizard:

- Team for current or remembered Pokémon;
- Progress → Story for the current or furthest known position;
- Progress → Pokédex for scope and species progress;
- Progress → Collectibles for applicable groups and progress;
- Plan for linking or reviewing a focused Team Plan;
- History for memories and meaningful past moments;
- Settings for metadata, completion definition, tracking choices, content scope,
  and lifecycle changes.

The recommendation should adapt to lifecycle and evolve as the relevant
information is added. Its state should be derived from the Play where possible;
do not introduce a separate persistent catch-up system unless later UX evidence
shows that dismissal or manual task completion must be remembered.

### In-Play Setup Interaction Patterns

- **Team:** show actual active and reserve roster slots. `Add Pokémon` opens a
  searchable, game-aware Pokémon picker with no Plan controls. A quiet note may
  explain that an off-plan addition leaves the Plan unchanged. Planned targets
  enter the roster only through Plan's explicit `Add to Team` handoff; they are
  not presented as Team checkboxes, suggestions, or link actions.
- **Story:** ask for the current known milestone or position. Infer earlier
  required milestones, show the proposed completion summary, and let the user
  review exceptions instead of checking every prior milestone individually.
- **Pokédex scope:** derive applicable Pokédexes from the selected game and
  optional-content scope. Present each Pokédex as a named tracking scope with
  its size and inclusion state. Do not mix choosing which Pokédexes are tracked
  with marking individual species progress.
- **Pokédex progress:** use a dedicated searchable species tracker with the
  applicable states, such as unrecorded, seen, and caught. Support deliberate
  bulk actions and filters; do not render hundreds of Pokémon as a checkbox
  form.
- **Collectible scope:** derive applicable collectible groups from the game and
  optional-content scope. Show groups by their real identity and tracking mode,
  then let users include, exclude, or open a group rather than presenting an
  undifferentiated checkbox list.
- **Collectible progress:** use the interaction required by the group's
  definition—for example individual entries, a quantity/count, or ordered
  milestones—rather than assuming every collectible is binary.
- **History:** offer focused actions for remembered milestones, Hall of Fame,
  final-team moments, or a freeform memory. Do not ask the user to reconstruct a
  complete event timeline.

Checkboxes remain appropriate only for genuinely independent binary
preferences. Use search/selectors for entities, radio or segmented choices for
one-of-many states, switches for enable/disable settings, task rows for
navigation, and dedicated trackers for large progress sets.

Pokédex catch-up requires dedicated design. The accepted data contract tracks
seen/caught state per species, so entering only an overall in-game total would
not identify which species contributed to that total. Possible exact workflows
include status-based species rows, search/filter-assisted selection, and
explicit bulk reconciliation actions such as `mark all caught, then remove
missing`. Do not invent a summary-only database model until the later design and
database audit determine how it can coexist with species-level truth.

## Cross-Cutting States

Detailed design must cover:

- newly created empty Play;
- active Play with partial data;
- completed historical import with sparse dates or events;
- paused or abandoned Play;
- Play without a linked Plan;
- tracking areas disabled or not applicable to the selected game;
- optional content enabled or excluded;
- loading, partial-read, empty, validation, conflict, permission, and failure
  states;
- archive and destructive-action confirmation.

## Data And Database Impact

The current product and ownership contracts describe the intended sources of
truth. Screen-derived requirements and the implementation evidence inspected
during design are recorded in the shared data matrix and gap register. Confirmed
gaps remain deferred to the later database pass; this interaction contract does
not authorize schema, seed, or production-data changes.

## Questions For Visual Validation

1. Validate when the Play Header action region should visually move from setup
   guidance to a normal Play-wide next action while keeping the accepted
   data-derived priority model.
2. Validate whether Overview's routing actions are sufficient before adding any
   inline editing that could duplicate Team, Progress, History, or Settings.
