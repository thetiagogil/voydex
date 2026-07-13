# Navigation And Routes

This document defines the product navigation and route contract. Current route
availability belongs in [Project Status](../project-status.md); `src/app` and
route configuration remain implementation evidence.

## Navigation Model

Voydex uses module-aware navigation:

- The Voydex logo returns to the product entry point, which resolves the
  appropriate destination instead of always opening Mainline.
- A module switcher moves between focused workspaces.
- View links belong to the active module.
- Account and global settings remain outside product modules.

The module switcher shows every released and available module. Signed-out users
still see protected modules, but those entries have a clear locked or login
state and preserve the intended destination through authentication. Planned or
unreleased modules do not appear as speculative `Coming soon` entries.

Mainline is the playthrough workspace. Codex is the shared reference browser.
Explicit URLs determine the rendered module, and authorization still happens at
server boundaries. The general product entry follows this precedence:

1. A validated protected destination or action-resumption target wins when the
   user is returning from authentication.
2. A signed-in user is sent to the default landing view of their last active,
   currently available module.
3. If no valid module preference exists, V1 falls back to Mainline Dashboard.
4. A signed-out user receives the public product entry experience unless they
   explicitly requested a public Codex URL.

Remember the last module rather than an arbitrary deep route. Each present or
future module owns a stable default landing view, so a future Pokopia-only user
can enter Pokopia without passing through Mainline. An unavailable, retired, or
unauthorized module preference falls back safely instead of producing a broken
entry flow.

The active module cookie can support this behavior in V1. Whether the preference
must also follow a user across browsers or devices remains a product and data
design question; it is not yet a confirmed database requirement.

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
Codex Game Detail -> Authenticate when needed -> Create Play with game context
  -> Play Hub
```

Codex is an optional contextual entry, never a required funnel.

### Plan A Team

```txt
Mainline Plans -> Select Game -> Plan Detail -> Create Play Later
Codex Game Detail -> Authenticate when needed -> Create Plan with game context
  -> Plan Detail
```

Creating a play keeps the plan and starts with an empty current roster.

### Use Codex Context

```txt
Codex Game Detail -> Start Play or Start Plan -> Mainline create flow
Codex Pokémon Detail -> Add to Plan or Add to Play -> Mainline handoff
```

These actions require authentication. If login is needed, the selected game,
Pokémon, form, content scope, and intended action must survive the redirect so
the user can resume the flow.

Codex supplies reference context; Mainline selects the destination, validates
ownership, roster capacity, reuse policy, availability, form validity,
optional content, and plan/play state, then owns the mutation. Planned V1
actions are defined in the [Feature Contract](./feature-contract.md). Later
recommendation and target concepts remain in the [Backlog](./backlog.md).

## Routing Principles

- Top-level product routes represent modules or global account areas.
- Play-specific tasks remain under the owning play.
- Plans are not nested under plays because they can exist independently.
- Compatibility routes redirect rather than duplicate feature logic.
- Protected destinations preserve a validated `next` path through login.
- Route helpers and product contracts never imply implementation status.
