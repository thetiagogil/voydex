-- ============================================================================
-- Table: reference.g_max_move_sources
-- The G-Max Move each Gigantamax form uses.
-- ============================================================================
CREATE TABLE reference.g_max_move_sources (
    form_id integer PRIMARY KEY,
    species_id integer NOT NULL,
    g_max_move_id integer NOT NULL REFERENCES reference.moves (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT g_max_move_sources_form_fkey FOREIGN KEY (species_id, form_id) REFERENCES reference.pokemon_forms (species_id, id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE INDEX g_max_move_sources_species_form_idx ON reference.g_max_move_sources (species_id, form_id);

CREATE INDEX g_max_move_sources_move_idx ON reference.g_max_move_sources (g_max_move_id);

COMMENT ON TABLE reference.g_max_move_sources IS 'The G-Max Move a Gigantamax form uses in place of the Max Move of the same type. Every other damaging move becomes the Max Move whose own type matches it, and status moves become Max Guard.';
