# Voydex Schema

Human-authored clean schema source lives here.

Load order:

1. `00_foundation`
2. `01_public`
3. `02_reference`
4. `03_tracking`
5. `04_gameplay`
6. `05_planning`
7. `06_views`
8. `07_private`, if later needed for additional internal-only objects

Within a schema folder, numbered child folders define dependency order. For example, `01_public/01_tables` runs before `01_public/02_functions`, which runs before `01_public/03_policies`. Gameplay follows the same pattern with tables before app-facing mutation functions and policies. Reference tables use the same pattern, with table files before read policies.

The local Supabase wrapper migration is generated from these reviewed source files at `../supabase/migrations/00000000000000_voydex_current_schema.sql`. Edit the source files here first, then regenerate through the existing npm scripts.

Active primary, unique, foreign-key, lookup, filter, and sort indexes belong in
the table file that owns them. Do not create a parallel index SQL source outside
this schema tree; `audit-schema-files.mjs` rejects that drift.
