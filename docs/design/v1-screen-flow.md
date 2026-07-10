# V1 Screen Flow And Design Handoff

This document is the canonical design handoff for the first complete Mainline
and Codex experience. It records the accepted journey, screen families,
cross-module actions, and next design checkpoint. Product behavior remains
canonical in the [Feature Contract](../product/feature-contract.md), while
implementation status remains canonical in [Project Status](../project-status.md).

## Current Checkpoint

- The next phase is product design, not frontend implementation.
- The current step is a breadth-first review of the product overview,
  navigation, journeys, complete screen inventory, and shared-pattern
  candidates in the [V1 Design Workspace](./v1/README.md).
- No V1 visual direction has been selected yet.
- The existing implementation and images under `docs/design/mainline-play` may
  be inspected for useful ideas, but they are not constraints and may be
  replaced.
- The durable product contracts, data ownership rules, accessibility needs,
  and Voydex's clean adventure-companion character remain constraints.
- Visual exploration begins only after the product blueprint and detailed
  design requirements are coherent enough to give every direction the same
  content, actions, states, and responsive constraints.
- At that point, generate exactly three distinct visual directions for the
  shared application shell and Mainline Dashboard, then wait for a direction
  to be selected before implementing or expanding screens.

## V1 Product Loop

```txt
Explore in Codex
-> plan an adventure
-> create or continue a play
-> manage the team and record progress
-> preserve meaningful history
-> review Collection and Stats
-> plan the next adventure
```

Codex is the public discovery and reference module. Mainline is the
authenticated planning and playthrough workspace. Codex may initiate a
Mainline intent, but Mainline validates and owns every user-data mutation.

## Access Model

- Anonymous users can browse Codex Pokémon, games, game Pokédexes, and detail
  pages.
- Dashboard, Plays, Plans, Collection, Stats, and Settings require
  authentication.
- A signed-out user who chooses a Mainline action from Codex is sent through
  login with the selected game, Pokémon, form, content scope, and intended
  action preserved.
- After authentication, the app resumes the intended Mainline flow rather than
  dropping the user on a generic page.
- Codex never bypasses Mainline validation for ownership, roster limits, reuse
  policies, availability, forms, DLC, optional content, or plan/play state.

## Screen Families

### Global

- Landing.
- Intro.
- Login.
- Settings for profile, preferences, reuse behavior, theme, and account.
- Shared loading, empty, error, permission, expired-session, and not-found
  states.

### Mainline

- Dashboard.
- Plays browse and Create Play.
- Play Hub: Overview, Team, Progress, Plan, History, and Settings.
- Progress detail: Story, Pokédex, and Collectibles.
- Plans Hub: Team Plans and Game List.
- Create Plan and Plan Detail.
- Collection and Collection Pokémon Detail.
- Stats.

The Play Hub's visible planning tab should be named `Plan`, singular, because a
play has one focused linked Team Plan. Mature Play Hub sections may become
URL-addressable while remaining visually part of one play workspace.

### Codex

- Pokémon browse and game-scoped Pokémon detail.
- Games browse and Game Detail.
- Game Pokédex.
- Authenticated Mainline action selection and success/error states.

Generations remain filtering and grouping context rather than a required
top-level screen.

## Primary Journeys

### Enter Or Resume Mainline

```txt
Landing or app entry
-> Login when needed
-> Dashboard
-> continue a recent play, open Plays, or open Plans
```

The Dashboard is the authenticated home and should answer what the user is
playing, what changed recently, what they plan to play next, and which action
is most useful now.

### Start From A Game In Codex

```txt
Codex Game Detail
-> Start Play or Start Plan
-> authenticate when needed
-> Mainline create flow with the game preselected
-> Play Hub or Plan Detail
```

Game Detail may also offer `Add to Game List` as the lighter-weight intent when
the user is not ready to create a concrete play or team plan.

### Start From A Pokémon In Codex

```txt
Codex Pokémon Detail
-> Add to Plan or Add to Play
-> authenticate when needed
-> choose or create an eligible Mainline destination
-> Mainline validates the selected Pokémon context
-> confirm the result and provide a link to the plan or play
```

`Add to Plan` can offer an existing compatible plan or create a plan with the
current Pokémon prefilled. `Add to Play` selects an eligible play and then the
active or reserve destination. It must surface reuse, availability, form,
content-scope, and roster-cap conflicts before confirmation.

Starting a new plan or play is a navigational workflow that ends in Mainline.
Adding a Pokémon to an existing destination should, when practical, complete
from a focused handoff surface and let the user remain in Codex with a clear
success state and a link to the changed destination.

### Plan Then Play

```txt
Plans Hub
-> Create Plan
-> select game and optional content
-> build six primary and up to six alternate targets
-> resolve availability and reuse warnings
-> Plan Detail
-> Create Play
-> Play created with an empty current roster and linked plan
```

The plan persists after play creation. Actual Pokémon are added when obtained
and linked to pending planned targets until those targets are reached or
skipped.

### Record A Playthrough

```txt
Play Overview
-> Team, Progress, Plan, History, or Settings
-> perform one focused task
-> Overview reflects the result
```

- Team changes can be corrections or recorded in-game events. Recorded
  changes update History and Collection.
- Important Story milestones can optionally create timeline events and team
  snapshots.
- Routine Pokédex and Collectible updates change completion without creating
  timeline noise.
- History supports journal entries, milestone moments, Hall of Fame records,
  imported events, and snapshots.

### Remember And Reuse History

```txt
Collection or Stats
-> inspect a Pokémon, pattern, or supporting play
-> open the originating play or use the insight while planning
```

Collection is the personal memory layer across forms, evolution families,
plays, snapshots, and biographies. Stats are derived summaries that link back
to the records supporting them.

## Codex-To-Mainline Action Contract

| Codex origin   | Planned V1 action             | Mainline destination                       |
| -------------- | ----------------------------- | ------------------------------------------ |
| Game Detail    | Start Play                    | Create Play with game context              |
| Game Detail    | Start Plan                    | Create Plan with game context              |
| Game Detail    | Add to Game List              | Plans Hub game-intent state                |
| Pokémon Detail | Add to Plan                   | Existing plan or Create Plan               |
| Pokémon Detail | Start Plan with Pokémon       | Create Plan with game and Pokémon context  |
| Pokémon Detail | Add to Play                   | Eligible play and active/reserve selection |
| Pokémon Detail | Check availability in my play | Play selection and availability result     |
| Pokémon Detail | View my history               | Collection Pokémon Detail                  |

Compare-with-team, standalone targets, and automated `find where this fits`
recommendations remain follow-up ideas rather than V1 requirements.

## Design Principles For The Next Pass

- The current UI and legacy references are optional inputs, not a fidelity
  target.
- Preserve a clear adventure-companion identity instead of a generic
  dashboard or encyclopedia.
- Keep Codex information-rich but scannable; keep Mainline task-oriented and
  personal.
- Maintain a consistent shell while giving Codex and Mainline recognizable
  module character.
- Design desktop and mobile together, including navigation, filters, drawers,
  sheets, tables, and long content.
- Include realistic loading, empty, error, disabled, success, conflict,
  destructive, and signed-out states.
- Prefer one clear primary action per context. Secondary cross-module actions
  may live in an action menu or focused handoff surface.

## Design Sequence

1. Shared application shell and responsive module navigation.
2. Mainline Dashboard, Plays, and Create Play.
3. Play Overview and Team workflows.
4. Progress Summary, Story, and History.
5. Play Pokédex and Collectibles.
6. Play Plan and Play Settings.
7. Plans Hub, Create Plan, and Plan Detail.
8. Collection, Collection Pokémon Detail, and Stats.
9. Codex browse/detail refinement and every Codex-to-Mainline handoff.
10. Responsive and state coverage across the complete journey.

The first visual exploration should cover the shared shell and Dashboard
because they establish navigation, hierarchy, density, module identity, and
the visual grammar reused by later screens.

## Database Review After Design

During screen design, maintain a data-requirements matrix for each surface:

- reference data displayed;
- user-owned reads and writes;
- authentication and authorization boundary;
- validations and transactional side effects;
- loading, empty, conflict, and failure states;
- known seed gaps or questionable facts.

After the V1 flow is designed, use that matrix to audit database correctness,
fix inconsistent reference data, add the Pokémon information the approved
screens actually need, and only then resume production implementation.

## Resume Prompt

Use this after opening the repository on another computer:

```txt
Continue the Voydex V1 product-design work. Read AGENTS.md,
docs/project-status.md, docs/design/v1-screen-flow.md,
docs/design/v1/README.md, docs/design/v1/product-blueprint.md,
docs/design/v1/decisions.md, docs/design/v1/database-gaps.md,
docs/app/design-system.md, docs/product/feature-contract.md, and
docs/product/navigation-and-routes.md. Treat the existing implementation and
legacy design images as optional references, not constraints. Continue the
current blueprint review before visual exploration. Record design decisions and
screen-derived database needs as they emerge. Do not implement UI or database
changes during this design phase.
```
