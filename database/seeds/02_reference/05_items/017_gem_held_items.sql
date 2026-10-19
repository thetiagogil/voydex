-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii ItemDex held item index and individual item pages.
-- Cross-check: Bulbapedia held item, type-enhancing item, incense, gem, and item pages.
-- Machine-readable sanity: PokeAPI item IDs where available.
-- Scope note: reduced held-item catalog for Pokémon team planning, biography, and future filters.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.items
-- Scope: gem held items catalog rows.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order)
VALUES
  -- Normal Gem
  (329, 'normal-gem', 'Normal Gem', 16, 5, 669, 329),
  -- Fire Gem
  (330, 'fire-gem', 'Fire Gem', 16, 5, 591, 330),
  -- Water Gem
  (331, 'water-gem', 'Water Gem', 16, 5, 592, 331),
  -- Electric Gem
  (332, 'electric-gem', 'Electric Gem', 16, 5, 593, 332),
  -- Grass Gem
  (333, 'grass-gem', 'Grass Gem', 16, 5, 594, 333),
  -- Ice Gem
  (334, 'ice-gem', 'Ice Gem', 16, 5, 595, 334),
  -- Fighting Gem
  (335, 'fighting-gem', 'Fighting Gem', 16, 5, 596, 335),
  -- Poison Gem
  (336, 'poison-gem', 'Poison Gem', 16, 5, 597, 336),
  -- Ground Gem
  (337, 'ground-gem', 'Ground Gem', 16, 5, 598, 337),
  -- Flying Gem
  (338, 'flying-gem', 'Flying Gem', 16, 5, 599, 338),
  -- Psychic Gem
  (339, 'psychic-gem', 'Psychic Gem', 16, 5, 600, 339),
  -- Bug Gem
  (340, 'bug-gem', 'Bug Gem', 16, 5, 601, 340),
  -- Rock Gem
  (341, 'rock-gem', 'Rock Gem', 16, 5, 602, 341),
  -- Ghost Gem
  (342, 'ghost-gem', 'Ghost Gem', 16, 5, 603, 342),
  -- Dragon Gem
  (343, 'dragon-gem', 'Dragon Gem', 16, 5, 668, 343),
  -- Dark Gem
  (344, 'dark-gem', 'Dark Gem', 16, 5, 604, 344),
  -- Steel Gem
  (345, 'steel-gem', 'Steel Gem', 16, 5, 605, 345),
  -- Fairy Gem
  (346, 'fairy-gem', 'Fairy Gem', 16, 6, 731, 346);
