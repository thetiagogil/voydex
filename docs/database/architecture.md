# Database Architecture

## Source Of Truth

Human-authored source lives in:

```txt
database/
  schema/
  seeds/
  supabase/
scripts/database/
```

- `database/schema` owns schemas, tables, functions, policies, grants, views,
  triggers, and table-owned indexes.
- `database/seeds` owns deterministic foundation, reference, tracking,
  gameplay-lookup, and planning-lookup data.
- `database/supabase` is the local CLI workspace. Its generated migration and
  seed entrypoints are load artifacts, not editing surfaces.
- `src/shared/types/database.types.ts` is generated from the local database and
  is the app-consumed type contract.

The local Supabase project ID is `voydex`. The nested workspace prevents the
CLI from treating the application root `.env.local` as database configuration.
Database wrappers explicitly load the separate repository-root `.env.database`
for authorized linked or remote tooling; routine local commands require no
private remote credentials.

The private file contains only `SUPABASE_DB_PASSWORD` and, when the CLI is not
already authenticated, optional `SUPABASE_ACCESS_TOKEN`. Browser configuration
uses only `NEXT_PUBLIC_SUPABASE_URL` and
`NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY` in `.env.local`.

## Where The Database Runs

[ADR 0008](../decisions/0008-user-data-on-the-device.md) runs one schema in
three places:

| Place                     | What it holds                                                                                                                                                             |
| ------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Local Supabase (dev only) | Everything: schema work, seeds, `db:verify`, pgTAP and building game data files                                                                                           |
| The device (PGlite)       | Each user's own data, plus the game data files for the games they play                                                                                                    |
| Hosted Supabase           | Login (Auth), `user_backups` with each user's private backup folder, and (until the hosted reset drops them) the `reference` and `tracking` tables nothing reads any more |

- The device loads the tables, functions and views from `database/schema`.
  `auth.uid()` returns one fixed local user there, so functions that check
  the owner work unchanged.
- `reference` and `tracking` reach the device as files (see Game Data Files
  below), served by the app itself on Cloudflare, so the files always fit
  the schema of the app that serves them.
- `database/schema/07_backups` is hosted only: the account backups table and
  the private `backups` storage bucket. The device schema leaves it out
  (`stripHostedOnly` in `scripts/database/device-schema.mjs`).
- Your tables (`public` profiles, preferences and tags, `gameplay`,
  `planning` and the `mainline_` views) carry no row security, and the API
  roles get no access to them: hosted Supabase never serves them.
- Hosted Supabase is reset (old user data and accounts dropped, game data
  re-seeded) before launch, with the owner's approval. The Codex reads
  pre-built files (#256, below), so no page reads hosted game data; dropping
  `reference` and `tracking` there leaves only auth and backups.

### The Device Database

`src/platform/local-db` holds what the device runs (#245):

- `device-schema.sql` runs first on a new device: the `anon`,
  `authenticated` and `service_role` roles, a small `auth.users` and
  `auth.uid()`, and the `device` schema that records the installed schema's
  hash and the installed game data files. The built migration follows in the
  same transaction, without its `CREATE EXTENSION pgcrypto` (nothing uses
  it, and the device would download 1 MB for it).
  `scripts/database/device-schema.mjs` writes both, with their hash, to
  `public/local-db/` before every `dev` and `build`; a returning device only
  fetches the hash.
- `game-data.ts` installs game data files (below): `installGame` puts the
  base file and a game's file on the device once, with progress, and
  `installGameLearnsets` adds the game's learnsets after, for the background.
  A game already on the device downloads nothing. Files go in with triggers
  and foreign key checks off, one transaction per file.
- The database runs in a worker (`local-db-worker.ts`) stored in IndexedDB as
  `/pglite/voydex`; one tab leads and the others send their queries to it.
- PGlite's file system bundle (`pglite.data`, 6 MB, which the host sends
  uncompressed) is read from a gzipped copy the build writes to
  `/local-db/engine/` (`scripts/database/pglite-bundle.mjs`, about 2 MB),
  named by its content so browsers keep it.
- Saves answer before they reach IndexedDB (relaxed durability), so they feel
  instant; the worker writes them right after, through one queue
  (`durable-writes.ts`). `notifyLocalSave` redraws the screen at once, then
  waits for that write (`waitForWrites`, over a broadcast channel to the tab
  that leads) before counting the save on the page's root (`data-saves`).
  Leaving the page before it lands asks first in desktop and Android
  browsers; an iPhone can't be asked, and closing the tab that leads loses
  another tab's unwritten saves.
- `/device-check` starts it with Sword / Shield and times start, install and
  saves, for the phone test.

### Game Data Files

`npm run game-data:build` builds them from the seeds without Docker
(`scripts/database/game-data/`, about 40 seconds). It loads the device schema
and the seeds (no development fixtures) into an in-memory PGlite, runs the
release checks, and writes to `public/game-data/` (ignored by Git):

| File                              | What it holds                                                                                      |
| --------------------------------- | -------------------------------------------------------------------------------------------------- |
| `base.<hash>.json.gz`             | Every row that belongs to no single game: Pokémon, moves, items, types, the game list and lookups  |
| `<slug>.<hash>.json.gz`           | One game's rows: a version group with its expansions, its Pokédex, availability, Story and battles |
| `<slug>-learnsets.<hash>.json.gz` | That game's learnsets, most of its rows, installed after the game                                  |
| `versions.json`                   | The version list: each file's name, hash, size and rows, the schema it fits and the ID changes     |

- Every row lands in exactly one file; a row that would land in two or in
  none fails the build.
- A file's name carries a hash of its content. Columns filled at insert time
  (`created_at`) are left out, so the same seeds always give the same files
  and a device downloads a file again only when its rows changed.
- `cf:deploy` builds the files first, so a deploy always ships files that
  fit its schema.
- The device checks a downloaded file against the hash in the version list,
  and refuses files built for another schema.

### Game Data Updates

A device keeps every game data file it has from one release. When the
version list names another hash for any of them (or no longer names one),
the device swaps all its game data for the new release in one transaction
(`replaceGameData` in `src/platform/local-db/game-data.ts`):

- It downloads the new release of every file it has, plus the file it was
  asked for, before it changes anything. A failed download leaves the device
  as it was.
- It deletes every game data row (each table that isn't in `userTables`,
  and the rows Voydex ships in a table that also holds yours, its own
  Challenge rules) with triggers and foreign key checks off, and copies the
  new files in. Your rows stay.
- Your rows follow the release's ID changes the device hasn't had yet (see
  [ID Changes](#id-changes)), in the same transaction.
- It refuses the release, leaving the device as it was, when one of your
  rows would point at game data that isn't there or can't follow an ID
  change, and doesn't download that release again until the app opens anew
  (the same files with a longer ID changes list count as a new release).
  Before launch the ID check doesn't run, so a seed edit that removes an ID
  something saved uses, with no ID change entry, keeps that device on its
  release until the ID is back.
- The app takes a new release on opening, before the screens (a bar on the
  start screen). If it can't, the screens keep the release the device has:
  a game already on the device opens as it is, and a new game's download
  tries the update again. A game download asks for the version list again
  first, so a tab opened before a deploy downloads the files the server has
  now. A background learnsets download never swaps releases, and a file
  never goes in after another tab moved the device to another release.

### ID Changes

`database/game-data/id-changes.json` is the ordered list of what became of
each game data ID a release removed or reused (`{ table, id, becomes,
reason }`; a two-column key joins with ":", as `"31:18"`). Every release
ships the whole list in `versions.json`, and your rows follow it
(`src/platform/local-db/id-changes.ts`):

- **Becomes another ID** (renumbered or merged): every row of yours that
  pointed at it points at the new one, and rows of yours that point at
  those follow too (a Play's new game moves its Plan link). Columns the link
  carries come from the new row (a form's species). When a row already on
  the new ID is in the way (both milestones ticked), that one stays and this
  one clears its link (a History moment keeps its title) or goes, if it only
  marks progress.
- **Becomes nothing** (removed): a link that may be empty is cleared; a row
  that only marks progress goes (the tables in
  `src/platform/local-db/id-change-drops.json`: ticked milestones,
  decisions, collectibles, Pokédex marks, move slots, content scopes,
  chosen rules, favourites, library games, rules in a set). A Play, Pokémon or History moment never goes.
- An ID change isn't your edit: change records move with their rows and
  keep their times, so account sync never takes it for one.
- The device keeps the entries its rows followed in `device.id_changes`
  (`device-id-changes.ts`), and follows the rest during a game data update,
  or on opening when the release only added entries for files it doesn't
  have. A new device starts with every entry of the release it installs.
  Most devices have no rows on a changed ID, and then only the list is
  recorded.
- A backup (file format 3) carries how many entries its rows had. Restoring
  one, or merging the account's backup, brings it up to date first; one
  from newer game data waits until the device takes that release. Older
  backups had none, since the list was empty until this existed.

When a seed edit removes, merges or renumbers an ID that saved rows can
point at (a milestone, a move, a form), add an entry at the end of the list
in the same change. The release checks hold the list to what devices can
follow (see [Release Checks](#release-checks)).

### Background Downloads

`game-data-background.ts` downloads the games a device should have before
anyone waits for them; `watchBackgroundDownloads` (in `game-downloads.ts`)
starts it from the device gate.

- What: the missing learnsets of games already on the device, then the
  games of your Plays (open ones first), Plans and archived Plays, each with
  its learnsets. That covers a Play or Plan whose game isn't on the device
  (restored or synced while offline) and learnsets that didn't finish.
- When: 3 seconds after the app opens, 3 seconds after the last of a run of
  saves, and when the connection comes back. A run only asks for the version
  list when the device is missing something by the one it knows.
- How: one file at a time, each in its own transaction, so a run cut short
  keeps what it finished and the next run picks up the rest. Before each
  file it waits for any download someone is waiting for (New Play, the
  Planner), and stops when the browser goes offline. A file that fails (or
  takes over two minutes) is left out, with its game's learnsets, until the
  connection comes back or the app opens anew; a full device stops the
  background for the visit. It brings its own version list, so a release
  that came out during the visit still waits for its update.
- Learnsets a game download starts right after the game count as waited
  for too, so the background never fetches the same file beside them.
- Never: offline, on data saver, in two tabs at once (tabs take turns with a
  Web Lock), or on a device from another release than the list's: the swap
  stays with the update on opening or a game download.

### Codex Files

`npm run codex:build` (`scripts/codex/build-codex-data.mts`, run with `tsx`,
about 35 seconds after `game-data:build`) installs every game data file into
an in-memory device database, exactly as a device would, runs the Codex's
`server/` readers (and the Team Planner's, `planner-files-build.ts`) over it
and writes one gzipped JSON file per page to `public/codex-data/` (ignored by
Git). The Codex pages, every game picker and the Team Planner download their
file in the browser; no page reads a database for game data it only shows.

| File                              | What it holds                                                          |
| --------------------------------- | ---------------------------------------------------------------------- |
| `pokemon/<species>.json.gz`       | A species' entry rows, every game's (the page builds and scopes them)  |
| `pokemon.json.gz`                 | Pokémon browse                                                         |
| `pokemon-menu/<group>.json.gz`    | The species picker of a base version group, every Pokémon in it        |
| `games.json.gz`                   | Games browse rows (the page applies its filters)                       |
| `games/<group>.json.gz`           | A base version group's page rows, every game of it                     |
| `games/<group>/<pokedex>.json.gz` | One Pokédex of a base version group or its expansions                  |
| `version-groups.json.gz`          | Every game and version group, which Codex addresses resolve against    |
| `game-catalogue.json.gz`          | The game pickers' catalogue (Start a Play, New Play, Home, Collection) |
| `planner.json.gz`                 | The games a Plan can be for, and the base group each address opens     |
| `planner/<group>.json.gz`         | The Team Planner's Pokémon of a base version group and its expansions  |

- Image addresses depend on where the app runs, so a file keeps them as
  `voydex-asset:/…` paths and reading it fills in the app's own assets site
  (`src/platform/prebuilt-data`). Row timestamps are left out, so a file
  only changes when its data does.
- `cf:deploy` builds the game data files, then these, then the app.
  `npm run verify` and GitHub's quality checks build both before the app,
  because the app's build reads them: it makes one page per Pokémon, base
  game and Pokédex ahead of time, with its title and description, so
  search engines and links see a real page.
- A page draws itself in the browser from its file. An address that names
  no page or file shows the not-found page, and a game's or an
  expansion's old address moves on to its base group with a client-side
  redirect (no 404 or 308 status from the server).
- `npm run dev` warns when the files are missing (`scripts/codex/check-codex-data.mjs`):
  without them every Codex page is not found.
- `architecture:check` keeps Codex pages and routes off any database client
  and keeps the Codex's `server/` readers out of the app: only the build
  runs them.

### Release Checks

`npm run game-data:check` runs them alone; `npm run game-data:build` runs
them before writing, so `npm run verify` (which builds the files) runs them,
and GitHub's quality checks do not. Both compare against the last release, recorded in
`database/game-data/last-release.json` by `npm run game-data:build --
--release`. Until launch nothing is recorded and both pass, so IDs and the
schema change freely; the first `--release` is run at launch.

- **ID check:** every seeded ID that a user table points at (a foreign key
  from `public`, `gameplay` or `planning`) must stay and keep its slug. An ID
  that goes or is reused needs an entry in
  `database/game-data/id-changes.json` (`{ table, id, becomes, reason }`,
  where `becomes` is the new ID or `null`). The list ships in
  `versions.json` and only grows: an entry that shipped never changes or
  goes. Each entry must name an ID of a table user data points at, become
  an ID that exists (or one a later entry changes again), and a removal
  must only touch links that may be empty or tables in
  `id-change-drops.json`; so must a merge where a row already on the new
  ID could be in the way. An ID that user rows only carry through another
  table's link (a favourite's species, through its form) can't be followed,
  and neither can a new entry for an ID that kept its meaning (see
  [ID Changes](#id-changes)).
- **Schema check:** a device schema that changed since the last release
  needs a new device update in `database/device-updates/` (a `.sql` file,
  run in name order), and a shipped device update is never removed.

## Schema Responsibilities

| Schema      | Responsibility                                                               | Client access               |
| ----------- | ---------------------------------------------------------------------------- | --------------------------- |
| `public`    | Profiles, preferences and tags (device); `user_backups` (hosted)             | Backups: owner only         |
| `reference` | Games, Pokémon identity/mechanics, availability, learnsets, and Pokedex data | Client read-only            |
| `tracking`  | Story, milestone, collectible, decision, and snapshot definitions            | Client read-only            |
| `gameplay`  | Plays, teams, progress, timeline, history, rules, and backlog                | None (device only)          |
| `planning`  | Reusable plans and plan-to-play realization                                  | None (device only)          |
| `views`     | App-facing derived read models                                               | `reference_resolved_` only  |
| `private`   | Internal triggers and validation helpers                                     | Not exposed to client roles |

Schemas describe data responsibility, not frontend module structure. Tables
whose behavior is specific to the active product family use explicit
`mainline_` names.

## Source And Generated Boundaries

`npm run db:artifacts:build` concatenates ordered schema and seed sources into
the Supabase load entrypoints. `npm run db:artifacts:check` rejects stale tracked
artifacts. Never edit generated wrappers or database types by hand.

Schema and seed ordering comes from numeric folder/file prefixes. Active
secondary indexes live beside the owning table rather than in a separate index
tree.

## Changing The Database

The schema and seed sources are the database's source of truth: a fresh
database built from them alone must match every environment.

- **Before launch** (now): fix schema and data by editing the source files
  directly, then rebuild artifacts and reset. `database/supabase/migrations`
  holds only the generated baseline; the earlier patch migrations were folded
  into it on 2026-10-19. Do not add patch migrations; the hosted database is
  reset and re-seeded from source when the owner approves, which also resets
  its migration history.
- **After launch**: every change to the hosted tables ships as a patch
  migration under `database/supabase/migrations` **and** the matching schema
  edit in the same change, so source and migrations never drift. A
  user-table change also ships as a device update that saves a copy first,
  restores it on failure, and is tested against an old backup. A game data ID
  never disappears or changes meaning silently: the change goes in the
  ordered ID changes list shipped with the game data, and the release check
  fails without it. Until launch, IDs may change freely.

Every data fix adds a pgTAP check that failed before it (see
`database/supabase/tests/080_reference_data_regressions.sql`).

## Application Integration

- The device database is started and queried only through
  `src/platform/local-db`; every user-data read and save goes there once its
  screen has moved (see
  [Frontend Architecture](../app/architecture.md#where-data-lives)).
- Browser and server Supabase clients are created only under
  `src/platform/supabase`, for login, account backups and the Codex's game
  data reads (until #256).
- UI components do not issue raw schema queries.
- Public reads use `reference`, `tracking`, and safe `views` contracts.
- User-owned reads and saves run on the device, where the one local user
  owns every row; simple direct CRUD is acceptable where one table owns the
  change.
- Multi-table or history-producing mutations use the reviewed gameplay or
  planning functions listed in [Schema Contract](./schema-contract.md).

## Local Workflow

```bash
npm run db:start
npm run db:verify
npm run db:stop
```

`db:verify` rebuilds local artifacts, resets and seeds the local database, runs
offline audits, checks SQL formatting, runs Supabase database lint and pgTAP,
and verifies generated type parity. It never targets a linked project. SQL is
formatted with pgFormatter 5.11 (`brew install pgformatter` on a Mac, or point
`PG_FORMAT_BIN` at its `pg_format`); the GitHub check pins the same version.

Local resets also create the development account and version-group-spanning
gameplay fixtures documented in
`database/seeds/90_development/README.md`. The fixture matrix has exactly two
plays for each of the 22 supported base version groups: one comprehensive play
and one deliberately blank play. Its 22 linked plans, staged completion bands,
game-valid teams, history, snapshots, and representative custom states cover the
gameplay and planning surfaces without turning UI tests into manual database
setup.

Day-to-day development points `.env.local` at the local stack. Reference images
(Pokémon, game covers, item sprites, move category icons, trainer portraits and gym badges) don't live in the database: they come from the
separate `voydex-assets` site set in `NEXT_PUBLIC_ASSETS_URL`. A new game needs
its cover added there as `games/covers/<game-slug>.webp`, and a new held item
or Poké Ball its sprite as `items/<item-slug>.webp`. An opponent's portrait is
`trainers/<sprite_slug>.webp`; `tracking.mainline_opponents.sprite_slug` is set
only where that file exists (the site caches a missing file's 404 for 30 days),
so add the file before seeding its slug, and deploy the assets before the app.
A gym badge's picture is `badges/<sprite_slug>.webp` from
`tracking.mainline_badges.sprite_slug`: one file per badge design, so a badge
that returns in a later game keeps its slug, and Galar's and Paldea's
type-named badges carry their region (`galar-grass-badge`). The app asks for a
picture only for a gym milestone; Alola's Z-Crystals keep their type icon.
A missing picture never breaks a page (it shows a letter or the type icon), so
run `npm run assets:check` after adding a form, game, portrait or badge: it
compares the seeds with a `voydex-assets` checkout (`../voydex-assets`, or the
folder in `VOYDEX_ASSETS_DIR`) and lists every picture that isn't there. The
few that exist nowhere yet are listed with why in
`scripts/assets/check-asset-images.mjs`.

The local Auth fixture must never be loaded into a linked project. When hosted
development data is explicitly authorized, apply only gameplay seed files `002`
through `006` to the dedicated fixture owner inside an owner-scoped transaction, then
verify linked migration parity and hosted row counts.

Use `db:types:linked` only for an explicitly authorized remote comparison.
