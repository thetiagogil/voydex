# Navigation And Routes

This document defines the product navigation and route contract. Current route
availability belongs in [Project Status](../project-status.md); `src/app` and
route configuration remain implementation evidence.

## Navigation Model

Voydex uses module-aware navigation:

- The Voydex logo returns to the product entry point.
- A module switcher moves between focused workspaces.
- View links belong to the active module.
- Account and global settings remain outside product modules.

Mainline is the playthrough workspace. Codex is the shared reference browser.
The active module cookie may choose a default destination, but explicit URLs
determine the rendered module and authorization still happens at server
boundaries.

## Module Views

Mainline owns:

- Dashboard.
- Plays and the Play Hub.
- Plans.
- Collection.
- Stats.

Codex owns:

- Pokémon browse and game-scoped detail.
- Games, game detail, and game Pokedex browsing.

Only implemented views should appear in navigation. Generations remain useful
reference/filter context; they are not currently a required top-level view.

## Route Families

```txt
/mainline
  /dashboard
  /plays
    /new
    /[playId]
  /plans
  /collection
  /stats

/codex
  /pokemon
    /[gameSlug]/[speciesSlug]
  /games
    /[gameSlug]
    /[gameSlug]/pokedexes/[pokedexSlug]

/settings
```

This is the accepted route family, not evidence that every route is mounted.
Thin route adapters compose feature-owned page entry points.

## Primary Entry Flows

### Continue A Play

```txt
Mainline Dashboard or Plays -> Play Hub
```

### Create A Play

```txt
Mainline Dashboard or Plays -> Select Game -> Play Hub
```

Codex may also hand game context to this flow, but browsing is never a required
funnel.

### Plan A Team

```txt
Mainline Plans -> Select Game -> Plan Detail -> Create Play Later
```

Creating a play keeps the plan and starts with an empty current roster.

### Use Codex Context

```txt
Codex Pokémon Detail -> Mainline action -> Mainline validation and mutation
```

Future actions include add to plan, add to team, start plan, mark as target,
and check availability. Codex supplies selected reference context; it does not
own durable gameplay/planning state.

## Routing Principles

- Top-level product routes represent modules or global account areas.
- Play-specific tasks remain under the owning play.
- Plans are not nested under plays because they can exist independently.
- Compatibility routes redirect rather than duplicate feature logic.
- Protected destinations preserve a validated `next` path through login.
- Route helpers and product contracts never imply implementation status.
