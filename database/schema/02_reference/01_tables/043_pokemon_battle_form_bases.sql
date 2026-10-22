-- ============================================================================
-- Table: reference.pokemon_battle_form_bases
-- Which stored form of a Pokémon reaches each battle form.
-- ============================================================================
CREATE TABLE reference.pokemon_battle_form_bases (
    battle_form_id integer NOT NULL,
    base_form_id integer NOT NULL,
    species_id integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT pokemon_battle_form_bases_primary_key PRIMARY KEY (battle_form_id, base_form_id),
    CONSTRAINT pokemon_battle_form_bases_battle_form_fkey FOREIGN KEY (species_id, battle_form_id) REFERENCES reference.pokemon_forms (species_id, id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT pokemon_battle_form_bases_base_form_fkey FOREIGN KEY (species_id, base_form_id) REFERENCES reference.pokemon_forms (species_id, id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT pokemon_battle_form_bases_distinct_forms_check CHECK (battle_form_id <> base_form_id)
);

CREATE INDEX pokemon_battle_form_bases_base_form_idx ON reference.pokemon_battle_form_bases (species_id, base_form_id);

CREATE INDEX pokemon_battle_form_bases_battle_form_idx ON reference.pokemon_battle_form_bases (species_id, battle_form_id);

COMMENT ON TABLE reference.pokemon_battle_form_bases IS 'Which stored form reaches each battle form: Gigantamax Toxtricity (Low Key) only from Low Key Toxtricity, Ultra Necrozma from Dusk Mane or Dawn Wings. A base is always a form a Pokémon can be stored in; a battle form with no row is one no player''s Pokémon reaches, such as Eternamax Eternatus.';
