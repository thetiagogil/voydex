-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Sun / Moon shared tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Sun / Moon story and optional progression.
-- The island challenge is the Main Story, so it has no chapter of its own,
-- and the Pokémon League is one milestone at the end of it (the Elite Four,
-- Professor Kukui and the Hall of Fame back to back).
-- ============================================================================

INSERT INTO tracking.mainline_categories (
  id,
  version_group_id,
  slug,
  name,
  category_kind,
  chapter_kind,
  plays_in_any_order,
  sort_order
) VALUES
  -- Main Story
  (1501, 15, 'main-story', 'Main Story', 'story', 'main-story', false, 1),
  -- Post Game
  (1504, 15, 'post-game', 'Post Game', 'story', 'post-game', false, 2),
  -- Side Content
  (1505, 15, 'side-content', 'Side Content', 'story', 'side-content', false, 3);
