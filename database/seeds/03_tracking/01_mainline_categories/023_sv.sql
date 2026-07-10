-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Scarlet / Violet tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Scarlet / Violet story and optional progression.
-- ============================================================================

INSERT INTO tracking.mainline_categories (
  id,
  version_group_id,
  slug,
  name,
  category_kind,
  sort_order
) VALUES
  -- Main Story
  (2301, 23, 'main-story', 'Main Story', 'story', 1),
  -- Victory Road
  (2302, 23, 'victory-road', 'Victory Road', 'story', 2),
  -- Starfall Street
  (2303, 23, 'starfall-street', 'Starfall Street', 'story', 3),
  -- Path of Legends
  (2304, 23, 'path-of-legends', 'Path of Legends', 'story', 4),
  -- The Way Home
  (2305, 23, 'the-way-home', 'The Way Home', 'story', 5),
  -- Post Game
  (2306, 23, 'post-game', 'Post Game', 'story', 6),
  -- Side Content
  (2307, 23, 'side-content', 'Side Content', 'story', 7);
