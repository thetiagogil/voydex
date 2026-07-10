-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Red / Blue shared tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Red / Blue story and optional progression.
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
  (101, 1, 'main-story', 'Main Story', 'story', 1),
  -- Pokémon League
  (102, 1, 'pokemon-league', 'Pokémon League', 'story', 2),
  -- Post Game
  (103, 1, 'post-game', 'Post Game', 'story', 3),
  -- Side Content
  (104, 1, 'side-content', 'Side Content', 'story', 4);
