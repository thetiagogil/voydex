-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Let's Go, Pikachu! / Let's Go, Eevee! tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Let's Go, Pikachu! / Let's Go, Eevee! story and optional progression.
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
  (1701, 17, 'main-story', 'Main Story', 'story', 1),
  -- Pokémon League
  (1702, 17, 'pokemon-league', 'Pokémon League', 'story', 2),
  -- Post Game
  (1703, 17, 'post-game', 'Post Game', 'story', 3),
  -- Side Content
  (1704, 17, 'side-content', 'Side Content', 'story', 4);
