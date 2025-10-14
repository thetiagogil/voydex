-- ================================================================================
-- Migration: 002
-- ================================================================================

-- ================================================================================
-- GENERATIONS TABLE
-- ================================================================================
CREATE TABLE meta.generations (
    id INTEGER PRIMARY KEY,
    slug VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    start_year INTEGER NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ================================================================================
-- REGIONS TABLE
-- ================================================================================
CREATE TABLE meta.regions (
    id INTEGER PRIMARY KEY,
    generation_id INTEGER NOT NULL REFERENCES meta.generations(id),
    slug VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ================================================================================
-- VERSION GROUPS TABLE
-- ================================================================================
CREATE TABLE meta.version_groups (
    id SERIAL PRIMARY KEY,
    generation_id INTEGER NOT NULL REFERENCES meta.generations(id),
    slug VARCHAR(20) NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- ================================================================================
-- GAMES TABLE
-- ================================================================================
CREATE TABLE meta.games (
    id INTEGER PRIMARY KEY,
    generation_id INTEGER NOT NULL REFERENCES meta.generations(id),
    region_id INTEGER NOT NULL REFERENCES meta.regions(id),
    version_group_id INTEGER NOT NULL REFERENCES meta.version_groups(id),
    slug VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50) NOT NULL,
    regional_dex_count INTEGER,
    national_dex_count INTEGER,
    release_year INTEGER NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);