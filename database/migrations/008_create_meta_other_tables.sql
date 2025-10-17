-- ================================================================================
-- Migration: 007
-- ================================================================================

-- ================================================================================
-- REGIONAL POKEDEX ENTRIES TABLE
-- ================================================================================
CREATE TABLE meta.regional_dex_entries (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    pokemon_id INTEGER NOT NULL REFERENCES dex.pokemon_base(id),
    version_group_id INTEGER NOT NULL REFERENCES meta.version_groups(id),
    regional_number INTEGER NOT NULL,
    is_available BOOLEAN DEFAULT true,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(version_group_id, regional_number),
    UNIQUE(pokemon_id, version_group_id)
);

-- ================================================================================
-- POKEMON GAME AVAILABILITY TABLE
-- ================================================================================
CREATE TABLE meta.pokemon_game_availability (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    pokemon_id INTEGER NOT NULL REFERENCES dex.pokemon_base(id),
    game_id INTEGER NOT NULL REFERENCES meta.games(id),
    is_available BOOLEAN DEFAULT true,
    is_version_exclusive BOOLEAN DEFAULT false,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(pokemon_id, game_id)
);
