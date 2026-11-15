-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Platinum tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Platinum story and optional progression.
-- The Pokémon League is one milestone at the end of Main Story (the Elite Four,
-- Champion Cynthia and the Hall of Fame back to back), so it has no chapter.
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
  (901, 9, 'main-story', 'Main Story', 'story', 'main-story', false, 1),
  -- Post Game
  (903, 9, 'post-game', 'Post Game', 'story', 'post-game', false, 2),
  -- Side Content
  (904, 9, 'side-content', 'Side Content', 'story', 'side-content', false, 3);
