-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's location pages (each place's catch tables, read
-- 2026-11-04) and, for the order places open in, its walkthroughs.
-- Cross-check and gap fill (gifts, fixed encounters, in-game trades, honey
-- trees): PokeAPI's encounter tables, Generation I to Sword / Shield.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.encounter_ways
-- Scope: the ways a Pokémon is met at a place, from walking to a gift.
-- ============================================================================
INSERT INTO reference.encounter_ways (id, slug, name, sort_order)
VALUES
  -- Walking
  (1, 'walking', 'Walking', 1),
  -- Surfing
  (2, 'surfing', 'Surfing', 2),
  -- Fishing
  (3, 'fishing', 'Fishing', 3),
  -- Diving
  (4, 'diving', 'Diving', 4),
  -- In the sky
  (5, 'sky', 'In the sky', 5),
  -- Shaking spots
  (6, 'shaking', 'Shaking spots', 6),
  -- Headbutt trees
  (7, 'headbutt', 'Headbutt trees', 7),
  -- Rock Smash
  (8, 'rock-smash', 'Rock Smash', 8),
  -- Honey trees
  (9, 'honey-tree', 'Honey trees', 9),
  -- Poké Radar
  (10, 'poke-radar', 'Poké Radar', 10),
  -- Swarms and outbreaks
  (11, 'swarm', 'Swarms and outbreaks', 11),
  -- Hordes
  (12, 'horde', 'Hordes', 12),
  -- Hidden Grottoes
  (13, 'hidden-grotto', 'Hidden Grottoes', 13),
  -- Dual-slot
  (14, 'dual-slot', 'Dual-slot', 14),
  -- Radio sounds
  (15, 'radio', 'Radio sounds', 15),
  -- Trophy Garden
  (16, 'trophy-garden', 'Trophy Garden', 16),
  -- Berry trees
  (17, 'berry-tree', 'Berry trees', 17),
  -- Curry
  (18, 'curry', 'Curry', 18),
  -- Raid dens
  (19, 'raid', 'Raid dens', 19),
  -- Space-time distortions
  (20, 'distortion', 'Space-time distortions', 20),
  -- Special encounter
  (21, 'special', 'Special encounter', 21),
  -- First partner
  (22, 'starter', 'First partner', 22),
  -- Gift
  (23, 'gift', 'Gift', 23),
  -- In-game trade
  (24, 'trade', 'In-game trade', 24),
  -- Fossil
  (25, 'fossil', 'Fossil', 25),
  -- Egg
  (26, 'egg', 'Egg', 26);
