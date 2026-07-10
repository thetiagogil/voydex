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
  sort_order
) VALUES
  -- Main Story
  (801, 8, 'main-story', 'Main Story', 'story', 1),
  -- Pokémon League
  (802, 8, 'pokemon-league', 'Pokémon League', 'story', 2),
  -- Post Game
  (803, 8, 'post-game', 'Post Game', 'story', 3),
  -- Side Content
  (804, 8, 'side-content', 'Side Content', 'story', 4);
