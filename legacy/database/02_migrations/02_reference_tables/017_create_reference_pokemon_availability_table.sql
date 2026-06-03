-- ============================================================================
-- Table: reference.pokemon_availability
-- Curated availability of Pokémon forms by version group, with optional
-- game-level scoping for version exclusives.
-- Positive model: row exists = form is obtainable.
-- game_id NULL = available in all games of the version group.
-- game_id set  = available only in that specific game.
-- ============================================================================
-- Enum: availability context for Pokémon
CREATE TYPE reference.pokemon_availability_context AS ENUM ('native', 'transfer', 'event');

CREATE TABLE
    reference.pokemon_availability (
        id INTEGER PRIMARY KEY,
        -- Foreign keys
        species_id INTEGER NOT NULL REFERENCES reference.pokemon_species (id) ON DELETE CASCADE,
        form_id INTEGER NOT NULL REFERENCES reference.pokemon_forms (id) ON DELETE CASCADE,
        version_group_id INTEGER NOT NULL REFERENCES reference.version_groups (id),
        game_id INTEGER REFERENCES reference.games (id),
        -- Context
        availability_context reference.pokemon_availability_context NOT NULL DEFAULT 'native',
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ()
    );

-- Partial unique indexes for integrity
-- VG-wide availability (game_id IS NULL): one row per form per VG
CREATE UNIQUE INDEX uq_pokemon_avail_vg_wide ON reference.pokemon_availability (species_id, form_id, version_group_id)
WHERE
    game_id IS NULL;

-- Game-specific availability (game_id IS NOT NULL): one row per form per VG per game
CREATE UNIQUE INDEX uq_pokemon_avail_game_specific ON reference.pokemon_availability (species_id, form_id, version_group_id, game_id)
WHERE
    game_id IS NOT NULL;

-- Comments
COMMENT ON TABLE reference.pokemon_availability IS 'Positive availability model: row exists = form is obtainable. game_id NULL = available in all games of this version group. game_id set = version exclusive to that game. DLC additions use the DLC VG as version_group_id.';

COMMENT ON COLUMN reference.pokemon_availability.version_group_id IS 'The content source that provides this availability. Base VG for base-game Pokemon, DLC VG for DLC additions.';

COMMENT ON COLUMN reference.pokemon_availability.game_id IS 'NULL = available in all games of the VG. Set = version exclusive to this specific game.';

COMMENT ON COLUMN reference.pokemon_availability.availability_context IS 'native = obtainable through normal gameplay; transfer = only via transfer from another game; event = only via time-limited distribution.';