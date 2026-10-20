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

- **Top bar (desktop, `lg` and up):** the "V" tile on the left links to
  Mainline Home (`/mainline`). Mainline's views sit centred in module order:
  Home, Plays, Team Planner (`/mainline/plans/new`, current anywhere under
  `/mainline/plans`), Statistics and Collection. The Codex menu and your
  account icon sit on the right. The Codex menu (its name, no icon) opens
  the Codex's pages, Pokémon and Games, as a Play's Team and Progress tabs
  open theirs; it is bold while you are anywhere under `/codex`.
- **Account menu:** your name and when you became a trainer, Settings
  (`/settings`) and Log out at the foot.
- **Bottom bar (phones and tablets, below `lg`):** Home, Plays, Planner,
  Codex and You on a fixed bar along the bottom edge. Codex opens the same
  Pokémon and Games menu upward. You opens `/you` (the
  trainer card, Statistics, Collection, Settings and Log out) and stays
  current on You, Settings, Welcome, Statistics and Collection. The current
  item takes the soft action tint. Toasts sit above the bar.
- Mainline's views come from `src/config/modules.ts`; nothing appears as a
  speculative `Coming soon` entry.

### Signed Out

- **Top bar:** the "V" tile with the Voydex name (the word drops on narrow
  phones), then How it works (`/intro`) and the Codex menu centred, and Log
  in on the right. On phones the links fold into a menu behind one icon
  beside Log in; it leads with Start a Play (`/start`), then How it works,
  then the Codex's Pokémon and Games under its name.
- The signed-out frame ends on the quiet site footer (name, catchphrase, How
  it works, Codex, Log in, Privacy, Terms and the fan-project notice).
- Protected destinations (`/mainline`, `/settings`, `/welcome`, `/you` and
  everything under them) send you to `/login?next=[path and query]`: the
  proxy redirects first, and the protected layout checks again from the path
  the proxy forwards, so you return where you were going.

### Inside A Module

- **Codex pages:** the Pokémon and Games lists open on their own title; the
  bar's Codex menu moves between them, since every module will bring its own
  Codex pages. A page inside a list starts with the path back to it (for
  example `Games / Sword and Shield / Galar Pokédex`).
- **A Play** keeps its header and tabs (Overview, Team, Progress, History,
  Settings) under the top bar; its docked bar returns when the header scrolls
  away.

### Entry

Explicit URLs determine the rendered module, and authorization still happens at
server boundaries. Logging in and `/app` follow this precedence:

1. A validated protected destination or action-resumption target wins when the
   user is returning from authentication.
2. A signed-in user is sent to the default landing view of their last active,
   currently available module (Mainline: Home at `/mainline`; Codex:
   Pokémon).
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

- Home (`/mainline`).
- Plays, New Play and the Play Hub.
- Plans: the Team Planner and My Plans.
- Collection.
- Statistics.

Codex owns:

- Pokémon browse and game-scoped detail.
- Games, game detail, and game Pokedex browsing.

Only implemented views should appear in navigation. Generations remain useful
reference/filter context; they are not currently a required top-level view.

## Route Families

```txt
/                       site Home
/intro
/start                  Start a Play: ?game=, ?partner=, ?gen=
/privacy, /terms

/login                  ?mode=sign-up, ?next=, ?game=, ?partner=
/forgot-password        ?sent=
/reset-password         where the reset link lands
/check-email            after a sign-up that needs its email confirmed
/auth/callback          every email link

/mainline               Home: ?play= puts one of your Plays on the meadow,
                        ?new= opens New Play over it (a game slug, or 1),
                        with ?partner= its first partner already picked
  /plays                ?view=archived lists archived Plays, each with Restore
    /[playId]
      /team             ?pokemon=, ?add= (with ?form=)
        /plan
        /analysis       ?reading=story
      /progress         redirects to Story
        /story          ?record=
        /pokedex
        /collectibles
      /history
      /settings
  /plans                My Plans
    /new                the Team Planner on a blank Plan: ?vg=
    /[planId]           ?vg=
  /stats
  /collection           ?species=

/codex
  /pokemon
    /[speciesSlug]
    /[versionGroupSlug]/[speciesSlug]
  /games
    /[versionGroupSlug]
    /[versionGroupSlug]/pokedexes/[pokedexSlug]

/settings
  /export               your rows as one JSON file
/welcome                first run after sign-up
/you
```

`src/config/routes.ts` builds every address. Thin route adapters compose feature-owned page entry points. Every
route above is mounted. The Game List from the [Feature Contract](./feature-contract.md)
has no route yet.

The Codex reads by **version group**: a base group (Sword and Shield) with its
expansions' child groups (The Isle of Armor, The Crown Tundra) included. Every
version-group segment resolves through one rule
(`resolveVersionGroupRoute` in the reference module): a base group's slug is
canonical; a game's slug or a child group's slug redirects permanently (308)
to its base group; an unknown slug is a 404. Route layouts settle the 404 or
redirect before the loading state streams.

Pokémon Browse lives at `/codex/pokemon` (a stray query redirects to the bare
path). Each species card opens
`/codex/pokemon/[versionGroupSlug]/[speciesSlug]` in the first base group of
the generation it was introduced in. A persistent form rides as `?form=`. An
entry in a group from before the species existed, and
`/codex/pokemon/[speciesSlug]`, open the introduced generation's first base
group the species can be found in (Legends: Arceus for Wyrdeer, Let's Go for
Meltan), the same rule as the entry's generation pills. On
`/codex/pokemon/[speciesSlug]`, a legacy `?game=` or `?versionGroup=` names
the group instead and a legacy `?generation=` the generation, when the
species exists there. A layout cannot read the query, so the 308 from an old
game address opens the default form. Back or an explicit return to Browse
should restore criteria, result position, scroll, and useful focus.

Games Browse keeps Search (`q`) and the kind of game (`kind`) in URL state
under `/codex/games`. A game opens its version group's page,
`/codex/games/[versionGroupSlug]?version=[gameSlug]`, with that game picked in
the version switch; an unknown `version` falls back to the group's first game.
An old game address redirects there, keeping the game it named.

Game Pokédex uses
`/codex/games/[versionGroupSlug]/pokedexes/[pokedexSlug]` as the complete
public scope; its expansions' Pokédexes and its own National Pokédex (386 in
Ruby and Sapphire) appear under the base group, National last. The
selected named Pokédex is route identity, not a hidden filter; an unknown
Pokédex is a 404. Search, Type, optional Sort, and loaded-result position
should use validated URL state. Switching between a group's base or
expansion Pokédexes preserves valid criteria and resets only invalid position
state. Returning to the version group's page or opening a Pokémon's entry in
that group preserves the useful origin for navigation and focus recovery.

Cross-session or cross-device persistence of a Codex context is a later
convenience, not a V1 routing or database requirement.

## Primary Entry Flows

### Continue A Play

```txt
Mainline Home (the shelf, Continue) or Plays -> Play Hub
```

### Create A Play

```txt
Mainline Home (no Plays: the game picker) -> Start -> Play Hub
Plays or Home -> New Play dialog (game, partner, details) -> Play Hub
Codex game page -> Start a {Version} Play -> New Play dialog over the page, game picked
Start a Play (game, partner), signed out -> Sign up or Log in
  -> Welcome -> Mainline Home offers that Play
Start a Play, signed in -> New Play with the game and partner picked
  (/mainline?new=&partner=)
```

Codex is an optional contextual entry, never a required funnel.

### Plan A Team

```txt
Team Planner (/mainline/plans/new) -> Save -> /mainline/plans/[planId]
My Plans -> a Plan -> Team Planner
A Play's Team -> Plan -> Follow a Plan, or Plan a team (the Planner on the
  Play's version group)
```

Creating a Play from a Plan is not built. A Play follows at most one Plan; its
Team menu's `Plan` reads the automatic comparison.

### Use Codex Context

```txt
Codex game page -> Your Plays -> Start a {Version} Play -> New Play dialog, then the new Play
Codex game page -> Your Plays -> a Play of this version group
Codex Pokémon entry -> Add to a Play -> that Play's Roster with Add Pokémon
  open on the species (?add=, ?form=)
Codex Pokémon entry -> In your Plays -> a Play's Roster on that Pokémon
```

The Codex routes draw these pieces from Mainline through the Codex's
signed-in slots; signed out they don't appear. Still accepted but not built:
Create a Plan and Add to Game List from a game page, and Add to Plan or View
in Collection from an entry, each resuming through login with its context and
returning to the same Codex page on cancel or failure without partial user
data.

### Authenticate Or Recover

```txt
Protected destination -> /login?next=[path] -> Log in -> the destination
Start a Play -> /login?mode=sign-up&game=&partner= -> Sign up
  -> /welcome (or /check-email, whose link returns through /auth/callback
     to /welcome)
Log in -> Forgot password -> /forgot-password (sent state)
  -> the email's link -> /auth/callback -> /reset-password -> next
```

`/login` owns Log in and Sign up (`?mode=sign-up`). Reset your password
(`/forgot-password`), Choose a new password (`/reset-password`) and Check your
email (`/check-email`) are their own routes; `?next=` and the Start a Play
pick (`?game=`, `?partner=`) travel through all of them. A signed-in request
to Login redirects to the validated destination or normal app entry.

The pick from Start a Play is stored on the account (user metadata
`voydex_intent`), so a confirmation link opened on another device still
carries it; Mainline Home offers to start that Play, then clears it. It is
only a wish: New Play's command validates the game and partner again.

Every email link returns through `/auth/callback`: a sign-up confirmation
continues to Welcome, a reset to `/reset-password`, an email change to
Settings. A failed or expired reset link returns to `/forgot-password` with
its reason; any other failed link to Log in. External, protocol-relative,
malformed or unsupported continuation targets fall back safely.

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
  Plan and Analysis are route-backed child views selected from the attached
  Team menu while the shared Play shell remains visible. The Roster takes
  `?pokemon=[playPokemonId]` (`appRoutes.mainlinePlayTeamPokemon`) to open with
  that Pokémon selected, as an Overview sticker links; on phones and tablets
  its detail sheet opens straight away. `?add=` opens Add Pokémon, on one
  species (and `?form=`) when given (`appRoutes.mainlinePlayTeamAdd`).
- Team Analysis reads Overall by default; `?reading=story` opens Story
  matchups.
- Progress owns only Story, Pokédex, and Collectibles. Its parent route opens
  Story, the always-supported default destination. The attached Progress menu
  switches directly between the three route-backed child views while Progress
  remains active; it does not list an Overall destination. Named Pokédex and
  Collectible-group selectors stay inside their owning child views.
- The contextual Team Plan comparison is a focused view inside the active Team
  section at `/mainline/plays/[playId]/team/plan`. The Play shell and primary
  navigation remain visible.
- History is the Play's History tab at `/mainline/plays/[playId]/history`;
  its search and its Story, Team, Notes and Status filters are local state. Team History is
  retired: its old address is gone and its events are History's Team filter.
- Settings is one route with four local cards (General, Tracking, Challenge
  rules, Archive or delete); they add no routes.
- An archived Play leaves Home and the Plays list but keeps its address: its
  Hub opens with a quiet "Archived" note and Restore, and Plays links to an
  Archived list (`/mainline/plays?view=archived`) where each Play restores.
- Standalone Plans live under `/mainline/plans` because they exist without a
  Play. The contextual comparison does not add another primary Play tab.
- Global Settings remains one `/settings` page (the trainer card, Look and
  feel, New Play defaults, Account, Your data); there is no data export.
  On phones `/you` gathers the trainer card, Statistics, Collection
  and Settings.
- Public not-found states keep the public shell. Protected resource-not-found
  and permission states keep the authenticated shell and return to the nearest
  owning library without exposing inaccessible resource existence.
- Compatibility routes redirect rather than duplicate feature logic.
- Protected destinations preserve a validated `next` path through login.
- Route helpers and product contracts never imply implementation status.
- The Play navigation always exposes the five areas: Overview, Team, Progress,
  History and Settings. Collectibles appears in the Progress menu only for a
  game that has them.
