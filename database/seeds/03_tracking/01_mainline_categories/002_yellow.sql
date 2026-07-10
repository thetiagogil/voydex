-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Yellow tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Yellow story and optional progression.
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
  (201, 2, 'main-story', 'Main Story', 'story', 1),
  -- Pokémon League
  (202, 2, 'pokemon-league', 'Pokémon League', 'story', 2),
  -- Post Game
  (203, 2, 'post-game', 'Post Game', 'story', 3),
  -- Side Content
  (204, 2, 'side-content', 'Side Content', 'story', 4);
