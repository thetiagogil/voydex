-- ============================================================================
-- Device schema
-- Runs once on a new device, before the Voydex schema. It stands in for what
-- hosted Supabase provides (the API roles and auth.uid()) and adds the
-- device's own bookkeeping. There is one local user, and it owns every row.
-- ============================================================================
CREATE ROLE anon NOLOGIN;

CREATE ROLE authenticated NOLOGIN;

CREATE ROLE service_role NOLOGIN BYPASSRLS;

CREATE SCHEMA auth;

CREATE TABLE auth.users (
    id uuid PRIMARY KEY,
    created_at timestamptz NOT NULL DEFAULT NOW()
);

CREATE FUNCTION auth.uid ()
    RETURNS uuid
    LANGUAGE sql
    STABLE
    AS $$
    SELECT
        '00000000-0000-4000-8000-000000000001'::uuid;
$$;

CREATE SCHEMA device;

COMMENT ON SCHEMA device IS 'What this device has installed: the schema and the game data files.';

CREATE TABLE device.installs (
    id boolean PRIMARY KEY DEFAULT TRUE CHECK (id),
    schema_hash text NOT NULL,
    installed_at timestamptz NOT NULL DEFAULT NOW()
);

-- One row per installed game data file: "base", a game ("swsh") or its
-- learnsets ("swsh-learnsets"), with the content hash it was built with.
CREATE TABLE device.game_data_files (
    name text PRIMARY KEY,
    hash text NOT NULL,
    format integer NOT NULL,
    imported_at timestamptz NOT NULL DEFAULT NOW()
);

-- One row per device update (database/device-updates/) this device's data
-- already has: run on it, or part of the schema it was installed with.
CREATE TABLE device.updates (
    name text PRIMARY KEY,
    applied_at timestamptz NOT NULL DEFAULT NOW()
);

-- When this device last saved a backup: as a file, or to the account. The
-- quiet "Last backup" note reads it.
CREATE TABLE device.backups (
    kind text PRIMARY KEY CHECK (kind IN ('file', 'account')),
    saved_at timestamptz NOT NULL
);
