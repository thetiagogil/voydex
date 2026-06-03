-- ============================================================================
-- Table: reference.games
-- Individual Pokémon game titles. Real games only — no DLC entries.
-- Dex counts are intentionally omitted: dex membership and counts are derived
-- from reference.pokedex + reference.pokedex_entries, not stored redundantly here.
-- ============================================================================
CREATE TABLE
    reference.games (
        id INTEGER PRIMARY KEY,
        slug VARCHAR(50) NOT NULL UNIQUE,
        name VARCHAR(100) NOT NULL UNIQUE,
        generation_id INTEGER NOT NULL REFERENCES reference.generations (id),
        region_id INTEGER NOT NULL REFERENCES reference.regions (id),
        version_group_id INTEGER NOT NULL REFERENCES reference.version_groups (id),
        type_id INTEGER NOT NULL REFERENCES reference.game_types (id),
        release_year INTEGER NOT NULL CHECK (release_year BETWEEN 1996 AND 2100),
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        UNIQUE (version_group_id, name)
    );

-- Comments
COMMENT ON TABLE reference.games IS 'Individual game titles. Real games only — DLC is modeled as version groups, not games. Dex counts are derived from reference.pokedex_entries, not stored here.';