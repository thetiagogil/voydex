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
  lib/
    supabase/
    env.ts
    utils.ts
  modules/
    codex/
    mainline/
      features/
  shared/
    auth/
    components/
      app/
      pokemon/
      ui/
    pokemon/
    settings/
    theme/
    types/
  proxy.ts
```

Root-level source folders should stay limited to:

- `app`
- `config`
- `lib`
- `modules`
- `shared`
- `proxy.ts`

Do not reintroduce root `components`, `constants`, `features`, or `types` folders.

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
- `/codex/pokemon/[speciesSlug]`
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

### `src/shared/components/app`

Application shell, navigation, layout helpers, health banner, and app-specific shared components.

### `src/shared/components/pokemon`

Pokemon-specific shared visual components such as type icons. Keep product-specific Pokemon display logic here only when it is reusable across features.

### `src/shared/theme`

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

The `codex` module covers public-readable reference browsing. The `mainline` module covers mainline-style Pokemon RPG playthrough behavior. Its user-facing label is Mainline.

Dashboard is a view inside the `mainline` module, not its own module.

Feature code inside a module should follow this shape:

```txt
src/modules/mainline/features/dashboard/
  components/
  data/
  actions.ts
  queries.ts
  types.ts
```

Future app modules can use the same module pattern when they become active. Pokemon product families such as `dungeon`, `pokopia`, `go`, `home`, `ranger`, and `sleep` can become modules when they have distinct frontend behavior.

## Feature Code

Cross-app features such as auth and settings live in `src/shared`.

Recommended pattern:

```txt
src/shared/auth/
  components/
  server/
```

Keep business logic and data shaping out of route files when it becomes nontrivial. Route files should usually compose module or feature components.

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
