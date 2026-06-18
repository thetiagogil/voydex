# Database Integration

Voydex uses a dedicated Supabase project. The active database source lives in:

```txt
C:\Users\talme\Documents\Dev\Tiago\00-databases\projects\voydex
```

This app repo consumes the database contract; it does not own schema or seed source.

## Database Source Of Truth

| Artifact                       | Location                                                                                    |
| ------------------------------ | ------------------------------------------------------------------------------------------- |
| Human-authored schema          | `00-databases/projects/voydex/schema`                                                       |
| Human-authored seeds           | `00-databases/projects/voydex/seeds`                                                        |
| Database docs                  | `00-databases/projects/voydex/docs`                                                         |
| Generated local schema wrapper | `00-databases/projects/voydex/supabase/migrations/00000000000000_voydex_current_schema.sql` |
| Generated local seed wrapper   | `00-databases/projects/voydex/supabase/seed.sql`                                            |
| Generated TypeScript types     | `00-databases/projects/voydex/types/database.types.ts`                                      |
| App-consumed TypeScript types  | `13-voydex/src/types/database.types.ts`                                                     |

Edit schema and seed source files in `00-databases`, not generated wrappers.

## Schema Responsibilities

### `public`

Auth-linked profiles, preferences, and user-owned shared metadata such as tags.

### `reference`

Static curated Pokemon/game data:

- Generations, regions, games, version groups, content scopes, platforms.
- Species, forms, form rules, attributes, evolutions.
- Types, natures, egg groups, matchups.
- Abilities, moves, items, machines, availability, learnsets.
- Pokedex definitions and entries.

Reference is client-readable and service/admin writable only.

### `tracking`

Static curated tracking definitions:

- Mainline story categories and milestones.
- Snapshot policy.
- Opponents, badges, decisions.
- Collectibles and collectible entries.

Tracking defines what can be tracked. It is not user progress.

### `gameplay`

User-owned play state:

- `mainline_plays`
- play settings and optional content scopes
- current roster and Pokemon lifecycle
- story, collectible, and Pokedex progress
- timeline events and snapshots
- play tags, challenge rules, and game library entries

### `planning`

User-owned team planning state:

- `mainline_team_plans`
- planned members and moves
- optional content scopes
- plan-to-play links
- plan member statuses
- plan tags and challenge rules

### `views`

App-facing read models for summaries, details, dashboard, stats, collection, completion, Pokedex progress, and plan/play views.

Views are read targets, not mutation targets.

## App Write Contract

Prefer database helper functions for multi-table behavior:

- `gameplay.add_mainline_play_pokemon`
- `gameplay.evolve_mainline_play_pokemon`
- `gameplay.change_mainline_play_pokemon_form`
- `gameplay.retire_mainline_play_pokemon`
- `gameplay.replace_mainline_play_pokemon`
- `gameplay.complete_mainline_play_milestone`
- `gameplay.set_mainline_play_collectible_entry_progress`
- `gameplay.set_mainline_play_pokedex_species_progress`
- `planning.link_mainline_team_plan_to_play`
- `planning.initialize_mainline_play_plan_member_links`
- `planning.link_mainline_play_pokemon_to_plan_member`
- `planning.realize_mainline_team_plan_member`
- `planning.skip_mainline_team_plan_member`
- `planning.refresh_mainline_play_plan_member_link_status`

Direct CRUD is acceptable for simpler user-owned surfaces where RLS and constraints already enforce ownership and validity, such as tags, rule links, and user game library rows.

## Access Rules

- `reference`: client `SELECT`; no client writes.
- `tracking`: client `SELECT`; no client writes.
- `gameplay`: user-owned rows protected by RLS.
- `planning`: user-owned rows protected by RLS.
- `views`: app read models; use Supabase-safe security behavior.

Do not rely on app-side checks for ownership, team limits, play/version consistency, or scope validity.

## Type Flow

Database types are generated in `00-databases` and copied into the app:

```txt
00-databases/projects/voydex/types/database.types.ts
13-voydex/src/types/database.types.ts
```

When database schema changes:

1. Update schema/seeds in `00-databases`.
2. Run local reset/audit/type generation there.
3. Copy the generated type file into `13-voydex`.
4. Update app queries/actions to the new contract.
5. Run app lint/build.

## Local Verification Commands

Run from `00-databases`:

```powershell
npm.cmd run db:start:voydex
npm.cmd run db:reset:voydex
npm.cmd run db:types:voydex -- --local
node projects\voydex\scripts\audit-seed-files.mjs
node scripts\supabase-target.mjs voydex db lint --local --fail-on error
```

Run from `13-voydex`:

```bash
npm run format:check
npm run lint
npm run build
```

## Important Product/Data Notes

- Current active app module is `mainline`.
- Future modules are `dungeon`, `pokopia`, `go`, `home`, `ranger`, and `sleep`.
- Pokedex completion is species-level.
- DLC and other optional content are per-play scope choices.
- National/special Pokedex scopes are supported as optional completion scopes when seeded.
- Reference data should be curated from historically accurate sources; PokeAPI can be useful for automated checks but should not be treated as the curated source of truth.
- Item data is Pokemon-relevant only, not a full item encyclopedia.
- Availability and learnsets use cumulative content-scope delta rows.
- Battle-only and cosmetic forms are excluded from team-selectable scope unless a future feature explicitly expands them.
