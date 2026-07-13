# V1 Mainline Play Functional Blueprint

This document defines the functional structure of a Mainline Play and Play Hub
before Dashboard, Plays Browse, or detailed visual composition is designed. It
captures accepted behavior, screen responsibilities, summary outputs, and open
questions without treating the current partial UI as a constraint.

## Current Status

**Status: Functional blueprint in progress; visual design deferred**

Use an inside-out product sequence and an outside-in visual sequence:

1. define what a Play contains and what each Hub area does;
2. derive the summaries needed by Plays Browse and Dashboard;
3. visually establish the system through Dashboard and Plays Browse;
4. apply that system to the detailed Play Hub and workflows.

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
the workspace. The Play Hub owns six primary areas.

## Hub Areas

| Area     | Primary responsibility                                                 | Typical outputs and actions                                                                                                 |
| -------- | ---------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------- |
| Overview | Orient the user and surface the next useful action                     | Journey status, current team preview, applicable progress summaries, recent meaningful history, links into mature workflows |
| Team     | Manage the current roster and Pokémon lifecycle                        | Active/reserve ordering, add, edit, evolve, retire, replace, correction versus recorded event, team analysis when supported |
| Progress | Understand and update completion-related tracks                        | Progress summary plus entry to Story, Pokédex, and Collectibles                                                             |
| Plan     | Compare the current Play with its one focused linked Team Plan         | Planned targets, actual member links, reached/skipped state, availability and reuse conflicts                               |
| History  | Preserve and review the user-facing story of the Play                  | Journal entries, meaningful events, milestones, snapshots, Hall of Fame, imported history                                   |
| Settings | Manage Play metadata, lifecycle, rules, scope, and destructive actions | Rename, dates, platform, status, optional content, tracking/completion settings, archive, delete                            |

The visible tab is named `Plan`, singular. Contextual deep routes may be added
when a mature workflow benefits from a stable URL, while remaining visibly part
of the same Play workspace.

## Overview Contract

**Status: Accepted baseline; detailed actions pending**

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
| **Current Team**     | Who is with me?              | Six fixed state-aware active slots, optional reserve count, and a compact linked-Plan comparison when one exists                                           | Manage Team                                   | Use explicit confirmed-empty or not-recorded slots; never infer an empty in-game team from missing data |
| **Progress Summary** | How much have I completed?   | Stable Story, Pokédex, and Collectibles group rows with normalized percentages; no named child tracks, raw group counts, or duplicate overall header score | Open Progress or the relevant detailed area   | Distinguish `Not recorded` from known zero; omit optional groups that are disabled or not applicable    |
| **Recent History**   | What happened most recently? | The latest three to five meaningful milestones, team changes, memories, snapshots, or journal entries in reverse chronological order                       | View History or add a memory when appropriate | Compact `No history recorded yet` state; routine Pokédex and Collectible updates do not create noise    |

Overview is read-first. Each section may expose one clear route or invoke the
same canonical workflow owned by its destination, but it should not contain a
second implementation of Team, Progress, or History editing.

Do not add a permanent fifth card for Plan. When a focused Plan is linked, show
a small comparison inside Current Team—for example, planned members reached and
a `Compare with Plan` route. When no Plan is linked, omit that row rather than
showing a large empty Plan card. A contextually useful `Link a Plan` action may
still appear in the Play Header's Next Step region.

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
4. **Linked Plan context:** when one focused Team Plan is linked, show its name
   and a compact reached/target summary with `Compare with Plan`. Planned
   Pokémon never occupy actual Team slots. Omit the row when no Plan is linked.
5. **Team route:** provide one lower-emphasis `Open Team` or `Manage Team`
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

Selecting a row opens that event in History, or the closest stable History
destination until event detail exists. The section has one lower-emphasis
`Open History` or `View all` action. Its empty state may offer `Add first
memory`, but it must not repeat a primary action already promoted in the Play
Header.

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

The Play Header above the tabs is one coherent top section. On desktop it uses:

- **left:** game cover art;
- **center:** stable Play identity, game and lifecycle context, meaningful known
  metadata, and concise global completion or challenge context;
- **right:** an adaptive, Play-wide Next Step action region derived from
  lifecycle and what the Play already contains.

The right region contains one primary action and no more than two secondary
actions. It is contextual guidance, not a second creation form. Because the
Play Header belongs to the shared Hub shell, its actions must remain useful
across every tab. Actions specific to Team, Progress, Plan, History, or Settings
remain inside their owning area.

On smaller screens, the action region stacks within the same Play Header after
the identity and context, before the tabs. It must not become a separate banner
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

**Status: Accepted baseline; detailed workflow pending**

- Current roster capacity is six active plus six reserve Pokémon.
- Active uses slots 1–6; reserve uses slots 7–12.
- Retired and replaced Pokémon remain historical but occupy no current slot.
- Team actions distinguish corrections from recorded in-game changes.
- Recorded additions, evolutions, retirements, replacements, and final-team
  moments can create History and Collection evidence.
- Validation covers ownership, roster capacity, reuse policy, game
  availability, form validity, and optional content scope.

### Team Information Architecture Recommendation

**Status: Provisional pending review**

Make Team a roster-first workspace. Its first job is to answer `Who is on this
Play, where are they now, and what can I do with them?` before presenting
analysis, history, or reference detail.

Use this hierarchy:

1. **Roster toolbar:** show concise active and reserve capacity plus one
   canonical `Add Pokémon` action. If the Play Header is already recommending
   this action, its route should hand the user into the Team workflow rather
   than creating two competing primary actions in the same view.
2. **Active Team:** always show six fixed slots in order. Occupied,
   confirmed-empty, and not-recorded states use the same geometry and state
   vocabulary established by Overview, with richer member context where useful.
3. **Reserve:** show six fixed slots in a separate section directly after the
   active lineup. Keep it visible by default instead of hiding it behind an
   Active/Reserve toggle, because moving Pokémon between the two groups is a
   core roster task.
4. **Linked Plan context:** when one focused Plan is linked, show a compact
   comparison and route near the roster. Planned Pokémon remain suggestions or
   link targets and never occupy actual roster slots. Omit this context when no
   Plan is linked rather than adding a large empty card.
5. **Team Insights:** place trustworthy strengths, weaknesses, coverage, and
   other analysis after the roster as secondary information. It must not
   compete with roster management or appear until the product has an explicit,
   testable analysis model.

Use one shared detailed roster-slot component for all twelve positions. The
full Team variant may expose more identity context than the compact Overview
variant, but all detailed slots retain the same dimensions and internal
structure. Selecting an occupied slot opens the Play-owned member experience;
selecting an empty slot opens the game-aware picker already targeted to that
slot. A not-recorded slot first asks the user to record or confirm its state
rather than assuming it is empty.

Member lifecycle actions—add, evolve, replace, retire, move, and correct—belong
to the selected member or slot workflow. Ask whether a change is a correction
or a recorded in-game event only when that distinction affects History and
Collection; do not require a persistent global mode. Reordering and moving
members must have explicit keyboard-accessible controls. Drag and drop may be
added later as a convenience, but cannot be the only method.

Do not put complete movesets, long notes, full member history, or a generic
Pokémon reference browser directly on every roster card. Those belong in the
member experience, History, or Codex. Whether member detail uses an in-tab
panel, sheet, or focused route remains a later interaction decision.

## Progress Contract

**Status: Accepted baseline; detailed workflow pending**

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

## Plan Contract

**Status: Accepted baseline; detailed workflow pending**

- A Play has one focused linked Team Plan.
- The Plan persists independently after creating a Play.
- A Play created from a Plan begins with an empty actual roster.
- Planned members can later link to actual Play Pokémon and become reached,
  skipped, or otherwise resolved.
- Planning warnings include availability, optional content, reuse policy, form,
  and future evolution conflicts.

## History Contract

**Status: Accepted baseline; detailed workflow pending**

History is a meaningful personal timeline, not a technical audit log. It may
include:

- journal entries;
- important milestones;
- recorded team lifecycle events;
- team snapshots;
- Hall of Fame or final-team moments;
- manually ordered or approximate events from historical imports.

Exact timestamps are optional when the user does not know them. Historical
identity must remain stable even when the current Pokémon later changes.

## Settings Contract

**Status: Accepted baseline; detailed workflow pending**

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
- whether Pokédex progress contributes to completion;
- which main, regional, DLC, National, or special Pokédex scopes contribute;
- whether optional Pokédex entries or groups, such as Mythical Pokémon,
  contribute;
- whether Collectibles contribute and, if supported, which applicable
  collectible groups contribute.

Story remains part of the base Play contract. Optional completion areas should
default explicitly rather than being inferred from whether the user has entered
progress. The chosen definition remains editable later in Play Settings.

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
  searchable, game-aware Pokémon picker. A linked Plan may provide suggested
  targets with explicit add/link actions, but planned Pokémon are not presented
  as checkboxes and do not become the actual team automatically.
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

The current product and ownership contracts already describe the intended
sources of truth. Screen-derived requirements are recorded in the shared data
matrix and remain **Unreviewed** until the later database audit.

No database gap is confirmed by this functional blueprint alone.

## Questions For Review

1. At what baseline should the Play Header action region move from setup
   guidance to a normal Play-wide next action?
2. How much editing should Overview allow before it starts duplicating Team,
   Progress, History, or Settings?
