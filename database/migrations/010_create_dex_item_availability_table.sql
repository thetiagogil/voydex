CREATE TABLE
  dex.item_availability_per_game (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4 (),
    item_id INTEGER NOT NULL REFERENCES dex.items (id) ON DELETE CASCADE,
    version_group_id INTEGER NOT NULL REFERENCES meta.version_groups (id) ON DELETE CASCADE,
    is_available BOOLEAN NOT NULL DEFAULT TRUE,
    notes TEXT,
    created_at TIMESTAMPTZ DEFAULT now (),
    UNIQUE (item_id, version_group_id),
    CHECK (NOT is_available)
  );

CREATE INDEX idx_item_availability_version ON dex.item_availability_per_game (version_group_id);

CREATE INDEX idx_item_availability_item ON dex.item_availability_per_game (item_id);