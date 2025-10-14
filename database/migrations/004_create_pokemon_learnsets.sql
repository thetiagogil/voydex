-- ================================================================================
-- Migration: 004
-- ================================================================================

-- ================================================================================
-- POKEMON LEARNSETS TABLE (Simplified)
-- ================================================================================
CREATE TABLE dex.pokemon_learnsets (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    pokemon_id INTEGER NOT NULL REFERENCES dex.pokemon_base(id),
    move_id INTEGER NOT NULL REFERENCES dex.moves(id),
    version_group_id INTEGER NOT NULL REFERENCES meta.version_groups(id),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(pokemon_id, move_id, version_group_id)
);

COMMENT ON TABLE dex.pokemon_learnsets IS 'Simple Pokemon movesets - which Pokemon can learn which moves in each version group';
COMMENT ON COLUMN dex.pokemon_learnsets.pokemon_id IS 'Pokemon that can learn the move';
COMMENT ON COLUMN dex.pokemon_learnsets.move_id IS 'Move that can be learned';
COMMENT ON COLUMN dex.pokemon_learnsets.version_group_id IS 'Version group where this combination is available';
