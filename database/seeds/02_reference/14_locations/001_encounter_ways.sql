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
-- Fishing names the rod it takes: Old, Good and Super Rod where a game has
-- them (Black / White and Black 2 / White 2 have only the Super Rod), and
-- one Fishing Rod for Sun / Moon to Sword / Shield, which have a single rod.
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
  -- Old Rod
  (31, 'old-rod', 'Old Rod', 7),
  -- Good Rod
  (32, 'good-rod', 'Good Rod', 8),
  -- Super Rod
  (33, 'super-rod', 'Super Rod', 9),
  -- Fishing Rod
  (7, 'fishing-rod', 'Fishing Rod', 10),
  -- Diving
  (8, 'diving', 'Diving', 11),
  -- In the sky
  (9, 'sky', 'In the sky', 12),
  -- Shaking spots
  (10, 'shaking', 'Shaking spots', 13),
  -- Headbutt trees
  (11, 'headbutt', 'Headbutt trees', 14),
  -- Rock Smash
  (12, 'rock-smash', 'Rock Smash', 15),
  -- Honey trees
  (13, 'honey-tree', 'Honey trees', 16),
  -- Poké Radar
  (14, 'poke-radar', 'Poké Radar', 17),
  -- Swarms and outbreaks
  (15, 'swarm', 'Swarms and outbreaks', 18),
  -- Hordes
  (16, 'horde', 'Hordes', 19),
  -- Hidden Grottoes
  (17, 'hidden-grotto', 'Hidden Grottoes', 20),
  -- Dual-slot
  (18, 'dual-slot', 'Dual-slot', 21),
  -- Radio sounds
  (19, 'radio', 'Radio sounds', 22),
  -- Trophy Garden
  (20, 'trophy-garden', 'Trophy Garden', 23),
  -- Berry trees
  (21, 'berry-tree', 'Berry trees', 24),
  -- Curry
  (22, 'curry', 'Curry', 25),
  -- Raid dens
  (23, 'raid', 'Raid dens', 26),
  -- Space-time distortions
  (24, 'distortion', 'Space-time distortions', 27),
  -- Special encounter
  (25, 'special', 'Special encounter', 28),
  -- First partner
  (26, 'starter', 'First partner', 29),
  -- Gift
  (27, 'gift', 'Gift', 30),
  -- In-game trade
  (28, 'trade', 'In-game trade', 31),
  -- Fossil
  (29, 'fossil', 'Fossil', 32),
  -- Egg
  (30, 'egg', 'Egg', 33);
