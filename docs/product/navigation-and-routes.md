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

Planned Mainline views:

- Plays
- Plans
- Collection
- Stats

Current Codex views:

- Pokemon
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
```

`/app` reads the `voydex-active-module` cookie and redirects to the active module's default route.

`/mainline` redirects to `/mainline/dashboard`.

Dashboard is a Mainline view, not a top-level app module. It shows recent plays, quick actions, recent activity, and summary stats.

### Codex

```txt
/codex
/codex/pokemon
/codex/pokemon/[speciesSlug]
/codex/games
/codex/games/[gameSlug]
/codex/generations
/codex/generations/[generationId]
```

Codex is the public-readable reference/search/planning surface. It is a frontend app module, not a database product family.

Old public browse routes such as `/pokedex`, `/games`, and `/generations` should redirect into `/codex/...` while those redirects are useful.

### Plays

```txt
/plays
/plays/new
/plays/[playId]
/plays/[playId]/team
/plays/[playId]/story
/plays/[playId]/collectibles
/plays/[playId]/pokedex
/plays/[playId]/timeline
/plays/[playId]/settings
```

`/plays/[playId]` is the Play Hub.

Deep routes manage one focused play concern at a time.

### Plans

```txt
/plans
/plans/new
/plans/[planId]
```

Plans are separate from plays. A plan can later create or link to a play.

### Collection

```txt
/collection
/collection/[playPokemonId]
```

Collection is based on Pokemon the user has used in plays.

The detail route is optional and may be deferred, but the model should support a user-owned Pokemon history detail page.

### Stats

```txt
/stats
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

The play starts with an empty current team. Planned Pokemon remain available as a reference.

### Add Planned Pokemon To Play

```txt
Play Team -> Planned Pokemon Panel -> Add To Team -> Suggested Starting Stage -> Current Team
```

### Search For Pokemon

```txt
Codex -> Pokedex -> Pokemon Detail -> Add To Plan
```

## Routing Principles

- Top-level routes should represent modules.
- Module views should belong to their active module instead of appearing as global navbar peers.
- Nested play routes should represent play-specific tasks.
- Codex routes should provide context and discovery, not be required funnels.
- Plan routes should not be nested under plays because plans can exist before plays.
- Collection and Stats should be derived from user data rather than manually maintained.
- Future app modules may introduce their own route trees, but the `mainline` product family and Mainline workspace are the first build target.
