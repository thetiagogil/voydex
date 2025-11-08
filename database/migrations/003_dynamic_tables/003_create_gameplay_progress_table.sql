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

-- WHAT: Index on play_id (which playthrough this progress belongs to)
-- WHY: Makes it fast to find all progress for a specific playthrough
-- WHEN USED: "Show me all badges/progress for THIS playthrough"
CREATE INDEX idx_progress_play ON gameplay.progress (play_id);

-- WHAT: Index on progress_item_id (which specific item was completed)
-- WHY: Makes it fast to find all users who completed a specific item
-- WHEN USED: "Show me all playthroughs that beat Brock"
CREATE INDEX idx_progress_item ON gameplay.progress (progress_item_id);

-- WHAT: Composite index on play_id + created_at (newest first)
-- WHY: Makes it fast to show progress timeline for a playthrough
-- WHEN USED: "Show me my recent progress in THIS playthrough"
CREATE INDEX idx_progress_play_created ON gameplay.progress (play_id, created_at DESC);

-- WHAT: Index on created_at (newest first) across ALL progress
-- WHY: Makes it fast to show recent activity across all users
-- WHEN USED: "Show me the most recent progress updates" (activity feed!)
CREATE INDEX idx_progress_created_at_desc ON gameplay.progress (created_at DESC);

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