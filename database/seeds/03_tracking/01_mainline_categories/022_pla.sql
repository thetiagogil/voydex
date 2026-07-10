-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Legends: Arceus tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Pokémon Legends: Arceus story and optional progression.
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
  (2201, 22, 'main-story', 'Main Story', 'story', 1),
  -- Post Game
  (2202, 22, 'post-game', 'Post Game', 'story', 2),
  -- Side Content
  (2203, 22, 'side-content', 'Side Content', 'story', 3);
