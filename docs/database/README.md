# Voydex Database Docs

These docs define the architecture contract and current implementation status
for the co-located Voydex database.

The active source was imported from `00-databases` commit
`85315314f7f24e071028bb8f1f4fe8bb52946f72`. The old repository retains its
excluded legacy tree as archive-only material; it is not an implementation
source.

## Documents

- [Database Architecture](./database-architecture.md)
- [Schema Contract](./schema-contract.md)
- [Reference Data Strategy](./reference-data-strategy.md)
- [Rebuild Plan](./rebuild-plan.md)
- [Schema Design Readiness](./schema-design-readiness.md)
- [Schema Design Decisions](./schema-design-decisions.md)
- [Table Blueprint](./table-blueprint.md)
- [Security And Index Plan](./security-and-index-plan.md)
- [App Handoff](./app-handoff.md)
- [Source Structure](./structure.md)
- [Data Inconsistencies](./data-inconsistencies.md)

## Current Status

- Active clean schema source files include foundation, `public`, `reference`, `tracking`, `gameplay`, `planning`, and `views`.
- Active clean seed files include foundation prerequisites, reference data, tracking definitions, gameplay lookup data, and planning lookup data.
- Generated Supabase wrapper files are produced from the reviewed source folders for local reset/load verification.
- The database-side app contract is ready for consumption through the generated
  types and [App Handoff](./app-handoff.md).
- Offline structural audits and a 13-assertion pgTAP schema/security smoke suite
  are active. Representative cross-user mutation coverage remains a future
  hardening task.
