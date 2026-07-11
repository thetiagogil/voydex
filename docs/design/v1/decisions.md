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
| V1-D006 | 2026-07-11 | Resolve signed-in product entry to the last active module, with Mainline as the V1 fallback                              | Accepted |
| V1-D007 | 2026-07-11 | Preserve the atmospheric day/night scenic Landing concept while refining its execution                                   | Accepted |
| V1-D008 | 2026-07-11 | Keep Landing extremely concise and place product explanation and onboarding only on Intro                                | Accepted |
| V1-D009 | 2026-07-11 | Structure Intro as one concise narrative that explains value, organization, journey, and next action                     | Accepted |
| V1-D010 | 2026-07-11 | Preserve the centered content canvas and current desktop navbar organization as the V1 shell foundation                  | Accepted |

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

## V1-D006 — Last Active Module Entry

**Status:** Accepted

**Date:** 2026-07-11

Normal signed-in entry should open the default landing view of the user's last
active, currently available module. V1 falls back to Mainline Dashboard when no
valid preference exists. Explicit URLs and validated post-login destinations
take precedence.

Remember the module rather than the last deep route. This prevents a future
Pokopia-only user from being forced through Mainline while still giving each
module a predictable entry view. It also avoids restoring a stale detail,
editing, or destructive context unexpectedly.

The contract is decided now, but V1 should implement only the general resolver
and current module metadata. No future module dashboard or neutral cross-module
dashboard is required. Cross-device persistence remains open.

## V1-D007 — Atmospheric Day And Night Landing

**Status:** Accepted

**Date:** 2026-07-11

Keep the current Landing concept: a full-viewport adventurous landscape viewed
from an overlook toward a distant destination, with matched day and night scenes
selected by the resolved light or dark theme. Center the Voydex identity, one
short product description, and a compact set of quick actions in the scene's
visual quiet area.

The exact artwork, spacing, copy, and actions may improve during detailed design.
Preserve the emotional premise and layered composition. Do not turn the Landing
into a long marketing page, generic dashboard, or large opaque hero card that
hides the landscape.

## V1-D008 — Landing And Intro Content Boundary

**Status:** Accepted

**Date:** 2026-07-11

Landing should contain the atmospheric background, Voydex identity, one short
general description, and a compact set of quick actions, with little or no
additional content. Its intended first response is emotional—"this is
beautiful"—followed by immediate comprehension and action.

Intro is the distinct, opt-in surface for users who want to learn more. Product
explanation and general onboarding belong on Intro rather than Landing. Intro is
not a mandatory first-run gate unless a later workflow demonstrates that need.

## V1-D009 — Intro Content Architecture

**Status:** Accepted

**Date:** 2026-07-11

Intro should be a concise, scrollable narrative that explains the product
promise, the problem Voydex solves, the track/remember/plan value pillars, the
Mainline/Codex mental model, the recurring product journey, and the visitor's
next entry choice.

Keep it easy to scan in roughly one minute. Detailed visual hierarchy,
composition, imagery, and responsive treatment will be designed later from this
accepted content architecture rather than being improvised independently.

## V1-D010 — Centered Canvas And Desktop Shell

**Status:** Accepted

**Date:** 2026-07-11

Preserve the existing desktop shell organization: a centered content canvas of
roughly 1200–1280 pixels with the scenic background visible in the side gutters,
plus a top navbar containing the Voydex identity and shadcn navigation-menu
module switcher on the left, active module view links in the center, and profile
or authentication actions on the right.

Visual styling may change, but the organization is the V1 foundation. Future
work should improve alignment, active states, responsive behavior,
accessibility, and surface polish rather than introducing a new desktop
navigation structure without evidence of a usability problem.
