# Database Security And Indexing

## Access Model

- Enable RLS on every app-facing table, including read-only reference and
  tracking tables.
- Grant `anon` and `authenticated` only the operations required to reach an
  exposed schema. RLS then controls rows within that privilege boundary.
- `reference` and `tracking` are client read-only. Signed-out visitors read
  `reference` and, in `tracking`, only `mainline_badges` (Start a Play counts
  the badges ahead, of kind `badge`; Alola's Z-Crystal rows don't count),
  `mainline_collectibles` (the cached game list tells New Play which games
  have collectibles), `mainline_opponents` and
  `mainline_opponent_team_members` (the Codex game page lists each game's
  leaders with their place and the ace of their first team); every other
  `tracking` table is signed-in only.
- `public`, `gameplay`, and `planning` owner policies combine role targeting
  with `auth.uid()` ownership.
- Update policies require both `USING` and `WITH CHECK` so rows cannot be
  reparented to another user.
- Never use user-editable metadata or `auth.role()` for authorization.

## On The Device And On Supabase

Under [ADR 0008](../decisions/0008-user-data-on-the-device.md) user data moves
to PGlite on the device, where `auth.uid()` returns one fixed local user. There
RLS protects nothing, because the one user owns every row; the device's own
browser storage is the boundary.

The rules above stay in the schema anyway, with their pgTAP tests:

- they keep moving user data back to Supabase a small step;
- they guard what hosted Supabase still holds: login and `user_backups`, whose
  rows and private storage folder are readable and writable only by their
  owner;
- every new user table gets owner policies and the same two-user isolation
  tests, even though it lives on the device.

Deleting an account deletes its backups too.

## Views And Functions

- Every app-facing view uses `security_invoker = true` and inherits underlying
  grants and RLS.
- Client-callable workflow functions use `SECURITY INVOKER`.
- `SECURITY DEFINER` is reserved for reviewed private helpers, with an empty
  search path, explicit schema qualification, and execute revoked from public
  client roles unless specifically required.
- Anonymous users cannot execute gameplay or planning mutation functions.

## Index Ownership

Indexes live beside their owning table schema. Add an index for demonstrated
foreign-key joins, ownership filters, route queries, ordering, or uniqueness;
do not maintain a speculative global index catalogue in documentation.

Partial indexes are appropriate for nullable lookups and active subsets.
Composite indexes should follow the leading filters used by real queries.
Validate performance changes with query plans before adding redundant indexes.

## Verification

`npm run db:verify` runs the full local security and integrity gate:

1. Rebuild generated local artifacts.
2. Reset and seed local Supabase.
3. Run offline schema and seed audits.
4. Check SQL formatting.
5. Run Supabase database lint.
6. Run pgTAP.
7. Compare generated types with the committed app types.

The pgTAP suite covers structural invariants, anonymous/authenticated reference
access, two-user owner isolation, reparenting protection, security-invoker view
isolation, and representative gameplay/planning mutations including rollback.

The `Database Quality` GitHub workflow runs this Docker-backed gate by hand from
the Actions tab while the app is in fast development; until launch, database
changes rely on the local `npm run db:verify`. The normal Quality workflow keeps the faster offline audit on every
change.
