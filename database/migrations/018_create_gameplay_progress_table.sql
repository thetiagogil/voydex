CREATE TABLE
  gameplay.progress (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4 (),
    play_id UUID NOT NULL REFERENCES gameplay.plays (id) ON DELETE CASCADE,
    progress_item_id INTEGER NOT NULL REFERENCES meta.progress_items (id) ON DELETE CASCADE,
    created_at TIMESTAMP
    WITH
      TIME ZONE DEFAULT NOW (),
      UNIQUE (play_id, progress_item_id)
  );

CREATE INDEX idx_progress_play ON gameplay.progress (play_id);

CREATE INDEX idx_progress_item ON gameplay.progress (progress_item_id);