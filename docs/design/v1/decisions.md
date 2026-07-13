# V1 Design Decisions

This log records consequential V1 product-design decisions. The canonical
product contract should contain the final behavior; this log preserves when and
why the direction was selected or changed.

## Statuses

- **Accepted**: active direction.
- **Provisional**: working direction awaiting validation.
- **Rejected**: explored and intentionally not selected.
- **Superseded**: replaced by a later decision.

## Decision Index

| ID      | Date       | Decision                                                                                                                 | Status      |
| ------- | ---------- | ------------------------------------------------------------------------------------------------------------------------ | ----------- |
| V1-D001 | 2026-07-11 | Complete the V1 design before database correction and production UI implementation                                       | Accepted    |
| V1-D002 | 2026-07-11 | Work breadth-first from product overview to navigation, journeys, screens, and shared patterns before visual exploration | Accepted    |
| V1-D003 | 2026-07-11 | Record screen-derived database needs during design and resolve them in a later database audit                            | Accepted    |
| V1-D004 | 2026-07-11 | Generate exactly three shell and Dashboard directions only after the product blueprint is reviewed                       | Accepted    |
| V1-D005 | 2026-07-11 | Scope V1 to traditional mainline and Legends-style games, with Codex as the user-facing encyclopedia                     | Accepted    |
| V1-D006 | 2026-07-11 | Resolve signed-in product entry to the last active module, with Mainline as the V1 fallback                              | Accepted    |
| V1-D007 | 2026-07-11 | Preserve the atmospheric day/night scenic Landing concept while refining its execution                                   | Accepted    |
| V1-D008 | 2026-07-11 | Keep Landing extremely concise and place product explanation and onboarding only on Intro                                | Accepted    |
| V1-D009 | 2026-07-11 | Structure Intro as one concise narrative that explains value, organization, journey, and next action                     | Accepted    |
| V1-D010 | 2026-07-11 | Preserve the centered content canvas and current desktop navbar organization as the V1 shell foundation                  | Accepted    |
| V1-D011 | 2026-07-11 | Keep every released module visible to signed-out users, with protected modules shown as locked                           | Accepted    |
| V1-D012 | 2026-07-11 | Keep the current top-sheet navigation as the mobile V1 baseline                                                          | Accepted    |
| V1-D013 | 2026-07-11 | Define Play Hub functionality before deriving Dashboard and Plays summaries, while designing Dashboard visually first    | Accepted    |
| V1-D014 | 2026-07-13 | Create Plays through concise details followed by a game-aware, progressively disclosed completion goal                   | Accepted    |
| V1-D015 | 2026-07-13 | Place sparse-Play setup guidance in a separate Overview banner below the tabs                                            | Superseded  |
| V1-D016 | 2026-07-13 | Integrate the adaptive Play-wide Next Step action region into the Play Header                                            | Accepted    |
| V1-D017 | 2026-07-13 | Preserve the current Play Header information rhythm while reserving it for stable Play-wide context                      | Accepted    |
| V1-D018 | 2026-07-13 | Keep four permanent Overview sections and surface linked-Plan context inside Current Team                                | Accepted    |
| V1-D019 | 2026-07-13 | Make Journey Status lifecycle-aware and qualitative while Progress Summary owns numeric Story completion                 | Accepted    |
| V1-D020 | 2026-07-13 | Keep Current Team focused on the active Play-owned lineup with compact reserve and linked-Plan context                   | Accepted    |
| V1-D021 | 2026-07-13 | Use one fixed-size Team slot component for occupied, confirmed-empty, and not-recorded states                            | Accepted    |
| V1-D022 | 2026-07-13 | Show named Pokédex scopes and Collectible groups directly in the Overview Progress Summary                               | Superseded  |
| V1-D023 | 2026-07-13 | Use stable Story, Pokédex, and Collectibles groups with normalized percentages in Overview                               | Accepted    |
| V1-D024 | 2026-07-13 | Keep Recent History to a short meaningful-event preview with approximate-date support and no routine progress noise      | Accepted    |
| V1-D025 | 2026-07-13 | Make Team a roster-first workspace with visible active and reserve sections and Play-owned member interactions           | Provisional |

## V1-D001 — Design Before Database And Implementation

**Status:** Accepted

**Date:** 2026-07-11

Design the complete V1 product experience first. Use the approved screens to
derive data requirements, correct and complete the database second, and resume
production frontend implementation third.

This avoids changing schema or building interfaces for flows that have not yet
been reviewed as a coherent product.

## V1-D002 — Breadth Before Depth

**Status:** Accepted  
**Date:** 2026-07-11

Confirm the overall app, module responsibilities, navigation, journeys, and
screen inventory before specifying every section and control within one view.
After the breadth review, specify related screen families in depth.

This makes missing surfaces, duplicated responsibilities, and inconsistent
navigation visible before visual design begins.

## V1-D003 — Deferred Database-Gap Register

**Status:** Accepted  
**Date:** 2026-07-11

Record every data requirement or suspected database gap discovered during
screen design. Tie it to the surface and behavior that exposed it, distinguish
verified facts from hypotheses, and defer correction until the design flow is
approved.

No gap should become a schema requirement solely because an exploratory visual
included unsupported information.

## V1-D004 — Visual Exploration Gate

**Status:** Accepted  
**Date:** 2026-07-11

After the blueprint is reviewed, generate exactly three distinct visual
directions for the shared application shell and Mainline Dashboard. Give all
three the same content, actions, state, and viewport requirements. Select one
direction before designing or implementing the remaining visual system.

## V1-D005 — V1 Game Families And Codex Role

**Status:** Accepted

**Date:** 2026-07-11

V1 primarily covers traditional mainline and Legends-style Pokémon RPGs.
Mainline owns creating and tracking Plays, Plans, and the personal history of
those games. Codex is the public, user-facing encyclopedia for the Pokémon and
games represented in Voydex.

The internal `reference` module remains the technical shared-data owner. Codex
surfaces that corpus but does not become a code dependency or mutation owner for
Mainline or future product modules.

Later versions may add modules such as Mystery Dungeon, Pokopia, Pokémon HOME,
Pokémon GO, or Pokémon Snap. These are outside V1, and their possible future
needs should not broaden the current UI or database scope.

## V1-D006 — Last Active Module Entry

**Status:** Accepted

**Date:** 2026-07-11

Normal signed-in entry should open the default landing view of the user's last
active, currently available module. V1 falls back to Mainline Dashboard when no
valid preference exists. Explicit URLs and validated post-login destinations
take precedence.

Remember the module rather than the last deep route. This prevents a future
Pokopia-only user from being forced through Mainline while still giving each
module a predictable entry view. It also avoids restoring a stale detail,
editing, or destructive context unexpectedly.

The contract is decided now, but V1 should implement only the general resolver
and current module metadata. No future module dashboard or neutral cross-module
dashboard is required. Cross-device persistence remains open.

## V1-D007 — Atmospheric Day And Night Landing

**Status:** Accepted

**Date:** 2026-07-11

Keep the current Landing concept: a full-viewport adventurous landscape viewed
from an overlook toward a distant destination, with matched day and night scenes
selected by the resolved light or dark theme. Center the Voydex identity, one
short product description, and a compact set of quick actions in the scene's
visual quiet area.

The exact artwork, spacing, copy, and actions may improve during detailed design.
Preserve the emotional premise and layered composition. Do not turn the Landing
into a long marketing page, generic dashboard, or large opaque hero card that
hides the landscape.

## V1-D008 — Landing And Intro Content Boundary

**Status:** Accepted

**Date:** 2026-07-11

Landing should contain the atmospheric background, Voydex identity, one short
general description, and a compact set of quick actions, with little or no
additional content. Its intended first response is emotional—"this is
beautiful"—followed by immediate comprehension and action.

Intro is the distinct, opt-in surface for users who want to learn more. Product
explanation and general onboarding belong on Intro rather than Landing. Intro is
not a mandatory first-run gate unless a later workflow demonstrates that need.

## V1-D009 — Intro Content Architecture

**Status:** Accepted

**Date:** 2026-07-11

Intro should be a concise, scrollable narrative that explains the product
promise, the problem Voydex solves, the track/remember/plan value pillars, the
Mainline/Codex mental model, the recurring product journey, and the visitor's
next entry choice.

Keep it easy to scan in roughly one minute. Detailed visual hierarchy,
composition, imagery, and responsive treatment will be designed later from this
accepted content architecture rather than being improvised independently.

## V1-D010 — Centered Canvas And Desktop Shell

**Status:** Accepted

**Date:** 2026-07-11

Preserve the existing desktop shell organization: a centered content canvas of
roughly 1200–1280 pixels with the scenic background visible in the side gutters,
plus a top navbar containing the Voydex identity and shadcn navigation-menu
module switcher on the left, active module view links in the center, and profile
or authentication actions on the right.

Visual styling may change, but the organization is the V1 foundation. Future
work should improve alignment, active states, responsive behavior,
accessibility, and surface polish rather than introducing a new desktop
navigation structure without evidence of a usability problem.

## V1-D011 — Visible Protected Modules

**Status:** Accepted

**Date:** 2026-07-11

The module switcher should show every released and available module even when a
signed-out user cannot enter it directly. Protected entries remain visible with
the current clear locked/login treatment and preserve the intended destination
through authentication.

This lets visitors understand the full active Voydex structure without hiding
personal workspaces. Planned or unreleased modules remain absent rather than
turning the switcher into a future-product roadmap.

## V1-D012 — Mobile Navigation Baseline

**Status:** Accepted

**Date:** 2026-07-11

Keep the current compact top bar and full-height top-sheet navigation as the V1
mobile baseline. The sheet organizes module choices, access states, and
module-view links without permanently reducing the content viewport.

Bottom navigation or a sticky module-view row may still be compared during
visual exploration, but it should replace this baseline only when the
interactive prototype demonstrates a meaningful usability improvement.

## V1-D013 — Inside-Out Structure, Outside-In Visual Design

**Status:** Accepted

**Date:** 2026-07-11

Define the Play and Play Hub functionally before specifying Dashboard and Plays
Browse summaries. This ensures higher-level surfaces project real Play data and
actions rather than inventing disconnected cards.

Keep Dashboard as the first detailed visual exploration after the functional
blueprint. It establishes the shared visual grammar, which is then applied to
the richer Play Hub workflows.

## V1-D014 — Progressive Create Play And Completion Goal

**Status:** Accepted

**Date:** 2026-07-13

Create Play uses two concise steps. Play Details captures the game, generated or
edited name, and current lifecycle. Completion Goal then defines what reaching
100% means through one clear game-aware recommendation and optional progressive
customization.

Customization exposes only completion settings applicable to the selected game:
optional content, contributing Pokédex scopes, optional entry groups such as
Mythical Pokémon, and Collectibles. Story remains part of the base Play. Exact
Team, Story, Pokédex, Collectible, and History data is entered later in the
owning Play areas, and the completion definition remains editable in Settings.

This preserves a fast default path without delaying the decision that gives the
Play's completion percentage its meaning.

## V1-D015 — Adaptive Overview Next Step Banner

**Status:** Superseded by V1-D016

**Date:** 2026-07-13

The initial direction placed an adaptive Next Step banner as the first section
below the Play tabs. It would have presented one primary action and up to two
secondary actions rather than a complete setup checklist.

For an imported `playing` or `paused` Play, `Add current team` is the initial
primary action, followed by `Set Story position` and `Update progress`. A
`not_started` Play prioritizes starting the adventure, while a `completed` or
`abandoned` Play prioritizes adding a remembered team and preserving the known
outcome or a memory.

This placement was superseded after clarifying that the intended top surface was
the existing Play Header. Adding another prominent banner below the tabs would
duplicate hierarchy and separate the Play-wide action from the context it
belongs to.

## V1-D016 — Adaptive Action Region In The Play Header

**Status:** Accepted

**Date:** 2026-07-13

Place the adaptive Play-wide Next Step region on the right side of the existing
Play Header on desktop. The cover art remains on the left and Play identity and
high-value context remain in the center. On smaller screens, the action region
stacks within the same header before the Play tabs. Do not add a separate setup
banner to the Overview body.

The region presents one primary action and up to two lower-emphasis alternatives
based on lifecycle and recorded data. For an imported `playing` or `paused`
Play, begin with `Add current team`, followed by `Set Story position` and
`Update progress`. A `not_started` Play prioritizes starting the adventure; a
`completed` or `abandoned` Play prioritizes recording the remembered team,
furthest known Story position, outcome, or a memory.

Because the header persists across Hub tabs, its recommendation must be
Play-wide rather than tab-local. Each tab retains its own workflow actions. As
baseline context is added, setup guidance evolves into the next useful
Play-wide action or collapses to quiet utility actions. Existing `View game` and
return-navigation controls remain available at lower emphasis and do not
compete with the primary recommendation.

## V1-D017 — Stable Play Header Information Hierarchy

**Status:** Accepted

**Date:** 2026-07-13

Preserve the current center-column rhythm of title, metadata, lifecycle facts,
and compact context rather than reorganizing the entire Play Header. Give those
layers stable responsibilities so the header remains useful across every Hub
tab without becoming another Overview.

Always show Play name, lifecycle, and game. Show region and generation as
lower-emphasis game context when available. Trainer name, lifecycle-appropriate
dates, and positive playtime are conditional and never create low-value
placeholder labels.

Use the final compact-context layer for the global completion goal/state and no
more than two defining challenge rules plus an overflow count. Show a completion
percentage only when the contributing progress is trustworthy. A genuinely new
`not_started` Play may show zero; a sparse imported Play shows `Progress not
recorded`.

Current-Team counts, detailed Pokédex counts, general tags, notes, and platform
do not earn persistent header space. They remain in Overview, their owning Hub
area, Plays Browse, or Settings as appropriate.

## V1-D018 — Four Permanent Overview Sections

**Status:** Accepted

**Date:** 2026-07-13

Keep Journey Status, Current Team, Progress Summary, and Recent History as the
only permanent Overview sections. They respectively answer where the user is,
who is with them, how much is complete, and what happened recently. Each remains
a concise summary and route into its owning workflow rather than a duplicate
editor.

Do not add a permanent Plan card. When a focused Team Plan is linked, surface a
compact comparison within Current Team and route to Plan for details. Omit that
row when no Plan is linked; the Play Header may recommend linking a Plan when it
is the most useful Play-wide next action.

Do not add separate Overview cards for Play details, rules, completion goal,
quick actions, notes, or unsupported Team analysis. Those responsibilities
already belong to the Play Header, History, Settings, or Team.

## V1-D019 — Qualitative Journey Status

**Status:** Accepted

**Date:** 2026-07-13

Journey Status should answer where the user currently is or how far they are
known to have reached. Show the current or furthest recorded Story milestone and
the next applicable objective when the Play remains active. Adapt the language
for not-started, sparse imported, completed, and abandoned Plays.

Do not repeat numeric Story completion, milestone counts, or a path-progress
visualization in Journey Status; Progress Summary owns the quantitative Story
row. Keep one lower-emphasis route to Story, using `Set Story position` when the
position is unknown, without duplicating a primary action already promoted in
the Play Header.

## V1-D020 — Active-Lineup Current Team Summary

**Status:** Accepted

**Date:** 2026-07-13

Keep the Overview Team summary focused on the six-slot active lineup. Adapt its
label to `Final Team` for completed Plays and `Last Known Team` for abandoned
Plays when supported by the recorded state. Show only a compact positive reserve
count rather than an Active/Reserve toggle or a second roster.

When a focused Team Plan is linked, show a compact reached/target comparison
inside the section without presenting planned Pokémon as actual Team members.
Selecting a recorded member should open its Play-owned Team experience rather
than navigating directly to the generic Codex species page.

Distinguish a genuinely empty lineup from an imported or partially remembered
Team that has not been fully recorded. Do not turn missing Team rows into six
asserted empty in-game slots. Detailed stats, moves, abilities, held items,
coverage, Team Health, history, and full reserve management remain in Team.

## V1-D021 — Fixed Team Slot Geometry Across States

**Status:** Accepted

**Date:** 2026-07-13

Every position in the six-slot Overview lineup uses the same component geometry
and internal content zones regardless of state. Occupied, confirmed-empty, and
not-recorded slots keep identical dimensions, border, radius, padding, portrait
area, name line, and secondary-information line so the grid never shifts.

An occupied slot shows the Pokémon portrait and identity. A confirmed-empty
slot uses an app-standard add or empty-slot icon and explicit label. A
not-recorded slot uses an app-standard question-mark icon and `Not recorded`
label rather than an add affordance. Long labels truncate within the fixed slot
and remain available to assistive technology.

## V1-D022 — Scope-Aware Progress Summary

**Status:** Superseded by V1-D023

**Date:** 2026-07-13

Keep the overall completion result in the Play Header. Progress Summary explains
the configured areas using Story first, followed by enabled Pokédex scopes and
Collectible groups. Mark rows quietly as `Goal` or `Tracked`, show one progress
bar plus `completed / total`, and distinguish known zero from `Not recorded`.

Prefer named scopes and groups when more than one exists. Aggregate only when a
canonical, non-duplicating denominator is valid for the exact configured set;
otherwise show representative named rows with a compact overflow route. Omit
disabled or inapplicable rows, but keep the permanent card visible with a clear
unavailable state when no trustworthy summary can be calculated.

Rows may route to their owning Progress area. Do not add inline checklists, bulk
updates, a duplicate overall percentage, trends, streaks, predictions, or
unsupported achievements to Overview.

This direction was superseded because placing Main Story, Postgame, DLC Story,
every named Pokédex, and every Collectible group directly in Overview would grow
without a stable bound as games add content. Those named tracks belong in their
detailed Progress areas.

## V1-D023 — Stable Normalized Progress Groups

**Status:** Accepted

**Date:** 2026-07-13

Keep Overview stable with Story, Pokédex, and Collectibles as the only progress
groups. Story is always present; Pokédex and Collectibles render only when they
are applicable and enabled. Main Story, Postgame, DLC Story, named Pokédexes,
and named Collectible groups remain detailed child tracks inside Progress.

Show a progress bar and visible rounded percentage for each Overview group
rather than summing incompatible raw counts. Calculate every child track from
its native units, average contributing child-track percentages equally within
the group, then average enabled top-level goal-group percentages equally for the
Play Header's overall result. This prevents a large Pokédex or Collectible list
from outweighing Story merely because it contains more entries.

When a group is tracked but does not count toward completion, show its normalized
tracking percentage with a `Tracked only` label and exclude it from the overall
result. Unknown contributing child tracks produce `Not recorded` or `Partially
recorded`; they are never treated as zero or silently omitted from the average.

## V1-D024 — Meaningful Recent History Preview

**Status:** Accepted

**Date:** 2026-07-13

Keep Recent History to the latest three to five meaningful user-facing events,
ordered by effective event date or preserved manual order. Eligible content
includes important Story moments, explicitly recorded Team lifecycle events,
snapshots or final-Team records, journal entries and memories, whole-scope
Pokédex or Collectible completion moments, and meaningful Play lifecycle
outcomes. Routine species or item updates, corrections, settings changes, and
technical audit entries do not create preview noise.

Each event shows a recognizable type, concise title and context, and its date
when known. Approximate and unknown dates remain explicitly uncertain rather
than appearing recent by default. Selecting an event routes into History, with
one lower-emphasis route to the full History area. New and imported Plays use
different empty language so missing Voydex history never implies that nothing
happened in the original save.

## V1-D025 — Roster-First Team Workspace

**Status:** Provisional

**Date:** 2026-07-13

Make Team a roster-first workspace with a concise toolbar, six fixed Active
slots, and six fixed Reserve slots visible in separate sections. Use one shared
detailed slot component and the same occupied, confirmed-empty, and
not-recorded vocabulary established by Overview. Do not hide Reserve behind a
mode toggle because moving Pokémon between Active and Reserve is a core Team
task.

An occupied slot opens its Play-owned member experience; an empty slot opens a
game-aware picker targeted to that position; an unknown slot first preserves
the distinction between unrecorded and empty. Keep linked-Plan context compact,
place trustworthy Team Insights after the roster, and move complete member
details, History, and generic reference browsing out of the roster cards.

Lifecycle actions belong to the selected member or slot. Ask whether a change
is a correction or a recorded event only when that choice affects History and
Collection. Provide explicit accessible move and reorder actions; drag and drop
cannot be the only interaction.
