# Voydex

Voydex is a Pokémon companion app: Next.js 16 App Router, React 19, strict
TypeScript, Tailwind v4, shadcn-style primitives on Base UI, and Supabase.
**Mainline** owns playthrough workflows (Plays, Team, Progress, History, Plans,
Settings); **Codex** owns shared reference browsing; the internal
**reference** module owns Pokémon and game contracts both consume.

The main session owns every task from understanding to handoff: scope it,
preserve unrelated work, implement, verify, and explain the result.

## Read By Scope

Read only what the task needs:

- [Engineering Guide](./.claude/engineering-guide.md) before implementation or
  review: workflow, delegation, exact-game and component-consistency gates,
  file hygiene.
- [Project Status](./docs/project-status.md) for the current checkpoint, next
  slice and `Next Chat Handoff`.
- [Frontend Architecture](./docs/app/architecture.md) for ownership,
  dependency direction, and read/write file responsibilities.
- [Documentation Index](./docs/README.md) for product behavior, navigation and
  data-ownership contracts.
- [Design System](./docs/app/design-system.md) and the
  [Soft Clay Brief](./docs/design/soft-clay-brief.md) for any UI work.
- [Data Ownership](./docs/product/data-ownership.md) and the
  [Schema Contract](./docs/database/schema-contract.md) for linked Team Plan
  comparison or planning work.
- [Database Architecture](./docs/database/architecture.md),
  [Security](./docs/database/security.md) and
  [Reference Data](./docs/database/reference-data.md) for database work.
- [Workflow](./docs/app/workflow.md) for issues, labels, branches, releases
  and how each platform feature is used.
- [ADR 0005](./docs/decisions/0005-postgres-is-the-backend.md),
  [0006](./docs/decisions/0006-installable-web-app-first.md) and
  [0007](./docs/decisions/0007-development-workflow.md) for the backend,
  phone and workflow decisions.
- Nearby code, generated types, tests, and configuration, always.

Implementation evidence overrides stale documentation. Update the canonical
document when correcting drift is within task scope.

## Workforce

Direct work is the default: the main session implements ordinary tasks itself.
Use zero specialists for ordinary work and at most one for an ordinary complex
task; use more only when the user asks for parallel work on independent scopes.

| Kind     | Name                      | Use it for                                                                                |
| -------- | ------------------------- | ----------------------------------------------------------------------------------------- |
| Subagent | `product-engineer`        | Delegated implementation of a bounded Mainline, Codex or `reference` slice                |
| Subagent | `ui-engineer`             | Building or migrating a screen or component to Soft Clay, with browser checks             |
| Subagent | `database-engineer`       | `database/` schema, seeds, pgTAP, generated artifacts and types, behind authority gates   |
| Subagent | `pokemon-domain-expert`   | Read-only answers on exact-game mechanics, identity, availability and reference-data gaps |
| Subagent | `code-reviewer`           | Read-only, fresh-context defect review after non-trivial or high-risk changes             |
| Subagent | `verifier`                | Running long or noisy gates (`verify`, `db:verify`) and reporting results without fixing  |
| Skill    | `voydex-product-engineer` | Product, architecture and Pokémon-domain judgment for meaningful work in the main session |
| Skill    | `shadcn`                  | Vendored shadcn/ui know-how; Soft Clay rules win where they disagree                      |

- Keep one source writer at a time. Never run two writing agents against the
  same files, and stop editing files you have delegated.
- Every brief states the objective, exact scope, context, constraints, return
  shape and stop condition. Specialists never delegate further.
- The main session validates specialist evidence, resolves conflicts, finishes
  verification and answers the user.

## Repository Boundaries

- Keep `src/app` routes thin. Product implementation belongs under
  `src/modules`; global workflows (auth, app shell, settings, site, system)
  belong under `src/features`.
- Framework, environment and Supabase adapters belong under `src/platform`.
- Only domain-neutral primitives and documented app-wide visual primitives
  belong under `src/shared`. `src/lib` is retired; do not recreate root `lib`,
  `components`, `constants` or `types` buckets.
- Cross-module dependencies point toward `reference`; product modules do not
  depend laterally on each other.
- Never create Supabase clients or raw `.schema(...)` reads in UI components.
  Client Components may import Server Actions, never server queries or readers.

## Database Boundaries

- Human-authored schema and seeds live under `database/schema` and
  `database/seeds`. The nested `database/supabase` workspace owns local CLI
  configuration, generated load artifacts and pgTAP tests.
- Do not hand-edit generated wrappers or `src/shared/types/database.types.ts`;
  rebuild them through the `db:*` package scripts.
- Browser-safe values live in `.env.local`, private database tooling values in
  `.env.database`; start from the tracked `*.example` files and never move
  private credentials into `NEXT_PUBLIC_*` variables.
- The app accepts only `NEXT_PUBLIC_SUPABASE_URL` and
  `NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY`; do not restore legacy anon-key
  aliases. Database tooling accepts only the names in `.env.database.example`.
- Keep active indexes beside their owning table schema.
- A write that touches more than one table or creates a History moment goes
  through one database function; Server Actions stay thin adapters.
- Remote writes, linked-project operations, production mutation and
  destructive local state are separate authority gates: each needs the user's
  explicit approval in this conversation.

## Engineering Gate

- Prefer small, cohesive changes that solve the root cause.
- Preserve strict types, relevant errors, authorization, validation,
  accessibility, responsive behavior and the supported (light) theme.
- Resolve game-dependent behavior through the reference-owned exact-game
  capability contract; never infer support locally (see the Engineering
  Guide).
- Before introducing or materially styling a common UI pattern, inventory the
  existing primitives and comparable product surfaces. Reuse the established
  reference or extract its shared foundation before adding another variation.
- Avoid duplicated logic, vague buckets, hidden side effects, dead code,
  needless abstraction and unrelated refactors. On the Soft Clay redesign
  branch, moving a screen to the new system and deleting its old parts is
  in scope even when it crosses pages.
- Keep route orchestration, external I/O, pure mapping/domain logic and UI
  separate when those responsibilities change independently. Do not force a
  file trio onto a simple use case.
- Review concrete behavior and organization, not cosmetic preference.
- The shadcn primitives in `src/shared/components/ui` are ours: edit them in
  place for styling and variants only, never wrap them in a second component,
  and keep product logic out of them.
- Unit tests sit next to the file they test. Every bug fix adds a test that
  failed before the fix.

## UI: Soft Clay

Voydex is quiet where you work and loud where you remember. The
[Design System](./docs/app/design-system.md) is canonical; in short:

- Use role tokens from `src/shared/styles/app-tokens.css` (`bg-surface`,
  `text-ink-2`, `border-line`, `bg-action`); game colour comes only through
  `game-scope` with `getGameColourStyle`.
- Fredoka for headings 20px and up, the Play and trainer names and owned
  sticker names; Nunito for everything you operate. Nothing under 16px is
  Fredoka.
- Loud only for identity and reward; chrome stays quiet. Selected rows, chips
  and filter pills take `bg-select-soft text-select-ink`; a mode switch
  (`SegmentedControl` `segment`) takes the strong context colour, as v3's
  `.mode-seg`.
- Icons come only from `appIcons` in `src/shared/domain/icons/app-icons.ts`,
  rendered through `AppIcon`.
- Light mode only for now. Never reintroduce the retired design;
  `npm run design:check` (part of `verify`) fails if anything retired is
  referenced.

## Verification

Run the smallest credible checks while developing, then `git diff --check`.
Before merging normal work:

```bash
npm run verify   # docs, design leftovers, format, lint, typecheck, architecture, test, build
```

Database work additionally requires a running local Supabase stack
(`npm run db:start`) and:

```bash
npm run db:verify   # reset + seed, audits, SQL format, db lint, pgTAP, type parity
```

`npm run verify:all` runs both gates. Meaningful UI work also requires desktop
and phone browser checks (the `voydex-dev` entry in `.claude/launch.json`
serves the app on port 3000) with keyboard, focus and console inspection.
Report exact commands and outcomes; never claim a check that was not run.

## Durable Knowledge

- Stable conventions belong here or in the
  [Engineering Guide](./.claude/engineering-guide.md); role-specific practice
  belongs in the matching `.claude/agents/*.md` or skill.
- Volatile implementation status belongs only in
  [Project Status](./docs/project-status.md).
- Product and database facts belong in their canonical docs or source files.
- Commits, pull requests and releases follow
  [Workflow](./docs/app/workflow.md): short, plain, written as the owner, and
  never mention AI (no co-author, generated-by or session lines).
- Work is tracked as GitHub Issues with `type:` and `area:` labels; explain
  any GitHub, Vercel or Supabase feature in plain words when switching it on.
- Computer-change handoffs update only the existing `Next Chat Handoff` in
  [Project Status](./docs/project-status.md); do not create a competing handoff
  file.
- Do not add more `CLAUDE.md` files unless a real scope-specific need appears.
