# V1 Design Workspace

This workspace organizes the complete V1 product-design pass before database
correction or production frontend implementation resumes. It is a reviewable
design record, not a replacement for the canonical product contracts.

## Working Principle

Design breadth-first, then depth-first:

1. Confirm the product overview and V1 boundaries.
2. Confirm navigation, access boundaries, and primary journeys.
3. Review the complete screen inventory.
4. Specify each screen family, including actions and states.
5. Identify shared page and component patterns.
6. Record screen-derived data requirements and database gaps.
7. Generate exactly three visual directions for the shared shell and Mainline
   Dashboard.
8. Select one direction and turn it into a coherent visual system.
9. Design and verify the complete responsive V1 flow.
10. Audit and correct the database before production UI implementation.

Visual styling should not compensate for an unresolved product flow. Database
work discovered during design is recorded for the later audit rather than
implemented during this phase unless the project direction explicitly changes.

## Workspace Documents

- [Product Blueprint](./product-blueprint.md): the review map for product
  structure, journeys, screens, states, and candidate shared patterns.
- [Global Surfaces](./global-surfaces.md): landing, entry, authentication, and
  other cross-module surface specifications as they are reviewed.
- [Shell And Navigation](./shell-navigation.md): shared shell hierarchy,
  module switching, module views, contextual navigation, and responsive
  behavior.
- [Mainline Play](./mainline-play.md): functional Play and Play Hub blueprint,
  area responsibilities, summary outputs, states, and open questions.
- [Design Decisions](./decisions.md): dated decisions and their rationale,
  including superseded directions.
- [Data Requirements And Database Gaps](./database-gaps.md): screen-derived
  data needs, suspected or confirmed gaps, and their later resolution status.
- [V1 Screen Flow And Design Handoff](../v1-screen-flow.md): the concise
  continuation brief and accepted high-level journey.

Detailed screen specifications should be added by screen family when the
blueprint reaches that phase. Do not grow one monolithic document when Mainline,
Codex, or global surfaces need independent review.

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

## Review Order Before Visual Exploration

Review these artifacts in order:

1. Product overview and V1 boundaries.
2. Navigation and access model.
3. Primary user journeys.
4. Screen inventory and ownership.
5. Screen-family specifications and state coverage.
6. Shared-pattern candidates.
7. Data-requirements coverage and open database questions.

Visual exploration begins only after the structure is coherent enough that all
three directions can use the same content, actions, realistic data, and
responsive requirements.
