# Frontend Architecture

Voydex is a clean Next.js app using the App Router, TypeScript, Tailwind CSS, shadcn-style primitives, Lucide icons, and Supabase SSR.

The app should stay boring in its architecture and rich in its product behavior. Keep data ownership clear, keep mutation logic close to the database contract, and keep UI components focused.

## Current Structure

```txt
src/
  app/
    (auth)/
    (protected)/
    api/
    auth/
    intro/
    page.tsx
  components/
    app/
    pokemon/
    ui/
  features/
    auth/
  lib/
    supabase/
    env.ts
    utils.ts
  types/
    database.types.ts
```

## Route Layers

### Public Routes

- `/`
- `/intro`
- `/login`
- `/auth/callback`
- `/api/health`

The landing page should remain accessible even when signed in. It is a brand/home surface, not only a pre-auth gate.

### Protected Routes

Protected routes live under `src/app/(protected)` and are guarded by the proxy auth flow:

- `/dashboard`
- `/plays`
- `/plans`
- `/pokedex`
- `/collection`
- `/stats`
- `/generations`
- `/games`
- `/settings/profile`
- `/settings/preferences`
- `/settings/account`

The current protected pages are foundation placeholders. They should be replaced feature-by-feature as database-backed views are wired.

## Supabase Boundary

Supabase client creation is centralized:

- `src/lib/supabase/server.ts`
- `src/lib/supabase/browser.ts`
- `src/lib/supabase/proxy.ts`
- `src/lib/supabase/health.ts`

Rules:

- Do not create ad hoc Supabase clients in UI components.
- Use generated `Database` types from `src/types/database.types.ts`.
- Server Components and Server Actions should prefer server-side Supabase clients.
- Client Components should only use browser clients where interactivity needs it.
- App writes should follow the database handoff: use helper functions for multi-table gameplay/planning mutations instead of manually writing fragile sequences.

## Auth And Session Refresh

`src/proxy.ts` routes requests through `updateSession`.

The proxy:

- Skips `/api/health`.
- Lets public routes through.
- Refreshes Supabase cookies for protected routes.
- Redirects unauthenticated users to `/login?next=...`.

## Components

### `components/ui`

Reusable UI primitives. These should remain generic and shadcn-compatible.

### `components/app`

Application shell, navigation, layout helpers, health banner, and app-specific shared components.

### `components/pokemon`

Pokemon-specific shared visual components such as type icons. Keep product-specific Pokemon display logic here only when it is reusable across features.

## Feature Code

`src/features` should hold feature-specific behavior as it grows.

Recommended pattern:

```txt
src/features/plays/
  components/
  data/
  actions.ts
  queries.ts
  types.ts
```

Keep business logic and data shaping out of route files when it becomes nontrivial.

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
