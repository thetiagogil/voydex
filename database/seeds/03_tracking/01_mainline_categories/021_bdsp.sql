-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Brilliant Diamond / Shining Pearl tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Brilliant Diamond / Shining Pearl story and optional progression.
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
  (2101, 21, 'main-story', 'Main Story', 'story', 1),
  -- Pokémon League
  (2102, 21, 'pokemon-league', 'Pokémon League', 'story', 2),
  -- Post Game
  (2103, 21, 'post-game', 'Post Game', 'story', 3),
  -- Side Content
  (2104, 21, 'side-content', 'Side Content', 'story', 4);
