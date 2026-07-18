# Database Architecture

## Source Of Truth

Human-authored source lives in:

```txt
database/
  schema/
  seeds/
  supabase/
scripts/database/
```

- `database/schema` owns schemas, tables, functions, policies, grants, views,
  triggers, and table-owned indexes.
- `database/seeds` owns deterministic foundation, reference, tracking,
  gameplay-lookup, and planning-lookup data.
- `database/supabase` is the local CLI workspace. Its generated migration and
  seed entrypoints are load artifacts, not editing surfaces.
- `src/shared/types/database.types.ts` is generated from the local database and
  is the app-consumed type contract.

The local Supabase project ID is `voydex`. The nested workspace prevents the
CLI from treating the application root `.env.local` as database configuration.
Database wrappers explicitly load the separate repository-root `.env.database`
for authorized linked or remote tooling; routine local commands require no
private remote credentials.

The private file contains only `SUPABASE_DB_PASSWORD` and, when the CLI is not
already authenticated, optional `SUPABASE_ACCESS_TOKEN`. Browser configuration
uses only `NEXT_PUBLIC_SUPABASE_URL` and
`NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY` in `.env.local`.

## Schema Responsibilities

| Schema      | Responsibility                                                               | Client access               |
| ----------- | ---------------------------------------------------------------------------- | --------------------------- |
| `public`    | Auth-linked profiles, preferences, and global tags                           | Authenticated owner CRUD    |
| `reference` | Games, Pokémon identity/mechanics, availability, learnsets, and Pokedex data | Client read-only            |
| `tracking`  | Story, milestone, collectible, decision, and snapshot definitions            | Client read-only            |
| `gameplay`  | Plays, teams, progress, timeline, history, rules, and backlog                | Authenticated owner access  |
| `planning`  | Reusable plans and plan-to-play realization                                  | Authenticated owner access  |
| `views`     | App-facing derived read models                                               | Security-invoker reads      |
| `private`   | Internal triggers and validation helpers                                     | Not exposed to client roles |

Schemas describe data responsibility, not frontend module structure. Tables
whose behavior is specific to the active product family use explicit
`mainline_` names.

## Source And Generated Boundaries

`npm run db:artifacts:build` concatenates ordered schema and seed sources into
the Supabase load entrypoints. `npm run db:artifacts:check` rejects stale tracked
artifacts. Never edit generated wrappers or database types by hand.

Schema and seed ordering comes from numeric folder/file prefixes. Active
secondary indexes live beside the owning table rather than in a separate index
tree.

## Application Integration

- Browser and server clients are created only under `src/platform/supabase`.
- UI components do not issue raw schema queries.
- Public reads use `reference`, `tracking`, and safe `views` contracts.
- User-owned reads establish an authenticated identity and remain owner-scoped.
- Simple direct CRUD is acceptable where one table and its RLS policy fully own
  the mutation.
- Multi-table or history-producing mutations use the reviewed gameplay or
  planning functions listed in [Schema Contract](./schema-contract.md).

## Local Workflow

```bash
npm run db:start
npm run db:verify
npm run db:stop
```

`db:verify` rebuilds local artifacts, resets and seeds the local database, runs
offline audits, checks SQL formatting, runs Supabase database lint and pgTAP,
and verifies generated type parity. It never targets a linked project.

Use `db:types:linked` only for an explicitly authorized remote comparison.
