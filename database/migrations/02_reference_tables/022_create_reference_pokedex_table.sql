-- ============================================================================
-- Table: reference.pokedex
-- Curated Pokédex definitions per version group.
-- A version group can have multiple dexes (e.g. Hoenn Dex + National Dex,
-- or Central/Coastal/Mountain Kalos + National Dex).
-- Dex membership is tracked separately in reference.pokedex_entries.
-- ============================================================================
-- Enum: dex kind classification
CREATE TYPE reference.pokedex_kind AS ENUM ('regional', 'expansion', 'national', 'special');

CREATE TABLE
    reference.pokedex (
        id INTEGER PRIMARY KEY,
        -- Foreign keys
        version_group_id INTEGER NOT NULL REFERENCES reference.version_groups (id),
        -- Dex identity
        slug TEXT NOT NULL,
        name TEXT NOT NULL,
        pokedex_kind reference.pokedex_kind NOT NULL,
        sort_order INTEGER NOT NULL CHECK (sort_order > 0),
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ()
    );

-- Unique constraints
-- Each dex slug is unique within a version group
CREATE UNIQUE INDEX uq_dexes_vg_slug ON reference.pokedex (version_group_id, slug);

-- Indexes
CREATE INDEX idx_dexes_vg ON reference.pokedex (version_group_id);

CREATE INDEX idx_dexes_kind ON reference.pokedex (pokedex_kind);

CREATE INDEX idx_dexes_slug ON reference.pokedex (slug);

-- Comments
COMMENT ON TABLE reference.pokedex IS 'Pokédex definitions per version group. A VG can have multiple dexes (e.g. regional + national, or sub-regional dexes like Kalos Central/Coastal/Mountain). Distinct from pokemon_availability: dexes track in-game dex listing, not obtainability.';

COMMENT ON COLUMN reference.pokedex.slug IS 'Unique dex identifier within a version group (e.g. hoenn-dex, national-dex, central-kalos).';

COMMENT ON COLUMN reference.pokedex.pokedex_kind IS 'regional = main regional dex; expansion = DLC/expansion-added dex; national = full national dex; special = any other special dex.';

COMMENT ON COLUMN reference.pokedex.sort_order IS 'Display order for dexes within a version group. 1 = primary dex.';