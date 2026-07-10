# Frontend Architecture

Voydex is a Next.js App Router application organized as a modular monolith with
hierarchical, feature-owned vertical slices. The architecture should make a
feature easy to find, keep routes and UI free from database concerns, and allow
the project to grow without turning every module into one large components
folder.

The accepted direction is recorded in
[ADR 0001](../decisions/0001-modular-monolith.md). This document is the working
architecture guide; the ADR explains why the direction was chosen.

## Current Checkpoint

The application currently uses this root layout:

```txt
src/
  app/
  config/
  features/
  lib/
  modules/
    codex/
    mainline/
  shared/
  proxy.ts
```

This is the starting point for the refactor, not the final topology. In
particular:

- `src/lib` currently mixes infrastructure, auth, navigation, and app-shell
  concerns that will move to explicit owners.
- app-shell code currently lives under `src/shared` even though it is an app
  feature.
- reusable Pokemon and game semantics currently live under `src/shared` or
  `src/modules/codex/shared`; they will move to the internal `reference` module.
- existing feature reads commonly use a query/loader/mapper split. That split
  remains valid where the responsibilities are genuinely distinct, but it is
  no longer a mandatory three-file template.

Do not treat these transitional locations as precedents for new architecture.
Move them phase by phase and keep compatibility shims temporary.

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
  shared/                      # generic, domain-neutral building blocks
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
semantics and reusable reference-data presentation; it is not a navbar module.

`mainline` and `codex` must not import each other. Both may depend on the public
surface of `reference`. The `reference` module must not depend on either
consumer.

### `src/shared`

Generic, domain-neutral primitives that are safe for any layer to use. This
includes shadcn/Base UI wrappers, generic hooks, providers, low-level styles,
and utilities. Pokemon/game rules, route behavior, app-shell composition, and
Supabase clients do not belong here.

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

`npm run architecture:check` currently enforces the stable subset that the
pre-refactor code already satisfies: shared and platform direction, no lateral
product-module dependencies, no server query/loader imports in Client
Components, and no database clients/raw schema reads in component folders. Add
stricter rules only after the corresponding migration phase is complete.

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

Feature folders may be nested to match the product hierarchy. Mainline Plays
is expected to evolve toward a shape like:

```txt
src/modules/mainline/features/plays/
  browse/
  hub/
    shell/
    overview/
      journey-status/
      recent-history/
      team/
      progress-summary/
    team/
    progress/
    plans/
    history/
    settings/
  shared/
```

This nesting is intentional. A view can own sections, and a complex section can
own smaller sections. Prefer this over a single broad `components` folder.

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

Use code and `docs/codex-handoff.md` as the evidence for which planned routes
are actually mounted.

## Migration Rules

- Migrate one coherent boundary at a time.
- Keep mechanical moves separate from behavior changes.
- Preserve public routes and feature behavior during architecture-only phases.
- Do not create empty target folders or long-lived compatibility layers.
- Enable a new architecture rule only when the repository already passes it.
- Migrate the Pokemon detail slice late because it is the largest and most
  interconnected current feature.

The database co-location direction is a separate decision in
[ADR 0002](../decisions/0002-colocate-database-source.md). Until that relocation
phase is verified, `../00-databases/projects/voydex` remains the database source
of truth.

## Verification

Run the complete local gate with:

```bash
npm run verify
```

Use the individual commands and browser baseline in
[Verification](./verification.md) when diagnosing a failure or checking a
visual change.
