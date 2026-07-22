# V1 Product Blueprint

This document is the breadth-first review map for the complete V1 experience.
It links accepted product contracts, exposes open design questions, and tracks
which screen families still need detailed specification.

## Current Stage

**Status: V1 functional screen contracts complete; selected visual system active**

The high-level app review is complete enough to support depth-first functional
work. The complete Play family, Plays Browse, Dashboard, standalone Plans,
Collection, Collection Pokémon Detail, Stats, Codex Pokémon Browse, and Codex
Pokémon Detail now have accepted functional direction or detailed contracts.
Pokémon reference facts are anchored to one explicit exact-game context, while
Codex remains read-only and enters Mainline through one deliberate handoff.
Codex Games, the Game-origin handoffs, Login, Global Settings, and shared system
states now have accepted functional contracts. The breadth-first and
depth-first review is complete. [V1-D113 and V1-D114](./decisions.md) preserve those
contracts while selecting the canonical
[V1 Visual Language](./visual-language.md). The shared shell, Plays Browse, Play
Overview, Play Team, linked Team Plan comparison, and the implemented Codex
views now use that visual language. Standalone Plan acquisition and authoring
remain the next planning slice.

## Product Overview

### Product Promise

**Status: Accepted in the Product Vision**

Voydex is a Pokémon companion for tracking, remembering, and planning Pokémon
playthroughs. It is a personal playthrough hub rather than a replacement for an
encyclopedia or official storage service.

The product should help a player understand:

- what they are playing and what to do next;
- what happened during each playthrough;
- which Pokémon they used, including earlier evolutions and retired members;
- what remains incomplete across story, Pokédex, and collectibles;
- what they want to play and which team they want to use next.

See [Product Vision](../../product/vision.md) for the canonical contract.

### V1 Scope And Future Direction

**Status: Accepted**

- V1 primarily covers traditional mainline and Legends-style Pokémon RPGs.
- Mainline owns the personal workflows for Plays, Plans, progress, team
  history, Collection, and Stats across those games.
- Codex is the user-facing encyclopedia for the Pokémon and games represented
  in Voydex.
- The internal `reference` module technically supplies the shared Pokémon and
  game corpus to Codex, Mainline, and future modules. Product modules do not
  depend on Codex UI or feature internals.
- Later versions may add independently modeled modules for Mystery Dungeon,
  Pokopia, Pokémon HOME, Pokémon GO, Pokémon Snap, or other Pokémon product
  families.
- Future-module possibilities should inform extensible shell and reference
  concepts, but they must not expand the V1 screen or database scope.

### Product Areas

**Status: Accepted**

| Area     | Role                                                        | Access          | Mutation ownership                                               |
| -------- | ----------------------------------------------------------- | --------------- | ---------------------------------------------------------------- |
| Mainline | Personal workspace for mainline and Legends-style games     | Authenticated   | Owns Mainline user data and validates every mutation             |
| Codex    | User-facing encyclopedia over shared Pokémon and game data  | Public browsing | Supplies context but does not own gameplay or planning mutations |
| Global   | Entry, authentication, account, settings, and system states | Mixed           | Owned by the relevant global feature                             |

The internal `reference` module supports Mainline and Codex with shared Pokémon
and game contracts. It is not a user-facing module.

### V1 Product Loop

**Status: Accepted**

```txt
Explore in Codex
-> plan an adventure
-> create or continue a play
-> manage the team and record progress
-> preserve meaningful history
-> review Collection and Stats
-> plan the next adventure
```

### V1 Design Principles

**Status: Accepted**

- Mainline should feel personal, task-oriented, and useful during a playthrough.
- Codex should be information-rich, scannable, and useful as an action entry
  point without becoming a required funnel.
- The modules should share one coherent shell while retaining recognizable
  character.
- Each context should have one clear primary action.
- Desktop and mobile behavior must be designed together.
- Loading, empty, error, permission, disabled, conflict, destructive, success,
  and signed-out states are part of the design rather than implementation
  afterthoughts.
- The complete flow should be designed before database correction and
  production frontend implementation resume.
- The V1 database pass fixes only missing or correctness-critical support for
  accepted V1 behavior; non-blocking generalization and administration belong
  to the future backlog, where every deferred improvement remains explicitly
  recorded rather than discarded.

## Navigation And Access Overview

**Status: Route families, responsive shell organization, and centered content
canvas accepted**

- The Voydex logo returns to the product entry point.
- A module switcher moves between Mainline and Codex.
- Every released module remains visible in the switcher. Protected modules show
  a clear locked/login state to signed-out users; unreleased modules stay hidden.
- View navigation belongs to the active module.
- Account and global settings remain outside product modules.
- Codex browsing is public.
- Mainline and Settings require authentication.
- A protected action started in Codex must preserve its selected context and
  resume after login.
- Explicit URLs and validated post-login resumption targets take precedence
  over remembered module behavior.
- A normal signed-in entry opens the default landing view of the last active,
  currently available module rather than always forcing Mainline.
- V1 falls back to Mainline Dashboard when no valid module preference exists.
- The remembered value is a module, not an arbitrary deep route. Each future
  module will provide its own stable default landing view.

See [Navigation And Routes](../../product/navigation-and-routes.md) for the
canonical route contract.

### Navigation Questions

- **Accepted:** V1 remembers the last active module per browser. Cross-device
  persistence remains a later convenience.
- **Accepted:** Signed-out product entry uses the concise Landing actions and
  public Codex access defined in [Global Surfaces](./global-surfaces.md).
- **Accepted:** Keep the current top-bar hierarchy on desktop and the current
  top-sheet navigation as the mobile V1 baseline. See
  [Shell And Navigation](./shell-navigation.md).
- **Accepted:** Persistent navigation owns module and stable view movement;
  task actions remain contextual to the owning surface or focused handoff.
- **Accepted:** Plays is the library of actual runs. Plans Hub contains two
  clear sibling views: Team Plans for reusable intended teams and Game List for
  independent lightweight game intent. Neither is inferred from or silently
  synchronized with Plays. See [Mainline Plans](./mainline-plans.md).

## Primary Journeys

| ID   | Journey                                                   | Current status | Detailed specification                                                 |
| ---- | --------------------------------------------------------- | -------------- | ---------------------------------------------------------------------- |
| J-01 | Enter or resume Mainline                                  | Accepted       | [Global Surfaces](./global-surfaces.md#g-03--login-and-authentication) |
| J-02 | Start a Play from Codex Game Detail                       | Accepted       | [Codex Games](./codex-games.md#start-a-play)                           |
| J-03 | Create a Plan from Codex Game Detail                      | Accepted       | [Codex Games](./codex-games.md#create-a-plan)                          |
| J-04 | Add a Pokémon from Codex to a Plan or Play                | Accepted       | [Codex Pokémon](./codex-pokemon.md#use-in-mainline)                    |
| J-05 | Plan a team, then create a Play                           | Accepted       | [Mainline Plans](./mainline-plans.md#create-play-from-plan)            |
| J-06 | Record a playthrough through Team, Progress, and History  | Accepted       | [Mainline Play](./mainline-play.md)                                    |
| J-07 | Review Collection or Stats and return to supporting Plays | Accepted       | [Collection and Stats](./mainline-collection-stats.md)                 |
| J-08 | Create a Play directly from Mainline                      | Accepted       | [Mainline Play](./mainline-play.md#existing-in-game-save-catch-up)     |

Each detailed journey should capture entry points, user decisions,
authentication, validations, conflicts, success outcomes, cancellation, and
recovery paths.

## V1 Screen Inventory

The inventory records product surfaces, not evidence that each route is
currently implemented. A nested workspace tab may remain part of its parent
route when it does not need an independent URL.

### Global Surfaces

| ID   | Surface              | Role                                                              | Specification status                                                                                                      |
| ---- | -------------------- | ----------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| G-01 | Landing              | Atmospheric public product entry                                  | V1 functional contract accepted; visual validation pending; [detail](./global-surfaces.md#g-01--landing)                  |
| G-02 | Intro                | Dedicated product explanation and onboarding                      | V1 functional contract accepted; visual validation pending; [detail](./global-surfaces.md#g-02--intro)                    |
| G-03 | Login                | Authentication and intent resumption                              | V1 functional contract accepted; visual validation pending; [detail](./global-surfaces.md#g-03--login-and-authentication) |
| G-04 | Settings             | Profile, preferences, reuse, theme, and account                   | V1 functional contract accepted; visual validation pending; [detail](./global-surfaces.md#g-04--global-settings)          |
| G-05 | Shared system states | Loading, empty, error, permission, expired session, and not found | V1 functional contract accepted; visual validation pending; [detail](./global-surfaces.md#g-05--shared-system-states)     |

### Mainline Surfaces

| ID    | Surface                   | Role                                                       | Specification status                                                                                                                                                                      |
| ----- | ------------------------- | ---------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| M-01  | Dashboard                 | Authenticated home and next-action summary                 | V1 functional contract accepted; visual validation pending; [detail](./mainline-dashboard.md)                                                                                             |
| M-02  | Plays                     | Browse and filter playthroughs                             | V1 functional contract accepted; visual validation pending; [detail](./mainline-plays-browse.md)                                                                                          |
| M-03  | Create Play               | Create or import a play with game context                  | Direction accepted; [detail](./mainline-play.md#existing-in-game-save-catch-up)                                                                                                           |
| M-04  | Play Overview             | High-signal summary of one play                            | V1 functional contract accepted; visual validation pending; [detail](./mainline-play.md)                                                                                                  |
| M-05  | Play Team                 | Manage active, reserve, and historical Pokémon             | Read-only list/detail and linked Plan comparison implemented and responsively verified; mutations remain; [detail](./mainline-play.md#team-contract)                                      |
| M-05A | Play Team Analysis        | Inspect defensive matchups and recorded move coverage      | Direction accepted; [detail](./mainline-play.md#full-team-analysis-view-contract)                                                                                                         |
| M-06  | Play Progress             | Summarize applicable progress tracks                       | V1 functional contract accepted; visual validation pending; [detail](./mainline-play.md#progress-contract)                                                                                |
| M-07  | Story Progress            | Record milestones, decisions, and optional snapshots       | V1 interaction contract accepted; visual validation pending; [detail](./mainline-play.md#story-information-architecture-contract)                                                         |
| M-08  | Play Pokédex              | Record game-scoped Pokédex progress                        | V1 interaction contract accepted; selector visual validation pending; [detail](./mainline-play.md#pokédex-browser-and-progress-contract)                                                  |
| M-09  | Play Collectibles         | Record game-scoped collectible progress                    | V1 interaction contract accepted; visual validation pending; [detail](./mainline-play.md#collectibles-workspace-contract)                                                                 |
| M-10  | Play Team Plan comparison | Compare one linked Plan with the Play roster               | Automatic comparison implemented inside Team with desktop inspector and smaller-screen sheet; Plan acquisition and editing remain; [detail](./mainline-play.md#linked-team-plan-contract) |
| M-11  | Play History              | Review and record meaningful timeline events               | V1 interaction contract accepted; visual validation pending; [detail](./mainline-play.md#history-contract)                                                                                |
| M-12  | Play Settings             | Configure metadata, lifecycle, rules, and completion scope | V1 functional contract accepted; visual validation pending; [detail](./mainline-play.md#settings-contract)                                                                                |
| M-13  | Plans Hub                 | Browse Team Plans and game intentions                      | V1 functional contract accepted; visual validation pending; [detail](./mainline-plans.md#m-13--plans-hub)                                                                                 |
| M-14  | Create Plan               | Create a game-scoped Team Plan                             | V1 functional contract accepted; visual validation pending; [detail](./mainline-plans.md#m-14--create-plan)                                                                               |
| M-15  | Plan Detail               | Build targets and resolve planning conflicts               | V1 functional contract accepted; visual validation pending; [detail](./mainline-plans.md#m-15--standalone-plan-detail)                                                                    |
| M-16  | Collection                | Review personal Pokémon usage history                      | V1 functional contract accepted; visual validation pending; [detail](./mainline-collection-stats.md#m-16--collection)                                                                     |
| M-17  | Collection Pokémon Detail | Review one Pokémon's history across plays                  | V1 functional contract accepted; visual validation pending; [detail](./mainline-collection-stats.md#m-17--collection-pokémon-detail)                                                      |
| M-18  | Stats                     | Review derived patterns with supporting records            | V1 functional contract accepted; visual validation pending; [detail](./mainline-collection-stats.md#m-18--stats)                                                                          |

### Codex Surfaces

| ID   | Surface                   | Role                                                        | Specification status                                                                                                                     |
| ---- | ------------------------- | ----------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| C-01 | Pokémon Browse            | Search and filter game-aware Pokémon reference data         | V1 functional contract accepted; visual validation pending; [detail](./codex-pokemon.md#c-01--pokémon-browse)                            |
| C-02 | Pokémon Detail            | Inspect a Pokémon in a selected game context                | V1 functional contract accepted; visual validation pending; [detail](./codex-pokemon.md#c-02--pokémon-detail)                            |
| C-03 | Games Browse              | Discover supported games                                    | V1 functional contract accepted; field-guide browse treatment selected; [detail](./codex-games.md#c-03--games-browse)                    |
| C-04 | Game Detail               | Inspect a game and initiate Mainline intents                | V1 functional contract accepted; visual validation pending; [detail](./codex-games.md#c-04--game-detail)                                 |
| C-05 | Game Pokédex              | Browse one Pokédex within a game                            | V1 functional contract accepted; visual validation pending; [detail](./codex-games.md#c-05--game-pokédex)                                |
| C-06 | Codex-to-Mainline handoff | Select destinations, resolve conflicts, and confirm results | V1 Game and Pokémon intent contracts accepted; visual validation pending; [detail](./codex-games.md#c-06--game-origin-mainline-handoffs) |

## Screen Specification Template

Detailed screen-family documents should use this structure:

1. Purpose and primary user goal.
2. Access, route behavior, and entry points.
3. Information hierarchy and sections.
4. Primary, secondary, and destructive actions.
5. Forms, fields, controls, filters, menus, and dialogs.
6. Data displayed, created, changed, or derived.
7. Validation, permissions, and transactional side effects.
8. Loading, empty, error, disabled, conflict, success, and signed-out states.
9. Desktop, mobile, keyboard, focus, and accessibility behavior.
10. Shared components used or new pattern candidates.
11. Analytics or measurement needs, if any.
12. Open questions and linked database-gap IDs.

## Candidate Shared Patterns

**Status: Provisional — validate through screen specifications before accepting**

- Shared application shell and module navigation.
- Standard page heading and contextual action area.
- Browse, search, filter, sort, and view controls.
- Detail and workspace shells.
- Tab and section navigation.
- Section cards and repeated-item cards.
- Pokémon, game, team-member, progress, timeline, and stat presentations.
- Forms, validation summaries, confirmations, and destructive-action patterns.
- Dialog, sheet, popover, command, dropdown, and toast behavior.
- Loading, empty, error, permission, and success patterns.

The eventual component registry should record each accepted pattern, variants,
states, responsive behavior, and consuming screens.

## Implementation Checkpoint

The functional review is complete and the selected visual system is implemented
through the shared shell, Plays Browse, Play Overview, Play Team, linked Team
Plan comparison, and the current Codex views. The next product slice should add
the no-linked-Plan acquisition entry and the smallest standalone Plans
authoring path while preserving automatic runtime comparison. The active loop
must:

1. preserve the selected grammar while completing the active view's system
   states;
2. validate realistic content, partial and recovery states, and phone, tablet,
   and desktop composition rather than judging one hero frame;
3. capture selected hierarchy, density, scenic character, and responsive
   behavior in versioned design references;
4. complete Plan acquisition and standalone authoring one bounded view at a
   time, then revisit Dashboard when its route is mounted.
