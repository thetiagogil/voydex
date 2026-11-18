# Navigation And Routes

This document defines the product navigation and route contract. Current route
availability belongs in [Project Status](../project-status.md); `src/app` and
route configuration remain implementation evidence.

## Navigation Model

Voydex has two modules: Mainline, the playthrough workspace, and Codex, the
shared reference browser. Account and global settings stay outside both. The
app shell (`src/features/app-shell`) draws v3's bars; there is no module
switcher.

### The App Frame

The app opens for everyone: your data lives on this device
([ADR 0008](../decisions/0008-user-data-on-the-device.md)), and signing in is
only for backups. Mainline, Settings, You and the Codex take this frame.

- **Top bar (desktop, `lg` and up):** the "V" tile on the left links to
  Mainline Home (`/app`). The sections sit centred as one row: Home,
  Plays, Team Planner, Statistics, Collection and the Codex, and your
  account icon sits on the right. Home, Plays and Statistics are links.
  Team Planner, Collection and the Codex (a name, no icon) each open a
  menu of their pages, as a Play's Team and Progress tabs open theirs, so
  every page is one step away: Team Planner (`/app/planner`) and My Plans
  (`/app/plans`); the Collection's Pokémon, Favourites and Games
  (`/app/collection`, `?view=favourites`, `?view=games`); the Codex's
  Pokémon and Games. A name is bold while you are on any of its pages,
  and its menu marks the page you are on.
- **Account menu:** Library (`/app/library`, your rules and tags),
  Settings (`/app/settings`), Log in (back up your Plays to an
  account) or, once you've signed in, Log out, and Leave the app.
- **Bottom bar (phones and tablets, below `lg`):** Home, Plays, Planner,
  Codex and You on a fixed bar along the bottom edge. Codex opens the same
  Pokémon and Games menu upward. You opens `/app/you` (the
  trainer card, Statistics, Collection, Library, Settings, Leave the app and Log in, or
  Log out once you've signed in) and
  stays current on You, Settings, Library, Statistics and
  Collection. The current
  item takes the soft action tint. Toasts sit above the bar.
- Mainline's views come from `src/config/modules.ts`; nothing appears as a
  speculative `Coming soon` entry.

### The Site Frame

The website is one page, the front page (`/`), with Privacy, Terms and the
log-in pages beside it. Everything else is the app.

- **The front page:** built as every page of the app is, a bar on a band
  with the page under it, and outside the app the band is the action red
  (the door is red, the app is quiet). The band holds what Voydex is as
  its title ("A Pokédex for your playthroughs."), one paragraph and one
  white button beside an example Play, drawn as
  one of Voydex's own cards (cover, status, progress, team, badges). Its
  button reads Start a Play and opens the app (`/app`), whose Home asks
  which game you are playing. Under the band: How it works
  (`/#how-it-works`): three numbered steps, with one Play followed through
  them and its partner growing along the way, then the Team Planner and the Codex in two small cards.
  Then Install (`/#install`): one quiet card with a drawn phone's Home
  Screen, Voydex's icon among blank ones, beside the two ways to put it
  there (iPhone and iPad; Android and computer) as numbered steps. The
  example Play throughout is a Pokémon Red run. The bar's links glide to
  their parts.
- **Top bar:** the site takes the app's own bar: the "V" tile with the
  Voydex name, How it works and Install centred, and Log in on the right.
  On Privacy and Terms it is the quiet pill on the page's ground (the word
  drops on narrow phones). On the red band it is part of the red: no pill,
  white words and a white V tile on the band's darker top, which is as
  thin as the bar and steps down a little on the left. The name is in the
  bar on every page, so no page's title repeats it; the log-in pages drop
  Log in. The V always leads to the start page.
- **The log-in pages** follow the same pattern: the red band with the
  page's title and one line at its left, where every page puts its title,
  and Go back at the end of that row; below the band the form sits on one
  quiet card, centred.
- The site frame ends on the quiet site footer: a rule across the full
  width, then the "V" mark and the name, the tagline, How it works,
  Install, Codex, Log in, Privacy, Terms and the fan-project notice.
- **Coming back:** a device that has opened the app (Mainline, Settings or
  You) skips the front page: `/` sends it to Home (`/app`). A
  Codex visit alone doesn't count. A link to one of the front page's parts
  still shows it, with Continue in place of Start a Play; Settings' About
  Voydex links there.
- **Leave the app** (the account menu, and You on phones) goes back to the
  front page and stops the skip, so `/` shows the front page again, with
  Continue, until you continue from it. Nothing on the device changes: your
  Plays stay.
- **The start screen:** the app's pages (`/app`, `/app/settings`, `/app/you`
  and everything under them) open on this device's data behind one short
  start screen, alone on the page with no bars, while its database opens
  and every tab gets ready, so the bars appear with a working app and
  changing tabs afterwards never waits. Nothing sends you to log in.

### Inside A Module

- **Codex pages:** the Pokémon and Games lists open on their own title; the
  bar's Codex menu moves between them, since every module will bring its own
  Codex pages. A page inside a list starts with the path back to it (for
  example `Games / Sword and Shield / Galar Pokédex`).
- **A Play** keeps its header and tabs (Overview, Team, Progress, History,
  Settings) under the top bar; its docked bar returns when the header scrolls
  away.

### Entry

The address says where you are: the website is `/` (with Privacy, Terms and
the log-in pages beside it), and the app is everything under `/app`, the
Codex included. `/app` is Home.

1. A validated destination wins when you return from logging in
   (`/login?next=`): the app page that sent you there.
2. Otherwise logging in, signing up and the front page's skip all land on
   Home (`/app`).
3. Only addresses under `/app` (and the reset page) are accepted as a
   destination; anything external, malformed or outside the app falls back
   to Home.

A later module (a second game family) takes its own prefix under `/app`;
today's pages stay where they are.

## Module Views

Mainline owns:

- Home (`/app`).
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
/                       the front page: #how-it-works, #install
/privacy, /terms

/login                  ?next= (Log in only; there is no Sign up for now)
/forgot-password        ?sent=
/reset-password         where the reset link lands
/auth/callback          every email link

/app                    Home: ?play= puts one of your Plays on the meadow,
                        ?new= opens New Play over it (a game slug, or 1),
                        with ?partner= its first partner already picked
  /plays                ?view=archived lists archived Plays, each with Restore
    /play               ?id= names the Play, on every view below
      /team             ?pokemon=, ?add= (with ?form=)
        /plan
        /analysis
      /progress         redirects to Story
        /story          ?record=
        /pokedex
        /collectibles
      /history
      /settings
  /planner              the Team Planner on a blank Plan: ?vg=
  /plans                My Plans
    /plan               ?id= names the Plan, ?vg=
  /statistics
  /collection           ?species=
  /library              ?tab=rules|tags
  /settings
  /you
  /codex
    /pokemon
      /[speciesSlug]    ?game= names the base group, ?form=
    /games
      /[versionGroupSlug]
      /[versionGroupSlug]/pokedexes/[pokedexSlug]
```

`src/config/routes.ts` builds every address. Thin route adapters compose feature-owned page entry points. Every
route above is mounted, and every page is a plain file made at build time
([ADR 0009](../decisions/0009-app-as-plain-files.md)): an id the build can't
know (a Play, a Plan) rides in the query, and the Codex has one page per
Pokémon, base game and Pokédex. The Game List from the [Feature Contract](./feature-contract.md)
has no route yet.

The Codex reads by **version group**: a base group (Sword and Shield) with its
expansions' child groups (The Isle of Armor, The Crown Tundra) included. Every
version-group segment resolves through one rule
(`resolveVersionGroupRoute` in the reference module): a base group's slug is
canonical; a game's slug or a child group's slug moves on to its base group
in the browser; an unknown slug shows the not-found page.

Pokémon Browse lives at `/app/codex/pokemon` (a stray query redirects to the bare
path). Each species card opens
`/app/codex/pokemon/[speciesSlug]?game=[versionGroupSlug]` in the first base group
of the generation it was introduced in. A persistent form rides as `?form=`. A
game's or child group's slug in `?game=` moves on to its base group. An entry
in a group from before the species existed, and `/app/codex/pokemon/[speciesSlug]`
with no `?game=`, open the introduced generation's first base group the
species can be found in (Legends: Arceus for Wyrdeer, Let's Go for Meltan),
the same rule as the entry's generation pills, and the address stays as it
is. Without `?game=`, a legacy `?versionGroup=` names the group instead and a
legacy `?generation=` the generation, when the species exists there; without
those, a later `?form=` opens the first base group that form can be found in
(Hisuian Arcanine in Legends: Arceus, Partner Pikachu in Let's Go), or a
battle form's generation's first group (Mega Charizard X in X and Y).
Collection's Favourites links this way. Back or an explicit return to Browse
should restore criteria, result position, scroll, and useful focus.

Games Browse keeps Search (`q`) and the kind of game (`kind`) in URL state
under `/app/codex/games`. A game opens its version group's page,
`/app/codex/games/[versionGroupSlug]?version=[gameSlug]`, with that game picked in
the version switch; an unknown `version` falls back to the group's first game.
An old game address redirects there, keeping the game it named.

Game Pokédex uses
`/app/codex/games/[versionGroupSlug]/pokedexes/[pokedexSlug]` as the complete
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
The front page -> Start a Play -> the start screen -> Mainline Home (no Plays:
  the game picker)
```

Codex is an optional contextual entry, never a required funnel.

### Plan A Team

```txt
Team Planner (/app/planner) -> Save -> /app/plans/plan?id=
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
Codex Pokémon entry -> Add to a Play -> Add Pokémon over the entry, on the
  species and form; a toast offers Open the roster
Codex game page -> Your Plays -> Plan a team -> the Team Planner over the page,
  on that game; leaves the Codex only when the Plan is saved
Codex Pokémon entry -> In your Plays -> a Play's Roster on that Pokémon
```

The Codex routes draw these pieces from Mainline through the Codex's slots;
each reads your Plays on this device and shows once the device database is
open. Add to a Play, Plan a team and
Start a Play all open over the Codex page: closing one (its close button,
Escape or a tap outside) leaves you exactly where you were, and the Codex is
left only for what was created (the new Play, the saved Plan) or by choosing
Open the roster. Still accepted but not built:
Create a Plan and Add to Game List from a game page, and Add to Plan or View
in Collection from an entry, each resuming through login with its context and
returning to the same Codex page on cancel or failure without partial user
data.

### Authenticate Or Recover

```txt
Settings' Account, the account menu or You -> Log in (only for backups)
  -> /login?next=[path] -> the destination
Log in -> Forgot password -> /forgot-password (sent state)
  -> the email's link -> /auth/callback -> /reset-password -> next
```

`/login` owns Log in; Voydex makes no new accounts for now, so there is no
Sign up and no email confirmation. Reset your password (`/forgot-password`)
and Choose a new password (`/reset-password`) are their own routes; `?next=`
travels through all of them. A signed-in request to Login redirects to the validated destination or
normal app entry.

Every email link returns through `/auth/callback`: a reset continues to
`/reset-password`, an email change to Settings. A failed or expired reset link returns to `/forgot-password` with
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
- Team Analysis reads the team as a whole; how it fares in each Story battle
  lives in Story, in the battle's milestone sheet.
- Progress owns only Story, Pokédex, and Collectibles. Its parent route opens
  Story, the always-supported default destination. The attached Progress menu
  switches directly between the three route-backed child views while Progress
  remains active; it does not list an Overall destination. Named Pokédex and
  Collectible-group selectors stay inside their owning child views.
- The contextual Team Plan comparison is a focused view inside the active Team
  section at `/app/plays/play/team/plan?id=`. The Play shell and primary
  navigation remain visible.
- History is the Play's History tab at `/app/plays/play/history?id=`;
  its search and its Story, Team, Notes and Status filters are local state. Team History is
  retired: its old address is gone and its events are History's Team filter.
- Settings is one route with four local cards (General, Tracking, Challenge
  rules, Archive or delete); they add no routes.
- An archived Play leaves Home and the Plays list but keeps its address: its
  Hub opens with a quiet "Archived" note and Restore, and Plays links to an
  Archived list (`/app/plays?view=archived`) where each Play restores.
- Standalone Plans live under `/app/plans` because they exist without a
  Play. The contextual comparison does not add another primary Play tab.
- Global Settings remains one `/app/settings` page (the trainer card, Look and
  feel, New Play defaults, Account, Your data); there is no data export.
  On phones `/app/you` gathers the trainer card, Statistics, Collection,
  Library and Settings.
- The Library (`/app/library`) is not in the main bars: the account
  menu, the You page and every rule or tag picker's "Manage in Library"
  reach it.
- Site not-found states keep the site frame. An app resource that isn't on
  this device keeps the app frame and returns to the nearest owning library.
- Compatibility routes redirect rather than duplicate feature logic.
- Log in preserves a validated `next` path.
- Route helpers and product contracts never imply implementation status.
- The Play navigation always exposes the five areas: Overview, Team, Progress,
  History and Settings. Collectibles appears in the Progress menu only for a
  game that has them.
