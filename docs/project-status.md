# Project Status

This document is the only canonical source for Voydex's current implementation
checkpoint. Product contracts describe accepted behavior; code and tests remain
the evidence for exact implementation details.

## Checkpoint (2026-10-17)

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
   replaced). Built on `feat/component-rebuild` and waiting on the owner's
   review: see the Next Chat Handoff.
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
  the Team Planner and My Plans, Statistics and Collection, all on real data.
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

On 2026-10-17 `main` was rebuilt so each pull request is one squash commit,
and the repository now allows squash merges only. Phases 1 to 3 are merged
(#51 to #60). Phase 4 (components) is built on the branch
`feat/component-rebuild`, one commit per slice, on top of the slice 0
clean-up (#61), and waits on the owner's review before it is squashed:

- **The look** (settled with the owner): nothing has a hard lip or a press
  that moves. Actions and owned Pokémon share the sticker edge (colour, white
  band, near-white keyline, soft shadow that settles when pressed); cards
  lift on soft shadows; picks are small stickers; medallions and stamps keep
  their small lip. Colour follows 60-30-10 and every text holds 4.5:1.
- **The pieces**: `Button` (one 36/48/56 scale, round icons, `soft` close),
  `Badge` and `StatusBadge` (tones and a dot; abandoned Plays are danger),
  `TextLink`, `ChoiceChip`, `PickedMark`, `CornerBubble`,
  `RecordMilestoneButton`, one 44px menu row, 48px toolbars and form rows,
  bottom sheets below 1024px, and one set of type matchup pieces shared by
  Team analysis and the Planner's Team check.
- **Guard rails**: `design:check` fails on the retired raised look, the
  component rule is in CLAUDE.md and the design system, and the browser tests
  run every axe rule (#39).

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
- Roster placement (moving between team and reserve or slots), Plan Detail,
  Create Play from a Plan, the shared-edit warning and the Game List are not
  built.
- Pokémon Browse maps the latest available attributes to its cards, so a card
  and the entry it opens can disagree until the scoped query is corrected.
- The development Team fixture still stores a non-ball item in `ball_item_id`;
  the read model shows it as `Not recorded`.
- Codex reference-query performance has not been profiled under realistic
  use.

### Pending v3 Data

Where v3 needs data Voydex doesn't have, the screen shows `PendingData` and a
`TODO(v3-data)` comment names what it waits on (`grep -rn "TODO(v3-data)" src`
finds all 50). Grouped by what they wait on:

- `public.profiles`: a Pokémon icon, a default trainer name for new Plays and a
  first-run flag for Welcome.
- `public.user_preferences`: mode, colour theme, motion and the New Play
  defaults (Pokédex mode, Story and Collectibles tracking).
- `gameplay.mainline_play_settings`: per-Play Story and Collectibles on/off
  flags and a Pokédex mode (caught only, or caught and seen).
- `gameplay.mainline_challenge_rules`: the seeded system rule catalogue.
- `gameplay.mainline_plays`: a last-opened column for Home's shelf.
- `planning.mainline_team_plans`: a version preference.
- An atomic roster-placement function, and a reviewed account deletion.
- Opponent parties (species, level, moves) for Story matchups, and an anon read
  grant plus town and ace for the Codex game page's leaders.
- Reference catalogue: one-per-save and either-or groups, route and encounter
  locations, a badge count for Start a Play, region and version group
  descriptions.
- Reference Pokémon facts: genus, Pokédex entries per game, a species
  description, heights and weights, training values, egg groups for forms,
  egg cycles and gender ratio.
- A table for each user's favourite Pokémon.
- Legal text for Privacy and Terms, written and reviewed before launch.

## Verification Checkpoint

- `npm run verify` on `chore/tidy-up` (2026-10-16): documentation, design
  leftovers, formatting, lint, TypeScript, architecture, Knip, 549 Vitest tests
  in 112 files, and the production build.
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
