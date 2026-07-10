# Voydex

Voydex is a Pokémon companion app for tracking, remembering, and planning
playthroughs. This repository contains the Next.js application and its
authoritative Supabase schema, seed data, generated local artifacts, and tests.

## Start Development

Requirements and environment setup are documented in
[Setup And Development](./docs/app/setup.md).

```bash
npm install
npm run dev
```

Run the normal project gate before committing:

```bash
npm run verify
```

Database work additionally requires local Supabase:

```bash
npm run db:start
npm run db:verify
```

`npm run verify:all` runs the complete database and application gates and
therefore requires the local Supabase stack to be running.

## Repository Map

- `src`: application routes, global features, product modules, platform
  adapters, and shared primitives.
- `database/schema`: human-authored database source.
- `database/seeds`: human-authored deterministic reference and lookup data.
- `database/supabase`: local Supabase configuration, generated load artifacts,
  and pgTAP tests.
- `scripts`: architecture, documentation, asset, and database tooling.
- `docs`: product, architecture, design, database, and current-state knowledge.

Start with the [documentation index](./docs/README.md) and
[current project status](./docs/project-status.md). Architecture rationale lives
in [the ADRs](./docs/decisions), including the decision to
[co-locate the database](./docs/decisions/0002-colocate-database-source.md).
