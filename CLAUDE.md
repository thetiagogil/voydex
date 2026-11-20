# Voydex

Voydex is a Pokémon companion app: Next.js 16 App Router, React 19, strict
TypeScript, Tailwind v4, shadcn-style primitives on Base UI, PGlite on the
device for user data, and Supabase for login and backups.
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
- [ADR 0008](./docs/decisions/0008-user-data-on-the-device.md),
  [0006](./docs/decisions/0006-installable-web-app-first.md) and
  [0007](./docs/decisions/0007-development-workflow.md) for the data, phone
  and workflow decisions.
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
- Framework, environment, device database and Supabase adapters belong under
  `src/platform`.
- User data lives on the device ([ADR 0008](./docs/decisions/0008-user-data-on-the-device.md)):
  every user-data read and save goes through `src/platform/local-db`, never
  Supabase (`architecture:check` enforces it for Mainline and Settings).
  Readers, commands and actions that run on the device live in `client/`
  folders. The app opens without signing in; Supabase is for login and
  backups only.
- Only domain-neutral primitives and documented app-wide visual primitives
  belong under `src/shared`. `src/lib` is retired; do not recreate root `lib`,
  `components`, `constants` or `types` buckets.
- Cross-module dependencies point toward `reference`; product modules do not
  depend laterally on each other.
- Never create Supabase clients, run SQL or make raw `.schema(...)` reads in
  UI components. Client Components never import server queries or readers;
  only the build runs them.
- The whole app is plain files made at build time
  ([ADR 0009](./docs/decisions/0009-app-as-plain-files.md)): no Server
  Actions, Route Handlers, proxy or request-time server code. Login and
  account changes call Supabase from the browser; an id the build can't know
  rides in the query (`/app/plays/play?id=`).

## Database Boundaries

- Human-authored schema and seeds live under `database/schema` and
  `database/seeds`. The nested `database/supabase` workspace owns local CLI
  configuration, generated load artifacts and pgTAP tests.
- Do not hand-edit generated wrappers or `src/shared/types/database.types.ts`;
  rebuild them through the `db:*` package scripts.
- Browser-safe values live in `.env.local`, private database tooling values in
  `.env.database`; never move
  private credentials into `NEXT_PUBLIC_*` variables.
- The app accepts only `NEXT_PUBLIC_SUPABASE_URL`,
  `NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY` and `NEXT_PUBLIC_ASSETS_URL` (the
  `voydex-assets` site serving Pokémon images and game covers, read only by
  `src/shared/utils/asset-url.ts`); do not restore legacy anon-key
  aliases. Database tooling accepts only `SUPABASE_ACCESS_TOKEN` and `SUPABASE_DB_PASSWORD`.
- Keep active indexes beside their owning table schema.
- A write that touches more than one table or creates a History moment goes
  through one database function; `local-db` calls stay thin adapters.
- Seeds stay the source of truth for game data; a release builds the game
  data files from them. From launch on, a game data ID never disappears
  without an entry in the ID changes list, and a user-table change ships as a
  device update that saves a copy first and is tested against an old backup.
- RLS guards only tables hosted Supabase serves. Every table keeps its
  policies until the hosted reset that drops it (#248); after that only
  `user_backups` has them.
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
  needless abstraction and unrelated refactors. Moving a screen or a
  component family onto the shared Soft Clay pieces and deleting its old
  parts is in scope even when it crosses pages.
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

- The look is the Center design (2026-11-20): a red top bar, a dotted
  pale-blue wall, white sections, navy ink. Use role tokens from
  `src/shared/styles/app-tokens.css` (`bg-surface`, `text-ink-2`,
  `border-line`, `bg-action`). One palette for the whole app, a Play
  included: a game's own colour (`getGameColourStyle`) only marks
  which game is which (picker dots, cover placeholders, charts).
- Baloo 2 for headings 20px and up, the Play and trainer names and owned
  Pokémon names; Nunito for everything you operate. Nothing under 16px is
  Baloo 2. A section title is plain letters on the wall over its
  card: never a filled pill, never a mark before it, never inside the card.
- Loud only for identity and reward; chrome stays quiet. Colour follows
  60-30-10: neutral ground, supporting tints, one accent for what matters,
  and every text holds 4.5:1.
- One component per family. Primitives in `src/shared/components/ui` are one
  per job, edited in place; product components build on them and add
  meaning; screens use one of the two and never re-type a component's
  classes. If a screen needs more, the component gets the option.
- Each colour has its jobs: the red (`action`) is the top bar and actions,
  nothing else; the blue (`calm`) says where you are and what is on (picked rows, chips and pills
  take `bg-select-soft text-select-ink`, a mode switch, a scope picker, a
  tick and a switch take the solid blue), and it draws progress and counts.
- One shape language: everything is round and soft. Depth has three levels,
  each with one meaning: a section is flat (white, a thin line, no blur); a
  small solid edge means "you can open this" (a Play row, a Pokémon card, a
  Collection card), and those rise a little under the pointer; only the
  page's main action lifts on a soft shadow. Blur is otherwise for what
  floats (menus, sheets, dialogs, toasts). One Pokémon card everywhere
  (`PokemonCard`, and `PokemonSticker` on a team): white with a thin line
  when it isn't yours; in its type's colour inside a white band, the
  Pokémon standing a little out of a pale circle, when it is. Only the Collection frames what you
  own as collector cards (`PokemonCollectorCard`, `GameShelfCard` with
  `count`). A Play's tags and rules are tags (`TagLabel`): labels like a
  status, never controls. Bars are flat; a row of them is thick with its figure inside.
- Buttons have two heights, 48 and 36px, and tabs, pills and chips are 36px
  too, the same on phones. Controls have two looks: the main action
  (`default`) is solid red on a soft shadow; every other button, field,
  select, tab and chip is white with a thin outline, the same on the wall
  and inside a card, and a pick is filled. Controls wear no white band. A
  dropdown in a breadcrumb reads as the link beside it with a chevron.
- No presses that move, and no edge or band drawn by hand: the edge comes
  from `Card` `interactive`, `sticker`, `plain-card` or `card-frame`. The
  one picked never changes weight. The bar sits on the red strip, which
  steps down round the logo: white words, a white tab for the page you are
  on.
  Toolbars and form rows are 48px; below 1024px sheets open from the
  bottom; every overlay, confirms included, has the corner close button and
  closes on Escape or a tap outside.
- One place for each style: screens never type a style by hand. Text takes
  a `copy-*` text style (strong, body, note, label, meta, mark), a block
  inside a card is a `tile`, an openable row inside a card a `tile-link`;
  `design:check` fails on a hand-set text size and weight or a hand-drawn
  tile, so a restyle always reaches the whole app. Reading text has four
  sizes (12, 13, 15, 17; fields take 16 on phones) and gaps eight steps
  (0.5, 1, 1.5, 2, 3, 4, 6, 8); the check fails on the ones between. A
  `Card` sets its own padding (`size="sm"` for a card in a list) and icons
  take `AppIcon` `sm` 14, `md` 16, `lg` 20 or `xl` 24.
- Icons come only from `appIcons` in `src/shared/domain/icons/app-icons.ts`,
  rendered through `AppIcon`.
- Light mode only for now. Never reintroduce a retired look;
  `npm run design:check` (part of `verify`) fails on the journal design, an
  edge or a band drawn by hand, presses that move, gradient fills and
  glass.

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

`npm run verify:all` runs both gates. Browser tests (Playwright and axe, in
`e2e/`) need the local stack too and run only on the Mac: an app pull
request runs the folder for the area it touched
(`npx playwright test e2e/plays`); the full `npm run test:e2e` runs before a
deploy batch and for changes that reach every screen (see
[Verification](./docs/app/verification.md#browser-tests)). Meaningful UI work also requires desktop
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
