# Project Status

This document is the only canonical source for Voydex's current implementation
checkpoint. Product contracts describe accepted behavior; code and tests remain
the evidence for exact implementation details.

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

Next is phase 5, Data and features (milestone 5). The open Components issues
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
finds all 45). Grouped by what they wait on:

- `public.profiles`: a Pokémon icon, a default trainer name for new Plays and a
  first-run flag for Welcome.
- `public.user_preferences`: mode, colour theme, motion and the New Play
  defaults (Pokédex mode, Story and Collectibles tracking).
- `gameplay.mainline_play_settings`: per-Play Story and Collectibles on/off
  flags and a Pokédex mode (caught only, or caught and seen).
- `gameplay.mainline_plays`: a last-opened column for Home's shelf.
- `planning.mainline_team_plans`: a version preference.
- A reviewed account deletion.
- Opponents' moves for the 5 Story Pokémon no source covers: the fused
  Calyrex and the Freezington steeds (Crown Tundra), and Z-A's rogue Mega Absol
  (Lv. 25);
  an anon read grant plus town and ace for the Codex game page's leaders.
- Reference catalogue: one-per-save and either-or groups, route and encounter
  locations, a badge count for Start a Play, region and version group
  descriptions.
- Reference Pokémon facts: genus, Pokédex entries per game, a species
  description, heights and weights, training values, egg groups for forms,
  egg cycles and gender ratio.
- A table for each user's favourite Pokémon.
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
