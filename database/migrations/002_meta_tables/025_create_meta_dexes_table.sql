-- ============================================================================
-- Table: meta.dexes
-- Curated Pokédex definitions per version group.
-- A version group can have multiple dexes (e.g. Hoenn Dex + National Dex,
-- or Central/Coastal/Mountain Kalos + National Dex).
-- Dex membership is tracked separately in meta.dex_entries.
-- ============================================================================
-- Enum: dex kind classification
CREATE TYPE meta.dex_kind AS ENUM ('regional', 'expansion', 'national', 'special');

CREATE TABLE
    meta.dexes (
        id INTEGER PRIMARY KEY,
        -- Foreign keys
        version_group_id INTEGER NOT NULL REFERENCES meta.version_groups (id),
        -- Dex identity
        slug TEXT NOT NULL,
        name TEXT NOT NULL,
        dex_kind meta.dex_kind NOT NULL,
        sort_order INTEGER NOT NULL CHECK (sort_order > 0),
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ()
    );

-- Unique constraints
-- Each dex slug is unique within a version group
CREATE UNIQUE INDEX uq_dexes_vg_slug ON meta.dexes (version_group_id, slug);

-- Indexes
CREATE INDEX idx_dexes_vg ON meta.dexes (version_group_id);

CREATE INDEX idx_dexes_kind ON meta.dexes (dex_kind);

CREATE INDEX idx_dexes_slug ON meta.dexes (slug);

-- Comments
COMMENT ON TABLE meta.dexes IS 'Pokédex definitions per version group. A VG can have multiple dexes (e.g. regional + national, or sub-regional dexes like Kalos Central/Coastal/Mountain). Distinct from pokemon_availability: dexes track in-game dex listing, not obtainability.';

COMMENT ON COLUMN meta.dexes.slug IS 'Unique dex identifier within a version group (e.g. hoenn-dex, national-dex, central-kalos).';

COMMENT ON COLUMN meta.dexes.dex_kind IS 'regional = main regional dex; expansion = DLC/expansion-added dex; national = full national dex; special = any other special dex.';

COMMENT ON COLUMN meta.dexes.sort_order IS 'Display order for dexes within a version group. 1 = primary dex.';