-- ============================================================================
-- Change records
-- Runs on a new device after the Voydex schema. Every change to a row of
-- yours leaves a small record: the row was added or deleted, or one of its
-- columns changed, and when. Account sync compares two devices' records to
-- combine their data: the latest change wins per column, and you're asked
-- only when both devices changed the same column since they last synced.
-- Game data installs with triggers off, so only your own changes count.
-- ============================================================================
-- One record per row (column_name '') and per changed column. A deleted
-- row keeps only its row record, marked deleted. base_changed_at is
-- changed_at as of the last sync: a record whose changed_at moved since
-- changed on this device. seq counts every write on this device, whatever
-- the clocks say, so a sync can tell what landed after it read.
CREATE SEQUENCE device.change_seq;

CREATE TABLE device.changes (
    table_name text NOT NULL,
    row_key text NOT NULL,
    column_name text NOT NULL,
    changed_at timestamptz NOT NULL,
    base_changed_at timestamptz,
    deleted boolean NOT NULL DEFAULT FALSE,
    seq bigint NOT NULL DEFAULT nextval('device.change_seq'),
    PRIMARY KEY (table_name, row_key, column_name)
);

-- A row's primary key as JSON text, such as '["5f0c…"]' or '["5f0c…", 3]'.
CREATE FUNCTION device.row_key (row_data jsonb, key_columns text[])
    RETURNS text
    LANGUAGE sql
    IMMUTABLE
    AS $$
    SELECT
        jsonb_agg(row_data -> key_column ORDER BY position)::text
    FROM
        unnest(key_columns)
        WITH ORDINALITY AS keys (key_column, position);
$$;

-- The trigger's arguments name the table's primary key columns.
CREATE FUNCTION device.record_change ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    AS $$
DECLARE
    changed_table text := TG_TABLE_SCHEMA || '.' || TG_TABLE_NAME;
    changed_at timestamptz := clock_timestamp();
    old_row jsonb;
    new_row jsonb;
    old_key text;
    new_key text;
BEGIN
    IF TG_OP <> 'INSERT' THEN
        old_row := to_jsonb (OLD);
        old_key := device.row_key (old_row, TG_ARGV);
    END IF;
    IF TG_OP <> 'DELETE' THEN
        new_row := to_jsonb (NEW);
        new_key := device.row_key (new_row, TG_ARGV);
    END IF;
    -- A deleted row (or one whose key changed) keeps only its row record.
    IF TG_OP = 'DELETE' OR old_key IS DISTINCT FROM new_key AND TG_OP = 'UPDATE' THEN
        DELETE FROM device.changes
        WHERE table_name = changed_table
            AND row_key = old_key
            AND column_name <> '';
        INSERT INTO device.changes (table_name, row_key, column_name, changed_at, deleted)
            VALUES (changed_table, old_key, '', changed_at, TRUE)
        ON CONFLICT (table_name, row_key, column_name)
            DO UPDATE SET
                changed_at = EXCLUDED.changed_at, deleted = TRUE, seq = EXCLUDED.seq;
    END IF;
    IF TG_OP = 'INSERT' OR old_key IS DISTINCT FROM new_key AND TG_OP = 'UPDATE' THEN
        DELETE FROM device.changes
        WHERE table_name = changed_table
            AND row_key = new_key
            AND column_name <> '';
        INSERT INTO device.changes (table_name, row_key, column_name, changed_at, deleted)
            VALUES (changed_table, new_key, '', changed_at, FALSE)
        ON CONFLICT (table_name, row_key, column_name)
            DO UPDATE SET
                changed_at = EXCLUDED.changed_at, deleted = FALSE, seq = EXCLUDED.seq;
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO device.changes (table_name, row_key, column_name, changed_at)
        SELECT
            changed_table,
            new_key,
            columns.key,
            changed_at
        FROM
            jsonb_each(new_row) AS columns
        WHERE
            columns.value IS DISTINCT FROM old_row -> columns.key
        ON CONFLICT (table_name, row_key, column_name)
            DO UPDATE SET
                changed_at = EXCLUDED.changed_at, seq = EXCLUDED.seq;
    END IF;
    RETURN NULL;
END;
$$;

-- Every table that holds your rows (lookups too: game data fills them with
-- triggers off, so they never record anything).
DO $$
DECLARE
    user_table record;
BEGIN
    FOR user_table IN
    SELECT
        tables.oid::regclass AS name,
        (
            SELECT
                string_agg(quote_literal(columns.attname), ', ' ORDER BY keys.position)
            FROM
                unnest(primary_keys.conkey)
                WITH ORDINALITY AS keys (attnum, position)
                JOIN pg_attribute columns ON columns.attrelid = tables.oid
                    AND columns.attnum = keys.attnum) AS key_columns
    FROM
        pg_class tables
        JOIN pg_namespace schemas ON schemas.oid = tables.relnamespace
        JOIN pg_constraint primary_keys ON primary_keys.conrelid = tables.oid
            AND primary_keys.contype = 'p'
    WHERE
        tables.relkind = 'r'
        AND schemas.nspname IN ('public', 'gameplay', 'planning')
        LOOP
            EXECUTE format('CREATE TRIGGER record_device_change AFTER INSERT OR UPDATE OR DELETE ON %s FOR EACH ROW EXECUTE FUNCTION device.record_change (%s)', user_table.name, user_table.key_columns);
        END LOOP;
END;
$$;
