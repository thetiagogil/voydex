-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Sword / Shield shared tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Sword / Shield story and optional progression.
-- The Champion Cup, Eternatus and the match with Leon close Main Story, so
-- there is no League chapter.
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
  (1801, 18, 'main-story', 'Main Story', 'story', 'main-story', false, 1),
  -- Post Game
  (1803, 18, 'post-game', 'Post Game', 'story', 'post-game', false, 2),
  -- Side Content
  (1804, 18, 'side-content', 'Side Content', 'story', 'side-content', false, 3);
