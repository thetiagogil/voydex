-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Diamond / Pearl tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Diamond / Pearl story and optional progression.
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
  (801, 8, 'main-story', 'Main Story', 'story', 'main-story', false, 1),
  -- Pokémon League
  (802, 8, 'pokemon-league', 'Pokémon League', 'story', 'main-story', false, 2),
  -- Post Game
  (803, 8, 'post-game', 'Post Game', 'story', 'post-game', false, 3),
  -- Side Content
  (804, 8, 'side-content', 'Side Content', 'story', 'side-content', false, 4);
