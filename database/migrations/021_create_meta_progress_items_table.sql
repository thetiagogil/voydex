CREATE TABLE
  meta.progress_items (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4 (),
    category_id UUID NOT NULL REFERENCES meta.progress_categories (id) ON DELETE CASCADE,
    game_id INTEGER REFERENCES meta.games (id) ON DELETE CASCADE, -- NULL = default
    slug VARCHAR(100) NOT NULL,
    name VARCHAR(200) NOT NULL,
    description TEXT,
    timeline_message VARCHAR(500),
    sort_order INTEGER NOT NULL DEFAULT 0,
    created_at TIMESTAMP
    WITH
      TIME ZONE DEFAULT NOW ()
  );

CREATE INDEX idx_progress_items_category ON meta.progress_items (category_id);

CREATE INDEX idx_progress_items_game ON meta.progress_items (game_id);

-- Uniqueness rule:
-- One logical item per (category, slug), allowing either one NULL (default) row
-- And/or a single override row per game. Use an expression unique index.
CREATE UNIQUE INDEX uq_progress_item_key ON meta.progress_items (category_id, slug, COALESCE(game_id, 0));