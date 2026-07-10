-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Ultra Sun / Ultra Moon tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Ultra Sun / Ultra Moon story and optional progression.
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
  (1601, 16, 'main-story', 'Main Story', 'story', 1),
  -- Island Challenge
  (1602, 16, 'island-challenge', 'Island Challenge', 'story', 2),
  -- Pokémon League
  (1603, 16, 'pokemon-league', 'Pokémon League', 'story', 3),
  -- Post Game
  (1604, 16, 'post-game', 'Post Game', 'story', 4),
  -- Side Content
  (1605, 16, 'side-content', 'Side Content', 'story', 5);
