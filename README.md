# Voydex

Next.js app for tracking Pokemon playthrough progress with Supabase Auth,
Postgres data, and Supabase Storage assets.

## Deployment Status

Validated locally on Node.js `22.13.0` and npm `11.6.2`.

```bash
npm ci
npm run check
```

`npm run check` runs ESLint and a production Next.js build. The build output is
`.next`; this app is server-rendered and uses route handlers, so it must not be
deployed as a static export.

## Package Scripts

| Script | Purpose |
| --- | --- |
| `npm run dev` | Start local Next.js development server with Turbopack. |
| `npm run build` | Create the production `.next` build with Turbopack. |
| `npm run start` | Serve an existing production build locally. |
| `npm run check` | Deployment preflight: lint, type-check via Next, and build. |
| `npm run lint` | Run ESLint. |
| `npm run prettier:check` | Check formatting. |
| `npm run db:migrate` | Apply database schema migrations. |
| `npm run db:seed` | Insert reference/tracking/gameplay seed data. |
| `npm run db:index` | Create secondary performance indexes after seeding. |
| `npm run db:verify` | Run database seed verification. |

Database reset and clean scripts are available in `package.json`. Treat them as
destructive and do not run them against production unless that is explicitly
intended.

## Environment Variables

Copy `.env.example` to `.env.local` for local development. In production, set
the same variables in the hosting platform's environment variable settings.

| Variable | Required for | Notes |
| --- | --- | --- |
| `NEXT_PUBLIC_SUPABASE_URL` | App runtime and build | Supabase project URL. Safe to expose to the browser. |
| `NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY` | App runtime and build | Supabase publishable/anon key. Safe to expose to the browser. |
| `SUPABASE_DB_URL` | Database scripts | Direct Postgres connection string used by migration, seed, index, and verify scripts. Server-side only. |
| `SUPABASE_SERVICE_ROLE_KEY` | Server maintenance only | Not used by the current app runtime. Keep server-side only. |
| `SUPABASE_PROJECT_ID` | Project administration | Not used by the current app runtime. Keep server-side only. |
| `SUPABASE_DB_PASSWORD` | Project administration | Not used directly by the current scripts when `SUPABASE_DB_URL` includes credentials. Keep server-side only. |

Never commit `.env.local`, `.env`, Supabase service role keys, or direct
database connection strings.

## Routing Contract

Public routes:

- `/`
- `/intro`
- `/pokedex`
- `/auth/*`
- `/api/auth/*`
- `/api/reference/*`
- `/api/health`

Protected routes:

- `/(protected)/*`, served publicly as `/dashboard`, `/adventures`,
  `/collection`, `/generations/*`, `/games/*`, and `/plays/*`
- `/api/features/*`

Unauthenticated protected page requests redirect to `/auth/login`.
Unauthenticated protected API requests return `401` JSON.
`/api/health` bypasses auth and returns `503` when required Supabase client
configuration is missing or Supabase is unreachable.

## Vercel Deployment

The project is ready for Vercel's Next.js preset. No `vercel.json` is required
for the current single-app repository layout.

Use these project settings:

| Setting | Value |
| --- | --- |
| Framework preset | Next.js |
| Root directory | Repository root |
| Install command | `npm ci` |
| Build command | `npm run build` |
| Output directory | Leave empty/default; Vercel uses `.next` for Next.js |
| Node.js version | `22.x` from `package.json` `engines` |

Manual deployment steps:

1. Create or select the production Supabase project.
2. In the hosting platform, add the required environment variables for Preview
   and Production. Do not expose server-only variables to the browser.
3. From a trusted local machine or controlled CI job, point `SUPABASE_DB_URL` at
   the intended production database and run:

   ```bash
   npm run db:migrate
   npm run db:seed
   npm run db:index
   npm run db:verify
   ```

4. In Supabase Auth settings, add the production site URL and any required
   Vercel preview URLs to the allowed redirect URLs.
5. Run `npm run check` locally or in CI.
6. Create a Vercel preview deployment through the Vercel dashboard or Git
   integration.
7. Verify the preview deployment:
   - `/api/health` returns `{"status":"healthy"}`.
   - `/auth/login` and `/auth/signup` load.
   - `/pokedex` can load reference data.
   - An authenticated user can access `/dashboard`.
8. Promote or deploy to production only after preview verification passes.
9. Configure custom domains and DNS manually in Vercel after the production
   deployment is healthy. This repository does not make DNS changes.

## Notes

- Do not run database migrations from the Vercel build command. Keep schema and
  seed changes as an explicit release step so deploys do not mutate production
  data unexpectedly.
- Supabase Storage images are allowed through `next.config.ts` for the current
  project host and PokemonDB sprites.
- The production build currently emits Node's `DEP0040` `punycode` deprecation
  warning from dependencies under Node 22. The warning does not fail the build.
