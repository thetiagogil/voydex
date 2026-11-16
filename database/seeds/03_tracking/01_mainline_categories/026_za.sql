-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Legends: Z-A tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Pokémon Legends: Z-A story and optional progression.
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
  (2601, 26, 'main-story', 'Main Story', 'story', 'main-story', false, 1),
  -- Post Game
  (2605, 26, 'post-game', 'Post Game', 'story', 'post-game', false, 2),
  -- Side Content
  (2606, 26, 'side-content', 'Side Content', 'story', 'side-content', false, 3);
