-- Rename app module taxonomy to product families.
DO $$
BEGIN
    IF to_regclass('reference.product_families') IS NULL THEN
        IF to_regclass('reference.app_modules') IS NOT NULL THEN
            ALTER TABLE reference.app_modules RENAME TO product_families;
        ELSE
            CREATE TABLE reference.product_families (
                id integer PRIMARY KEY,
                slug text NOT NULL UNIQUE,
                name text NOT NULL UNIQUE,
                description text NOT NULL,
                support_status text NOT NULL,
                sort_order integer NOT NULL UNIQUE,
                created_at timestamptz NOT NULL DEFAULT NOW(),
                CONSTRAINT product_families_id_positive_check CHECK (id > 0),
                CONSTRAINT product_families_slug_format_check CHECK (slug = LOWER(slug) AND slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$' AND CHAR_LENGTH(slug) <= 80),
                CONSTRAINT product_families_name_length_check CHECK (CHAR_LENGTH(BTRIM(name)) BETWEEN 1 AND 120),
                CONSTRAINT product_families_description_length_check CHECK (CHAR_LENGTH(BTRIM(description)) BETWEEN 1 AND 1000),
                CONSTRAINT product_families_support_status_check CHECK (support_status IN ('active', 'planned', 'backlog')),
                CONSTRAINT product_families_sort_order_positive_check CHECK (sort_order > 0)
            );
    END IF;
END IF;
END
$$;

DO $$
BEGIN
    IF EXISTS (
        SELECT
            1
        FROM
            pg_constraint
        WHERE
            conname = 'app_modules_pkey'
            AND conrelid = 'reference.product_families'::regclass) THEN
    ALTER TABLE reference.product_families RENAME CONSTRAINT app_modules_pkey TO product_families_pkey;
END IF;
    IF EXISTS (
        SELECT
            1
        FROM
            pg_constraint
        WHERE
            conname = 'app_modules_slug_key'
            AND conrelid = 'reference.product_families'::regclass) THEN
    ALTER TABLE reference.product_families RENAME CONSTRAINT app_modules_slug_key TO product_families_slug_key;
END IF;
    IF EXISTS (
        SELECT
            1
        FROM
            pg_constraint
        WHERE
            conname = 'app_modules_name_key'
            AND conrelid = 'reference.product_families'::regclass) THEN
    ALTER TABLE reference.product_families RENAME CONSTRAINT app_modules_name_key TO product_families_name_key;
END IF;
    IF EXISTS (
        SELECT
            1
        FROM
            pg_constraint
        WHERE
            conname = 'app_modules_sort_order_key'
            AND conrelid = 'reference.product_families'::regclass) THEN
    ALTER TABLE reference.product_families RENAME CONSTRAINT app_modules_sort_order_key TO product_families_sort_order_key;
END IF;
    IF EXISTS (
        SELECT
            1
        FROM
            pg_constraint
        WHERE
            conname = 'app_modules_id_positive_check'
            AND conrelid = 'reference.product_families'::regclass) THEN
    ALTER TABLE reference.product_families RENAME CONSTRAINT app_modules_id_positive_check TO product_families_id_positive_check;
END IF;
    IF EXISTS (
        SELECT
            1
        FROM
            pg_constraint
        WHERE
            conname = 'app_modules_slug_format_check'
            AND conrelid = 'reference.product_families'::regclass) THEN
    ALTER TABLE reference.product_families RENAME CONSTRAINT app_modules_slug_format_check TO product_families_slug_format_check;
END IF;
    IF EXISTS (
        SELECT
            1
        FROM
            pg_constraint
        WHERE
            conname = 'app_modules_name_length_check'
            AND conrelid = 'reference.product_families'::regclass) THEN
    ALTER TABLE reference.product_families RENAME CONSTRAINT app_modules_name_length_check TO product_families_name_length_check;
END IF;
    IF EXISTS (
        SELECT
            1
        FROM
            pg_constraint
        WHERE
            conname = 'app_modules_description_length_check'
            AND conrelid = 'reference.product_families'::regclass) THEN
    ALTER TABLE reference.product_families RENAME CONSTRAINT app_modules_description_length_check TO product_families_description_length_check;
END IF;
    IF EXISTS (
        SELECT
            1
        FROM
            pg_constraint
        WHERE
            conname = 'app_modules_support_status_check'
            AND conrelid = 'reference.product_families'::regclass) THEN
    ALTER TABLE reference.product_families RENAME CONSTRAINT app_modules_support_status_check TO product_families_support_status_check;
END IF;
    IF EXISTS (
        SELECT
            1
        FROM
            pg_constraint
        WHERE
            conname = 'app_modules_sort_order_positive_check'
            AND conrelid = 'reference.product_families'::regclass) THEN
    ALTER TABLE reference.product_families RENAME CONSTRAINT app_modules_sort_order_positive_check TO product_families_sort_order_positive_check;
END IF;
END
$$;

DO $$
BEGIN
    IF to_regclass('reference.games') IS NOT NULL THEN
        IF EXISTS (
            SELECT
                1
            FROM
                information_schema.columns
            WHERE
                table_schema = 'reference'
                AND table_name = 'games'
                AND column_name = 'app_module_id')
            AND NOT EXISTS (
                SELECT
                    1
                FROM
                    information_schema.columns
                WHERE
                    table_schema = 'reference'
                    AND table_name = 'games'
                    AND column_name = 'product_family_id') THEN
            ALTER TABLE reference.games RENAME COLUMN app_module_id TO product_family_id;
    END IF;
    IF EXISTS (
        SELECT
            1
        FROM
            pg_constraint
        WHERE
            conname = 'games_app_module_id_fkey'
            AND conrelid = 'reference.games'::regclass) THEN
    ALTER TABLE reference.games RENAME CONSTRAINT games_app_module_id_fkey TO games_product_family_id_fkey;
END IF;
    IF EXISTS (
        SELECT
            1
        FROM
            information_schema.columns
        WHERE
            table_schema = 'reference'
            AND table_name = 'games'
            AND column_name = 'product_family_id') THEN
    ALTER TABLE reference.games
        ALTER COLUMN product_family_id SET NOT NULL;
    IF NOT EXISTS (
        SELECT
            1
        FROM
            pg_constraint
        WHERE
            conname = 'games_product_family_id_fkey'
            AND conrelid = 'reference.games'::regclass) THEN
    ALTER TABLE reference.games
        ADD CONSTRAINT games_product_family_id_fkey FOREIGN KEY (product_family_id) REFERENCES reference.product_families (id) ON UPDATE CASCADE ON DELETE RESTRICT;
END IF;
END IF;
END IF;
END
$$;

COMMENT ON TABLE reference.product_families IS 'Static Pokémon product families such as mainline, dungeon, Pokopia, GO, HOME, Ranger, and Sleep.';

COMMENT ON COLUMN reference.product_families.support_status IS 'Product family support state: active, planned, or backlog.';

DO $$
BEGIN
    IF to_regclass('reference.games') IS NOT NULL AND EXISTS (
        SELECT
            1
        FROM
            information_schema.columns
        WHERE
            table_schema = 'reference' AND table_name = 'games' AND column_name = 'product_family_id') THEN
        COMMENT ON COLUMN reference.games.product_family_id IS 'Pokémon product family that owns this game experience.';
    END IF;
END
$$;

ALTER TABLE reference.product_families ENABLE ROW LEVEL SECURITY;

REVOKE ALL ON TABLE reference.product_families FROM anon, authenticated;

GRANT SELECT ON TABLE reference.product_families TO anon, authenticated;

GRANT ALL ON TABLE reference.product_families TO service_role;

DROP POLICY IF EXISTS app_modules_read_all ON reference.product_families;

DO $$
BEGIN
    IF NOT EXISTS (
        SELECT
            1
        FROM
            pg_policies
        WHERE
            schemaname = 'reference'
            AND tablename = 'product_families'
            AND policyname = 'product_families_read_all') THEN
    CREATE POLICY product_families_read_all ON reference.product_families
        FOR SELECT TO anon, authenticated
        USING (TRUE );
END IF;
END
$$;

DO $$
BEGIN
    IF to_regclass('reference.product_families') IS NULL THEN
        RAISE EXCEPTION 'reference.product_families was not created.';
    END IF;
    IF to_regclass('reference.app_modules') IS NOT NULL THEN
        RAISE EXCEPTION 'Legacy reference.app_modules still exists after product_families migration.';
    END IF;
END
$$;
