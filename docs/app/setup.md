# Setup And Development

This repository owns both the app and its Voydex database source.

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

Create `.env.local` from `.env.local.example`.

```txt
NEXT_PUBLIC_SUPABASE_URL=
NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY=
```

Legacy anon-key aliases are not accepted. Use the publishable key for browser
runtime configuration.

Do not commit `.env.local`.

Private database tooling uses the separate repository-root `.env.database`.
Create it from `.env.database.example` only when an explicitly authorized
linked or remote operation needs credentials. The database wrappers load this
file directly; local start, reset, lint, pgTAP, and type generation do not
require it. Never put private keys or database passwords in `NEXT_PUBLIC_*`
variables.

Voydex private tooling accepts `SUPABASE_DB_PASSWORD` and optional
`SUPABASE_ACCESS_TOKEN`. The token is unnecessary when the CLI is already
authenticated with `supabase login`.

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

`npm run db:types` generates this file directly from the local database.
`npm run db:types:check` verifies parity without rewriting it. Linked type
generation is an explicit remote operation through `db:types:linked`.

## Local Supabase

Local Supabase is optional for pure UI work but recommended before database-heavy feature work.

```bash
npm run db:start
npm run db:verify
```

`db:verify` rebuilds and resets the local database, audits the source corpus,
lints the live schema, runs pgTAP, and checks generated type parity. Pure UI
work can continue to use `npm run verify` without Docker.

## Remote Supabase

The app should use only public client keys in frontend environment variables.

Reference and tracking data should be client-readable only. User-owned schemas must rely on RLS, ownership policies, and app-facing helper functions where multi-table mutations are needed.

## Working Across Windows And Mac

Use Git as the source of truth for source code.

Recommended flow:

1. Commit changes on one machine.
2. Pull the branch on the other machine.
3. Copy `.env.local` and, only when needed, `.env.database` values manually.
4. Use `docs/project-status.md` to restore current implementation context.
