# Setup And Development

This document covers the app repo. Database source and Supabase reset commands live in `00-databases`.

## Requirements

- Node.js 20.19+, 22.12+, or 24+, matching the supported intersection of the
  locked Next.js and test-tool versions.
- npm.
- Access to the Voydex Supabase project or a local Supabase instance.

## Install

```bash
npm install
```

## Environment

Create `.env.local` from `.env.example`.

```txt
NEXT_PUBLIC_SUPABASE_URL=
NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY=
```

`NEXT_PUBLIC_SUPABASE_ANON_KEY` is accepted as a fallback by `src/lib/env.ts`, but the preferred variable is `NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY`.

Do not commit `.env.local`.

## Run The App

```bash
npm run dev
```

## Validate

```bash
npm run verify
```

Use the individual gates while diagnosing a failure:

```bash
npm run format:check
npm run lint
npm run typecheck
npm run architecture:check
npm run test
npm run build
```

`npm run test:watch` runs Vitest in watch mode. The architecture checker protects
the transition-safe dependency rules described in
[Frontend Architecture](./architecture.md). Pull requests and pushes to `main`
run the same gates through the GitHub Actions `Quality` workflow.

Browser smoke checks remain focused and manual for now. Use the route matrix in
[Verification](./verification.md); there is no committed end-to-end browser
suite yet.

## Database Type Updates

Generated database types are committed at:

```txt
src/shared/types/database.types.ts
```

The canonical generated type file comes from:

```txt
00-databases/projects/voydex/types/database.types.ts
```

When database types change, update this file intentionally from the database
repo output. There is no app-side type generation script at the current
checkpoint. The accepted database relocation will revisit this after the
database source is co-located and locally verified.

## Local Supabase

Local Supabase is optional for pure UI work but recommended before database-heavy feature work.

Run these commands from:

```txt
../00-databases
```

```bash
npm run db:start:voydex
npm run db:reset:voydex
npm run db:types:voydex -- --local
node projects/voydex/scripts/audit-seed-files.mjs
node scripts/supabase-target.mjs voydex db lint --local --fail-on error
```

`db:reset:voydex` rebuilds generated local schema and seed wrappers before loading them.

## Remote Supabase

The app should use only public client keys in frontend environment variables.

Reference and tracking data should be client-readable only. User-owned schemas must rely on RLS, ownership policies, and app-facing helper functions where multi-table mutations are needed.

## Working Across Windows And Mac

Use Git as the source of truth for source code.

Recommended flow:

1. Commit changes on one machine.
2. Pull the branch on the other machine.
3. Copy `.env.local` values manually.
4. Keep `00-databases` and `13-voydex` checked out next to each other until the
   accepted database relocation is complete.
5. Use `docs/codex-handoff.md` to restore context in a fresh Codex thread.
