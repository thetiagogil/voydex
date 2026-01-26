CREATE TABLE
  gameplay.progress (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4 (),
    play_id UUID NOT NULL REFERENCES gameplay.plays (id) ON DELETE CASCADE,
    progress_item_id INTEGER NOT NULL REFERENCES meta.progress_items (id) ON DELETE CASCADE,
    completed_at TIMESTAMP
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

-- WHAT: Composite index on play + progress_item
-- WHY: Makes it fast to check completion status and fetch items for a play
-- WHEN USED: getPlayProgressItems(), getPlayProgressCategories()
CREATE INDEX idx_progress_play_item ON gameplay.progress (play_id, progress_item_id);

-- WHAT: Composite index on play_id + completed_at (newest first)
-- WHY: Makes it fast to show progress timeline for a playthrough
-- WHEN USED: "Show me my recent progress in THIS playthrough"
CREATE INDEX idx_progress_play_completed ON gameplay.progress (play_id, completed_at DESC);

-- WHAT: Index on completed_at (newest first) across ALL progress
-- WHY: Makes it fast to show recent activity across all users
-- WHEN USED: "Show me the most recent progress updates" (activity feed!)
CREATE INDEX idx_progress_completed_at_desc ON gameplay.progress (completed_at DESC);