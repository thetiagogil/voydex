-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia individual item, evolution item, form item, and game item pages.
-- Cross-check: Serebii item location pages and PokemonDB item pages where available.
-- Scope note: curated Pokémon-relevant item availability, not a full item encyclopedia.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.item_availability
-- Generation: 1
-- Version Group: Red / Blue
-- Scope: items available in this game/content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Evolution Stones And Direct Items
  -- Moon Stone
  (63, 1, NULL, NULL, NULL),
  -- Fire Stone
  (64, 1, NULL, NULL, NULL),
  -- Thunder Stone
  (65, 1, NULL, NULL, NULL),
  -- Water Stone
  (66, 1, NULL, NULL, NULL),
  -- Leaf Stone
  (67, 1, NULL, NULL, NULL),
  -- Poke Balls
  -- Poke Ball
  (117, 1, NULL, NULL, NULL),
  -- Great Ball
  (118, 1, NULL, NULL, NULL),
  -- Ultra Ball
  (119, 1, NULL, NULL, NULL),
  -- Master Ball
  (120, 1, NULL, NULL, NULL),
  -- Safari Ball
  (121, 1, NULL, NULL, NULL),
  -- Fossils
  -- Helix Fossil
  (153, 1, NULL, NULL, NULL),
  -- Dome Fossil
  (154, 1, NULL, NULL, NULL),
  -- Old Amber
  (155, 1, NULL, NULL, NULL);
