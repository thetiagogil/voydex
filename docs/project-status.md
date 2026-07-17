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
[V1 Design Workspace](./design/v1/README.md). [V1-D105](./design/v1/decisions.md)
supersedes the previously selected visual grammar. The canonical
[V1 Visual Language](./design/v1/visual-language.md) now defines a light-first
explorer's field-guide direction, and exactly three shared-shell and Plays
Browse treatments must be reviewed before further production styling.

Existing shared-shell, Dashboard, Plays Browse, Play Overview, and Play Team
work remains useful functional, data, and responsive evidence but is not the
new visual target. Only surfaces listed under Implemented Product Surfaces are
production implementation; the remaining screen work is still design direction
until it is represented in code and verified.

The active production slice is Plays Browse:

- URL-backed Search, Status, Game, and Sort controls are implemented, including
  debounced updates, result counts, filtered-empty recovery, and filter reset.
- Each Play row now composes game cover, Play and game identity, update date,
  six Active-Team slots, honest overall completion, and one open cue from
  owner-scoped summary, reference-game, Overview, and Team reads.
- Missing progress remains distinct from unavailable enrichment; unavailable
  Team data retains six explicit positions instead of silently disappearing.
- Phone uses a stacked card, tablet returns to a compact horizontal row, and
  desktop reduces the cover further so identity and Team remain dominant. The
  current composition has been browser-checked at representative phone, tablet,
  and desktop widths.

The next checkpoint is visual selection. After one representative direction is
selected or revised, apply it to the shared shell and Plays Browse while
preserving the accepted behavior and responsive hierarchy. Then validate
occupied and partial cards with realistic data and add archived visibility,
secondary filters, explicit loading/recovery, and incremental-load states.
Dashboard, Play Overview, and Team follow in that order.

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
- The new visual-language brief is accepted, but the three representative
  shared-shell and Plays Browse directions have not yet been selected or
  revised into the production target.
- Plays Browse still needs occupied-Team and partial-data validation, archived
  visibility, secondary filters, explicit recovery states, and incremental
  loading before its accepted V1 contract is complete.
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
- The latest `npm run verify` checkpoint passes documentation, formatting,
  lint, TypeScript, architecture, 42 Vitest tests, and the production build.
- Focused Vitest coverage for domain, mapping, navigation, authentication, and
  database-audit helpers.
- Deterministic audits over 133 schema sources, 890 seed sources, and 638,246
  seed rows.
- Four pgTAP files with 52 assertions covering structural security, reference
  access, cross-user RLS, security-invoker views, and representative mutations.
- Local database reset, SQL formatting, lint, test, and generated-type parity.

See [Verification](./app/verification.md) for commands and environment limits.
