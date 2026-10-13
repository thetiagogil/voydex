# Navigation And Routes

This document defines the product navigation and route contract. Current route
availability belongs in [Project Status](../project-status.md); `src/app` and
route configuration remain implementation evidence.

## Navigation Model

Voydex has two modules: Mainline, the playthrough workspace, and Codex, the
shared reference browser. Account and global settings stay outside both. The
app shell (`src/features/app-shell`) draws v3's bars; there is no module
switcher.

### Signed In

- **Top bar (desktop, `lg` and up):** the "V" tile on the left links to `/`.
  Mainline's implemented sections sit centred (today only Plays). The Codex
  link and your account icon sit on the right. The Codex link is bold while
  you are anywhere under `/codex`.
- **Account menu:** your email, Settings (`/settings`) and Log out at the
  foot.
- **Bottom bar (phones and tablets, below `lg`):** the centred sections move
  to a fixed bar on the bottom edge: Plays, Codex and You. You opens the same
  account menu upward until a You page exists. The current item takes the
  soft action tint. Toasts sit above the bar.
- v3 also draws Home, Team Planner, Statistics and Collection in the bar.
  Each joins only when its view ships in `src/config/modules.ts`; nothing
  appears as a speculative `Coming soon` entry.

### Signed Out

- **Top bar:** the "V" tile with the Voydex name, then How it works (`/intro`)
  and Codex centred, and Log in on the right. On phones the two links fold
  into a menu behind one icon beside Log in.
- The signed-out frame ends on the quiet site footer (name, catchphrase, How
  it works, Codex and the fan-project notice).
- Protected destinations send you to Log in and keep the intended
  destination.

### Inside A Module

- **Codex pages** start with the Codex head: the book and "Codex", the
  `[Pokémon | Games]` switch, then the path to the current page (for example
  `Codex [Pokémon | Games] / Sword and Shield / Galar Pokédex`). The switch is
  the Codex's own section navigation; the address decides which section is
  current.
- **A Play** keeps its header and tabs (Overview, Team, Progress, History,
  Settings) under the top bar; its docked bar returns when the header scrolls
  away.

### Entry

Explicit URLs determine the rendered module, and authorization still happens at
server boundaries. Logging in and `/app` follow this precedence:

1. A validated protected destination or action-resumption target wins when the
   user is returning from authentication.
2. A signed-in user is sent to the default landing view of their last active,
   currently available module (Mainline: Plays; Codex: Pokémon).
3. Without a valid module preference, entry falls back to the Codex.
4. A signed-out user receives the public product entry experience unless they
   explicitly requested a public Codex URL.

Remember the last module rather than an arbitrary deep route. The proxy keeps
the active module cookie in step with the module of each visited route. Each
present or future module owns a stable default landing view, so a future
Pokopia-only user can enter Pokopia without passing through Mainline. An
unavailable, retired, or unauthorized module preference falls back safely
instead of producing a broken entry flow. Whether the preference must also
follow a user across browsers or devices remains a product and data design
question; it is not yet a confirmed database requirement.

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
      /team
        /plan
        /analysis
        /history
      /progress
        /story
        /pokedex
        /pokedex/[pokedexSlug]
        /collectibles
        /collectibles/[collectibleGroupSlug]
      /history
      /settings
  /plans
    /new
    /[planId]
  /collection
    /[speciesSlug]
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
Plans Hub keeps Team Plans and Game List as URL-backed sibling views under
`/mainline/plans`; the exact query or nested-route representation may follow the
established routing pattern during implementation, but it must preserve the
active view on navigation and return.

Pokémon Browse keeps its exact game, search, filters, sort, and loaded-result
position in validated URL state under `/codex/pokemon`. Opening a species always
uses the exact active context in
`/codex/pokemon/[gameSlug]/[speciesSlug]`. Back or an explicit return to Browse
restores criteria, result position, scroll, and useful focus.

Games Browse keeps Search, Generation, Game type, Region, and Platform in
validated URL state under `/codex/games`. Opening an exact game uses
`/codex/games/[gameSlug]`; returning restores criteria, scroll, and useful
focus. The catalogue keeps deterministic generation and release ordering
rather than adding a V1 Sort route state.

Game Pokédex uses
`/codex/games/[gameSlug]/pokedexes/[pokedexSlug]` as the complete public scope.
The selected named Pokédex is route identity, not a hidden filter. Search,
Type, optional Sort, and loaded-result position use validated URL state.
Switching between a game's Base or optional-content Pokédexes preserves valid
criteria and resets only invalid position state. Returning to Game Detail or
opening exact-game Pokémon Detail preserves the useful origin for navigation
and focus recovery.

When no exact game appears in a Pokémon route or validated Browse URL, resolve
Codex Game Context from the last exact game selected in the current Codex
browser session, then fall back to a deterministic latest supported seeded V1
Mainline game. A species-only compatibility route redirects through the same
resolver. The selected exact game remains visible and is never silently changed
to make a species available. Cross-session or cross-device persistence is a
later convenience, not a V1 routing or database requirement.

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
Create Plan may also resume with game and Pokémon/form context from Codex or
with a fixed game and owning Play context from a Play that has no linked Plan.
Standalone Plan Detail owns reusable authoring. The active Team tab owns a
linked Play's automatic read-only comparison; V1 adds no separate comparison
route or manual association actions.

### Use Codex Context

```txt
Codex Game Detail -> Start Play, Create Plan, or Add to Game List
  -> Mainline-owned flow
Codex Pokémon Detail -> Use in Mainline -> Mainline handoff
```

These actions require authentication. If login is needed, the selected game,
Pokémon, form, content scope, and intended action must survive the redirect so
the user can resume the flow.

Game Detail uses `Start a Play` as the primary action. It resumes Create Play
with fixed game context and ends at the new Play Overview. `Create a Plan`
resumes concise Draft creation and ends at Plan Detail. `Add to Game List`
creates or edits the one existing game-intent row and may return to the same
Game Detail with confirmation and a Game List link. Cancellation or recoverable
failure returns to the exact source Detail without partial user data.

`Use in Mainline` may continue to Add to an existing or new Plan, Add to an
eligible Play, Check in a selected Play without writing, or View the species in
Collection. Create Plan is part of Add to Plan rather than a duplicate
top-level action. Cancellation or failure returns to the same game-scoped
Pokémon Detail context.

### Authenticate Or Recover

```txt
Protected destination or Codex action
-> /login with validated destination, intent, and public origin
-> Log in or Create account
-> email confirmation when required
-> owning protected flow revalidates and resumes
```

`/login` owns Log in and Sign up modes plus focused recovery, Check Email, and
new-password states. These may use validated query or callback state without
adding separate top-level routes. A signed-in request to Login redirects to the
validated destination or normal app entry.

Login renders a human-readable intent preview but never trusts the preview as
mutation authority. External, protocol-relative, expired, malformed, or
unsupported continuation targets fall back safely. A cancelled interrupted
action returns to its exact public origin when valid; direct Login returns Home.

An expired session returns to Login with an explicit reason and validated read
destination. It never automatically replays a mutation after reauthentication.
Recovery links return through `/auth/callback` and continue to the focused
new-password state or Settings Account after validation.

Codex supplies reference context; Mainline selects the destination, validates
ownership, roster capacity, reuse policy, availability, form validity,
optional content, and plan/play state, then owns the mutation. Planned V1
actions are defined in the [Feature Contract](./feature-contract.md). Later
recommendation and target concepts remain in the [Backlog](./backlog.md).

## Routing Principles

- Top-level product routes represent modules or global account areas.
- Play-specific tasks remain under the owning play.
- Team Analysis remains a focused child of Play Team and keeps Team as the
  active Play section.
- Team is a compound primary destination. Its parent route opens Team Roster;
  Plan, Analysis, and the Team History projection are route-backed child views
  selected as `Plan`, `Analysis`, and `History` from the attached Team menu
  while the shared Play shell remains visible.
- Progress owns only Story, Pokédex, and Collectibles. Its parent route opens
  Story, the always-supported default destination. The attached Progress menu
  switches directly between the three route-backed child views while Progress
  remains active; it does not list an Overall destination. Named Pokédex and
  Collectible-group selectors stay inside their owning child views.
- The contextual Team Plan comparison is a focused view inside the active Team
  section at `/mainline/plays/[playId]/team/plan`. The Play shell and primary
  navigation remain visible.
- Focused Team History lives at
  `/mainline/plays/[playId]/team/history`. Every breakpoint keeps the full
  read-only event record inline; the timeline does not add a contextual sheet,
  another route, or another navigation level.
- History event details remain contextual sheets within the active Play History
  tab in V1. They do not require a separate route or a second navigation level.
- Settings uses local sections inside the active Play Settings tab. General,
  Completion & Tracking, Rules & Tags, and Play Status & Management do not
  require separate V1 routes.
- Standalone Plans and their reusable authoring routes remain under the Plans
  module because they can exist independently. The contextual comparison does
  not add another primary Play tab or V1 route.
- Global Settings remains one `/settings` route with Profile, Preferences, and
  Account sections. V1 does not add section routes or tabs.
- Public not-found states keep the public shell. Protected resource-not-found
  and permission states keep the authenticated shell and return to the nearest
  owning library without exposing inaccessible resource existence.
- Compatibility routes redirect rather than duplicate feature logic.
- Protected destinations preserve a validated `next` path through login.
- Route helpers and product contracts never imply implementation status.
- The Play navigation always exposes the accepted five-area hierarchy so users
  can understand its shape before every workflow is mounted. Implemented
  destinations are links; planned destinations remain visibly disabled until
  their route content is ready.
