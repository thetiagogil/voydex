# V1 Screen Flow And Design Handoff

This document is the canonical design handoff for the first complete Mainline
and Codex experience. It records the accepted journey, screen families,
cross-module actions, and current design/implementation checkpoint. Product
behavior remains canonical in the
[Feature Contract](../product/feature-contract.md), while implementation status
remains canonical in [Project Status](../project-status.md).

## Current Checkpoint

- The breadth-first map and depth-first V1 functional screen contracts are
  accepted in the [V1 Design Workspace](./v1/README.md).
- [V1-D105](./v1/decisions.md) supersedes the previous visual grammar. The
  light-first explorer's field-guide brief is recorded in
  [V1 Visual Language](./v1/visual-language.md), and exactly three
  representative shared-shell and Plays Browse directions are pending
  selection before further production styling.
- Existing shared-shell, Dashboard, Plays Browse, Play Overview, and Play Team
  work remains functional and responsive evidence rather than the visual
  target. Only code listed in [Project Status](../project-status.md) is
  implemented; the other screens remain design direction.
- Plays Browse is the active production slice. URL-backed primary controls and
  the compact enriched Play card are implemented and responsive; realistic
  occupied/partial data plus archive, secondary-filter, loading, recovery, and
  incremental-load states remain.
- The durable product contracts, data ownership rules, accessibility needs,
  and Voydex's clean adventure-companion character remain constraints.
- Future view work begins with the canonical screen document, accepted
  decisions, design system, and nearby live implementation. Conversation-only
  mockups are not durable guidance until their selected behavior is recorded.

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
- Login shows the protected destination or Codex action that will resume,
  rejects unsafe targets, supports recovery and expired-session states, and
  never automatically replays a mutation.
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
-> Start a Play or Create a Plan
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
-> confirm Play details and completion goal
-> Play created with an empty current roster and linked plan
```

The plan persists after play creation. Actual Pokémon are added when obtained
and linked to pending planned targets until those targets are reached or
skipped.
Plan optional content prefills enabled Play scope, while Create Play's normal
game-aware recommendation owns completion contribution defaults. Plan Rules
become the Play's visible initial Rules, and Tags remain Plan-only. After
creation, Plan and Play settings are independent and never synchronize
silently.

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

| Codex origin   | Planned V1 action | Mainline destination                                                                      |
| -------------- | ----------------- | ----------------------------------------------------------------------------------------- |
| Game Detail    | Start Play        | Create Play with game context                                                             |
| Game Detail    | Create a Plan     | Create Plan with game context                                                             |
| Game Detail    | Add to Game List  | Plans Hub game-intent state                                                               |
| Pokémon Detail | Use in Mainline   | Add to an existing or new Plan, add to an eligible Play, check a Play, or open Collection |

Compare-with-team, standalone targets, and automated `find where this fits`
recommendations remain follow-up ideas rather than V1 requirements.

## Design Principles For The Implementation Pass

- The selected design system and verified production UI are implementation
  evidence. Legacy references remain optional inputs, not fidelity targets.
- Preserve a clear adventure-companion identity instead of a generic
  dashboard or encyclopedia.
- Keep Codex information-rich but scannable; keep Mainline task-oriented and
  personal.
- Maintain a consistent shell while giving Codex and Mainline recognizable
  module character.
- Design and verify phone, tablet, and desktop together, including navigation,
  filters, drawers, sheets, tables, and long content.
- Include realistic loading, empty, error, disabled, success, conflict,
  destructive, and signed-out states.
- Prefer one clear primary action per context. Secondary cross-module actions
  may live in an action menu or focused handoff surface.

## Implementation Sequence

The Play Hub functional review and summary derivation are complete. Continue
with one verified production slice at a time:

1. Select the new visual direction, then apply it to the shared shell and Plays
   Browse without changing the accepted compact summary contract.
2. Finish Plays Browse realistic-data and system-state coverage. Primary
   controls and the compact summary card are implemented.
3. Implement Mainline Dashboard using its accepted play-led contract and the
   selected visual direction.
4. Implement Play Overview and Team using their accepted contracts and selected
   visual direction.
5. Implement Create Play.
6. Implement Progress Summary, Story, and History.
7. Implement Play Pokédex and Collectibles.
8. Implement Play Plan and Play Settings.
9. Plans Hub, Create Plan, and Plan Detail. **Functional contract accepted;
   visual validation pending.**
10. Collection, Collection Pokémon Detail, and Stats. **Functional contract
    accepted; visual validation pending.**
11. Codex browse/detail refinement and every Codex-to-Mainline handoff.
    **Pokémon and Games functional contracts accepted; visual validation
    pending.**
12. Login, Global Settings, and responsive shared-state coverage.
    **Functional contracts accepted; visual validation pending.**

## Database Review During Implementation

During screen design and implementation, maintain a data-requirements matrix
for each surface:

- reference data displayed;
- user-owned reads and writes;
- authentication and authorization boundary;
- validations and transactional side effects;
- loading, empty, conflict, and failure states;
- known seed gaps or questionable facts.

Use that matrix to audit database correctness, fix inconsistent reference data,
and add only the information required by accepted screens. Record gaps as they
surface, but do not expand database scope merely to support an exploratory
mockup. A current correctness blocker may be resolved with its owning view;
the consolidated audit remains a later focused phase.

## Resume Prompt

Use this after opening the repository on another computer:

```txt
Continue the Voydex V1 design-to-implementation work. Read AGENTS.md,
.agents/AGENTS.md, docs/project-status.md,
docs/design/v1-screen-flow.md, docs/design/v1/README.md,
docs/design/v1/visual-language.md,
docs/design/v1/mainline-plays-browse.md, docs/design/v1/decisions.md,
docs/design/v1/database-gaps.md, docs/app/design-system.md, and the nearest
screen-family document. The functional review is complete, but V1-D105 resets
the visual grammar around a light-first explorer's field guide. Exactly three
shared-shell and Plays Browse directions must be reviewed and one selected or
revised before production styling resumes. Preserve the implemented browse
behavior and browser-verified responsive hierarchy as evidence, not as the
visual target. After selection, implement the chosen system through the shared
shell and Plays Browse, finish realistic and recovery states, then continue to
Dashboard, Play Overview, and Team. Do not expand database scope unless the
active screen cannot be correct without it. Update Project Status and the
canonical design reference whenever a selected behavior or implementation
checkpoint changes.
```
