-- ============================================================================
-- Table: reference.pokemon_form_item_requirements
-- Item relationships that select, maintain, or explain Pokémon forms.
-- ============================================================================
CREATE TABLE reference.pokemon_form_item_requirements (
    form_id integer NOT NULL REFERENCES reference.pokemon_forms (id) ON UPDATE CASCADE ON DELETE CASCADE,
    item_id integer NOT NULL REFERENCES reference.items (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    generation_start_id integer NOT NULL REFERENCES reference.generations (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    generation_end_id integer REFERENCES reference.generations (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    version_group_start_id integer REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    version_group_end_id integer REFERENCES reference.version_groups (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    requirement_kind text NOT NULL,
    type_effect_scope text,
    type_id integer REFERENCES reference.types (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    notes text,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT pokemon_form_item_requirements_primary_key PRIMARY KEY (form_id, item_id, generation_start_id),
    CONSTRAINT pokemon_form_item_requirements_generation_range_check CHECK (generation_end_id IS NULL OR generation_end_id >= generation_start_id),
    CONSTRAINT pokemon_form_item_requirements_version_group_range_check CHECK (version_group_end_id IS NULL OR version_group_start_id IS NULL OR version_group_end_id >= version_group_start_id),
    CONSTRAINT pokemon_form_item_requirements_kind_check CHECK (requirement_kind IN ('required_held_item', 'alternative_held_item', 'form_change_item')),
    CONSTRAINT pokemon_form_item_requirements_type_effect_scope_check CHECK (type_effect_scope IS NULL OR type_effect_scope IN ('form_type', 'secondary_type', 'signature_move_type')),
    CONSTRAINT pokemon_form_item_requirements_type_effect_pair_check CHECK ((type_effect_scope IS NULL AND type_id IS NULL) OR (type_effect_scope IS NOT NULL AND type_id IS NOT NULL)),
    CONSTRAINT pokemon_form_item_requirements_notes_length_check CHECK (notes IS NULL OR CHAR_LENGTH(BTRIM(notes)) BETWEEN 1 AND 1000)
);

CREATE INDEX pokemon_form_item_requirements_item_generation_idx ON reference.pokemon_form_item_requirements (item_id, generation_start_id, generation_end_id, version_group_start_id, version_group_end_id, form_id);

COMMENT ON TABLE reference.pokemon_form_item_requirements IS 'Item-driven form selection, held-item requirements, and type/move effects for Pokémon forms.';

COMMENT ON COLUMN reference.pokemon_form_item_requirements.generation_end_id IS 'Optional last generation where this item-form rule applies. NULL means no known end generation.';

COMMENT ON COLUMN reference.pokemon_form_item_requirements.version_group_start_id IS 'Optional first version group/content scope where this item-form rule applies when generation boundaries are not precise enough.';

COMMENT ON COLUMN reference.pokemon_form_item_requirements.version_group_end_id IS 'Optional last version group/content scope where this item-form rule applies when generation boundaries are not precise enough.';

COMMENT ON COLUMN reference.pokemon_form_item_requirements.requirement_kind IS 'required_held_item means the item must be held; alternative_held_item means one of several held items can select the form; form_change_item means the item changes form without being held.';

COMMENT ON COLUMN reference.pokemon_form_item_requirements.type_effect_scope IS 'Optional meaning of type_id: Pokémon form type, secondary type added by the item/form, or signature move type.';
