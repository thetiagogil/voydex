-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Omega Ruby / Alpha Sapphire tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Omega Ruby / Alpha Sapphire story and optional progression.
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
  (1401, 14, 'main-story', 'Main Story', 'story', 1),
  -- Pokémon League
  (1402, 14, 'pokemon-league', 'Pokémon League', 'story', 2),
  -- Post Game
  (1403, 14, 'post-game', 'Post Game', 'story', 3),
  -- Side Content
  (1404, 14, 'side-content', 'Side Content', 'story', 4);
