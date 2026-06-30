# Frontend Architecture

Voydex is a clean Next.js app using the App Router, TypeScript, Tailwind CSS, shadcn-style primitives, Lucide icons, and Supabase SSR.

The app should stay boring in its architecture and rich in its product behavior. Keep data ownership clear, keep mutation logic close to the database contract, and keep UI components focused.

## Current Structure

```txt
src/
  app/
    (app-protected)/
    (app-public)/
    (auth)/
    (site)/
    (system)/
    api/
  config/
  features/
    auth/
    settings/
    site/
    system/
  lib/
    auth/
    modules/
    supabase/
    env.ts
    utils.ts
  modules/
    codex/
    mainline/
      features/
  shared/
    components/
      app-shell/
      brand/
      pokemon/
      ui/
    domain/
      icons/
      pokemon/
    hooks/
    providers/
    styles/
    types/
  proxy.ts
```

Root-level source folders should stay limited to:

- `app`
- `config`
- `features`
- `lib`
- `modules`
- `shared`
- `proxy.ts`

Do not reintroduce root `components`, `constants`, or `types` folders.

## Route Layers

### Site Routes

- `/`
- `/intro`

Site routes live outside the app shell. They are public brand/product pages, not protected workspace pages.

The landing page should remain accessible even when signed in. It is a brand/home surface, not only a pre-auth gate.

### Auth Routes

- `/login`
- `/auth/callback`

Auth routes are public auth pages and auth infrastructure callbacks.

### System Routes

- `/app`

`/app` is the generic app entry route. It reads the `voydex-active-module` cookie and redirects to the active module default route.

### Public App Routes

Routes under `src/app/(app-public)` use the normal app shell but are not auth-required:

- `/codex`
- `/codex/pokemon`
- `/codex/pokemon/[gameSlug]`
- `/codex/pokemon/[gameSlug]/[speciesSlug]`
- `/codex/games`
- `/codex/games/[gameSlug]`
- `/codex/generations`
- `/codex/generations/[generationId]`

Codex is public-readable but can still show authenticated shell behavior when a session exists.

### Protected App Routes

Protected app routes live under `src/app/(app-protected)` and are guarded by the proxy auth flow:

- `/mainline`
- `/mainline/dashboard`
- `/mainline/plays`
- `/mainline/plays/new`
- `/mainline/plays/[playId]`
- `/mainline/plays/[playId]/team`
- `/mainline/plays/[playId]/progress`
- `/mainline/plays/[playId]/story`
- `/mainline/plays/[playId]/pokedex`
- `/mainline/plays/[playId]/collectibles`
- `/settings`

Planned workspaces such as Mainline-level Plans, Collection, and Stats should be added route-by-route when their product slice is implemented.

### API Routes

- `/api/health`
- `/api/codex/pokemon-menu`

`/api/codex/pokemon-menu` supports the client-side Pokemon species selector on
game-scoped Pokemon detail pages. Prefer server-rendered data for normal browse
views. Use API routes only when a client island needs incremental or interactive
data that should not be serialized with the initial route payload.

### Route Organization

- Public site/product pages should live under `src/app/(site)`.
- Auth pages and auth callbacks should live under `src/app/(auth)`.
- Technical redirect/system routes should live under `src/app/(system)`.
- Public-readable app-shell feature routes should live under `src/app/(app-public)`.
- Protected app-shell feature routes should live under `src/app/(app-protected)`.
- Root-level special files such as `layout.tsx`, `not-found.tsx`, `icon.png`, and `apple-icon.png` stay at `src/app`.
- API route handlers stay under `src/app/api`.

## Supabase Boundary

Supabase client creation is centralized:

- `src/lib/supabase/server.ts`
- `src/lib/supabase/browser.ts`
- `src/lib/supabase/proxy.ts`
- `src/lib/supabase/health.ts`

Rules:

- Do not create ad hoc Supabase clients in UI components.
- Use generated `Database` types from `src/shared/types/database.types.ts`.
- Server Components and Server Actions should prefer server-side Supabase clients.
- Client Components should only use browser clients where interactivity needs it.
- App writes should follow the database handoff: use helper functions for multi-table gameplay/planning mutations instead of manually writing fragile sequences.

## Auth And Session Refresh

`src/proxy.ts` routes requests through `updateSession`.

The proxy:

- Skips `/api/health`.
- Lets public routes through.
- Syncs the `voydex-active-module` cookie when the request is for a known module route.
- Refreshes Supabase cookies for protected routes.
- Redirects unauthenticated users to `/login?next=...`.

## Components

### `src/shared/components/ui`

Reusable UI primitives. These should remain generic and shadcn-compatible.

Voydex currently uses shadcn components backed by Base UI. Base UI primitives use `render` for custom rendered elements, not Radix `asChild`. Do not mix Radix-only composition assumptions into Base UI components.

### `src/shared/components/app-shell`

Application shell, navigation, layout helpers, health banner, and app-specific shared components.

### `src/shared/components/pokemon`

Pokémon-specific shared visual components such as type icons. Keep product-specific Pokémon display logic here only when it is reusable across features.

### `src/shared/domain`

Reusable app-wide domain helpers and constants. Domain code should be portable across modules and should not know about route structure.

Examples:

- `src/shared/domain/icons`
- `src/shared/domain/pokemon`

### `src/shared/providers`

Theme provider and theme bootstrapping code.

### `src/shared/types`

Generated and shared app-wide types, including the Supabase `Database` type.

### `src/config`

Static app contracts such as routes, navigation, app module metadata, and product family metadata. These are not runtime helpers and should not live in `lib`.

Module configuration lives in `src/config/modules.ts`. It defines:

- Active modules.
- Module default routes.
- Module view links.
- The active-module cookie name.
- Path-to-module resolution helpers.

## Modules

`src/modules` holds product module code. A module is a product area with its own behavior, not a database schema boundary.

Current modules:

```txt
src/modules/codex/
src/modules/mainline/
```

The `codex` module covers public-readable reference browsing. The `mainline` module covers mainline-style Pokémon RPG playthrough behavior. Its user-facing label is Mainline.

Dashboard is a view inside the `mainline` module, not its own module.

Feature code inside a module should follow this shape:

```txt
src/modules/mainline/features/dashboard/
  components/
  data/
  dashboard-page.tsx
```

Future app modules can use the same module pattern when they become active. Pokémon product families such as `dungeon`, `pokopia`, `go`, `home`, `ranger`, and `sleep` can become modules when they have distinct frontend behavior.

## Feature Code

Cross-app route features such as auth, settings, site, and system pages live in `src/features`.

Recommended pattern:

```txt
src/features/auth/
  components/
```

Feature workflows should be organized by what the view does:

```txt
src/modules/mainline/features/play/
  browse/
    components/
    data/
    utils/
    mainline-plays-page.tsx
  create/
    components/
    data/
    server/
    create-mainline-play-page.tsx
  detail/
    overview/
    team/
    progress/
    story/
    pokedex/
    collectibles/
    shared/
```

Keep business logic and data shaping out of route files when it becomes nontrivial. Route files should usually compose module or feature components.

## File And Component Conventions

Names should optimize for searchability, import clarity, and reviewability.

- Route files in `src/app` should mostly handle route params, redirects, `notFound`, and calling module page components.
- Page-level components that directly back a route may live at the feature root, for example `pokedex-page.tsx`, `pokemon-detail-page.tsx`, `games-page.tsx`, or `mainline-plays-page.tsx`.
- Component filenames should usually match the exported component name in kebab/Pascal form. For example, `pokemon-detail-species-selector.tsx` should export `PokemonDetailSpeciesSelector`.
- Keep explicit feature prefixes for components used across a feature. `PokemonDetailGenerationMenu` is preferable to a generic `GenerationMenu` when imported from multiple files.
- Avoid generic data filenames like `queries.ts` once a feature has more than one data concern. Prefer names that describe the view or workflow, such as `dashboard-page-query.ts`, `games-page-query.ts`, `game-detail-query.ts`, or `create-play-page-query.ts`.
- Split browse and detail loaders when they feed different routes. A `browse/data/*page-query.ts` file should not also export detail-page loaders.
- Keep runtime helpers out of `types` folders. If a file exports functions, place it under `utils`, `data`, `server`, or another behavior-oriented folder.
- Move helpers to the nearest stable shared boundary when they are used by multiple features. For example, Mainline play display helpers belong under `src/modules/mainline/shared`, not under a single browse component folder.
- Large files are acceptable when they are mostly definitions, configuration, or generated/primitive wrapper code. Split large files when they mix responsibilities, obscure data flow, or make a feature hard to review.
- During broad refactors, reset unfinished screens to simple real-data shells instead of preserving elaborate placeholder UI. Rebuild complex views section by section.

## Assets

Active assets live in `public`.

Current important asset groups:

- `public/backgrounds`
- `public/brand`
- `public/icons/types`

The `legacy/` folder is reference only. New code must not import assets from `legacy/`.

## Verification Expectations

For normal frontend changes, run:

```bash
npm run format:check
npm run lint
npm run build
```

For visual work, also check the page in a browser at desktop and mobile widths.
