-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Ruby / Sapphire tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Ruby / Sapphire story and optional progression.
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
  (501, 5, 'main-story', 'Main Story', 'story', 1),
  -- Pokémon League
  (502, 5, 'pokemon-league', 'Pokémon League', 'story', 2),
  -- Post Game
  (503, 5, 'post-game', 'Post Game', 'story', 3),
  -- Side Content
  (504, 5, 'side-content', 'Side Content', 'story', 4);
