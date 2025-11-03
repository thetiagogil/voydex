-- Migration: Add is_tracked column to gameplay.plays
-- Purpose: Allow users to exclude certain playthroughs from progress calculations
-- (e.g., Nuzlockes, challenge runs, test runs)
ALTER TABLE gameplay.plays
ADD COLUMN is_tracked BOOLEAN DEFAULT TRUE NOT NULL;

CREATE INDEX idx_plays_is_tracked ON gameplay.plays (is_tracked);

-- Add comment explaining the column
COMMENT ON COLUMN gameplay.plays.is_tracked IS 'Whether this playthrough should be included in progress/completion statistics. Set to false for challenge runs, Nuzlockes, or test playthroughs that should not affect overall progress metrics.';