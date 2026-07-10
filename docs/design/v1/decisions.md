# V1 Design Decisions

This log records consequential V1 product-design decisions. The canonical
product contract should contain the final behavior; this log preserves when and
why the direction was selected or changed.

## Statuses

- **Accepted**: active direction.
- **Provisional**: working direction awaiting validation.
- **Rejected**: explored and intentionally not selected.
- **Superseded**: replaced by a later decision.

## Decision Index

| ID      | Date       | Decision                                                                                                                 | Status   |
| ------- | ---------- | ------------------------------------------------------------------------------------------------------------------------ | -------- |
| V1-D001 | 2026-07-11 | Complete the V1 design before database correction and production UI implementation                                       | Accepted |
| V1-D002 | 2026-07-11 | Work breadth-first from product overview to navigation, journeys, screens, and shared patterns before visual exploration | Accepted |
| V1-D003 | 2026-07-11 | Record screen-derived database needs during design and resolve them in a later database audit                            | Accepted |
| V1-D004 | 2026-07-11 | Generate exactly three shell and Dashboard directions only after the product blueprint is reviewed                       | Accepted |
| V1-D005 | 2026-07-11 | Scope V1 to traditional mainline and Legends-style games, with Codex as the user-facing encyclopedia                     | Accepted |

## V1-D001 — Design Before Database And Implementation

**Status:** Accepted

**Date:** 2026-07-11

Design the complete V1 product experience first. Use the approved screens to
derive data requirements, correct and complete the database second, and resume
production frontend implementation third.

This avoids changing schema or building interfaces for flows that have not yet
been reviewed as a coherent product.

## V1-D002 — Breadth Before Depth

**Status:** Accepted  
**Date:** 2026-07-11

Confirm the overall app, module responsibilities, navigation, journeys, and
screen inventory before specifying every section and control within one view.
After the breadth review, specify related screen families in depth.

This makes missing surfaces, duplicated responsibilities, and inconsistent
navigation visible before visual design begins.

## V1-D003 — Deferred Database-Gap Register

**Status:** Accepted  
**Date:** 2026-07-11

Record every data requirement or suspected database gap discovered during
screen design. Tie it to the surface and behavior that exposed it, distinguish
verified facts from hypotheses, and defer correction until the design flow is
approved.

No gap should become a schema requirement solely because an exploratory visual
included unsupported information.

## V1-D004 — Visual Exploration Gate

**Status:** Accepted  
**Date:** 2026-07-11

After the blueprint is reviewed, generate exactly three distinct visual
directions for the shared application shell and Mainline Dashboard. Give all
three the same content, actions, state, and viewport requirements. Select one
direction before designing or implementing the remaining visual system.

## V1-D005 — V1 Game Families And Codex Role

**Status:** Accepted

**Date:** 2026-07-11

V1 primarily covers traditional mainline and Legends-style Pokémon RPGs.
Mainline owns creating and tracking Plays, Plans, and the personal history of
those games. Codex is the public, user-facing encyclopedia for the Pokémon and
games represented in Voydex.

The internal `reference` module remains the technical shared-data owner. Codex
surfaces that corpus but does not become a code dependency or mutation owner for
Mainline or future product modules.

Later versions may add modules such as Mystery Dungeon, Pokopia, Pokémon HOME,
Pokémon GO, or Pokémon Snap. These are outside V1, and their possible future
needs should not broaden the current UI or database scope.
