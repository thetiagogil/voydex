# Voydex Agent Entry Point

This is the auto-discovered project guide for AI work in Voydex. The root agent
remains responsible for understanding scope, preserving unrelated work,
implementing changes, verifying them, and explaining the result.

## Read By Scope

Read only the guidance needed for the task:

- [Detailed Engineering Guide](./.agents/AGENTS.md) before implementation or
  review.
- [Project Status](./docs/project-status.md) for the current implementation
  checkpoint and next product slice.
- [Frontend Architecture](./docs/app/architecture.md) for ownership, dependency,
  or data-flow changes.
- [Product Docs](./docs/README.md) for user behavior, navigation, or ownership
  contracts.
- [Design System](./docs/app/design-system.md) and the relevant
  [design reference](./docs/design/README.md) for meaningful UI work.
- [Database Architecture](./docs/database/architecture.md) and
  [Security](./docs/database/security.md) for database work.
- Nearby code, generated types, tests, and configuration always.

Implementation evidence overrides stale documentation. Update the canonical
document when correcting drift is within task scope.

## Repository Boundaries

- Voydex is a Pokémon companion app. Mainline owns playthrough workflows;
  Codex owns shared reference browsing.
- Keep `src/app` routes thin. Product implementation belongs under
  `src/modules`; global workflows belong under `src/features`.
- Framework, environment, and Supabase adapters belong under `src/platform`.
- Only domain-neutral primitives and documented app-wide visual primitives
  belong under `src/shared`.
- `src/lib` is retired.
- Cross-module dependencies point toward `reference`; product modules do not
  depend laterally on each other.
- Never create Supabase clients or raw `.schema(...)` reads in UI components.

## Database Boundaries

- Human-authored schema and seeds live under `database/schema` and
  `database/seeds`.
- The nested `database/supabase` workspace owns local CLI configuration,
  generated load artifacts, and pgTAP tests.
- Do not hand-edit generated wrappers or
  `src/shared/types/database.types.ts`.
- Keep browser-safe application values in `.env.local` and private database
  tooling values in `.env.database`. Start from the corresponding tracked
  example and do not move private credentials into `NEXT_PUBLIC_*` variables.
- The app accepts only `NEXT_PUBLIC_SUPABASE_URL` and
  `NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY`; do not restore legacy anon-key
  aliases. Database tooling accepts only the names in `.env.database.example`.
- Keep active indexes beside their owning table schema.
- Treat remote writes, linked-project operations, production mutation, and
  destructive local state as separate authority gates.

## Engineering Gate

- Prefer small, cohesive changes that solve the root cause.
- Preserve strict types, relevant errors, authorization, validation,
  accessibility, responsive behavior, and supported themes.
- Avoid duplicated logic, vague buckets, hidden side effects, dead code,
  needless abstraction, and unrelated refactors.
- Keep route orchestration, external I/O, pure mapping/domain logic, and UI
  separate when those responsibilities change independently. Do not force a
  file trio onto a simple use case.
- Review concrete behavior and organization, not cosmetic preference.

## Verification

Run the smallest credible checks while developing. Before merging normal work:

```bash
npm run verify
```

Database work additionally requires a running local Supabase stack and:

```bash
npm run db:verify
```

`npm run verify:all` runs both complete gates. Meaningful UI work also requires
desktop/mobile browser and console checks. Never claim a check that was not run.

## Durable Knowledge

- Stable conventions belong here or in [.agents/AGENTS.md](./.agents/AGENTS.md).
- Volatile implementation status belongs only in
  [Project Status](./docs/project-status.md).
- Product and database facts belong in their canonical docs or source files.
- Do not create additional AGENTS files unless a real scope-specific need
  appears.
