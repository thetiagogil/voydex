# Voydex Agent Guide

The root `AGENTS.md` is the auto-discovered entry point for AI work inside
`13-voydex`. Use this file for detailed, stable project conventions. Keep the
current implementation checkpoint and next-step status in
`docs/codex-handoff.md`; when status changes, update that canonical handoff
instead of copying volatile state into more guidance files.

## Read By Scope

- Read `docs/codex-handoff.md` for continuation work or current status.
- Read `docs/app/architecture.md`, `docs/product/data-ownership.md`, and the
  relevant contract for architecture or ownership changes.
- Read `docs/app/design-system.md` for UI work.
- Read `docs/design/codex-pokemon-detail.md` only for that feature.
- Inspect `src/config/modules.ts`, `src/config/routes.ts`, and nearby code when
  routes or module boundaries are relevant.

## Product Summary

Voydex is a Pokémon companion app for tracking, remembering, and planning playthroughs.

Established frontend modules:

- `mainline`: user-facing label is Mainline. This is the playthrough workspace.
- `codex`: public-readable reference browser for Pokémon and games.

Generations are still important reference data for grouping, filtering, and
future detail routes. They are not a current Codex navbar view.

Do not call the Mainline module "Adventures" in code or UI. Plays are the user-owned playthrough records inside Mainline.

`codex` is a frontend module, not a database product family.

Codex remains a shared reference module, not a child of Mainline. It can later
expose authenticated contextual actions, but the owning module must validate
and mutate durable state.

## Route And Mainline Plays Contracts

Use `docs/codex-handoff.md` and the route config/code to determine which routes
are currently mounted. Product route plans are not evidence that a route exists.
Keep route files in `src/app` thin and compose module, global-feature, or shared
entry points. Route adapters may compose the app shell around feature-owned page
content.

The Mainline Plays feature boundary is:

```txt
src/modules/mainline/features/plays/
  browse/
  hub/
  shared/
```

Preserve these product and architecture decisions:

- Use `plays` as the feature folder name. Do not reintroduce singular
  `features/play`.
- `/mainline/plays` is a simple real-data card browse surface.
- `/mainline/plays/[playId]` is the Play Hub.
- The Play Hub top section is contextual page information, not a Card.
- The Play Hub bottom surface is one Card containing tabs.
- The tab design includes Overview, Team, Progress, Plans, History, and Settings.
  Use code and the handoff to determine which slices are enabled.
- Overview layout is two-column on wide screens: Journey Status and Recent
  History on the left; Current Team and Progress Summary on the right.
- Team Health should not be added to Overview until the Team tab has a real
  analysis model.
- Do not add filler cards to balance the right column. Add previews only when
  they summarize real data or a mature tab.
- Progress Summary hides unavailable tracks, shows progress bars plus
  `completed / total`, and does not show visible percent labels.

Mainline Play Hub folders should stay view and section scoped:

```txt
src/modules/mainline/features/plays/hub/
  data/
  server/
  shell/
    mainline-play-hub-page.tsx
    mainline-play-hub-tabs.tsx
    top-section/
  tabs/
    overview/
      data/
      server/
      sections/
        journey-status/
        recent-history/
        team/
        progress-summary/
    team/
    progress/
    plans/
    history/
    settings/
  types.ts
  types.ts
```

## Source Layout

The target root `src` folders are:

- `app`
- `config`
- `features`
- `modules`
- `platform`
- `shared`
- `proxy.ts`

`src/lib` is retired and the architecture check rejects new source files there.
Environment and Supabase adapters belong under `src/platform`; app-shell and
active-module behavior belong under `src/features/app-shell`; auth workflows
belong under `src/features/auth`; generic utilities belong under `src/shared`.
Do not reintroduce root-level `lib`, `components`, `constants`, or `types`
buckets.

Reusable Pokemon/game semantics belong under `src/modules/reference`.
Cross-module consumers use `reference/types.ts`, `reference/reference-data.ts`,
and `reference/reference-rows.ts` instead of reaching into `reference/shared`.
Concrete catalogue components and domain utilities use explicit paths under the
reference `games` or `pokemon` feature. Do not reintroduce root-shared game or
Pokemon domain/component folders.

Module feature code belongs under `src/modules`. Cross-app features such as app
shell, site, auth, settings, and system pages belong under `src/features`.
Framework and Supabase infrastructure belongs under `src/platform`. Only
domain-neutral primitives and the documented app-wide visual primitives belong
under `src/shared` in the target architecture. Read `docs/app/architecture.md`
and the accepted ADR before moving a boundary.

## File And Component Hygiene

Prefer boring, searchable names over short local names:

- Route files in `src/app` should stay thin and import page-level components.
- Page-level components that directly back a route may live at the feature root, for example `pokemon-detail-page.tsx` or `mainline-plays-page.tsx`.
- Component filenames should usually match the exported component name in kebab/Pascal form, for example `pokemon-detail-species-selector.tsx` exports `PokemonDetailSpeciesSelector`.
- Keep explicit feature prefixes for reusable or cross-file components. Avoid shortening `PokemonDetailSpeciesSelector` to `SpeciesSelector` when it will be imported across multiple files. Inside already-scoped section folders, local names are acceptable; for example, `tabs/overview/sections/team/team-panel.tsx` can export `TeamPanel` without repeating `MainlinePlay`.
- Avoid vague data filenames such as `queries.ts` when a clearer name exists. Prefer route/workflow names like `dashboard-page-query.ts`, `games-page-query.ts`, or `game-detail-query.ts`.
- Split browse and Hub readers/loaders when they serve different views. Do
  not keep unrelated use cases together just because they touch the same table.
- Keep runtime helpers out of `types` folders. If a file exports functions, place it under `utils`, `data`, `server`, or another behavior-appropriate folder.
- If a helper is shared by Mainline play browse and the Hub, prefer
  `src/modules/mainline/features/plays/shared`. Create a module-wide
  `src/modules/mainline/shared` boundary only when reuse crosses features.
- Large files are not automatically wrong. Config/type maps and generated or primitive wrapper files can be large. Split files when they mix responsibilities, hide data flow, or make route work hard to review.
- For unfinished screens, prefer small generic shells over elaborate placeholder UI. Rebuild section by section once the product direction is clear.

## Feature Folder Standard

Features may nest views and sections when that mirrors the product. Add only
the responsibility folders a slice actually needs:

- `components/*`: UI composition and local view models. Components may hold
  interaction state but must not create Supabase clients or perform raw reads.
- `server/*-query.ts`: the public server entry and orchestration for a complex
  read. A simple read may remain in one cohesive server file.
- `server/*-reader.ts`: raw Supabase reads for new complex use cases. Existing
  `*-loaders.ts` files have this responsibility and may keep the name until their
  feature is migrated.
- `server/*-action.ts`: Server Actions. Keep validation and authorization
  explicit, then call an application command/use case when the mutation is
  nontrivial.
- `data/*-mappers.ts`: pure row-to-model transforms. No Supabase client, React
  hooks, or browser APIs.
- `data/*-selectors.ts`: reusable pure selectors over loaded rows or models.
- `client/*`: browser-only API, state, and model helpers for client islands.
- `display/*`: presentation formatting and display selectors.
- `utils/*`: small cross-cutting helpers that do not fit a stronger owner.
- `types/*` or `types.ts`: type contracts only.

Do not create empty folders or a mandatory query/reader/mapper trio. Keep files
for one endpoint or use case together, and split only when I/O, orchestration,
mapping, or presentation is substantial enough to deserve independent review.
Do not place direct `.schema(...)` reads under `data/` or `components/`. Client
Components may import Server Actions, but not server query/reader/loader files.

## UI Rules

Voydex uses shadcn UI primitives in `src/shared/components/ui`.

- Use shadcn primitives for standard controls.
- Use Base UI `render` composition, not Radix `asChild`, unless a local primitive explicitly supports `asChild`.
- Use Lucide icons for interface actions.
- Keep Tailwind simple and consistent.
- Keep Tailwind classes canonical. When Tailwind IntelliSense suggests
  `suggestCanonicalClasses`, update touched classes to the canonical Tailwind v4
  form, for example `shadow-(--app-surface-shadow)` instead of
  `shadow-[var(--app-surface-shadow)]`.
- Build reusable components when a route starts getting large.
- Preserve accessibility: labels, focus states, keyboard behavior, and non-color status signals.

The design direction is clean adventure companion, not corporate dashboard and not overly game-like. Generated screenshots are references for layout and tone, not exact implementation contracts.

## Codex Feature Contracts

Before changing the game-scoped Pokemon detail surface, read
`docs/design/codex-pokemon-detail.md`.

Preserve these product and data decisions:

- The route is game-scoped; `gameSlug` determines generation.
- Pokemon browse can link to the first supported game in the first generation
  where the species appears.
- The top section is a compact selector surface: species selector on the left
  and generation/game menu on the right. The active generation trigger should
  include the selected game name.
- Generation controls should list games by seeded sort order.
- A game is enabled for a Pokemon/form when seeded availability exists for that
  game. DLC-only availability counts, but the UI needs an explicit warning/info
  state for the DLC scope.
- Form validity must be checked against the selected game, not only the selected
  generation.
- Shiny is a direct visual toggle rendered inside the portrait. It should switch
  only the current form artwork and should reset when the selected form changes.
- Pokemon forms are data-affecting choices. When additional forms exist, render
  a dedicated Forms card in the left section; each option should show the form
  image, National number, form name, and type identity. Do not render the Forms
  section for Pokemon with no additional forms.
- The evolution line is a left-section card. Hide it when there is no real
  evolution line. Branching lines should render as readable path rows instead of
  a compressed tree.
- Keep detail sections as small cards using the existing section-card pattern.
  Determine the currently implemented sections from code and the handoff.
- Type Matchups uses a compact all-type effectiveness grid with type
  icon tooltips and effectiveness-value tooltips.
- Future authenticated Codex actions can include Add to plan, Add to play team,
  Start a plan with this Pokemon, Check availability in my play, Compare with
  planned team, Mark as target, and Find where this fits. Codex should pass
  selected context to the owning module instead of owning those mutations.

For Codex Games, preserve these product decisions:

- Do not reintroduce the Games timeline unless the user explicitly asks to
  revisit that direction.
- Keep Codex nav to Pokemon and Games for now. A future generation-detail route
  can be added later without bringing back a top-level Generations view.
- Game cards and game detail accents use Pokemon game color tokens from
  `src/modules/reference/features/games/styles/game-tokens.css`, exposed to the
  app through the module's public `styles.css` manifest.
- Game detail Pokedex cards link to the game Pokedex page. The Pokedex section
  scrolls only when it sits beside Related games; stacked layouts show all
  Pokedexes without a max-height scroll.
- Game Pokedex rows link to `/codex/pokemon/[gameSlug]/[speciesSlug]`.
- Hide the Abilities column when a game Pokedex has no ability data.
- Generation I Pokedex tables use `Special` instead of separate `SpA` and
  `SpD` columns.

## Database Boundary

The database source of truth is co-located in this repository:

```txt
database/
  schema/
  seeds/
  supabase/
scripts/database/
docs/database/
```

The Supabase CLI runs from `database/`, keeping its dotenv/config boundary
separate from the Next.js root `.env.local`. Edit human-authored schema and seed
sources, not generated wrapper files. Keep active indexes beside the table
schema that owns them.

The app consumes generated types from:

```txt
src/shared/types/database.types.ts
```

If a database contract changes, update the co-located sources, run
`npm run db:verify`, regenerate types directly into the app, then update app
queries/actions and run `npm run verify`.

## Product Rules To Preserve

- A play has one focused linked Team Plan.
- The play current roster is 6 active Pokémon plus up to 6 reserve Pokémon.
- Retired/replaced Pokémon belong to history, not the current roster.
- Pokedex completion is species-level.
- DLC and optional content are per-play choices.
- Story snapshots are optional.
- Collection is derived from used Pokémon/history, not only current team.

## Verification

For normal frontend changes, run:

```bash
npm run verify
```

Use `format:check`, `lint`, `typecheck`, `architecture:check`, `test`, and
`build` individually while diagnosing failures.

For Tailwind-backed UI changes, also check touched files for Tailwind
IntelliSense warnings such as `suggestCanonicalClasses`; at minimum, scan for
simple CSS-variable arbitrary utilities like `shadow-[var(--token)]` and replace
them with canonical forms like `shadow-(--token)` when equivalent.

For visual work, also test in the browser at desktop and mobile widths.

The unit-test harness remains intentionally focused. Vitest resolves the
production `@/*` alias; add focused tests with each migrated behavior. There is
no committed end-to-end browser suite yet; use `docs/app/verification.md` for
focused browser checks.

In sandboxed Codex runs, `npm run build` can fail when Turbopack cannot bind a
local port. If lint passes but build hits a sandbox port error, rerun build
outside the sandbox or ask for escalated execution.
