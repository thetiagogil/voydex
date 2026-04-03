-- ============================================================================
-- Table: meta.games
-- Individual Pokémon game titles. Real games only — no DLC entries.
-- Dex counts are intentionally omitted: dex membership and counts are derived
-- from meta.dexes + meta.dex_entries, not stored redundantly here.
-- ============================================================================
CREATE TABLE
    meta.games (
        id INTEGER PRIMARY KEY,
        slug VARCHAR(50) NOT NULL UNIQUE,
        name VARCHAR(100) NOT NULL UNIQUE,
        generation_id INTEGER NOT NULL REFERENCES meta.generations (id),
        region_id INTEGER NOT NULL REFERENCES meta.regions (id),
        version_group_id INTEGER NOT NULL REFERENCES meta.version_groups (id),
        type_id INTEGER NOT NULL REFERENCES meta.game_types (id),
        release_year INTEGER NOT NULL CHECK (release_year BETWEEN 1996 AND 2100),
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        UNIQUE (version_group_id, name)
    );

-- Indexes
CREATE INDEX idx_games_slug ON meta.games (slug);

CREATE INDEX idx_games_generation ON meta.games (generation_id);

CREATE INDEX idx_games_region ON meta.games (region_id);

CREATE INDEX idx_games_version_group ON meta.games (version_group_id);

CREATE INDEX idx_games_type ON meta.games (type_id);

CREATE INDEX idx_games_generation_type ON meta.games (generation_id, type_id);

CREATE INDEX idx_games_release_year ON meta.games (release_year DESC);

-- Comments
COMMENT ON TABLE meta.games IS 'Individual game titles. Real games only — DLC is modeled as version groups, not games. Dex counts are derived from meta.dex_entries, not stored here.';