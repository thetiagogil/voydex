-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Platinum tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Platinum story and optional progression.
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
  (901, 9, 'main-story', 'Main Story', 'story', 1),
  -- Pokémon League
  (902, 9, 'pokemon-league', 'Pokémon League', 'story', 2),
  -- Post Game
  (903, 9, 'post-game', 'Post Game', 'story', 3),
  -- Side Content
  (904, 9, 'side-content', 'Side Content', 'story', 4);
