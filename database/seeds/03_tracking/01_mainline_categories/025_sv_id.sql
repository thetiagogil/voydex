-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon The Indigo Disk tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for The Indigo Disk story and optional progression.
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
  (2501, 25, 'dlc-story', 'DLC Story', 'story', 1),
  -- Side Content
  (2502, 25, 'side-content', 'Side Content', 'story', 2);
