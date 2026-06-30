# Navigation And Routes

This document defines the app navigation model and route contract.

## Navigation Model

Voydex should have independent top-level modules and dependent module views.

The app should not force a single linear flow. `Generations -> Games -> Plays` remains a browse path, but the user can create and reach plays directly.

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

- Dashboard
- Plays

Planned Mainline views:

- Plans
- Collection
- Stats

Current Codex views:

- Pokémon
- Games
- Generations

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

```txt
/app
/mainline
/mainline/dashboard
/mainline/plays
/mainline/plays/new
/mainline/plays/[playId]
/mainline/plays/[playId]/team
/mainline/plays/[playId]/progress
/mainline/plays/[playId]/story
/mainline/plays/[playId]/pokedex
/mainline/plays/[playId]/collectibles
```

`/app` reads the `voydex-active-module` cookie and redirects to the active module's default route.

`/mainline` redirects to `/mainline/dashboard`.

Dashboard is a Mainline view, not a top-level app module. It shows recent plays, quick actions, recent activity, and summary stats.

### Codex

```txt
/codex
/codex/pokemon
/codex/pokemon/[gameSlug]
/codex/pokemon/[gameSlug]/[speciesSlug]
/codex/games
/codex/games/[gameSlug]
/codex/generations
/codex/generations/[generationId]
```

Codex is the public-readable reference/search/planning surface. It is a frontend app module, not a database product family.

Pokemon detail pages are game-scoped. The selected game determines the selected
generation, so the URL should stay `/codex/pokemon/[gameSlug]/[speciesSlug]`
instead of adding a generation segment.

When linking from Pokemon browse to a detail page, default to the first
supported game in the first generation where the Pokemon appears. Detail-page
generation menus should show games ordered by seeded sort order and disable
games where the selected Pokemon/form has no seeded availability. DLC-only
availability counts as available for that game, but the UI should make the DLC
requirement explicit.

Do not keep legacy public browse redirects such as `/pokedex`, `/games`, or `/generations`. Add routes only under `/codex/...` unless a new product decision explicitly introduces another public route.

### Plays

```txt
/mainline/plays
/mainline/plays/new
/mainline/plays/[playId]
/mainline/plays/[playId]/team
/mainline/plays/[playId]/progress
/mainline/plays/[playId]/story
/mainline/plays/[playId]/pokedex
/mainline/plays/[playId]/collectibles
```

`/mainline/plays/[playId]` is the Play Hub.

Deep routes manage one focused play concern at a time.

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

Generation page can show:

- Games in that generation.
- User plays/plans for that generation.
- Generation-level stats.

Game page can show:

- Game details.
- Available Pokedexes and optional content.
- User plays for that game.
- User plans for that game.
- Create play action.
- Create plan action.

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
Codex -> Generations -> Generation -> Game -> Create Play
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

## Routing Principles

- Top-level routes should represent modules.
- Module views should belong to their active module instead of appearing as global navbar peers.
- Nested play routes should represent play-specific tasks.
- Codex routes should provide context and discovery, not be required funnels.
- Plan routes should not be nested under plays because plans can exist before plays.
- Collection and Stats should be derived from user data rather than manually maintained.
- Future app modules may introduce their own route trees, but the `mainline` product family and Mainline workspace are the first build target.
