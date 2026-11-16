-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon FireRed / LeafGreen shared tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for FireRed / LeafGreen story and optional progression.
-- The Pokémon League is one milestone at the end of Main Story (the Elite Four,
-- Champion Blue and the Hall of Fame back to back), so it has no chapter.
-- Post Game is the Sevii Islands quest for Celio and what it opens.
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
  (601, 6, 'main-story', 'Main Story', 'story', 'main-story', false, 1),
  -- Post Game
  (603, 6, 'post-game', 'Post Game', 'story', 'post-game', false, 2),
  -- Side Content
  (604, 6, 'side-content', 'Side Content', 'story', 'side-content', false, 3);
