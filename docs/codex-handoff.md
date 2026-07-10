# Codex Handoff

Use this file when continuing Voydex in a new Codex thread or on another machine.

## Repositories

```txt
./
```

`13-voydex` owns the active Next.js app and Voydex Supabase database source.
The source was imported from `00-databases` commit
`85315314f7f24e071028bb8f1f4fe8bb52946f72`; that repository retains only the
excluded legacy archive.

## Architecture Refactor Checkpoint

Phase 0 establishes the refactor safety foundation without changing product
behavior:

- [ADR 0001](./decisions/0001-modular-monolith.md) accepts the hierarchical
  modular-monolith target and responsibility-based read/write boundaries.
- [ADR 0002](./decisions/0002-colocate-database-source.md) accepts moving only
  the active authored Voydex database source into this repository.
- `npm run typecheck`, `npm run architecture:check`, and `npm run test` provide
  explicit local gates; `npm run verify` runs the complete sequence.
- `.github/workflows/quality.yml` runs the same quality gates in CI.
- `docs/app/verification.md` records the route-level browser smoke baseline.

No application feature or source architecture was migrated in Phase 0. The
foundation locations remained transitional until Phase 3.

Phase 1 stabilized database generation in `00-databases` before relocation:

- schema table files are now the only active index source; five stale standalone
  index files were retired instead of being added to the generator;
- `db:audit:voydex` verifies generated wrapper freshness, schema-owned index
  targets/names, and the deterministic seed corpus;
- `db:test:voydex` now runs a 13-assertion pgTAP schema/security smoke suite;
- type generation is local by default, linked generation is explicit, and the
  app copy is aligned with the verified local schema.

Phase 2 co-located the verified database source:

- human-authored schema and seeds live under `database`;
- the Supabase CLI workdir is `database/`, isolating it from the app's root
  `.env.local`;
- database tooling lives under `scripts/database` and types generate directly
  into the app contract;
- source audits run in normal CI, while Docker-dependent database verification
  remains an explicit `db:verify` flow;
- legacy data, generated seed output, local Supabase state, secrets, and
  unrelated multi-project tooling were not imported.

Phase 3 migrated the frontend foundation without changing product behavior:

- `src/lib` is retired; environment and Supabase adapters now live under
  `src/platform`, while `cn` lives under `src/shared/utils`;
- auth redirects and password actions live under `src/features/auth`;
- the app shell, active-module preference, module navigation, and sign-out use
  case live under `src/features/app-shell`;
- home entry and database-health UI moved to their site and system owners;
- route adapters compose the public shell around auth, site, and system content,
  so global features do not import one another;
- proxy responsibilities are split between generic Supabase session refresh and
  app-shell-owned route/module-cookie orchestration;
- architecture checks now enforce the migrated dependency direction and reject
  new `src/lib` files;
- Vitest resolves the production `@/*` alias, and focused auth/module-navigation
  tests increase the suite to 11 tests across three files.

Phase 4 migrated reusable catalogue ownership without changing routes or product
behavior:

- `src/modules/reference` is the internal Pokemon/game catalogue capability used
  by Codex and Mainline;
- game and Pokemon domain rules, display helpers, artwork/type components, and
  CSS tokens moved out of root `src/shared`;
- generic catalogue types, data helpers, and paged/chunked row loading expose
  explicit public contracts through `reference/types.ts`,
  `reference/reference-data.ts`, and `reference/reference-rows.ts`;
- the mixed `reference-data-utils.ts` implementation was split into generic
  reference value helpers, Pokemon attribute selectors, and game-card mapping;
- `src/modules/codex/shared` now retains only Codex-owned shared presentation;
- architecture checks reject the retired root-shared game/Pokemon paths and
  prevent consumers from reaching into `reference/shared` internals;
- focused reference-domain tests increase the suite to 19 tests across six
  files.

Phase 5 migrated Mainline Play Hub ownership without changing routes or product
behavior:

- `src/modules/mainline/features/plays/hub` replaces the generic `detail`
  boundary and mirrors the Hub shell, Overview sections, and future tab slices;
- `/mainline/plays/[playId]` remains the route and now imports the Hub page and
  query directly;
- the former 349-line `play-page-loaders.ts` was split into context and Overview
  raw readers, pure team/rule/page mappers, and one authenticated orchestration
  query;
- Hub-only types moved out of `plays/shared`; that boundary now contains only
  contracts genuinely shared with browse;
- the architecture check rejects reintroducing `plays/detail`;
- focused Play Hub mapper tests increase the suite to 23 tests across eight
  files.

The local reset, source/seed audit, SQL lint, pgTAP suite, type parity, and app
verification pass at this checkpoint. No remote database read or write was
performed; remote work still requires separate explicit authorization.

## Current Product Summary

Voydex is a Pokémon companion app for tracking, remembering, and planning playthroughs.

Main app areas:

- Mainline Dashboard.
- Plays.
- Play Hub.
- Team Management.
- Story Progression.
- Timeline and Journal.
- Pokedex Progress.
- Collectibles.
- Plans.
- Codex Pokémon Search.
- Codex Games Browse.
- Collection.
- Stats.
- Settings.

The app should not force Codex browsing as the only flow. Users should be able
to create and continue plays directly.

## Current Frontend Focus: Mainline Plays And Play Hub

Baseline verified on 2026-07-10: the current frontend focus is Mainline Plays.

Current active routes:

```txt
/mainline/plays
/mainline/plays/[playId]
```

Current implementation:

- `/mainline/plays` is a simple real-data card list. Play cards link to the
  Play Hub route.
- `/mainline/plays/[playId]` is the Play Hub. It uses a non-card top
  information section and a single tab card underneath.
- The top section renders cover art, play title, status, game, region,
  generation, playtime/start date, quick stats, and View game / Back actions.
- The Play Hub tab shell includes Overview, Team, Progress, Plans, History, and
  Settings. Only Overview is currently enabled; the other tab components are
  shell files until those slices are built.
- Overview left column: Journey Status and Recent History.
- Overview right column: Current Team and Progress Summary.
- Journey Status shows last completed milestone, next up milestone, Story Path,
  and a future Log milestone action.
- Current Team shows six compact active slots. Empty slots render as plus
  placeholders.
- Recent History fetches at most five rows from
  `views.mainline_play_timeline_detail`; do not fetch extra rows just to slice
  in the UI.
- Progress Summary shows applicable progress tracks only. Hide rows when a play
  has no positive total for that track. Show a progress bar and a
  `completed / total` count; do not add a visible percent label.

Current Mainline Plays code boundary:

```txt
src/modules/mainline/features/plays/browse/
src/modules/mainline/features/plays/hub/
src/modules/mainline/features/plays/shared/
```

Play Hub layout:

```txt
src/modules/mainline/features/plays/hub/
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
    progress/
    plans/
    history/
    settings/
  types.ts
```

Important current direction:

- Keep the Play Hub top section outside a Card. It should read as contextual
  page information; the tab card below is the main workspace surface.
- Do not add Team Health to Overview yet. It belongs in the Team tab once there
  is a real analysis model.
- Do not add filler cards to balance the right column. Add preview cards only
  when they summarize a mature tab or real workflow.
- Continue building section by section. Next useful slices are Team and
  Progress, because they already have visible tab shells and Overview previews.
- Inside already-scoped component folders, local names are acceptable. For
  example, `tabs/overview/sections/team/team-panel.tsx` can export `TeamPanel`;
  page-level and tab-level files can keep `MainlinePlay...` prefixes for
  searchability.

## Stable Frontend Area: Codex Pokemon Detail

As of 2026-07-02, the active Codex Pokemon detail foundation is in a good
section-by-section state:

```txt
/codex/pokemon/[gameSlug]/[speciesSlug]
```

Current status:

- `/codex/pokemon` browse is in a good direction and should be treated as
  stable for now.
- The Pokemon detail page is game-scoped. Species-only routes redirect to the
  default supported game route.
- The top section is a compact selector surface. It shows the Pokemon species
  selector on the left and generation/game controls on the right. The selected
  generation trigger includes the selected game name, for example
  `VIII - Pokemon Sword`.
- The left section currently contains the portrait, optional Forms card, and
  optional Evolution Line card.
- The portrait uses type-themed backgrounds and a small top-right shiny toggle.
  Shiny only changes the selected form artwork and resets when the form changes.
- The Forms card renders only when additional forms exist. Form rows show the
  form image, National number, form name, and type identity; selecting a form
  updates the `form` query parameter.
- The Evolution Line card is hidden when there is no real evolution line.
  Branching evolutions render as readable path rows.
- The right section currently includes Core Data, Battle Stats, Type Matchups,
  Abilities, Pokedex, Availability, and Learnsets cards.
- Type Matchups currently uses a compact all-type effectiveness grid with type
  icon tooltips and effectiveness-value tooltips, not grouped
  weakness/resistance sections.
- Learnsets are a first implementation and are expected to keep iterating.

Read this before continuing detail-page work:

```txt
docs/design/codex-pokemon-detail.md
```

Important current direction:

- Keep Shiny as a direct visual toggle inside the portrait.
- Treat Pokemon forms as real data-affecting choices because form changes can
  affect typing, stats, abilities, availability, and game validity.
- Keep forms outside the portrait. The current pattern is a dedicated Forms card
  with list-style form options, not a tiny thumbnail rail and not a select.
- Validate forms against the selected game, not only the selected generation.
- DLC-only availability counts as game availability but must show a warning/info
  state explaining the required DLC scope.
- Keep card sections simple, with the shared detail section card styling.
- For right-section data, prefer adding one section at a time and keep data
  access separated by responsibility. Keep the current loader/mapper/query
  files until Pokemon detail is migrated; do not force that exact trio on new
  simple reads.

## Stable Frontend Area: Codex Games And Pokedexes

As of 2026-07-06, the Games direction has moved away from the timeline idea.
Treat the current implementation as the baseline:

```txt
/codex/games
/codex/games/[gameSlug]
/codex/games/[gameSlug]/pokedexes/[pokedexSlug]
```

Current implementation:

- `/codex/games` is a Pokemon-browse-style card grid grouped by Generation,
  not a timeline. It supports search, generation, region, and game type
  filters.
- Game cards use cover-art background cards with Pokemon game color tokens for
  hover/border life.
- `/codex/games/[gameSlug]` is a cover-art-led detail page. It shows the game
  title, year, region, generation, description, Browse Pokemon action,
  platforms, available Pokemon count, game type, game Pokedex links, and related
  games.
- `/codex/games/[gameSlug]/pokedexes/[pokedexSlug]` is the game Pokedex
  browser. It uses a control bar, a dex switcher when multiple Pokedexes exist,
  and a row-clickable Pokemon table.
- Game Pokedex table rows link to the game-scoped Pokemon detail route:
  `/codex/pokemon/[gameSlug]/[speciesSlug]`.
- The Pokedex table includes sprite, dex number, name, types, conditional
  abilities, and stats. If no listed Pokemon has abilities, the Abilities column
  is hidden. Generation I uses `Special` instead of separate `SpA` and `SpD`
  columns.
- The current Games data boundary is:
  - `src/modules/codex/features/games/browse/server/games-page-query.ts`
  - `src/modules/codex/features/games/browse/server/games-page-loaders.ts`
  - `src/modules/codex/features/games/browse/data/games-page-mappers.ts`
  - `src/modules/codex/features/games/browse/games-page.tsx`
  - `src/modules/codex/features/games/detail/data/game-detail-mappers.ts`
  - `src/modules/codex/features/games/detail/server/game-detail-loaders.ts`
  - `src/modules/codex/features/games/detail/server/game-detail-query.ts`
  - `src/modules/codex/features/games/detail/components/top-section/*`
  - `src/modules/codex/features/games/detail/components/pokedexes/*`
  - `src/modules/codex/features/games/detail/components/related-games/*`
  - `src/modules/codex/features/games/detail/game-detail-page.tsx`
  - `src/shared/components/detail-section-card.tsx`
  - `src/modules/codex/shared/components/codex-back-link.tsx`
  - `src/modules/codex/features/games/pokedex/server/game-pokedex-query.ts`
  - `src/modules/codex/features/games/pokedex/server/game-pokedex-loaders.ts`
  - `src/modules/codex/features/games/pokedex/data/game-pokedex-mappers.ts`
  - `src/modules/codex/features/games/pokedex/data/game-pokedex-selectors.ts`
  - `src/modules/codex/features/games/pokedex/game-pokedex-page.tsx`

Near-term follow-ups:

- Browser-check the game detail and game Pokedex pages at desktop, tablet, and
  mobile widths when visual changes land.
- Keep the game detail bottom panels stable: Pokedexes are scrollable only when
  they sit beside Related games; stacked layouts show all Pokedexes.
- If the Pokedex table becomes too dense, add sort/density behavior before
  adding more decorative UI.
- Keep URL-backed game filters as a future improvement only if the user asks for
  shareable filtered game pages.
- A future generation-detail route can exist later, but do not add a standalone
  Generations navbar view until there is a concrete user workflow for it.

## Current Module Scope

Active modules:

- `mainline`: mainline-style Pokémon RPG playthrough companion. User-facing label: Mainline.
- `codex`: public-readable reference browser for Pokémon and games.

Generations remain reference data for filtering, grouping, and future detail
routes, but they are not a current Codex navbar view.

Future modules:

- `dungeon`
- `pokopia`
- `go`
- `home`
- `ranger`
- `sleep`

Do not create one schema per module. Schemas describe data responsibility; modules describe product behavior.

## Key Product Decisions

- Plays are central user-owned playthrough records.
- Plans are separate from plays and can exist before a play.
- A play has one focused linked Team Plan. Use alternates and notes inside that plan instead of multiple competing plans per play.
- Creating a play from a plan does not auto-fill the active team.
- Current roster limit is 6 active plus 6 reserve.
- Retired/replaced Pokémon remain in history but do not count toward the current roster limit.
- Team edits distinguish correction-only edits from recorded in-game changes.
- Timeline is user-facing play history, not a technical audit log.
- Story snapshots are optional.
- Pokedex completion is species-level.
- DLC is optional per play.
- National/special Pokedex scopes are optional completion scopes.
- Collection is derived from play Pokémon and meaningful history, not only current team slots.
- Pokémon reuse policy applies to planning and actual team actions.
- Reuse scopes are mutually exclusive and cascading: `none`, `form`, `species`, `evolution_family`.
- Rules support both structured predefined behavior and custom descriptive text.
- The item catalog is Pokémon-relevant only.
- Other Pokémon game families should be separate modules later, not forced into the mainline play model now.
- Dashboard is a `mainline` module view, not a top-level module.
- Active module preference is stored in the `voydex-active-module` cookie.
- Codex remains its own shared reference module, not a child of Mainline. It can
  later expose authenticated contextual actions, but the owning module validates
  and mutates state.
- Future Codex contextual actions can include Add to plan, Add to play team,
  Start a plan with this Pokemon, Check availability in my play, Compare with
  planned team, Mark as target, and Find where this fits.
- `Mark as target` is a lightweight future planning action for remembering a
  Pokemon without committing it to a concrete team plan yet.

## Database Contract

Canonical database docs:

```txt
docs/database
```

Most important handoff doc:

```txt
docs/database/app-handoff.md
```

App-consumed types:

```txt
13-voydex/src/shared/types/database.types.ts
```

The app type file is aligned with the locally generated database type. Use
`npm run db:types` after an intentional contract change and
`npm run db:types:check` to verify parity without rewriting it.

## Frontend Foundation

Current stack:

- Next.js App Router.
- TypeScript.
- Tailwind CSS.
- shadcn-style components.
- Lucide icons.
- Supabase SSR.

Current app status:

- Auth foundation is wired.
- The frontend foundation uses explicit `platform`, global-feature, and shared
  owners; `src/lib` no longer exists as a source bucket.
- Protected app shell exists.
- Health check banner exists.
- Protected Mainline pages currently include the Plays list and the Play Hub at
  `/mainline/plays/[playId]`; `/mainline` redirects to the Plays list. Dashboard,
  create-play, and deeper play routes are not mounted yet.
- Codex routes are mounted under `/codex`.
- The Codex Pokemon detail route is game-scoped:
  `/codex/pokemon/[gameSlug]/[speciesSlug]`.
- Home page hero uses real image layers.
- UI primitives use shadcn Base UI components. Base UI uses `render`, not Radix `asChild`.
- The generated play-view screenshots in the project discussion are design references, but implementations should use real data, shadcn primitives, reusable feature components, and the current `src/modules` structure.

Current transitional feature data pattern:

- `server/*-query.ts` orchestrates server client creation, auth/scope, loaders,
  and mappers.
- `server/*-loaders.ts` performs raw Supabase reads.
- `data/*-mappers.ts` and `data/*-selectors.ts` are pure transforms only.
- `components/*-model.ts` can hold local view-model helpers for one component
  group when the logic is UI-adjacent and not a database mapper.
- `components/*` should not create Supabase clients or call `.schema(...)`.
- `client/*` is reserved for browser-only client island helpers.

The accepted target keeps those responsibilities but makes the split
complexity-driven: a simple read can remain in one cohesive server file; a
complex read can use an orchestrator, raw reader (existing loaders have this
role), and pure mappers.

Known implementation debt:

- The species-only compatibility route behaves as
  `/codex/pokemon/[speciesSlug]`, but its App Router folder is still named
  `[gameSlug]`. Treat the folder name as source naming debt until a route-safe
  rename is explicitly in scope.
- The repository has explicit format, lint, typecheck, architecture, unit-test,
  build, and CI gates. The unit suite currently has 23 tests across eight files,
  and there is no committed end-to-end browser suite yet.

The remaining documented architecture cleanup is narrower: review the
product-specific app-icon and brand ownership still under root `src/shared`, and
treat the Codex species-only compatibility folder rename as a separate
route-safe task. Audit those scopes before assigning the next numbered phase.

When adding the next Codex or Mainline section after the architecture migration,
keep route files thin and choose the smallest read structure that keeps I/O,
orchestration, mapping, and UI responsibilities clear.

## Working Style Preferences

- Prefer high-quality, maintainable implementation over quick hacks.
- Ask for human opinion on naming or risky product decisions.
- Recommend reasoning effort for the next task.
- Database-focused commits in this repository should use a clear scope such as
  `type(database): message` or `type(schema): message`.
- In `13-voydex`, commit scopes should be feature-specific, such as `feat(home): ...` or `docs(product): ...`.

## Useful Commands

From `13-voydex`:

```bash
npm run dev
npm run format:check
npm run lint
npm run build
```

```bash
npm run db:start
npm run db:verify
npm run db:types
```

## Cross-Machine Notes

Use Git as the source of truth between Windows and Mac.

Codex local threads and memories are not a replacement for repo docs. Keep durable decisions in docs and code, not only in chat context.
