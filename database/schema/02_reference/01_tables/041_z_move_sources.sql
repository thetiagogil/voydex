-- ============================================================================
-- Table: reference.z_move_sources
-- Which Z-Crystal turns which move into which Z-Move.
-- ============================================================================
CREATE TABLE reference.z_move_sources (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    z_move_id integer NOT NULL REFERENCES reference.moves (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    item_id integer NOT NULL REFERENCES reference.items (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    base_type_id integer REFERENCES reference.types (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    species_id integer REFERENCES reference.pokemon_species (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    form_id integer,
    base_move_id integer REFERENCES reference.moves (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT z_move_sources_form_fkey FOREIGN KEY (species_id, form_id) REFERENCES reference.pokemon_forms (species_id, id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT z_move_sources_one_source_kind_check CHECK ((base_type_id IS NOT NULL AND species_id IS NULL AND form_id IS NULL AND base_move_id IS NULL) OR (base_type_id IS NULL AND species_id IS NOT NULL AND base_move_id IS NOT NULL)),
    CONSTRAINT z_move_sources_source_unique UNIQUE NULLS NOT DISTINCT (item_id, base_type_id, species_id, form_id, base_move_id)
);

CREATE INDEX z_move_sources_z_move_idx ON reference.z_move_sources (z_move_id);

CREATE INDEX z_move_sources_item_idx ON reference.z_move_sources (item_id);

CREATE INDEX z_move_sources_species_form_idx ON reference.z_move_sources (species_id, form_id)
WHERE
    species_id IS NOT NULL;

CREATE INDEX z_move_sources_base_move_idx ON reference.z_move_sources (base_move_id)
WHERE
    base_move_id IS NOT NULL;

COMMENT ON TABLE reference.z_move_sources IS 'How a held Z-Crystal turns a move into a Z-Move. A type crystal turns any damaging move of base_type_id into the Z-Move; an exclusive crystal turns base_move_id into the Z-Move only for that species (and form, when set).';

COMMENT ON COLUMN reference.z_move_sources.base_type_id IS 'Type crystals only: the type of the damaging move the crystal powers up. Status moves keep their own move and gain a Z-effect instead.';

COMMENT ON COLUMN reference.z_move_sources.form_id IS 'Exclusive crystals only: the one form that can use it. NULL means any form of species_id.';

COMMENT ON COLUMN reference.z_move_sources.base_move_id IS 'Exclusive crystals only: the move the Pokémon must know.';
