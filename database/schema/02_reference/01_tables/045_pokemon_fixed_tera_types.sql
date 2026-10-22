-- ============================================================================
-- Table: reference.pokemon_fixed_tera_types
-- Forms whose Tera Type is fixed and cannot be changed.
-- ============================================================================
CREATE TABLE reference.pokemon_fixed_tera_types (
    form_id integer PRIMARY KEY REFERENCES reference.pokemon_forms (id) ON UPDATE CASCADE ON DELETE CASCADE,
    tera_type_id integer NOT NULL REFERENCES reference.tera_types (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    notes text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT pokemon_fixed_tera_types_notes_length_check CHECK (notes IS NULL OR CHAR_LENGTH(BTRIM(notes)) BETWEEN 1 AND 1000)
);

COMMENT ON TABLE reference.pokemon_fixed_tera_types IS 'Forms that always have the same Tera Type, such as each Ogerpon mask and Terapagos, always Stellar. A form with no row can have any Tera Type.';

CREATE FUNCTION private.enforce_fixed_tera_type ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SECURITY DEFINER
    SET search_path = ''
    AS $$
DECLARE
    v_form_id integer := (TO_JSONB (NEW) ->> TG_ARGV[0])::integer;
    v_tera_type_id integer := (TO_JSONB (NEW) ->> TG_ARGV[1])::integer;
    v_fixed_tera_type_id integer;
BEGIN
    IF v_tera_type_id IS NULL THEN
        RETURN NEW;
    END IF;
    SELECT
        pokemon_fixed_tera_types.tera_type_id
    INTO
        v_fixed_tera_type_id
    FROM
        reference.pokemon_fixed_tera_types
    WHERE
        pokemon_fixed_tera_types.form_id = v_form_id;
    IF FOUND AND v_fixed_tera_type_id <> v_tera_type_id THEN
        RAISE EXCEPTION 'Form % always has Tera Type %, not %', v_form_id, v_fixed_tera_type_id, v_tera_type_id
            USING ERRCODE = '23514';
    END IF;
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.enforce_fixed_tera_type () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.enforce_fixed_tera_type () FROM anon;

REVOKE ALL ON FUNCTION private.enforce_fixed_tera_type () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.enforce_fixed_tera_type () TO service_role;

COMMENT ON FUNCTION private.enforce_fixed_tera_type () IS 'Refuses a Tera Type that differs from the form''s fixed one (reference.pokemon_fixed_tera_types); no Tera Type is always allowed. TG_ARGV[0] names the form column and TG_ARGV[1] the Tera Type column.';
