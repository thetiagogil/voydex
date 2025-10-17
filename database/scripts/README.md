# Database scripts

This folder contains small, focused Node.js scripts used to manage the local database for the Poketracker project. They are intentionally lightweight and rely on the shared helper utilities in `../helpers/*`.

Available scripts

- `db-status.js` — Inspect the database and list custom schemas and tables.
- `db-migration.js` — Interactive migration runner. Can run a single migration, a numbered selection, or `all`.
- `db-seed.js` — Interactive seed runner. Similar UX to `db-migration.js`.
- `db-validations.js` — Run the `VALIDATION QUERIES` block from seed files.
- `db-cleanup.js` — Destructive: drops custom schemas (uses `DROP SCHEMA ... CASCADE`). Use with caution.
- `db-cleanup-rows.js` — Non-destructive: truncates data from tables in the custom schemas (uses `TRUNCATE ... RESTART IDENTITY CASCADE`).

Common flags

- `--dry` — Do not execute any destructive SQL; print what would run.
- `--y` — Skip interactive confirmation (shortcut for automation). Also accepted by `confirmOrExit` helpers.
- `--sql` — Print the SQL that will be executed.

Environment

The scripts read `SUPABASE_DB_URL` (or equivalent) from environment variables. We load `.env.local` if present, otherwise `.env`. You can export environment variables in your shell or create an `.env.local`.

Examples

Run a status check:

```bash
node database/scripts/db-status.js
```

Dry-run a destructive reset (safe):

```bash
node database/scripts/db-cleanup.js --dry
```

Force a reset without confirmation (use carefully):

```bash
node database/scripts/db-cleanup.js --y
```

Run seed interactively (defaults to latest if you press Enter):

```bash
node database/scripts/db-seed.js
```

Show SQL while running a seed or migration:

```bash
node database/scripts/db-seed.js --sql
```

Tips

- Prefer `--dry` when testing. The scripts include an interactive confirmation and a short countdown for destructive actions.
  -- Use `--sql` to show SQL when you need to inspect generated statements.

If you'd like a JSON output mode or additional automation-friendly features (e.g. `--yes` alias, or returning machine-readable exit codes), I can add them.
