# Voydex

Voydex is a Pokemon companion app for tracking, remembering, and planning playthroughs across games.

This repository contains the active Next.js app. Product, architecture, design,
and database-integration documentation lives under `docs`.

## Current Status

- Clean Next.js App Router project with TypeScript and Tailwind CSS.
- shadcn-style UI primitives and Lucide icons are available.
- Supabase SSR foundation is configured for typed server, browser, and proxy clients.
- Auth-gated app shell, public landing page, intro page, and database health banner are in place.
- Mainline mounts the Plays browse and a feature-owned hierarchical Play Hub;
  Codex mounts Pokemon and Games browse/detail surfaces.
- The internal `reference` module owns reusable Pokemon/game catalogue contracts,
  domain rules, and presentation primitives consumed by Codex and Mainline.
- Generated Voydex database types are committed in
  `src/shared/types/database.types.ts`.
- Product, app, and database integration docs are available in `docs`.

## Development

Create `.env.local` from `.env.example` before running authenticated routes.

```bash
npm install
npm run dev
```

```bash
npm run verify
```

Or run an individual gate while diagnosing a failure:

```bash
npm run format:check
npm run lint
npm run typecheck
npm run architecture:check
npm run test
npm run build
```

## Documentation

- [Docs Index](./docs/README.md)
- [Product Vision](./docs/product/vision.md)
- [Frontend Architecture](./docs/app/architecture.md)
- [Setup And Development](./docs/app/setup.md)
- [Verification](./docs/app/verification.md)
- [Database Integration](./docs/database/integration.md)
- [Architecture Decision Records](./docs/decisions)
- [Codex Handoff](./docs/codex-handoff.md)

## Database Source

The active Voydex database source is co-located with the app:

```txt
database/schema
database/seeds
database/supabase
```

Database scripts live under `scripts/database`, detailed contracts live under
`docs/database`, and local type generation writes directly to
`src/shared/types/database.types.ts`. See
[ADR 0002](./docs/decisions/0002-colocate-database-source.md) and the
[database integration guide](./docs/database/integration.md).
