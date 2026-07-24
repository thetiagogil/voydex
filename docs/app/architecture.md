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
- `src/modules/codex/shared` now contains only Codex-owned shared presentation
  such as its page shell, filter panel, generation section, and empty states.
- Mainline Plays uses `browse`, `hub`, and `shared` view boundaries. The Hub
  separates Hub-wide shell responsibilities from grouped tab views, while
  complex tabs such as Overview and Team group their visible areas under
  `sections` instead of hiding them in a broad `detail/components` tree.
- Play Hub reads separate authenticated orchestration, raw context/Overview I/O,
  pure enrichment, and final page-model assembly.
- existing feature reads commonly use a query/loader/mapper split. That split
  remains valid where the responsibilities are genuinely distinct, but it is
  no longer a mandatory three-file template.
- representative reads include a cohesive simple public read, a complex public
  Games read with independent I/O and mapping, and an authenticated Play Hub
  read with claim verification, owner-scoped readers, and pure page assembly.
- the first non-trivial mutation uses a Server Action, application command,
  pure domain validation, repository, and transactional database function.
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
distinguishes supported, unsupported, and unknown mechanics. Product modules
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
retired; shared, platform, and config dependency direction is protected; global
features cannot depend laterally or reach into product modules; product modules
cannot import global feature internals; the only lateral module dependency is
the directed dependency on `reference`; consumers cannot reach into
`reference/shared` internals; retired root-shared Pokemon/game paths are
rejected; the retired Mainline `plays/detail` boundary and old species-only
Pokemon compatibility route path are rejected; Client Components cannot import
server queries/readers; and component folders cannot create database clients or
perform raw schema reads. Add stricter rules only after the corresponding
migration phase is complete.

## Module And Feature Organization

`features` is the normal root inside a product module because modules contain
multiple views and capabilities. A module can also have these folders when a
real cross-feature responsibility exists:

- `shared`: module-owned UI or utilities reused by multiple features;
- `domain`: module-wide business rules and entities;
- `application`: module-wide use cases or commands;
- `infrastructure`: module-specific adapters or repositories.

Do not create these folders pre-emptively. A small module containing only
`features` is healthy.

The internal reference module currently uses this responsibility-driven shape:

```txt
src/modules/reference/
  features/
    games/
      components/
      data/
      display/
      domain/
      styles/
      types.ts
    pokemon/
      components/
      data/
      display/
      domain/
      styles/
      types.ts
  shared/
    data/
    server/
    database-types.ts
  reference-data.ts
  reference-rows.ts
  styles.css
  types.ts
```

The three TypeScript root files are the public contracts for cross-module
catalogue types, data helpers, and paged/chunked reference reads. Feature-owned
CSS stays beside Games or Pokemon and is composed through the module's public
`styles.css` manifest. Concrete game and Pokemon components or domain utilities
use their explicit feature paths. Codex-owned page composition remains in
`modules/codex`; `reference` must not import Codex or Mainline.

Feature folders may be nested to match the product hierarchy. Mainline Plays
is expected to evolve toward a shape like:

```txt
src/modules/mainline/features/plays/
  browse/
  hub/
    data/
    server/
    shell/
      mainline-play-hub-page.tsx
      mainline-play-hub-tabs.tsx
      top-section/
    tabs/
      overview/
        data/
        server/
        sections/
          journey-status/
          recent-history/
          team/
          progress-summary/
      team/
        application/
        client/
        display/
        domain/
        infrastructure/
        sections/
          recent-team-events/
          roster/
          selected-pokemon/
          team-analysis/
          team-plan/
        server/
      progress/
      plans/
      history/
      settings/
    types.ts
  shared/
```

This nesting is intentional. `shell` owns Hub-wide UI composition; root `data`
and `server` own the Hub-wide read model and orchestration; `tabs` groups the
product views; and `sections` groups the visible areas inside Overview. A
complex section can own smaller responsibility folders when needed. Prefer this
product-first hierarchy over a single broad `components` folder or mixing tab
names with Hub-wide `data` and `server` folders.

Within a slice, add only the responsibility folders it needs:

```txt
feature-or-section/
  components/
  server/
  data/
  client/
  display/
  utils/
  types/
  <feature-entry>.tsx
```

Folders are not mandatory. A cohesive two-file feature should remain a
two-file feature.

## Reads, Writes, And File Responsibilities

The design goal is separation of concerns, not a fixed filename ritual.

### Reads

For a simple read, one server file may create the appropriate client, perform
the query, handle errors, and return a small typed result.

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
  -> application command/use case
  -> repository or database RPC
  -> constraints, grants, and RLS
```

The exact number of files depends on complexity. Database constraints and RLS
remain authoritative; UI checks are not authorization.

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

- site: `/` and `/intro`;
- auth: `/login` and `/auth/callback`;
- system: `/app`;
- public app: `/codex`, Pokemon browse/detail, Games browse/detail, and game
  Pokedex routes;
- protected app: `/mainline`, `/mainline/plays`,
  `/mainline/plays/[playId]`, and `/settings`;
- API: `/api/health` and `/api/codex/pokemon-menu`.

Use code and [Project Status](../project-status.md) as the evidence for which
planned routes are actually mounted.

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
