# Project Status

This document is the only canonical source for Voydex's current implementation
checkpoint. Product contracts describe accepted behavior; code and tests remain
the evidence for exact implementation details.

## Current Foundation

- The architecture refactor is complete. Routes are thin, product code is owned
  by modules or global features, Supabase adapters live under `src/platform`,
  and `src/lib` is retired.
- The Voydex database source is authoritative in this repository under
  `database`, with deterministic generated local load artifacts and generated
  TypeScript types.
- The internal `reference` module owns reusable Pokémon and game contracts,
  domain rules, catalogue components, and presentation helpers.
- Application and database boundaries are enforced by automated checks.

## Implemented Product Surfaces

### Mainline

- `/mainline/plays` is an authenticated, real-data Play browse with URL-backed
  Search, Status, Game, and Sort controls plus compact enriched summary cards.
- `/mainline/plays/[playId]` mounts the Play Hub.
- The Overview tab loads real play, team, progress, and recent-history data.
- Team, Progress, Plans, History, and Settings remain intentionally small tab
  shells until their workflows are implemented.
- The Team slice has a verified backend mutation path for adding a team member;
  no Team form is mounted yet.

### Codex

- Pokémon browse and game-scoped Pokémon detail are implemented with seeded
  reference data.
- Games browse, game detail, and game Pokedex routes are implemented.
- Species-only Pokémon detail routes redirect to a default supported game.

### Global Features

- Authentication, proxy session refresh, app shell, module-aware navigation,
  settings, site pages, and health surfaces have explicit owners.

## Current Product And Design Checkpoint

The breadth-first map and V1 functional screen contracts remain accepted in the
[V1 Design Workspace](./design/v1/README.md). [V1-D115, V1-D118, V1-D119, and
V1-D120](./design/v1/decisions.md) define the current light-first explorer's
navbar, single journal page, compact introduction, and conventional
destination-link direction within the canonical
[V1 Visual Language](./design/v1/visual-language.md).

The shared shell and Plays Browse now implement the selected system: one in-flow
navbar that dissolves into the scenic sky, the refined daylight-valley
background, and one warm, lightly textured journal page with a quiet edge and
restrained shadow. Primary route links use shared compact buttons; the module
selector, account access, and actions remain clean controls. The compact page
introduction, labelled controls, result context, and rule-separated Play rows
now share that single surface without a clipboard frame, inset sheet, brass
hardware, or repeated nested Cards. A small gap keeps the navbar and journal
page visually distinct, while the browser owns long-page scrolling without a
nested vertical scroller. Only surfaces listed under Implemented Product
Surfaces are production implementation; the remaining screen work is still
design direction until it is represented in code and verified.

The current production baseline is Plays Browse:

- URL-backed Search, Status, Game, and Sort controls are implemented, including
  debounced updates, result counts, filtered-empty recovery, filter reset,
  persistent labels, and compact equal 40-pixel control heights.
- Each Play row now composes game cover, Play and game identity, update date,
  six Active-Team slots, honest overall completion, and one open cue from
  owner-scoped summary, reference-game, Overview, and Team reads.
- Missing progress remains distinct from unavailable enrichment; unavailable
  Team data retains six explicit positions instead of silently disappearing.
- Phone and tablet use stacked journal rows, while compact and wide desktop
  restore the horizontal comparison layout so identity and Team remain dominant.
  The selected composition and its realistic occupied/partial fixture states
  have been browser-checked at representative phone, tablet, and desktop widths.
  The simplified single-journal composition was checked at representative
  desktop, tablet, and phone widths. The page followed growing content without
  clipping, horizontal overflow, or a nested vertical scroller. The
  subsequent navbar refinement kept the opening bar in document flow without a
  hard lower edge or scroll-triggered replacement, and the mobile module sheet
  continued to open and close normally.
  The next checkpoint is the authenticated Play Hub at
  `/mainline/plays/[playId]`, beginning with its shared top section, tab workspace,
  and Overview tab only. Carry the selected shell, typography, compact-control,
  paper-surface, and information-density grammar into that bounded view without
  changing its queries, mappings, routes, permissions, tab contract, or mutation
  behavior. Team and Codex follow in later bounded slices. Plays Browse still
  needs archived visibility, secondary filters, explicit recovery, and
  incremental-load states before its full V1 product contract is complete.

## Next Chat Handoff

At handoff time, the active branch is `codex/explorer-field-guide-design`. Commit
`497f22bf` is the pushed explorer-shell and Plays Browse baseline. The working
tree contains this handoff; run `git status` before editing and preserve those
changes.

Start with the existing Play Hub and Overview implementation under
`src/modules/mainline/features/plays/hub`. Read the shell, top-section, tab, and
Overview files together with [Mainline Play](./design/v1/mainline-play.md) before
changing composition. The first slice should:

1. browser-review the current authenticated Play Overview against the selected
   Plays Browse visual grammar;
2. refactor the Play top section and tab workspace as one coherent bounded view;
3. restyle the existing Overview sections using real data without implementing
   the intentionally empty Team, Progress, Plans, History, or Settings tabs;
4. preserve the current server query, mappers, authorization, routes, actions,
   truthful unavailable states, and normal document scrolling;
5. verify desktop, tablet, phone, keyboard/focus behavior, overflow, and browser
   console output, then run `npm run verify`.

Do not add database changes, another background, dark mode, sticky replacement
navigation, Skeletons, decorative edge systems, or a broad cross-page refactor
while this slice is active.

Future design and implementation tasks start from the canonical screen-family
document, accepted decisions, design system, current code, and verified
responsive behavior. Conversation images remain iteration evidence; any
selected behavior that future work must preserve belongs in versioned docs.

## Known Gaps

- There is no committed authenticated end-to-end browser suite.
- Authenticated Play Hub visual coverage still requires a stable test user or
  deterministic local browser fixture.
- Codex reference-query performance has not yet been profiled under realistic
  usage.
- Pokémon Browse still maps latest available attributes to result cards before
  opening an introductory-generation game route, so the implemented card and
  destination can disagree until the accepted exact-game query correction is
  built.
- Later production views have not yet been migrated to the selected journal and
  field-guide system; their existing layouts remain functional evidence.
- Plays Browse still needs archived visibility, secondary filters, explicit
  recovery states, and incremental loading before its accepted V1 contract is
  complete.
- Secure account deletion has no reviewed server-owned operation proving Auth
  identity removal, dependent owner-data cascades, session invalidation, and
  failure rollback without exposing administrative authority.
- Team-derived requirements have exposed confirmed gaps in atomic roster
  placement, explicit known-empty versus not-recorded current slots, the
  distinction between selectable fixed forms and game-valid directed form
  transitions, current/past lifecycle support, and Plan-safe correction or
  deletion. The consolidated design-derived database matrix and full
  reference-data audit remain required before those workflows are implemented.
- Future product families remain backlog and should not receive schema or UI
  work before Mainline is useful end to end.

## Verification Checkpoint

The repository currently provides:

- Architecture enforcement over the active source tree.
- The latest `npm run verify` checkpoint passes documentation, repository-wide
  formatting, lint, TypeScript, architecture enforcement, 42 Vitest tests, and
  the production build.
- Focused Vitest coverage for domain, mapping, navigation, authentication, and
  database-audit helpers.
- Deterministic audits over 133 schema sources, 890 seed sources, and 638,246
  seed rows.
- Four pgTAP files with 52 assertions covering structural security, reference
  access, cross-user RLS, security-invoker views, and representative mutations.
- Local database reset, SQL formatting, lint, test, and generated-type parity.

See [Verification](./app/verification.md) for commands and environment limits.
