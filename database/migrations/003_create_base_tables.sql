-- ================================================================================
-- Migration: 003 - Base Tables (Modern PokeAPI Data)
-- ================================================================================
-- Tables that store modern/latest data from PokeAPI
-- These represent current state - changes tables handle historical differences

-- ================================================================================
-- TYPES TABLE (Base: Latest from PokeAPI)
-- ================================================================================
CREATE TABLE dex.types (
    id INTEGER PRIMARY KEY,
    slug VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    generation_introduced INTEGER NOT NULL REFERENCES meta.generations(id),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ================================================================================
-- NATURES TABLE (Base: Latest from PokeAPI)
-- ================================================================================
CREATE TABLE dex.natures (
    id INTEGER PRIMARY KEY,
    slug VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    generation_introduced INTEGER NOT NULL REFERENCES meta.generations(id),
    increased_stat VARCHAR(50),
    decreased_stat VARCHAR(50),
    liked_flavor VARCHAR(50),
    disliked_flavor VARCHAR(50),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ================================================================================
-- EGG GROUPS TABLE (Base: Latest from PokeAPI)
-- ================================================================================
CREATE TABLE dex.egg_groups (
    id INTEGER PRIMARY KEY,
    slug VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    generation_introduced INTEGER NOT NULL REFERENCES meta.generations(id),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ================================================================================
-- ABILITIES TABLE (Base: Latest from PokeAPI)
-- ================================================================================
CREATE TABLE dex.abilities (
    id INTEGER PRIMARY KEY,
    slug VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    generation_introduced INTEGER NOT NULL REFERENCES meta.generations(id),
    description TEXT,
    is_main_series BOOLEAN DEFAULT true,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ================================================================================
-- MOVES TABLE (Base: Latest from PokeAPI)
-- ================================================================================
CREATE TABLE dex.moves (
    id INTEGER PRIMARY KEY,
    slug VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    generation_introduced INTEGER NOT NULL REFERENCES meta.generations(id),
    type_id INTEGER NOT NULL REFERENCES dex.types(id),
    description TEXT,
    
    -- Modern/latest stats (from PokeAPI)
    power INTEGER,
    accuracy INTEGER,
    pp INTEGER NOT NULL,
    damage_class VARCHAR(20) NOT NULL, -- 'physical', 'special', 'status'
    priority INTEGER DEFAULT 0,
    effect_chance INTEGER,
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ================================================================================
-- POKEMONS TABLE (Base: Latest from PokeAPI)
-- ================================================================================
CREATE TABLE dex.pokemons (
    -- Identifiers
    id INTEGER PRIMARY KEY,
    species_id INTEGER NOT NULL,
    national_number INTEGER NOT NULL,
    slug VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    generation_introduced INTEGER NOT NULL REFERENCES meta.generations(id),
    
    -- Type information (modern)
    type_1_id INTEGER NOT NULL REFERENCES dex.types(id),
    type_2_id INTEGER REFERENCES dex.types(id),
    
    -- Abilities (modern)
    ability_1_id INTEGER REFERENCES dex.abilities(id),
    ability_2_id INTEGER REFERENCES dex.abilities(id),
    hidden_ability_id INTEGER REFERENCES dex.abilities(id),
    
    -- Breeding
    egg_group_1_id INTEGER REFERENCES dex.egg_groups(id),
    egg_group_2_id INTEGER REFERENCES dex.egg_groups(id),
    
    -- Form information
    form_name VARCHAR(50),
    is_default_form BOOLEAN DEFAULT true,
    
    -- Physical characteristics
    height INTEGER NOT NULL, -- decimeters
    weight INTEGER NOT NULL, -- hectograms
    color VARCHAR(20),
    
    -- Modern base stats
    hp INTEGER NOT NULL,
    attack INTEGER NOT NULL,
    defense INTEGER NOT NULL,
    special_attack INTEGER NOT NULL,
    special_defense INTEGER NOT NULL,
    speed INTEGER NOT NULL,
    base_experience INTEGER,
    
    -- Game mechanics
    growth_rate VARCHAR(20),
    gender_rate INTEGER, -- -1 = genderless, 0-8 = female rate in eighths
    capture_rate INTEGER,
    base_happiness INTEGER,
    
    -- Flags
    is_baby BOOLEAN DEFAULT false,
    is_legendary BOOLEAN DEFAULT false,
    is_mythical BOOLEAN DEFAULT false,
    
    -- Resources
    sprite_url TEXT,
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE(species_id, form_name)
);

-- ================================================================================
-- ITEMS TABLE (Base: Latest from PokeAPI)
-- ================================================================================
CREATE TABLE dex.items (
    id INTEGER PRIMARY KEY,
    slug VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    generation_introduced INTEGER NOT NULL REFERENCES meta.generations(id),
    
    -- Item properties
    category VARCHAR(50),
    cost INTEGER DEFAULT 0,
    fling_power INTEGER,
    fling_effect VARCHAR(100),
    
    -- Description and effects
    description TEXT,
    effect TEXT,
    
    -- Resources
    sprite_url TEXT,
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);