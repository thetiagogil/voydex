# Navigation And Routes

This document defines the app navigation model and route contract.

## Navigation Model

Voydex should have independent top-level modules and dependent module views.

The app should not force a single linear flow. Codex browsing can help users
find a game or Pokemon, but the user can create and reach plays directly.

This document describes the target navigation contract. The current app mounts only implemented routes. New workspaces should be added route-by-route when their product slice is real.

## Main Navbar

The navbar is module-aware:

- Voydex logo.
- Module switcher.
- Active module view links.
- User menu.

The active module is stored in the `voydex-active-module` cookie. Explicit module URLs override the cookie for the rendered navigation and refresh the cookie through the proxy.

Current modules:

- Mainline, internal module key `mainline`.
- Codex, internal module key `codex`.

Current Mainline views:

- Plays

Planned Mainline views:

- Dashboard
- Plans
- Collection
- Stats

Current Codex views:

- Pokémon
- Games

Add additional module view links only when their pages are implemented.

## Profile Menu

Current profile menu links:

- Settings
- Sign out

Planned profile menu links:

- Profile
- Account

Add profile and account routes when those pages are implemented.

## Route Tree

### Mainline

Currently mounted Mainline routes:

```txt
/mainline
/mainline/plays
/mainline/plays/[playId]
```

`/app` reads the `voydex-active-module` cookie and redirects to the active module's default route.

`/mainline` redirects to `/mainline/plays`.

Accepted target routes include `/mainline/dashboard`,
`/mainline/plays/new`, and focused routes for play concerns. Route helpers or
product contracts do not mean that a page is mounted.

Dashboard is a planned Mainline view, not a top-level app module. When built, it
should show recent plays, quick actions, recent activity, and summary stats.

### Codex

```txt
/codex
/codex/pokemon
/codex/pokemon/[speciesSlug]
/codex/pokemon/[gameSlug]/[speciesSlug]
/codex/games
/codex/games/[gameSlug]
/codex/games/[gameSlug]/pokedexes/[pokedexSlug]
```

Codex is the public-readable reference/search/planning surface. It is a frontend app module, not a database product family.

Codex can expose authenticated contextual actions into other modules, but those
actions should route into the owning module's workflow. For example, a Pokemon
detail page can offer Mainline actions such as adding to a plan, adding to a
play team, starting a plan from the current Pokemon/game context, or marking a
Pokemon as a target.

Pokemon detail pages are game-scoped. The selected game determines the selected
generation, so the URL should stay `/codex/pokemon/[gameSlug]/[speciesSlug]`
instead of adding a generation segment.

When linking from Pokemon browse to a detail page, default to the first
supported game in the first generation where the Pokemon appears. Detail-page
generation menus should show games ordered by seeded sort order and disable
games where the selected Pokemon/form has no seeded availability. DLC-only
availability counts as available for that game, but the UI should make the DLC
requirement explicit.

Game detail pages are game-scoped and should surface game Pokedexes as links.
The game Pokedex route browses the Pokemon available in a selected game Pokedex
and links rows back into the game-scoped Pokemon detail route.

Generations remain reference data for filtering and grouping. A future
generation-detail route can be added later, but there is no current standalone
Generations navbar view.

Do not keep legacy public browse redirects such as `/pokedex`, `/games`, or `/generations`. Add routes only under `/codex/...` unless a new product decision explicitly introduces another public route.

### Plays

```txt
/mainline/plays
/mainline/plays/[playId]
```

Accepted target routes include:

```txt
/mainline/plays/new
/mainline/plays/[playId]/team
/mainline/plays/[playId]/progress
/mainline/plays/[playId]/story
/mainline/plays/[playId]/pokedex
/mainline/plays/[playId]/collectibles
```

`/mainline/plays/[playId]` is the Play Hub.

Deep routes manage one focused play concern at a time.

Implementation note as of 2026-07-10: the app currently builds the Play Hub at
`/mainline/plays/[playId]` first. Team, Progress, Plans, History, and Settings
exist as tab shells inside the hub; add or enable deeper pages only when the
corresponding product slice is implemented. Do not send users to a deep play
route unless that route has a real page or a deliberate tab-equivalent flow.

### Plans

```txt
/mainline/plans
/mainline/plans/new
/mainline/plans/[planId]
```

Plans are separate from plays when they exist before a play. A play itself has one focused linked Team Plan rather than several competing linked plans.

### Collection

```txt
/mainline/collection
/mainline/collection/[playPokemonId]
```

Collection is based on Pokémon the user has used in plays.

The detail route is optional and may be deferred, but the model should support a user-owned Pokémon history detail page.

### Stats

```txt
/mainline/stats
```

Derived user analytics.

### Codex Browse Context

Game page can show:

- Game details.
- Available Pokedexes.
- Related games from the same generation or region.
- User plays for that game.
- User plans for that game.
- Create play action.
- Create plan action.

Game Pokedex page can show:

- Pokemon listed in that Pokedex.
- Dex number, National number, sprite, types, abilities where applicable, and
  stats.
- A switcher for other Pokedexes attached to the same game.

Generation context can still appear as a filter, grouping label, or future
detail page. Do not treat it as the required path to games or plays.

### Settings

```txt
/settings
```

## Entry Flows

### Continue Existing Play

```txt
Dashboard -> Continue Play -> Play Hub
```

### Create Play Directly

```txt
Dashboard or Plays -> New Play -> Select Game -> Play Hub
```

### Browse To Create Play

```txt
Codex -> Games -> Game -> Create Play
```

### Create Plan

```txt
Mainline Dashboard or Plans -> New Plan -> Select Game -> Plan Detail
```

### Create Play From Plan

```txt
Plan Detail -> Create Play From Plan -> Play Hub
```

The play starts with an empty current team. Planned Pokémon remain available as a reference.

### Add Planned Pokémon To Play

```txt
Play Team -> Team Plan -> Add To Team -> Suggested Starting Stage -> Current Team
```

### Search For Pokémon

```txt
Codex -> Pokedex -> Pokémon Detail -> Add To Plan
```

Future authenticated Codex actions can include:

```txt
Codex Pokemon Detail -> Add To Plan -> Mainline Plan
Codex Pokemon Detail -> Add To Play Team -> Mainline Play Team
Codex Pokemon Detail -> Start Plan With This Pokemon -> New Mainline Plan
Codex Pokemon Detail -> Mark As Target -> Mainline target state
Codex Pokemon Detail -> Check Availability In My Play -> Mainline play context
```

## Routing Principles

- Top-level routes should represent modules.
- Module views should belong to their active module instead of appearing as global navbar peers.
- Nested play routes should represent play-specific tasks.
- Codex routes should provide context and discovery, not be required funnels.
- Codex contextual actions should hand off to the owning module for validation
  and mutation.
- Plan routes should not be nested under plays because plans can exist before plays.
- Collection and Stats should be derived from user data rather than manually maintained.
- Future app modules may introduce their own route trees, but the `mainline` product family and Mainline workspace are the first build target.
