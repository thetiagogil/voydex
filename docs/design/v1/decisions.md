# V1 Design Decisions

This log records consequential V1 product-design decisions. The canonical
product contract should contain the final behavior; this log preserves when and
why the direction was selected or changed.

## Statuses

- **Accepted**: active direction.
- **Provisional**: working direction awaiting validation.
- **Deferred**: accepted as a later-version direction outside V1.
- **Rejected**: explored and intentionally not selected.
- **Superseded**: replaced by a later decision.

## Decision Index

| ID      | Date       | Decision                                                                                                                  | Status     |
| ------- | ---------- | ------------------------------------------------------------------------------------------------------------------------- | ---------- |
| V1-D001 | 2026-07-11 | Complete the V1 design before database correction and production UI implementation                                        | Superseded |
| V1-D002 | 2026-07-11 | Work breadth-first from product overview to navigation, journeys, screens, and shared patterns before visual exploration  | Accepted   |
| V1-D003 | 2026-07-11 | Record screen-derived database needs during design and resolve them in a later database audit                             | Accepted   |
| V1-D004 | 2026-07-11 | Generate exactly three shell and Dashboard directions only after the product blueprint is reviewed                        | Superseded |
| V1-D005 | 2026-07-11 | Scope V1 to traditional mainline and Legends-style games, with Codex as the user-facing encyclopedia                      | Accepted   |
| V1-D006 | 2026-07-11 | Resolve signed-in product entry to the last active module, with Mainline as the V1 fallback                               | Accepted   |
| V1-D007 | 2026-07-11 | Preserve the atmospheric day/night scenic Landing concept while refining its execution                                    | Superseded |
| V1-D008 | 2026-07-11 | Keep Landing extremely concise and place product explanation and onboarding only on Intro                                 | Accepted   |
| V1-D009 | 2026-07-11 | Structure Intro as one concise narrative that explains value, organization, journey, and next action                      | Accepted   |
| V1-D010 | 2026-07-11 | Preserve the centered content canvas and current desktop navbar organization as the V1 shell foundation                   | Accepted   |
| V1-D011 | 2026-07-11 | Keep every released module visible to signed-out users, with protected modules shown as locked                            | Accepted   |
| V1-D012 | 2026-07-11 | Keep the current top-sheet navigation as the mobile V1 baseline                                                           | Accepted   |
| V1-D013 | 2026-07-11 | Define Play Hub functionality before deriving Dashboard and Plays summaries, while designing Dashboard visually first     | Accepted   |
| V1-D014 | 2026-07-13 | Create Plays through concise details followed by a game-aware, progressively disclosed completion goal                    | Accepted   |
| V1-D015 | 2026-07-13 | Place sparse-Play setup guidance in a separate Overview banner below the tabs                                             | Superseded |
| V1-D016 | 2026-07-13 | Integrate the adaptive Play-wide Next Step action region into the Play Header                                             | Accepted   |
| V1-D017 | 2026-07-13 | Preserve the current Play Header information rhythm while reserving it for stable Play-wide context                       | Accepted   |
| V1-D018 | 2026-07-13 | Keep four permanent Overview sections and surface linked-Plan context inside Current Team                                 | Superseded |
| V1-D019 | 2026-07-13 | Make Journey Status lifecycle-aware and qualitative while Progress Summary owns numeric Story completion                  | Accepted   |
| V1-D020 | 2026-07-13 | Keep Current Team focused on the active Play-owned lineup with compact reserve and linked-Plan context                    | Superseded |
| V1-D021 | 2026-07-13 | Use one fixed-size Team slot component for occupied, confirmed-empty, and not-recorded states                             | Accepted   |
| V1-D022 | 2026-07-13 | Show named Pokédex scopes and Collectible groups directly in the Overview Progress Summary                                | Superseded |
| V1-D023 | 2026-07-13 | Use stable Story, Pokédex, and Collectibles groups with normalized percentages in Overview                                | Accepted   |
| V1-D024 | 2026-07-13 | Keep Recent History to a short meaningful-event preview with approximate-date support and no routine progress noise       | Accepted   |
| V1-D025 | 2026-07-13 | Use a list-detail Team workspace with one twelve-position roster list and visually dominant selected-Pokémon context      | Accepted   |
| V1-D026 | 2026-07-13 | Keep every roster row compact, equal, and explicit across occupied, selected, confirmed-empty, and not-recorded states    | Accepted   |
| V1-D027 | 2026-07-13 | Keep selected Pokémon detail Play-owned, identity-first, and progressively grouped                                        | Accepted   |
| V1-D028 | 2026-07-13 | Keep Team Quick Analysis as an important surface while deferring its metric strategy                                      | Accepted   |
| V1-D029 | 2026-07-13 | Defer a playful Team Score until after V1                                                                                 | Deferred   |
| V1-D030 | 2026-07-13 | Add a focused Play-owned Team Analysis view beneath the Team workspace                                                    | Accepted   |
| V1-D031 | 2026-07-13 | Keep Recent Team Events to three Pokémon-specific Team changes, separate from Play History                                | Accepted   |
| V1-D032 | 2026-07-13 | Defer a generic per-edit `Record this change in History` option until after V1                                            | Deferred   |
| V1-D033 | 2026-07-13 | Show linked Plan context as a compact roster-adjacent comparison                                                          | Accepted   |
| V1-D034 | 2026-07-13 | Record a Team moment through a dedicated minimal Active-lineup snapshot flow                                              | Accepted   |
| V1-D035 | 2026-07-13 | Add actual Team Pokémon through a compact game-aware search and confirmation flow                                         | Accepted   |
| V1-D036 | 2026-07-13 | Edit ordinary Pokémon details through one grouped contextual sheet while keeping lifecycle actions separate               | Accepted   |
| V1-D037 | 2026-07-13 | Realize a linked Plan target as any valid current evolution stage while preserving one explicit member relationship       | Superseded |
| V1-D038 | 2026-07-13 | Record evolution through a focused game-aware lifecycle flow with read-only Plan comparison                               | Accepted   |
| V1-D039 | 2026-07-13 | Keep the authored Plan unchanged when the actual Team deviates and treat off-plan additions as allowed comparison data    | Accepted   |
| V1-D040 | 2026-07-13 | Keep Plan editing and member-relationship management exclusively in Plan while Team exposes read-only comparison          | Superseded |
| V1-D041 | 2026-07-13 | Keep move, reorder, and swap atomic, explicit, and silent in History                                                      | Accepted   |
| V1-D042 | 2026-07-13 | Separate fixed form identity from game-valid changeable form transitions and keep form correction separate                | Accepted   |
| V1-D043 | 2026-07-13 | Distinguish slot replacement, Reserve displacement, and retirement without losing the displaced member                    | Accepted   |
| V1-D044 | 2026-07-13 | Keep Past Members inside Team and return the same individual to the current roster                                        | Accepted   |
| V1-D045 | 2026-07-13 | Separate guarded record correction and deletion from lifecycle actions, Plan ownership, and History                       | Accepted   |
| V1-D046 | 2026-07-13 | Keep Progress Overview focused on trustworthy completion and three non-duplicated tracking-area handoffs                  | Accepted   |
| V1-D047 | 2026-07-13 | Use a game-aware Story list-detail workspace while keeping presentation order separate from milestone dependencies        | Accepted   |
| V1-D048 | 2026-07-13 | Keep routine milestone completion quiet and move imported Story catch-up into a separate dependency-aware bulk workflow   | Accepted   |
| V1-D049 | 2026-07-13 | Use a species-level Pokédex browser with responsive grid/list modes, explicit states, and exact reviewed bulk updates     | Accepted   |
| V1-D050 | 2026-07-13 | Prototype named Pokédex selection as a prominent responsive card rail and re-evaluate it through visual validation        | Accepted   |
| V1-D051 | 2026-07-13 | Approve Mainline functional contracts before judging their visual composition through one coherent UI draft               | Accepted   |
| V1-D052 | 2026-07-13 | Use an adaptive Collectibles list-detail workspace with exact, count-only, and reviewed batch progress paths              | Accepted   |
| V1-D053 | 2026-07-13 | Keep Progress as a stable Hub tab and use its Overview as the entrance to focused child views without persistent sub-tabs | Accepted   |
| V1-D054 | 2026-07-13 | Use a full-width Plan-target-to-actual comparison list without a persistent Pokémon detail panel                          | Superseded |
| V1-D055 | 2026-07-13 | Use one full-width meaningful History timeline with honest journey ordering and focused event-detail sheets               | Accepted   |
| V1-D056 | 2026-07-13 | Organize Play Settings into section-scoped editing with guarded lifecycle, scope, archive, and delete actions             | Accepted   |
| V1-D057 | 2026-07-13 | Define completion through a game-aware goal and explicit Counts, Track only, or Not tracked states                        | Accepted   |
| V1-D058 | 2026-07-13 | Defer the proposed Next session note until a later version has a proven frequent consumer                                 | Accepted   |
| V1-D059 | 2026-07-13 | Merge durable Play notes into General and preserve exact, approximate, or unrecorded Play dates                           | Accepted   |
| V1-D060 | 2026-07-13 | Keep Rules and Tags distinct, reusable, warning-only, and atomically attached without V1 shared-definition administration | Accepted   |
| V1-D061 | 2026-07-13 | Limit V1 database work to required support while preserving every deferred improvement in the future backlog              | Accepted   |
| V1-D062 | 2026-07-14 | Use Play Status & Management as the clear user-facing name for the final Play Settings section                            | Accepted   |
| V1-D063 | 2026-07-14 | Put routine Play status transitions in the persistent Header and keep correction and management in Settings               | Accepted   |
| V1-D064 | 2026-07-14 | Preserve a recorded completion date as historical knowledge when a Completed Play is normally reopened                    | Accepted   |
| V1-D065 | 2026-07-14 | Use lightweight date-aware status transitions and defer their final composition to whole-flow UI validation               | Accepted   |
| V1-D066 | 2026-07-14 | Show the six-position Active Team as an equal-slot current-form sprite preview in every Play Browse result                | Accepted   |
| V1-D067 | 2026-07-14 | Use one cover-led single-column Play library without a V1 grid/list toggle                                                | Accepted   |
| V1-D068 | 2026-07-14 | Prioritize Play identity, then current Journey, Team, and Progress, with organization and activity as supporting context  | Superseded |
| V1-D069 | 2026-07-14 | Use a compact two-level Plays filter system while keeping lifecycle, completion, and archive visibility distinct          | Accepted   |
| V1-D070 | 2026-07-14 | Keep archived Plays openable and use context-preserving explicit loading, empty, partial, and recovery states             | Accepted   |
| V1-D071 | 2026-07-14 | Keep Dashboard play-led and omit dedicated V1 quick-stat cards                                                            | Accepted   |
| V1-D072 | 2026-07-14 | Focus Dashboard on the most recently updated non-archived Play and defer a user-selected favorite                         | Accepted   |
| V1-D073 | 2026-07-14 | Summarize the latest Play through identity, Journey, six Active sprites, overall Progress, and one routed Next Step       | Accepted   |
| V1-D074 | 2026-07-14 | Show up to three compact Other Recent Play rows without duplicating Team, Progress, or Next Steps                         | Accepted   |
| V1-D075 | 2026-07-14 | Preview four meaningful cross-Play History events with honest dates and direct owning-History routes                      | Accepted   |
| V1-D076 | 2026-07-14 | Use one accessible page-level Spinner for V1 initial loads and defer all Skeleton loading patterns                        | Accepted   |
| V1-D077 | 2026-07-14 | Complete Dashboard states with focused empty, partial-data, isolated retry, and stale-focus recovery                      | Accepted   |
| V1-D078 | 2026-07-14 | Batch the standalone Plans family functionally before judging its visual composition                                      | Accepted   |
| V1-D079 | 2026-07-14 | Separate reusable Team Plans from independent Game List intent in one Plans Hub                                           | Accepted   |
| V1-D080 | 2026-07-14 | Keep Create Plan concise and preserve game, Pokémon, or Play source context atomically                                    | Accepted   |
| V1-D081 | 2026-07-14 | Make standalone Plan Detail the owner of reusable target authoring and cross-Play usage                                   | Accepted   |
| V1-D082 | 2026-07-14 | Reuse the Plays product grammar for Plans without cloning Play-specific data or actions                                   | Accepted   |
| V1-D083 | 2026-07-14 | Derive Collection and Stats from trustworthy companion and historical evidence                                            | Accepted   |
| V1-D084 | 2026-07-14 | Use a species-led Collection grid with honest companion and Play context                                                  | Accepted   |
| V1-D085 | 2026-07-14 | Make Collection Detail explain companions and meaningful moments across Plays                                             | Accepted   |
| V1-D086 | 2026-07-14 | Keep Stats explainable and exclude false favorites, scores, and unsupported conclusions                                   | Accepted   |
| V1-D087 | 2026-07-14 | Anchor every changing Codex Pokémon fact and destination to one explicit exact-game context                               | Accepted   |
| V1-D088 | 2026-07-14 | Use a URL-backed species grid with explicit loading and compact responsive density for Pokémon Browse                     | Superseded |
| V1-D089 | 2026-07-14 | Keep Pokémon Detail reference-led, semantic, game-aware, and free of untrustworthy filler                                 | Accepted   |
| V1-D090 | 2026-07-14 | Group Pokémon Detail cross-module actions under one Mainline-owned handoff                                                | Accepted   |
| V1-D091 | 2026-07-14 | Use a URL-backed cover-led Games catalogue with deterministic order and compact responsive density                        | Accepted   |
| V1-D092 | 2026-07-14 | Make Game Detail a reference-led bridge with one primary Start a Play action                                              | Accepted   |
| V1-D093 | 2026-07-14 | Group named Pokédexes by base and optional content and expose only truthful availability                                  | Accepted   |
| V1-D094 | 2026-07-14 | Make named Pokédex the prominent Game Pokédex scope and adapt comparison content by viewport                              | Accepted   |
| V1-D095 | 2026-07-14 | Preserve exact game intent through Mainline-owned Play, Plan, and Game List handoffs                                      | Accepted   |
| V1-D096 | 2026-07-14 | Make Login an intent-aware global transition with safe resumption rather than a generic Mainline detour                   | Accepted   |
| V1-D097 | 2026-07-14 | Complete V1 authentication with focused signup, recovery, confirmation, validation, and expired-session states            | Accepted   |
| V1-D098 | 2026-07-14 | Keep Global Settings as one vertical Profile, Preferences, and Account page                                               | Accepted   |
| V1-D099 | 2026-07-14 | Make Pokémon reuse preferences advisory and defer Appearance beyond light-first V1                                        | Accepted   |
| V1-D100 | 2026-07-14 | Require one secure consequence-aware account-deletion workflow                                                            | Accepted   |
| V1-D101 | 2026-07-14 | Use one responsive shared system-state grammar with labelled Spinners and scoped recovery                                 | Accepted   |
| V1-D102 | 2026-07-14 | Mark the V1 functional contract review complete and begin exactly three visual directions                                 | Superseded |
| V1-D103 | 2026-07-17 | Reduce each Play Browse card to identity, six Active slots, overall completion, and update date                           | Accepted   |
| V1-D104 | 2026-07-17 | Resume production UI one bounded view at a time using the selected current visual grammar                                 | Superseded |
| V1-D105 | 2026-07-17 | Reset V1 to a light-first explorer's field-guide language and select among three representative Plays Browse directions   | Accepted   |
| V1-D106 | 2026-07-17 | Select and implement the journal shell and Plays Browse explorer's field-guide treatment                                  | Superseded |
| V1-D107 | 2026-07-17 | Replace the heavy book shell with a slim survey-map frame and a light route navbar                                        | Superseded |
| V1-D108 | 2026-07-18 | Use a strapped walnut expedition frame with a two-clipped operational paper sheet                                         | Superseded |
| V1-D109 | 2026-07-18 | Use one top-mounted hanging paper sheet with simple side and bottom edges                                                 | Superseded |
| V1-D110 | 2026-07-18 | Keep hanging-paper hardware undistorted and repeat the deckled side edge with document height                             | Superseded |
| V1-D111 | 2026-07-18 | Blend the opening navbar into the scenery and reveal a compact floating bar only after it scrolls away                    | Superseded |
| V1-D112 | 2026-07-18 | Use a content-driven leather clipcard frame with independent edge and corner assets                                       | Superseded |
| V1-D113 | 2026-07-18 | Refine the outer card as a stitched-leather binding without an inner gold keyline                                         | Superseded |
| V1-D114 | 2026-07-18 | Place operational content on one lighter clipped working sheet inside the card                                            | Superseded |
| V1-D115 | 2026-07-18 | Keep only the background-blended opening navbar and let it scroll away without a replacement                              | Accepted   |
| V1-D116 | 2026-07-18 | Replace detailed rails and corner caps with one simple matte brown expedition-card border                                 | Superseded |
| V1-D117 | 2026-07-18 | Present primary module-view destinations as restrained illustrated wooden signs                                           | Superseded |
| V1-D118 | 2026-07-18 | Use shared compact product buttons for module-view destinations and retire plank imagery                                  | Accepted   |
| V1-D119 | 2026-07-18 | Keep the Plays browse introduction compact and text-only                                                                  | Accepted   |
| V1-D120 | 2026-07-19 | Replace the clipboard and clipped inset sheet with one continuous journal page                                            | Accepted   |
| V1-D121 | 2026-07-19 | Continue the image-led Pokémon catalogue through automatic incremental result batches                                     | Accepted   |
| V1-D122 | 2026-07-20 | Move Plan context into Team and keep standalone Plan Detail as the authoring destination                                  | Accepted   |
| V1-D123 | 2026-07-21 | Place the navbar and all app content inside one full-height centered journal surface                                      | Accepted   |
| V1-D124 | 2026-07-21 | Compute linked Team Plan comparison automatically and inspect selected rows responsively                                  | Accepted   |

## V1-D001 — Design Before Database And Implementation

**Status:** Superseded by V1-D104

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

**Status:** Superseded by V1-D104

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

**Status:** Superseded by V1-D105

**Date:** 2026-07-11

Keep the current Landing concept: a full-viewport adventurous landscape viewed
from an overlook toward a distant destination. V1-D105 preserves the daylight
scene and layered composition while deferring the matched night scene and dark
theme. Center the Voydex identity, one short product description, and a compact
set of quick actions in the scene's visual quiet area.

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

## V1-D025 — List-Detail Team Workspace

**Status:** Accepted

**Date:** 2026-07-13

Use one twelve-position roster list grouped into six Active and six Reserve
rows beside a larger selected-Pokémon detail panel. Preserve the same occupied,
confirmed-empty, and not-recorded vocabulary established by Overview, while
letting occupied rows expose quick identity information. Keep Reserve visible
instead of hiding it behind a mode switch because moving Pokémon between both
groups is a core Team task.

An occupied row updates Play-owned member detail; an empty row opens a
game-aware picker targeted to that position; an unknown row preserves the
distinction between unrecorded and empty. On narrow screens, member selection
opens a focused Team detail view or sheet rather than compressing the desktop
split layout.

Place a small trustworthy Active-Team analysis and the latest three meaningful
Team events below the member detail, each with one route to its focused owning
experience. Team events reuse History with a Team filter. Keep linked-Plan
comparison and deliberate Team snapshots contextual rather than permanent
empty cards, and avoid duplicating the analysis and history links in the
toolbar.

Lifecycle actions belong to the selected member or slot. Named lifecycle
actions preserve History and Collection evidence; `Correct record` is the
separate no-event path. Do not ask the user to reinterpret one ambiguous action
after opening it. Provide explicit accessible move and reorder actions; drag and
drop cannot be the only interaction.

The roster remains a compact row list rather than a board of large Pokémon
cards. Compact list artwork establishes the selectable source, while the larger
artwork and richer content in the right-side panel establish the selected
result. The board alternative was rejected for V1 because similar image scale
and visual weight across roster cards and member detail weakened that hierarchy.

## V1-D026 — Compact State-Aware Roster Rows

**Status:** Accepted

**Date:** 2026-07-13

Use one equal-height roster-row structure across all twelve Active and Reserve
positions. Occupied rows show only slot, compact correct-form portrait,
nickname or species identity, relevant form identity, level, types, and the
smallest necessary identity or warning cues. Rich member data remains in the
selected detail so the list does not compete with it.

Keep occupied-unselected, occupied-selected, confirmed-empty, not-recorded,
pending, and unavailable states explicit without changing row geometry.
Selected state uses more than color and does not displace the consistent
overflow position. Empty slots open a picker targeted to their position;
unknown slots first offer `Add remembered Pokémon` or `Confirm empty`.

The main row target and its sibling overflow menu remain independently
keyboard-operable. Drag and drop is optional convenience only; explicit move
and reorder commands provide the complete accessible workflow. Section counts
must distinguish confirmed capacity from partially recorded Teams.

## V1-D027 — Play-Owned Selected Pokémon Detail

**Status:** Accepted

**Date:** 2026-07-13

Make the selected-Pokémon panel the visual destination of the compact roster.
Lead with materially larger correct-form artwork and the member's Play identity:
nickname, species and relevant form, shiny state, Active or Reserve position,
level, types, and recorded held item. Follow with progressively grouped current
setup, origin and personal record, four-position moveset, and contextual member
actions.

Keep the panel about this individual in this Play. Generic species knowledge
routes quietly to Codex; Team-wide coverage and weaknesses remain in Team
Analysis; complete member events remain in History; complete Plan detail stays
in Plan. Do not turn transient battle values such as current HP, battle status,
or current PP into persistent V1 Play state. Optional personal facts such as OT
and ID appear only when recorded or contextually relevant, and missing imported
facts remain explicitly unrecorded rather than receiving defaults.

Use one clear `Edit details` action with contextual move, evolution, and form
actions while preserving `Add Pokémon` as the screen's canonical primary
action. Keep replacement, retirement, and Codex routes secondary. Routine
detail edits do not create History noise or require a correction-versus-event
choice. Named lifecycle actions record what happened, while `Correct record`
repairs the current entry without an event. Completed and abandoned Plays favor
remembered detail and correction over forward-looking actions, while partial
and failed data states preserve honest knowledge state.

## V1-D028 — Preserve Team Quick Analysis While Defining Its Strategy

**Status:** Accepted

**Date:** 2026-07-13

Keep Team Quick Analysis in the Team workspace as an important Team-wide
surface. Its final metrics, reliable inputs, calculation rules, evidence
disclosure, and partial-data behavior require a separate product slice. Until
that strategy is accepted, do not replace the section with invented matchup,
balance, coverage, role, damage, or competitive claims.

## V1-D029 — Defer Team Score Beyond V1

**Status:** Deferred

**Date:** 2026-07-13

Do not include a composite Team Score in V1. Define and validate the underlying
Team Quick Analysis strategy first. Preserve Team Score as a fun
later-version direction, but do not freeze its formula, confidence treatment,
or visual presentation during the V1 design and database pass.

## V1-D030 — Focused Full Team Analysis View

**Status:** Accepted

**Date:** 2026-07-13

Add `/mainline/plays/[playId]/team/analysis` as a focused, read-only child of the
Play Team experience. Keep the Play Header and Hub navigation visible, keep
Team active, and provide a clear return to roster management. Do not add a
seventh Play Hub tab or a global Mainline analysis destination.

Preserve the accepted route and Team ownership while the metrics and full-view
information strategy are defined with Team Quick Analysis. Team changes remain
owned by Team, and any future analysis must disclose its evidence, partial data,
and unsupported mechanics rather than producing confident invented results.

## V1-D031 — Deliberate Recent Team Events

**Status:** Accepted

**Date:** 2026-07-13

Keep Recent Team Events to the latest three Pokémon-specific Team changes. The
preview describes the whole Active-and-Reserve roster and remains unchanged
when a different member is selected. Play History and Team History may share an
event store, but they use separate eligibility and presentation rules.

Recorded additions, Active/Reserve movements, updates, evolutions, persistent
form changes, replacements, retirements, removals, and returns qualify. Story
or completion progress, final-Team or Hall of Fame moments, deliberate Team
snapshots, journal entries, status changes, failed mutations, and technical
activity do not qualify for this Team projection.

Each row uses concise Pokémon-first language, explicit effective-date certainty,
and event-time identity. Evolution, replacement, or recorded form-change rows
show before-and-after portraits; movements show the Pokémon and roster
destination; other changes show the affected Pokémon portrait.
The row routes to its owning History event, while event editing remains in
History. Order by effective date or preserved manual timeline order, never by
entry time alone, so historical imports do not masquerade as recent events.

Keep one `View Team history` header action. A lower-emphasis `Record Team
moment` action may appear only when useful. New Plays, imported Plays with no
Voydex event history, no-Team-event timelines, and failed reads receive distinct
honest states without duplicating the Roster Card header's `Add Pokémon` action.

## V1-D032 — Defer Per-Edit History Recording

**Status:** Deferred

**Date:** 2026-07-13

Do not add a generic `Record this change in History` option to Pokémon edit
forms in V1. Routine edits remain quiet, correction-only edits never create
history, and V1 records meaningful Team events through dedicated lifecycle,
Team-moment, and History workflows.

Preserve the per-edit opt-in as a later-version direction. Its future design may
use a checkbox, switch, or confirmation step, but that control and any
supporting transactional requirements do not belong in the V1 implementation
or database pass.

## V1-D033 — Compact Linked Plan Context

**Status:** Accepted

**Date:** 2026-07-13

When a Play has one focused linked Team Plan, show a compact Team Plan Card
directly below Roster in the left column. Surface the Plan name, following
state, an explicit reached/target summary, exceptional skipped or off-plan
context when useful, and one `View plan` route to canonical Plan Detail. Omit
the Card when no Plan is linked.

Count a target as reached only through the explicit Plan-member-to-Play-member
relationship. Matching species or forms may inform Plan-owned comparison or
relationship suggestions, but Team never exposes those suggestions or creates a
confirmed result. A selected Pokémon may show a compact read-only comparison cue
inside its detail; that cue can open the relevant Plan member but cannot edit,
link, relink, unlink, or update Plan status. Default roster rows remain
uncluttered.

## V1-D034 — Dedicated Team Moment Flow

**Status:** Accepted

**Date:** 2026-07-13

Keep `Record Team moment` as a dedicated, lower-emphasis Team action rather than
placing a generic History checkbox inside Pokémon edits. The flow previews and
freezes the current recorded Active lineup, then asks only for a concise title,
date certainty, and optional note. It does not edit members, choose individual
snapshot participants, or include Reserve in V1.

Adapt the action to lifecycle and knowledge state. Active or paused Plays record
a current Team moment; completed or abandoned Plays use remembered or final-Team
language; no recorded Active members produce a Team-recording route instead of
an empty snapshot. Saving creates one History event and snapshot only after the
write succeeds, after which it may appear in Recent Team Events.

## V1-D035 — Compact Game-Aware Add Pokémon Flow

**Status:** Accepted

**Date:** 2026-07-13

Use one two-stage Add Pokémon dialog or mobile sheet: first search and select a
game-aware species or form, then confirm destination and only the identity facts
that immediately matter—form, nickname, level, and shiny state. Defer gender,
nature, ability, item, origin, ball, moves, and notes to the selected-member
editor after creation.

The toolbar entry chooses from confirmed-empty positions; an empty-row entry
preselects that slot; an unknown row uses a distinct remembered-member path.
Unknown slots are not silently treated as capacity, occupied slots route to
Replace, and a full twelve-member roster never opens an impossible add form.

V1 distinguishes intent through dedicated entry paths rather than a generic
History checkbox. A current addition to a confirmed-empty position in an active
or paused Play may create the joined-Team event. Remembered, completed,
abandoned, and correction paths do not imply the Pokémon joined today. If a
toolbar entry is genuinely ambiguous, ask only whether this is a new Team member
or an existing member being recorded.

Rank base-game and enabled-content availability first while keeping supported
external-trade and transfer-only Pokémon searchable with clear method labels.
When a linked Plan exists, an off-plan selection may show one quiet informational
note that the Pokémon will be added without changing the Plan. The Team flow does
not show Plan targets, suggest links, or create Plan-member relationships. Show
explainable reuse warnings before confirmation and preserve the selected Pokémon
and entered data across recoverable errors.

## V1-D036 — One Grouped Contextual Pokémon Editor

**Status:** Accepted

**Date:** 2026-07-13

Keep the selected Pokémon detail read-first and use one canonical grouped editor
for ordinary current-record changes. Present it as a wide right-side sheet on
desktop and a full-screen sheet on narrow screens so Team context remains
visible where space allows. `Edit details` opens the sheet at its beginning;
section-level edit actions open that same sheet focused on Identity, Current
setup, Moveset, or Origin and personal record rather than creating separate
forms with divergent behavior.

The sheet uses one explicit Save or Cancel outcome and preserves unsaved state
through nested selectors. It validates game-aware values and distinguishes
unrecorded facts from confirmed-empty move positions. Do not make the detail
panel permanently editable, split ability, nature, moves, and similar facts
into independent modals, or add autosave in V1.

Keep lifecycle and roster actions outside this ordinary editor. Moving between
Active and Reserve, reordering, evolving, changing form, replacing, and retiring
a Pokémon use dedicated flows because they can change position, identity,
history, availability, or how Team compares with Plan. They never manage the
Plan relationship from Team. A correction workflow may repair an incorrectly
recorded identity without turning species or form into an unrestricted dropdown.

## V1-D037 — Plan-Linked Evolution-Stage Realization

**Status:** Accepted

**Date:** 2026-07-13

From the Plan tab, let a pending Plan member start a Plan-owned `Add to Team`
handoff. A pending Plan member represents the intended target identity; the
actual Play Pokémon may be the target or any game-valid persistent species and
form on a directed evolution path to that exact target. Prefer the Plan's valid
preferred start when present, otherwise recommend the earliest obtainable stage
while allowing another valid intermediate stage or the target itself.

The confirmation must distinguish `Pokémon being added` from `Plan target` and
create one real Play Pokémon plus one explicit Plan-member relationship. An
earlier or middle stage becomes `linked`—shown to users as `In progress`; the
exact target species and form becomes `reached`. The relationship follows the
same Play Pokémon as it evolves and must never be inferred from a species or
evolution-family match.

Branching evolution paths are target-specific. A Plan for Espeon may offer
Eevee or Espeon, but not Umbreon; unavailable persistent forms and temporary
battle forms are excluded. A generic Team addition never suggests or creates a
Plan relationship. The Plan tab may explicitly connect an existing compatible
Play Pokémon later. One Play Pokémon represents at most one member of the
focused Plan unless the user deliberately replaces that relationship in Plan.

Keep all Plan linking outside Team and the ordinary Pokémon-details editor. A
selected member may show a read-only Plan comparison cue with an `Open Plan`
route. The Plan-owned handoff may save the Team member and explicit relationship
as one confirmed outcome because it begins from the Plan member.

An actual Pokémon outside every selected Plan target path is an off-plan Team
member, not a reason to rewrite the Plan. Add it after one non-blocking warning,
create no inferred Plan-member link, and do not offer to replace a Plan target
inside the add flow. Only an explicit Plan edit changes the intended lineup.

## V1-D038 — Focused Game-Aware Evolution Flow

**Status:** Accepted interaction baseline; visual validation pending

**Date:** 2026-07-13

Accept this logic for V1 so implementation has a coherent lifecycle, History,
and ownership contract. Treat the concrete dialog or sheet as a later visual
validation checkpoint: hierarchy, density, copy, branch selection, and
exception handling may be refined after the real UI can be evaluated without
reopening the underlying behavior by default.

Use `Evolve` as a dedicated recorded lifecycle action for a current Active or
Reserve Pokémon, not as a species field inside Edit details. Open one focused
dialog on wider screens or sheet on narrow screens. Show only direct,
version-appropriate persistent evolution outcomes from the member's current
species and form; never allow the flow to skip an intermediate stage or select
an arbitrary identity.

The surface keeps a visible before-to-after identity preview, explains the
applicable evolution method, and asks only for the chosen outcome, optional
current level, effective date certainty, and an optional short note. Generated
event copy is sufficient in V1. Nature, moves, held item, origin, nickname,
gender, shiny state, and personal notes remain attached to the same individual
without becoming fields in this flow.

Resolve a recorded ability to the corresponding valid ability of the evolved
form when the relationship is unambiguous and show the change in the preview.
If it cannot be resolved safely, require an explicit valid ability or `Not
recorded`; never preserve a known-invalid value silently. Do not force moveset
editing after evolution, but provide an optional route to Edit details after a
successful save.

All game-valid direct branches remain selectable. When a linked Plan provides
read-only comparison context, highlight the branch toward its target and allow
the user to record a different evolution with a clear `Leaves the path to
<target>` note. The note explains the comparison consequence only; evolution
does not update a Plan member, relationship, or status. The Plan tab derives and
presents reached, on-path, or divergent comparison from the latest Team state.
Never prompt the user to replace the Plan target because the actual Team changed.

`Record evolution` creates the before/after History event. Correcting an
incorrect current identity remains a separate `Correct identity` workflow and
never creates History. Active and paused Plays may default the effective date
to today; completed, abandoned, or imported history uses `Record past
evolution` language and must not imply today's date.

After one atomic success, retain the selected roster row, update its current
identity, preserve the same individual and details, and add the event to Recent
Team Events. Do not include any Plan write in that Team lifecycle mutation. Omit
`Evolve` when no valid direct outcome exists; show an explicit unavailable or
retry state when reference data failed rather than treating that failure as a
final evolution stage.

## V1-D039 — Plan Intent Never Follows Team Deviations Automatically

**Status:** Accepted

**Date:** 2026-07-13

Treat a Team Plan as the user's authored intention and the actual Play roster as
what happened. Adding, replacing, moving, retiring, or evolving an actual
Pokémon never edits the Plan's target species, forms, slots, roles, preferences,
or notes. The Plan changes only through an explicit Plan-editing action; removing
the focused Plan from a Play unlinks it but does not delete the standalone Plan.

When Add Pokémon selects an identity outside every relevant planned target path,
show one concise non-blocking warning: the Pokémon is not in the linked Plan and
will be added without changing it. Keep the normal add confirmation and do not
offer `Update Plan`, suggest replacing a target, infer a link from the roster
slot, or impede the addition.

An off-plan addition does not mark any target skipped or change any other Plan
member state because the user may still obtain the target later. V1-D054 owns
the Plan-side comparison labels and lifecycle semantics; Team does not assign
them from roster composition.

Plan comparison may identify actual members as `Off-plan`, but it must not pair
one with an unused target by position, species similarity, or evolution family.
The comparison reports the difference without judging it or prompting the user
to repair the Plan.

## V1-D040 — Plan Owns Editing And Relationship Management

**Status:** Accepted

**Date:** 2026-07-13

Keep a strict ownership boundary between authored intention and recorded fact.
The Plan tab exclusively owns Plan edits, target changes, Plan detachment,
`Add to Team` orchestration, and explicit member link, relink, unlink, skip, or
status-management actions. The Team tab owns the actual roster and its History.

Team may display a read-only comparison strip or selected-member cue and route
the user to `Open Plan` or `Compare with Plan`. It must not expose `Manage Plan
link`, `Link existing Pokémon`, a Plan-target selector, `Update Plan`, or any
other control that writes Plan data or Plan-member relationships.

Generic Team `Add Pokémon` creates only the actual Play Pokémon and any valid
Team History event. Even when the selected identity matches a planned target,
Team neither infers nor creates a relationship. If the selection is off-plan,
show at most one non-blocking informational note that the addition will not
change the Plan.

Plan may reuse the roster-creation surface after its own `Add to Team` action,
with the chosen target retained as read-only context and a valid earlier,
intermediate, or target stage selected for the actual Pokémon. Because this
handoff begins in Plan, Plan owns confirmation and creation of the explicit
relationship. Later comparison is derived from Plan and Team data; Team
mutations never synchronize or repair Plan state.

## V1-D041 — Quiet Atomic Move, Reorder, And Swap

**Status:** Accepted

**Date:** 2026-07-13

Use one `Move` interaction for current Active and Reserve members. Show the
current slot and every valid destination: choosing a confirmed-empty position
moves the member, while choosing an occupied position swaps the two members.
Reordering inside Active or Reserve uses the same rules. Drag and drop may be a
desktop convenience, but `Move to slot` provides the complete keyboard and
mobile path.

A not-recorded position is not available capacity. The user must first confirm
it empty or record its occupant. Complete every move or swap atomically so no
member is lost, duplicated, or left without a valid current slot. Refresh Team
analysis only after success and retain a stable selection.

Move, swap, and reorder are current-roster administration and create no History
in V1. They ask for no date, note, or correction-versus-event choice. A user who
wants to preserve a meaningful lineup uses `Record Team moment`. These actions
never write Plan data.

## V1-D042 — Fixed Form Identity And Recorded Form Transitions

**Status:** Accepted

**Date:** 2026-07-13

Every recorded Pokémon has a concrete form identity, but being selectable does
not make that form changeable. Treat the two cases differently:

- **Fixed form identity:** the individual was obtained, hatched, evolved, or
  otherwise established in that form. Choose it when adding or importing the
  member. Hisuian Growlithe remains Hisuian Growlithe; the form-change action
  cannot turn it into Kantonian Growlithe. A wrongly selected form uses
  `Correct record`.
- **Changeable form:** the same individual can perform a game-valid persistent
  transition from its current form, such as a supported Rotom appliance change.
  Only this case exposes `Change form`.

Determine changeability from a game- and content-scoped directed transition,
not merely from shared species, form category, availability, or a global
changeable flag. This supports forms that are changeable in one game but not
another and source-to-target rules that may be asymmetric. Temporary battle
transformations and cosmetic-only variants are never choices in this flow.

Use a focused before-and-after dialog or mobile sheet. Show valid destinations,
the known form-change method, and material consequences for typing, ability, or
held item. Preserve nickname, shiny state, gender, nature, origin, notes, roster
slot, and the same Play Pokémon identity. Keep recorded moves unless the user
edits them; when the form normally changes a signature move, explain that the
moveset should be reviewed instead of silently rewriting it.

The primary action is `Record form change`. It creates event-time before/after
identity so History and Collection retain both forms. Use optional date and note
context with the same current-versus-remembered language as evolution. Fixed
forms have no form-change action; a wrong form entered in Voydex uses `Correct
record` instead and creates no event. Plan comparison is read-only and cannot
block an otherwise valid Team change.

## V1-D043 — Slot Replacement, Reserve Displacement, And Retirement

**Status:** Accepted

**Date:** 2026-07-13

Keep `Replace` and `Retire` distinct. `Replace` means a new Pokémon takes the
selected current slot. Reuse the game-aware Add selector, keep the selected old
member and incoming member visible together, and keep the destination slot
fixed in confirmation.

When an Active member is displaced and Reserve has confirmed capacity, recommend
moving the old member to a chosen Reserve slot. In that outcome the old member
remains current and the meaningful event is the incoming Pokémon joining the
Team. The user may instead move the old member to Past Members as `Replaced`.
When no Reserve capacity exists, or a Reserve member itself is replaced, the
displaced member moves to Past Members. Never retire or discard it implicitly.

`Retire` removes a current member without adding another. Explain that the
record and History remain in Past Members and that the Pokémon can return later.
Both a true replacement-to-Past and retirement are recorded lifecycle actions
with current, past, or remembered date language and an optional note. If the
user only wants a member in Reserve, use `Move`; if the recorded roster is
wrong, use `Correct record`.

All compound roster, member, and event writes succeed atomically. Reuse and
availability warnings apply to the incoming Pokémon. Team may display read-only
Plan comparison information, but neither action changes the Plan.

## V1-D044 — Past Members And Return To Team

**Status:** Accepted

**Date:** 2026-07-13

Expose `Past members (N)` as a secondary route from the roster footer. It stays
inside Team because these are complete Play Pokémon records, not merely events.
Opening it replaces the fixed twelve-slot roster with a compact retired/replaced
member list and a clear return to `Current Team`; it does not add another Play
Hub tab or duplicate History.

Order past members by their effective leaving event or preserved manual timeline
order when available. A row shows last recorded identity plus `Retired` or
`Replaced`; selection reuses the member-detail hierarchy with past-state copy,
`Return to Team`, `View member history`, `Correct record`, and guarded deletion.
Past Members has no six- or twelve-member cap.

`Return to Team` restores the same Play Pokémon record rather than creating a
duplicate. Choose one confirmed-empty Active or Reserve slot, clear its past
status, preserve its details and History, and record a concise returned-to-Team
event. If the current roster is full, enter Replace with the returning member
already selected rather than silently removing somebody. Record that compound
outcome as one return-and-replacement moment with both identities, not two
competing events. Plan remains read-only.

## V1-D045 — Guarded Correction And Deletion

**Status:** Accepted

**Date:** 2026-07-13

Keep `Edit details` for ordinary facts and use a secondary `Correct record`
workflow when species, form, or roster placement was entered incorrectly. Make
the distinction explicit: correction changes Voydex's current truth and creates
no lifecycle event or false Collection evidence. An actual evolution, form
change, replacement, retirement, or return uses its named lifecycle action.

Correction preserves the same individual and validates the corrected game-valid
identity. Resolve or clear an incompatible ability and prompt the user to review
moves when needed. Existing event-time History snapshots remain unchanged; if a
past event is also wrong, route to History rather than silently rewriting it.

Keep `Delete Pokémon record` as a destructive overflow action for mistaken or
duplicate records, not ordinary Team management. The confirmation names the
current details being removed and any related History that will remain as
event-time evidence. Never delete History automatically. If a Plan-owned member
relationship exists, block deletion and route to Plan to resolve that
relationship first; Team must not remove it through a cascade. Retire remains
the safe reversible choice when the Pokémon really belonged to the Play.

## V1-D046 — Focused Progress Overview

**Status:** Accepted

**Date:** 2026-07-13

Use Progress Overview as the completion workspace and handoff into Story,
Pokédex, and Collectibles. Keep those three areas in stable order and let each
row own its recording state, normalized percentage, one useful next step, and
`Open` action. Story is always present. Pokédex and Collectibles appear as
active rows only when supported and enabled.

Optional content is scope, not a fourth progress category. Show enabled content
and which areas contribute to completion in one compact summary with `Manage
completion`; Settings remains the owner of those choices. A supported but
disabled area may appear quietly under `Not tracked`, while a concept the game
does not support is omitted.

Show overall completion only when its contributing groups are sufficiently
recorded. Use the accepted normalized group calculation and never add Story
milestones, Pokédex species, and Collectible units into one raw completed/total
number. A category row may show one clearly labelled native count from its own
area when useful.

Do not add three competing header update buttons, a duplicate `Next to update`
card, a large Completion Rules card, or a Recent Progress Activity feed. Each
category owns its action; meaningful Story events remain in History, while
routine Pokédex and Collectible updates remain quiet. Opening a category keeps
Progress as the active Play Hub tab and enters a focused local view with a clear
return to Progress Overview.

## V1-D047 — Game-Aware Story List-Detail Workspace

**Status:** Accepted

**Date:** 2026-07-13

Use Story as a focused Progress workspace with an ordered milestone list and a
larger selected-milestone detail region. Begin with a compact summary of the
current or furthest recorded position, the next applicable objective, and
normalized Story completion. When the game has distinct Main Story, Postgame,
DLC, or parallel story paths, expose them through a game-aware track switcher
instead of flattening every milestone into one list.

Each milestone row shows its completion state, name, location or concise
context, milestone type, and only the decision or snapshot cues needed for
scanning. The selected detail owns the description, prerequisites, recorded
decision, snapshot availability, notes, and milestone actions. Desktop keeps
the list and detail visibly distinct; narrow screens open the selected
milestone in a focused view or sheet with a clear return to the list.

Treat milestone sort order as presentation order only. Prerequisite
relationships determine dependencies, valid next objectives, and bulk
completion suggestions. Do not imply that every earlier row must be complete or
add a universal `Complete next` action when a game's Story is nonlinear.

Keep historical catch-up in a separate `Bulk complete` workflow so normal Story
logging stays direct. V1-D048 defines the accepted single-milestone completion,
decision, snapshot, correction, and imported-save behavior.

## V1-D048 — Quiet Milestone Completion And Dependency-Aware Catch-Up

**Status:** Accepted

**Date:** 2026-07-13

Selecting a Story milestone changes only the selected detail. Use `Mark
complete` as the direct routine action and keep ordinary completion out of
History. Open a focused completion sheet only when the milestone needs context
such as missing prerequisites, a decision, an optional note or date, or a
deliberate Story moment.

When required or story-unlock prerequisites are missing, show the exact
dependency set and recommend completing it with the selected milestone. Never
substitute every earlier display row. Suggested prerequisites remain optional,
and a player may preserve a partial historical record rather than fabricate
missing completion. Ask for a milestone decision when relevant, but keep `Not
recorded` valid for forgotten or imported history.

Important milestones may expose a separate `Record story moment` path. That
action deliberately creates a History event and may include the current Active
Team snapshot; snapshots remain optional. `Mark complete` alone does neither.
Completed milestones expose `Edit record` and `Mark incomplete`. Correction
does not cascade into later milestones and must not silently delete or rewrite
a linked History event.

Keep `Bulk complete` specifically for an existing save or historical catch-up.
Let the player choose the furthest known milestone for each applicable Story
path, derive the transitive required and story-unlock prerequisite closure, and
preview already complete, newly completed, excluded, and decision-needed
milestones before one atomic write. Suggested and optional milestones are
excluded by default; decisions are never guessed and may remain unrecorded.

Bulk completion creates no History events or snapshots in V1 and does not stamp
every milestone with the current date. Completion dates remain unrecorded by
default and can be corrected on individual milestones later. If any part of the
operation fails, none of its proposed changes persist.

## V1-D049 — Species-Level Pokédex Browser And Exact Bulk Updates

**Status:** Accepted

**Date:** 2026-07-13

Use the focused Pokédex area as a species browser rather than a long settings
form. For the active named Pokédex, show a compact Caught-first summary, Seen as
secondary context, normalized completion, and optional-entry inclusion. Follow
it with search, status and required/optional filters, Pokédex-number sorting,
and responsive Grid/List presentation.

Use Grid as the default desktop presentation for visual recognition and List as
the default narrow-screen presentation for density. Preserve both as user
choices. Every grid card has the same size and stable regions for Pokédex
number, sprite, name, types, required/optional status, and one explicit
three-state progress control: `Missing`, `Seen`, or `Caught`. Caught implies
Seen. Selecting the Pokémon identity opens its Codex reference; changing state
updates only the Play.

Progress remains species-level and shared across every applicable Pokédex that
contains that species. Do not accept only an overall in-game count. Routine
updates never create History.

For an imported Pokédex with unknown coverage, use `Catch up Pokédex` instead
of rendering every absent row as Missing. `Record what I know` preserves
unselected species as `Not recorded`; `Completed this Pokédex` proposes all
included entries as Caught and requires an exact preview. Once initialized,
`Mark multiple` lets the player choose Missing, Seen, or Caught, select exact
species through search and filters, preview the result, and apply one atomic
change set. Temporary batch selection may use checkboxes because the species
are genuinely independent members of that operation.

The named-Pokédex selector remains a prominent orientation element rather than
a hidden utility dropdown. V1-D050 defines the provisional visual direction to
validate in the later UI phase.

## V1-D050 — Provisional Named-Pokédex Card Rail

**Status:** Accepted as a prototype direction; visual validation required

**Date:** 2026-07-13

Prototype named-Pokédex selection as a full-width horizontal card rail directly
beneath the focused Pokédex heading and above the active-scope summary. Each
available scope remains visible as a selectable card with its name, region or
content context, concise progress, and a restrained progress indicator. Give
the active card clear accent, border, and background treatment without letting
the rail overpower the species browser.

Show the typical small set together on desktop. On narrow screens, use an
accessible horizontally scrollable and snapping tablist with a partial next
card visible as a discoverability cue. When only one Pokédex applies, retain one
prominent static identity card rather than hiding scope context. Preserve the
selected scope in the route so refresh, sharing, and browser navigation keep
the same Pokédex.

Do not add an `All Pokédexes` pseudo-scope. Progress Overview owns the aggregate
result; the focused browser always has one clear named scope.

This decision authorizes a visual prototype, not an irreversible component
choice. Re-evaluate the rail against realistic one-, two-, and three-scope
games at desktop and mobile widths. Replace or simplify it if it consumes too
much vertical space, hides overflow, makes the active scope unclear, or competes
with the Pokémon results. The selector must remain prominent even if the final
component changes.

## V1-D051 — Mainline Functional Contracts Before Visual Judgment

**Status:** Accepted

**Date:** 2026-07-13

Continue the remaining Mainline review at the functional-contract level: define
what each view owns, its information hierarchy, actions, states, responsive
behavior, and data requirements without asking prose alone to settle its final
visual composition.

Treat accepted Mainline layout directions as implementation-ready hypotheses
for the first coherent UI draft. During the later visual phase, evaluate the
views together using realistic data and desktop/mobile states. Preserve the
accepted behavior and ownership boundaries, but freely reorganize component
composition, density, emphasis, and local navigation when the rendered result
shows a better solution.

Do not repeatedly block functional planning on visual uncertainty that the UI
draft is better suited to resolve. Record explicit visual risks and validation
criteria so provisional ideas are easy to challenge later.

## V1-D052 — Adaptive Collectibles Workspace

**Status:** Accepted; visual validation pending

**Date:** 2026-07-13

Use Collectibles as an adaptive list-detail workspace. On desktop, show a
family-grouped navigator on the left and the selected group's tracker on the
right. Each navigator row owns its icon, native progress, and completion-scope
state. When only one group applies, remove the otherwise redundant navigator
and give the tracker the full width. On narrow screens, show the group list
first and open the selected group in a focused view with a clear return path.

Keep the page-level summary normalized across active groups rather than adding
heterogeneous raw units. The selected group owns its native collected/total
count, remaining count, percentage, and completion-scope context. Settings owns
whether supported groups contribute to Play completion.

For groups with identifiable entries, use a location-aware list with search,
All/Missing/Collected and location filters, canonical-order or location sort,
and direct collected-state actions. Rows show only useful identity, location,
sub-location, and hint data. Do not repeat a group-level `Included` badge on
every entry.

Imported saves may use `Record exact entries`, `I only know the total`, or
`Completed this group`. Count-only progress records an honest collected total
without assigning arbitrary identities. If some exact entries are also known,
show both the reported total and individually identified subset, and require a
deliberate reconciliation when switching to fully exact tracking. Explain that
count-only state can show how many remain but not which locations are missing.

After initialization, `Mark multiple` applies Collected or Not collected to an
exact reviewed entry set in one atomic write. Do not expose an immediate `Mark
visible collected` action whose effect depends silently on filters. Temporary
checkboxes are appropriate for batch selection. Routine Collectible progress
never creates History. Reward-threshold features remain outside the V1
Collectibles contract.

## V1-D053 — Progress Overview Owns Local Navigation

**Status:** Accepted; visual validation pending

**Date:** 2026-07-13

Keep Progress as one normal Play Hub tab whose destination is always Progress
Overview. Story, Pokédex, and Collectibles remain focused child views entered
primarily through the three Overview tracking-area rows. Do not add a persistent
second sub-tab row, and do not make the top-level Progress tab a dropdown.

Focused child views keep Progress selected and expose one plain return link or
compact breadcrumb to Progress Overview. A small `Switch area` menu may be
added beside the focused title only if realistic UI testing shows that direct
sibling movement is useful. It remains an optional shortcut, uses a popover or
sheet on narrow screens, and must not compete with Story paths, named-Pokédex
selection, or Collectible-group navigation inside the owning view.

This keeps the navigation hierarchy legible without spending a permanent row
on destinations already represented by the Overview.

## V1-D054 — Full-Width Plan Comparison List

**Status:** Accepted; visual validation pending

**Date:** 2026-07-13

Use the Play Plan tab as a full-width `planned target → relationship state →
actual result` workspace. Preserve Team's compact, equal-row scannability, but
do not repeat Team's selected-Pokémon detail panel. Six Primary positions remain
stable and explicit; Alternates reuse the row pattern while staying compact
when empty. A focused Plan-member sheet owns target and setup editing.

Lead with Plan identity and plain Primary-target counts, then show actionable
Plan checks, the Primary list, Alternates, and a compact non-judgmental list of
actual Team members outside the Plan. Do not add an adherence percentage,
overall score, duplicate Team analysis, or Plan activity feed.

Use explicit comparison labels: lifecycle-aware `Not used yet` or `Not used`,
`In progress`, `Reached`, `Diverged`, `Skipped`, and `Off-plan`. Every confirmed
result requires an explicit Plan-member-to-Play-member relationship. A different
actual Pokémon never edits the Plan, marks its target skipped, or becomes paired
by slot or similarity.

Plan owns Add-to-Team realization, linking an existing compatible Pokémon,
relinking, unlinking, skipping, restoring, target editing, reordering, and
detachment. Reached remains derived rather than manually checked. Reusable Plan
edits disclose cross-Play impact when applicable, while actual Pokémon detail
and lifecycle remain owned by Team.

## V1-D055 — Meaningful Full-Width History Timeline

**Status:** Accepted; visual validation pending

**Date:** 2026-07-13

Use the Play History tab as one full-width journey timeline. Keep search, an
All/Story/Team/Memories category filter, Highlights-only control, and
newest-first or oldest-first ordering in one compact toolbar. Do not add a
persistent selected-event panel, summary-stat cards, or History sub-tabs.

Each timeline row adapts one shared pattern to Story moments, recorded Team
lifecycle, manual memories, Play outcomes, major deliberately recorded
achievements, and event-time Team snapshots. Preserve exact, approximate, and
unrecorded dates; event-time Pokémon identity; before/after transitions; and
confirmed-empty versus not-recorded snapshot positions. Selecting a row opens
a contextual event-detail sheet.

Keep routine progress, roster administration, ordinary detail edits,
corrections, Settings changes, failed actions, and technical logs outside
History. Current Team, Story, and Plan truth remain owned by their workflows.
History owns only meaningful narrative records and event-time evidence.

Manual `Add memory` asks for title, date certainty, optional note, optional
existing Play Pokémon context, and journey position only when the date cannot
place the entry. Completed, abandoned, and imported Plays use `Add remembered
event`, avoid today's date, and offer `Save and add another`. Do not add a
separate bulk importer or Team-snapshot checkbox in V1; Team moments retain
their dedicated workflow.

Use one canonical manual journey sequence, never database creation time, with
newest-first as the default presentation and an oldest-first option. Known
historical dates propose placement, unknown dates require explicit placement,
and `Arrange timeline` provides keyboard-operable move controls.

Expose `Highlight` as the user-facing pinned state without moving or duplicating
the event. Separate normal narrative editing from guarded correction of
event-time identities and snapshots. Deleting an event removes only its History
record and attached evidence after explaining that current Team, Story,
Progress, and Plan state remain unchanged.

## V1-D056 — Section-Scoped Play Settings Workspace

**Status:** V1 functional contract accepted; visual validation pending

**Date:** 2026-07-13

Use one Play Settings workspace with General, Completion & Tracking, Rules &
Tags, and Play Status & Management sections. Present a compact local section
rail beside one focused section on desktop and an accessible section selector
on narrow screens. These sections do not become more Play Hub tabs or separate
V1 routes. Durable Play notes were merged into General by V1-D059.

Save one section at a time with explicit dirty-state actions and an unsaved
changes guard. Keep lifecycle, archive, restore, and delete as named,
consequence-aware actions outside a global settings save. Treat the owning game
and version scope as read-only in V1.

Keep Rules distinct from organizational Tags. V1 Notes owns durable Play
context only. The proposed next-session reminder is deferred separately in
V1-D058.

Lifecycle status does not freeze the Play, and marking a Play completed does
not mark Progress complete. Pause and resume remain quiet. Completion or
abandonment may hand off to final-Team or History recording after success but
does not automatically create History. Archive is reversible and separate from
status; delete removes Play-owned records without deleting an independently
reusable Team Plan.

Completion & Tracking will use explicit tracking-versus-completion meanings,
preserve recorded progress across scope changes, and preview completion impact.
Its accepted game-aware hierarchy is defined separately in V1-D057.
Rules & Tags remains one visually separated section whose accepted rule,
reusability, impact, and save behavior is defined in V1-D060.

## V1-D057 — Game-Aware Completion And Tracking Hierarchy

**Status:** Accepted; visual validation pending

**Date:** 2026-07-13

Lead Settings Completion & Tracking with a readable current-goal summary,
known completion under that definition, and one secondary route back to the
game-aware recommended goal. Optional-content scopes control which game content
is available; enabling one does not silently make every associated tracker
contribute.

Keep Main Story tracked and contributing as the locked baseline. Configure
applicable Postgame and optional-content Story paths, each meaningful named
Pokédex, and each supported Collectible group through consistent `Counts toward
completion`, `Track only`, or `Not tracked` states. Browse-only Pokédex
subsections inherit their aggregate scope rather than duplicating settings.

For a tracked Pokédex, configure whether source-optional entries contribute to
that scope. Use named optional groups such as Mythical Pokémon only when the
reference model supports them honestly; never render individual Pokédex species
as Settings checkboxes. Species progress remains shared across overlapping
Pokédexes.

Preserve all recorded progress when a tracker or content scope is disabled.
Before an atomic save, preview changed visibility, contribution, content
dependencies, the goal summary, and the resulting percentage when knowable.
Unknown imported progress remains `Progress not recorded` rather than becoming
a false zero.

Continue deriving completion by normalizing contributing child tracks within
Story, Pokédex, and Collectibles, then weighting the contributing top-level
groups equally. Track-only and untracked content do not affect the overall
percentage.

## V1-D058 — Defer Next Session Note

**Status:** Deferred beyond V1

**Date:** 2026-07-13

Do not include the proposed `Next session note` in V1 Settings, Overview, or
Journey Status. V1 keeps one durable Play-notes field and relies on Story,
History, and the accepted Play-wide action model for established context.

A later version may revisit a lightweight temporary bookmark such as `Next:
train the team, then challenge the Gym`. It must first prove a frequent
Overview or Journey Status read/write use that does not duplicate Story
objectives, History memories, or durable Play notes. Do not add V1 UI,
completion behavior, History behavior, or new persistence for it.

## V1-D059 — General Metadata And Honest Play Dates

**Status:** Accepted; visual validation pending

**Date:** 2026-07-13

Use four local Settings sections by merging durable Play notes into General.
General presents read-only game identity, required Play name, optional trainer,
game-compatible or custom platform, started and completed date knowledge,
cumulative playtime, and one plain Play-notes field.

V1 never changes the owning game from Settings. Prefer the game's mapped
platforms, expose a custom platform only through `Other`, and never persist both
a reference and custom value. Store playtime as one nonnegative duration while
letting the form use hours and minutes.

Preserve Exact, Approximate, or `Not recorded` certainty for started and
completed dates. Approximate accepts a useful month/year or year; it is not
coerced to an invented day. A currently Completed Play presents current
completion-date knowledge; a normally reopened Play may present a preserved
value as `Previously completed`. Started date is shown only after starting, and
General corrections never change lifecycle, decide that completion was false,
or create History automatically.

Save identity, platform, dates with certainty, playtime, and durable notes as
one stale-safe General result. A failure retains the complete form and cannot
leave a partial metadata update.

## V1-D060 — Distinct Reusable Rules And Tags

**Status:** Accepted; visual validation pending

**Date:** 2026-07-13

Keep Rules and Tags in one Settings section but render them as two distinct
areas. Rules express gameplay constraints and may influence explainable
warnings; Tags are organizational labels for browse and filtering only. Rule
and tag changes never create History or affect completion.

Applied rule rows expose category, current Play-specific configuration, and an
honest `Voydex can check this` or `Recorded only` capability. `Add rule` uses a
searchable, categorized sheet over recommended predefined rules and the user's
custom-rule library, then reveals only relevant configuration. V1 checkable
rules warn but never hard-block Team or Plan actions.

Predefined definitions are immutable. User-authored rules are reusable shared
definitions, while their application and supported configuration remain local
to a Play or Plan. V1 Play Settings may create, attach, configure, and detach a
custom rule but does not rename or delete an existing shared definition.
Detaching it from a Play never deletes it. Apply the same V1 attach-and-detach
boundary to reusable Tags, which may belong to Plays, Plans, or Play Pokémon.

The shipped V1 app catalogue determines which predefined rules Voydex can check
and validates their supported configuration. User-authored rules remain
`Recorded only`. Shared-definition administration, database-backed capability
metadata, and generalized configuration schemas are later-version concerns.

Tags use searchable multi-select and wrapping text-labelled chips with optional
accessible color tokens. Stage new reusable definitions, attachments, and
Play-specific rule configuration until the explicit section save, then commit
the complete local result atomically. Cancel, duplicate-name recovery, stale
definitions, or failure cannot leave orphan definitions or partial links.

## V1-D061 — Minimal V1 Database Correction With Backlog Preservation

**Status:** Accepted

**Date:** 2026-07-13

Limit the later V1 database pass to facts and guarantees genuinely missing for
the accepted V1 product. A database change is in scope only when the current
model cannot represent required user knowledge, enforce ownership or security,
protect a necessary invariant, or complete a required multi-table result
coherently.

Prefer the existing schema and seeds when application mapping, validation, or
composition can safely deliver the accepted behavior. Do not turn convenient
views, generalized metadata, richer administration, speculative performance
work, or future configurability into V1 database requirements. Record those as
backlog improvements instead.

No improvement is discarded when it leaves V1. Before a database proposal is
classified as a deferred improvement, create or update a concrete future
backlog entry that preserves the desired outcome, the reason for deferral, and
the product or scale trigger that would justify revisiting it. The backlog may
group closely related improvements, but it must name each preserved capability
explicitly.

This boundary does not defer genuine correctness. Authorization holes,
irreversible data loss, false user-facing facts, and partial writes that would
leave an accepted V1 action in an invalid state remain required fixes.

For Rules & Tags, retain the existing definitions, typed links, constraints,
and RLS. The confirmed V1-specific gap is the missing minimal predefined rule
seed catalogue. Reuse the broader Settings mutation from DG-017 only where the
accepted section save genuinely requires a coherent transaction; do not add a
new capability schema, usage-impact projection, or global reusable-definition
administration for V1.

## V1-D062 — Play Status And Management Label

**Status:** Accepted

**Date:** 2026-07-14

Use `Play Status & Management` as the user-facing name of the final local Play
Settings section. `Lifecycle` remains a valid internal product and data-model
term, but it is unnecessarily technical as navigation language.

The clearer label tells the user that the section contains current Play status
and relevant transitions alongside archive, restore, and delete. It remains one
local Settings section and introduces no route, ownership, database, or
behavioral change by itself.

## V1-D063 — Quick Status In The Play Header

**Status:** Accepted

**Date:** 2026-07-14

Keep routine Play status transitions in the persistent Play Header so they are
available from Overview, Team, Progress, Plan, History, and Settings. Present
contextual verb actions rather than a raw status selector: Not started offers
`Start Play` and secondary `Record as completed`; Playing offers Pause,
Complete, or Abandon; Paused offers Resume, Complete, or Abandon; Completed and
Abandoned offer a lower-emphasis route to reopen as Playing.

The adaptive Play-wide Next Step region may promote the same Start, Resume, or
other status action when it is the highest-priority next step. It must reuse or
visually promote that shared action rather than render a duplicate primary CTA.
Date and confirmation flows remain consistent regardless of header placement,
and narrow screens use a focused bottom sheet.

Play Status & Management does not repeat those routine buttons while the Header
is already visible. It owns current-status explanation, `Correct recorded
status`, Archive, Restore, and permanent Delete. This placement decision does
not settle every transition consequence.

## V1-D064 — Preserve Historical Completion On Reopen

**Status:** Accepted

**Date:** 2026-07-14

Treat `Reopen as playing` as an ordinary continuation rather than a claim that
the earlier completion was wrong. If the Completed Play has recorded
completion-date knowledge, preserve it through Reopen and present the value as
`Previously completed on ...` while the current status is Playing or another
later non-Completed state.

Reopen does not rewrite the start date, completion definition, Progress, or
History. A user whose completion was recorded by mistake uses `Correct recorded
status` instead. That focused correction explains the consequence and clears
the false completion date when applying the corrected status.

This decision reuses the existing Play completion-date fact and refines DG-017
and DG-018. It does not require a separate V1 lifecycle-history field, table, or
database gap.

## V1-D065 — Lightweight Date-Aware Status Transitions

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Use lightweight interaction proportional to each transition. Start and Mark
completed use focused date sheets because they create meaningful date
knowledge. Start defaults to Exact Today for the started date, and Mark
completed defaults to Exact Today for the completion date; both let the user
choose another Exact date, Approximate knowledge, or `Not recorded` before
confirming.

`Record as completed` from Not started is explicitly historical and therefore
defaults completion-date knowledge to `Not recorded` instead of inventing
Today. It accepts optional started-date knowledge and Exact or Approximate
values for either date. Pause, Resume, and Reopen are quiet immediate actions
with no new dates. Abandon uses a concise confirmation, creates no abandonment
date in V1, and preserves any earlier historical completion date.

Every transition is one owner-scoped atomic result. None changes Progress or
creates History automatically. A completion flow explains that status and
Progress are independent, then offers at most one optional post-success
handoff: `Record final team` when appropriate, otherwise `Add a memory`.

These choices complete the V1 functional status contract. Exact composition,
density, and responsive presentation remain subject to the first coherent UI
draft. The contract refines DG-017 and DG-018 without adding another V1 field,
table, or database gap.

## V1-D066 — Active-Team Sprite Preview In Plays Browse

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Show all six current Active-Team positions in every normal Play Browse result.
An occupied position uses the Pokémon's actual current-form sprite. A
confirmed-empty position and a not-recorded position use distinct shared
placeholder iconography and accessible labels, while every position retains the
same compact dimensions.

The preview is read-only and excludes Reserve Pokémon, names, types, moves, and
member actions. Its purpose is personal recognition across Plays, not roster
management. Selecting it follows the containing Play row into the Play Hub; it
does not introduce a separate Team link or nested control.

Reuse the semantic slot states accepted by V1-D021 through a denser Browse
variant rather than creating another Team-state vocabulary. Exact sprite size,
slot spacing, placeholder treatment, and mobile density remain visual-validation
questions. DG-020 owns the already-required persistence distinction between
confirmed-empty and not-recorded current positions.

## V1-D067 — Single-Column Play Library

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Use one cover-led Play row per result across the shared desktop canvas. The
single-column library gives each Play enough horizontal room for its identity,
lifecycle, Journey, six-position Active-Team preview, trustworthy Progress,
and organization context while preserving a clear vertical scanning rhythm.

Do not add a square artwork grid, a two-column card grid, a data table, or a
grid/list view toggle in V1. On narrow screens, the same semantic hierarchy
becomes one stacked vertical card rather than a separate mobile composition.
Exact row height, cover proportion, spacing, and summary density remain subject
to realistic desktop and mobile visual validation.

The chosen composition does not create a database requirement or a persisted
view-preference setting. Browse continues to derive its facts from the accepted
Play summary contract and the existing gaps referenced by DR-029.

## V1-D068 — Play Browse Row Information Hierarchy

**Status:** Superseded by V1-D103

**Date:** 2026-07-14

Give every Play result three stable levels of information priority. Cover art,
Play name, game/version context, and lifecycle status form the primary identity.
Journey, the six-position Active Team, and trustworthy Progress form the main
current-state scan. Trainer/date details, Tags, recent activity, and the open
cue remain supporting context.

The hierarchy describes emphasis and reading order rather than rigid desktop
columns. Narrow screens may stack the same groups, and exact alignment, spacing,
and relative size remain visual-validation questions. Missing or unrecorded
facts retain an honest labelled position so rows do not reorganize themselves
according to data completeness.

This decision changes no database requirement. It only prioritizes facts already
required by the accepted Browse contract and DR-029.

## V1-D069 — Plays Browse Filtering And Sorting

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Keep Search, lifecycle Status, Game, Sort, and one `More filters` trigger visible
on desktop. Search covers Play name, game name, trainer name, and Tag label.
`More filters` owns Generation, Tags, Rules, completion state, and Current,
Archived, or All visibility. Show applied criteria as removable chips with one
`Clear all` action rather than a permanent row of every selector.

Lifecycle, completion, and Archive remain separate concepts. Completion uses
`Goal met`, `In progress`, and `Progress not recorded`; Archive controls library
visibility and never becomes another lifecycle status. On narrow screens,
Search stays visible while Filters and Sort remain distinct directly accessible
actions, with the complete filter set in one focused sheet.

Default Sort to meaningful recent activity, followed by recently created, Play
name, Game, started date, and trustworthy completion progress. Unknown progress
must remain explicit and group honestly rather than sorting as zero. Preserve
the accepted search, filter, and sort state in URL query parameters.

This decision adds no new V1 database gap. DR-029 already owns the complete
owner-scoped read and meaningful-activity derivation; Rules, Tags, lifecycle,
Archive, and completion knowledge reuse their accepted contracts. Do not add a
persisted user filter preference for V1.

## V1-D070 — Plays Browse Archive And Recovery Behavior

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Hide archived Plays from the Current library and expose them through Archived
or All visibility. Keep an archived Play openable for reviewing its recorded
Team, Progress, Plan, and History; Archive is organizational visibility, not an
access lock. Mark Archive separately from lifecycle and offer `Restore Play` as
a valid sibling control and the only mutation directly on an archived Browse
row. Restore changes only archive visibility.

Use the shared accessible page-level Spinner for the initial load and an
explicit `Load more` control instead of endless scrolling. Do not render
Play-row Skeletons in V1. Filtering and sorting apply to the complete
owner-scoped library. An incremental load preserves existing rows and places
pending feedback on its responsible control. An incremental-load failure keeps
those rows and retries only the failed slice, while changed criteria replace
stale results without presenting mismatched Plays.

Distinguish the empty library, filtered-empty, only-archived, partial-summary,
initial-load failure, incremental-load failure, and Restore failure states.
Preserve the user's query and already loaded results whenever they remain valid;
keep partial Plays openable and label unavailable facts honestly. A failed
Restore leaves the Play archived and confirms that no data changed.

This behavior adds no new V1 database gap. DR-029 already owns Browse loading,
partial summaries, Archive visibility, and Restore recovery, while DG-017 owns
the accepted owner-scoped Restore contract.

## V1-D071 — No Dedicated Dashboard Quick-Stat Cards

**Status:** Accepted

**Date:** 2026-07-14

Keep the Mainline Dashboard focused on continuing one useful Play, previewing
other recent Plays, and showing recent meaningful activity. Do not add a
permanent equal-card row for total Plays, completions, games explored, Pokémon
companions, memories, or similar aggregates merely to fill the page.

Those metrics are less actionable than the continuation flow and either repeat
the Plays library or belong to the later Collection and Stats contracts. Recent
meaningful activity communicates memories with more value than a raw event
count. The page heading owns Create Play and Create Plan rather than another
duplicated Quick Actions card.

A quiet journey sentence may be tested during coherent visual exploration if
the composition needs it, but it is not required content and creates no V1 data
contract. This decision removes the older mandatory Dashboard summary-stats
bullet and introduces no database gap.

## V1-D072 — Latest Updated Dashboard Play

**Status:** Accepted

**Date:** 2026-07-14

Focus the Dashboard on the most recently updated non-archived Play regardless
of lifecycle. Reuse the same derived meaningful-activity timestamp as Plays
Browse: accepted writes to the Play or its owning Team, Progress, linked-Plan
relationship, History, Settings, and lifecycle data may advance it, while page
views do not. Do not rely only on the parent Play row's `updated_at` when a child
write is newer.

Adapt the section language to the result: Continue for Playing or Paused, Start
for Not started, and Revisit for Completed or Abandoned. If no non-archived Play
exists, use the new-adventure starting state rather than promoting an archived
Play. Other Recent Plays excludes the focus and follows the same activity
ordering.

Do not add last-viewed or favorite persistence to V1. A later favorite mechanic
may let the user override automatic recency once real multi-Play behavior proves
that useful. The V1 selection reuses DR-030 and the existing derived-activity
read requirement without creating another database gap.

## V1-D073 — Dashboard Latest-Play Summary

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Give the latest-Play summary five stable information levels: cover-led Play
identity with lifecycle and derived update time; current or furthest Journey;
all six equal current-form Active-Team sprite states; one trustworthy overall
completion-goal summary; and one Play-wide Next Step. Missing Journey, Team, or
Progress facts retain honest explicit states rather than shifting the hierarchy.

Reuse the Play Header's accepted Next Step resolver. The Dashboard shows one
short recommendation, one-sentence reason, and one primary navigation into the
owning Play area, with at most one quiet `Open overview` alternative. It may
invoke only the canonical destination workflow. Lifecycle recommendations route
to the Play Header's existing Start, Resume, Reopen, date, or confirmation flow;
the Dashboard never owns a duplicate mutation. Use `Open Play` when no strong
recommendation exists.

Exclude trainer name, lifecycle dates other than update context, Tags, Rules,
Plan comparison, Reserve count, recent History, top-level Progress group rows,
and utility menus. Those facts already have accepted homes and would turn the
focus into another Play Overview. This projection reuses DR-030 and its existing
gap references without introducing a new database requirement.

## V1-D074 — Other Recent Plays Preview

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Show up to three compact single-column Play rows after the featured Play. Reuse
the same meaningful-activity order, exclude the featured and archived Plays,
and keep Completed or Abandoned Plays eligible when recency places them next.
Render fewer rows without placeholders and omit the section when no other
current Play exists.

Each row contains a small cover, Play name, game/version, lifecycle badge, one
Journey line, derived `Updated ...` context, and a quiet open cue. The full row
opens Play Overview, while the heading owns one `View all Plays` route. Preserve
the same compact vertical list on mobile without a carousel or horizontal
scrolling.

Do not duplicate Team sprites, Progress, Tags, Rules, trainer detail, Next Step,
Browse filters, lifecycle mutations, or pagination. This keeps the section
visibly subordinate to the featured Play and distinct from the complete Browse
row. It reuses DR-030 and its existing meaningful-activity read without creating
a new V1 database gap.

## V1-D075 — Recent Meaningful Activity Preview

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Show up to four compact cross-Play History rows using the same meaningful-event
eligibility as Play Overview and full History. Each row carries the shared event
type, concise title, owning Play and game/version, honest effective-date
certainty, and event-time Pokémon or Team-snapshot context only when it improves
recognition. The complete row opens the event in its owning Play History.

Preserve effective journey ordering and explicitly label approximate or
unrecorded dates. Never present creation time as event chronology or substitute
current Pokémon identity for event-time evidence. Exclude routine progress,
ordinary Story completion, roster administration, detail edits, corrections,
Settings writes, failed actions, and technical records.

Do not add a global `View all activity` route while V1 has no global History
surface. When no eligible event exists, retain the section with one concise
explanation that recorded memories and major milestones will appear there,
without another major action. An unavailable read receives an explicit retry
state rather than empty copy. This preview reuses DR-030, DR-008, DG-003, and
DG-016 without creating another V1 database gap.

## V1-D076 — V1 Spinner Loading Pattern

**Status:** Accepted

**Date:** 2026-07-14

Use one accessible page-level Spinner for initial asynchronous page reads in
V1. Keep the persistent application shell visible and center the Spinner in the
content region with an honest loading label. Do not implement screen-shaped,
card-shaped, row-shaped, or field-shaped Skeleton placeholders anywhere in V1.

When valid content is already visible, preserve it and use a localized pending
Spinner on the responsible control or section. A Spinner communicates loading
only; it never replaces an empty explanation, partial-data label, or recovery
state. This decision updates the accepted Plays Browse loading treatment and the
Dashboard state proposal without changing their data contracts.

Preserve Skeleton loading as a future design-system improvement to reconsider
after screen geometry is stable and real perceived-performance evidence
supports it. The V1 choice reuses the existing shared Spinner and page-loading
component and creates no database requirement.

## V1-D077 — Dashboard Empty And Recovery States

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

When the user has no Plays, replace the normal summaries with one welcoming
first-adventure state whose only primary action is `Create first Play`; suppress
duplicate Create actions in the heading. When only archived Plays exist, never
promote one automatically. Show `No current adventures` with `Create Play`
primary and `View archived Plays` secondary.

Keep a partial featured Play openable, preserve its hierarchy, and label
unavailable Journey, Team, or Progress facts honestly. An unresolved
recommendation falls back to `Open Play`. Isolate a failed Other Recent Plays or
Recent Meaningful Activity read to that section while retaining valid content.
A complete Dashboard read failure receives one focused retry and must never be
presented as an empty account.

If the focus becomes archived, deleted, or inaccessible while the Dashboard is
being resolved, select the next eligible Play or use the appropriate empty
state. Loading remains the separate accepted Spinner state. This completes the
Dashboard's V1 functional contract and reuses DR-030 without creating another
database gap.

## V1-D078 — Batch The Standalone Plans Family Before Visual Validation

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Define Plans Hub, Create Plan, and standalone Plan Detail together at the
functional level, using the accepted reusable-Plan, Play comparison, Team
ownership, and Codex handoff contracts. Do not pause the design pass for every
local layout choice when realistic UI is the better way to form a preference.

The batch still fixes purpose, hierarchy, actions, state ownership,
responsiveness, failure behavior, and data needs. Exact result shape, section
placement, density, and control treatment remain visual hypotheses for the
coherent Mainline draft. This keeps the later visuals grounded in one complete
workflow without treating an untested composition as final.

## V1-D079 — Plans Hub Separates Team Plans From Game List

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Make Plans Hub the single Mainline destination for future-game intent, with two
obvious URL-backed sibling views that never merge their records: Team Plans is
the default reusable-team library, while Game List is the lightweight backlog
and wishlist. Each view owns its search, filters, sort, result count, action,
empty state, and loading behavior.

Team Plans is ordered by recent update by default. Search covers Plan name,
game, and planned Pokémon; compact filters cover game or generation,
Draft/Active/Archived lifecycle, Rules, and Tags. Draft and Active form the
default current library, while Archived remains explicitly accessible and
read-only.

Every result preserves game identity, Plan name and lifecycle, six equal
Primary target positions, Primary/Alternate counts, useful scope or
organization context, update time, and linked-Play count. The whole result
opens Plan Detail. Exclude inline member editing, lifecycle changes, delete,
Create Play, adherence, completion, and Team scores so the Hub remains a
scannable resumption surface rather than another Plan workspace.

Game List records one explicit Want to Play, Planned, Playing, Completed, or
Skipped state plus an optional note per game. Rows may route into Codex Game
Detail, Create Plan, or Create Play, but Plans, Plays, and their lifecycle never
rewrite game intent automatically. Contextual creation or completion may offer
an explicit update suggestion. This resolves the Mainline relationship as:
Plays record actual runs, Team Plans record intended teams, and Game List
records lightweight game-level intent.

## V1-D080 — Create Plan Is Concise And Context-Aware

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Create a Draft Plan from only game, an editable suggested name, applicable
optional content, and source context supplied by Codex or an owning Play. A
Pokémon source may atomically seed exact Primary slot 1; a Play source may
atomically link the new Plan without touching its Team. Ordinary creation does
not ask for the complete team, Alternates, metadata, Rules, Tags, moves, or
actual roster members.

Success opens Plan Detail, where full authoring belongs. Failure leaves no
partial Plan, member, scope, or Play link and preserves entered values. This
creates a fast beginning while retaining the game-aware scope necessary to
validate planned identities truthfully.

## V1-D081 — Standalone Plan Detail Owns Reusable Authoring

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Give standalone Plan Detail a header and lifecycle, actionable Plan checks, six
fixed Primary rows, up to six Alternates, separate Notes/Optional
Content/Rules/Tags setup, and a compact Used in Plays section. It owns target,
preferred start, role, nature, ability, item, four ordered moves, notes,
reordering, grouping, removal, lifecycle, and guarded delete. It does not show
one Play's actual Pokémon beside every target or duplicate Play-specific
relationship actions.

Draft and Active remain editable and may create Plays. Archived is readable
with existing links preserved but requires reactivation before edits or new
links. Cross-Play edit disclosure is mandatory because reusable target changes
may affect several comparisons; no reusable edit changes an actual Team.

`Create Play from Plan` reuses the concise Create Play flow. Plan optional
content prefills enabled Play content, while the normal game-aware Completion
Goal recommendation owns contribution defaults. Plan Rules are copied as
initial Play Rules, and Plan Tags remain Plan-only. The new Play owns those
copied settings independently; later changes do not synchronize silently. The
Play and focused link are created atomically, and Active/Reserve Team positions
remain empty.

## V1-D082 — Plans Reuse The Plays Product Grammar

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Make Plans feel like a sibling of Plays across the shared centered canvas,
plain page heading, one primary Create action, URL-backed two-level browse
controls, explicit Load more and recovery behavior, and one cover-led result per
row in a responsive single-column library. Plan rows replace Journey, actual
Team, and Progress with Plan lifecycle, six equal Primary target positions,
capacity/check context, organization, linked-Play usage, and recency.

Reuse Create Play's focused modal/sheet grammar, contextual game/source
prefill, validation, cancellation, pending, and success behavior. Keep Create
Plan to one concise step because it has no lifecycle or Completion Goal choice.
Reuse the Play Header's desktop and mobile structure for Plan Detail: cover,
identity/context, then high-value actions.

Do not reproduce Play Hub tabs inside standalone Plan Detail. A Play needs tabs
because it owns Team, Progress, Plan comparison, History, and Settings as
separate workflows. A reusable Plan owns one coherent authoring workspace.
Shared composition establishes Mainline consistency; it does not merge Plan and
Play state or force identical actions.

## V1-D083 — Collection And Stats Are Evidence-Backed Read Models

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Derive Collection and Stats from actual Play-Pokémon companions, recorded
event-time identities, meaningful Team snapshots, Play context, and trustworthy
initialized Progress. Planned targets, Pokédex Seen/Caught state, current
Active slots alone, and inferred evolution-family similarity do not prove that
a Pokémon was used.

Keep both surfaces read-only. Corrections route to Team, History, Progress, or
Settings. Never present database row creation time as in-game chronology, count
repeated snapshots as new companions, or turn a derived result into a second
mutable source of truth.

## V1-D084 — Species-Led Collection Grid

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Use one Collection browse result per species, aggregating exact recorded forms,
distinct companions, supporting Plays, and meaningful historical evidence. Use
an image-led responsive grid that borrows Pokémon identity language from Codex
and browse-control grammar from Mainline; do not force Collection into the
cover-led Plays list.

Keep Search, Game, Type, and Sort visible, with Generation, exact Form,
companion state, Shiny knowledge, MVP, Tags, and Play lifecycle in More filters.
Sort most recently recorded by default while grouping unknown chronology
honestly. Archived Plays remain part of Collection history. Cards distinguish
companions from Plays and never label raw evidence-row count as `times used`.

## V1-D085 — Collection Detail Explains Companions Across Plays

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Make Collection Pokémon Detail a species-level personal-history destination
with `All used forms` or an exact used-form scope. Lead with personal identity,
then show distinct companions, meaningful moments grouped by Play, and compact
evolution-family usage context. Keep generic mechanics in Codex.

One companion may appear on an earlier-stage species page because an event
records that stage while the current individual has evolved. State the
relationship instead of creating a duplicate companion. Historical event or
snapshot evidence without a surviving companion link remains a historical
appearance. Group moments by Play so approximate and unknown dates are not
forced into false cross-Play chronology.

## V1-D086 — Explainable Stats Without False Favorites Or Scores

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Use one vertical Stats page with a shared All Mainline, Generation, or Game
scope and four sections: Adventures, Pokémon, Progress, and Challenges. A small
orientation set may show total Plays, lifecycle Completed Plays, distinct
games, and distinct recorded species; playtime appears only with coverage.

Use labelled distributions and ranked lists that expose their denominators and
link to supporting Plays, Collection, or Progress. Say `Most used`, not
`Favorite`, unless a future explicit favorite exists. Count distinct companions
and supporting Plays, calculate types in recorded game/generation context,
withhold unknown Progress, and report Rule participation without inventing
challenge success.

Exclude category sub-tabs, arbitrary precise date ranges, composite scores,
percentiles, streaks, opaque correlations, inferred best Teams, and manually
maintained aggregate truth from V1. Richer analytics and caching require later
evidence rather than expanding the initial database scope.

## V1-D087 — Exact-Game Codex Pokémon Context

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Anchor Pokémon Browse and Pokémon Detail to one explicit exact Codex Game
Context. Use it for game-era types and attributes, persistent forms, artwork,
availability, Pokédex placement, stats, abilities, evolution, matchups,
learnsets, detail routes, and Mainline intent. Never combine latest-era card
facts with an older game destination.

Resolve the game from an explicit route or validated Browse URL, then the last
game selected during the current Codex browser session, then a deterministic
latest supported seeded V1 Mainline game. Keep it visible. Cross-session or
cross-device persistence is a deferred convenience, not a V1 database need.

## V1-D088 — Species-Led Pokémon Browse

**Status:** Superseded by V1-D121

**Date:** 2026-07-14

Use one equal image-led card per species with exact-game artwork, type, form or
availability context, and an exact-game Detail destination. Keep Search, Game,
Type, and Sort visible, place generation, category, and availability in `More
filters`, and keep personal used, planned, or targeted overlays outside V1.

Preserve criteria and loaded position in the URL, restore scroll and useful
focus on return, and use deliberate `Load more` rather than endless automatic
preloading. Target several compact desktop columns and two useful phone columns
when viewport and text scale permit. The initial state uses the shared Spinner,
with filtered empty, incremental retry, and per-card partial-data handling.

## V1-D089 — Reference-Led Pokémon Detail

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Keep the current searchable species switching, generation-grouped game choices,
artwork and Shiny treatment, and game-aware section foundation. Add an
independent semantic identity heading and keep the exact game unambiguous on
every viewport. Persistent form is reference scope; Shiny remains presentation.

Organize identity and context, overview, evolution and forms, availability,
matchups, learnset, and Pokédex placement as one readable page. Omit absent
optional facts instead of filling important space with `Unknown`, use semantic
headings and responsive learnset structure, and preserve unaffected sections
when a secondary read fails. Height, weight, Pokédex prose, and richer training
facts are not new V1 database requirements.

## V1-D090 — One `Use In Mainline` Handoff

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Expose one Pokémon Detail `Use in Mainline` entry with Add to Plan, Add to Play,
Check in my Plays, and View my history branches. Create Plan belongs inside Add
to Plan instead of appearing as a second top-level action.

Preserve exact game, species, persistent form, availability or content context,
and intended branch through authentication. Mainline selects eligible
destinations, validates ownership and product rules, owns every mutation, and
returns safely to the same Detail context on cancellation or failure. Codex
remains a public reference source and never writes Plan, Play, Team, or
Collection truth.

## V1-D091 — Cover-Led Games Browse

**Status:** Accepted; cover-card visual treatment selected

**Date:** 2026-07-14

Use one equal cover-led card per supported exact game, grouped in deterministic
generation and release order. Keep Search, Generation, and Game type visible,
place Region and Platform in `More filters`, and preserve criteria, scroll, and
focus through URL-backed state and return behavior.

The thirty-eight-game V1 catalogue needs no Sort, pagination, personal overlay,
or inline Mainline action. Use several desktop columns and target two useful
phone columns rather than making every cover a near-viewport-width mobile card.

## V1-D092 — Game Detail Bridges Reference And Mainline

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Make exact game identity, structured facts, content scopes, named Pokédexes,
exact-game Pokémon browsing, and trustworthy related releases the Game Detail
reference hierarchy. `Start a Play` is the one primary action; `Create a Plan`
and `Add to Game List` are supporting Mainline actions. Reference navigation
remains visually and semantically distinct from personal mutations.

Do not present generic game-type copy as a game-specific synopsis or fill the
related section with games that merely share a generation or region. Richer
editorial content and typed release relationships remain deferred.

## V1-D093 — Content-Scoped Pokédexes And Availability

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Derive a game's applicable Pokédexes through Base and optional-content scopes,
so seeded DLC Pokédexes remain visible even when they do not use the base
version group. Group every named Pokédex under its owning content scope.

Show `Available species` only as a distinct-species result from the resolved
game/content availability model. Never relabel the largest listed Pokédex size
as total game availability. Omit the aggregate when coverage is not trustworthy.

## V1-D094 — Named-Pokédex-First Game Pokédex

**Status:** Accepted; selector and responsive visual validation pending

**Date:** 2026-07-14

Give Game Pokédex an independent semantic heading and a prominent named-Pokédex
selector grouped by Base and optional content. Keep the active Pokédex obvious
without opening a menu and preserve valid URL-backed Search, Type, optional
Sort, and loaded position when switching.

Use a semantic comparison table on wide screens and compact labelled species
rows or cards on narrow screens. Preserve exact-game identity and navigation
without requiring horizontal scrolling merely to identify or open a species.
Large Pokédexes use explicit `Load more` rather than rendering or preloading the
complete result set automatically.

## V1-D095 — Game-Origin Mainline Handoffs

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Preserve the exact game, intended action, and originating Detail route through
authentication. `Start a Play` resumes concise Create Play and ends at Play
Overview. `Create a Plan` resumes concise Draft creation and ends at Plan
Detail. `Add to Game List` creates or edits the one independent game-intent row
and may confirm in place with a link to Game List.

Mainline owns source validation, authorization, duplicate prevention, pending
and conflict behavior, atomic personal writes, and every success destination.
Cancellation or failure returns safely to the exact Game Detail without a
partial Play, Plan, optional-content selection, or duplicate Game List row.

## V1-D096 — Intent-Aware Login

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Use Login as a focused global transition rather than a generic Mainline detour.
When authentication interrupts a protected route or Codex action, show a
compact human-readable summary of the exact destination or intent that will
resume. Direct Login remains concise and follows the normal last-active-module
resolver after success.

Keep only Voydex identity in the focused Login shell rather than displaying an
unrelated remembered module selector. Validate every internal continuation
target, provide a safe cancel/return path, and revalidate the owning operation
after authentication. Never perform or automatically replay a mutation from
Login.

## V1-D097 — Complete Focused Authentication States

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Keep Log in and Sign up as modes of one focused surface and add Recover account,
Check Email, Choose a new password, and expired-session states. Sign up collects
only Email, Password, and Confirm password; Profile, preferences, and onboarding
remain outside account creation.

Preserve Email and non-sensitive intent after recoverable errors, clear
passwords, associate feedback with fields, translate provider errors, and move
focus deliberately. Password recovery uses a neutral response that does not
reveal account existence. A signed-in Login request redirects to its validated
destination or normal app entry.

## V1-D098 — One Vertical Global Settings Page

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Keep `/settings` as one authenticated, readable vertical page with Profile,
Preferences, and Account. Three sections do not justify V1 tabs,
nested routes, or a permanent side rail. Each editable responsibility owns its
save, pending, conflict, and error state.

Profile edits only optional Display name. V1-D105 defers Appearance and keeps
V1 light-first. Account owns read-only Email, password recovery, Sign out, and a
separated Danger zone. Play- and Plan-specific metadata, completion, optional
content, Rules, Tags, and lifecycle remain in their product owners.

## V1-D099 — Advisory Reuse With Appearance Deferred

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Separate Pokémon reuse scope—Off, same form, same species, or evolution
family—from response—warn or hide/de-emphasize with a clear Show used override.
Do not expose the stored block behavior in V1. A valid Pokémon choice must
remain possible, and the preference never rewrites existing Teams, Plans, or
Collection evidence.

V1-D105 supersedes the browser-local theme portion of this decision. V1 uses one
light-first presentation; Appearance and a deliberately designed night-
expedition dark mode remain post-V1 work.

## V1-D100 — Secure Account Deletion

**Status:** Accepted; backend verification required

**Date:** 2026-07-14

Include Delete account in the V1 Account danger zone because Voydex stores
personal Plays, Plans, progress, and history. Require consequence disclosure,
typed confirmation, recent authentication when necessary, one reviewed server-
owned operation, and no partial success.

The workflow removes the Auth identity and dependent owner-scoped data, clears
the session, and returns to the public entry. The current cascades provide a
foundation, but no reviewed owner-callable deletion operation exists; track it
as a genuine V1 backend gap rather than deleting application rows from the
client.

## V1-D101 — Shared System-State Grammar

**Status:** Accepted; visual validation pending

**Date:** 2026-07-14

Use the smallest honest state: local pending/error, partial section, page state,
then global service status. Keep the shell during initial loading and use one
labelled Spinner; V1 uses no Skeletons. Preserve useful content during local
work and failures.

Distinguish empty, filtered empty, unrecorded, unavailable, error, not found,
permission, expired session, disabled, and service failure. Use semantic
headings, owner-appropriate recovery, deliberate focus, and non-color meaning.
Broad connection trouble uses a persistent user-facing banner with impact and
retry, not a tooltip-only floating database icon.

## V1-D102 — Functional Review Complete

**Status:** Superseded in process by V1-D105; functional review remains complete

**Date:** 2026-07-14

The V1 breadth-first map and depth-first functional screen contracts are
complete enough to pass the visual exploration gate established by V1-D004.
The next design batch generates exactly three distinct directions for the
shared shell and Mainline Dashboard using the same accepted content, realistic
data, system states, and desktop/mobile requirements.

Wait for one direction to be selected before expanding it across the remaining
screens or implementing production UI. Existing screens and legacy references
remain grounding evidence, not designs to paste into the new directions.

## V1-D103 — Compact Play Browse Card

**Status:** Accepted

**Date:** 2026-07-17

Reduce every normal Play Browse result to the smallest useful recognition and
progress summary: a proportional game cover that fills the padded content
height and respects the row's shared outer inset, Play name, exact game name,
last available update date, six-position Active Team preview, one overall
completion percentage, and one unlabelled directional arrow. The whole row
remains one accessible link to the Play Hub.

Do not put the cover inside another box or repeat lifecycle, Journey, trainer
metadata, Tags, or category-level progress inside each card. Use whitespace
rather than vertical separator lines between sections. Overall completion uses
the existing configured-goal calculation across required Story milestones,
Pokédex species, and Collectibles; missing or unavailable knowledge is never
presented as zero.

Keep one horizontal scan row on desktop. On phones, the cover and Play
information form the top row; Active Team and then overall progress plus the
arrow move into full-width rows below it. Reduce the cover's phone-scale visual
weight and enlarge Team slots enough for sprite recognition without allowing
them to overgrow the card. At tablet widths, return to a compact horizontal row
with a smaller cover instead of stretching the phone stack across the canvas.
Reduce the cover one further step on desktop so it remains subordinate to Play
identity and Team. This decision supersedes V1-D068's denser row hierarchy
without changing the single-column library decision in V1-D067.

## V1-D104 — View-By-View Production Visual System

**Status:** Superseded by V1-D105

**Date:** 2026-07-17

Replace the earlier process requirement to stop for exactly three parallel
shell and Dashboard directions before production work. The accepted V1
functional contracts remain the product constraints, while the current shell
and iterative Dashboard, Plays Browse, Play Overview, and Play Team design work
establish the visual grammar to apply one bounded view at a time.

Production status comes only from code and verification. Plays Browse is the
first implemented slice; the Dashboard, Overview, and Team explorations remain
design direction until their production components and states are built. Each
new view starts from its canonical screen-family document, accepted decisions,
the design system, and nearby live code. Selected behavior from conversation
images must be captured in versioned documentation rather than left as hidden
chat context.

Validate meaningful composition changes at representative phone, tablet, and
desktop widths. Finish realistic data and required system states for the active
view before treating it as complete, then carry the same visual system into the
next view. This decision supersedes V1-D001's all-design-before-implementation
ordering, V1-D004's exact-three-direction gate, and the process gate in V1-D102;
it does not reopen the completed functional review or erase recorded database
gaps.

## V1-D105 — Light-First Explorer's Field-Guide Visual Reset

**Status:** Accepted

**Date:** 2026-07-17

The current production interface is functionally useful but its generic
blue-primary, default Card, Button, list, and dashboard language is no longer
the visual target. Preserve its implemented behavior, data boundaries,
responsive hierarchy, and accessibility evidence while replacing its styling
with the canonical [V1 Visual Language](./visual-language.md).

Anchor Voydex in green and brown as the fields, forests, earth, clothing, gear,
and backpack identity of exploration. Use warm beige for working surfaces, sky
blue for daylight atmosphere or information, and muted gold for sunlight,
discoveries, and milestones. Design V1 light-first. A later dark mode should be
a deliberately designed night expedition, not an automatic inversion.

Reserve restrained wooden signposts for major destination navigation. Use
lighter trail-marker language for tabs and contextual routes, and keep normal
actions as clean, familiar controls. Let Codex read as a field guide and
Mainline as an expedition journal without applying wood, parchment, leather,
maps, texture, or decorative icons to every surface.

Generate exactly three independent directions for the same authenticated
shared-shell and Plays Browse contract at a representative desktop viewport.
The directions may vary composition, typography, material emphasis, and
navigation treatment, but must preserve V1-D103, all accepted Plays Browse
behavior, realistic states, and the clean-first accessibility standard. Wait
for a direction to be selected or revised before changing production UI.

This decision supersedes V1-D104's selected visual grammar, V1-D007's V1 night
scene, and the Appearance/theme portions of V1-D098 and V1-D099. It reopens only
the visual system. It does not reopen the completed functional review, erase
existing implementation, or change the view-by-view implementation discipline
that resumes after selection.

## V1-D106 — Selected Journal Shell And Plays Browse

**Status:** Superseded visually by V1-D107

**Date:** 2026-07-17

Select the revised direction represented by
[Selected Shell And Plays Browse](./assets/selected-shell-plays-browse.png). It
combines the first exploration's organization, color discipline, and cord-free
wooden destination planks with the second exploration's illustrated journal
character. The third direction is not carried forward.

Use a deep-forest shared navbar, warm centered journal page, ambient daylight
gutters, Lora display typography, and DM Sans operational typography. Reserve
wood for mounted destination links. Keep module switching, account access,
Search, Status, Game, Sort, and all mutations as familiar product controls.
Persistent labels sit above separately framed values, and the four Browse
controls share one 48-pixel height.

On wide screens the journal remains a bounded 1200–1280 pixel working surface;
it does not stretch a literal book texture across the viewport. Plays use a
compact one-column journey-log rhythm with cover, identity, six Team slots,
honest overall progress, and one open cue. Thin rules and whitespace carry the
material language instead of nested Cards or heavy frames.

Production exposes only mounted destinations and actions, even when a design
reference includes future routes. The shared shell and Plays Browse are the
first implementation slice and are verified at representative desktop, tablet,
and phone widths. Apply the same system to later views one bounded screen at a
time. This decision closes V1-D105's selection gate without changing any
accepted product or data contract.

## V1-D107 — Slim Survey-Map Frame And Light Route Navbar

**Status:** Superseded by V1-D108; material language revived by V1-D112

**Date:** 2026-07-17

Select the revised slim survey-map frame represented by
[Selected Shell And Plays Browse](./assets/selected-shell-plays-browse.png). The
paper remains a continuous, content-driven working surface, but the heavy cover,
left binding, and layered page block are removed. A thin four-sided wood, canvas,
and brass rail now establishes the exploration-tool character without consuming
meaningful working width.

Use one warm-white sticky navbar with forest-green identity, clean module and
account controls, and icon-plus-label module-view links. The active destination
uses a clear underline in addition to color. Keep a small 12–16 pixel gap between
the navbar and framed page so the two surfaces do not visually merge. Production
continues to expose only mounted destinations even when visual references show a
longer future route.

The page header and operational content share one continuous paper surface.
Search, Status, Game, Sort, result count, and Play rows are separated by spacing
and thin rules rather than an inset Card. The generated survey-frame asset is a
real scalable border image, and the illustrated mountain header remains blended
into the paper.

The browser continues to own vertical scrolling. The top and side rails remain
visible while the bottom rail appears only at the true end of the page; long
views therefore read as an extending field sheet instead of a viewport-locked
book. Tablet and phone keep the same frame at reduced thickness, reflow controls
and rows, and allow only purpose-owned horizontal overflow inside dense content.

This decision supersedes V1-D106's deep-forest navbar, book cover, binding,
layered page block, and inset operational sheet. It preserves the accepted
light-first palette, typography, illustrated header, labelled controls, Play row
contract, mounted-route discipline, and view-by-view implementation process.

## V1-D108 — Strapped Expedition Frame And Pinned Content Sheet

**Status:** Superseded visually by V1-D109

**Date:** 2026-07-18

Select the strapped expedition frame represented by
[Selected Shell And Plays Browse](./assets/selected-shell-plays-browse.png).
Retain V1-D107's warm-white route navbar and the small gap below it, but replace
the slim survey rail with substantial warm walnut side rails and matching top
and bottom rails that are only slightly thinner. Leather-and-brass corner
straps establish the carried exploration-tool character. Do not add ruler
ticks, height measurements, arrows, numbers, or survey labels to the frame.

Keep the illustrated page header on the base journal paper. Place Search,
Status, Game, Sort, result count, and Play rows on one brighter operational
paper sheet held by two antique-brass clips. This sheet is a shared content
surface, not a generic rounded dashboard Card, and repeated rows remain
separated by journal rules rather than being boxed individually.

The browser owns vertical scrolling and the frame grows with the document. The
bottom straps and rail appear only at the true end of the page; the shared shell
never introduces a nested vertical scrollbar. At narrower widths, reduce rail
thickness and reflow controls and Play rows before they can clip. The page must
not acquire horizontal overflow; a purpose-built dense workspace may still own
an explicit inner horizontal scroller when its contract requires one.

This decision supersedes V1-D107's thin survey frame and single uninterrupted
operational surface. It preserves the light navbar, daylight map scenery,
12–16 pixel gap, typography, blended header, labelled controls, mounted-route
discipline, and view-by-view implementation process.

## V1-D109 — Top-Mounted Hanging Paper Sheet

**Status:** Superseded visually by V1-D112

**Date:** 2026-07-18

Select the top-mounted hanging paper treatment represented by
[Selected Shell And Plays Browse](./assets/selected-shell-plays-browse.png).
Retain the warm-white route navbar, its 12–16 pixel separation from the page,
the daylight map scenery, and the dissolved illustrated header. Replace the
four-sided walnut expedition frame with one warm ivory mounting strip at the
top of the paper, accented by brass studs and two leather-and-brass clamps.
The stitched, lightly deckled seam beneath that strip should make the page read
as paper attached to a carried field-guide fixture rather than as a generic
Card.

Keep the side and bottom treatment deliberately simple and thin. They are the
subtle edges of the hanging paper, not wooden rails, a ruler, or another heavy
frame. Do not add measurements, height ticks, arrows, numbers, or survey labels.
At narrower widths, reduce the mounting strip's height so the attachment remains
recognizable without consuming the working area.

The illustrated page introduction, Search, Status, Game, Sort, result count,
and Play rows all share one continuous warm paper surface. Remove the separate
pinned operational sheet and its two decorative clips. Spacing and journal
rules separate the page regions; repeated results remain unboxed.

The browser owns vertical scrolling. The top fixture appears once at the start
of the page, the thin paper sides follow the document, and the bottom edge
appears only at the true end. The shared shell never adds a nested vertical
scroller. This decision supersedes V1-D108's four-sided walnut rails, corner
straps, and clipped inner sheet while preserving the selected palette,
typography, navbar, background, header art, controls, mounted-route discipline,
and view-by-view implementation process.

## V1-D110 — Undistorted Mount Hardware And Repeating Paper Edges

**Status:** Superseded visually by V1-D112

**Date:** 2026-07-18

Render the top mounting rail, brass pins, and leather-and-brass clamps as
separate raster assets. Build the rail from one repeating center texture and
fixed left and right cap images so its outer paper corners remain organic rather
than ending in vertical cuts. No discrete hardware or cap asset may stretch to
fit the sheet width. Every pin and clamp keeps its intrinsic aspect ratio and
scales uniformly between responsive bands.

Place the middle pin at the exact horizontal center of the sheet. Mirror the
outer pins from fixed edge insets, and place the two clamps symmetrically around
the center. Their responsive size may reduce with the mounting rail, but their
shape and relative alignment do not distort.

Start the scrolling paper body just beneath the independent mount. Use the
selected irregular paper-edge raster as a vertically repeating mask on both
sides, and overlap its center fill so antialiasing cannot create a visible seam
between the live paper and either edge. The deckled silhouette follows the
content-driven document height without a fixed frame height, stretched
full-height image, or nested vertical scroller. Keep the edge narrow enough to
preserve working width and let the browser remain the only normal
vertical-scroll owner.

This decision refines V1-D109's implementation without changing its continuous
hanging-paper composition, light navbar, scenic background, illustrated header,
or view-by-view rollout.

## V1-D111 — Background-Blended And Scroll-Revealed Navbar

**Status:** Superseded by V1-D115

**Date:** 2026-07-18

Keep the opening navbar in normal document flow instead of fixing it to the
viewport. Blend that opening state into the refined daylight scenery with a
quiet warm translucent scrim that dissolves at its lower edge. Do not use an
opaque white slab, hard bottom border, or strong navbar shadow before scrolling.
The Voydex identity, module switcher, active module view, and account control
remain readable and aligned to the broad shell grid.

After the opening bar has naturally scrolled out of view, move the same navbar
into a smaller floating field-guide presentation near the viewport top. This
scrolled presentation may use a translucent warm surface, restrained border,
shadow, and backdrop blur because it must remain legible over long journal
content and intentionally acts as a separator. Reuse the same controls and
their interaction state; do not mount a second competing navigation system or
cause the document to jump when modes change. Return to the blended opening
state when the user reaches the top again, and honor reduced-motion preferences.

Apply the same behavior at phone, tablet, and desktop widths while preserving
the accepted mobile top-sheet menu and mounted-destination discipline. This
decision supersedes only the sticky, opaque-navbar portions of V1-D107 through
V1-D110. It preserves the hanging-paper surface, refined daylight background,
forest-green identity, route hierarchy, and browser-owned page scrolling.

## V1-D112 — Content-Driven Leather Clipcard Frame

**Status:** Superseded visually by V1-D113

**Date:** 2026-07-18

Select a thin expedition clipcard treatment. Keep
V1-D111's background-blended opening navbar and scroll-revealed floating state,
but replace the hanging-paper mounting bar, studs, clamps, and deckled side
mask with one restrained four-sided leather frame and two small antique-brass
clips resting on its top edge.

Build the frame from real purpose-fit assets: fixed brass-protected leather
corner pieces and separate seamless leather strips for the horizontal and
vertical edges. Mirror the strip texture at its tile boundary so a repeated
edge cannot introduce studs, knots, or bright join marks through long content.
Never stretch one full-frame image to the page height, crop the frame at the
viewport, or simulate the material with CSS drawings. Render each top clip from
its own image at a fixed aspect ratio and align the pair to the same near-corner
insets as the selected reference. Reduce frame and clip sizes at narrower
responsive bands without removing the carried field-guide character.

Keep the illustrated introduction, controls, count, and page content on one
continuous warm paper surface inside the frame. The browser remains the normal
vertical-scroll owner: side edges repeat for the entire document and the
bottom edge appears only at the true content end. The shared shell does not
introduce a nested vertical scroller; a purpose-owned workspace may still own
explicit horizontal overflow when its contract requires it.

This decision supersedes V1-D109 and V1-D110's hanging-paper material treatment
while reviving and refining V1-D107's slim survey-map frame. It preserves the
selected palette, typography, scenic background, V1-D111 navbar behavior,
continuous paper hierarchy, mounted-route discipline, and view-by-view rollout.

## V1-D113 — Stitched-Leather Card Binding

**Status:** Superseded by V1-D116

**Date:** 2026-07-18

Refine V1-D112 after the first production comparison. The shared surface remains
one content-driven warm paper card, but its frame must unmistakably read as a
matte leather field-guide binding rather than carved wood. Use purpose-made
raster assets with pebbled hide grain, restrained stitching, softly darkened
edges, and muted brown/antique-bronze color. Do not carry a bright yellow or gold
keyline beside the leather into the paper surface.

Repeat separate seamless horizontal and vertical leather strips for dynamic
page width and height. Protect the four joins with compact, fixed
leather-and-bronze corner images whose simple triangular caps stay close to the
rail thickness. Remove the two decorative top clips; the corners alone provide
the restrained carried-object cue. Do not simulate the texture or hardware with
CSS drawings, and do not stretch the corner assets with the document.

Preserve V1-D112's continuous paper hierarchy, normal browser-owned vertical
scrolling, true-end bottom edge, responsive frame reduction, scenic gutters,
navbar gap, mounted-route discipline, and view-by-view rollout. This decision
supersedes only V1-D112's original rail material, ornate corner treatment, inner
gold keyline, and top-clip hardware.

## V1-D114 — Clipped Working Paper Inside The Clipboard

**Status:** Superseded by V1-D120

**Date:** 2026-07-18

Refine the inside of V1-D113's leather-bound surface using the selected
[Clipped Working Paper reference](./assets/selected-clipcard-paper-sheet.png).
The outer card is the carried clipboard: its illustrated page introduction
remains on the warm expedition backing. The operational content below it is one
lighter inset sheet of paper held at its top edge by two small antique-brass
paper clips. On Plays Browse, Search, Status, Game, Sort, result context, and
the complete Play list all belong to that one sheet.

Render each paper clip from its own fixed-aspect raster image so it overlaps the
sheet edge without stretching. Let the sheet grow naturally with its content;
do not use one full-height paper image, a repeated clip, or a nested vertical
scroll area. The browser continues to own vertical scrolling, the outer leather
side rails continue for the true document height, and both the inner sheet and
outer bottom edge end only when their content ends. Reduce sheet padding, clip
size, and clip inset at narrower breakpoints without losing the attached-paper
reading.

The four outer corners must also be compositionally independent from the edge
rails. Each corner asset contains only one compact antique-brass triangular
protector on transparency; it contains no leather, stitching, horizontal strip,
or vertical strip. The seamless leather assets alone own the four edges. This
prevents doubled material and visible rail fragments where corners meet.

Keep the working sheet subtle: a slightly lighter paper texture, fine neutral
edge, and shallow lift shadow distinguish it from the clipboard without making
it a generic nested Card. Continue to separate controls and repeated rows with
spacing and journal rules rather than additional decorative containers. This
decision supersedes only V1-D113's one-continuous-paper composition and combined
leather-and-bronze corner images; it preserves the stitched-leather rails, lack
of an inner gold keyline, illustrated header, normal document scrolling,
responsive canvas, scenic gutters, and view-by-view rollout.

## V1-D115 — One Background-Blended Navbar

**Status:** Superseded by V1-D118

**Date:** 2026-07-18

Keep only the background-blended opening navbar. It remains in normal document
flow, aligns with the same responsive canvas as the main page, and scrolls away
with the rest of the document. Do not reveal a sticky, fixed, or floating
replacement after it leaves the viewport. Keep the navbar surface transparent
so the scenic background shows through without a white wash or hard lower edge.

This removes the observer, transition state, and floating-only visual treatment
from the shared shell while preserving the existing Voydex identity, module
switcher, module-view navigation, account controls, mobile top-sheet behavior,
and scenic background blend. This decision supersedes V1-D111's
scroll-revealed presentation without changing its opening-navbar treatment.

## V1-D116 — Simple Expedition-Card Border

**Status:** Superseded by V1-D120

**Date:** 2026-07-18

Replace the detailed stitched-leather rails, corner caps, and edge-joining logic
with one simple matte brown border around the shared warm-paper card. Keep a
modest radius and restrained shadow so the surface still reads as carried field
gear, but make the treatment flatter and more cartoon-like than realistic
leatherwork. Do not add a second inner keyline or outer decorative hardware.

The border follows the card's natural content height and normal browser
scrolling. V1-D114's lighter clipped working sheet remains inside the card. This
decision supersedes V1-D112 and V1-D113's outer frame assets and the outer-rail
requirements carried into V1-D114.

## V1-D117 — Wooden Module-View Destination Signs

**Status:** Accepted and implemented

**Date:** 2026-07-18

Render primary module-view destination links as restrained illustrated wooden
signs. Use a light wood sign for inactive destinations and a forest-green sign
for the active destination, with crisp labels, accessible focus, and subtle
motion only. Keep the assets simplified and game-like rather than realistic.

This sign treatment communicates navigation only. The module selector, account
menu, filters, Create Play, Save, and other actions remain familiar product
controls and do not inherit the plank treatment.

## V1-D118 — Conventional Module-View Navigation Buttons

**Status:** Accepted and implemented

**Date:** 2026-07-18

Render primary module-view destinations with the shared button variants rather
than illustrated plank assets. Use the outline variant for inactive
destinations and the primary variant for the current destination, retaining the
icon, label, accessible focus treatment, and `aria-current="page"` state.

This removes decorative navbar noise, keeps navigation consistent with the
product control system, and eliminates the dedicated plank assets and masking
styles. The module selector remains visually distinct because it changes scope
rather than choosing a view inside the current module.

## V1-D119 — Text-Only Plays Page Header

**Status:** Accepted and implemented

**Date:** 2026-07-18

Keep the Plays browse introduction compact and text-only. Remove the decorative
mountain illustration, its mobile icon fallback, the reserved illustration
layer, and its dedicated masking styles. The page title and short description
remain on the warm clipboard backing immediately above the clipped working
sheet.

This simplifies the working view and lets the scenic app background and content
hierarchy provide the visual character. It supersedes the illustrated-header
requirements carried by V1-D114 without changing the shared background,
clipboard border, clipped working sheet, normal document scrolling, or
responsive canvas.

## V1-D120 — One Continuous Journal Page

**Status:** Accepted and implemented

**Date:** 2026-07-19

Simplify the shared working composition after reviewing the implemented Plays
Browse in production. Retire the literal clipboard metaphor: remove the matte
outer frame, lighter inset sheet, brass paper clips, and the shared clip-paper
component. Use one warm, lightly textured journal page for the compact page
introduction, controls, result context, and repeated content.

Give the page one quiet one-pixel edge, a small radius, and a restrained ambient
shadow. Continue to show the daylight landscape in the outer gutters, keep the
background-blended navbar in normal document flow, and let the browser own
vertical scrolling. Use typography, spacing, thin rules, game artwork, and
truthful journey data for hierarchy and adventure character rather than office
stationery or layered material props.

This decision supersedes V1-D114's clipped working sheet and V1-D116's framed
expedition card. It preserves V1-D115's navbar behavior, V1-D118's conventional
destination buttons, V1-D119's text-only Plays header, the existing product and
data contracts, responsive row composition, mounted-route discipline, and
view-by-view rollout.

## V1-D121 — Automatic Incremental Pokémon Browse

**Status:** Accepted and implemented

**Date:** 2026-07-19

Continue Codex Pokémon Browse automatically in small result batches shortly
before the user reaches the current boundary. The image-led species catalogue is
a continuous recognition-and-exploration task, so a repeated `Load more`
decision adds interruption without useful meaning. Keep the current results in
place while appending, retain the visible result count, and reset the rendered
window when filters change.

Use bounded batches rather than rendering the complete catalogue at once. Keep
a manual continuation control only as a compatibility fallback when scroll
observation is unavailable, or as recovery if future incremental I/O can fail.
This decision supersedes only V1-D088's explicit `Load more` requirement; it
preserves the exact-game, URL-state, return-position, responsive-density, empty,
partial-data, and accessibility contracts.

## V1-D122 — Plan Context Lives Inside Team

**Status:** Accepted and implemented

**Date:** 2026-07-20

Remove Plan from the Play Hub's top-level tab set. The Hub now uses Overview,
Team, Progress, History, and Settings. Team owns one compact read-only Team Plan
section beside the actual roster workflow, while canonical standalone Plan
Detail owns target authoring, checks, lifecycle, Play comparison, and member
relationship actions.

When a Plan is linked, Team may show its identity and a concise explicitly
derived target summary with one `View plan` destination. When no Plan is linked,
the section may offer a quiet link-or-create entry without implying that Plan
targets occupy actual roster positions. Team never edits Plan targets or infers
relationships from roster identity.

This decision supersedes V1-D054's requirement for a dedicated Play Plan tab
and any later navigation wording that assumes that tab. It preserves V1-D054's
comparison language, explicit relationship ownership, non-judgmental treatment,
and full-width Plan Detail information hierarchy.

## V1-D123 — Full-Height Journal Shell

**Status:** Accepted and implemented

**Date:** 2026-07-21

Place the navbar and all normal app page content inside one centered
`app-page-surface`. The surface starts at the top of the viewport, fills at
least the dynamic viewport height, and grows with long content. It owns no top
or bottom margin or padding. Internal navbar and main-content spacing remain
the responsibility of those regions.

Keep the refined daylight landscape visible in the two side gutters. Use quiet
inline edges and a restrained centered shadow to distinguish the journal
column, without rounded top or bottom edges that make it read as a floating
Card. The navbar remains transparent, in normal document flow, and scrolls away
with the page. A subtle warm bottom border separates it from page content
without turning it into a second surface. The browser remains the only vertical
scroller.

This decision supersedes the separate scenic placement and navbar-to-page gap
described in V1-D115 and preserved by V1-D120. It preserves V1-D115's
normal-flow navbar, V1-D120's continuous non-clipboard journal surface, the
accepted maximum working width, and Landing as the intentional shell exception.

## V1-D124 — Automatic Play Team Plan Comparison

**Status:** Accepted and implemented

**Date:** 2026-07-21

Replace manual Plan-member-to-Play-member relationships and stored progress
statuses with a deterministic, read-time comparison. A Plan contains one to six
ordered primary targets. Species and form are required; ability, nature, held
item, gender, and up to four moves are optional constraints. Level, ball,
alternate targets, and per-Play member status are outside the V1 model.

Match every planned target to at most one existing Play Pokémon. Prefer exact
species and form, then alternate form, earlier or later directed evolution, and
finally another branch in the same evolution family. Active and Reserve members
receive full optional-build comparison. Retired and Replaced members provide
identity-only lifecycle evidence. Hard-deleted members are absent even when
orphaned historical evidence remains. Unplanned members are summarized but not
shown as comparison rows.

Open the focused comparison inside the active Team tab so the Play shell and
primary tabs remain visible. On desktop, a compact list updates a persistent
detail panel beside it; tablet and phone open the same detailed field comparison
in a sheet. Editing inside a Play must clone the reusable Plan and relink only
that Play; editing from the standalone Plans experience warns about every linked
Play that may be affected.

This decision supersedes V1-D018 and V1-D020's Overview placement, V1-D037's
explicit realization link, V1-D040's member-relationship management, V1-D054's
stored relationship/status model and no-detail-panel layout, and the
relationship-ownership clauses preserved by V1-D122. It preserves V1-D122's
Team-owned entry point, read-only comparison, and standalone reusable Plan.
