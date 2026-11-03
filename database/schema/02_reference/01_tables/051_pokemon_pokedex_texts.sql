-- ============================================================================
-- Table: reference.pokemon_pokedex_texts
-- What a game's Pokédex says about a form, verbatim: one row per form and
-- game. A game pair's versions each have their own text (Sword and Shield
-- never share one; Red and Blue always do). A form without its own entry
-- reads its species' default form's row.
-- ============================================================================
CREATE TABLE reference.pokemon_pokedex_texts (
    species_id integer NOT NULL,
    form_id integer NOT NULL,
    game_id integer NOT NULL REFERENCES reference.games (id) ON UPDATE CASCADE ON DELETE RESTRICT,
    entry_text text NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT pokemon_pokedex_texts_primary_key PRIMARY KEY (form_id, game_id),
    CONSTRAINT pokemon_pokedex_texts_form_fkey FOREIGN KEY (species_id, form_id) REFERENCES reference.pokemon_forms (species_id, id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT pokemon_pokedex_texts_entry_text_check CHECK (length(btrim(entry_text)) BETWEEN 1 AND 600)
);

CREATE INDEX pokemon_pokedex_texts_species_idx ON reference.pokemon_pokedex_texts (species_id, game_id);

COMMENT ON TABLE reference.pokemon_pokedex_texts IS 'What a game''s Pokédex says about a form, verbatim from the game''s own text, one row per form and game; a form without its own row reads its species'' default form.';

COMMENT ON COLUMN reference.pokemon_pokedex_texts.game_id IS 'The version the text belongs to (Sword, not Sword / Shield): paired versions mostly differ.';

COMMENT ON COLUMN reference.pokemon_pokedex_texts.entry_text IS 'The entry as the game shows it, line breaks joined with spaces.';
