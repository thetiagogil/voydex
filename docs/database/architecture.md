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

## Where The Database Runs

[ADR 0008](../decisions/0008-user-data-on-the-device.md) runs one schema in
three places. Today hosted Supabase still holds everything; the local-data
issues (#245 to #248) move it to this target:

| Place                     | What it holds                                                                   |
| ------------------------- | ------------------------------------------------------------------------------- |
| Local Supabase (dev only) | Everything: schema work, seeds, `db:verify`, pgTAP and building game data files |
| The device (PGlite)       | Each user's own data, plus the game data files for the games they play          |
| Hosted Supabase           | Login (Auth) and `user_backups` with each user's private backup folder only     |

- The device loads the tables, functions and views from `database/schema`.
  `auth.uid()` returns one fixed local user there, so functions that check
  the owner work unchanged.
- `reference` and `tracking` reach the device as files: a release loads the
  seeds, runs `db:verify`, and exports one versioned file per version group,
  one shared base file and a version list, published to Cloudflare Pages.
- Hosted Supabase is reset to auth and backups only at the reset before
  launch, with the owner's approval.

### The Device Database

`src/platform/local-db` holds what the device runs (#245):

- `device-schema.sql` runs first on a new device: the `anon`,
  `authenticated` and `service_role` roles, a small `auth.users` and
  `auth.uid()`, and the `device` schema that records the installed schema's
  hash and the imported game files. The built migration follows in the same
  transaction, without its `CREATE EXTENSION pgcrypto` (nothing uses it, and
  the device would download 1 MB for it). The app serves both, built at
  build time, at `/local-db/schema.sql` and `/local-db/schema-hash.txt`; a
  returning device only compares the hash.
- `npm run local-db:game-file [slug|all]` builds a game data file without
  Docker: it loads the schema and the seeds (no development fixtures) into an
  in-memory PGlite, keeps the shared rows plus one version group and its
  expansions, and writes every non-empty table as COPY text to
  `public/game-data/<slug>.json.gz` (ignored by Git). Format 1 carries the
  shared rows too, so a device takes one game until the release build splits
  a base file from the per-game files (#246).
- The database runs in a worker (`local-db-worker.ts`) stored in IndexedDB as
  `/pglite/voydex`; one tab leads and the others send their queries to it.
- `/device-check` starts it with Sword / Shield and times start, import and
  saves, for the phone test.

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
- **After launch**: every change to the hosted tables ships as a patch
  migration under `database/supabase/migrations` **and** the matching schema
  edit in the same change, so source and migrations never drift. A
  user-table change also ships as a device update that saves a copy first,
  restores it on failure, and is tested against an old backup. A game data ID
  never disappears or changes meaning silently: the change goes in the
  ordered ID changes list shipped with the game data, and the release check
  fails without it. Until launch, IDs may change freely.

Every data fix adds a pgTAP check that failed before it (see
`database/supabase/tests/080_reference_data_regressions.sql`).

## Application Integration

- The device database is started and queried only through
  `src/platform/local-db`; every user-data read and save goes there once its
  screen has moved (see
  [Frontend Architecture](../app/architecture.md#where-data-lives)).
- Browser and server Supabase clients are created only under
  `src/platform/supabase`, for login, backups and the screens not yet moved.
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

Day-to-day development points `.env.local` at the local stack. Reference images
(Pokémon, game covers, item sprites, move category icons, trainer portraits and gym badges) don't live in the database: they come from the
separate `voydex-assets` site set in `NEXT_PUBLIC_ASSETS_URL`. A new game needs
its cover added there as `games/covers/<game-slug>.webp`, and a new held item
or Poké Ball its sprite as `items/<item-slug>.webp`. An opponent's portrait is
`trainers/<sprite_slug>.webp`; `tracking.mainline_opponents.sprite_slug` is set
only where that file exists (the site caches a missing file's 404 for 30 days),
so add the file before seeding its slug, and deploy the assets before the app.
A gym badge's picture is `badges/<sprite_slug>.webp` from
`tracking.mainline_badges.sprite_slug`: one file per badge design, so a badge
that returns in a later game keeps its slug, and Galar's and Paldea's
type-named badges carry their region (`galar-grass-badge`). The app asks for a
picture only for a gym milestone; Alola's Z-Crystals keep their type icon.

The local Auth fixture must never be loaded into a linked project. When hosted
development data is explicitly authorized, apply only gameplay seed files `002`
through `006` to the dedicated fixture owner inside an owner-scoped transaction, then
verify linked migration parity and hosted row counts.

Use `db:types:linked` only for an explicitly authorized remote comparison.
