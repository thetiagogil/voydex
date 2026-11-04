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
-- Scope: the ways a Pokémon is met at a place, from tall grass to a gift.
-- ============================================================================
INSERT INTO reference.encounter_ways (id, slug, name, sort_order)
VALUES
  -- Tall grass
  (1, 'tall-grass', 'Tall grass', 1),
  -- Ground
  (2, 'ground', 'Ground', 2),
  -- Cave
  (3, 'cave', 'Cave', 3),
  -- Indoors
  (4, 'indoors', 'Indoors', 4),
  -- Overworld
  (5, 'overworld', 'Overworld', 5),
  -- Surfing
  (6, 'surfing', 'Surfing', 6),
  -- Fishing
  (7, 'fishing', 'Fishing', 7),
  -- Diving
  (8, 'diving', 'Diving', 8),
  -- In the sky
  (9, 'sky', 'In the sky', 9),
  -- Shaking spots
  (10, 'shaking', 'Shaking spots', 10),
  -- Headbutt trees
  (11, 'headbutt', 'Headbutt trees', 11),
  -- Rock Smash
  (12, 'rock-smash', 'Rock Smash', 12),
  -- Honey trees
  (13, 'honey-tree', 'Honey trees', 13),
  -- Poké Radar
  (14, 'poke-radar', 'Poké Radar', 14),
  -- Swarms and outbreaks
  (15, 'swarm', 'Swarms and outbreaks', 15),
  -- Hordes
  (16, 'horde', 'Hordes', 16),
  -- Hidden Grottoes
  (17, 'hidden-grotto', 'Hidden Grottoes', 17),
  -- Dual-slot
  (18, 'dual-slot', 'Dual-slot', 18),
  -- Radio sounds
  (19, 'radio', 'Radio sounds', 19),
  -- Trophy Garden
  (20, 'trophy-garden', 'Trophy Garden', 20),
  -- Berry trees
  (21, 'berry-tree', 'Berry trees', 21),
  -- Curry
  (22, 'curry', 'Curry', 22),
  -- Raid dens
  (23, 'raid', 'Raid dens', 23),
  -- Space-time distortions
  (24, 'distortion', 'Space-time distortions', 24),
  -- Special encounter
  (25, 'special', 'Special encounter', 25),
  -- First partner
  (26, 'starter', 'First partner', 26),
  -- Gift
  (27, 'gift', 'Gift', 27),
  -- In-game trade
  (28, 'trade', 'In-game trade', 28),
  -- Fossil
  (29, 'fossil', 'Fossil', 29),
  -- Egg
  (30, 'egg', 'Egg', 30);
