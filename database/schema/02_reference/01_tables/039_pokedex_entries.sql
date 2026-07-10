-- ============================================================================
-- Table: reference.pokedex_entries
-- Species-level Pokedex membership.
-- ============================================================================
CREATE TABLE reference.pokedex_entries (
    pokedex_id integer NOT NULL REFERENCES reference.pokedex (id) ON UPDATE CASCADE ON DELETE CASCADE,
    species_id integer NOT NULL REFERENCES reference.pokemon_species (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    display_form_id integer,
    pokedex_number integer NOT NULL,
    is_source_required_for_completion boolean NOT NULL DEFAULT TRUE,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT pokedex_entries_primary_key PRIMARY KEY (pokedex_id, species_id),
    CONSTRAINT pokedex_entries_display_form_fkey FOREIGN KEY (species_id, display_form_id) REFERENCES reference.pokemon_forms (species_id, id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT pokedex_entries_number_nonnegative_check CHECK (pokedex_number >= 0),
    CONSTRAINT pokedex_entries_pokedex_number_unique UNIQUE (pokedex_id, pokedex_number)
);

COMMENT ON TABLE reference.pokedex_entries IS 'Species-level Pokedex entries keyed by Pokedex and species. Display form is optional and does not affect completion identity.';

COMMENT ON COLUMN reference.pokedex_entries.display_form_id IS 'Optional source/display form for entries where a dex presents a specific form. Completion remains species-level.';

COMMENT ON COLUMN reference.pokedex_entries.pokedex_number IS 'Number within the source Pokedex. Zero is allowed for real cases such as Victini #000 in the Unova Pokedex.';

COMMENT ON COLUMN reference.pokedex_entries.is_source_required_for_completion IS 'True when the source/game treats this Pokedex entry as required by default. False for source-visible optional entries such as mythicals and explicit regional exceptions.';
