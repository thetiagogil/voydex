-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon The Crown Tundra tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for The Crown Tundra story and optional progression.
-- ============================================================================

INSERT INTO tracking.mainline_categories (
  id,
  version_group_id,
  slug,
  name,
  category_kind,
  sort_order
) VALUES
  -- DLC Story
  (2001, 20, 'dlc-story', 'DLC Story', 'story', 1),
  -- Side Content
  (2002, 20, 'side-content', 'Side Content', 'story', 2);
