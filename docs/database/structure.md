# Voydex Database Structure

Voydex keeps numbered, category-based human-authored sources because its schema
and curated reference corpus are large and dependency ordered. The Supabase CLI
directory contains generated local load artifacts, not the primary source.

## Active Structure

```text
database/
  schema/
    00_foundation/
    01_public/
    02_reference/
    03_tracking/
    04_gameplay/
    05_planning/
    06_views/
  seeds/
    00_foundation/
    02_reference/
    03_tracking/
    04_gameplay/
    05_planning/
  supabase/
    migrations/
      00000000000000_voydex_current_schema.sql
      <timestamp>_<name>.sql
    seed.sql
    tests/
      001_schema_security_smoke.sql
    config.toml
scripts/database/
  audit-schema-files.mjs
  audit-seed-files.mjs
  build-local-artifacts.mjs
  generate-types.mjs
  supabase.mjs
src/shared/types/
  database.types.ts
```

Legacy files remain archived in the source `00-databases` repository and are
not part of the active Voydex checkout.

`database/supabase/config.toml` intentionally retains the local
`project_id = "00-databases-voydex"` during cutover so existing local Docker
volumes and container identity are reused. Renaming that local identity is a
separate cleanup, not part of source relocation.

## Source And Generated Boundaries

- Edit schema definitions under `database/schema`.
- Edit deterministic seed data under `database/seeds`.
- Keep active indexes beside the table schema that owns them.
- Never hand-edit
  `database/supabase/migrations/00000000000000_voydex_current_schema.sql` or
  `database/supabase/seed.sql`.
- Run `npm.cmd run db:artifacts:build` when wrappers need regeneration without a
  reset. `npm.cmd run db:reset` runs the same builder through its npm pre-hook.
- Run `npm.cmd run db:audit` to verify generated-artifact freshness,
  schema-owned index targets/names, and the deterministic seed corpus.

`scripts/database/build-local-artifacts.mjs` recursively collects `.sql` files
from the schema and seed roots and concatenates them in lexicographic
relative-path order. Numbered folders and filenames therefore define load
order.

## Schema Ordering

The active schema layers are:

1. `00_foundation`: extensions and application schemas.
2. `01_public`: auth-linked profiles, preferences, tags, functions, and policy/grant setup.
3. `02_reference`: canonical game, Pokemon, mechanics, availability, learnset, and Pokedex data structures.
4. `03_tracking`: curated mainline tracking definitions and read policies.
5. `04_gameplay`: user-owned plays, progress, events, mutation helpers, RLS, and grants.
6. `05_planning`: team plans, plan/play bridge helpers, RLS, and grants.
7. `06_views`: `security_invoker` app read models and explicit select grants.

Within a layer, numbered child folders keep tables before dependent functions,
policies, grants, and views.

## Seed Ordering And Audit

Seeds are fresh/reset inputs rather than rerunnable patch scripts. They use
fixed lookup/reference IDs and deterministic ordering. Curated reference files
are intentionally excluded from pgFormatter coverage; verify them with:

```powershell
npm.cmd run db:audit
```

After schema or seed changes, use the local reset/audit/lint/test/type sequence
documented in `docs/database/app-handoff.md`. The pgTAP suite provides a
security baseline; representative cross-user mutation tests still need to be
added as application write flows expand.

## Index Policy

- Primary keys, unique constraints, and integrity constraints stay with their
  owning table definitions.
- Secondary lookup, sort, filter, and foreign-key indexes stay in the same
  current-state table file so the generated schema cannot omit them.
- Review index changes against actual query, foreign-key, cascade, and RLS
  needs. Add a forward migration for deployable index changes.

## Security Rules

- Explicitly enable RLS on every exposed user-owned table.
- Pair API grants with policies; grants make an object reachable and RLS limits
  rows.
- Keep reference and tracking data read-only for runtime client roles.
- Use `security_invoker = true` for exposed views over RLS-protected data.
- Keep privileged helper functions out of exposed schemas unless a deliberate,
  reviewed exception requires otherwise; revoke default function execution and
  set a controlled search path.
