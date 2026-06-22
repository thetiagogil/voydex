# Voydex Agent Guide

Use this file as the first local orientation point for AI work inside `13-voydex`.

## Read First

Before meaningful implementation, read:

- `docs/codex-handoff.md`
- `docs/app/architecture.md`
- `docs/app/design-system.md`
- `docs/product/feature-contract.md`
- `docs/product/navigation-and-routes.md`
- `docs/product/data-ownership.md`
- `src/config/modules.ts`
- `src/config/routes.ts`

## Product Summary

Voydex is a Pokemon companion app for tracking, remembering, and planning playthroughs.

Active frontend modules:

- `mainline`: user-facing label is Mainline. This is the playthrough workspace.
- `codex`: public-readable reference browser for Pokemon, games, and generations.

Do not call the Mainline module "Adventures" in code or UI. Plays are the user-owned playthrough records inside Mainline.

`codex` is a frontend module, not a database product family.

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
- `/codex/games`
- `/codex/generations`

Keep route files in `src/app` thin. Compose module or shared components from them.

## Source Layout

Root `src` folders should stay limited to:

- `app`
- `config`
- `lib`
- `modules`
- `shared`
- `proxy.ts`

Do not reintroduce root-level `components`, `constants`, `features`, or `types`.

Module feature code belongs under `src/modules`. Shared app primitives and reusable app shell pieces belong under `src/shared`.

## UI Rules

Voydex uses shadcn UI primitives in `src/shared/components/ui`.

- Use shadcn primitives for standard controls.
- Use Base UI `render` composition, not Radix `asChild`, unless a local primitive explicitly supports `asChild`.
- Use Lucide icons for interface actions.
- Keep Tailwind simple and consistent.
- Build reusable components when a route starts getting large.
- Preserve accessibility: labels, focus states, keyboard behavior, and non-color status signals.

The design direction is clean adventure companion, not corporate dashboard and not overly game-like. Generated screenshots are references for layout and tone, not exact implementation contracts.

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
- The play current roster is 6 active Pokemon plus up to 6 reserve Pokemon.
- Retired/replaced Pokemon belong to history, not the current roster.
- Pokedex completion is species-level.
- DLC and optional content are per-play choices.
- Story snapshots are optional.
- Collection is derived from used Pokemon/history, not only current team.

## Verification

For normal frontend changes, run:

```powershell
npm.cmd run format:check
npm.cmd run lint
npm.cmd run build
```

For visual work, also test in the browser at desktop and mobile widths.
