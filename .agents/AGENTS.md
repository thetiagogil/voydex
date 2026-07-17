# Voydex Engineering Guide

The root [AGENTS.md](../AGENTS.md) is the entry point. This file contains only
durable implementation conventions; product behavior and current status belong
in the canonical [documentation index](../docs/README.md).

## Source Layout

The allowed root source layout is:

```txt
src/
  app/
  config/
  features/
  modules/
  platform/
  shared/
  proxy.ts
```

- `app`: thin Next.js route adapters.
- `config`: static application contracts such as routes and modules.
- `features`: cross-app workflows such as auth, app shell, settings, site, and
  system surfaces.
- `modules`: product/domain ownership, currently Mainline, Codex, and the
  internal reference context.
- `platform`: framework and external-service integration.
- `shared`: domain-neutral utilities, generated types, UI primitives, and the
  narrow visual exceptions recorded in ADR 0003.

Do not reintroduce root-level `lib`, `components`, `constants`, or `types`
buckets. Reuse belongs at the nearest stable owner.

## Modules, Features, Views, And Sections

- A module may own multiple features and views.
- A feature may nest view folders when users experience them as distinct
  surfaces, such as browse and detail/hub.
- A complex view may nest section folders that mirror visible page concerns.
- Use `shared` inside a feature only when behavior is reused across that
  feature's views. Create module-wide shared code only after reuse crosses
  features.
- Do not create empty responsibility folders or mandatory templates.
- Cross-module consumers use the public contracts of `src/modules/reference`.
  Concrete catalogue components and domain utilities may use explicit feature
  paths when those are the intended public implementation surface.

## Read And Write Boundaries

Start with the smallest cohesive boundary and split only when a responsibility
needs independent review, reuse, or testing.

- `server/*-query.ts`: complex read orchestration and public server entry.
- `server/*-reader.ts`: raw Supabase/database I/O. Existing `*-loaders.ts` may
  retain their name.
- `data/*-mappers.ts`: pure row-to-model transformation.
- `data/*-selectors.ts`: pure selection over loaded data or models.
- `server/*-action.ts`: Server Actions with explicit authentication and input
  parsing.
- `application`: commands/use cases that orchestrate a non-trivial mutation.
- `domain`: pure invariants and domain types.
- `infrastructure`: repositories and external persistence adapters.
- `client`: browser-only state, API, and model helpers.
- `display`: formatting and presentation selectors.
- `types.ts` or `types/*`: type-only contracts.

Components may own interaction state but never create Supabase clients or issue
raw reads. Client Components may import Server Actions, not server queries or
readers. Multi-table writes follow action → command/use case → domain →
repository/RPC → database constraints and RLS.

## File And Naming Hygiene

- Keep route files small and import feature-owned page entry points.
- Use explicit, searchable filenames and exports.
- Prefer use-case names over vague files such as `queries.ts` or `helpers.ts`.
- Keep one responsibility or a small group of tightly related responsibilities
  per file.
- Split when mixed concerns hide data flow, not merely because a line count was
  crossed.
- Roughly 150–250 lines can remain cohesive; files above 250 lines deserve a
  responsibility review, and files above 400 lines should be exceptional
  outside generated data, configuration, or third-party primitives.
- Avoid tiny one-use helpers that make a workflow harder to follow.
- Runtime helpers do not belong in type-only files.

## UI And Design

- Reuse project shadcn/Base UI primitives under `src/shared/components/ui`.
- Use Base UI `render` composition unless a local primitive explicitly exposes
  `asChild`.
- Use Lucide for interface actions and the shared icon catalogue for branded or
  domain icons.
- Keep Tailwind classes canonical and preserve supported theme tokens.
- Keep Client Components at the smallest interactive boundary.
- Verify hierarchy, density, spacing, typography, responsive overflow, loading,
  empty/error/disabled states, keyboard use, focus, semantics, and non-color
  cues.
- Treat phone, tablet, and desktop as separate validation bands when a view's
  composition changes; do not assume a stretched phone stack is a suitable
  tablet layout.
- Preserve Voydex's clean adventure-companion character; screenshots guide
  intent rather than fixed dimensions.
- Conversation screenshots and generated mockups are iteration evidence. Once
  a direction is selected, record the durable behavior and responsive decisions
  in the nearest versioned design reference before relying on them in future
  tasks.

Read [Design System](../docs/app/design-system.md) and the nearest indexed
[design reference](../docs/design/README.md) before meaningful visual work.

## Database Work

- Edit authored schema/seeds, then rebuild generated artifacts through package
  commands.
- Keep browser/server clients under `src/platform/supabase`.
- Keep RLS, grants, constraints, transactional functions, and generated types
  aligned with app queries/actions.
- Use `npm run db:verify` after database contract changes. Remote comparisons
  require explicit authorization.

See [Database Architecture](../docs/database/architecture.md),
[Schema Contract](../docs/database/schema-contract.md), and
[Security](../docs/database/security.md).

## Verification And Handoff

- Use focused tests while iterating and `npm run verify` before merging.
- Add tests for behavior, ownership, edge cases, or parsing—not arbitrary line
  coverage.
- Run browser verification for meaningful UI changes.
- Update [Project Status](../docs/project-status.md) only when the current
  checkpoint, next slice, or known gaps change.
- Keep final handoffs concise: outcome, exact verification, commit message, and
  meaningful risks or next steps.
