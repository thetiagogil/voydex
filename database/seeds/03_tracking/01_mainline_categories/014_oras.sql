-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Omega Ruby / Alpha Sapphire shared tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Omega Ruby / Alpha Sapphire story and optional progression.
-- The Pokémon League is one milestone at the end of Main Story (the Elite Four,
-- Champion Steven and the Hall of Fame back to back), so it has no chapter.
-- The Delta Episode is Post Game.
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
  (1401, 14, 'main-story', 'Main Story', 'story', 'main-story', false, 1),
  -- Post Game
  (1403, 14, 'post-game', 'Post Game', 'story', 'post-game', false, 2),
  -- Side Content
  (1404, 14, 'side-content', 'Side Content', 'story', 'side-content', false, 3);
