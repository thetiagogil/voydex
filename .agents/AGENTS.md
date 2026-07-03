# Voydex Agent Guide

Use this file as the first local orientation point for AI work inside `13-voydex`.

## Read First

Before meaningful implementation, read:

- `docs/codex-handoff.md`
- `docs/app/architecture.md`
- `docs/app/design-system.md`
- `docs/design/codex-pokemon-detail.md` when working on Codex Pokemon detail
- `docs/product/feature-contract.md`
- `docs/product/navigation-and-routes.md`
- `docs/product/data-ownership.md`
- `src/config/modules.ts`
- `src/config/routes.ts`

## Product Summary

Voydex is a Pokémon companion app for tracking, remembering, and planning playthroughs.

Active frontend modules:

- `mainline`: user-facing label is Mainline. This is the playthrough workspace.
- `codex`: public-readable reference browser for Pokémon, games, and generations.

Do not call the Mainline module "Adventures" in code or UI. Plays are the user-owned playthrough records inside Mainline.

`codex` is a frontend module, not a database product family.

Codex remains a shared reference module, not a child of Mainline. It can later
expose authenticated contextual actions, but the owning module must validate
and mutate durable state.

## Current Route Shape

Important current routes:

- `/`
- `/app`
- `/login`
- `/settings`
- `/mainline/dashboard`
- `/mainline/plays`
- `/mainline/plays/new`
- `/mainline/plays/[playId]`
- `/mainline/plays/[playId]/team`
- `/mainline/plays/[playId]/progress`
- `/mainline/plays/[playId]/story`
- `/mainline/plays/[playId]/pokedex`
- `/mainline/plays/[playId]/collectibles`
- `/codex/pokemon`
- `/codex/pokemon/[gameSlug]`
- `/codex/pokemon/[gameSlug]/[speciesSlug]`
- `/codex/games`
- `/codex/games/[gameSlug]`
- `/codex/generations`
- `/codex/generations/[generationId]`

Keep route files in `src/app` thin. Compose module or shared components from them.

## Source Layout

Root `src` folders should stay limited to:

- `app`
- `config`
- `features`
- `lib`
- `modules`
- `shared`
- `proxy.ts`

Do not reintroduce root-level `components`, `constants`, or `types`.

Module feature code belongs under `src/modules`. Cross-app route features such as site, auth, settings, and system pages belong under `src/features`. Shared app primitives and reusable app shell pieces belong under `src/shared`.

## File And Component Hygiene

Prefer boring, searchable names over short local names:

- Route files in `src/app` should stay thin and import page-level components.
- Page-level components that directly back a route may live at the feature root, for example `pokemon-detail-page.tsx` or `mainline-plays-page.tsx`.
- Component filenames should usually match the exported component name in kebab/Pascal form, for example `pokemon-detail-species-selector.tsx` exports `PokemonDetailSpeciesSelector`.
- Keep explicit feature prefixes for reusable or cross-file components. Avoid shortening `PokemonDetailSpeciesSelector` to `SpeciesSelector` when it will be imported across multiple files.
- Avoid vague data filenames such as `queries.ts` when a clearer name exists. Prefer route/workflow names like `dashboard-page-query.ts`, `games-page-query.ts`, or `game-detail-query.ts`.
- Split browse and detail loaders when they serve different views. Do not keep unrelated browse/detail data loaders in one shared query file just because they touch the same table.
- Keep runtime helpers out of `types` folders. If a file exports functions, place it under `utils`, `data`, `server`, or another behavior-appropriate folder.
- If a helper is used by more than one feature, move it to the nearest stable shared boundary, for example `src/modules/mainline/shared`.
- Large files are not automatically wrong. Config/type maps and generated or primitive wrapper files can be large. Split files when they mix responsibilities, hide data flow, or make route work hard to review.
- For unfinished screens, prefer small generic shells over elaborate placeholder UI. Rebuild section by section once the product direction is clear.

## Feature Folder Standard

Use this boundary for feature internals:

- `components/*`: UI composition and local component-group view models only. Components can hold local interaction state, and files such as `components/<section>/*-model.ts` may derive UI-facing rows from already-loaded props. Components must not create Supabase clients or perform raw data reads.
- `server/*-query.ts`: server orchestration only. Create the server client, resolve auth/scope, call loaders, call mappers, and return page/action data.
- `server/*-loaders.ts`: raw Supabase reads only. Loaders accept a `ServerSupabaseClient` and return database rows or row groups.
- `server/*-action.ts`: Server Actions and mutations. Keep validation explicit and prefer shared loaders/helpers for repeated reads.
- `data/*-mappers.ts`: pure row-to-view-model transforms. No Supabase client, no React hooks, no browser APIs.
- `data/*-selectors.ts`: pure selectors over already-loaded rows or view models when the selector is shared by the feature data layer. Keep one-section UI-adjacent selectors beside their component group as `components/<section>/*-model.ts`.
- `client/*`: browser-only API/state/model helpers for client islands.
- `display/*`: formatting and presentation selectors used by UI.
- `utils/*`: small cross-cutting helpers that are not data access, not display-only, and not tied to React.
- `types/*` or `types.ts`: type contracts only.

Do not place files named `*-query.ts`, `*-loaders.ts`, or direct `.schema(...)`
reads under `data/` or `components/`. Client Components may import Server
Actions, but should not import server query/loaders.

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

## Current Codex Pokemon Detail Direction

The active detailed Codex work is `/codex/pokemon/[gameSlug]/[speciesSlug]`.
Before changing that route, read `docs/design/codex-pokemon-detail.md`.

Preserve these current decisions:

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
- The current right-section cards are Core Data, Battle Stats, Type Matchups,
  Abilities, Pokedex, Availability, and Learnsets. Keep building future sections
  as small cards using the existing Pokemon detail section-card pattern.
- Type Matchups currently uses a compact all-type effectiveness grid with type
  icon tooltips and effectiveness-value tooltips.
- Future authenticated Codex actions can include Add to plan, Add to play team,
  Start a plan with this Pokemon, Check availability in my play, Compare with
  planned team, Mark as target, and Find where this fits. Codex should pass
  selected context to the owning module instead of owning those mutations.

## Database Boundary

The database source of truth is outside this repo:

```txt
C:\Users\talme\Documents\Dev\Tiago\00-databases\projects\voydex
```

Do not change database schema, seeds, or Supabase configuration from this repo unless the user explicitly asks.

The app consumes generated types from:

```txt
src/shared/types/database.types.ts
```

If a database contract changes, update `00-databases` first, regenerate/copy types, then update app queries/actions.

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

```powershell
npm.cmd run format:check
npm.cmd run lint
npm.cmd run build
```

For Tailwind-backed UI changes, also check touched files for Tailwind
IntelliSense warnings such as `suggestCanonicalClasses`; at minimum, scan for
simple CSS-variable arbitrary utilities like `shadow-[var(--token)]` and replace
them with canonical forms like `shadow-(--token)` when equivalent.

For visual work, also test in the browser at desktop and mobile widths.
