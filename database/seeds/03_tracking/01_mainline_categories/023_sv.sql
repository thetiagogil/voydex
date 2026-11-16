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
  chapter_kind,
  plays_in_any_order,
  sort_order
) VALUES
  -- Main Story
  (2301, 23, 'main-story', 'Main Story', 'story', 'main-story', false, 1),
  -- Post Game
  (2306, 23, 'post-game', 'Post Game', 'story', 'post-game', false, 2),
  -- Side Content
  (2307, 23, 'side-content', 'Side Content', 'story', 'side-content', false, 3);
