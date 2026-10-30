-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon X / Y tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for X / Y story and optional progression.
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
  (1301, 13, 'main-story', 'Main Story', 'story', 'main-story', false, 1),
  -- Pokémon League
  (1302, 13, 'pokemon-league', 'Pokémon League', 'story', 'main-story', false, 2),
  -- Post Game
  (1303, 13, 'post-game', 'Post Game', 'story', 'post-game', false, 3),
  -- Side Content
  (1304, 13, 'side-content', 'Side Content', 'story', 'side-content', false, 4);
