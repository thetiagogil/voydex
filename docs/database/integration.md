# Database Integration

Voydex uses a dedicated Supabase project whose active source is co-located with
the app:

```txt
database/
```

The verified cutover is recorded in
[ADR 0002](../decisions/0002-colocate-database-source.md).

## Database Source Of Truth

| Artifact                       | Location                                                                |
| ------------------------------ | ----------------------------------------------------------------------- |
| Human-authored schema          | `database/schema`                                                       |
| Human-authored seeds           | `database/seeds`                                                        |
| Supabase config and tests      | `database/supabase`                                                     |
| Generated local schema wrapper | `database/supabase/migrations/00000000000000_voydex_current_schema.sql` |
| Generated local seed wrapper   | `database/supabase/seed.sql`                                            |
| Generated/app TypeScript types | `src/shared/types/database.types.ts`                                    |
| Database docs                  | `docs/database`                                                         |

Edit schema and seed source files, not generated wrappers.

## Schema Responsibilities

### `public`

Auth-linked profiles, preferences, and user-owned shared metadata such as tags.

### `reference`

Static curated Pokémon/game data:

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
- current roster and Pokémon lifecycle
- story, collectible, and Pokedex progress
- timeline events and snapshots
- play tags, challenge rules, and game library entries

### `planning`

User-owned team planning state:

- `mainline_team_plans`
- planned members and moves
- optional content scopes
- play-to-plan link for the play's focused Team Plan
- plan member statuses
- plan tags and challenge rules

The current product contract is one focused linked Team Plan per play, even though the database uses link/member-link tables to preserve clean relationship and status modeling.

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

Database types generate directly into `src/shared/types/database.types.ts`.

When database schema changes:

1. Update the human-authored schema or seeds under `database`.
2. Add a forward migration when changing a database that may already exist.
3. Run `npm run db:verify`.
4. Run `npm run db:types` when the contract intentionally changes.
5. Update app queries/actions and run `npm run verify`.

## Local Verification Commands

```bash
npm run db:start
npm run db:verify
```

The individual database gates are also available:

```bash
npm run db:reset
npm run db:audit
npm run db:lint
npm run db:test
npm run db:types:check
```

`npm run verify` remains the Docker-free app verification flow. Linked type
generation through `db:types:linked` is a separate remote read and requires
explicit authorization.

## Important Product/Data Notes

- Current active database product family is `mainline`.
- Future product families are `dungeon`, `pokopia`, `go`, `home`, `ranger`, and `sleep`.
- Pokedex completion is species-level.
- DLC and other optional content are per-play scope choices.
- National/special Pokedex scopes are supported as optional completion scopes when seeded.
- Reference data should be curated from historically accurate sources; PokeAPI can be useful for automated checks but should not be treated as the curated source of truth.
- Item data is Pokémon-relevant only, not a full item encyclopedia.
- Availability and learnsets use cumulative content-scope delta rows.
- Battle-only and cosmetic forms are excluded from team-selectable scope unless a future feature explicitly expands them.
