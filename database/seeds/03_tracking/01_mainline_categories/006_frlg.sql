-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon FireRed / LeafGreen tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for FireRed / LeafGreen story and optional progression.
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
  (601, 6, 'main-story', 'Main Story', 'story', 1),
  -- Pokémon League
  (602, 6, 'pokemon-league', 'Pokémon League', 'story', 2),
  -- Post Game
  (603, 6, 'post-game', 'Post Game', 'story', 3),
  -- Side Content
  (604, 6, 'side-content', 'Side Content', 'story', 4);
