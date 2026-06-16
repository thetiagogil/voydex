# Voydex

Voydex is being rebuilt as a Pokemon companion app for tracking, remembering, and planning playthroughs across games.

This repository now contains the clean active Next.js app. The previous prototype has been preserved under `legacy/` for reference only; new app code should not import from or depend on legacy files.

## Current Status

- Clean Next.js app with TypeScript and Tailwind CSS.
- Prettier is configured.
- Supabase SSR foundation is configured for typed server, browser, and proxy clients.
- Generated Voydex database types are committed in `src/types/database.types.ts`.
- Legacy prototype is isolated in `legacy/`.
- Product and database design docs are available in `docs/product`.

## Development

```bash
npm run dev
```

```bash
npm run lint
npm run build
```

Create `.env.local` from `.env.example` before running authenticated routes.
