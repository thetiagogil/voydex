-- ============================================================================
-- Table: gameplay.user_favourite_pokemon
-- The Pokémon a user has hearted in the Codex, one row per form.
-- ============================================================================
CREATE TABLE gameplay.user_favourite_pokemon (
    user_id uuid NOT NULL REFERENCES public.profiles (id) ON UPDATE CASCADE ON DELETE CASCADE,
    species_id integer NOT NULL,
    form_id integer NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT user_favourite_pokemon_primary_key PRIMARY KEY (user_id, form_id),
    CONSTRAINT user_favourite_pokemon_form_fkey FOREIGN KEY (species_id, form_id) REFERENCES reference.pokemon_forms (species_id, id) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE INDEX user_favourite_pokemon_species_form_idx ON gameplay.user_favourite_pokemon (species_id, form_id);

CREATE INDEX user_favourite_pokemon_user_created_idx ON gameplay.user_favourite_pokemon (user_id, created_at DESC);

COMMENT ON TABLE gameplay.user_favourite_pokemon IS 'Pokémon forms a user marked as favourite from the Codex. Independent from Plays; Stats keeps Most used separate.';
