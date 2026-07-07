# Codex Handoff

Use this file when continuing Voydex in a new Codex thread or on another machine.

## Repositories

```txt
/Users/thetiagogil/Documents/Dev/Tiago/13-voydex
/Users/thetiagogil/Documents/Dev/Tiago/00-databases
```

`13-voydex` is the clean active Next.js app.

`00-databases/projects/voydex` is the clean active Supabase database source.

Both repos have `legacy/` folders. Legacy content is reference only.

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

## Current Frontend Focus: Codex Pokemon Detail

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
- Keep card sections simple, with shared Pokemon detail card styling and no
  decorative title icons.
- For right-section data, prefer adding one section at a time and keep data
  access in the loader/mapper/query split.

## Current Frontend Focus: Codex Games And Pokedexes

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
  - `src/modules/codex/features/games/detail/server/game-detail-query.ts`
  - `src/modules/codex/features/games/detail/components/game-detail-hero.tsx`
  - `src/modules/codex/features/games/detail/components/game-detail-pokedexes-section.tsx`
  - `src/modules/codex/features/games/detail/components/game-detail-related-games-section.tsx`
  - `src/modules/codex/features/games/detail/components/hero/*`
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
/Users/thetiagogil/Documents/Dev/Tiago/00-databases/projects/voydex/docs
```

Most important handoff doc:

```txt
/Users/thetiagogil/Documents/Dev/Tiago/00-databases/projects/voydex/docs/app-handoff.md
```

App-consumed types:

```txt
13-voydex/src/shared/types/database.types.ts
```

When database types change, copy the generated database type file from `00-databases/projects/voydex/types/database.types.ts` into the app. Do not add an app-side type generation script unless the user asks for one again.

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
- Protected app shell exists.
- Health check banner exists.
- Protected Mainline routes include dashboard, play list, play create, and the current play detail slices under `/mainline/plays`.
- Codex routes are mounted under `/codex`.
- The Codex Pokemon detail route is game-scoped:
  `/codex/pokemon/[gameSlug]/[speciesSlug]`.
- Home page hero uses real image layers.
- UI primitives use shadcn Base UI components. Base UI uses `render`, not Radix `asChild`.
- The generated play-view screenshots in the project discussion are design references, but implementations should use real data, shadcn primitives, reusable feature components, and the current `src/modules` structure.

Current feature data pattern:

- `server/*-query.ts` orchestrates server client creation, auth/scope, loaders,
  and mappers.
- `server/*-loaders.ts` performs raw Supabase reads.
- `data/*-mappers.ts` and `data/*-selectors.ts` are pure transforms only.
- `components/*-model.ts` can hold local view-model helpers for one component
  group when the logic is UI-adjacent and not a database mapper.
- `components/*` should not create Supabase clients or call `.schema(...)`.
- `client/*` is reserved for browser-only client island helpers.

When adding the next Codex or Mainline section, keep route files thin and add
new data access through this loader/mapper/query split.

## Working Style Preferences

- Prefer high-quality, maintainable implementation over quick hacks.
- Ask for human opinion on naming or risky product decisions.
- Recommend reasoning effort for the next task.
- In `00-databases`, commit messages should use `type(voydex): message`.
- In `13-voydex`, commit scopes should be feature-specific, such as `feat(home): ...` or `docs(product): ...`.

## Useful Commands

From `13-voydex`:

```bash
npm run dev
npm run format:check
npm run lint
npm run build
```

From `00-databases`:

```bash
npm run db:start:voydex
npm run db:reset:voydex
npm run db:types:voydex -- --local
node projects/voydex/scripts/audit-seed-files.mjs
node scripts/supabase-target.mjs voydex db lint --local --fail-on error
```

## Cross-Machine Notes

Use Git as the source of truth between Windows and Mac.

Codex local threads and memories are not a replacement for repo docs. Keep durable decisions in docs and code, not only in chat context.
