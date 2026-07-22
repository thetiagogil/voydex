# V1 Design Workspace

This workspace organizes the accepted V1 functional review and the current
design-to-implementation handoff. It is a reviewable design record, not a
replacement for the canonical product contracts or implementation status.

**Current checkpoint:** the breadth-first map and depth-first functional screen
contracts are complete. [V1-D115, V1-D118, V1-D119, V1-D120, V1-D123, and
V1-D124](./decisions.md) select the light-first explorer's field-guide grammar
and automatic linked-Plan comparison. The shared shell, Plays Browse, Play Hub
Overview, Team, and the Team-owned Plan comparison are implemented and
responsively verified; standalone Plan acquisition and authoring are next.

## Working Principle

The initial product review worked breadth-first, then depth-first. The current
implementation loop is:

1. Read the accepted screen-family contract, decisions, and data gaps.
2. Inspect the selected design system and nearby production implementation.
3. Implement one bounded view slice without presenting adjacent designs as
   shipped behavior.
4. Validate realistic content, partial and recovery states, and meaningful
   phone, tablet, and desktop compositions.
5. Capture selected changes in versioned docs and update Project Status.
6. Complete the active Mainline slice before expanding database scope or moving
   to the next view.

Visual styling must not compensate for an unresolved product flow. Database
work discovered during implementation remains recorded for the focused audit
unless a current screen cannot be correct without it.

## Workspace Documents

- [V1 Visual Language](./visual-language.md): canonical light-first art
  direction, color and material roles, navigation metaphor, module character,
  selected composition, and visual anti-goals.
- [Product Blueprint](./product-blueprint.md): the review map for product
  structure, journeys, screens, states, and candidate shared patterns.
- [Global Surfaces](./global-surfaces.md): accepted Landing, Intro, Login,
  Global Settings, authentication resumption, and shared system-state
  contracts.
- [Shell And Navigation](./shell-navigation.md): shared shell hierarchy,
  module switching, module views, contextual navigation, and responsive
  behavior.
- [Mainline Play](./mainline-play.md): functional Play and Play Hub blueprint,
  area responsibilities, summary outputs, states, and open questions.
- [Mainline Plays Browse](./mainline-plays-browse.md): accepted and partially
  implemented adventure-library hierarchy, controls, compact summary-card
  contract, responsive behavior, remaining states, and data needs.
- [Mainline Dashboard](./mainline-dashboard.md): accepted play-led Mainline home
  hierarchy awaiting a mounted route and production implementation.
- [Mainline Plans](./mainline-plans.md): accepted Team Plans and Game List Hub,
  concise contextual creation, reusable Plan authoring, lifecycle, and
  Play-linking contracts.
- [Mainline Collection And Stats](./mainline-collection-stats.md): accepted
  species-led personal history, companion evidence, explainable Stats, and
  drill-down contracts.
- [Codex Pokémon](./codex-pokemon.md): accepted exact-game Pokémon Browse and
  Pokémon Detail contracts, current implementation review, Mainline entry, and
  responsive state requirements.
- [Codex Games](./codex-games.md): accepted Games Browse, Game Detail, Game
  Pokédex, and Game-origin Mainline handoff contracts, including content-scope
  and responsive requirements.
- [Design Decisions](./decisions.md): dated decisions and their rationale,
  including superseded directions.
- [Data Requirements And Database Gaps](./database-gaps.md): screen-derived
  data needs, suspected or confirmed gaps, and their later resolution status.
- [V1 Screen Flow And Design Handoff](../v1-screen-flow.md): the concise
  continuation brief and accepted high-level journey.

Extend the nearest screen-family specification when a selected behavior changes.
Do not grow one monolithic document when Mainline, Codex, or global surfaces
need independent review.

## Source Of Truth

Each fact keeps one canonical owner:

| Concern                                 | Canonical owner                                                 |
| --------------------------------------- | --------------------------------------------------------------- |
| Product purpose and principles          | [Product Vision](../../product/vision.md)                       |
| User-visible behavior                   | [Feature Contract](../../product/feature-contract.md)           |
| Navigation and routes                   | [Navigation And Routes](../../product/navigation-and-routes.md) |
| State ownership and derivation          | [Data Ownership](../../product/data-ownership.md)               |
| Current implementation checkpoint       | [Project Status](../../project-status.md)                       |
| V1 design organization and coverage     | This workspace                                                  |
| Actual schema, policies, and seed facts | `database/schema` and `database/seeds`                          |

When a design discussion changes a product contract, update that contract and
link to it here. Do not preserve conflicting versions in design notes.

## Discussion Capture

Future design discussions should be captured as one or more of:

- an accepted decision in `decisions.md`;
- an open question in the relevant blueprint or screen specification;
- a screen or state requirement;
- a candidate shared pattern;
- a data requirement or database-gap entry;
- a rejected or superseded direction with enough rationale to avoid repeating
  the same exploration.

Use these statuses consistently:

- **Accepted**: agreed and ready to guide later design work.
- **Provisional**: useful working direction that still needs validation.
- **Open**: unresolved and must not be presented as decided.
- **Rejected**: considered and intentionally not selected.
- **Superseded**: previously accepted but replaced by a later decision.

Raw conversation transcripts do not belong in the documentation. Capture the
decision, rationale, consequences, and unresolved questions instead.

## Review Order Before A View Implementation

Review these artifacts in order:

1. Product overview and V1 boundaries.
2. Navigation and access model.
3. Primary user journeys.
4. Screen inventory and ownership.
5. Screen-family specifications and state coverage.
6. Accepted decisions and shared design-system patterns.
7. Nearby production code and current Project Status.
8. Data-requirements coverage and open database questions.

The functional structure is complete enough to guide implementation. Preserve
the selected language already implemented through the shared shell, Plays
Browse, Play Overview, Team, and Codex. Complete Plan acquisition and standalone
Plan authoring one bounded view at a time without reintroducing the superseded
manual member-link/status model.
