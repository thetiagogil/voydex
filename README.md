# Voydex

Voydex is a Pokemon companion app for tracking, remembering, and planning playthroughs across games.

This repository contains the active Next.js app. Product, architecture, design,
and database-integration documentation lives under `docs`.

## Current Status

- Clean Next.js App Router project with TypeScript and Tailwind CSS.
- shadcn-style UI primitives and Lucide icons are available.
- Supabase SSR foundation is configured for typed server, browser, and proxy clients.
- Auth-gated app shell, public landing page, intro page, and database health banner are in place.
- Mainline currently mounts the Plays browse and Play Hub; Codex mounts Pokemon
  and Games browse/detail surfaces.
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
npm run format:check
npm run lint
npm run build
```

## Documentation

- [Docs Index](./docs/README.md)
- [Product Vision](./docs/product/vision.md)
- [Frontend Architecture](./docs/app/architecture.md)
- [Setup And Development](./docs/app/setup.md)
- [Database Integration](./docs/database/integration.md)
- [Codex Handoff](./docs/codex-handoff.md)

## Database Source

The active Voydex database source is in the separate database repository:

```txt
../00-databases/projects/voydex
```

This app consumes the generated database types and app-facing database contract.
Schema and seed changes should be made in `00-databases`, then reflected here
through `src/shared/types/database.types.ts` and feature code.
