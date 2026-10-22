-- ============================================================================
-- Table: reference.pokemon_form_rules
-- Form behavior metadata for team builder, planning, and display.
-- ============================================================================
CREATE TABLE reference.pokemon_form_rules (
    form_id integer PRIMARY KEY REFERENCES reference.pokemon_forms (id) ON UPDATE CASCADE ON DELETE CASCADE,
    form_kind text NOT NULL,
    is_team_selectable boolean NOT NULL DEFAULT TRUE,
    is_battle_only boolean NOT NULL DEFAULT FALSE,
    is_cosmetic boolean NOT NULL DEFAULT FALSE,
    is_regional boolean NOT NULL DEFAULT FALSE,
    is_evolution_locked boolean NOT NULL DEFAULT FALSE,
    battle_mechanic text,
    condition_summary text,
    notes text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT pokemon_form_rules_form_kind_check CHECK (form_kind IN ('default', 'regional', 'alternate', 'cosmetic', 'battle', 'special')),
    CONSTRAINT pokemon_form_rules_battle_kind_check CHECK (form_kind <> 'battle' OR is_battle_only),
    CONSTRAINT pokemon_form_rules_battle_not_team_selectable_check CHECK (NOT is_battle_only OR NOT is_team_selectable),
    CONSTRAINT pokemon_form_rules_battle_mechanic_check CHECK (battle_mechanic IS NULL OR battle_mechanic IN ('mega-evolution', 'primal-reversion', 'ultra-burst', 'dynamax', 'in-battle')),
    CONSTRAINT pokemon_form_rules_battle_mechanic_presence_check CHECK ((battle_mechanic IS NOT NULL) = is_battle_only),
    CONSTRAINT pokemon_form_rules_condition_summary_length_check CHECK (condition_summary IS NULL OR CHAR_LENGTH(BTRIM(condition_summary)) BETWEEN 1 AND 500),
    CONSTRAINT pokemon_form_rules_notes_length_check CHECK (notes IS NULL OR CHAR_LENGTH(BTRIM(notes)) BETWEEN 1 AND 1000)
);

COMMENT ON TABLE reference.pokemon_form_rules IS 'UI and planning behavior metadata for Pokémon forms.';

COMMENT ON COLUMN reference.pokemon_form_rules.battle_mechanic IS 'Battle forms only: the mechanic that reaches the form, so it shows only in games that have it. in-battle means an ability, move or held item changes it during any battle in a game with the Pokémon.';

CREATE FUNCTION private.enforce_storable_pokemon_form ()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    SECURITY DEFINER
    SET search_path = ''
    AS $$
DECLARE
    v_form_id integer := (TO_JSONB (NEW) ->> TG_ARGV[0])::integer;
BEGIN
    IF EXISTS (
        SELECT
            1
        FROM
            reference.pokemon_form_rules
        WHERE
            pokemon_form_rules.form_id = v_form_id
            AND NOT pokemon_form_rules.is_team_selectable) THEN
    RAISE EXCEPTION 'Form % is a battle form and cannot be a Pokémon''s stored form', v_form_id
        USING ERRCODE = '23514';
END IF;
    RETURN NEW;
END;
$$;

REVOKE ALL ON FUNCTION private.enforce_storable_pokemon_form () FROM PUBLIC;

REVOKE ALL ON FUNCTION private.enforce_storable_pokemon_form () FROM anon;

REVOKE ALL ON FUNCTION private.enforce_storable_pokemon_form () FROM authenticated;

GRANT EXECUTE ON FUNCTION private.enforce_storable_pokemon_form () TO service_role;

COMMENT ON FUNCTION private.enforce_storable_pokemon_form () IS 'Refuses a form that is not team selectable, such as a Mega or Gigantamax form, on a row that stores a Pokémon''s identity. TG_ARGV[0] names the form column.';
