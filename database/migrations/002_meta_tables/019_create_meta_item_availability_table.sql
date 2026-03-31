-- =============================================================================
-- ITEM AVAILABILITY TABLE
-- Positive join table: row exists = item present in this version group
-- =============================================================================
CREATE TABLE
    meta.item_availability (
        item_id INTEGER NOT NULL REFERENCES meta.items (id) ON DELETE CASCADE,
        version_group_id INTEGER NOT NULL REFERENCES meta.version_groups (id) ON DELETE CASCADE,
        created_at TIMESTAMP
        WITH
            TIME ZONE DEFAULT NOW (),
            PRIMARY KEY (item_id, version_group_id)
    );

CREATE INDEX idx_item_avail_vg ON meta.item_availability (version_group_id);

CREATE INDEX idx_item_avail_item ON meta.item_availability (item_id);

COMMENT ON TABLE meta.item_availability IS 'Positive availability model: row exists = item is present in this version group. DLC VG files contain only additions over the base VG.';