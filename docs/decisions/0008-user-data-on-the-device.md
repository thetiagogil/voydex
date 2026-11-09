# ADR 0008: User Data Lives On The Device

- Status: Accepted
- Date: 2026-11-09
- Supersedes: [ADR 0005](./0005-postgres-is-the-backend.md)
- Amends: [ADR 0006](./0006-installable-web-app-first.md)

## Context

Voydex can't be funded, and free tiers can't hold everyone's data. Under
[ADR 0005](./0005-postgres-is-the-backend.md) hosted Supabase holds both the
game data and every user's data, and screens read and save through server
readers and Server Actions. The game data is the same for everyone and is
most of the size; the images site was already blocked once for usage.

The schema, its database functions and views, and the pgTAP tests are good
and should stay. What has to change is where they run.

## Decision

### User data on the device

- Every user's data lives in their own browser, in PGlite (Postgres compiled
  to WebAssembly) stored in IndexedDB. It runs the same schema, functions and
  views from `database/schema`. `auth.uid()` returns one fixed local user.
- Every Plays, Team, Progress, History, Plans, Library, Collection,
  Statistics, Home and Settings read and save goes through one data layer,
  `src/platform/local-db`. Queries are plain SQL. A save that touches more
  than one table or creates a History moment is still one database function
  call.
- Screens never call Supabase for user data.

### Game data as files

- The SQL seeds in `database/seeds` stay the source of truth.
- A release loads the seeds into the local database, runs `db:verify`, and
  builds one versioned file per game (version group), one shared base file and
  one small version list. They are published to Cloudflare Pages, with the
  images.
- A game downloads when its first Play is created. Games in the Library
  download in the background.
- Codex becomes pre-built pages made from the same data, with no database
  read at runtime.

### Supabase is small

- Supabase keeps only login (Supabase Auth) and backups for a few invited
  users.
- Everyone can save and restore a versioned backup file. An account is the
  same backup, uploaded by itself and merged by Play across devices.
- At the hosted reset before launch, the hosted database keeps only auth and
  backups.

### Rules from launch on

- A game data ID never disappears silently. ID changes ship as an ordered list
  with the game data, applied to saved Plays before a new game file is used,
  and a release check fails without one. Until launch IDs may change freely.
- Every user-table change ships as a device update: it saves a copy first,
  restores it if the update fails, and is tested against an old backup.

### Row security only where it protects something

Row security rules (RLS) and their pgTAP tests guard only tables that hosted
Supabase serves. On the device they would protect nothing, because the one
user owns every row, so they would be dead code.

- Until the screens move, every table is still on hosted Supabase and its
  rules stay.
- The rules on user, `reference` and `tracking` tables are removed in the
  same change as the hosted reset that drops those tables (issue #248), never
  before, so no table is ever served without them.
- `user_backups` and its storage folder keep owner rules and tests.
- Moving user data back to Supabase one day means writing the rules again;
  Git history keeps the old ones.

### First proof

The iPhone test (issue #245) measures PGlite on a real phone installed to the
Home Screen. On a no-go, the plan switches to plain browser storage before any
other local-data work starts, and this record is revised.

## Consequences

Accepted limits:

- Data lives per browser. Moving it to another browser or device takes a
  backup file or an account.
- Safari wipes data for sites that aren't installed after 7 days unused, so
  the app pushes installing it and asks for persistent storage.
- No native app. A store app, if one is ever made, wraps the web app; this
  replaces the Expo plan in [ADR 0006](./0006-installable-web-app-first.md).

What changes in the code:

- Server readers and Server Actions for user data are removed screen by
  screen as each moves to `src/platform/local-db`; `architecture:check` then
  forbids any user-data call to Supabase.
- The rule that readers and commands take a Supabase client as a parameter
  becomes: they take the local database as a parameter.
- Vercel serves only the app. Server-only jobs (export, backups) are not
  needed on a server, so the Edge Function plan in ADR 0005 is dropped.
- Local Supabase stays the development database: schema work, `db:verify`,
  pgTAP and building the game data files all run there.
- Account deletion must also delete the account's backups.
