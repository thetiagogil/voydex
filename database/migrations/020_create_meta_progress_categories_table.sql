CREATE TABLE
  meta.progress_categories (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4 (),
    version_group_id INTEGER NOT NULL REFERENCES meta.version_groups (id) ON DELETE CASCADE,
    slug VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    sort_order INTEGER NOT NULL DEFAULT 0,
    created_at TIMESTAMP
    WITH
      TIME ZONE DEFAULT NOW (),
      UNIQUE (version_group_id, slug)
  );

CREATE INDEX idx_progress_categories_vg ON meta.progress_categories (version_group_id);