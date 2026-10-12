# Design References

## Soft Clay

[Soft Clay Brief](./soft-clay-brief.md) is the agreed redesign brief (draft 2,
2026-10-12). It is a diff on the `Voydex Redesign v3` study: anything it
doesn't change stays as v3 draws it. The built system is described in the
[Design System](../app/design-system.md), which wins where the two disagree.

The v3 study itself (`index.html`, `REDESIGN.md`, `REVIEW.md`) lives outside
the repository in the owner's `Voydex Redesign v3` folder. It is a visual
reference, not a pixel contract: real data, responsive behaviour,
accessibility and the shared primitives take priority.

## Codex Pokémon Detail

[Codex Pokémon Detail Direction](./codex-pokemon-detail.md) is the product
guidance for the game-scoped detail page's information architecture.

## Rules

- Keep only selected references; discarded variants belong in Git history.
- Link every retained asset from this index so `npm run docs:check` can detect
  orphaned files.
- Do not import documentation images into application code; production assets
  live under `public`.
- Capture selected behaviour in the nearest design document; conversation-only
  mockups are not durable guidance.
