-- =============================================================================
-- PLAY STATUS LOOKUP TABLE
-- =============================================================================
-- Why a table instead of ENUM:
-- - Easier to add new statuses without ALTER TYPE
-- - Can add metadata (display name, sort order, is_terminal, etc.)
-- - Better for frontend consumption (can query all valid values)
-- =============================================================================

CREATE TABLE gameplay.play_statuses (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  slug VARCHAR(20) NOT NULL UNIQUE,
  name VARCHAR(50) NOT NULL,
  description TEXT,
  is_terminal BOOLEAN DEFAULT FALSE,
  sort_order INTEGER NOT NULL
);

INSERT INTO gameplay.play_statuses (slug, name, description, is_terminal, sort_order) VALUES
  ('active', 'Active', 'Currently playing', FALSE, 1),
  ('paused', 'Paused', 'Taking a break', FALSE, 2),
  ('completed', 'Completed', 'Finished the game', TRUE, 3),
  ('dropped', 'Dropped', 'Abandoned playthrough', TRUE, 4);

COMMENT ON TABLE gameplay.play_statuses IS 'Valid statuses for playthroughs. Used as a lookup/reference table.';
