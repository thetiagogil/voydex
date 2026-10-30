-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Black 2 / White 2 tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Black 2 / White 2 story and optional progression.
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
  (1201, 12, 'main-story', 'Main Story', 'story', 'main-story', false, 1),
  -- Pokémon League
  (1202, 12, 'pokemon-league', 'Pokémon League', 'story', 'main-story', false, 2),
  -- Post Game
  (1203, 12, 'post-game', 'Post Game', 'story', 'post-game', false, 3),
  -- Side Content
  (1204, 12, 'side-content', 'Side Content', 'story', 'side-content', false, 4);
