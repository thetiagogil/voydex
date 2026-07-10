-- ============================================================================
-- Source
-- ============================================================================
-- Product taxonomy decision for Voydex product family boundaries.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Product families supported or intentionally planned by Voydex.
-- ============================================================================
INSERT INTO reference.product_families (id, slug, name, description, support_status, sort_order)
VALUES
  -- Mainline
  (1, 'mainline', 'Mainline Games', 'Mainline Pokémon RPG product family scope for mainline, remake, Legends, DLC, and optional-content playthrough tracking.', 'active', 1),
  -- Mystery Dungeon
  (2, 'dungeon', 'Mystery Dungeon', 'Future product family for Pokémon Mystery Dungeon-style adventures, recruitment, dungeons, and product-family-specific completion.', 'planned', 2),
  -- Pokopia
  (3, 'pokopia', 'Pokopia', 'Future product family for Pokémon Pokopia-style sandbox, habitat, building, discovery, and life-sim progression.', 'planned', 3),
  -- GO
  (4, 'go', 'GO', 'Future product family for Pokémon GO collection, event, and mobile progression tracking.', 'planned', 4),
  -- HOME
  (5, 'home', 'HOME', 'Future product family for Pokémon HOME-style collection, living dex, form, origin, and storage goals.', 'planned', 5),
  -- Ranger
  (6, 'ranger', 'Ranger', 'Backlog product family for Pokémon Ranger-style capture, mission, and action-adventure tracking.', 'backlog', 6),
  -- Sleep
  (7, 'sleep', 'Sleep', 'Backlog product family for Pokémon Sleep-style research, sleep-style, helper, and collection tracking.', 'backlog', 7);
