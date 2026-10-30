-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Crystal tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Crystal story and optional progression.
-- ============================================================================

INSERT INTO tracking.mainline_categories (
  id,
  version_group_id,
  slug,
  name,
  category_kind,
  chapter_kind,
  plays_in_any_order,
  sort_order
) VALUES
  -- Main Story
  (401, 4, 'main-story', 'Main Story', 'story', 'main-story', false, 1),
  -- Pokémon League
  (402, 4, 'pokemon-league', 'Pokémon League', 'story', 'main-story', false, 2),
  -- Post Game
  (403, 4, 'post-game', 'Post Game', 'story', 'post-game', false, 3),
  -- Side Content
  (404, 4, 'side-content', 'Side Content', 'story', 'side-content', false, 4);
