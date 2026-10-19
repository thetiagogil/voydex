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

## Changing The Database

The schema and seed sources are the database's source of truth: a fresh
database built from them alone must match every environment.

- **Before launch** (now): fix schema and data by editing the source files
  directly, then rebuild artifacts and reset. `database/supabase/migrations`
  holds only the generated baseline; the earlier patch migrations were folded
  into it on 2026-10-19. Do not add patch migrations; the hosted database is
  reset and re-seeded from source when the owner approves, which also resets
  its migration history.
- **After launch**: every change ships as a patch migration under
  `database/supabase/migrations` **and** the matching schema or seed edit in
  the same change, so source and migrations never drift. Data corrections
  follow the same rule as schema changes.

Every data fix adds a pgTAP check that failed before it (see
`database/supabase/tests/080_reference_data_regressions.sql`).

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
and verifies generated type parity. It never targets a linked project. SQL is
formatted with pgFormatter 5.11 (`brew install pgformatter` on a Mac, or point
`PG_FORMAT_BIN` at its `pg_format`); the GitHub check pins the same version.

Local resets also create the development account and version-group-spanning
gameplay fixtures documented in
`database/seeds/90_development/README.md`. The fixture matrix has exactly two
plays for each of the 22 supported base version groups: one comprehensive play
and one deliberately blank play. Its 22 linked plans, staged completion bands,
game-valid teams, history, snapshots, and representative custom states cover the
gameplay and planning surfaces without turning UI tests into manual database
setup.

Day-to-day development points `.env.local` at the local stack. Local resets also
create the public `reference-assets` Storage bucket and upload the game covers
kept in `database/storage/reference-assets` (copies of the hosted bucket,
`games/covers/<game-slug>.webp`). A new game needs its cover added there and in
hosted Storage.

The local Auth fixture must never be loaded into a linked project. When hosted
development data is explicitly authorized, apply only gameplay seed files `002`
through `006` to the dedicated fixture owner inside an owner-scoped transaction, then
verify linked migration parity and hosted row counts.

Use `db:types:linked` only for an explicitly authorized remote comparison.
