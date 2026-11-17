# Database Security And Indexing

## Access Model

Your data lives on the device ([ADR 0008](../decisions/0008-user-data-on-the-device.md)),
in PGlite, where `auth.uid()` returns one fixed local user who owns every
row. Hosted Supabase serves only what the device can't hold for itself:

- `reference` and `tracking`: client read-only, with RLS. Signed-out
  visitors read `reference` and, in `tracking`, only `mainline_badges`
  (Start a Play counts the badges ahead, of kind `badge`; Alola's Z-Crystal
  rows don't count), `mainline_collectibles` (the cached game list tells New
  Play which games have collectibles), `mainline_opponents` and
  `mainline_opponent_team_members` (the Codex game page lists each game's
  leaders with their place and the ace of their first team); every other
  `tracking` table is signed-in only. They leave hosted Supabase once the
  Codex is pre-built (#256).
- `public.user_backups` and the private `backups` storage bucket: each
  account reads, adds and deletes only its own rows and the files in its
  own folder (`<user id>/…`); nothing edits a backup. Update policies, where
  a hosted table has them, require both `USING` and `WITH CHECK`.
- Nobody can fill the hosted project: a backup file is at most 5 MB (the
  bucket's limit; a busy account's backup is a few hundred KB), and an
  account holds at most five backups, rows (`private.cap_user_backups`) and
  files (`public.backup_folder_has_room()` in the bucket's insert policy).
  The app keeps three; the other two leave room for the one being saved and
  another device saving at the same moment. Both counts take turns per
  account, so uploads at once can't slip past them. Before and after each
  upload the app deletes the backups past the newest three and any file no
  backup points to once it is an hour old, so a failed cleanup can't leave
  an account full.
- `public.keep_awake()` is the one thing signed-out visitors can run: it
  returns the database's time and reads nothing, for the scheduled ping that
  keeps the free project from pausing (see
  [Workflow](../app/workflow.md#keeping-hosted-supabase-awake)).
- Your tables (`public` profiles, preferences and tags, `gameplay`,
  `planning`, and the `mainline_` views) have no RLS and no policies: on the
  device they would protect nothing. Instead the API roles get nothing on
  them (no grants, no `gameplay` or `planning` schema usage, no function
  execute), so hosted Supabase never serves them. Moving user data back to
  Supabase one day means writing the rules again; Git history keeps the old
  ones.
- Never use user-editable metadata or `auth.role()` for authorization.

Deleting an account deletes its backup rows (a foreign key to `auth.users`);
the account deletion operation (#227) also removes its backup files.

## Views And Functions

- Every view uses `security_invoker = true` and inherits underlying grants
  and RLS.
- Workflow functions use `SECURITY INVOKER`; on the device they run as the
  database owner.
- `SECURITY DEFINER` is reserved for reviewed private helpers, with an empty
  search path, explicit schema qualification, and execute revoked from public
  client roles unless specifically required.
- Neither API role can execute a gameplay or planning function.

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
access, that the API roles reach none of your device-only tables, owner-only
account backups, and representative gameplay/planning mutations including
rollback.

This Docker-backed gate runs only on the Mac: a database pull request runs
`npm run db:verify` before merging.
