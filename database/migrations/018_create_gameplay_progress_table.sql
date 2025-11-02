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

CREATE INDEX idx_progress_play_created ON gameplay.progress (play_id, created_at DESC);

-- Enable Row Level Security
ALTER TABLE gameplay.progress ENABLE ROW LEVEL SECURITY;

-- RLS Policies
CREATE POLICY "Users can view own progress" ON gameplay.progress FOR
SELECT
  USING (
    auth.uid () IN (
      SELECT
        user_id
      FROM
        gameplay.plays
      WHERE
        id = progress.play_id
    )
  );

CREATE POLICY "Users can insert own progress" ON gameplay.progress FOR INSERT
WITH
  CHECK (
    auth.uid () IN (
      SELECT
        user_id
      FROM
        gameplay.plays
      WHERE
        id = progress.play_id
    )
  );

CREATE POLICY "Users can delete own progress" ON gameplay.progress FOR DELETE USING (
  auth.uid () IN (
    SELECT
      user_id
    FROM
      gameplay.plays
    WHERE
      id = progress.play_id
  )
);