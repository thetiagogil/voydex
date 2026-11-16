-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Gold / Silver shared tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Gold / Silver story and optional progression.
-- The Pokémon League is one milestone at the end of Main Story (the Elite Four,
-- Champion Lance and the Hall of Fame back to back), so it has no chapter.
-- Kanto and Red on Mt. Silver are Post Game.
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
  (301, 3, 'main-story', 'Main Story', 'story', 'main-story', false, 1),
  -- Post Game
  (303, 3, 'post-game', 'Post Game', 'story', 'post-game', false, 2),
  -- Side Content
  (304, 3, 'side-content', 'Side Content', 'story', 'side-content', false, 3);
