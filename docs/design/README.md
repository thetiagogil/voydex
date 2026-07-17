# Design References

These curated images capture layout, information hierarchy, interaction ideas,
and Voydex's clean adventure-companion tone. They are not pixel contracts.
Real data, responsive behavior, accessibility, current product contracts, and
shared UI primitives take priority.

## Current V1 Brief

[V1 Screen Flow And Design Handoff](./v1-screen-flow.md) is the canonical brief
for the current design-to-implementation phase. The functional review remains
complete, while the visual language is being reset through three representative
shared-shell and Plays Browse directions before further production styling.
The handoff defines the complete Mainline and Codex journey, authenticated
Codex-to-Mainline actions, current implementation order, and restart
instructions for a new workstation or task.

[V1 Visual Language](./v1/visual-language.md) is the canonical art-direction
brief for the light-first explorer's field-guide identity, color and material
roles, navigation metaphor, module character, anti-goals, and current visual
selection gate.

[V1 Design Workspace](./v1/README.md) organizes the breadth-first product
review, screen coverage, design decisions, data requirements, and deferred
database-gap register used throughout that phase.

## Rules

- Keep only selected references; discarded generation variants belong in Git
  history, not this directory.
- Link every retained asset from this index so `npm run docs:check` can detect
  orphaned files.
- Do not import documentation images into application code.
- Store production assets under `public`.
- Capture selected behavior and responsive decisions in the nearest design
  reference; conversation-only mockups are not durable project guidance.
- Revisit Git LFS or compressed exports if curated references materially affect
  normal repository use.

## Codex Pokémon Detail

[Codex Pokémon Detail Direction](./codex-pokemon-detail.md) is the canonical
design/product guidance for the implemented game-scoped detail page.

## Legacy Mainline Play References

These images are optional ideation references. The V1 design pass may reuse,
reinterpret, or replace them; they do not constrain layout or interaction.

- [Overview](./mainline-play/01_overview.png): journey, current team, progress,
  and recent history.
- [Team](./mainline-play/02_team.png): active/reserve management and analysis.
- [Progress summary](./mainline-play/03_progress.png): story, Pokedex,
  collectibles, and optional content.
- [Story progress](./mainline-play/04_progress_story.png): ordered milestones
  and selected detail.
- [Story bulk desktop](./mainline-play/05_progress_story_bulk.png)
- [Story bulk mobile](./mainline-play/06_progress_story_bulk_mobile.png)
- [Pokedex grid](./mainline-play/07_progress_pokedex_grid.png)
- [Pokedex grid bulk](./mainline-play/08_progress_pokedex_grid_bulk.png)
- [Pokedex list](./mainline-play/09_progress_pokedex_list.png)
- [Collectibles](./mainline-play/10_progress_collectibles.png)

The current Overview intentionally excludes Team Health until the Team workflow
has a real analysis model.
