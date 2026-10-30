-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Black / White tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Black / White story and optional progression.
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
  (1101, 11, 'main-story', 'Main Story', 'story', 'main-story', false, 1),
  -- Pokémon League
  (1102, 11, 'pokemon-league', 'Pokémon League', 'story', 'main-story', false, 2),
  -- Post Game
  (1103, 11, 'post-game', 'Post Game', 'story', 'post-game', false, 3),
  -- Side Content
  (1104, 11, 'side-content', 'Side Content', 'story', 'side-content', false, 4);
