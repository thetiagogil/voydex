# Design References

This folder stores curated visual references for Voydex product screens.

These images are not pixel-perfect implementation contracts. They document the intended layout, information hierarchy, interaction ideas, and visual tone. When building the app, real data, responsive behavior, accessibility, and existing shadcn UI primitives take priority over copying every pixel.

## Rules

- Keep only selected reference mockups here.
- Do not add every generated attempt.
- Do not import these images into app code.
- Store production app assets under `public`, not `docs`.
- Prefer compressed PNG or WebP files when possible.
- If design images become large enough to affect normal git usage, move them to Git LFS or keep only smaller reference exports.

## Implementation Guidance

- Use `src/shared/components/ui` primitives for controls and overlays.
- Keep route files thin and compose reusable feature components from `src/modules` and `src/shared`.
- Treat screenshots as guidance for structure and product intent, not as fixed dimensions.
- Preserve the Voydex design direction: clean adventure companion, readable app surfaces, Pokémon-adjacent details, and subtle scenic background presence.
- When a mockup conflicts with the current database contract or product docs, follow the docs and update the mockup notes later.

## Current References

### Codex Pokemon Detail

- [Codex Pokemon Detail Direction](./codex-pokemon-detail.md): current
  product/design direction for the game-scoped Pokemon detail page, including
  form-selection decisions, evolution-line treatment, and known unresolved
  issues.

### Mainline Play

Location:

```txt
docs/design/mainline-play
```

Files:

- `01_overview.png`: Play hub overview with journey status, current team, team health, progress summary, and recent history.
- `02_team.png`: Team management view with active/reserve roster, selected Pokémon details, quick analysis, and team events.
- `03_progress.png`: Progress summary view for story, Pokedex, collectibles, and optional content.
- `04_progress_story.png`: Story progress view with ordered milestones and selected milestone detail.
- `05_progress_story_bulk.png`: Desktop bulk story completion flow.
- `06_progress_story_bulk_mobile.png`: Mobile bulk story completion flow.
- `07_progress_pokedex_grid.png`: Pokedex progress grid view.
- `08_progress_pokedex_grid_bulk.png`: Bulk Pokedex progress flow.
- `09_progress_pokedex_list.png`: Pokedex progress list view.
- `10_progress_collectibles.png`: Collectibles progress view.
