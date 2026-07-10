# Rebuild Plan

This plan tracks the clean Voydex rebuild from product contract through schema, seeds, app integration, and verification.

## Phase 1: Product And Database Contract

Status: complete.

Deliverables:

- Product feature contract in `13-voydex/docs/product`.
- Database architecture docs in `docs/database`.
- Agreed source-of-truth and derived-data rules.
- Agreed schema domains and table responsibilities.

## Phase 2: Clean Schema Design

Status: complete for the current mainline module scope.

Deliverables:

- Clean SQL schema folder structure.
- Public/profile schema.
- Reference schema.
- Tracking schema.
- Gameplay schema.
- Planning schema.
- Views schema.
- Private/internal schema if needed.

No legacy SQL should be copied blindly. Legacy files can inform the design.

## Phase 3: Reference Seed Strategy

Status: complete for the current mainline reference scope.

Deliverables:

- Seed folder structure.
- Reference source/audit scripts adapted for the clean schema.
- Source hierarchy encoded in audit docs/scripts.
- Row-level audit plan for every reference table.

## Phase 4: Gameplay/Planning Seed And Test Data

Status: complete for production lookup seeds and offline structural RLS/grant
checks. Optional demo data remains out of production seeds. Executable
authorization coverage remains open because the active target has no
substantive pgTAP/RLS suite.

Deliverables:

- Minimal lookup seeds.
- Optional demo data, clearly separated from production seeds.
- RLS and ownership verification gates.

## Phase 5: App Rebuild

Status: tracked in `13-voydex`, not in this database repository.

Deliverables:

- App route groups and navigation shell.
- Supabase client/server setup.
- Auth and protected routes.
- One vertical slice: create/list mainline_plays and view play hub shell.

## Current Implementation Point

Clean schema and seed source files now exist for foundation, `public`, `reference`, `tracking`, `gameplay`, `planning`, and `views`.

Reference seeds are file-level audited for the current scope,
tracking/gameplay/planning lookup seeds are present, generated Supabase wrappers
are present for local load verification, and database types have a generated
output. A fresh local reset/type generation remains the execution gate after
schema changes.

The database-side next step is to keep the generated types and app-facing
contract aligned with schema changes. Consult `13-voydex` for the current app
implementation checkpoint instead of asserting it here.
