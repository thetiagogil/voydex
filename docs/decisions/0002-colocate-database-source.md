# ADR 0002: Co-Locate The Active Voydex Database Source

- Status: Accepted and implemented
- Date: 2026-07-10
- Implemented: 2026-07-10
- Source provenance: `00-databases` commit
  `85315314f7f24e071028bb8f1f4fe8bb52946f72`

## Context

The active application is in `13-voydex`, while its Supabase schema, seeds,
migrations, local config, scripts, docs, and generated types are maintained in
`00-databases/projects/voydex`. That separation makes application/database
changes harder to review and verify atomically. The active authored database
source is roughly tens of megabytes, dominated by curated seed data; legacy and
generated artifacts would add substantial avoidable weight.

## Decision

Move the active Voydex database source into the Voydex repository. The verified
organization is:

```txt
database/
  schema/
  seeds/
  supabase/
    config.toml
    migrations/
    tests/
    seed.sql               # generated and ignored
scripts/database/
docs/database/
```

Import the active human-authored schema, seeds, schema-owned indexes, database
docs, audit scripts, Supabase config, and migration history. The nested
Supabase workdir prevents the CLI from consuming the Next.js root `.env.local`.

Do not import:

- legacy Voydex database trees;
- generated `supabase/seed.sql`;
- temporary Supabase state, link metadata, secrets, or `node_modules`;
- shared tooling that still serves other database projects;
- unrelated or untracked notes without an explicit ownership decision.

Before the move, database artifact generation was repaired and verified in
`00-databases`. The imported copy then passed the complete local database and
app verification flows before old active ownership was retired.

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

- Track active authored inputs and the generated current-schema migration used
  by migration history; ignore the generated seed wrapper and local runtime
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

The relocation passed verification in Phase 2. `13-voydex/database` is now the
source of truth; `00-databases` retains only the excluded legacy archive and a
provenance pointer. This ADR does not authorize remote database operations.
