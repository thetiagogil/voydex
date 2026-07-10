# Schema Design Readiness

This checklist records the accepted schema-design decisions and the current clean SQL implementation readiness.

It turns the product/database contract into concrete readiness criteria for app handoff.

## Ready Criteria

The database is ready for app integration when these are true:

- Product feature contract is accepted.
- Navigation and route model is accepted.
- Data ownership rules are accepted.
- Database schema domains are accepted.
- Reference source hierarchy is accepted.
- Legacy database is treated as reference material only.
- Active `database/schema` contains the reviewed foundation, `public`,
  `reference`, `tracking`, `gameplay`, `planning`, and `views` SQL layers.
- Active `database/seeds` contains the current production seed scope for
  foundation prerequisites, reference data, tracking definitions, gameplay
  lookups, and planning lookups.
- Generated Supabase wrappers load successfully through local reset.
- Database types can be generated from the local schema for app integration.
- Remaining backlog items are documented as future product scope, not blockers for app setup.

## Accepted Architecture Decisions

### Dedicated Supabase Project

Voydex remains a dedicated Supabase/Postgres project.

### Schema Domains

The clean database should use these domains:

- `public`
- `reference`
- `tracking`
- `gameplay`
- `planning`
- `views`
- `private`, if needed

### Reference Access

Client roles should have read-only access to reference data.

Reference write access is reserved for service/admin roles used by migrations, seeds, and maintenance.

### Tracking Access

Tracking definitions are read-only for clients.

Gameplay tables record user progress.

### User-Owned Tables

Gameplay and planning rows must be protected by RLS ownership rules.

Ownership should be enforced through `auth.uid()` either directly on `user_id` columns or through parent play/plan ownership.

### Views

Views are read models, not mutation targets.

Views that read RLS-protected data should use Supabase-safe security behavior such as `security_invoker = true` where applicable.

### Reference Source Hierarchy

The source hierarchy is:

1. Official Pokémon sources.
2. Serebii.
3. Bulbapedia.
4. PokemonDB.
5. PokeAPI CSV snapshots for machine-readable sanity checks only.

PokeAPI is not authoritative when curated historic sources disagree.

## Implemented Schema Design Outputs

The reviewed SQL source implements the following design outputs:

### public

- User profile/auth-linked data.
- User preferences.
- User-owned global tags.
- Shared helper functions/triggers if appropriate.

### reference

- Game/version group/DLC data.
- Pokémon species/forms/form rules.
- Pokémon attributes.
- Generation-aware type matchups and ability attributes.
- Evolution methods and evolution edges.
- Types/type matchups, abilities/ability attributes, move kinds, moves/move attributes, items, natures, and egg groups.
- Availability and learnsets.
- Pokedex definitions and entries.

### tracking

- Story/milestone definitions.
- Snapshot policy metadata.
- Collectible definitions and entries.
- Decision option definitions.
- Pokémon/opponent/badge/collectible references.

### gameplay

- Plays and play metadata/settings.
- Optional content selected per play.
- Play Pokémon lifecycle/current roster.
- Normalized play Pokémon move slots.
- Sparse play progress for mainline_milestones, milestone decisions, mainline_collectibles, and species-level Pokedex progress.
- Play timeline/events/journal with event origins, event-time Pokémon refs, and timeline order.
- Team snapshots and snapshot moves.
- Play and play Pokémon tag joins.
- Shared challenge/rule definitions and play rule joins.
- User game backlog/wishlist.

### planning

- Team plans.
- Optional content selected per plan.
- Planned members and planned moves.
- Plan-to-play links.
- Plan member links to play Pokémon through one play/plan relationship.
- Plan tags and rules/challenges for plans.

### views

- Play summary.
- Play overview.
- Team detail.
- Timeline detail.
- Pokedex progress detail.
- Collectible detail.
- Plan detail.
- Collection detail.
- Collection used identities.
- Dashboard and stats summaries.

## Resolved Schema Design Choices

These choices should be reviewed before SQL implementation. They are no longer open unless the review changes them.

### Play Mainline

- `gameplay.mainline_plays` is the central user-owned adventure root.
- Play statuses are `not_started`, `playing`, `paused`, `completed`, and `abandoned`.
- Archive is separate from status via `archived_at`.
- Play names are required in stored data; app create flow generates defaults when needed.
- Completion is derived, not stored as source-of-truth percentage columns.

### Team Management

- Active roster slots are 1 to 6.
- Reserve roster slots are 7 to 12.
- Retired/replaced Pokémon have no current slot and do not count toward the cap.
- Move slots are normalized in a child table.
- Recorded lifecycle events preserve event-time Pokémon identity for Collection and reuse history.
- Correction-only edits do not create timeline history.

### Story, Pokedex, And Collectibles

- Story progress uses sparse milestone progress rows.
- Milestone decisions are stored separately from milestone completion.
- Collectible progress uses sparse rows where absence means uncollected.
- Pokedex progress is species-level by play/species, not per Pokedex entry.
- Pokedex caught implies seen.
- Pokedex progress species must belong to a Pokedex in the play base version group or selected optional content.
- DLC/optional content is selected per play.
- Mythical inclusion is a play setting.

### Timeline And Snapshots

- Timeline events are user-facing history, not technical audit logs.
- Timeline events have origin, type, optional timestamp, and explicit play-local order.
- Event Pokémon refs store event-time species/form identity.
- Team snapshots store historical display copies and snapshot move slots.
- Snapshots are optional for story mainline_milestones.

### Planning

- Plans exist independently from mainline_plays and can be reused.
- A play can link at most one team plan.
- Plans can select optional content such as DLC before a play exists.
- Planned members use an explicit group plus slot: mainline slots 1 to 6 and alternate/reserve slots 1 to 6.
- Plan member status belongs to a play/plan relationship.
- Creating a play from a plan does not fill the active team.
- Preferred starting Pokémon and final targets support preemptive reuse warnings.

### Personalization

- Tags live in `public.tags` with typed joins in gameplay/planning.
- Preferences live in `public.user_preferences`.
- Pokémon reuse preferences are global defaults but play/plan rules can override them.
- Backlog/wishlist lives in `gameplay.user_game_library_entries` and is independent user intent.

### Rules, Collection, And Stats

- Challenge rules support predefined structured rules and user custom descriptive rules.
- Structured rule config is used for reuse scope/behavior and future enforceable rule types.
- Collection is derived from current play Pokémon, event Pokémon refs, and meaningful snapshots.
- Collection exposes form, species, and evolution-family identities.
- Stats and dashboard data are derived read models unless later cached for performance.

### Reference Scope

- Type matchups are generation-aware so team weakness/resistance calculations match the selected game era.
- Ability attributes are generation-aware where ability mechanics or descriptions changed historically.
- Item catalog is Pokémon-relevant only: held items and biography/mechanics items, not a full item encyclopedia.
- Availability starts with game/version-group plus curated method/context detail, validated through game content scopes when game-specific.
- Full location/story-gate availability remains backlog.
- Reference source hierarchy is official sources, Serebii, Bulbapedia, PokemonDB, then PokeAPI sanity checks only.
- Top-level user-owned UUID defaults use `uuidv7()` on Postgres 18+ and `gen_random_uuid()` otherwise.
- No product/schema decisions remain open before clean SQL implementation.

## Implementation Status

This readiness checklist has been reviewed and accepted. Clean SQL source files and seed files now exist for the foundation, `public`, `reference`, `tracking`, `gameplay`, `planning`, and `views` layers. The current database-side next step is app handoff, not additional clean schema design.
