# Navigation And Routes

This document defines the app navigation model and route contract.

## Navigation Model

Voydex should have independent top-level workspaces and dependent context routes.

The app should not force a single linear flow. `Generations -> Games -> Plays` remains a browse path, but the user can create and reach plays directly.

This document describes the target navigation contract. The current app has placeholder protected pages for the top-level workspaces while the data-backed feature screens are being built.

## Main Navbar

Primary links:

- Dashboard
- Plays
- Plans
- Pokedex
- Collection
- Stats
- Browse

`Browse` is a dropdown containing:

- Generations
- Games

Current implementation note: Generations and Games may temporarily appear as direct navbar links until the final Browse dropdown is implemented.

## Profile Menu

Profile menu links:

- Profile
- Preferences
- Account
- Sign out

## Route Tree

### Dashboard

```txt
/dashboard
```

Home after login. Shows recent plays, quick actions, recent activity, and summary stats.

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

### Pokedex

```txt
/pokedex
/pokedex/[speciesSlug]
```

Global reference/search/planning surface.

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

### Browse

```txt
/generations
/generations/[generationId]
/games
/games/[gameSlug]
```

Browse pages are contextual discovery pages.

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
/settings/profile
/settings/preferences
/settings/account
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
Browse -> Generations -> Generation -> Game -> Create Play
```

### Create Plan

```txt
Dashboard or Plans -> New Plan -> Select Game -> Plan Detail
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
Pokedex -> Pokemon Detail -> Add To Plan
```

## Routing Principles

- Top-level routes should represent user workspaces.
- Nested play routes should represent play-specific tasks.
- Browse routes should provide context and discovery, not be required funnels.
- Plan routes should not be nested under plays because plans can exist before plays.
- Collection and Stats should be derived from user data rather than manually maintained.
- Future app modules may introduce their own module-specific route trees, but the `core` module routes above are the first build target.
