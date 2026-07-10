-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Sun / Moon tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Sun / Moon story and optional progression.
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
  (1501, 15, 'main-story', 'Main Story', 'story', 1),
  -- Island Challenge
  (1502, 15, 'island-challenge', 'Island Challenge', 'story', 2),
  -- Pokémon League
  (1503, 15, 'pokemon-league', 'Pokémon League', 'story', 3),
  -- Post Game
  (1504, 15, 'post-game', 'Post Game', 'story', 4),
  -- Side Content
  (1505, 15, 'side-content', 'Side Content', 'story', 5);
