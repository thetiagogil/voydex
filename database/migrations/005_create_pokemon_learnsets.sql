-- ================================================================================
-- Migration: 004
-- ================================================================================

-- ================================================================================
-- POKEMON LEARNSETS TABLE (Simplified)
-- ================================================================================
CREATE TABLE dex.pokemon_learnsets (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    pokemon_id INTEGER NOT NULL REFERENCES dex.pokemons(id),
    move_id INTEGER NOT NULL REFERENCES dex.moves(id),
    version_group_id INTEGER NOT NULL REFERENCES meta.version_groups(id),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(pokemon_id, move_id, version_group_id)
);
