# ADR 0002: Co-Locate The Active Voydex Database Source

- Status: Accepted
- Date: 2026-07-10

## Context

The active application is in `13-voydex`, while its Supabase schema, seeds,
migrations, local config, scripts, docs, and generated types are maintained in
`00-databases/projects/voydex`. That separation makes application/database
changes harder to review and verify atomically. The active authored database
source is roughly tens of megabytes, dominated by curated seed data; legacy and
generated artifacts would add substantial avoidable weight.

## Decision

Move the active Voydex database source into the Voydex repository in a later,
dedicated migration phase. The target organization is:

```txt
database/
  schema/
  seeds/
  indexes/
supabase/
  config.toml
  migrations/
  tests/
  seed.sql                 # generated and ignored
scripts/database/
docs/database/
```

Import the active human-authored schema, seeds, indexes, database docs, audit
scripts, Supabase config, and migration history. Record the source repository
commit as provenance.

Do not import:

- legacy Voydex database trees;
- generated `supabase/seed.sql`;
- temporary Supabase state, link metadata, secrets, or `node_modules`;
- shared tooling that still serves other database projects;
- unrelated or untracked notes without an explicit ownership decision.

Before the move, repair and verify database artifact generation in
`00-databases`. The old repository remains authoritative until the imported
copy passes the complete local database verification flow.

## Consequences

### Benefits

- Application and database contracts can change in one reviewable repository.
- Local onboarding and CI commands become easier to discover.
- Generated app types can be checked directly against the co-located schema.
- Product history and database intent are easier to understand together.

### Costs And Risks

- Fresh clones and repository storage grow because curated seeds are tracked.
- Frequently changing large seed files can inflate Git history.
- CI must avoid rebuilding or uploading generated database artifacts
  unnecessarily.
- The relocation has a two-repository cutover and must preserve migration
  history exactly.

## Size Policy

- Track active authored inputs; ignore generated wrappers and local runtime
  state.
- Keep legacy data outside the application repository.
- Review unusually large new files and high-churn bulk rewrites before merging.
- Prefer stable, partitioned seed files over repeatedly replacing one generated
  monolith.
- Reconsider a split repository or Git LFS only if active source grows into the
  several-hundred-megabyte range, clone performance becomes materially poor, or
  large binary/high-churn assets become normal.

The current active source size is acceptable for a product repository when
these rules are followed; repository weight is a managed cost, not a reason to
keep the database contract separate by default.

## Cutover Rule

Until the relocation phase completes and passes verification,
`../00-databases/projects/voydex` remains the source of truth. This ADR does not
authorize schema behavior changes or remote database operations.
