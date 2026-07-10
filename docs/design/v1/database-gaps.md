# V1 Data Requirements And Database Gaps

This document captures data needs discovered while designing V1. It supports a
later database correctness, completeness, security, and reference-seed audit;
it does not authorize schema, seed, or production-data changes during the
design phase.

## Recording Rules

- Tie every requirement to a screen or journey ID from the
  [Product Blueprint](./product-blueprint.md).
- Describe the user-visible need before proposing a database solution.
- Separate confirmed implementation evidence from assumptions.
- Check authored schema, seeds, generated types, policies, and relevant queries
  before marking a gap confirmed.
- Record reference-data correctness and missing reference facts separately from
  user-owned schema or workflow gaps.
- Capture authorization, validation, transactional, loading, conflict, and
  failure requirements—not only displayed fields.
- Defer fixes until the full design-derived matrix is reviewed.

## Evidence Status

- **Unreviewed**: design need recorded; database not inspected.
- **Supported**: current database appears to meet the need.
- **Partial**: some required behavior or data exists, but coverage is incomplete.
- **Confirmed gap**: implementation evidence shows the requirement is missing
  or incorrect.
- **Not a database concern**: requirement belongs in application or
  presentation logic.
- **Resolved**: later database work was completed and verified.

## Screen Data-Requirements Matrix

Add one row for each meaningful screen capability rather than one vague row per
screen.

| Requirement ID | Screen/journey | User-visible need                                                                                            | Reference reads                              | User-owned reads/writes                                             | Auth and validation                                                                                        | Failure/conflict states                                                 | Evidence status | Gap IDs |
| -------------- | -------------- | ------------------------------------------------------------------------------------------------------------ | -------------------------------------------- | ------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------- | --------------- | ------- |
| DR-001         | G-01, J-01     | Normal signed-in entry opens the default view of the last active available module; V1 falls back to Mainline | Available module metadata and default routes | Read and update last active module; persistence scope is still open | Explicit URLs and validated post-login targets take precedence; reject unavailable or unauthorized modules | Missing, unknown, retired, or unauthorized preference falls back safely | Unreviewed      | —       |

## Database-Gap Register

Only add a gap after recording the design requirement that exposed it.

| Gap ID | Requirement IDs | Category | Observed need                                  | Evidence | Status | Later action |
| ------ | --------------- | -------- | ---------------------------------------------- | -------- | ------ | ------------ |
| —      | —               | —        | No specific V1 screen-derived gap recorded yet | —        | —      | —            |

Recommended categories:

- reference correctness;
- missing reference facts;
- user-owned schema;
- derived read model;
- validation or constraint;
- transaction or mutation;
- authorization, RLS, or grants;
- indexing or query performance;
- generated-type or application-contract parity.

## Later Audit Gate

Before production implementation resumes:

1. Review every approved V1 screen and state for matrix coverage.
2. Inspect current schema, seeds, policies, generated types, and app queries.
3. Mark each requirement supported, partial, a confirmed gap, or not a database
   concern.
4. Group confirmed gaps into cohesive database changes.
5. Implement authored schema and seed corrections.
6. Rebuild generated artifacts and types.
7. Run the complete database verification gate.
8. Recheck the approved designs against the corrected data contract.
