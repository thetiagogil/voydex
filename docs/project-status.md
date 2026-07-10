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

- `/mainline/plays` is an authenticated, real-data play browse.
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

## Current Product-Design Checkpoint

The next phase is a complete V1 product-design pass before database correction
or frontend feature implementation. The canonical continuation brief is
[V1 Screen Flow And Design Handoff](./design/v1-screen-flow.md).

Accepted direction:

- Design the complete Mainline and Codex journey, beginning with the shared
  shell and Mainline Dashboard.
- Treat the existing UI and legacy design images as optional references rather
  than constraints.
- Keep Codex publicly browsable.
- Let authenticated users start a Plan or Play from Codex Game Detail.
- Let authenticated users add a Pokémon from Codex to a compatible Plan or
  Play, with Mainline owning destination selection, validation, and mutation.
- Preserve the chosen Codex context and intended action through login.
- Derive a screen-by-screen data-requirements matrix, then use it for the
  planned database correctness and reference-seed audit before production
  implementation resumes.

No V1 visual direction has been selected. The next checkpoint is to produce
exactly three visual directions for the shared application shell and Mainline
Dashboard, then wait for one to be chosen before building UI.

## Known Gaps

- There is no committed authenticated end-to-end browser suite.
- Authenticated Play Hub visual coverage still requires a stable test user or
  deterministic local browser fixture.
- Codex reference-query performance has not yet been profiled under realistic
  usage.
- The V1 visual direction, responsive screen set, and state matrix have not yet
  been selected or designed.
- Screen-derived database requirements have not yet been reconciled against
  the known reference-data inconsistencies.
- Future product families remain backlog and should not receive schema or UI
  work before Mainline is useful end to end.

## Verification Checkpoint

The repository currently provides:

- Architecture enforcement over the active source tree.
- Focused Vitest coverage for domain, mapping, navigation, authentication, and
  database-audit helpers.
- Deterministic audits over 133 schema sources, 890 seed sources, and 638,246
  seed rows.
- Four pgTAP files with 52 assertions covering structural security, reference
  access, cross-user RLS, security-invoker views, and representative mutations.
- Local database reset, SQL formatting, lint, test, and generated-type parity.

See [Verification](./app/verification.md) for commands and environment limits.
