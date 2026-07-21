# V1 Shell And Navigation

This document defines the accepted responsive information architecture for
Voydex's shared shell. It separates global product identity, module switching,
module-local navigation, contextual workflow navigation, and account controls
while applying the selected explorer's field-guide visual language.

## Current Status

**Status: Selected V1 shell treatment implemented and responsively verified**

The top-bar shell and centered content canvas remain the accepted foundation.
[V1-D120](./decisions.md) records the single journal-page treatment, while
[V1-D115 and V1-D118](./decisions.md) own the background-blended navbar and
destination controls. V1-D118 supersedes V1-D117's plank treatment with shared
compact buttons. All use the canonical
[V1 Visual Language](./visual-language.md).

## Navigation Layers

Voydex has four distinct navigation layers:

1. **Product level:** Voydex identity and the general product entry resolver.
2. **Module level:** switch between Mainline, Codex, and future available
   modules.
3. **Module-view level:** move between the active module's primary areas.
4. **Contextual level:** navigate within a specific Play, Plan, Pokémon, game,
   or focused workflow.

Account, settings, authentication, and global utilities sit outside product
modules. These layers should not be collapsed into one undifferentiated menu.

## Accepted Shared Shell

Use one responsive top app bar for normal app surfaces:

- **Start:** Voydex mark and current-module switcher.
- **Center on desktop:** primary views belonging to the active module.
- **End:** account/authentication controls and only genuinely global utilities.

The opening bar remains in normal document flow and uses a transparent surface
so the scenic sky continues through it without a border or abrupt white block.
It scrolls away with the page and does not return as a sticky, fixed, or
floating surface. Long pages rely on normal browser navigation rather than a
second scroll-triggered navbar presentation.

The shell remains visually stable while module identity and module-view links
change. Mainline and Codex may have subtle character through active states,
icons, or accent treatment, but they should still feel like parts of one app.
Module-view destinations use shared compact buttons: outline when inactive and
primary when current. Module switching, account access, and ordinary actions
remain clean controls with hierarchy appropriate to their role.

Place normal page content inside a centered canvas up to approximately 1376
pixels at large viewports. Align navbar content with the same broad grid and
keep 12–16 pixels of space below the bar before the journal page. The scenic
background remains visible in the side gutters and may appear subtly behind
page context, preserving Voydex's sense of place without competing with
operational content.

Use one warm, lightly textured journal page with a quiet one-pixel edge, small
radius, and restrained shadow. Page context and operational content share that
surface. Do not add a clipboard frame, inset paper, clips, rails, stitching,
corner caps, hardware, or a second decorative keyline. The page follows long
content naturally without a shell-owned scrollbar.

The canvas is a maximum working width, not a requirement for every section to
stretch fully. Reading content, forms, and focused dialogs may use narrower
measures; tables, browse grids, and complex workspaces can use the available
canvas.

Landing is the intentional exception: its immersive scenic composition does
not need the persistent app shell. Intro, Login, public Codex, and authenticated
modules can use the shared shell appropriate to their access state.

## Product Identity

- The Voydex mark is always recognizable and returns to the general product
  entry resolver.
- It should not be overloaded as a direct Mainline or Codex shortcut.
- The in-app shell keeps the mark and module selector without repeating the
  wordmark; contexts without a module selector may show the full wordmark. The
  accessible name remains Voydex in either composition.

## Module Switcher

- Always show the current module by name, not only by icon or color.
- Open a focused list of modules with an icon, name, and concise purpose.
- Selecting a module opens its stable default landing view and updates the last
  active module.
- Signed-out users can enter public modules. Every released protected module
  remains visible with a clear locked/login state and preserves the intended
  destination through authentication.
- Do not show speculative future modules or `Coming soon` entries in V1.
- The switcher must remain usable when the module list eventually grows beyond
  two entries; the persistent bar should not become a row of every module.

## Module-View Navigation

Each module owns a short set of primary destinations:

### Mainline

- Dashboard.
- Plays.
- Plans.
- Collection.
- Stats.

### Codex

- Pokémon.
- Games.

Only implemented destinations should appear. Creating a Play, editing a team,
or adding a Pokémon is a contextual action rather than a permanent top-level
navigation item.

## Contextual Navigation

- A Play Hub owns navigation between Overview, Team, Progress, History, and
  Settings. Linked Team Plan context lives inside Team and routes to standalone
  Plan Detail.
- Team may expose a focused Analysis child route while Team remains visibly
  active and the user retains a clear return to roster management.
- Progress opens its Overview and may expose Story, Pokédex, and Collectibles as
  focused child views within the active Play. Keep Progress selected, provide a
  clear return, and avoid both a persistent second tab row and a dropdown Hub
  tab. A compact sibling-area menu is optional inside focused views.
- History keeps one full-width timeline in the active Hub tab. Selecting an
  entry opens a contextual detail sheet rather than a child route or persistent
  secondary panel.
- Settings uses a compact local section rail on desktop and an accessible
  section selector on narrow screens. Its sections remain inside the active
  Settings Hub tab rather than becoming more Hub tabs or child routes.
- A Plan, Pokémon, or game detail surface owns its own local context and back
  path.
- Contextual navigation belongs within the page/workspace, not in the global
  app bar.
- Breadcrumbs should appear only where hierarchy or return context is otherwise
  ambiguous; they are not mandatory decoration on every page.

## Accepted Desktop Organization

Use one full opening app bar:

- left: Voydex mark and module switcher;
- center: active module's primary view links;
- right: account or login and any proven global utilities.

This keeps frequent destinations one click away without turning modules into
separate applications. Page-level primary actions such as `Create Play` belong
near the page title or relevant content, not in the persistent app bar.

The opening presentation is not sticky. It leaves the viewport with the rest of
the document and no replacement navbar appears after it clears the viewport.

The shadcn navigation-menu module switcher is the accepted interaction pattern.
Its clean trigger, descriptive module list, and scalable dropdown behavior
remain. It stays visually distinct from the module-view destination buttons
because it changes module scope.

## Refinements, Not Structural Changes

- Align the navbar and main content to the same responsive canvas and gutters.
- Strengthen current module and active-view cues with shape, typography, icon,
  or indicator changes rather than color alone.
- Preserve readable module names and comfortable hit areas as labels or the
  number of modules grow.
- Preserve forest-green identity and readable controls while letting the
  opening bar visually dissolve into the background.
- Keep profile actions concise and reserve the right side for truly global
  controls.
- Verify overflow, keyboard behavior, focus, long labels, and signed-out or
  locked-module states at realistic widths.
- Do not add global actions simply to fill visual space.

## Accepted Mobile Organization

Use a compact opening bar for Voydex identity, module switching, and account
access, then let it scroll away without a sticky or floating replacement. Keep
the current top-sheet navigation pattern as the V1 baseline, with module names,
descriptions, access states, and the active module's view links organized inside
the sheet.

This preserves one predictable navigation model without permanently consuming
mobile screen space or introducing a second dynamic navigation bar. A
module-aware bottom bar or sticky module-view row may be compared during later
visual exploration, but it should replace the accepted baseline only if the
prototype demonstrates a meaningful usability improvement.

Deep Play, Plan, Pokémon, and game navigation remains inside the page rather
than being promoted into the global mobile navigation.

## Global And Contextual Actions

- Account profile, Settings, and Sign out belong in the account menu.
- V1 exposes no theme control. A later night-expedition theme requires a
  deliberate design pass before Appearance returns to Settings.
- Search belongs to the module or surface whose scope it searches; do not label
  a control global if results are only Codex or only Mainline.
- Create, add, edit, filter, sort, and bulk actions belong to their relevant
  page or workspace.
- Notifications, help, or other utilities should not enter the persistent shell
  until V1 defines real behavior for them.

## Responsive And Accessibility Requirements

- Current module, active module view, and active contextual section must each
  have a non-color cue.
- Navigation must remain operable by keyboard and assistive technology.
- Mobile overlays need clear titles, focus containment, close behavior, and
  scroll support.
- Long labels and translated text must not collide with the logo or account
  controls.
- The shell must handle signed-out, signed-in, loading, expired-session, and
  unavailable-module states without layout instability.
- Page content should not be obscured by sticky top or bottom navigation,
  including device safe areas.

## Candidate Shared Components

- Shared top app bar.
- Module switcher trigger and module option.
- Desktop module-view navigation.
- Mobile module-view navigation.
- Account/authentication menu.
- Contextual workspace navigation.
- Optional breadcrumb/back-context pattern.

## Data And Database Impact

- Last-active-module behavior is already recorded as requirement `DR-001`.
- Module labels, descriptions, access requirements, and stable default routes
  are application configuration in V1.
- No new database gap is identified by this shell recommendation.
