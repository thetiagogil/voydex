-- ============================================================================
-- Table: gameplay.mainline_play_pokedex_species_progress
-- Per-play species-level Pokedex progress.
-- ============================================================================
CREATE TABLE gameplay.mainline_play_pokedex_species_progress (
    play_id uuid NOT NULL REFERENCES gameplay.mainline_plays (id) ON UPDATE CASCADE ON DELETE CASCADE,
    species_id integer NOT NULL REFERENCES reference.pokemon_species (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    is_seen boolean NOT NULL DEFAULT TRUE,
    is_caught boolean NOT NULL DEFAULT FALSE,
    seen_at timestamptz,
    caught_at timestamptz,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    updated_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_pokedex_species_progress_primary_key PRIMARY KEY (play_id, species_id),
    CONSTRAINT play_pokedex_species_progress_positive_state_check CHECK (is_seen OR is_caught),
    CONSTRAINT play_pokedex_species_progress_caught_implies_seen_check CHECK (NOT is_caught OR is_seen)
);

CREATE TRIGGER set_play_pokedex_species_progress_updated_at
    BEFORE UPDATE ON gameplay.mainline_play_pokedex_species_progress
    FOR EACH ROW
    EXECUTE FUNCTION private.set_updated_at ();

CREATE TRIGGER enforce_mainline_play_pokedex_species_scope
    BEFORE INSERT OR UPDATE OF play_id,
    species_id ON gameplay.mainline_play_pokedex_species_progress
    FOR EACH ROW
    EXECUTE FUNCTION private.enforce_mainline_play_pokedex_species_scope ();

CREATE INDEX play_pokedex_species_progress_species_idx ON gameplay.mainline_play_pokedex_species_progress (species_id);

COMMENT ON TABLE gameplay.mainline_play_pokedex_species_progress IS 'Sparse species-level Pokedex state. Absence means neither seen nor caught.';

COMMENT ON COLUMN gameplay.mainline_play_pokedex_species_progress.is_caught IS 'Caught implies seen.';

CREATE TRIGGER touch_play_after_change
    AFTER INSERT OR UPDATE OR DELETE ON gameplay.mainline_play_pokedex_species_progress
    FOR EACH ROW
    EXECUTE FUNCTION private.touch_play ();
