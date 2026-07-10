-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia ability list.
-- Cross-check: PokemonDB ability list for ID/name sanity.
-- Scope limit: official mainline playthrough-game ability identities.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 3 Pokémon ability identity rows. Ability mechanics/effect
-- text are intentionally seeded separately as generation-aware attributes.
-- ============================================================================

INSERT INTO reference.abilities (id, slug, name, external_id, introduced_generation_id, sort_order)
VALUES
  -- Stench
  (1, 'stench', 'Stench', 1, 3, 1),
  -- Drizzle
  (2, 'drizzle', 'Drizzle', 2, 3, 2),
  -- Speed Boost
  (3, 'speed-boost', 'Speed Boost', 3, 3, 3),
  -- Battle Armor
  (4, 'battle-armor', 'Battle Armor', 4, 3, 4),
  -- Sturdy
  (5, 'sturdy', 'Sturdy', 5, 3, 5),
  -- Damp
  (6, 'damp', 'Damp', 6, 3, 6),
  -- Limber
  (7, 'limber', 'Limber', 7, 3, 7),
  -- Sand Veil
  (8, 'sand-veil', 'Sand Veil', 8, 3, 8),
  -- Static
  (9, 'static', 'Static', 9, 3, 9),
  -- Volt Absorb
  (10, 'volt-absorb', 'Volt Absorb', 10, 3, 10),
  -- Water Absorb
  (11, 'water-absorb', 'Water Absorb', 11, 3, 11),
  -- Oblivious
  (12, 'oblivious', 'Oblivious', 12, 3, 12),
  -- Cloud Nine
  (13, 'cloud-nine', 'Cloud Nine', 13, 3, 13),
  -- Compound Eyes
  (14, 'compound-eyes', 'Compound Eyes', 14, 3, 14),
  -- Insomnia
  (15, 'insomnia', 'Insomnia', 15, 3, 15),
  -- Color Change
  (16, 'color-change', 'Color Change', 16, 3, 16),
  -- Immunity
  (17, 'immunity', 'Immunity', 17, 3, 17),
  -- Flash Fire
  (18, 'flash-fire', 'Flash Fire', 18, 3, 18),
  -- Shield Dust
  (19, 'shield-dust', 'Shield Dust', 19, 3, 19),
  -- Own Tempo
  (20, 'own-tempo', 'Own Tempo', 20, 3, 20),
  -- Suction Cups
  (21, 'suction-cups', 'Suction Cups', 21, 3, 21),
  -- Intimidate
  (22, 'intimidate', 'Intimidate', 22, 3, 22),
  -- Shadow Tag
  (23, 'shadow-tag', 'Shadow Tag', 23, 3, 23),
  -- Rough Skin
  (24, 'rough-skin', 'Rough Skin', 24, 3, 24),
  -- Wonder Guard
  (25, 'wonder-guard', 'Wonder Guard', 25, 3, 25),
  -- Levitate
  (26, 'levitate', 'Levitate', 26, 3, 26),
  -- Effect Spore
  (27, 'effect-spore', 'Effect Spore', 27, 3, 27),
  -- Synchronize
  (28, 'synchronize', 'Synchronize', 28, 3, 28),
  -- Clear Body
  (29, 'clear-body', 'Clear Body', 29, 3, 29),
  -- Natural Cure
  (30, 'natural-cure', 'Natural Cure', 30, 3, 30),
  -- Lightning Rod
  (31, 'lightning-rod', 'Lightning Rod', 31, 3, 31),
  -- Serene Grace
  (32, 'serene-grace', 'Serene Grace', 32, 3, 32),
  -- Swift Swim
  (33, 'swift-swim', 'Swift Swim', 33, 3, 33),
  -- Chlorophyll
  (34, 'chlorophyll', 'Chlorophyll', 34, 3, 34),
  -- Illuminate
  (35, 'illuminate', 'Illuminate', 35, 3, 35),
  -- Trace
  (36, 'trace', 'Trace', 36, 3, 36),
  -- Huge Power
  (37, 'huge-power', 'Huge Power', 37, 3, 37),
  -- Poison Point
  (38, 'poison-point', 'Poison Point', 38, 3, 38),
  -- Inner Focus
  (39, 'inner-focus', 'Inner Focus', 39, 3, 39),
  -- Magma Armor
  (40, 'magma-armor', 'Magma Armor', 40, 3, 40),
  -- Water Veil
  (41, 'water-veil', 'Water Veil', 41, 3, 41),
  -- Magnet Pull
  (42, 'magnet-pull', 'Magnet Pull', 42, 3, 42),
  -- Soundproof
  (43, 'soundproof', 'Soundproof', 43, 3, 43),
  -- Rain Dish
  (44, 'rain-dish', 'Rain Dish', 44, 3, 44),
  -- Sand Stream
  (45, 'sand-stream', 'Sand Stream', 45, 3, 45),
  -- Pressure
  (46, 'pressure', 'Pressure', 46, 3, 46),
  -- Thick Fat
  (47, 'thick-fat', 'Thick Fat', 47, 3, 47),
  -- Early Bird
  (48, 'early-bird', 'Early Bird', 48, 3, 48),
  -- Flame Body
  (49, 'flame-body', 'Flame Body', 49, 3, 49),
  -- Run Away
  (50, 'run-away', 'Run Away', 50, 3, 50),
  -- Keen Eye
  (51, 'keen-eye', 'Keen Eye', 51, 3, 51),
  -- Hyper Cutter
  (52, 'hyper-cutter', 'Hyper Cutter', 52, 3, 52),
  -- Pickup
  (53, 'pickup', 'Pickup', 53, 3, 53),
  -- Truant
  (54, 'truant', 'Truant', 54, 3, 54),
  -- Hustle
  (55, 'hustle', 'Hustle', 55, 3, 55),
  -- Cute Charm
  (56, 'cute-charm', 'Cute Charm', 56, 3, 56),
  -- Plus
  (57, 'plus', 'Plus', 57, 3, 57),
  -- Minus
  (58, 'minus', 'Minus', 58, 3, 58),
  -- Forecast
  (59, 'forecast', 'Forecast', 59, 3, 59),
  -- Sticky Hold
  (60, 'sticky-hold', 'Sticky Hold', 60, 3, 60),
  -- Shed Skin
  (61, 'shed-skin', 'Shed Skin', 61, 3, 61),
  -- Guts
  (62, 'guts', 'Guts', 62, 3, 62),
  -- Marvel Scale
  (63, 'marvel-scale', 'Marvel Scale', 63, 3, 63),
  -- Liquid Ooze
  (64, 'liquid-ooze', 'Liquid Ooze', 64, 3, 64),
  -- Overgrow
  (65, 'overgrow', 'Overgrow', 65, 3, 65),
  -- Blaze
  (66, 'blaze', 'Blaze', 66, 3, 66),
  -- Torrent
  (67, 'torrent', 'Torrent', 67, 3, 67),
  -- Swarm
  (68, 'swarm', 'Swarm', 68, 3, 68),
  -- Rock Head
  (69, 'rock-head', 'Rock Head', 69, 3, 69),
  -- Drought
  (70, 'drought', 'Drought', 70, 3, 70),
  -- Arena Trap
  (71, 'arena-trap', 'Arena Trap', 71, 3, 71),
  -- Vital Spirit
  (72, 'vital-spirit', 'Vital Spirit', 72, 3, 72),
  -- White Smoke
  (73, 'white-smoke', 'White Smoke', 73, 3, 73),
  -- Pure Power
  (74, 'pure-power', 'Pure Power', 74, 3, 74),
  -- Shell Armor
  (75, 'shell-armor', 'Shell Armor', 75, 3, 75),
  -- Air Lock
  (76, 'air-lock', 'Air Lock', 76, 3, 76);
