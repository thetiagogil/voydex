# Database Layer

PostgreSQL via Supabase. Three custom schemas: **meta** (reference data), **gameplay** (user data, RLS-protected), **views** (precomputed queries).

## Structure

```
database/
  migrations/           SQL DDL — schemas, tables, enums, indexes, RLS, views
    001_public_tables/    Auth profiles (public schema)
    002_meta_tables/      Reference data (~25 tables)
    003_gameplay_tables/  User gameplay data (6 tables)
    004_views/            Presentation layer
  scripts/              Node.js tooling
    config/               Central configuration
    helpers/              Shared utilities
  seeds/                Static data population
    approved/             Reviewed seed files (SQL)
      01_meta/            Generations, regions, version groups, games
      02_reference/       Types, natures, egg groups
      03_abilities/       Per-generation ability lists
      04_moves/           Per-generation move lists
      05_pokemon/         Species, forms, attributes (sub-folders)
      06_items/           Per-generation item lists
      07_move_attributes/ Per-generation move mechanics (timeline model)
      08_regional_dex/    Per-VG regional dex entries
      09_pokemon_availability/  Per-VG species availability
      10_move_availability/     Per-VG move availability
      11_item_availability/     Per-VG item availability
      12_pokemon_learnsets/     Per-VG learnsets (largest dataset)
      13_progress/        Progress categories, items, pokemon refs
```

## Scripts

Run from project root via `npm run db:<command>`:

| Command                  | Purpose                              |
| ------------------------ | ------------------------------------ |
| `db:migrate`             | Run migrations (interactive or all)  |
| `db:seed`                | Run seed files (interactive or all)  |
| `db:status`              | Show schemas, tables, row counts     |
| `db:info`                | Detailed table/view/size info        |
| `db:validate`            | Verify schema integrity              |
| `db:clean:all`           | Drop ALL custom schemas (danger)     |
| `db:clean:static`        | Drop meta + views, preserve gameplay |
| `db:clean:rows:all`      | Truncate ALL tables                  |
| `db:clean:rows:static`   | Truncate static tables only          |
| `db:refresh:views`       | Refresh materialized views           |
| `db:verify:seeds`        | FK integrity, slug consistency       |
| `db:verify:availability` | Coverage checks per species per VG   |
| `db:verify:learnsets`    | Learnset integrity validation        |

## Conventions

- **Migrations**: numbered within folders, run alphabetically. Idempotent where possible.
- **Seeds**: CTE pattern with `seed_data` alias, slug-based FK JOINs, `ON CONFLICT DO NOTHING`.
- **Seed folders**: 2-digit prefix (`01_`–`13_`). Files within use 3-digit prefix matching the table sequence.
- **Column naming**: `introduced_generation_id` (not `generation_introduced_id`).
- **DLC**: modeled as version groups with `parent_version_group_id`. No fake DLC game rows.
- **Timeline model**: `pokemon_attributes` and `move_attributes` use `generation_start_id` composite keys.
- **All FKs**: resolved via integer IDs internally, slug-based JOINs in seeds.
