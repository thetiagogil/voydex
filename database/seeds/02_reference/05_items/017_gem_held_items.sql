-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii ItemDex held item index and individual item pages.
-- Cross-check: Bulbapedia held item, type-enhancing item, incense, gem, and item pages.
-- Machine-readable sanity: PokeAPI item IDs where available.
-- Scope note: reduced held-item catalog for Pokémon team planning, biography, and future filters.
-- Effect summaries: own-words summaries of each held item's behaviour in recent games, checked against Bulbapedia and Serebii item pages.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.items
-- Scope: gem held items catalog rows.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order, effect_summary)
VALUES
  -- Normal Gem
  (329, 'normal-gem', 'Normal Gem', 16, 5, 669, 329, 'Gives the holder''s first Normal-type move 30% more power, then is used up. In Gen 5 the boost was 50%.'),
  -- Fire Gem
  (330, 'fire-gem', 'Fire Gem', 16, 5, 591, 330, 'Gives the holder''s first Fire-type move 30% more power, then is used up. In Gen 5 the boost was 50%.'),
  -- Water Gem
  (331, 'water-gem', 'Water Gem', 16, 5, 592, 331, 'Gives the holder''s first Water-type move 30% more power, then is used up. In Gen 5 the boost was 50%.'),
  -- Electric Gem
  (332, 'electric-gem', 'Electric Gem', 16, 5, 593, 332, 'Gives the holder''s first Electric-type move 30% more power, then is used up. In Gen 5 the boost was 50%.'),
  -- Grass Gem
  (333, 'grass-gem', 'Grass Gem', 16, 5, 594, 333, 'Gives the holder''s first Grass-type move 30% more power, then is used up. In Gen 5 the boost was 50%.'),
  -- Ice Gem
  (334, 'ice-gem', 'Ice Gem', 16, 5, 595, 334, 'Gives the holder''s first Ice-type move 30% more power, then is used up. In Gen 5 the boost was 50%.'),
  -- Fighting Gem
  (335, 'fighting-gem', 'Fighting Gem', 16, 5, 596, 335, 'Gives the holder''s first Fighting-type move 30% more power, then is used up. In Gen 5 the boost was 50%.'),
  -- Poison Gem
  (336, 'poison-gem', 'Poison Gem', 16, 5, 597, 336, 'Gives the holder''s first Poison-type move 30% more power, then is used up. In Gen 5 the boost was 50%.'),
  -- Ground Gem
  (337, 'ground-gem', 'Ground Gem', 16, 5, 598, 337, 'Gives the holder''s first Ground-type move 30% more power, then is used up. In Gen 5 the boost was 50%.'),
  -- Flying Gem
  (338, 'flying-gem', 'Flying Gem', 16, 5, 599, 338, 'Gives the holder''s first Flying-type move 30% more power, then is used up. In Gen 5 the boost was 50%.'),
  -- Psychic Gem
  (339, 'psychic-gem', 'Psychic Gem', 16, 5, 600, 339, 'Gives the holder''s first Psychic-type move 30% more power, then is used up. In Gen 5 the boost was 50%.'),
  -- Bug Gem
  (340, 'bug-gem', 'Bug Gem', 16, 5, 601, 340, 'Gives the holder''s first Bug-type move 30% more power, then is used up. In Gen 5 the boost was 50%.'),
  -- Rock Gem
  (341, 'rock-gem', 'Rock Gem', 16, 5, 602, 341, 'Gives the holder''s first Rock-type move 30% more power, then is used up. In Gen 5 the boost was 50%.'),
  -- Ghost Gem
  (342, 'ghost-gem', 'Ghost Gem', 16, 5, 603, 342, 'Gives the holder''s first Ghost-type move 30% more power, then is used up. In Gen 5 the boost was 50%.'),
  -- Dragon Gem
  (343, 'dragon-gem', 'Dragon Gem', 16, 5, 668, 343, 'Gives the holder''s first Dragon-type move 30% more power, then is used up. In Gen 5 the boost was 50%.'),
  -- Dark Gem
  (344, 'dark-gem', 'Dark Gem', 16, 5, 604, 344, 'Gives the holder''s first Dark-type move 30% more power, then is used up. In Gen 5 the boost was 50%.'),
  -- Steel Gem
  (345, 'steel-gem', 'Steel Gem', 16, 5, 605, 345, 'Gives the holder''s first Steel-type move 30% more power, then is used up. In Gen 5 the boost was 50%.'),
  -- Fairy Gem
  (346, 'fairy-gem', 'Fairy Gem', 16, 6, 731, 346, 'Gives the holder''s first Fairy-type move 30% more power, then is used up.');
