-- ============================================================================
-- Table: reference.version_groups
-- Game version groups. DLC modeled via parent_version_group_id.
-- ============================================================================
CREATE TABLE
  reference.version_groups (id INTEGER PRIMARY KEY, slug VARCHAR(50) NOT NULL UNIQUE, name VARCHAR(100) NOT NULL UNIQUE, generation_id INTEGER NOT NULL REFERENCES reference.generations (id), parent_version_group_id INTEGER REFERENCES reference.version_groups (id), created_at TIMESTAMPTZ NOT NULL DEFAULT NOW ());

-- Comments
COMMENT ON TABLE reference.version_groups IS 'Game version groups. DLC expansions have parent_version_group_id pointing to the base game VG.';

COMMENT ON COLUMN reference.version_groups.parent_version_group_id IS 'For DLC version groups, points to the base game VG (e.g. swsh-ioa → swsh). NULL for base games.';