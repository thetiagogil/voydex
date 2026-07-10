# Database Architecture

Voydex should be designed as a dedicated Supabase/Postgres project.

The database must support the full product direction: play tracking, planning, Pokedex search, Collection, timeline/history, rules, tags, and future progression-aware planning.

## Design Principles

- Treat the legacy database as reference material, not as the source of truth.
- Store user intent and meaningful user state.
- Derive summaries, stats, Collection, completion, and dashboards when practical.
- Keep static Pokémon/game data separate from user-owned gameplay state.
- Keep planning separate from active mainline_plays.
- Snapshot historical team state where the user expects history to remain stable.
- Prefer constraints over app-only validation for integrity rules.
- Keep client-facing reference data read-only.
- Use RLS on exposed schemas and ownership policies for user-owned rows.
- Use views/read models for app queries, with `security_invoker = true` where applicable.

## Schema Domains

### public

Auth-linked user profile and user-level metadata.

Expected responsibilities:

- User profile rows linked to Supabase auth users.
- User preferences.
- User-owned global tags.
- Shared helper functions/triggers such as `updated_at` if appropriate.

### reference

Static Pokémon/game data used by tracking, planning, Pokedex search, team building, and gameplay validation.

Expected responsibilities:

- Generations, regions, games, version groups, game content scopes, and DLC relationships.
- Ordered optional content dependencies for cumulative DLC/update resolution.
- Pokémon species, forms, form rules, and generation-specific attributes.
- Evolutions and evolution methods.
- Types, type matchups, abilities, ability attributes, move kinds, moves, move attributes, natures, egg groups.
- Pokémon-relevant items, item categories, and item category memberships.
- Pokémon, move, and item availability by version group and optional game content scope.
- Resolved reference query models for effective availability, machine catalogs, and learnsets after applying cumulative content scopes.
- Pokedex definitions and entries.

Reference tables should be readable by client roles and writable only by service/admin roles.

### tracking

Static or curated game progression definitions.

Expected responsibilities:

- Mainline story categories and mainline_milestones by version group and optional game content scope.
- Important fights, mainline_opponents, mainline_badges, and milestone metadata.
- Snapshot policy for milestone types.
- Collectibles and collectible entries by version group and optional game content scope.
- Optional decision options for story choices.

Tracking data is not user progress. It defines what can be tracked.

`mainline_milestones` is the internal schema term for ordered story/progression steps. User-facing screens can call them Story Steps.

### gameplay

User-owned playthrough state.

Expected responsibilities:

- Plays and play metadata.
- Play settings and selected optional content.
- Play Pokémon/current roster/lifecycle state.
- Species-level Play Pokedex progress.
- Play collectible progress.
- Play story progress and decisions.
- Play events, journal entries, and timeline.
- Team snapshots for story mainline_milestones and Hall of Fame/final team.
- Play and Play Pokémon tag links to `public.tags`.
- User game backlog/wishlist.

### planning

User-owned team planning state separate from active playthrough state.

Expected responsibilities:

- Team plans.
- Planned team members, target species/forms, and optional preferred starting species/forms.
- Plan optional content, rules/challenges, and tags.
- Plan-to-play links.
- Plan member statuses: pending, linked, reached, skipped.

Plans can exist before mainline_plays and should not be nested under mainline_plays.

### views

Read models for app queries.

Expected responsibilities:

- Play summaries.
- Play overview data.
- Team detail views.
- Pokedex progress detail views.
- Collection views.
- Plan detail views.
- Stats and dashboard summary views.
- Resolved reference read models for cumulative content scopes where raw DLC/update rows are stored as deltas.

Views exposed to client roles should use `security_invoker = true` where supported, or otherwise be protected by grants/RLS-compatible access patterns.

### private

Optional internal helpers not exposed through the Data API.

Expected responsibilities:

- Security definer functions if ever needed.
- Maintenance helpers.
- Internal generated/import staging if needed.

Do not place security definer functions in exposed schemas.

## Access Model

### reference

- `anon` and `authenticated`: `SELECT` only.
- `postgres`, `service_role`, and admin/dashboard roles: seed and maintenance access.
- RLS should be enabled as defense in depth when exposed.

### tracking

- Client roles may need `SELECT`.
- No client writes.
- RLS/read policies should mirror the reference read-only model if exposed.

### gameplay and planning

- Rows are user-owned.
- RLS must enforce `auth.uid()` ownership through direct `user_id` columns or parent play/plan ownership.
- Mutations should never rely only on app-side checks.

### views

- Treat views as app read models.
- Use `security_invoker = true` for Postgres 15+ when views read RLS-protected tables.

## File Organization

The active clean project uses this structure:

```txt
database/
  schema/
    00_foundation/
    01_public/
    02_reference/
    03_tracking/
    04_gameplay/
    05_planning/
    06_views/
  seeds/
    00_foundation/
    02_reference/
    03_tracking/
    04_gameplay/
    05_planning/
  supabase/
    migrations/
      00000000000000_voydex_current_schema.sql
      <timestamp>_<name>.sql
    seed.sql
    config.toml
scripts/database/
docs/database/
src/shared/types/
  database.types.ts
```

Schema and seed source files are human-authored. Active indexes live beside the
table schema that owns them. The baseline schema migration and seed entrypoint
under `database/supabase` are generated for local reset/load verification. The
optional `private` domain has no active source folder; internal helper functions
currently live in the reviewed schema layers that own them.
