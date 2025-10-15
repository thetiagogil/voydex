-- ================================================================================
-- Migration: 005
-- ================================================================================

-- ================================================================================
-- PLAYS TABLE (renamed from playthroughs)
-- ================================================================================
CREATE TABLE gameplay.plays (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    game_id INTEGER NOT NULL REFERENCES meta.games(id),
    name VARCHAR(200) NOT NULL UNIQUE,
    status VARCHAR(20) DEFAULT 'active' CHECK (status IN ('active', 'completed', 'dropped', 'paused')),
    challenge_type VARCHAR(50) DEFAULT 'normal',
    settings JSONB DEFAULT '{}'::jsonb,
    include_unique_pokemon BOOLEAN DEFAULT false,
    include_regional_dex BOOLEAN DEFAULT false,
    include_national_dex BOOLEAN DEFAULT false, 
    include_mythical_pokemon BOOLEAN DEFAULT false,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ================================================================================
-- TEAM POKEMON TABLE
-- ================================================================================
CREATE TABLE gameplay.team_pokemon (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    play_id UUID NOT NULL REFERENCES gameplay.plays(id) ON DELETE CASCADE,
    pokemon_id INTEGER NOT NULL REFERENCES dex.pokemon_base(id),
    nature_id INTEGER REFERENCES dex.natures(id),
    ability_id INTEGER REFERENCES dex.abilities(id),
    move_1_id INTEGER REFERENCES dex.moves(id),
    move_2_id INTEGER REFERENCES dex.moves(id),
    move_3_id INTEGER REFERENCES dex.moves(id),
    move_4_id INTEGER REFERENCES dex.moves(id),
    nickname VARCHAR(50),
    level INTEGER NOT NULL DEFAULT 1 CHECK (level >= 1 AND level <= 100),
    gender VARCHAR(10) CHECK (gender IN ('male', 'female', 'genderless')),
    is_shiny BOOLEAN DEFAULT false,
    held_item VARCHAR(100),
    ball_type_slug VARCHAR(50) DEFAULT 'poke-ball',
    ball_type_name VARCHAR(100) DEFAULT 'Poké Ball',
    team_slot INTEGER CHECK (team_slot >= 1 AND team_slot <= 20),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(play_id, team_slot)
);

-- ================================================================================
-- PROGRESS TABLE
-- ================================================================================
CREATE TABLE gameplay.progress (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    play_id UUID NOT NULL REFERENCES gameplay.plays(id) ON DELETE CASCADE,
    progress_item_id UUID NOT NULL REFERENCES meta.progress_items(id),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(play_id, progress_item_id)
);