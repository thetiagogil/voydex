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
    condition_summary text,
    notes text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT pokemon_form_rules_form_kind_check CHECK (form_kind IN ('default', 'regional', 'alternate', 'cosmetic', 'battle', 'special')),
    CONSTRAINT pokemon_form_rules_battle_kind_check CHECK (form_kind <> 'battle' OR is_battle_only),
    CONSTRAINT pokemon_form_rules_battle_not_team_selectable_check CHECK (NOT is_battle_only OR NOT is_team_selectable),
    CONSTRAINT pokemon_form_rules_condition_summary_length_check CHECK (condition_summary IS NULL OR CHAR_LENGTH(BTRIM(condition_summary)) BETWEEN 1 AND 500),
    CONSTRAINT pokemon_form_rules_notes_length_check CHECK (notes IS NULL OR CHAR_LENGTH(BTRIM(notes)) BETWEEN 1 AND 1000)
);

COMMENT ON TABLE reference.pokemon_form_rules IS 'UI and planning behavior metadata for Pokémon forms.';
