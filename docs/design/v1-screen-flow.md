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
- [V1-D115, V1-D118, V1-D119, V1-D120, V1-D123, V1-D124, and
  V1-D125](./v1/decisions.md) select the
  light-first explorer's field-guide system recorded in
  [V1 Visual Language](./v1/visual-language.md). The shared shell, Plays Browse,
  Play Hub Overview, Play Team, the linked Team Plan comparison, Team Analysis,
  and focused Team History now implement that production grammar.
- Existing Dashboard work remains functional evidence until its view is
  migrated and verified. Only code
  listed in [Project Status](../project-status.md) is implemented; the other
  screens remain design direction.
- Plays Browse remains the browse production baseline. URL-backed primary
  controls and the compact enriched journey-log row are responsive and visually
  checked with realistic occupied/partial fixture states. Play Hub Overview now
  carries that system into its shared header, route-backed workspace, and four existing
  summary sections; Plays Browse archive, secondary-filter, loading, recovery,
  and incremental-load states remain.
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
- Settings for profile, preferences, reuse behavior, and account. Appearance is
  deferred until a later night-expedition design pass.
- Shared loading, empty, error, permission, expired-session, and not-found
  states.

### Mainline

- Dashboard.
- Plays browse and Create Play.
- Play Hub: Overview, Team, Progress, History, and Settings in one shared,
  route-backed shell. Team exposes Overview, Plan, Analysis, and History;
  Progress exposes Overview, Story, Pokédex, and Collectibles. Standalone Plan
  Detail remains the reusable authoring owner.
- Progress detail: Story, Pokédex, and Collectibles.
- Plans Hub: Team Plans and Game List.
- Create Plan and Plan Detail.
- Collection and Collection Pokémon Detail.
- Stats.

One Play may still have one focused linked Team Plan. Its compact comparison
belongs at the route-backed `Team - Plan` child view and keeps the Play shell
visible. Standalone Plan Detail owns reusable authoring. The complete Team and
Progress child hierarchy remains visible in the navigation menu; unfinished
destinations are disabled rather than hidden.

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
-> build one to six ordered targets
-> resolve availability and reuse warnings
-> Plan Detail
-> Create Play
-> confirm Play details and completion goal
-> Play created with an empty current roster and linked plan
```

The plan persists after play creation. Actual Pokémon are added when obtained.
The Team tab compares existing Play Pokémon with planned targets automatically;
it does not persist a per-member association or reached/skipped status.
Plan optional content prefills enabled Play scope, while Create Play's normal
game-aware recommendation owns completion contribution defaults. Plan Rules
become the Play's visible initial Rules, and Tags remain Plan-only. After
creation, Plan and Play settings are independent and never synchronize
silently.

### Record A Playthrough

```txt
Play Overview
-> Team, Progress, History, or Settings
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

Codex-origin compare-with-team, standalone targets, and automated
`find where this fits` recommendations remain follow-up ideas rather than V1
requirements. This does not change the implemented linked Team Plan comparison
inside a Play.

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

1. Finish Plays Browse system-state coverage. Primary controls, the compact
   journey-log row, and responsive visual system are implemented.
2. Apply the selected system to Play Overview and Team using their accepted
   contracts. Overview, Team, and the linked read-only Plan comparison are
   implemented and verified.
3. Complete the contextual Plan acquisition boundary: no-linked-Plan entry,
   owner-scoped Link existing, and Create Plan for this Play.
4. Mount the smallest Plans Hub, Create Plan, or Plan Detail authoring increment
   required by that boundary. **Automatic comparison is implemented;
   standalone authoring is accepted but not mounted.**
5. Mount Team's game-aware Add Pokémon picker as an independent mutation slice.
6. Refine Mainline Dashboard when its route is mounted, using the accepted
   play-led contract and selected visual direction.
7. Implement Create Play.
8. Implement Progress Summary, Story, primary Play History, and Play Settings.
9. Implement Play Pokédex and Collectibles.
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

Use this after opening the repository in a clean chat or on another computer:

```txt
Continue Voydex on branch `main`. Read AGENTS.md,
.agents/AGENTS.md,
docs/project-status.md, docs/app/design-system.md,
docs/design/v1-screen-flow.md, docs/design/v1/README.md,
docs/design/v1/visual-language.md, docs/design/v1/mainline-play.md, and
docs/design/v1/mainline-plans.md, docs/design/v1/decisions.md,
docs/database/schema-contract.md, and docs/design/v1/database-gaps.md. Then run
`git status`, `git log -1 --oneline`, install dependencies, and inspect the
nearby Play Hub Team Plan code before editing.

The shared shell, Plays Browse, Play Hub Overview, Team list-detail workspace,
and read-only linked Team Plan comparison are implemented. The comparison stays
inside the active Team tab. It renders one to six planned targets, computes
deterministic one-to-one species/form/evolution-family matches at read time,
compares optional Ability, Nature, Held Item, Gender, and Moves for Active or
Reserve members, treats Retired/Replaced members as identity-only evidence, and
summarizes unplanned members without inspectable rows. Level and Ball are not
compared. There are no alternate targets, manual member links, or stored
comparison statuses. Desktop uses a persistent detail panel; tablet and phone
use a sheet.

Continue with one bounded planning workflow. The recommended next slice is the
missing no-linked-Plan entry plus owner-scoped Link/Create Plan flow, followed
by the smallest standalone Plans Hub, Create Plan, or Plan Detail authoring
increment it requires. Keep comparison read-only. Editing inside a Play must
clone and relink only that Play; standalone edits must disclose affected linked
Plays. Do not reintroduce manual pairing. The game-aware Add Pokémon picker is a
separate later Team slice. Do not restore the clipboard frame, add dark mode, a
new background, sticky replacement navigation, decorative edge systems, or a
broad multi-page refactor. Run `npm run verify`; database changes additionally
require `npm run db:verify` and an explicit remote-write gate. Browser-check
desktop, tablet, phone, keyboard/focus, overflow, and console output, then
update Project Status and the nearest canonical contract.
```
