# ADR 0004: Soft Clay Replaces The Journal Design In Place

- Status: Accepted
- Date: 2026-10-13

## Context

The shipped look (a warm journal column over a painted valley, DM Sans and
Lora) read as generic and never let the Pokémon-specific parts stand out. The
owner chose the Soft Clay direction from the `Voydex Redesign v3` study and
agreed a brief that keeps v3's loud identity (the Play header, stickers,
stamps, medallions, meadow, Fredoka headings, clay card edges) while quieting
the chrome.

## Decision

- Replace the old design in place. No deprecated folder, no parallel old
  components: shared components keep their names and APIs and change their
  styling; each screen deletes its old parts as it moves over.
- Keep data, logic and module layout.
- Name tokens by role (`bg`, `surface`, `ink`, `line`, `action`, `game`) so
  dark mode can later be a second set of values. Ship light mode only.
- One game-colour table in TypeScript; a Play applies it through the
  `game-scope` utility rather than per-game CSS variables.
- Guard the switch with `npm run design:check`, which fails on any reference
  to the retired journal design.
- On the redesign branch, broad cross-page refactors are allowed.

## Consequences

- Screens not yet moved inherit the new tokens and primitives immediately, so
  they look partly new until their own pass.
- The V1 styling docs and the journal design system document are removed;
  [Design System](../app/design-system.md) and the
  [Soft Clay Brief](../design/soft-clay-brief.md) replace them. Their history
  stays in Git.
