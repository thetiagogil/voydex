-- ============================================================================
-- Table: gameplay.mainline_play_pokemon_tags
-- Tags attached to Pokémon recorded in mainline_plays.
-- ============================================================================
CREATE TABLE gameplay.mainline_play_pokemon_tags (
    play_pokemon_id uuid NOT NULL,
    play_id uuid NOT NULL,
    tag_id uuid NOT NULL,
    user_id uuid NOT NULL,
    created_at timestamptz NOT NULL DEFAULT NOW(),
    CONSTRAINT play_pokemon_tags_primary_key PRIMARY KEY (play_pokemon_id, tag_id),
    CONSTRAINT play_pokemon_tags_play_pokemon_play_fkey FOREIGN KEY (play_pokemon_id, play_id) REFERENCES gameplay.mainline_play_pokemon (id, play_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT play_pokemon_tags_play_user_fkey FOREIGN KEY (play_id, user_id) REFERENCES gameplay.mainline_plays (id, user_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT play_pokemon_tags_tag_user_fkey FOREIGN KEY (tag_id, user_id) REFERENCES public.tags (id, user_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE INDEX play_pokemon_tags_play_pokemon_play_idx ON gameplay.mainline_play_pokemon_tags (play_pokemon_id, play_id);

CREATE INDEX play_pokemon_tags_play_user_idx ON gameplay.mainline_play_pokemon_tags (play_id, user_id);

CREATE INDEX play_pokemon_tags_tag_user_idx ON gameplay.mainline_play_pokemon_tags (tag_id, user_id);

COMMENT ON TABLE gameplay.mainline_play_pokemon_tags IS 'Typed tag links for play Pokémon. play_id and user_id enforce same-play and same-user ownership.';
