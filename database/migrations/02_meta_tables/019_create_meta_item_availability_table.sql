-- ============================================================================
-- Table: meta.item_availability
-- Curated availability of items by version group.
-- Positive model: row exists = item is present in this version group.
-- ============================================================================
CREATE TABLE
    meta.item_availability (
        -- Composite primary key
        item_id INTEGER NOT NULL REFERENCES meta.items (id) ON DELETE CASCADE,
        version_group_id INTEGER NOT NULL REFERENCES meta.version_groups (id),
        -- Timestamps
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW (),
        PRIMARY KEY (item_id, version_group_id)
    );

-- Indexes
CREATE INDEX idx_item_avail_item ON meta.item_availability (item_id);

CREATE INDEX idx_item_avail_vg ON meta.item_availability (version_group_id);

-- Comments
COMMENT ON TABLE meta.item_availability IS 'Positive availability model: row exists = item is present and obtainable in this version group. DLC version groups contain only additions over the base VG.';