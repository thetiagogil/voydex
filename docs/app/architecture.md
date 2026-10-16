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
    supabase/
  shared/
  proxy.ts
```

The active source follows these ownership rules:

- `src/lib` is retired. Environment and Supabase adapters live under
  `src/platform`, auth workflows live under `src/features/auth`, app-shell and
  active-module behavior live under `src/features/app-shell`, and the generic
  `cn` helper lives under `src/shared/utils`.
- route adapters compose the app shell around auth, site, and system content;
  those global features do not import each other.
- the proxy separates generic Supabase session refresh in `src/platform` from
  Voydex route protection and active-module cookie orchestration in the app-shell
  feature.
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
  mappers, and the start-a-Play pieces (partner cast, create-Play action and
  command, picker query, start intent, `use-start-play`) that Home and New
  Play share.
- Play Hub reads separate authenticated orchestration, raw context/Overview I/O,
  pure enrichment, and final page-model assembly.
- existing feature reads commonly use a query/loader/mapper split. That split
  remains valid where the responsibilities are genuinely distinct, but it is
  no longer a mandatory three-file template.
- representative reads include a cohesive simple public read, a complex public
  Games read with independent I/O and mapping, and an authenticated Play Hub
  read with claim verification, owner-scoped readers, and pure page assembly.
- the first non-trivial mutation uses separate Server Action, command,
  validation, repository, and transactional database responsibilities, grouped
  under the leaf view's `server` and `utils` folders.
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
    supabase/
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
  proxy.ts
```

Root folders are responsibilities, not convenience buckets. Do not add a new
root folder when an existing owner is appropriate.

### `src/app`

Next.js route files, layouts, metadata, loading/error boundaries, redirects,
and Route Handlers. Page routes should normally resolve route input and render
one feature or module entry point. They must not become the application service
or data-access layer.

### `src/config`

Static application contracts such as routes, module metadata, navigation, and
product-family metadata. Config may use generic shared values, but it should not
depend on runtime infrastructure or feature implementations.

### `src/platform`

Infrastructure adapters owned by the application: environment parsing,
authenticated and public Supabase clients, proxy/session helpers, and health
integration. Platform code must not depend on product modules or application
features.

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
Z-A with Mega Dimension (26, 27) have no abilities, held items or breeding
(Z-A's Mega Stones are recorded as the Mega form, not as a held item). Product modules
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
(`games/server/game-shelf-reader.ts`, `game-catalogue-query.ts`,
`start-intent-resolver.ts`) also live in reference, so Start a Play, the auth
pages, New Play and the Planner share them. `readGameCatalogue` (every game,
its first partners and expansions) is the one cached read: static reference data read without a session through
`createPublicSupabaseClient` and `unstable_cache` (a day, tag
`reference-games`), so the Mainline layout can hand New Play its games on
every load.
`public-art.tsx` is the entry the public pages' routes inject into global
features (which can't import a module), typed by `src/config/public-art.ts`.
Mainline has the one matching entry, `src/modules/mainline/public-play-art.tsx`,
which fills that contract's `PublicPlayArt` with the Play's own pieces for the
example Play on Home and Intro; routes, not global features, import either
entry. Two more Mainline entries follow the same pattern: `public-you.ts`
gives the You page (a global feature) its figures, and `public-codex.tsx`
fills the Codex's signed-in slots. `src/modules/codex/codex-slots.ts` types
those slots (an entry's Add to a Play and In your Plays, a game page's Start a
Play and Your Plays, the Played counts on Games); the Codex routes fill them
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
            story-matchups/
            ...
          server/
      progress/
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
| A database read, or a Server Action             | `<feature>/server/`          |
| Pure mapping, models or selectors               | `<feature>/data/`            |
| Small pure helpers, validation or formatting    | `<feature>/utils/`           |
| Types for one feature                           | `<feature>/types.ts`         |
| A unit test                                     | Next to the file it tests    |
| An end-to-end test                              | `e2e/`                       |

`domain/` stays only in `reference`; `shell/` and `views/` stay only in the
Play Hub; `styles/` holds only the Pokémon type colour tokens.

## Reads, Writes, And File Responsibilities

The design goal is separation of concerns, not a fixed filename ritual.

### Reads

For a simple read, one server file may create the appropriate client, perform
the query, handle errors, and return a small typed result. A required read
failure is not an empty product result: readers throw an explicit error or
return a typed degraded state that the caller deliberately renders.

For a complex read, separate the responsibilities that need independent review
or reuse:

```txt
<use-case>-query.ts       # orchestration and public server entry
<use-case>-reader.ts      # raw Supabase reads
<use-case>-mappers.ts     # pure row-to-model transformation
```

Existing `*-loaders.ts` files are the same raw-read responsibility and can keep
their names until their feature is migrated. Prefer `reader` for new code when
it communicates database I/O more clearly.

Keep files for one endpoint or use case together. Do not centralize all
Supabase reads in one global service, and do not combine raw I/O, workflow
decisions, mapping, and presentation in one large file.

### Writes

Use this direction for interactive application writes:

```txt
Client Component
  -> Server Action
  -> validation
  -> command/use case
  -> repository or database RPC
  -> constraints, grants, and RLS
```

The exact number of files depends on complexity. These responsibilities may be
separate files within one `server` folder rather than separate responsibility
folders. Database constraints and RLS remain authoritative; UI checks are not
authorization.

Per [ADR 0005](../decisions/0005-postgres-is-the-backend.md), a write that
touches more than one table or creates a History moment goes through one
database function so it is all-or-nothing. `create-play-command.ts`,
`save-plan-command.ts` and `play-event-writer.ts` still write in several steps
and move into database functions in the restructure. Readers, loaders,
commands, repositories and writers take a Supabase client as a parameter; the
query or Server Action that calls them creates it (a simple read may still be
one `*-query.ts` that does both). `data/`, `domain/` and `utils/` never import
Next.js, React or `src/platform` at runtime; type-only imports are fine.
`architecture:check` enforces both rules.

### UI And Client Boundaries

- Server Components are the default.
- Add `"use client"` at the smallest interactive boundary.
- Components render data and own local interaction state; they do not create
  Supabase clients or issue raw schema reads.
- Client Components may import Server Actions, but not server queries or raw
  readers.
- Route Handlers are for public APIs, webhooks, or client islands that need an
  HTTP boundary. Normal server-rendered pages should call server use cases
  directly.
- `src/proxy.ts` may refresh sessions and perform coarse redirects, but protected
  Server Components, Server Actions, and Route Handlers must enforce their own
  authorization.

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
- protected app: Mainline Home (`/mainline`), Plays and New Play, every Play
  Hub view (Overview, Team Roster, Plan and Analysis, Story, Pokédex,
  Collectibles, History, Settings), the Team Planner and My Plans
  (`/mainline/plans`), `/mainline/stats`, `/mainline/collection`, `/settings`,
  `/welcome` and `/you`;
- API: `/api/health` and `/api/codex/pokemon-menu`.

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
