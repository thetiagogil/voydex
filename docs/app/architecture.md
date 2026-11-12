# Frontend Architecture

Voydex is a Next.js App Router application organized as a modular monolith with
hierarchical, feature-owned vertical slices. The architecture should make a
feature easy to find, keep routes and UI free from database concerns, and allow
the project to grow without turning every module into one large components
folder.

The accepted direction is recorded in
[ADR 0001](../decisions/0001-modular-monolith.md). This document is the working
architecture guide; the ADR explains why the direction was chosen.

## Current Topology

The application uses this root layout:

```txt
src/
  app/
  config/
  features/
    app-shell/
    auth/
    settings/
    site/
    system/
  modules/
    codex/
    mainline/
    reference/
  platform/
    env/
    local-db/
    offline/
    prebuilt-data/
    supabase/
  shared/
```

The active source follows these ownership rules:

- `src/lib` is retired. Environment and Supabase adapters live under
  `src/platform`, auth workflows live under `src/features/auth`, app-shell and
  active-module behavior live under `src/features/app-shell`, and the generic
  `cn` helper lives under `src/shared/utils`.
- route adapters compose the app shell around auth, site, and system content;
  those global features do not import each other.
- the whole app is plain files made at build time (Next.js static export,
  [ADR 0009](../decisions/0009-app-as-plain-files.md)): no server code runs
  for a page. Login and account changes call Supabase from the browser
  (`src/features/auth/client`, `src/features/settings/client`), the signed-in
  session is read through `useAuthSession` (`src/platform/local-db`), and the
  module you were last in is kept in this browser (`src/config/active-module.ts`).
- reusable Pokemon/game contracts, domain rules, artwork/type primitives,
  reference row loading, and catalogue tokens live under
  `src/modules/reference`; Codex and Mainline consume that directed dependency.
- `src/modules/codex/shared` contains only Codex-owned shared pieces: its head
  (the path back to a list), generation pills, Pokémon card link and grid, result
  summary, pending value, game-name helpers, and the version-group route read
  every Codex address resolves through. The Pokémon type filter is the
  reference module's `PokemonTypeFilter`, shared with Mainline.
- Mainline's features are `home` (Mainline Home), `plays`, `plans` (the Team
  Planner and My Plans), `stats` and `collection`. `src/modules/mainline/shared`
  holds what several of them read: the team type analysis (Team Analysis and
  the Planner), the trainer's Pokémon reader and model (Collection and
  Statistics), the build-option readers (the roster editor and the Planner's slot
  sheet) and the signed-in trainer guard.
- Mainline Plays uses `browse`, `hub`, `new` (New Play) and `shared` view
  boundaries. The Hub separates Hub-wide shell responsibilities from
  route-backed views, while complex views such as Overview and Team group
  their visible areas under `sections` instead of hiding them in a broad
  `detail/components` tree. `plays/shared` owns what several Mainline
  features draw or read: the moment, stamp and milestone pieces, the timeline
  and moment-context readers, the partner action, the Play library reader and
  mappers, the start-a-Play pieces (partner cast, create-Play command,
  `use-start-play`) that Home and New Play share, and Add Pokémon (the sheet and its steps, the Play's rule
  checks, the choices and build-option reads, and the add, replace and
  remove actions) that the Roster and the Codex share.
- Play Hub reads separate authenticated orchestration, raw context/Overview I/O,
  pure enrichment, and final page-model assembly.
- existing feature reads commonly use a query/loader/mapper split. That split
  remains valid where the responsibilities are genuinely distinct, but it is
  no longer a mandatory three-file template.
- representative reads include a cohesive simple public read, a complex public
  Games read with independent I/O and mapping, and an authenticated Play Hub
  read with claim verification, owner-scoped readers, and pure page assembly.
- saves run on the device through `local-db` commands in `client/` folders;
  there are no Server Actions.
- generated shared UI primitives remain documented size exceptions; the
  architecture checker rejects retired paths and prohibited dependencies.

`src/shared` may contain the app-wide icon catalog, icon wrapper, Pokeball icon,
and brand components as documented visual primitives. Do not use that narrow
exception as precedent for product state, database access, or domain code.

## Target Topology

```txt
src/
  app/                         # thin Next.js route adapters
  config/                      # static application contracts
  platform/                    # framework and external-service infrastructure
    env/
    local-db/                  # the database on the device (ADR 0008)
    offline/                   # the service worker that keeps the app offline
    supabase/                  # login and backups only
  features/                    # global application features
    app-shell/
    auth/
    settings/
    site/
    system/
  modules/                     # product modules
    codex/
      features/
    mainline/
      features/
    reference/                 # internal Pokemon/game catalogue capability
      features/
  shared/                      # generic and app-wide visual primitives
    components/
      ui/
    hooks/
    providers/
    styles/
    utils/
```

Root folders are responsibilities, not convenience buckets. Do not add a new
root folder when an existing owner is appropriate.

### `src/app`

Next.js route files, layouts, metadata and loading/error boundaries. Every
route is made ahead of time as a plain file (`output: "export"`), so there are
no Route Handlers, no proxy and no server-only reads at request time; a page
that depends on its address reads it in the browser (`useSearchParams`, under
the route's `loading.tsx`). Page routes should normally resolve route input and render
one feature or module entry point. They must not become the application service
or data-access layer.

### `src/config`

Static application contracts such as routes, module metadata, navigation, and
product-family metadata. Config may use generic shared values, but it should not
depend on runtime infrastructure or feature implementations.

### `src/platform`

Infrastructure adapters owned by the application: environment parsing,
the database on the device (`local-db`), the offline copy of the app
(`offline`), the Codex's pre-built files (`prebuilt-data`), and the Supabase
clients for login and backups. Platform code must not
depend on product modules or application features.

### `src/features`

Capabilities that belong to the application as a whole rather than one product
module. App shell, auth, settings, public site, and system states belong here.
Global features may use config, platform, and shared code; they should not reach
into module internals.

### `src/modules`

Product capabilities with their own language and behavior. `mainline` owns
playthrough workflows. `codex` owns public catalogue browsing experiences.
`reference` is an internal supporting module for Pokemon/game catalogue
semantics, exact-game mechanic capabilities, and reusable reference-data
presentation; it is not a navbar module.

`mainline` and `codex` must not import each other. Both may depend on the public
surface of `reference`. The `reference` module must not depend on either
consumer.

Game-scoped product reads resolve one reference-owned mechanics profile from
the exact game, version group, and generation context. That profile
distinguishes supported, unsupported, and unknown mechanics: Abilities,
Breeding (eggs, the Day Care, egg groups), Held Items, Natures and Pokémon
Gender, each from the generation it arrived in, with exact-title exceptions
by version group: the Let's Go games (17), Legends: Arceus (22) and Legends:
Z-A with Mega Dimension (26, 27) have no abilities or breeding, and Let's Go
and Legends: Arceus have no held items (Let's Go keeps Mega Stones in the bag;
Z-A has held items, its Mega Stones included). Product modules
use it to govern queries, presentation, authoring, validation, comparison, and
derived status; components never infer mechanic support from absent data or
generation checks.

### `src/shared`

Generic, domain-neutral primitives that are safe for any layer to use. This
includes shadcn/Base UI wrappers, generic hooks, providers, low-level styles,
the app-wide icon and brand primitives documented in ADR 0003, and utilities.
Pokemon/game rules, route behavior, app-shell composition, and Supabase clients
do not belong here.

## Dependency Direction

| Source                        | Allowed application dependencies                      |
| ----------------------------- | ----------------------------------------------------- |
| `app`                         | `config`, `features`, `modules`, `platform`, `shared` |
| global `features`             | `config`, `platform`, `shared`                        |
| `modules/mainline` or `codex` | `reference`, `config`, `platform`, `shared`           |
| `modules/reference`           | `config`, `platform`, `shared`                        |
| `platform`                    | `shared`                                              |
| `config`                      | `shared`                                              |
| `shared`                      | `shared` and external packages                        |

Import a feature through its intended public entry point when one exists. Do
not bypass ownership by reaching into another feature's component, server, or
data folders.

`npm run architecture:check` enforces the migrated foundation: `src/lib` is
retired; shared, platform, and config dependency direction is protected;
Mainline and Codex features cannot import a sibling feature's internals
(`plays/shared` is open to all); only the Play Hub and Mainline's `public-*`
entries may import Play Hub internals; global
features cannot depend laterally or reach into product modules; product modules
cannot import global feature internals; the only lateral module dependency is
the directed dependency on `reference`; consumers cannot reach into
`reference/shared` internals; retired root-shared Pokemon/game paths are
rejected; the retired Mainline `plays/detail` boundary and old species-only
Pokemon compatibility route path are rejected; Client Components cannot import
server queries/readers; component folders cannot create database clients or
perform raw schema reads; readers, loaders, commands and repositories never
create a database client; `data/`, `domain/` and `utils/` stay free of
runtime framework imports; and folders under `src/modules` and `src/features`
use the closed folder vocabulary. Add stricter rules only after the corresponding
migration phase is complete.

## Module And Feature Organization

`features` is the normal root inside a product module because modules contain
multiple views and capabilities. A module can also have a `shared` folder for
module-owned UI or utilities reused by multiple features; only `reference`
also has `domain` folders, for its game mechanics and type rules. A small
module containing only `features` is healthy.

The internal reference module currently uses this responsibility-driven shape:

```txt
src/modules/reference/
  features/
    games/
      components/
      data/
      domain/
      types.ts
      utils/
    pokemon/
      components/
      data/
      domain/
      styles/
      types.ts
      utils/
  shared/
    data/
    server/
    database-types.ts
  public-art.tsx
  reference-data.ts
  reference-rows.ts
  styles.css
  types.ts
```

The three TypeScript root files are the public contracts for cross-module
catalogue types, data helpers, and paged/chunked reference reads. The game
picker (`GameShelfPicker`, `StartGameShelf`) and its public reads
(`games/server/game-shelf-reader.ts`, `game-catalogue-query.ts`) also live
in reference, so Start a Play, New Play and the Planner share them. `readGameCatalogue` (every game,
its first partners and expansions) runs once in the build, into the
pre-built game catalogue file; `games/client/game-catalogue.ts` reads it in
the browser (`useGameCatalogue`, `fetchGameCatalogue`), so New Play, Start
a Play, Home and Collection open with every game.
`public-art.tsx` is the entry the public pages' routes inject into global
features (which can't import a module), typed by `src/config/public-art.ts`.
Mainline has the one matching entry, `src/modules/mainline/public-play-art.tsx`,
which fills that contract's `PublicPlayArt` with the Play's own pieces for the
example Play on Home and Intro; routes, not global features, import either
entry. Two more Mainline entries follow the same pattern: `public-you.ts`
gives the You page (a global feature) its figures, and `public-codex.tsx`
fills the Codex's slots about your Plays. `src/modules/codex/codex-slots.ts` types
those slots (an entry's Add to a Play and In your Plays, a game page's Start a
Play, Plan a team and Your Plays, the Played counts on Games; the first and
last open Mainline's Add Pokémon and Team Planner over the Codex page); the Codex routes fill them
from Mainline, since Codex can't import Mainline, and an empty slot reads as
signed out. The Pokémon type colour tokens are the only feature-owned CSS; they stay beside Pokemon and
are composed through the module's public `styles.css` manifest. Game colours
are one TypeScript table in `games/utils/game-color-styles.ts`. Concrete game and Pokemon components or domain utilities
use their explicit feature paths. Codex-owned page composition remains in
`modules/codex`; `reference` must not import Codex or Mainline.

Feature folders may be nested to match the product hierarchy. Mainline Plays
is expected to evolve toward a shape like:

```txt
src/modules/mainline/features/plays/
  browse/
  new/                         # New Play
  hub/
    client/                    # Record in place
    components/
    data/
    server/
    shell/
      mainline-play-shell.tsx
      mainline-play-navigation.tsx
      top-section/
    utils/
    views/
      overview/
        client/
        data/
        server/
        sections/
          badge-case/
          first-steps/
          next-objective/
          partner/
          progress-summary/
          recent-history/
          team/
      team/
        data/
        server/
        team-roster/
          server/
          sections/
            add-pokemon/
            editor/
            roster/
            selected-pokemon/
          utils/
        team-plan/
          components/
          server/
          sections/
            compare/
            head/
            off-plan/
            summary/
            targets/
        team-analysis/
          components/
          data/
          sections/
          server/
      progress/
        progress-story/
          data/
          sections/
            battles/
            detail/
            route/
            ...
          server/
        ...
      history/
      settings/
    types.ts
  shared/
    client/
    components/
    data/
    server/
    utils/
```

This nesting is intentional. `shell` owns Hub-wide UI composition; root `data`
and `server` own Hub-wide read models and orchestration; `views` groups product
surfaces; and `sections` groups visible areas inside one surface. A navigation
branch with multiple route-backed surfaces becomes a view family: `team` groups
`team-roster`, `team-plan`, and `team-analysis`, while its root `data`,
`server`, and `shared` folders contain only code used by multiple Team views.
Each route keeps its own read contract, so Overview loads a small Active-Team
preview, Team Plan does not load Team Roster timeline data, and Team Analysis
owns its detailed analysis enrichment. Leaf views never import sibling-view
internals; genuinely shared helpers or domain behavior move to the Hub or
view-family owner. The architecture check enforces this direction. In
Mainline and Codex a feature never imports a sibling feature's internals:
`mainline/plays` is a family whose children (`browse`, `hub`, `new`) are
separate features, and only its `shared` child is open to every feature;
module-wide code goes in the module's `shared`. Only the Hub itself and
Mainline's `public-*` entries may import Play Hub internals. Prefer this
product-first hierarchy over a single broad `components` folder or mixing view
names with Hub-wide `data` and `server` folders.

Within a leaf view, use relative imports for nearby sections and helpers. Use
the `@/` alias when an import crosses an ownership boundary. Top-level visible
Card owners use the `*Section` suffix; `*Card` identifies a reusable visual
card, `*Detail` or `*Inspector` identifies contextual content, and `*Sheet`
identifies a responsive overlay.

Within a slice, add only the responsibility folders it needs:

```txt
feature-or-section/
  components/
  server/
  data/
  client/
  utils/
  types.ts
  <feature-entry>.tsx
```

Folders are not mandatory. A cohesive two-file feature should remain a
two-file feature. Use `server` for actions, readers, commands, and repositories;
use `utils` for small pure validation, formatting, or presentation helpers; and
use `data` for substantial pure models, mappers, or selectors. Add
`components` only when UI is reused across visible sections. The folder names
are closed: see Agreed Folder Names below.

### Agreed Folder Names

[ADR 0007](../decisions/0007-development-workflow.md) closes the folder
vocabulary inside feature slices, and `architecture:check` enforces it under
`src/modules` and `src/features`. Any other kebab-case folder is a feature,
view or section area; `client/`, `server/`, `data/` and `utils/` hold files
only; retired names such as `hooks/`, `types/`, `__tests__/`, `lib/`,
`helpers/`, `application/` and `infrastructure/` fail the check. Test helpers
sit beside the tests that use them.

| I am writing...                                 | It goes in                   |
| ----------------------------------------------- | ---------------------------- |
| A route, layout, loading or error file          | `src/app/...`, thin          |
| A visible area of one screen                    | `<feature>/sections/<area>/` |
| UI reused by several sections of one feature    | `<feature>/components/`      |
| UI reused across modules, with no Pokémon rules | `src/shared/components/`     |
| Pokémon or game UI used by Mainline and Codex   | `src/modules/reference/...`  |
| A hook, state or optimistic logic for a client  | `<feature>/client/`          |
| A user-data read, save or action (the device)   | `<feature>/client/`          |
| A server read (game data, the session)          | `<feature>/server/`          |
| Pure mapping, models or selectors               | `<feature>/data/`            |
| Small pure helpers, validation or formatting    | `<feature>/utils/`           |
| Types for one feature                           | `<feature>/types.ts`         |
| A unit test                                     | Next to the file it tests    |
| An end-to-end test                              | `e2e/`                       |

`domain/` stays only in `reference`; `shell/` and `views/` stay only in the
Play Hub; `styles/` holds only the Pokémon type colour tokens.

## Where Data Lives

[ADR 0008](../decisions/0008-user-data-on-the-device.md) keeps user data on
the device:

- **User data** (Plays, Team, Progress, History, Plans, Library, Collection,
  Statistics, Home, Settings and the profile) lives in PGlite in the browser,
  in IndexedDB. Every read and save goes through `src/platform/local-db`.
  `architecture:check` forbids `src/modules/mainline` and
  `src/features/settings` from importing `src/platform/supabase` at runtime;
  Settings' account actions (email, password) are the one exception.
- **Game data** (`reference` and `tracking`) arrives as one versioned file per
  game, built from the seeds, plus a shared base file. The base installs when
  the device database first opens; a game downloads the first time something
  needs it (a Play starting, the Team Planner opening on it), with its
  learnsets after, in the background. Once the device gate opens, the
  games the device should have download quietly in the background
  (`game-data-background.ts`): the games of your Plays and Plans, and any
  missing learnsets.
- **The Codex and the game pickers** read pre-built files (#256): the build
  runs the Codex's `server/` readers once over every game data file and
  writes a gzipped JSON file per page to `/codex-data/` (see
  [Codex Files](../database/architecture.md#codex-files)). Pages download
  their file in the browser with `useCodexFile` (Codex) or
  `useGameCatalogue` (the game catalogue New Play, Start a Play, Home and
  Collection show), through `src/platform/prebuilt-data`; an address that
  names no file is a 404, and an old game or expansion address moves on to
  its base group.
- **Supabase** keeps login and account backups only. The app opens without
  signing in; signed in, the device syncs with the account's backups
  (`account-sync.ts`, started by `AccountSyncRunner` in the app layout).
- **Backups and sync**: a backup is every row of yours (`user-data.ts`
  names the tables) with the device's change records (`device.changes`,
  filled by triggers from `device-changes.sql`), as a gzipped JSON file
  (`backup-file.ts`). Account sync reads the newest backup, merges it with
  the device's data (`sync-merge.ts`, pure: latest change per column, a
  clash only when both sides changed the same thing since the last sync),
  puts the result in place (`sync-snapshot.ts`) and uploads it
  (`device-sync.ts`, `account-backups.ts`). Clashes wait in the clash dialog;
  Plays from another account wait in `AccountOtherPlaysDialog`.
- **User-table changes** ship as device updates: numbered SQL files in
  `database/device-updates/`, run in name order, recorded in
  `device.updates`, after a copy of the whole database is kept.

### The Device Database

```txt
src/platform/local-db/
  open-local-db.ts       # opens it once per visit: schema, updates, base file
  prepare-device.ts      # what opening does, and the problems it can report
  device-updates.ts      # the device update runner
  local-query-client.ts  # the query interface readers take, as SQL on the device
  local-db-context.tsx   # LocalDbProvider, useLocalPageRead, useLocalRead, save
  page-reads.ts          # the reads pages wait on, shared by their renders
  game-downloads.ts      # game files on first need (useGameDownload), and when the background runs
  game-data-background.ts # which games the device should have, downloaded one at a time
  user-data.ts           # your tables, read whole and replaced in one go
  backup-file.ts         # the backup file: format, upgrades, gzip
  backups.ts             # save and restore a file, the "Last backup" note
  device-changes.sql     # change records, after the schema on a new device
  sync-merge.ts          # event merge of two snapshots, and its clashes
  sync-snapshot.ts       # the device's side: snapshot, shape, apply
  device-sync.ts         # one sync with an account's backups
  account-backups.ts     # the account's backups on Supabase
  account-sync.ts        # syncing while signed in, with useAccountSync
```

The app's layout wraps every app page in the device gate
(`src/features/system/components/device-gate.tsx`): one short start screen
while the database opens, then the page; or a screen for offline on a new
device, a full device, a failed update, or a fresh start. Codex pieces about
your Plays use the quiet boundary, which shows nothing until it's open.

The readers and commands were written against Supabase's query interface
(`.schema().from().select().eq()…`, `.rpc()`). `createLocalQueryClient` gives
them that interface over PGlite, turning each chain into one plain SQL
statement (flat and embedded selects, the filters Voydex uses, writes with
`.select()`, and function calls), so a reader the Codex shares with Mainline is
written once. Rows come back as the API sent them (dates as ISO text, numeric
as numbers).

### The Offline Copy

After the first visit the app opens with no connection (#274). The build
writes a service worker, `out/sw.js`
(`scripts/offline/build-service-worker.mts`, run as `postbuild`), from
`src/platform/offline/service-worker.ts` and the rules in
`offline-rules.ts`; `ServiceWorkerRegistration` in the root layout starts it
in the built app only, never under `next dev`.

- **A release** is one build: every page except the Codex's thousands of
  entries, the data files Next.js reads to move between pages, the build's
  scripts (PGlite included) and the app's own small files, about 25 MB. The
  worker downloads all of it into one cache and takes over only once the
  copy is complete, so offline pages and scripts always come from one build.
- **Online, pages come from the network first**, so a deploy shows at once;
  the kept copy answers only when the network fails. Build files
  (`/_next/static/`) change name with their content, so they come from the
  copy first.
- **Codex entries and Codex files** are kept as they are opened (the newest
  400 per release). An offline page never opened shows `/offline`.
- **A new release** takes over open tabs as soon as its copy is complete.
  The release before it is kept, so a tab still on it can load its scripts;
  older ones are deleted. The app checks for a new release when it comes
  back to the screen, at most every 30 minutes.
- **The device schema** (`/local-db/`) is kept with its release: a release
  that took over in the background and first opens offline still finds the
  schema its code was built for, and updates the device before any screen
  reads it.
- **Never kept:** `/game-data/`. The device asks for the game data list on
  each visit and keeps the release it has when the list doesn't answer
  (`prepare-device.ts`); game data files go into the device database, which
  is what makes installed games work offline.
- Images come from the images site and stay in the browser's own cache (30
  days).

## Reads, Writes, And File Responsibilities

The design goal is separation of concerns, not a fixed filename ritual.

### Reads

A screen's route stays a thin server file that hands the address on to a
client route component. That component reads its data on the device with
`useLocalPageRead(key, read)` (or Mainline's `useLocalPageData`, which adds
not-found): the page waits for its read before it shows, and since a link and
a save are React transitions, the page you came from stays on screen until
then, the way Next.js waits for a server page, so changing pages never
flashes empty. `key` names everything the read depends on, and every read on
screen runs again after a save. A piece of a page that can show without its
data (a backup note, a sync row) uses `useLocalRead`, which returns a loading
state instead. The Team Planner reads like any page unless its game still has
to download (`findGameToDownload`): that takes seconds, so it shows at once
with the download bar, kept until the Planner is read.
Device reads take milliseconds, so there are no loading skeletons.

For a complex read, separate the responsibilities that need independent review
or reuse:

```txt
<use-case>-query.ts       # orchestration: asks the device for its client
<use-case>-reader.ts      # raw reads, taking their client as a parameter
<use-case>-mappers.ts     # pure row-to-model transformation
```

A required read failure is not an empty product result: readers throw an
explicit error or return a typed degraded state that the caller deliberately
renders. Do not centralize all reads in one global service, and do not
combine raw I/O, workflow decisions, mapping, and presentation in one large
file.

### Writes

Use this direction for interactive writes:

```txt
Client Component
  -> action (client/, runs on the device)
  -> Zod input schema
  -> command/use case
  -> repository or database function
  -> constraints and triggers
  -> notifyLocalSave (every read on screen runs again)
```

Every action parses its input with Zod before any database call, through the
helpers in `src/shared/utils/input-schemas.ts` (`parseInput` throws the
schema's first message, `safeParseInput` returns it). Schemas sit beside the
action, or in the feature's `utils/` when a parser is shared or tested on its
own; the messages are the ones the form shows. Database constraints remain
authoritative.

Per [ADR 0008](../decisions/0008-user-data-on-the-device.md) (carried over
from ADR 0005), a write that
touches more than one table or creates a History moment goes through one
database function so it is all-or-nothing: starting a Play
(`gameplay.create_mainline_play`), saving a Plan
(`planning.save_mainline_team_plan`), a note
(`gameplay.add_mainline_play_event`), a Pokémon's details with its moves
(`gameplay.update_mainline_play_pokemon`), General settings with any status
moment (`gameplay.update_mainline_play_general_settings`), choosing or undoing
the partner (`gameplay.choose_mainline_play_partner`,
`gameplay.undo_mainline_play_partner`) and deleting a Pokémon with its Added
moment (`gameplay.remove_mainline_play_pokemon`) are each one function call;
no action writes in steps or undoes by hand. Readers, loaders, commands,
repositories and writers take their database client as a parameter; the
query or action that calls them gets it (`getLocalQueryClient`, or, for the
Codex's `server/` readers, the build's database holding every game data
file). `data/`, `domain/` and `utils/` never import
Next.js, React or `src/platform` at runtime; type-only imports are fine.
`architecture:check` enforces both rules.

### UI And Client Boundaries

- Server Components are the default; at build time they make the page's
  first HTML, nothing more.
- Add `"use client"` at the smallest interactive boundary.
- Components render data and own local interaction state; they do not create
  Supabase clients or issue raw schema reads.
- Client Components never import server queries or raw readers from `server/`
  folders; only the build runs those.
- A page whose id lives in the address takes it from the query, not from a
  path segment, because a file host can't make a page for an id it has never
  seen: `/mainline/plays/play?id=`, `/mainline/plans/plan?id=`. The Codex
  makes a page per Pokémon, base game and Pokédex ahead of time
  (`generateStaticParams`, `dynamicParams = false`), each with its own title
  and description.

### Page Changes

A page's data is read on the device, so what the server sends for a page is
small and doesn't change while you use the app. Page changes never wait on
it:

- Links come from `@/shared/components/link` (lint forbids `next/link`
  elsewhere). Next.js fetches each page on screen ahead of the click from the
  small files the build writes beside it. The shared link never asks for a
  full prefetch (`prefetch={true}`): on a file host that request gets the
  page's HTML instead, and the click then never moves.
- The router keeps each page opened or fetched for an hour
  (`experimental.staleTimes` in `next.config.ts`), so going back is instant.
- A save on the device redraws through `notifyLocalSave`; it never calls
  `router.refresh()`, which fetches the page again and drops every page
  fetched ahead.
- A filter or scope kept in the address updates it with
  `window.history.replaceState`, not `router.replace`.

## File Size And Naming

File size is a review signal, not a hard gate:

- roughly 50-150 lines is common for cohesive application files;
- 150-250 lines can be appropriate when the responsibility is still clear;
- above 250 lines should trigger a responsibility review;
- above 400 lines should be exceptional outside generated types, configuration
  maps, or third-party primitive wrappers.

Split by responsibility or product section, not by arbitrary line counts. Avoid
tiny helpers that are used once and make a workflow harder to read.

Use explicit, searchable filenames and exports. A file should solve one clear
problem or a small set of tightly related problems.

## Current Routes

Current route groups remain:

- site: `/`, `/intro`, `/start`, `/privacy` and `/terms`;
- auth: `/login`, `/forgot-password`, `/reset-password`, `/check-email` and
  `/auth/callback`;
- system: `/app`;
- public app: `/codex`, Pokemon browse/detail, Games browse/detail, and game
  Pokedex routes;
- app (open to everyone, data on the device): Mainline Home (`/mainline`), Plays and New Play, every Play
  Hub view (Overview, Team Roster, Plan and Analysis, Story, Pokédex,
  Collectibles, History, Settings), the Team Planner and My Plans
  (`/mainline/plans`), `/mainline/stats`, `/mainline/collection`, `/settings`,
  `/welcome` and `/you`.

[Navigation And Routes](../product/navigation-and-routes.md) lists every
address; code is the evidence for what is mounted.

## Change Rules

- Change one coherent boundary at a time.
- Keep mechanical moves separate from behavior changes when that improves
  reviewability.
- Preserve public routes and feature behavior during architecture-only work.
- Do not create empty target folders or long-lived compatibility layers.
- Enable a new architecture rule only when the repository already passes it.

The database co-location decision is recorded in
[ADR 0002](../decisions/0002-colocate-database-source.md). The verified database
source now lives under `database/`; the frontend continues to consume only its
typed app-facing contract and runtime Supabase clients.

## Verification

Run the complete local gate with:

```bash
npm run verify
```

Use the individual commands and browser baseline in
[Verification](./verification.md) when diagnosing a failure or checking a
visual change.
