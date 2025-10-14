-- ================================================================================
-- Migration: 003
-- ================================================================================

-- ================================================================================
-- TYPES TABLE
-- ================================================================================
CREATE TABLE dex.types (
    id INTEGER PRIMARY KEY,
    generation_id INTEGER REFERENCES meta.generations(id),
    slug VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ================================================================================
-- NATURES TABLE  
-- ================================================================================
CREATE TABLE dex.natures (
    id INTEGER PRIMARY KEY,
    generation_id INTEGER REFERENCES meta.generations(id),
    slug VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    increased_stat VARCHAR(50),
    decreased_stat VARCHAR(50),
    liked_flavor VARCHAR(50),
    disliked_flavor VARCHAR(50),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ================================================================================
-- EGG GROUPS TABLE
-- ================================================================================
CREATE TABLE dex.egg_groups (
    id INTEGER PRIMARY KEY,
    generation_id INTEGER REFERENCES meta.generations(id),
    slug VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ================================================================================
-- ABILITIES TABLE
-- ================================================================================
CREATE TABLE dex.abilities (
    id INTEGER PRIMARY KEY,
    generation_id INTEGER REFERENCES meta.generations(id),
    slug VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(slug, generation_id)
);

-- ================================================================================
-- MOVES TABLE
-- ================================================================================
CREATE TABLE dex.moves (
    id INTEGER PRIMARY KEY,
    generation_id INTEGER REFERENCES meta.generations(id),
    type_id INTEGER REFERENCES dex.types(id),
    slug VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    power INTEGER,
    accuracy INTEGER,
    pp INTEGER,
    damage_class VARCHAR(20) NOT NULL, -- physical, special, status
    priority INTEGER DEFAULT 0,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(slug, generation_id)
);

-- ================================================================================
-- POKEMON BASE TABLE (Base = Introduction Generation + All Special Stats)
-- ================================================================================
CREATE TABLE dex.pokemon_base (
    -- Identifiers
    id INTEGER PRIMARY KEY,
    generation_id INTEGER NOT NULL REFERENCES meta.generations(id),
    species_id INTEGER NOT NULL,
    type_1_id INTEGER NOT NULL REFERENCES dex.types(id),
    type_2_id INTEGER REFERENCES dex.types(id),
    ability_1_id INTEGER REFERENCES dex.abilities(id),
    ability_2_id INTEGER REFERENCES dex.abilities(id),
    hidden_ability_id INTEGER REFERENCES dex.abilities(id),
    egg_group_1_id INTEGER REFERENCES dex.egg_groups(id),
    egg_group_2_id INTEGER REFERENCES dex.egg_groups(id),
    
    -- Information
    slug VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    national_number INTEGER NOT NULL,
    form_name VARCHAR(50),
    is_default_form BOOLEAN DEFAULT true,
    
    -- Physical characteristics
    height INTEGER NOT NULL,
    weight INTEGER NOT NULL,
    color VARCHAR(20),
    
    -- Stats
    hp INTEGER NOT NULL,
    attack INTEGER NOT NULL,
    defense INTEGER NOT NULL,
    special_attack INTEGER NOT NULL,
    special_defense INTEGER NOT NULL,
    speed INTEGER NOT NULL,
    special INTEGER NOT NULL,
    
    -- Game mechanics
    growth_rate VARCHAR(20),
    gender_rate INTEGER,
    
    sprite_url TEXT,
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(species_id, form_name)
);

-- ================================================================================
-- POKEMON CHANGES
-- ================================================================================
CREATE TABLE dex.pokemon_changes (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    pokemon_id INTEGER NOT NULL REFERENCES dex.pokemon_base(id),
    generation_id INTEGER NOT NULL REFERENCES meta.generations(id),

    -- Type/ability changes
    type_1_override INTEGER REFERENCES dex.types(id),
    type_2_override INTEGER REFERENCES dex.types(id),
    ability_1_override INTEGER REFERENCES dex.abilities(id),
    ability_2_override INTEGER REFERENCES dex.abilities(id),
    hidden_ability_override INTEGER REFERENCES dex.abilities(id),
    
    -- Stat changes
    hp_override INTEGER,
    attack_override INTEGER,
    defense_override INTEGER,
    special_attack_override INTEGER,
    special_defense_override INTEGER,
    speed_override INTEGER,
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(pokemon_id, generation_id)
);