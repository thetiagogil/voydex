-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Gold / Silver tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Gold / Silver story and optional progression.
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
  -- Pokémon League
  (302, 3, 'pokemon-league', 'Pokémon League', 'story', 'main-story', false, 2),
  -- Post Game
  (303, 3, 'post-game', 'Post Game', 'story', 'post-game', false, 3),
  -- Side Content
  (304, 3, 'side-content', 'Side Content', 'story', 'side-content', false, 4);
