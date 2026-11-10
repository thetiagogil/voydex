# Project Status

This document is the only canonical source for Voydex's current implementation
checkpoint. Product contracts describe accepted behavior; code and tests remain
the evidence for exact implementation details.

## Current Step: Local Data (2026-11-10)

Voydex can't be funded and free tiers can't hold everyone's data, so user data
moves onto the device, game data ships as files, and Supabase keeps only login
and backups ([ADR 0008](./decisions/0008-user-data-on-the-device.md)). Five
issues, in order:

1. #244 Decision record and architecture docs.
2. #245 iPhone test and the data layer: PGlite on a real phone, a go or
   no-go, and `src/platform/local-db`. On a no-go the plan switches to plain
   browser storage before anything else starts.
3. #246 Game data files on Cloudflare: one file per game built from the
   seeds, the ID check, images moved (#251). Pre-built Codex pages are #256.
4. #247 Every Mainline screen moved to the device, in one pull request: the
   device database opens behind one start screen, every Mainline, Settings,
   You and Welcome read and save runs on the device, games download on first
   need, device updates run with a copy kept first, and the app opens without
   signing in (the sign-up pick from Start a Play is gone: Start leads
   straight into New Play). Hosted Supabase data was left behind; the app
   starts anew.
5. #248 Backup file and account sync, in two pull requests: first Save
   backup and Restore in Settings, a 30-day reminder on Home and an
   installable app (manifest) with install and in-app-browser notes; then
   change records, event merge and account sync.

Left after #247: updating a game file that changed in a new release (a device
keeps the one it has; Start fresh is the way out before launch), and the
cached server read of the game catalogue, which moves with #256. The
Milestones and collectibles review (#199, pull request #243) waits until this
work is done.

## Checkpoint (2026-10-19)

The Soft Clay redesign is finished and on `main`: the owner reviewed every view
in pull request #8, and `main` now carries it as one squash commit (#51). Every v3 screen is
built; the [Design System](./app/design-system.md) describes what exists and
[ADR 0004](./decisions/0004-soft-clay-design-system.md) records the decision.
The app runs on Vercel with its server code in Paris (`cdg1`), beside the
hosted Supabase project. Daily work and every check use the local database.

Work now follows a six-phase plan agreed with the owner on 2026-10-16. Each
phase is a GitHub milestone, and the to-do list lives in GitHub Issues (see
[Workflow](./app/workflow.md)):

1. **Tidy up**: dead code removed, unused packages dropped, Knip in `verify`,
   this checkpoint rewritten, the Later list filed as issues.
2. **Browser tests**: Playwright and axe against the local database on every
   pull request, written before anything moves.
3. **Restructure**: one folder vocabulary, readers and commands that take
   their database client, multi-table writes as database functions, Zod input
   checks, the largest files split, the Feature Contract split per area.
4. **Components**: every component family rebuilt on shared pieces, in the
   component audit's order (the raised "clicky" buttons and cards are
   replaced). Reviewed with the owner on 2026-10-19 and squashed as #62; its
   follow-ups stay open in the Components milestone.
5. **Data and features**: the `TODO(v3-data)` placeholders get real data one
   section at a time, and the backlog features are built from their issues.
6. **Ready for others**: security headers, Sentry, backups, a production
   database and release step, sign-up emails, legal text, speed, analytics and
   an installable phone app.

Nobody else uses Voydex until all six phases are done. Speed work waits for
phase 6; the New Plan cache fix is parked on the local branch
`perf/planner-cache`.

## What Is Built

- **Mainline**: Home, Plays (with its Archived view), New Play, the Play hub
  (Overview, Team with Roster, Plan comparison and Analysis with Story
  matchups, Progress with Story, Pokédex and Collectibles, History, Settings),
  the Team Planner and My Plans, Statistics, Collection and the Library
  (your rules and tags; rule sets come next, #84), all on real data.
  The [Feature Contract](./product/feature-contract.md) says what each does.
- **Codex**: Pokémon browse and the version-group-scoped entry, Games browse,
  the version group page and its Pokédexes. Routes are in
  [Navigation And Routes](./product/navigation-and-routes.md).
- **Global features**: authentication with password reset and email change,
  Start a Play, Welcome, You, Settings, the site pages, Privacy and Terms, and
  the health surfaces. Voydex keeps no export or import of your data for now
  (a Plan's share link is the one import).
- **Foundation**: thin routes, product code under `src/modules` and
  `src/features`, Supabase adapters under `src/platform`. The internal
  `reference` module owns Pokémon and game contracts and the exact-game
  capability profile both Codex and Mainline consume. The database source lives
  under `database` with generated load artifacts and types. Local resets seed a
  login-capable development account with 44 gameplay scenarios (a populated and
  a blank Play for each of 22 base version groups).
- **Tests**: Vitest beside the code, pgTAP for the database, and Playwright
  with axe in `e2e/` for the main flows (see
  [Verification](./app/verification.md#browser-tests)).

## Next Chat Handoff

`main` takes one squash commit per pull request, squash merges only. Phases 1
to 4 are done (#51 to #62). Phase 4 was reviewed live with the owner on
2026-10-17 to 2026-10-19; what it settled lives in the
[Design System](./app/design-system.md). In short:

- **The look**: Pokémon Center and Poké Mart. White walls for the ground and
  cards, the pale blue of the Center's windows for every page's band, the
  Center's red roof for the one action colour, the Mart's blue roof for
  progress and calm meanings. Nothing has a hard lip or a press that moves;
  actions and owned Pokémon share the sticker edge (a white band, `--band`).
- **One piece per job**: titles take a title step (`title-display` to
  `title-card`), focus takes `focus-ring`, moments `moment-ring`, reference
  cards `plain-card`, icons on a tile `IconDisc`, and every list folds its
  search and filters under its head (`FilterToolbar`, `fold.tsx`). When one
  member of a family changes, its siblings change with it.
- **Guard rails**: `npm run design:check` fails on the retired raised look and
  on hand-sized text, hand-made focus rings and hand-drawn white bands; the
  browser tests run every axe rule.

Phase 5, Data and features (milestone 5), is under way; the local-data
issues above come first. The open Components issues
(#35 to #37, #39, #63, #64, #66) and the later ones (#67 band motion, #68
favicon, #69 keyboard pass) are follow-ups to pick up alongside it.

On a new computer, run `git status`, `git log -1 --oneline` and `npm install`
before editing, and start the local database with `npm run db:start`. Preserve
unrelated work, never reset the local database without the owner's go, and
confirm the linked Supabase migration list before any remote database write.

## Known Gaps

- The Team Planner saves through several writes, not one database function: a
  failed new Plan is deleted, and a failed edit restores the previous Plan.
  Creating a Play and recording a History moment have the same shape. Phase 3
  moves each into one database function.
- Secure account deletion has no reviewed server-owned operation proving Auth
  identity removal, owned-data cascades, session invalidation and rollback.
- Plan Detail, Create Play from a Plan, the shared-edit warning and the Game
  List are not built.
- Pokémon Browse maps the latest available attributes to its cards, so a card
  and the entry it opens can disagree until the scoped query is corrected.
- The development Team fixture still stores a non-ball item in `ball_item_id`;
  the read model shows it as `Not recorded`.
- Codex reference-query performance has not been profiled under realistic
  use.

### Pending v3 Data

Where v3 needs data Voydex doesn't have, the screen shows `PendingData` and a
`TODO(v3-data)` comment names what it waits on (`grep -rn "TODO(v3-data)" src`
finds all 9). Grouped by what they wait on:

- `public.user_preferences`: mode and colour theme (#38). Motion and the New
  Play defaults are saved (#33), and Search and filters (#65).
- A reviewed account deletion.
- Add Pokémon: suggestions from the places around you (the places are
  seeded; which milestone opens each is next).
- Opponent teams for the games that have none yet, so the Story reads a
  verdict there.
- Legal text for Privacy and Terms, written and reviewed before launch.

## Verification Checkpoint

- `npm run verify` on `feat/component-rebuild` (2026-10-19): documentation,
  design leftovers, formatting, lint, TypeScript, architecture, Knip, 571
  Vitest tests, and the production build; all 31 browser tests (Playwright
  and axe) pass against the local database.
- The database source has 131 schema files and 897 seed files, and six pgTAP
  files plan 136 assertions (structural security, reference access, cross-user
  RLS, mutation functions, gameplay fixture coverage and user deletion).
  `npm run db:verify` was not rerun for this checkpoint.
- The last recorded check of the linked Supabase migration list (2026-07-28)
  matched local history through
  `20260728101342_fix_milestone_column_ambiguity.sql`. Local history now runs
  through `20261014194800_let_user_deletion_reach_challenge_rules.sql`, so
  check the linked list again before any remote write.

See [Verification](./app/verification.md) for commands and environment limits.
