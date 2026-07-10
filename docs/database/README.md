# Database Documentation

The Voydex Supabase/Postgres source is co-located with the application. These
documents explain its contracts and rationale; authored SQL remains the source
of truth for exact objects and permissions.

- [Architecture](./architecture.md): schema ownership, source layout, generated
  artifacts, app integration, and local workflow.
- [Schema Contract](./schema-contract.md): application-facing entities and
  invariants.
- [Decisions](./decisions.md): rationale for non-obvious modeling choices.
- [Reference Data](./reference-data.md): source hierarchy, curation scope,
  audits, and known gaps.
- [Security And Indexing](./security.md): grants, RLS, views, functions,
  indexes, and security verification.

For current verification results, see [Project Status](../project-status.md).
