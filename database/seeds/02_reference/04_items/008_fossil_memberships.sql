-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Fossil Pokémon and individual fossil item pages.
-- Cross-check: Serebii item location pages and PokemonDB fossil Pokémon pages.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.item_category_memberships
-- Scope: Fossil category memberships for Pokémon origin/restoration items.
INSERT INTO reference.item_category_memberships (item_id, category_id)
VALUES
  -- Helix Fossil -> Fossils
  (153, 4),
  -- Dome Fossil -> Fossils
  (154, 4),
  -- Old Amber -> Fossils
  (155, 4),
  -- Root Fossil -> Fossils
  (156, 4),
  -- Claw Fossil -> Fossils
  (157, 4),
  -- Armor Fossil -> Fossils
  (158, 4),
  -- Skull Fossil -> Fossils
  (159, 4),
  -- Cover Fossil -> Fossils
  (160, 4),
  -- Plume Fossil -> Fossils
  (161, 4),
  -- Jaw Fossil -> Fossils
  (162, 4),
  -- Sail Fossil -> Fossils
  (163, 4),
  -- Fossilized Bird -> Fossils
  (164, 4),
  -- Fossilized Fish -> Fossils
  (165, 4),
  -- Fossilized Drake -> Fossils
  (166, 4),
  -- Fossilized Dino -> Fossils
  (167, 4);
