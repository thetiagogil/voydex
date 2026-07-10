# App Handoff

This note is the database-side handoff for wiring `13-voydex` to the clean Voydex Supabase project.

## Source Of Truth

- Human-authored schema source: `database/schema`.
- Human-authored seed source: `database/seeds`.
- Active indexes: beside their owning tables under `database/schema`.
- Supabase workspace: `database/supabase`.
- Generated local schema wrapper:
  `database/supabase/migrations/00000000000000_voydex_current_schema.sql`.
- Generated local seed wrapper: `database/supabase/seed.sql`.
- Generated TypeScript database types: `src/shared/types/database.types.ts`.

The generated wrapper files are load artifacts. Edit the source schema/seed files, then rebuild wrappers through the existing npm scripts.

## Local Commands

Run from the `13-voydex` repository root.

```powershell
npm.cmd run db:start
npm.cmd run db:verify
```

`db:verify` rebuilds the generated local schema and seed wrappers before reset,
then runs audits, lint, pgTAP, and local type parity. Use `db:types:linked` only
for an explicitly authorized remote comparison.

## App Contract

- Client-readable static data is in `reference`, `tracking`, and `views`.
- User-owned writes live in `public`, `gameplay`, and `planning`, protected by RLS.
- Views are read models and should not be mutation targets.
- Reference and tracking tables are client read-only.
- Ordinary collectible and Pokedex toggles should use `gameplay.set_mainline_play_collectible_entry_progress` and `gameplay.set_mainline_play_pokedex_species_progress`.
- Interactive story progress should use `gameplay.complete_mainline_play_milestone`.
- Plan/play bridge workflows should use the `planning.*` helper functions instead of hand-writing multi-table mutations.
- Tags, rule links, and user game library rows are direct CRUD surfaces because ownership is enforced by RLS and constraints.

## Scope Notes

- Current active product family is `mainline`; future modules are `dungeon`, `pokopia`, `go`, `home`, `ranger`, and `sleep`.
- The current seed scope is mainline/mainline-style playthrough data through Generation IX and the currently modeled Pokémon Legends: Z-A / Mega Dimension reference scope.
- Battle-only and purely cosmetic living-dex forms remain outside team-selectable form scope unless a future feature expands that product surface.
- Full location/story-gate availability, platform-specific rerelease differences, and HOME/living-dex workflows are documented backlog, not app-blocking gaps.
