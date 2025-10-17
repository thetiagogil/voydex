-- ================================================================================
-- Migration: 004 - Changes Tables (Historical Data)
-- ================================================================================
-- Tables that store historical differences from base values
-- Uses generation ranges to avoid duplicate records

-- ================================================================================
-- TYPES CHANGES (Historical differences from modern types)
-- ================================================================================
CREATE TABLE dex.types_changes (
    id SERIAL PRIMARY KEY,
    type_id INTEGER NOT NULL REFERENCES dex.types(id),
    
    -- Change tracking
    change_reason VARCHAR(100), -- e.g., "Steel type introduction", "Dark type introduction"
    
    -- Generation range (inclusive)
    from_generation INTEGER NOT NULL REFERENCES meta.generations(id),
    to_generation INTEGER REFERENCES meta.generations(id), -- NULL means current
    
    -- What changed? (only non-null values indicate changes)
    old_name VARCHAR(50), -- If name was different
    was_introduced BOOLEAN, -- If this change is when the type was introduced
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    
    CONSTRAINT valid_generation_range CHECK (to_generation IS NULL OR to_generation >= from_generation)
);

-- ================================================================================
-- MOVES CHANGES (Historical differences from modern moves)
-- ================================================================================
CREATE TABLE dex.moves_changes (
    id SERIAL PRIMARY KEY,
    move_id INTEGER NOT NULL REFERENCES dex.moves(id),
    
    -- Change tracking
    change_reason VARCHAR(100), -- e.g., "Physical/Special split", "Type changed"
    
    -- Generation range (inclusive)
    from_generation INTEGER NOT NULL REFERENCES meta.generations(id),
    to_generation INTEGER REFERENCES meta.generations(id), -- NULL means current
    
    -- What changed? (only non-null values indicate changes from base)
    old_type_id INTEGER REFERENCES dex.types(id),
    old_power INTEGER,
    old_accuracy INTEGER,
    old_pp INTEGER,
    old_damage_class VARCHAR(20),
    old_priority INTEGER,
    old_effect_chance INTEGER,
    old_description TEXT,
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    
    CONSTRAINT valid_generation_range CHECK (to_generation IS NULL OR to_generation >= from_generation)
);

-- ================================================================================
-- POKEMONS CHANGES (Historical differences from modern Pokemon)
-- ================================================================================
CREATE TABLE dex.pokemons_changes (
    id SERIAL PRIMARY KEY,
    pokemon_id INTEGER NOT NULL REFERENCES dex.pokemons(id),
    
    -- Change tracking  
    change_reason VARCHAR(100), -- e.g., "Steel type introduction", "Ability introduction"
    
    -- Generation range (inclusive)
    from_generation INTEGER NOT NULL REFERENCES meta.generations(id),
    to_generation INTEGER REFERENCES meta.generations(id), -- NULL means current
    
    -- What changed? (only non-null values indicate changes from base)
    old_type_1_id INTEGER REFERENCES dex.types(id),
    old_type_2_id INTEGER REFERENCES dex.types(id),
    old_ability_1_id INTEGER REFERENCES dex.abilities(id),
    old_ability_2_id INTEGER REFERENCES dex.abilities(id),
    old_hidden_ability_id INTEGER REFERENCES dex.abilities(id),
    
    -- Stat changes
    old_hp INTEGER,
    old_attack INTEGER,
    old_defense INTEGER,
    old_special_attack INTEGER,
    old_special_defense INTEGER,
    old_speed INTEGER,
    old_base_experience INTEGER,
    
    -- Other changes
    old_height INTEGER,
    old_weight INTEGER,
    old_color VARCHAR(20),
    old_growth_rate VARCHAR(20),
    old_gender_rate INTEGER,
    old_capture_rate INTEGER,
    old_base_happiness INTEGER,
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    
    CONSTRAINT valid_generation_range CHECK (to_generation IS NULL OR to_generation >= from_generation)
);

-- ================================================================================
-- ABILITIES CHANGES (Historical differences from modern abilities)
-- ================================================================================
CREATE TABLE dex.abilities_changes (
    id SERIAL PRIMARY KEY,
    ability_id INTEGER NOT NULL REFERENCES dex.abilities(id),
    
    -- Change tracking
    change_reason VARCHAR(100), -- e.g., "Description update", "Effect change"
    
    -- Generation range (inclusive)
    from_generation INTEGER NOT NULL REFERENCES meta.generations(id),
    to_generation INTEGER REFERENCES meta.generations(id), -- NULL means current
    
    -- What changed?
    old_name VARCHAR(100),
    old_description TEXT,
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    
    CONSTRAINT valid_generation_range CHECK (to_generation IS NULL OR to_generation >= from_generation)
);

-- ================================================================================
-- ITEMS CHANGES (Historical differences from modern items)
-- ================================================================================
CREATE TABLE dex.items_changes (
    id SERIAL PRIMARY KEY,
    item_id INTEGER NOT NULL REFERENCES dex.items(id),
    
    -- Change tracking
    change_reason VARCHAR(100), -- e.g., "Cost change", "Effect update"
    
    -- Generation range (inclusive)
    from_generation INTEGER NOT NULL REFERENCES meta.generations(id),
    to_generation INTEGER REFERENCES meta.generations(id), -- NULL means current
    
    -- What changed?
    old_name VARCHAR(100),
    old_category VARCHAR(50),
    old_cost INTEGER,
    old_fling_power INTEGER,
    old_fling_effect VARCHAR(100),
    old_description TEXT,
    old_effect TEXT,
    
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    
    CONSTRAINT valid_generation_range CHECK (to_generation IS NULL OR to_generation >= from_generation)
);

-- ================================================================================
-- INDEXES FOR PERFORMANCE
-- ================================================================================

-- Types changes indexes
CREATE INDEX idx_types_changes_type_generation ON dex.types_changes(type_id, from_generation, to_generation);

-- Moves changes indexes  
CREATE INDEX idx_moves_changes_move_generation ON dex.moves_changes(move_id, from_generation, to_generation);

-- Pokemons changes indexes
CREATE INDEX idx_pokemons_changes_pokemon_generation ON dex.pokemons_changes(pokemon_id, from_generation, to_generation);

-- Abilities changes indexes
CREATE INDEX idx_abilities_changes_ability_generation ON dex.abilities_changes(ability_id, from_generation, to_generation);

-- Items changes indexes
CREATE INDEX idx_items_changes_item_generation ON dex.items_changes(item_id, from_generation, to_generation);

-- ================================================================================
-- NOTE: Views for querying historical data will be created later
-- ================================================================================
-- Views like moves_with_history and pokemons_with_history will be created
-- after all base tables and changes tables are set up and populated