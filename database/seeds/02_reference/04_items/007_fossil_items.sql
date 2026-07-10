-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Fossil Pokémon and individual fossil item pages.
-- Cross-check: Serebii item location pages and PokemonDB fossil Pokémon pages.
-- Machine-readable sanity: PokeAPI item IDs only.
-- Scope note: fossil items that explain Pokémon origin/restoration history.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.items
-- Scope: Fossil catalog rows for Pokémon origin and restoration availability.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order)
VALUES
  -- Helix Fossil
  (153, 'helix-fossil', 'Helix Fossil', 4, 1, 101, 153),
  -- Dome Fossil
  (154, 'dome-fossil', 'Dome Fossil', 4, 1, 102, 154),
  -- Old Amber
  (155, 'old-amber', 'Old Amber', 4, 1, 103, 155),
  -- Root Fossil
  (156, 'root-fossil', 'Root Fossil', 4, 3, 99, 156),
  -- Claw Fossil
  (157, 'claw-fossil', 'Claw Fossil', 4, 3, 100, 157),
  -- Armor Fossil
  (158, 'armor-fossil', 'Armor Fossil', 4, 4, 104, 158),
  -- Skull Fossil
  (159, 'skull-fossil', 'Skull Fossil', 4, 4, 105, 159),
  -- Cover Fossil
  (160, 'cover-fossil', 'Cover Fossil', 4, 5, 613, 160),
  -- Plume Fossil
  (161, 'plume-fossil', 'Plume Fossil', 4, 5, 614, 161),
  -- Jaw Fossil
  (162, 'jaw-fossil', 'Jaw Fossil', 4, 6, 729, 162),
  -- Sail Fossil
  (163, 'sail-fossil', 'Sail Fossil', 4, 6, 730, 163),
  -- Fossilized Bird
  (164, 'fossilized-bird', 'Fossilized Bird', 4, 8, 1163, 164),
  -- Fossilized Fish
  (165, 'fossilized-fish', 'Fossilized Fish', 4, 8, 1164, 165),
  -- Fossilized Drake
  (166, 'fossilized-drake', 'Fossilized Drake', 4, 8, 1165, 166),
  -- Fossilized Dino
  (167, 'fossilized-dino', 'Fossilized Dino', 4, 8, 1166, 167);
