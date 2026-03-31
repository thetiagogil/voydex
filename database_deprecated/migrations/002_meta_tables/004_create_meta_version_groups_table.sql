CREATE TABLE
  meta.version_groups (
    id SERIAL PRIMARY KEY,
    slug VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL UNIQUE,
    generation_id INTEGER NOT NULL REFERENCES meta.generations (id),
    parent_version_group_id INTEGER REFERENCES meta.version_groups (id),
    created_at TIMESTAMP
    WITH
      TIME ZONE DEFAULT NOW ()
  );

COMMENT ON TABLE meta.version_groups IS 'Game version groups. DLC expansions are modeled as version groups with parent_version_group_id pointing to the base game VG.';

COMMENT ON COLUMN meta.version_groups.parent_version_group_id IS 'For DLC version groups, points to the base game version group (e.g. swsh-ioa → swsh). NULL for base game VGs.';

CREATE INDEX idx_version_groups_generation ON meta.version_groups (generation_id);

CREATE INDEX idx_version_groups_parent ON meta.version_groups (parent_version_group_id)
WHERE
  parent_version_group_id IS NOT NULL;