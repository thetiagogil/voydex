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

The shared shell, Plays Browse, Pokémon Browse, and Games Browse now implement
the selected system: one in-flow
navbar that dissolves into the scenic sky, the refined daylight-valley
background, and one warm, lightly textured journal page with a quiet edge and
restrained shadow. Primary route links use shared compact buttons; the module
selector, account access, and actions remain clean controls. Compact page
introductions, label-free accessible controls, result context, and content now
share that single surface without a clipboard frame, inset sheet, brass
hardware, or repeated nested Cards. A small gap keeps the navbar and journal
page visually distinct, while the browser owns long-page scrolling without a
nested vertical scroller. Only surfaces listed under Implemented Product
Surfaces are production implementation; the remaining screen work is still
design direction until it is represented in code and verified.

The current production baseline is Plays Browse:

- URL-backed Search, Status, Game, and Sort controls are implemented, including
  debounced updates, result counts, filtered-empty recovery, filter reset,
  accessible in-control names, and compact equal 40-pixel control heights.
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

Pokémon Browse is a completed production design checkpoint:

- Result cards now use one continuous specimen surface for artwork and identity,
  with named field-guide type markers beside the number-and-name block instead
  of realistic type scenery, dark poster overlays, or an internal divider.
- The grid presents two useful columns on common phones, three at medium widths,
  and four on wide journal pages. Generation headings retain the section `h2`
  while card species names use nested `h3` headings.
- Browse controls use the shared label-free journal treatment with explicit
  accessible names. Incremental results append automatically in small batches
  before the user reaches the boundary, with a manual compatibility fallback
  when scroll observation is unavailable.
- The exact-game, URL-state, result announcement, and filtered-empty recovery
  gaps in the accepted functional contract remain intentionally out of this
  visual slice.

Pokémon Detail is the current completed visual checkpoint:

- The existing information architecture is preserved: selectors remain at the
  top, portrait/forms/evolution remain in the left stack, and the seven
  reference sections retain their right-stack order.
- The realistic portrait scenery has been replaced by the same neutral specimen
  field and restrained type accent used by Browse. Existing Shiny and form
  behavior remain unchanged.
- Detail sections now use the light journal card grammar, serif primary titles,
  neutral field-guide type badges, and one semantic primary treatment for stat
  bars and effectiveness emphasis.
- Wide reference rows become labelled stacked rows inside their existing cards
  on narrow screens, removing page-level horizontal overflow without moving or
  hiding their data.

Games Browse is a completed production design checkpoint:

- Dark square-poster overlays have been replaced by full, uncropped cover art in
  the same compact `4:3` field-guide card rhythm as Pokémon Browse. Release year
  and region sit above the serif game identity, with a restrained game-type
  marker beside it on the same warm paper card.
- The grid presents two useful columns on common phones, three at medium widths,
  and four on wide journal pages. Generation headings remain `h2` sections,
  while exact game titles use nested `h3` headings inside accessible whole-card
  links.
- Search, Generation, Game type, and Region use the label-free journal control
  treatment without forcing four full-width controls before phone results.
- URL-backed filters, Platform and `More filters`, result announcements, and
  return-focus restoration in the accepted functional contract remain outside
  this visual slice.

## Next Chat Handoff

The current implementation checkpoint is on `main`. Run `git status` before
editing and preserve unrelated work.

After the Games Browse slice is verified, continue with one bounded adjacent
view rather than a broad Codex rewrite. Codex Game Detail is the closest
follow-up:

1. browser-review representative seeded Game Detail routes against the shared
   journal grammar;
2. preserve exact game identity, existing section order, Pokédex navigation,
   related-game behavior, data ownership, and Mainline handoff contracts;
3. restyle the existing Game Detail organization without broad Codex
   restructuring;
4. verify desktop, tablet, phone, keyboard/focus behavior, overflow, and browser
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
- Codex Game Detail, Game Pokédex, and later production views have not yet been
  migrated to the selected journal and field-guide system; their existing
  layouts remain functional evidence.
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
