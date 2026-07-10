-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Curated Generation VIII learnset baseline, cross-checked structurally against Bulbapedia, Serebii, and PokemonDB game learnset pages.
-- Machine normalization: Bulbapedia Generation VIII TM/TR catalog data.
-- Migration source: legacy Voydex Gen VIII learnset seeds, normalized to clean machine ids and current form identifiers.
-- Product scope: battle-only Zacian/Zamazenta Crowned legacy rows are excluded until battle-only forms are supported.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Sword / Shield learnsets for default forms, species 252-300.
-- ============================================================================

INSERT INTO reference.pokemon_learnsets (
  species_id,
  form_id,
  move_id,
  version_group_id,
  game_id,
  learn_method_id,
  level_learned_at,
  source_item_id,
  move_machine_id,
  condition_summary,
  sort_order
) VALUES
  -- Treecko - Pound - Level 1
  (252, 25200, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Treecko - Leer - Level 1
  (252, 25200, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Treecko - Leafage - Level 3
  (252, 25200, 670, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Treecko - Quick Attack - Level 6
  (252, 25200, 98, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Treecko - Mega Drain - Level 9
  (252, 25200, 72, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Treecko - Detect - Level 12
  (252, 25200, 197, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Treecko - Quick Guard - Level 15
  (252, 25200, 501, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Treecko - Assurance - Level 18
  (252, 25200, 372, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Treecko - Giga Drain - Level 21
  (252, 25200, 202, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Treecko - Slam - Level 24
  (252, 25200, 21, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Treecko - Double Team - Level 27
  (252, 25200, 104, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Treecko - Energy Ball - Level 30
  (252, 25200, 412, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Treecko - Screech - Level 33
  (252, 25200, 103, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Treecko - Endeavor - Level 36
  (252, 25200, 283, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Treecko - Leaf Storm - Level 39
  (252, 25200, 437, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Treecko - Mega Punch - TM00
  (252, 25200, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Treecko - Mega Kick - TM01
  (252, 25200, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Treecko - Thunder Punch - TM05
  (252, 25200, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 18),
  -- Treecko - Magical Leaf - TM10
  (252, 25200, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 19),
  -- Treecko - Solar Beam - TM11
  (252, 25200, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Treecko - Dig - TM15
  (252, 25200, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Treecko - Screech - TM16
  (252, 25200, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 22),
  -- Treecko - Safeguard - TM19
  (252, 25200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 23),
  -- Treecko - Rest - TM21
  (252, 25200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Treecko - Rock Slide - TM22
  (252, 25200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 25),
  -- Treecko - Snore - TM24
  (252, 25200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Treecko - Protect - TM25
  (252, 25200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Treecko - Giga Drain - TM28
  (252, 25200, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 28),
  -- Treecko - Attract - TM31
  (252, 25200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Treecko - Sunny Day - TM34
  (252, 25200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Treecko - Facade - TM39
  (252, 25200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Treecko - Swift - TM40
  (252, 25200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 32),
  -- Treecko - Brick Break - TM43
  (252, 25200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 33),
  -- Treecko - Rock Tomb - TM48
  (252, 25200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 34),
  -- Treecko - Bullet Seed - TM50
  (252, 25200, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 35),
  -- Treecko - Assurance - TM58
  (252, 25200, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 36),
  -- Treecko - Fling - TM59
  (252, 25200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 37),
  -- Treecko - Drain Punch - TM63
  (252, 25200, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 38),
  -- Treecko - Round - TM76
  (252, 25200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Treecko - Acrobatics - TM78
  (252, 25200, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 40),
  -- Treecko - Grassy Terrain - TM88
  (252, 25200, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 41),
  -- Treecko - Swords Dance - TR00
  (252, 25200, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 42),
  -- Treecko - Body Slam - TR01
  (252, 25200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Treecko - Low Kick - TR07
  (252, 25200, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 44),
  -- Treecko - Agility - TR12
  (252, 25200, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 45),
  -- Treecko - Substitute - TR20
  (252, 25200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Treecko - Endure - TR26
  (252, 25200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Treecko - Sleep Talk - TR27
  (252, 25200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Treecko - Iron Tail - TR31
  (252, 25200, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 49),
  -- Treecko - Crunch - TR32
  (252, 25200, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 50),
  -- Treecko - Seed Bomb - TR59
  (252, 25200, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 51),
  -- Treecko - Energy Ball - TR65
  (252, 25200, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 52),
  -- Treecko - Leaf Storm - TR71
  (252, 25200, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 53),
  -- Treecko - Grass Knot - TR77
  (252, 25200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 54),
  -- Treecko - Work Up - TR85
  (252, 25200, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 55),
  -- Treecko - Double Kick - Egg
  (252, 25200, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Treecko - Absorb - Egg
  (252, 25200, 71, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Treecko - Leech Seed - Egg
  (252, 25200, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Treecko - Slash - Egg
  (252, 25200, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Treecko - Dragon Breath - Egg
  (252, 25200, 225, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Treecko - Synthesis - Egg
  (252, 25200, 235, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Treecko - Worry Seed - Egg
  (252, 25200, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Treecko - Night Slash - Egg
  (252, 25200, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Treecko - Grass Pledge - Tutor
  (252, 25200, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 64),
  -- Grovyle - Pound - Level 1
  (253, 25300, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grovyle - Leer - Level 1
  (253, 25300, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grovyle - Quick Attack - Level 1
  (253, 25300, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Grovyle - False Swipe - Level 1
  (253, 25300, 206, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Grovyle - Fury Cutter - Level 1
  (253, 25300, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Grovyle - X-Scissor - Level 1
  (253, 25300, 404, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Grovyle - Energy Ball - Level 1
  (253, 25300, 412, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Grovyle - Leafage - Level 1
  (253, 25300, 670, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Grovyle - Mega Drain - Level 9
  (253, 25300, 72, 18, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Grovyle - Detect - Level 12
  (253, 25300, 197, 18, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Grovyle - Quick Guard - Level 15
  (253, 25300, 501, 18, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Grovyle - Assurance - Level 20
  (253, 25300, 372, 18, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Grovyle - Giga Drain - Level 25
  (253, 25300, 202, 18, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Grovyle - Slam - Level 30
  (253, 25300, 21, 18, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Grovyle - Double Team - Level 35
  (253, 25300, 104, 18, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Grovyle - Leaf Blade - Level 40
  (253, 25300, 348, 18, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Grovyle - Screech - Level 45
  (253, 25300, 103, 18, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Grovyle - Endeavor - Level 50
  (253, 25300, 283, 18, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Grovyle - Leaf Storm - Level 55
  (253, 25300, 437, 18, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Grovyle - Mega Punch - TM00
  (253, 25300, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 20),
  -- Grovyle - Mega Kick - TM01
  (253, 25300, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 21),
  -- Grovyle - Thunder Punch - TM05
  (253, 25300, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 22),
  -- Grovyle - Magical Leaf - TM10
  (253, 25300, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 23),
  -- Grovyle - Solar Beam - TM11
  (253, 25300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 24),
  -- Grovyle - Solar Blade - TM12
  (253, 25300, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 25),
  -- Grovyle - Dig - TM15
  (253, 25300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 26),
  -- Grovyle - Screech - TM16
  (253, 25300, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 27),
  -- Grovyle - Safeguard - TM19
  (253, 25300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 28),
  -- Grovyle - Rest - TM21
  (253, 25300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 29),
  -- Grovyle - Rock Slide - TM22
  (253, 25300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 30),
  -- Grovyle - Snore - TM24
  (253, 25300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 31),
  -- Grovyle - Protect - TM25
  (253, 25300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 32),
  -- Grovyle - Giga Drain - TM28
  (253, 25300, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 33),
  -- Grovyle - Attract - TM31
  (253, 25300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 34),
  -- Grovyle - Sunny Day - TM34
  (253, 25300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Grovyle - Facade - TM39
  (253, 25300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Grovyle - Swift - TM40
  (253, 25300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 37),
  -- Grovyle - Brick Break - TM43
  (253, 25300, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 38),
  -- Grovyle - Rock Tomb - TM48
  (253, 25300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 39),
  -- Grovyle - Bullet Seed - TM50
  (253, 25300, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 40),
  -- Grovyle - Assurance - TM58
  (253, 25300, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 41),
  -- Grovyle - Fling - TM59
  (253, 25300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 42),
  -- Grovyle - Drain Punch - TM63
  (253, 25300, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 43),
  -- Grovyle - Low Sweep - TM75
  (253, 25300, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 44),
  -- Grovyle - Round - TM76
  (253, 25300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Grovyle - Acrobatics - TM78
  (253, 25300, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 46),
  -- Grovyle - Grassy Terrain - TM88
  (253, 25300, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 47),
  -- Grovyle - False Swipe - TM94
  (253, 25300, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 48),
  -- Grovyle - Swords Dance - TR00
  (253, 25300, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 49),
  -- Grovyle - Body Slam - TR01
  (253, 25300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 50),
  -- Grovyle - Low Kick - TR07
  (253, 25300, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 51),
  -- Grovyle - Agility - TR12
  (253, 25300, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 52),
  -- Grovyle - Substitute - TR20
  (253, 25300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 53),
  -- Grovyle - Endure - TR26
  (253, 25300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Grovyle - Sleep Talk - TR27
  (253, 25300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Grovyle - Iron Tail - TR31
  (253, 25300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 56),
  -- Grovyle - Crunch - TR32
  (253, 25300, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 57),
  -- Grovyle - Leaf Blade - TR50
  (253, 25300, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 58),
  -- Grovyle - Seed Bomb - TR59
  (253, 25300, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 59),
  -- Grovyle - X-Scissor - TR60
  (253, 25300, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 60),
  -- Grovyle - Energy Ball - TR65
  (253, 25300, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 61),
  -- Grovyle - Leaf Storm - TR71
  (253, 25300, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 62),
  -- Grovyle - Grass Knot - TR77
  (253, 25300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 63),
  -- Grovyle - Work Up - TR85
  (253, 25300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 64),
  -- Grovyle - Grass Pledge - Tutor
  (253, 25300, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 65),
  -- Sceptile - Pound - Level 1
  (254, 25400, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sceptile - Leer - Level 1
  (254, 25400, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sceptile - Quick Attack - Level 1
  (254, 25400, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sceptile - False Swipe - Level 1
  (254, 25400, 206, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sceptile - Fury Cutter - Level 1
  (254, 25400, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sceptile - X-Scissor - Level 1
  (254, 25400, 404, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Sceptile - Energy Ball - Level 1
  (254, 25400, 412, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Sceptile - Dual Chop - Level 1
  (254, 25400, 530, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Sceptile - Leafage - Level 1
  (254, 25400, 670, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Sceptile - Mega Drain - Level 5
  (254, 25400, 72, 18, NULL, 1, 5, NULL, NULL, NULL, 10),
  -- Sceptile - Detect - Level 12
  (254, 25400, 197, 18, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Sceptile - Quick Guard - Level 15
  (254, 25400, 501, 18, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Sceptile - Assurance - Level 20
  (254, 25400, 372, 18, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Sceptile - Giga Drain - Level 25
  (254, 25400, 202, 18, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Sceptile - Slam - Level 30
  (254, 25400, 21, 18, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Sceptile - Double Team - Level 35
  (254, 25400, 104, 18, NULL, 1, 35, NULL, NULL, NULL, 16),
  -- Sceptile - Leaf Blade - Level 42
  (254, 25400, 348, 18, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Sceptile - Screech - Level 49
  (254, 25400, 103, 18, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Sceptile - Endeavor - Level 56
  (254, 25400, 283, 18, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Sceptile - Leaf Storm - Level 63
  (254, 25400, 437, 18, NULL, 1, 63, NULL, NULL, NULL, 20),
  -- Sceptile - Dual Chop - Evolution
  (254, 25400, 530, 18, NULL, 7, NULL, NULL, NULL, NULL, 21),
  -- Sceptile - Mega Punch - TM00
  (254, 25400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 22),
  -- Sceptile - Mega Kick - TM01
  (254, 25400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 23),
  -- Sceptile - Thunder Punch - TM05
  (254, 25400, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 24),
  -- Sceptile - Hyper Beam - TM08
  (254, 25400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 25),
  -- Sceptile - Giga Impact - TM09
  (254, 25400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 26),
  -- Sceptile - Magical Leaf - TM10
  (254, 25400, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 27),
  -- Sceptile - Solar Beam - TM11
  (254, 25400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 28),
  -- Sceptile - Solar Blade - TM12
  (254, 25400, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 29),
  -- Sceptile - Dig - TM15
  (254, 25400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 30),
  -- Sceptile - Screech - TM16
  (254, 25400, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 31),
  -- Sceptile - Safeguard - TM19
  (254, 25400, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 32),
  -- Sceptile - Rest - TM21
  (254, 25400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 33),
  -- Sceptile - Rock Slide - TM22
  (254, 25400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 34),
  -- Sceptile - Snore - TM24
  (254, 25400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 35),
  -- Sceptile - Protect - TM25
  (254, 25400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 36),
  -- Sceptile - Giga Drain - TM28
  (254, 25400, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 37),
  -- Sceptile - Attract - TM31
  (254, 25400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 38),
  -- Sceptile - Sunny Day - TM34
  (254, 25400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 39),
  -- Sceptile - Facade - TM39
  (254, 25400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 40),
  -- Sceptile - Swift - TM40
  (254, 25400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 41),
  -- Sceptile - Brick Break - TM43
  (254, 25400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 42),
  -- Sceptile - Rock Tomb - TM48
  (254, 25400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 43),
  -- Sceptile - Bullet Seed - TM50
  (254, 25400, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 44),
  -- Sceptile - Assurance - TM58
  (254, 25400, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 45),
  -- Sceptile - Fling - TM59
  (254, 25400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 46),
  -- Sceptile - Drain Punch - TM63
  (254, 25400, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 47),
  -- Sceptile - Cross Poison - TM73
  (254, 25400, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 48),
  -- Sceptile - Low Sweep - TM75
  (254, 25400, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 49),
  -- Sceptile - Round - TM76
  (254, 25400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 50),
  -- Sceptile - Acrobatics - TM78
  (254, 25400, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 51),
  -- Sceptile - Bulldoze - TM81
  (254, 25400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 52),
  -- Sceptile - Grassy Terrain - TM88
  (254, 25400, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 53),
  -- Sceptile - False Swipe - TM94
  (254, 25400, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 54),
  -- Sceptile - Brutal Swing - TM97
  (254, 25400, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 55),
  -- Sceptile - Breaking Swipe - TM99
  (254, 25400, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 56),
  -- Sceptile - Swords Dance - TR00
  (254, 25400, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 57),
  -- Sceptile - Body Slam - TR01
  (254, 25400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 58),
  -- Sceptile - Low Kick - TR07
  (254, 25400, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 59),
  -- Sceptile - Earthquake - TR10
  (254, 25400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 60),
  -- Sceptile - Agility - TR12
  (254, 25400, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 61),
  -- Sceptile - Substitute - TR20
  (254, 25400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 62),
  -- Sceptile - Outrage - TR24
  (254, 25400, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 63),
  -- Sceptile - Endure - TR26
  (254, 25400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 64),
  -- Sceptile - Sleep Talk - TR27
  (254, 25400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 65),
  -- Sceptile - Iron Tail - TR31
  (254, 25400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 66),
  -- Sceptile - Crunch - TR32
  (254, 25400, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 67),
  -- Sceptile - Dragon Claw - TR47
  (254, 25400, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 68),
  -- Sceptile - Leaf Blade - TR50
  (254, 25400, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 69),
  -- Sceptile - Dragon Dance - TR51
  (254, 25400, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 70),
  -- Sceptile - Seed Bomb - TR59
  (254, 25400, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 71),
  -- Sceptile - X-Scissor - TR60
  (254, 25400, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 72),
  -- Sceptile - Dragon Pulse - TR62
  (254, 25400, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 73),
  -- Sceptile - Focus Blast - TR64
  (254, 25400, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 74),
  -- Sceptile - Energy Ball - TR65
  (254, 25400, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 75),
  -- Sceptile - Leaf Storm - TR71
  (254, 25400, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 76),
  -- Sceptile - Grass Knot - TR77
  (254, 25400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 77),
  -- Sceptile - Work Up - TR85
  (254, 25400, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 78),
  -- Sceptile - Throat Chop - TR95
  (254, 25400, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 79),
  -- Sceptile - Frenzy Plant - Tutor
  (254, 25400, 338, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 80),
  -- Sceptile - Grass Pledge - Tutor
  (254, 25400, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 81),
  -- Torchic - Scratch - Level 1
  (255, 25500, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torchic - Growl - Level 1
  (255, 25500, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Torchic - Ember - Level 3
  (255, 25500, 52, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Torchic - Quick Attack - Level 6
  (255, 25500, 98, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Torchic - Flame Charge - Level 9
  (255, 25500, 488, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Torchic - Detect - Level 12
  (255, 25500, 197, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Torchic - Sand Attack - Level 15
  (255, 25500, 28, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Torchic - Aerial Ace - Level 18
  (255, 25500, 332, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Torchic - Slash - Level 21
  (255, 25500, 163, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Torchic - Bounce - Level 24
  (255, 25500, 340, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Torchic - Focus Energy - Level 27
  (255, 25500, 116, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Torchic - Flamethrower - Level 30
  (255, 25500, 53, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Torchic - Feather Dance - Level 33
  (255, 25500, 297, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Torchic - Reversal - Level 36
  (255, 25500, 179, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Torchic - Flare Blitz - Level 39
  (255, 25500, 394, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Torchic - Mega Punch - TM00
  (255, 25500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Torchic - Mega Kick - TM01
  (255, 25500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Torchic - Fire Spin - TM13
  (255, 25500, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 18),
  -- Torchic - Dig - TM15
  (255, 25500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 19),
  -- Torchic - Rest - TM21
  (255, 25500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Torchic - Rock Slide - TM22
  (255, 25500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Torchic - Snore - TM24
  (255, 25500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Torchic - Protect - TM25
  (255, 25500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Torchic - Attract - TM31
  (255, 25500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Torchic - Sunny Day - TM34
  (255, 25500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Torchic - Will-O-Wisp - TM38
  (255, 25500, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 26),
  -- Torchic - Facade - TM39
  (255, 25500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Torchic - Helping Hand - TM41
  (255, 25500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Torchic - Rock Tomb - TM48
  (255, 25500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 29),
  -- Torchic - Bounce - TM52
  (255, 25500, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 30),
  -- Torchic - Assurance - TM58
  (255, 25500, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 31),
  -- Torchic - Shadow Claw - TM65
  (255, 25500, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 32),
  -- Torchic - Round - TM76
  (255, 25500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Torchic - Swords Dance - TR00
  (255, 25500, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 34),
  -- Torchic - Body Slam - TR01
  (255, 25500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 35),
  -- Torchic - Flamethrower - TR02
  (255, 25500, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 36),
  -- Torchic - Low Kick - TR07
  (255, 25500, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 37),
  -- Torchic - Agility - TR12
  (255, 25500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 38),
  -- Torchic - Focus Energy - TR13
  (255, 25500, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 39),
  -- Torchic - Fire Blast - TR15
  (255, 25500, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 40),
  -- Torchic - Substitute - TR20
  (255, 25500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Torchic - Reversal - TR21
  (255, 25500, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 42),
  -- Torchic - Endure - TR26
  (255, 25500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Torchic - Sleep Talk - TR27
  (255, 25500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Torchic - Baton Pass - TR29
  (255, 25500, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 45),
  -- Torchic - Heat Wave - TR36
  (255, 25500, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 46),
  -- Torchic - Overheat - TR43
  (255, 25500, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 47),
  -- Torchic - Flare Blitz - TR55
  (255, 25500, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 48),
  -- Torchic - Work Up - TR85
  (255, 25500, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 49),
  -- Torchic - Peck - Egg
  (255, 25500, 64, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Torchic - Counter - Egg
  (255, 25500, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Torchic - Curse - Egg
  (255, 25500, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Torchic - Crush Claw - Egg
  (255, 25500, 306, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Torchic - Feint - Egg
  (255, 25500, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Torchic - Last Resort - Egg
  (255, 25500, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Torchic - Night Slash - Egg
  (255, 25500, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Torchic - Fire Pledge - Tutor
  (255, 25500, 519, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 57),
  -- Combusken - Scratch - Level 1
  (256, 25600, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Combusken - Double Kick - Level 1
  (256, 25600, 24, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Combusken - Growl - Level 1
  (256, 25600, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Combusken - Ember - Level 1
  (256, 25600, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Combusken - Flamethrower - Level 1
  (256, 25600, 53, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Combusken - Quick Attack - Level 1
  (256, 25600, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Combusken - Feather Dance - Level 1
  (256, 25600, 297, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Combusken - Flame Charge - Level 9
  (256, 25600, 488, 18, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Combusken - Detect - Level 12
  (256, 25600, 197, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Combusken - Sand Attack - Level 15
  (256, 25600, 28, 18, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Combusken - Aerial Ace - Level 20
  (256, 25600, 332, 18, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Combusken - Slash - Level 25
  (256, 25600, 163, 18, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Combusken - Bounce - Level 30
  (256, 25600, 340, 18, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Combusken - Focus Energy - Level 35
  (256, 25600, 116, 18, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Combusken - Blaze Kick - Level 40
  (256, 25600, 299, 18, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Combusken - Bulk Up - Level 45
  (256, 25600, 339, 18, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Combusken - Reversal - Level 50
  (256, 25600, 179, 18, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Combusken - Flare Blitz - Level 55
  (256, 25600, 394, 18, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Combusken - Double Kick - Evolution
  (256, 25600, 24, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Combusken - Mega Punch - TM00
  (256, 25600, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 20),
  -- Combusken - Mega Kick - TM01
  (256, 25600, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 21),
  -- Combusken - Fire Punch - TM03
  (256, 25600, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 22),
  -- Combusken - Thunder Punch - TM05
  (256, 25600, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 23),
  -- Combusken - Fire Spin - TM13
  (256, 25600, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 24),
  -- Combusken - Dig - TM15
  (256, 25600, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 25),
  -- Combusken - Rest - TM21
  (256, 25600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Combusken - Rock Slide - TM22
  (256, 25600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 27),
  -- Combusken - Snore - TM24
  (256, 25600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Combusken - Protect - TM25
  (256, 25600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Combusken - Attract - TM31
  (256, 25600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Combusken - Sunny Day - TM34
  (256, 25600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Combusken - Will-O-Wisp - TM38
  (256, 25600, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 32),
  -- Combusken - Facade - TM39
  (256, 25600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Combusken - Swift - TM40
  (256, 25600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 34),
  -- Combusken - Helping Hand - TM41
  (256, 25600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 35),
  -- Combusken - Revenge - TM42
  (256, 25600, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 36),
  -- Combusken - Brick Break - TM43
  (256, 25600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 37),
  -- Combusken - Rock Tomb - TM48
  (256, 25600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 38),
  -- Combusken - Bounce - TM52
  (256, 25600, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 39),
  -- Combusken - Assurance - TM58
  (256, 25600, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 40),
  -- Combusken - Fling - TM59
  (256, 25600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 41),
  -- Combusken - Shadow Claw - TM65
  (256, 25600, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 42),
  -- Combusken - Low Sweep - TM75
  (256, 25600, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 43),
  -- Combusken - Round - TM76
  (256, 25600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 44),
  -- Combusken - Swords Dance - TR00
  (256, 25600, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 45),
  -- Combusken - Body Slam - TR01
  (256, 25600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 46),
  -- Combusken - Flamethrower - TR02
  (256, 25600, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 47),
  -- Combusken - Low Kick - TR07
  (256, 25600, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 48),
  -- Combusken - Agility - TR12
  (256, 25600, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 49),
  -- Combusken - Focus Energy - TR13
  (256, 25600, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 50),
  -- Combusken - Fire Blast - TR15
  (256, 25600, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 51),
  -- Combusken - Substitute - TR20
  (256, 25600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 52),
  -- Combusken - Reversal - TR21
  (256, 25600, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 53),
  -- Combusken - Endure - TR26
  (256, 25600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Combusken - Sleep Talk - TR27
  (256, 25600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Combusken - Baton Pass - TR29
  (256, 25600, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 56),
  -- Combusken - Heat Wave - TR36
  (256, 25600, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 57),
  -- Combusken - Blaze Kick - TR41
  (256, 25600, 299, 18, NULL, 4, NULL, NULL, 18004041, NULL, 58),
  -- Combusken - Overheat - TR43
  (256, 25600, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 59),
  -- Combusken - Bulk Up - TR48
  (256, 25600, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 60),
  -- Combusken - Flare Blitz - TR55
  (256, 25600, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 61),
  -- Combusken - Poison Jab - TR57
  (256, 25600, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 62),
  -- Combusken - Focus Blast - TR64
  (256, 25600, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 63),
  -- Combusken - Work Up - TR85
  (256, 25600, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 64),
  -- Combusken - Fire Pledge - Tutor
  (256, 25600, 519, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 65),
  -- Blaziken - Fire Punch - Level 1
  (257, 25700, 7, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blaziken - Scratch - Level 1
  (257, 25700, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blaziken - Double Kick - Level 1
  (257, 25700, 24, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Blaziken - Growl - Level 1
  (257, 25700, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Blaziken - Ember - Level 1
  (257, 25700, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Blaziken - Flamethrower - Level 1
  (257, 25700, 53, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Blaziken - Quick Attack - Level 1
  (257, 25700, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Blaziken - Feather Dance - Level 1
  (257, 25700, 297, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Blaziken - Brave Bird - Level 1
  (257, 25700, 413, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Blaziken - Flame Charge - Level 9
  (257, 25700, 488, 18, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Blaziken - Detect - Level 12
  (257, 25700, 197, 18, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Blaziken - Sand Attack - Level 15
  (257, 25700, 28, 18, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Blaziken - Aerial Ace - Level 20
  (257, 25700, 332, 18, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Blaziken - Slash - Level 25
  (257, 25700, 163, 18, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Blaziken - Bounce - Level 30
  (257, 25700, 340, 18, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Blaziken - Focus Energy - Level 35
  (257, 25700, 116, 18, NULL, 1, 35, NULL, NULL, NULL, 16),
  -- Blaziken - Blaze Kick - Level 42
  (257, 25700, 299, 18, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Blaziken - Bulk Up - Level 49
  (257, 25700, 339, 18, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Blaziken - Reversal - Level 56
  (257, 25700, 179, 18, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Blaziken - Flare Blitz - Level 63
  (257, 25700, 394, 18, NULL, 1, 63, NULL, NULL, NULL, 20),
  -- Blaziken - Mega Punch - TM00
  (257, 25700, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 21),
  -- Blaziken - Mega Kick - TM01
  (257, 25700, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 22),
  -- Blaziken - Fire Punch - TM03
  (257, 25700, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 23),
  -- Blaziken - Thunder Punch - TM05
  (257, 25700, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 24),
  -- Blaziken - Hyper Beam - TM08
  (257, 25700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 25),
  -- Blaziken - Giga Impact - TM09
  (257, 25700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 26),
  -- Blaziken - Solar Beam - TM11
  (257, 25700, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 27),
  -- Blaziken - Fire Spin - TM13
  (257, 25700, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 28),
  -- Blaziken - Dig - TM15
  (257, 25700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 29),
  -- Blaziken - Rest - TM21
  (257, 25700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 30),
  -- Blaziken - Rock Slide - TM22
  (257, 25700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 31),
  -- Blaziken - Snore - TM24
  (257, 25700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 32),
  -- Blaziken - Protect - TM25
  (257, 25700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 33),
  -- Blaziken - Attract - TM31
  (257, 25700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 34),
  -- Blaziken - Sunny Day - TM34
  (257, 25700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Blaziken - Will-O-Wisp - TM38
  (257, 25700, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 36),
  -- Blaziken - Facade - TM39
  (257, 25700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 37),
  -- Blaziken - Swift - TM40
  (257, 25700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 38),
  -- Blaziken - Helping Hand - TM41
  (257, 25700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 39),
  -- Blaziken - Revenge - TM42
  (257, 25700, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 40),
  -- Blaziken - Brick Break - TM43
  (257, 25700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 41),
  -- Blaziken - Rock Tomb - TM48
  (257, 25700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 42),
  -- Blaziken - Bounce - TM52
  (257, 25700, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 43),
  -- Blaziken - U-turn - TM56
  (257, 25700, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 44),
  -- Blaziken - Assurance - TM58
  (257, 25700, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 45),
  -- Blaziken - Fling - TM59
  (257, 25700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 46),
  -- Blaziken - Shadow Claw - TM65
  (257, 25700, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 47),
  -- Blaziken - Low Sweep - TM75
  (257, 25700, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 48),
  -- Blaziken - Round - TM76
  (257, 25700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 49),
  -- Blaziken - Acrobatics - TM78
  (257, 25700, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 50),
  -- Blaziken - Bulldoze - TM81
  (257, 25700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 51),
  -- Blaziken - Swords Dance - TR00
  (257, 25700, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 52),
  -- Blaziken - Body Slam - TR01
  (257, 25700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 53),
  -- Blaziken - Flamethrower - TR02
  (257, 25700, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 54),
  -- Blaziken - Low Kick - TR07
  (257, 25700, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 55),
  -- Blaziken - Earthquake - TR10
  (257, 25700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 56),
  -- Blaziken - Agility - TR12
  (257, 25700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 57),
  -- Blaziken - Focus Energy - TR13
  (257, 25700, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 58),
  -- Blaziken - Fire Blast - TR15
  (257, 25700, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 59),
  -- Blaziken - Substitute - TR20
  (257, 25700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 60),
  -- Blaziken - Reversal - TR21
  (257, 25700, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 61),
  -- Blaziken - Endure - TR26
  (257, 25700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 62),
  -- Blaziken - Sleep Talk - TR27
  (257, 25700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 63),
  -- Blaziken - Baton Pass - TR29
  (257, 25700, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 64),
  -- Blaziken - Heat Wave - TR36
  (257, 25700, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 65),
  -- Blaziken - Superpower - TR39
  (257, 25700, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 66),
  -- Blaziken - Blaze Kick - TR41
  (257, 25700, 299, 18, NULL, 4, NULL, NULL, 18004041, NULL, 67),
  -- Blaziken - Overheat - TR43
  (257, 25700, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 68),
  -- Blaziken - Bulk Up - TR48
  (257, 25700, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 69),
  -- Blaziken - Close Combat - TR53
  (257, 25700, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 70),
  -- Blaziken - Flare Blitz - TR55
  (257, 25700, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 71),
  -- Blaziken - Aura Sphere - TR56
  (257, 25700, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 72),
  -- Blaziken - Poison Jab - TR57
  (257, 25700, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 73),
  -- Blaziken - Focus Blast - TR64
  (257, 25700, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 74),
  -- Blaziken - Brave Bird - TR66
  (257, 25700, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 75),
  -- Blaziken - Stone Edge - TR75
  (257, 25700, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 76),
  -- Blaziken - Work Up - TR85
  (257, 25700, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 77),
  -- Blaziken - Heat Crash - TR88
  (257, 25700, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 78),
  -- Blaziken - Blast Burn - Tutor
  (257, 25700, 307, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 79),
  -- Blaziken - Fire Pledge - Tutor
  (257, 25700, 519, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 80),
  -- Mudkip - Tackle - Level 1
  (258, 25800, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mudkip - Growl - Level 1
  (258, 25800, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mudkip - Water Gun - Level 3
  (258, 25800, 55, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Mudkip - Rock Smash - Level 6
  (258, 25800, 249, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Mudkip - Rock Throw - Level 9
  (258, 25800, 88, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Mudkip - Protect - Level 12
  (258, 25800, 182, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Mudkip - Supersonic - Level 15
  (258, 25800, 48, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Mudkip - Water Pulse - Level 18
  (258, 25800, 352, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Mudkip - Rock Slide - Level 21
  (258, 25800, 157, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Mudkip - Take Down - Level 24
  (258, 25800, 36, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Mudkip - Amnesia - Level 27
  (258, 25800, 133, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Mudkip - Surf - Level 30
  (258, 25800, 57, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Mudkip - Screech - Level 33
  (258, 25800, 103, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Mudkip - Endeavor - Level 36
  (258, 25800, 283, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Mudkip - Hydro Pump - Level 39
  (258, 25800, 56, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Mudkip - Dig - TM15
  (258, 25800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 16),
  -- Mudkip - Screech - TM16
  (258, 25800, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 17),
  -- Mudkip - Rest - TM21
  (258, 25800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Mudkip - Rock Slide - TM22
  (258, 25800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 19),
  -- Mudkip - Snore - TM24
  (258, 25800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Mudkip - Protect - TM25
  (258, 25800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Mudkip - Icy Wind - TM27
  (258, 25800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 22),
  -- Mudkip - Attract - TM31
  (258, 25800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Mudkip - Rain Dance - TM33
  (258, 25800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Mudkip - Hail - TM35
  (258, 25800, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 25),
  -- Mudkip - Whirlpool - TM36
  (258, 25800, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 26),
  -- Mudkip - Facade - TM39
  (258, 25800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Mudkip - Dive - TM45
  (258, 25800, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 28),
  -- Mudkip - Rock Tomb - TM48
  (258, 25800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 29),
  -- Mudkip - Avalanche - TM64
  (258, 25800, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 30),
  -- Mudkip - Round - TM76
  (258, 25800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Mudkip - Body Slam - TR01
  (258, 25800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 32),
  -- Mudkip - Hydro Pump - TR03
  (258, 25800, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 33),
  -- Mudkip - Surf - TR04
  (258, 25800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 34),
  -- Mudkip - Ice Beam - TR05
  (258, 25800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 35),
  -- Mudkip - Blizzard - TR06
  (258, 25800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 36),
  -- Mudkip - Low Kick - TR07
  (258, 25800, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 37),
  -- Mudkip - Waterfall - TR16
  (258, 25800, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 38),
  -- Mudkip - Amnesia - TR17
  (258, 25800, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 39),
  -- Mudkip - Substitute - TR20
  (258, 25800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Mudkip - Endure - TR26
  (258, 25800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Mudkip - Sleep Talk - TR27
  (258, 25800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Mudkip - Iron Tail - TR31
  (258, 25800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 43),
  -- Mudkip - Uproar - TR35
  (258, 25800, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 44),
  -- Mudkip - Superpower - TR39
  (258, 25800, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 45),
  -- Mudkip - Earth Power - TR67
  (258, 25800, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 46),
  -- Mudkip - Sludge Wave - TR78
  (258, 25800, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 47),
  -- Mudkip - Scald - TR84
  (258, 25800, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 48),
  -- Mudkip - Work Up - TR85
  (258, 25800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 49),
  -- Mudkip - Stomp - Egg
  (258, 25800, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Mudkip - Double-Edge - Egg
  (258, 25800, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Mudkip - Bite - Egg
  (258, 25800, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mudkip - Counter - Egg
  (258, 25800, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mudkip - Sludge - Egg
  (258, 25800, 124, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Mudkip - Curse - Egg
  (258, 25800, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Mudkip - Mud-Slap - Egg
  (258, 25800, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Mudkip - Mirror Coat - Egg
  (258, 25800, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mudkip - Ancient Power - Egg
  (258, 25800, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mudkip - Yawn - Egg
  (258, 25800, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mudkip - Wide Guard - Egg
  (258, 25800, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mudkip - Water Pledge - Tutor
  (258, 25800, 518, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 61),
  -- Marshtomp - Tackle - Level 1
  (259, 25900, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marshtomp - Growl - Level 1
  (259, 25900, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marshtomp - Water Gun - Level 1
  (259, 25900, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marshtomp - Surf - Level 1
  (259, 25900, 57, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marshtomp - Earthquake - Level 1
  (259, 25900, 89, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Marshtomp - Rock Smash - Level 1
  (259, 25900, 249, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Marshtomp - Mud Shot - Level 1
  (259, 25900, 341, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Marshtomp - Rock Throw - Level 9
  (259, 25900, 88, 18, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Marshtomp - Protect - Level 12
  (259, 25900, 182, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Marshtomp - Supersonic - Level 15
  (259, 25900, 48, 18, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Marshtomp - Water Pulse - Level 20
  (259, 25900, 352, 18, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Marshtomp - Rock Slide - Level 25
  (259, 25900, 157, 18, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Marshtomp - Take Down - Level 30
  (259, 25900, 36, 18, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Marshtomp - Amnesia - Level 35
  (259, 25900, 133, 18, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Marshtomp - Muddy Water - Level 40
  (259, 25900, 330, 18, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Marshtomp - Screech - Level 45
  (259, 25900, 103, 18, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Marshtomp - Endeavor - Level 50
  (259, 25900, 283, 18, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Marshtomp - Hydro Pump - Level 55
  (259, 25900, 56, 18, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Marshtomp - Mud Shot - Evolution
  (259, 25900, 341, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Marshtomp - Mega Punch - TM00
  (259, 25900, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 20),
  -- Marshtomp - Mega Kick - TM01
  (259, 25900, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 21),
  -- Marshtomp - Ice Punch - TM04
  (259, 25900, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 22),
  -- Marshtomp - Dig - TM15
  (259, 25900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 23),
  -- Marshtomp - Screech - TM16
  (259, 25900, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 24),
  -- Marshtomp - Rest - TM21
  (259, 25900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Marshtomp - Rock Slide - TM22
  (259, 25900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Marshtomp - Snore - TM24
  (259, 25900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Marshtomp - Protect - TM25
  (259, 25900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Marshtomp - Icy Wind - TM27
  (259, 25900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 29),
  -- Marshtomp - Attract - TM31
  (259, 25900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Marshtomp - Rain Dance - TM33
  (259, 25900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Marshtomp - Hail - TM35
  (259, 25900, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 32),
  -- Marshtomp - Whirlpool - TM36
  (259, 25900, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 33),
  -- Marshtomp - Facade - TM39
  (259, 25900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Marshtomp - Brick Break - TM43
  (259, 25900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 35),
  -- Marshtomp - Dive - TM45
  (259, 25900, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 36),
  -- Marshtomp - Rock Tomb - TM48
  (259, 25900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 37),
  -- Marshtomp - Sand Tomb - TM49
  (259, 25900, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 38),
  -- Marshtomp - Mud Shot - TM53
  (259, 25900, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 39),
  -- Marshtomp - Fling - TM59
  (259, 25900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Marshtomp - Avalanche - TM64
  (259, 25900, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 41),
  -- Marshtomp - Round - TM76
  (259, 25900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 42),
  -- Marshtomp - Bulldoze - TM81
  (259, 25900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 43),
  -- Marshtomp - Body Slam - TR01
  (259, 25900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 44),
  -- Marshtomp - Hydro Pump - TR03
  (259, 25900, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 45),
  -- Marshtomp - Surf - TR04
  (259, 25900, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 46),
  -- Marshtomp - Ice Beam - TR05
  (259, 25900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 47),
  -- Marshtomp - Blizzard - TR06
  (259, 25900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 48),
  -- Marshtomp - Low Kick - TR07
  (259, 25900, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 49),
  -- Marshtomp - Earthquake - TR10
  (259, 25900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 50),
  -- Marshtomp - Waterfall - TR16
  (259, 25900, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 51),
  -- Marshtomp - Amnesia - TR17
  (259, 25900, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 52),
  -- Marshtomp - Substitute - TR20
  (259, 25900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 53),
  -- Marshtomp - Endure - TR26
  (259, 25900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Marshtomp - Sleep Talk - TR27
  (259, 25900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Marshtomp - Iron Tail - TR31
  (259, 25900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 56),
  -- Marshtomp - Uproar - TR35
  (259, 25900, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 57),
  -- Marshtomp - Superpower - TR39
  (259, 25900, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 58),
  -- Marshtomp - Muddy Water - TR45
  (259, 25900, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 59),
  -- Marshtomp - Earth Power - TR67
  (259, 25900, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 60),
  -- Marshtomp - Stealth Rock - TR76
  (259, 25900, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 61),
  -- Marshtomp - Sludge Wave - TR78
  (259, 25900, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 62),
  -- Marshtomp - Scald - TR84
  (259, 25900, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 63),
  -- Marshtomp - Work Up - TR85
  (259, 25900, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 64),
  -- Marshtomp - Water Pledge - Tutor
  (259, 25900, 518, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 65),
  -- Swampert - Tackle - Level 1
  (260, 26000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swampert - Growl - Level 1
  (260, 26000, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swampert - Water Gun - Level 1
  (260, 26000, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swampert - Surf - Level 1
  (260, 26000, 57, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swampert - Earthquake - Level 1
  (260, 26000, 89, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Swampert - Rock Smash - Level 1
  (260, 26000, 249, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Swampert - Mud Shot - Level 1
  (260, 26000, 341, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Swampert - Hammer Arm - Level 1
  (260, 26000, 359, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Swampert - Rock Throw - Level 9
  (260, 26000, 88, 18, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Swampert - Protect - Level 12
  (260, 26000, 182, 18, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Swampert - Supersonic - Level 15
  (260, 26000, 48, 18, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Swampert - Water Pulse - Level 20
  (260, 26000, 352, 18, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Swampert - Rock Slide - Level 25
  (260, 26000, 157, 18, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Swampert - Take Down - Level 30
  (260, 26000, 36, 18, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Swampert - Amnesia - Level 35
  (260, 26000, 133, 18, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Swampert - Muddy Water - Level 42
  (260, 26000, 330, 18, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Swampert - Screech - Level 49
  (260, 26000, 103, 18, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Swampert - Endeavor - Level 56
  (260, 26000, 283, 18, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Swampert - Hydro Pump - Level 63
  (260, 26000, 56, 18, NULL, 1, 63, NULL, NULL, NULL, 19),
  -- Swampert - Mega Punch - TM00
  (260, 26000, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 20),
  -- Swampert - Mega Kick - TM01
  (260, 26000, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 21),
  -- Swampert - Ice Punch - TM04
  (260, 26000, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 22),
  -- Swampert - Hyper Beam - TM08
  (260, 26000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Swampert - Giga Impact - TM09
  (260, 26000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Swampert - Dig - TM15
  (260, 26000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 25),
  -- Swampert - Screech - TM16
  (260, 26000, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 26),
  -- Swampert - Rest - TM21
  (260, 26000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Swampert - Rock Slide - TM22
  (260, 26000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Swampert - Snore - TM24
  (260, 26000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Swampert - Protect - TM25
  (260, 26000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Swampert - Icy Wind - TM27
  (260, 26000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 31),
  -- Swampert - Attract - TM31
  (260, 26000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Swampert - Rain Dance - TM33
  (260, 26000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 33),
  -- Swampert - Hail - TM35
  (260, 26000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 34),
  -- Swampert - Whirlpool - TM36
  (260, 26000, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 35),
  -- Swampert - Facade - TM39
  (260, 26000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Swampert - Brick Break - TM43
  (260, 26000, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 37),
  -- Swampert - Dive - TM45
  (260, 26000, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 38),
  -- Swampert - Rock Tomb - TM48
  (260, 26000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 39),
  -- Swampert - Sand Tomb - TM49
  (260, 26000, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 40),
  -- Swampert - Mud Shot - TM53
  (260, 26000, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 41),
  -- Swampert - Fling - TM59
  (260, 26000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 42),
  -- Swampert - Avalanche - TM64
  (260, 26000, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 43),
  -- Swampert - Round - TM76
  (260, 26000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 44),
  -- Swampert - Bulldoze - TM81
  (260, 26000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 45),
  -- Swampert - Stomping Tantrum - TM98
  (260, 26000, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 46),
  -- Swampert - Body Slam - TR01
  (260, 26000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 47),
  -- Swampert - Hydro Pump - TR03
  (260, 26000, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 48),
  -- Swampert - Surf - TR04
  (260, 26000, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 49),
  -- Swampert - Ice Beam - TR05
  (260, 26000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 50),
  -- Swampert - Blizzard - TR06
  (260, 26000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 51),
  -- Swampert - Low Kick - TR07
  (260, 26000, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 52),
  -- Swampert - Earthquake - TR10
  (260, 26000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 53),
  -- Swampert - Waterfall - TR16
  (260, 26000, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 54),
  -- Swampert - Amnesia - TR17
  (260, 26000, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 55),
  -- Swampert - Substitute - TR20
  (260, 26000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Swampert - Outrage - TR24
  (260, 26000, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 57),
  -- Swampert - Endure - TR26
  (260, 26000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 58),
  -- Swampert - Sleep Talk - TR27
  (260, 26000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 59),
  -- Swampert - Iron Tail - TR31
  (260, 26000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 60),
  -- Swampert - Uproar - TR35
  (260, 26000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 61),
  -- Swampert - Superpower - TR39
  (260, 26000, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 62),
  -- Swampert - Muddy Water - TR45
  (260, 26000, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 63),
  -- Swampert - Bulk Up - TR48
  (260, 26000, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 64),
  -- Swampert - Focus Blast - TR64
  (260, 26000, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 65),
  -- Swampert - Earth Power - TR67
  (260, 26000, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 66),
  -- Swampert - Stone Edge - TR75
  (260, 26000, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 67),
  -- Swampert - Stealth Rock - TR76
  (260, 26000, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 68),
  -- Swampert - Sludge Wave - TR78
  (260, 26000, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 69),
  -- Swampert - Scald - TR84
  (260, 26000, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 70),
  -- Swampert - Work Up - TR85
  (260, 26000, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Swampert - Darkest Lariat - TR93
  (260, 26000, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 72),
  -- Swampert - High Horsepower - TR94
  (260, 26000, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 73),
  -- Swampert - Liquidation - TR98
  (260, 26000, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 74),
  -- Swampert - Body Press - TR99
  (260, 26000, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 75),
  -- Swampert - Hydro Cannon - Tutor
  (260, 26000, 308, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 76),
  -- Swampert - Water Pledge - Tutor
  (260, 26000, 518, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 77),
  -- Zigzagoon - Tackle - Level 1
  (263, 26300, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zigzagoon - Growl - Level 1
  (263, 26300, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zigzagoon - Sand Attack - Level 3
  (263, 26300, 28, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Zigzagoon - Tail Whip - Level 6
  (263, 26300, 39, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Zigzagoon - Covet - Level 9
  (263, 26300, 343, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Zigzagoon - Headbutt - Level 12
  (263, 26300, 29, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Zigzagoon - Baby-Doll Eyes - Level 15
  (263, 26300, 608, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Zigzagoon - Pin Missile - Level 18
  (263, 26300, 42, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Zigzagoon - Rest - Level 21
  (263, 26300, 156, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Zigzagoon - Take Down - Level 24
  (263, 26300, 36, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Zigzagoon - Fling - Level 27
  (263, 26300, 374, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Zigzagoon - Flail - Level 30
  (263, 26300, 175, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Zigzagoon - Belly Drum - Level 33
  (263, 26300, 187, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Zigzagoon - Double-Edge - Level 36
  (263, 26300, 38, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Zigzagoon - Pin Missile - TM07
  (263, 26300, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 15),
  -- Zigzagoon - Thunder Wave - TM14
  (263, 26300, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Zigzagoon - Dig - TM15
  (263, 26300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 17),
  -- Zigzagoon - Rest - TM21
  (263, 26300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Zigzagoon - Thief - TM23
  (263, 26300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 19),
  -- Zigzagoon - Snore - TM24
  (263, 26300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Zigzagoon - Protect - TM25
  (263, 26300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Zigzagoon - Icy Wind - TM27
  (263, 26300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 22),
  -- Zigzagoon - Charm - TM29
  (263, 26300, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 23),
  -- Zigzagoon - Attract - TM31
  (263, 26300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Zigzagoon - Rain Dance - TM33
  (263, 26300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Zigzagoon - Sunny Day - TM34
  (263, 26300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Zigzagoon - Whirlpool - TM36
  (263, 26300, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 27),
  -- Zigzagoon - Facade - TM39
  (263, 26300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Zigzagoon - Swift - TM40
  (263, 26300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 29),
  -- Zigzagoon - Helping Hand - TM41
  (263, 26300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Zigzagoon - Mud Shot - TM53
  (263, 26300, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 31),
  -- Zigzagoon - Fling - TM59
  (263, 26300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 32),
  -- Zigzagoon - Round - TM76
  (263, 26300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Zigzagoon - Retaliate - TM79
  (263, 26300, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 34),
  -- Zigzagoon - Tail Slap - TM84
  (263, 26300, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 35),
  -- Zigzagoon - Body Slam - TR01
  (263, 26300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 36),
  -- Zigzagoon - Surf - TR04
  (263, 26300, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 37),
  -- Zigzagoon - Ice Beam - TR05
  (263, 26300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 38),
  -- Zigzagoon - Blizzard - TR06
  (263, 26300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 39),
  -- Zigzagoon - Thunderbolt - TR08
  (263, 26300, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 40),
  -- Zigzagoon - Thunder - TR09
  (263, 26300, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 41),
  -- Zigzagoon - Substitute - TR20
  (263, 26300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Zigzagoon - Endure - TR26
  (263, 26300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Zigzagoon - Sleep Talk - TR27
  (263, 26300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Zigzagoon - Iron Tail - TR31
  (263, 26300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 45),
  -- Zigzagoon - Shadow Ball - TR33
  (263, 26300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 46),
  -- Zigzagoon - Trick - TR38
  (263, 26300, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 47),
  -- Zigzagoon - Hyper Voice - TR42
  (263, 26300, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 48),
  -- Zigzagoon - Seed Bomb - TR59
  (263, 26300, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 49),
  -- Zigzagoon - Gunk Shot - TR73
  (263, 26300, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 50),
  -- Zigzagoon - Grass Knot - TR77
  (263, 26300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 51),
  -- Zigzagoon - Work Up - TR85
  (263, 26300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 52),
  -- Zigzagoon - Extreme Speed - Egg
  (263, 26300, 245, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Zigzagoon - Tickle - Egg
  (263, 26300, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Zigzagoon - Simple Beam - Egg
  (263, 26300, 493, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Linoone - Sand Attack - Level 1
  (264, 26400, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Linoone - Tackle - Level 1
  (264, 26400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Linoone - Tail Whip - Level 1
  (264, 26400, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Linoone - Pin Missile - Level 1
  (264, 26400, 42, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Linoone - Growl - Level 1
  (264, 26400, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Linoone - Slash - Level 1
  (264, 26400, 163, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Linoone - Switcheroo - Level 1
  (264, 26400, 415, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Linoone - Baby-Doll Eyes - Level 1
  (264, 26400, 608, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Linoone - Covet - Level 9
  (264, 26400, 343, 18, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Linoone - Headbutt - Level 12
  (264, 26400, 29, 18, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Linoone - Hone Claws - Level 15
  (264, 26400, 468, 18, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Linoone - Fury Swipes - Level 18
  (264, 26400, 154, 18, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Linoone - Rest - Level 23
  (264, 26400, 156, 18, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Linoone - Take Down - Level 28
  (264, 26400, 36, 18, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Linoone - Fling - Level 33
  (264, 26400, 374, 18, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Linoone - Flail - Level 38
  (264, 26400, 175, 18, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Linoone - Belly Drum - Level 43
  (264, 26400, 187, 18, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Linoone - Double-Edge - Level 48
  (264, 26400, 38, 18, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Linoone - Slash - Evolution
  (264, 26400, 163, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Linoone - Pin Missile - TM07
  (264, 26400, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 20),
  -- Linoone - Hyper Beam - TM08
  (264, 26400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Linoone - Giga Impact - TM09
  (264, 26400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Linoone - Thunder Wave - TM14
  (264, 26400, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 23),
  -- Linoone - Dig - TM15
  (264, 26400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 24),
  -- Linoone - Rest - TM21
  (264, 26400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Linoone - Thief - TM23
  (264, 26400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 26),
  -- Linoone - Snore - TM24
  (264, 26400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Linoone - Protect - TM25
  (264, 26400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Linoone - Icy Wind - TM27
  (264, 26400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 29),
  -- Linoone - Charm - TM29
  (264, 26400, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 30),
  -- Linoone - Attract - TM31
  (264, 26400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 31),
  -- Linoone - Rain Dance - TM33
  (264, 26400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 32),
  -- Linoone - Sunny Day - TM34
  (264, 26400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 33),
  -- Linoone - Whirlpool - TM36
  (264, 26400, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 34),
  -- Linoone - Facade - TM39
  (264, 26400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 35),
  -- Linoone - Swift - TM40
  (264, 26400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 36),
  -- Linoone - Helping Hand - TM41
  (264, 26400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 37),
  -- Linoone - Mud Shot - TM53
  (264, 26400, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 38),
  -- Linoone - Fling - TM59
  (264, 26400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 39),
  -- Linoone - Shadow Claw - TM65
  (264, 26400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 40),
  -- Linoone - Round - TM76
  (264, 26400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Linoone - Retaliate - TM79
  (264, 26400, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 42),
  -- Linoone - Tail Slap - TM84
  (264, 26400, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 43),
  -- Linoone - Stomping Tantrum - TM98
  (264, 26400, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 44),
  -- Linoone - Body Slam - TR01
  (264, 26400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 45),
  -- Linoone - Surf - TR04
  (264, 26400, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 46),
  -- Linoone - Ice Beam - TR05
  (264, 26400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 47),
  -- Linoone - Blizzard - TR06
  (264, 26400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 48),
  -- Linoone - Thunderbolt - TR08
  (264, 26400, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 49),
  -- Linoone - Thunder - TR09
  (264, 26400, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 50),
  -- Linoone - Substitute - TR20
  (264, 26400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Linoone - Endure - TR26
  (264, 26400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 52),
  -- Linoone - Sleep Talk - TR27
  (264, 26400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 53),
  -- Linoone - Iron Tail - TR31
  (264, 26400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 54),
  -- Linoone - Shadow Ball - TR33
  (264, 26400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 55),
  -- Linoone - Trick - TR38
  (264, 26400, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 56),
  -- Linoone - Hyper Voice - TR42
  (264, 26400, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 57),
  -- Linoone - Seed Bomb - TR59
  (264, 26400, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 58),
  -- Linoone - Gunk Shot - TR73
  (264, 26400, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 59),
  -- Linoone - Grass Knot - TR77
  (264, 26400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 60),
  -- Linoone - Work Up - TR85
  (264, 26400, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 61),
  -- Linoone - Play Rough - TR90
  (264, 26400, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 62),
  -- Linoone - Throat Chop - TR95
  (264, 26400, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 63),
  -- Lotad - Growl - Level 1
  (270, 27000, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lotad - Astonish - Level 1
  (270, 27000, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lotad - Absorb - Level 3
  (270, 27000, 71, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Lotad - Water Gun - Level 6
  (270, 27000, 55, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Lotad - Mist - Level 9
  (270, 27000, 54, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Lotad - Mega Drain - Level 12
  (270, 27000, 72, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Lotad - Flail - Level 16
  (270, 27000, 175, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Lotad - Bubble Beam - Level 20
  (270, 27000, 61, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Lotad - Nature Power - Level 24
  (270, 27000, 267, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Lotad - Giga Drain - Level 28
  (270, 27000, 202, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Lotad - Rain Dance - Level 33
  (270, 27000, 240, 18, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Lotad - Zen Headbutt - Level 38
  (270, 27000, 428, 18, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Lotad - Energy Ball - Level 43
  (270, 27000, 412, 18, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Lotad - Solar Beam - TM11
  (270, 27000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 14),
  -- Lotad - Rest - TM21
  (270, 27000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Lotad - Thief - TM23
  (270, 27000, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 16),
  -- Lotad - Snore - TM24
  (270, 27000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Lotad - Protect - TM25
  (270, 27000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Lotad - Icy Wind - TM27
  (270, 27000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 19),
  -- Lotad - Giga Drain - TM28
  (270, 27000, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 20),
  -- Lotad - Attract - TM31
  (270, 27000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Lotad - Rain Dance - TM33
  (270, 27000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Lotad - Sunny Day - TM34
  (270, 27000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 23),
  -- Lotad - Hail - TM35
  (270, 27000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 24),
  -- Lotad - Whirlpool - TM36
  (270, 27000, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 25),
  -- Lotad - Facade - TM39
  (270, 27000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Lotad - Bullet Seed - TM50
  (270, 27000, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 27),
  -- Lotad - Round - TM76
  (270, 27000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Lotad - Swords Dance - TR00
  (270, 27000, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 29),
  -- Lotad - Body Slam - TR01
  (270, 27000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 30),
  -- Lotad - Surf - TR04
  (270, 27000, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 31),
  -- Lotad - Ice Beam - TR05
  (270, 27000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 32),
  -- Lotad - Blizzard - TR06
  (270, 27000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 33),
  -- Lotad - Substitute - TR20
  (270, 27000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 34),
  -- Lotad - Endure - TR26
  (270, 27000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Lotad - Sleep Talk - TR27
  (270, 27000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Lotad - Uproar - TR35
  (270, 27000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 37),
  -- Lotad - Seed Bomb - TR59
  (270, 27000, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 38),
  -- Lotad - Energy Ball - TR65
  (270, 27000, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 39),
  -- Lotad - Zen Headbutt - TR69
  (270, 27000, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 40),
  -- Lotad - Grass Knot - TR77
  (270, 27000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 41),
  -- Lotad - Scald - TR84
  (270, 27000, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 42),
  -- Lotad - Counter - Egg
  (270, 27000, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Lotad - Leech Seed - Egg
  (270, 27000, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Lotad - Razor Leaf - Egg
  (270, 27000, 75, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Lotad - Sweet Scent - Egg
  (270, 27000, 230, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Lotad - Synthesis - Egg
  (270, 27000, 235, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lotad - Teeter Dance - Egg
  (270, 27000, 298, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lotad - Tickle - Egg
  (270, 27000, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lombre - Growl - Level 1
  (271, 27100, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lombre - Water Gun - Level 1
  (271, 27100, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lombre - Absorb - Level 1
  (271, 27100, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lombre - Flail - Level 1
  (271, 27100, 175, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lombre - Fake Out - Level 1
  (271, 27100, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lombre - Knock Off - Level 1
  (271, 27100, 282, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lombre - Teeter Dance - Level 1
  (271, 27100, 298, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lombre - Astonish - Level 1
  (271, 27100, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Lombre - Mist - Level 9
  (271, 27100, 54, 18, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Lombre - Mega Drain - Level 12
  (271, 27100, 72, 18, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Lombre - Fury Swipes - Level 18
  (271, 27100, 154, 18, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Lombre - Bubble Beam - Level 24
  (271, 27100, 61, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Lombre - Nature Power - Level 30
  (271, 27100, 267, 18, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Lombre - Giga Drain - Level 36
  (271, 27100, 202, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Lombre - Rain Dance - Level 43
  (271, 27100, 240, 18, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Lombre - Zen Headbutt - Level 50
  (271, 27100, 428, 18, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Lombre - Energy Ball - Level 57
  (271, 27100, 412, 18, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Lombre - Hydro Pump - Level 64
  (271, 27100, 56, 18, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Lombre - Mega Punch - TM00
  (271, 27100, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 19),
  -- Lombre - Mega Kick - TM01
  (271, 27100, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 20),
  -- Lombre - Fire Punch - TM03
  (271, 27100, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 21),
  -- Lombre - Ice Punch - TM04
  (271, 27100, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 22),
  -- Lombre - Thunder Punch - TM05
  (271, 27100, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 23),
  -- Lombre - Solar Beam - TM11
  (271, 27100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 24),
  -- Lombre - Rest - TM21
  (271, 27100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Lombre - Thief - TM23
  (271, 27100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 26),
  -- Lombre - Snore - TM24
  (271, 27100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Lombre - Protect - TM25
  (271, 27100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Lombre - Icy Wind - TM27
  (271, 27100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 29),
  -- Lombre - Giga Drain - TM28
  (271, 27100, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 30),
  -- Lombre - Attract - TM31
  (271, 27100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 31),
  -- Lombre - Rain Dance - TM33
  (271, 27100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 32),
  -- Lombre - Sunny Day - TM34
  (271, 27100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 33),
  -- Lombre - Hail - TM35
  (271, 27100, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 34),
  -- Lombre - Whirlpool - TM36
  (271, 27100, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 35),
  -- Lombre - Facade - TM39
  (271, 27100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Lombre - Brick Break - TM43
  (271, 27100, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 37),
  -- Lombre - Dive - TM45
  (271, 27100, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 38),
  -- Lombre - Bullet Seed - TM50
  (271, 27100, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 39),
  -- Lombre - Mud Shot - TM53
  (271, 27100, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 40),
  -- Lombre - Fling - TM59
  (271, 27100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 41),
  -- Lombre - Drain Punch - TM63
  (271, 27100, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 42),
  -- Lombre - Round - TM76
  (271, 27100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 43),
  -- Lombre - Swords Dance - TR00
  (271, 27100, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 44),
  -- Lombre - Body Slam - TR01
  (271, 27100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 45),
  -- Lombre - Hydro Pump - TR03
  (271, 27100, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 46),
  -- Lombre - Surf - TR04
  (271, 27100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 47),
  -- Lombre - Ice Beam - TR05
  (271, 27100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 48),
  -- Lombre - Blizzard - TR06
  (271, 27100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 49),
  -- Lombre - Waterfall - TR16
  (271, 27100, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 50),
  -- Lombre - Substitute - TR20
  (271, 27100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Lombre - Endure - TR26
  (271, 27100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 52),
  -- Lombre - Sleep Talk - TR27
  (271, 27100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 53),
  -- Lombre - Encore - TR30
  (271, 27100, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 54),
  -- Lombre - Uproar - TR35
  (271, 27100, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 55),
  -- Lombre - Hyper Voice - TR42
  (271, 27100, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 56),
  -- Lombre - Muddy Water - TR45
  (271, 27100, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 57),
  -- Lombre - Seed Bomb - TR59
  (271, 27100, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 58),
  -- Lombre - Energy Ball - TR65
  (271, 27100, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 59),
  -- Lombre - Zen Headbutt - TR69
  (271, 27100, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 60),
  -- Lombre - Grass Knot - TR77
  (271, 27100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 61),
  -- Lombre - Scald - TR84
  (271, 27100, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 62),
  -- Ludicolo - Growl - Level 1
  (272, 27200, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ludicolo - Mist - Level 1
  (272, 27200, 54, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ludicolo - Water Gun - Level 1
  (272, 27200, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ludicolo - Hydro Pump - Level 1
  (272, 27200, 56, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ludicolo - Bubble Beam - Level 1
  (272, 27200, 61, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ludicolo - Absorb - Level 1
  (272, 27200, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Ludicolo - Mega Drain - Level 1
  (272, 27200, 72, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Ludicolo - Fury Swipes - Level 1
  (272, 27200, 154, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Ludicolo - Flail - Level 1
  (272, 27200, 175, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Ludicolo - Giga Drain - Level 1
  (272, 27200, 202, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Ludicolo - Rain Dance - Level 1
  (272, 27200, 240, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Ludicolo - Fake Out - Level 1
  (272, 27200, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Ludicolo - Nature Power - Level 1
  (272, 27200, 267, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Ludicolo - Knock Off - Level 1
  (272, 27200, 282, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Ludicolo - Teeter Dance - Level 1
  (272, 27200, 298, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Ludicolo - Astonish - Level 1
  (272, 27200, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Ludicolo - Energy Ball - Level 1
  (272, 27200, 412, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Ludicolo - Zen Headbutt - Level 1
  (272, 27200, 428, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Ludicolo - Mega Punch - TM00
  (272, 27200, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 19),
  -- Ludicolo - Mega Kick - TM01
  (272, 27200, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 20),
  -- Ludicolo - Fire Punch - TM03
  (272, 27200, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 21),
  -- Ludicolo - Ice Punch - TM04
  (272, 27200, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 22),
  -- Ludicolo - Thunder Punch - TM05
  (272, 27200, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 23),
  -- Ludicolo - Hyper Beam - TM08
  (272, 27200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 24),
  -- Ludicolo - Giga Impact - TM09
  (272, 27200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 25),
  -- Ludicolo - Solar Beam - TM11
  (272, 27200, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 26),
  -- Ludicolo - Rest - TM21
  (272, 27200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Ludicolo - Thief - TM23
  (272, 27200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 28),
  -- Ludicolo - Snore - TM24
  (272, 27200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Ludicolo - Protect - TM25
  (272, 27200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Ludicolo - Icy Wind - TM27
  (272, 27200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 31),
  -- Ludicolo - Giga Drain - TM28
  (272, 27200, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 32),
  -- Ludicolo - Attract - TM31
  (272, 27200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 33),
  -- Ludicolo - Rain Dance - TM33
  (272, 27200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 34),
  -- Ludicolo - Sunny Day - TM34
  (272, 27200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Ludicolo - Hail - TM35
  (272, 27200, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 36),
  -- Ludicolo - Whirlpool - TM36
  (272, 27200, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 37),
  -- Ludicolo - Facade - TM39
  (272, 27200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Ludicolo - Brick Break - TM43
  (272, 27200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 39),
  -- Ludicolo - Dive - TM45
  (272, 27200, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 40),
  -- Ludicolo - Weather Ball - TM46
  (272, 27200, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 41),
  -- Ludicolo - Bullet Seed - TM50
  (272, 27200, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 42),
  -- Ludicolo - Mud Shot - TM53
  (272, 27200, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 43),
  -- Ludicolo - Fling - TM59
  (272, 27200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 44),
  -- Ludicolo - Drain Punch - TM63
  (272, 27200, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 45),
  -- Ludicolo - Round - TM76
  (272, 27200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 46),
  -- Ludicolo - Swords Dance - TR00
  (272, 27200, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 47),
  -- Ludicolo - Body Slam - TR01
  (272, 27200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 48),
  -- Ludicolo - Hydro Pump - TR03
  (272, 27200, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 49),
  -- Ludicolo - Surf - TR04
  (272, 27200, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 50),
  -- Ludicolo - Ice Beam - TR05
  (272, 27200, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 51),
  -- Ludicolo - Blizzard - TR06
  (272, 27200, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 52),
  -- Ludicolo - Metronome - TR14
  (272, 27200, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 53),
  -- Ludicolo - Waterfall - TR16
  (272, 27200, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 54),
  -- Ludicolo - Amnesia - TR17
  (272, 27200, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 55),
  -- Ludicolo - Substitute - TR20
  (272, 27200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Ludicolo - Endure - TR26
  (272, 27200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 57),
  -- Ludicolo - Sleep Talk - TR27
  (272, 27200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 58),
  -- Ludicolo - Encore - TR30
  (272, 27200, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 59),
  -- Ludicolo - Uproar - TR35
  (272, 27200, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 60),
  -- Ludicolo - Hyper Voice - TR42
  (272, 27200, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 61),
  -- Ludicolo - Muddy Water - TR45
  (272, 27200, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 62),
  -- Ludicolo - Seed Bomb - TR59
  (272, 27200, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 63),
  -- Ludicolo - Focus Blast - TR64
  (272, 27200, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 64),
  -- Ludicolo - Energy Ball - TR65
  (272, 27200, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 65),
  -- Ludicolo - Zen Headbutt - TR69
  (272, 27200, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 66),
  -- Ludicolo - Leaf Storm - TR71
  (272, 27200, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 67),
  -- Ludicolo - Grass Knot - TR77
  (272, 27200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 68),
  -- Ludicolo - Scald - TR84
  (272, 27200, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 69),
  -- Seedot - Tackle - Level 1
  (273, 27300, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seedot - Harden - Level 1
  (273, 27300, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seedot - Absorb - Level 3
  (273, 27300, 71, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Seedot - Astonish - Level 6
  (273, 27300, 310, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Seedot - Growth - Level 9
  (273, 27300, 74, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Seedot - Rollout - Level 12
  (273, 27300, 205, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Seedot - Mega Drain - Level 15
  (273, 27300, 72, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Seedot - Payback - Level 18
  (273, 27300, 371, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Seedot - Nature Power - Level 21
  (273, 27300, 267, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Seedot - Sunny Day - Level 24
  (273, 27300, 241, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Seedot - Synthesis - Level 27
  (273, 27300, 235, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Seedot - Sucker Punch - Level 30
  (273, 27300, 389, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Seedot - Explosion - Level 33
  (273, 27300, 153, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Seedot - Solar Beam - TM11
  (273, 27300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 14),
  -- Seedot - Dig - TM15
  (273, 27300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 15),
  -- Seedot - Self-Destruct - TM20
  (273, 27300, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 16),
  -- Seedot - Rest - TM21
  (273, 27300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Seedot - Snore - TM24
  (273, 27300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Seedot - Protect - TM25
  (273, 27300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Seedot - Giga Drain - TM28
  (273, 27300, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 20),
  -- Seedot - Attract - TM31
  (273, 27300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Seedot - Sunny Day - TM34
  (273, 27300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Seedot - Beat Up - TM37
  (273, 27300, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 23),
  -- Seedot - Facade - TM39
  (273, 27300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Seedot - Bullet Seed - TM50
  (273, 27300, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 25),
  -- Seedot - Payback - TM57
  (273, 27300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 26),
  -- Seedot - Power Swap - TM60
  (273, 27300, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 27),
  -- Seedot - Round - TM76
  (273, 27300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Seedot - Retaliate - TM79
  (273, 27300, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 29),
  -- Seedot - Grassy Terrain - TM88
  (273, 27300, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 30),
  -- Seedot - False Swipe - TM94
  (273, 27300, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 31),
  -- Seedot - Swords Dance - TR00
  (273, 27300, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 32),
  -- Seedot - Body Slam - TR01
  (273, 27300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 33),
  -- Seedot - Amnesia - TR17
  (273, 27300, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 34),
  -- Seedot - Substitute - TR20
  (273, 27300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Seedot - Endure - TR26
  (273, 27300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Seedot - Sleep Talk - TR27
  (273, 27300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Seedot - Shadow Ball - TR33
  (273, 27300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 38),
  -- Seedot - Seed Bomb - TR59
  (273, 27300, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 39),
  -- Seedot - Energy Ball - TR65
  (273, 27300, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 40),
  -- Seedot - Nasty Plot - TR68
  (273, 27300, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 41),
  -- Seedot - Grass Knot - TR77
  (273, 27300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 42),
  -- Seedot - Foul Play - TR81
  (273, 27300, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 43),
  -- Seedot - Take Down - Egg
  (273, 27300, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Seedot - Leech Seed - Egg
  (273, 27300, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Seedot - Quick Attack - Egg
  (273, 27300, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Seedot - Worry Seed - Egg
  (273, 27300, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Seedot - Night Slash - Egg
  (273, 27300, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Seedot - Defog - Egg
  (273, 27300, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Nuzleaf - Tackle - Level 1
  (274, 27400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nuzleaf - Absorb - Level 1
  (274, 27400, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nuzleaf - Razor Leaf - Level 1
  (274, 27400, 75, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nuzleaf - Harden - Level 1
  (274, 27400, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nuzleaf - Explosion - Level 1
  (274, 27400, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Nuzleaf - Swagger - Level 1
  (274, 27400, 207, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Nuzleaf - Synthesis - Level 1
  (274, 27400, 235, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Nuzleaf - Fake Out - Level 1
  (274, 27400, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Nuzleaf - Torment - Level 1
  (274, 27400, 259, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Nuzleaf - Astonish - Level 1
  (274, 27400, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Nuzleaf - Air Cutter - Level 1
  (274, 27400, 314, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Nuzleaf - Growth - Level 9
  (274, 27400, 74, 18, NULL, 1, 9, NULL, NULL, NULL, 12),
  -- Nuzleaf - Rollout - Level 12
  (274, 27400, 205, 18, NULL, 1, 12, NULL, NULL, NULL, 13),
  -- Nuzleaf - Mega Drain - Level 18
  (274, 27400, 72, 18, NULL, 1, 18, NULL, NULL, NULL, 14),
  -- Nuzleaf - Payback - Level 24
  (274, 27400, 371, 18, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Nuzleaf - Nature Power - Level 30
  (274, 27400, 267, 18, NULL, 1, 30, NULL, NULL, NULL, 16),
  -- Nuzleaf - Sunny Day - Level 36
  (274, 27400, 241, 18, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Nuzleaf - Extrasensory - Level 43
  (274, 27400, 326, 18, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Nuzleaf - Sucker Punch - Level 50
  (274, 27400, 389, 18, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Nuzleaf - Leaf Blade - Level 57
  (274, 27400, 348, 18, NULL, 1, 57, NULL, NULL, NULL, 20),
  -- Nuzleaf - Razor Leaf - Evolution
  (274, 27400, 75, 18, NULL, 7, NULL, NULL, NULL, NULL, 21),
  -- Nuzleaf - Mega Kick - TM01
  (274, 27400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 22),
  -- Nuzleaf - Hyper Beam - TM08
  (274, 27400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Nuzleaf - Solar Beam - TM11
  (274, 27400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 24),
  -- Nuzleaf - Solar Blade - TM12
  (274, 27400, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 25),
  -- Nuzleaf - Dig - TM15
  (274, 27400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 26),
  -- Nuzleaf - Self-Destruct - TM20
  (274, 27400, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 27),
  -- Nuzleaf - Rest - TM21
  (274, 27400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 28),
  -- Nuzleaf - Rock Slide - TM22
  (274, 27400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 29),
  -- Nuzleaf - Thief - TM23
  (274, 27400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 30),
  -- Nuzleaf - Snore - TM24
  (274, 27400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 31),
  -- Nuzleaf - Protect - TM25
  (274, 27400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 32),
  -- Nuzleaf - Giga Drain - TM28
  (274, 27400, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 33),
  -- Nuzleaf - Attract - TM31
  (274, 27400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 34),
  -- Nuzleaf - Sunny Day - TM34
  (274, 27400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Nuzleaf - Beat Up - TM37
  (274, 27400, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 36),
  -- Nuzleaf - Facade - TM39
  (274, 27400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 37),
  -- Nuzleaf - Swift - TM40
  (274, 27400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 38),
  -- Nuzleaf - Brick Break - TM43
  (274, 27400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 39),
  -- Nuzleaf - Rock Tomb - TM48
  (274, 27400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 40),
  -- Nuzleaf - Bullet Seed - TM50
  (274, 27400, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 41),
  -- Nuzleaf - Payback - TM57
  (274, 27400, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Nuzleaf - Assurance - TM58
  (274, 27400, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 43),
  -- Nuzleaf - Fling - TM59
  (274, 27400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 44),
  -- Nuzleaf - Power Swap - TM60
  (274, 27400, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 45),
  -- Nuzleaf - Low Sweep - TM75
  (274, 27400, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 46),
  -- Nuzleaf - Round - TM76
  (274, 27400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Nuzleaf - Retaliate - TM79
  (274, 27400, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 48),
  -- Nuzleaf - Snarl - TM85
  (274, 27400, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 49),
  -- Nuzleaf - Grassy Terrain - TM88
  (274, 27400, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 50),
  -- Nuzleaf - False Swipe - TM94
  (274, 27400, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 51),
  -- Nuzleaf - Swords Dance - TR00
  (274, 27400, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 52),
  -- Nuzleaf - Body Slam - TR01
  (274, 27400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 53),
  -- Nuzleaf - Low Kick - TR07
  (274, 27400, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 54),
  -- Nuzleaf - Amnesia - TR17
  (274, 27400, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 55),
  -- Nuzleaf - Substitute - TR20
  (274, 27400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Nuzleaf - Endure - TR26
  (274, 27400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 57),
  -- Nuzleaf - Sleep Talk - TR27
  (274, 27400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 58),
  -- Nuzleaf - Shadow Ball - TR33
  (274, 27400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 59),
  -- Nuzleaf - Leaf Blade - TR50
  (274, 27400, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 60),
  -- Nuzleaf - Dark Pulse - TR58
  (274, 27400, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 61),
  -- Nuzleaf - Seed Bomb - TR59
  (274, 27400, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 62),
  -- Nuzleaf - Energy Ball - TR65
  (274, 27400, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 63),
  -- Nuzleaf - Nasty Plot - TR68
  (274, 27400, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 64),
  -- Nuzleaf - Grass Knot - TR77
  (274, 27400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 65),
  -- Nuzleaf - Foul Play - TR81
  (274, 27400, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 66),
  -- Shiftry - Whirlwind - Level 1
  (275, 27500, 18, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shiftry - Tackle - Level 1
  (275, 27500, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shiftry - Absorb - Level 1
  (275, 27500, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shiftry - Mega Drain - Level 1
  (275, 27500, 72, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Shiftry - Growth - Level 1
  (275, 27500, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Shiftry - Razor Leaf - Level 1
  (275, 27500, 75, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Shiftry - Harden - Level 1
  (275, 27500, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Shiftry - Explosion - Level 1
  (275, 27500, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Shiftry - Rollout - Level 1
  (275, 27500, 205, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Shiftry - Swagger - Level 1
  (275, 27500, 207, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Shiftry - Synthesis - Level 1
  (275, 27500, 235, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Shiftry - Sunny Day - Level 1
  (275, 27500, 241, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Shiftry - Fake Out - Level 1
  (275, 27500, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Shiftry - Torment - Level 1
  (275, 27500, 259, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Shiftry - Nature Power - Level 1
  (275, 27500, 267, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Shiftry - Astonish - Level 1
  (275, 27500, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Shiftry - Air Cutter - Level 1
  (275, 27500, 314, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Shiftry - Extrasensory - Level 1
  (275, 27500, 326, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Shiftry - Leaf Blade - Level 1
  (275, 27500, 348, 18, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Shiftry - Payback - Level 1
  (275, 27500, 371, 18, NULL, 1, 1, NULL, NULL, NULL, 20),
  -- Shiftry - Sucker Punch - Level 1
  (275, 27500, 389, 18, NULL, 1, 1, NULL, NULL, NULL, 21),
  -- Shiftry - Leaf Tornado - Level 1
  (275, 27500, 536, 18, NULL, 1, 1, NULL, NULL, NULL, 22),
  -- Shiftry - Hurricane - Level 1
  (275, 27500, 542, 18, NULL, 1, 1, NULL, NULL, NULL, 23),
  -- Shiftry - Leaf Tornado - Evolution
  (275, 27500, 536, 18, NULL, 7, NULL, NULL, NULL, NULL, 24),
  -- Shiftry - Mega Kick - TM01
  (275, 27500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 25),
  -- Shiftry - Hyper Beam - TM08
  (275, 27500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 26),
  -- Shiftry - Giga Impact - TM09
  (275, 27500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 27),
  -- Shiftry - Solar Beam - TM11
  (275, 27500, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 28),
  -- Shiftry - Solar Blade - TM12
  (275, 27500, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 29),
  -- Shiftry - Dig - TM15
  (275, 27500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 30),
  -- Shiftry - Screech - TM16
  (275, 27500, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 31),
  -- Shiftry - Self-Destruct - TM20
  (275, 27500, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 32),
  -- Shiftry - Rest - TM21
  (275, 27500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 33),
  -- Shiftry - Rock Slide - TM22
  (275, 27500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 34),
  -- Shiftry - Thief - TM23
  (275, 27500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 35),
  -- Shiftry - Snore - TM24
  (275, 27500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 36),
  -- Shiftry - Protect - TM25
  (275, 27500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 37),
  -- Shiftry - Icy Wind - TM27
  (275, 27500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 38),
  -- Shiftry - Giga Drain - TM28
  (275, 27500, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 39),
  -- Shiftry - Attract - TM31
  (275, 27500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 40),
  -- Shiftry - Sunny Day - TM34
  (275, 27500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 41),
  -- Shiftry - Beat Up - TM37
  (275, 27500, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 42),
  -- Shiftry - Facade - TM39
  (275, 27500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 43),
  -- Shiftry - Swift - TM40
  (275, 27500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 44),
  -- Shiftry - Revenge - TM42
  (275, 27500, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 45),
  -- Shiftry - Brick Break - TM43
  (275, 27500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 46),
  -- Shiftry - Rock Tomb - TM48
  (275, 27500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 47),
  -- Shiftry - Bullet Seed - TM50
  (275, 27500, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 48),
  -- Shiftry - Bounce - TM52
  (275, 27500, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 49),
  -- Shiftry - Payback - TM57
  (275, 27500, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 50),
  -- Shiftry - Assurance - TM58
  (275, 27500, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 51),
  -- Shiftry - Fling - TM59
  (275, 27500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 52),
  -- Shiftry - Power Swap - TM60
  (275, 27500, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 53),
  -- Shiftry - Low Sweep - TM75
  (275, 27500, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 54),
  -- Shiftry - Round - TM76
  (275, 27500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 55),
  -- Shiftry - Retaliate - TM79
  (275, 27500, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 56),
  -- Shiftry - Snarl - TM85
  (275, 27500, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 57),
  -- Shiftry - Grassy Terrain - TM88
  (275, 27500, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 58),
  -- Shiftry - False Swipe - TM94
  (275, 27500, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 59),
  -- Shiftry - Air Slash - TM95
  (275, 27500, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 60),
  -- Shiftry - Brutal Swing - TM97
  (275, 27500, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 61),
  -- Shiftry - Swords Dance - TR00
  (275, 27500, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 62),
  -- Shiftry - Body Slam - TR01
  (275, 27500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 63),
  -- Shiftry - Low Kick - TR07
  (275, 27500, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 64),
  -- Shiftry - Amnesia - TR17
  (275, 27500, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 65),
  -- Shiftry - Substitute - TR20
  (275, 27500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 66),
  -- Shiftry - Endure - TR26
  (275, 27500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 67),
  -- Shiftry - Sleep Talk - TR27
  (275, 27500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 68),
  -- Shiftry - Shadow Ball - TR33
  (275, 27500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 69),
  -- Shiftry - Heat Wave - TR36
  (275, 27500, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 70),
  -- Shiftry - Leaf Blade - TR50
  (275, 27500, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 71),
  -- Shiftry - Dark Pulse - TR58
  (275, 27500, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 72),
  -- Shiftry - Seed Bomb - TR59
  (275, 27500, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 73),
  -- Shiftry - X-Scissor - TR60
  (275, 27500, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 74),
  -- Shiftry - Focus Blast - TR64
  (275, 27500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 75),
  -- Shiftry - Energy Ball - TR65
  (275, 27500, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 76),
  -- Shiftry - Nasty Plot - TR68
  (275, 27500, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 77),
  -- Shiftry - Leaf Storm - TR71
  (275, 27500, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 78),
  -- Shiftry - Grass Knot - TR77
  (275, 27500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 79),
  -- Shiftry - Foul Play - TR81
  (275, 27500, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 80),
  -- Shiftry - Hurricane - TR89
  (275, 27500, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 81),
  -- Shiftry - Throat Chop - TR95
  (275, 27500, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 82),
  -- Wingull - Growl - Level 1
  (278, 27800, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wingull - Water Gun - Level 1
  (278, 27800, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wingull - Quick Attack - Level 5
  (278, 27800, 98, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Wingull - Supersonic - Level 10
  (278, 27800, 48, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Wingull - Wing Attack - Level 15
  (278, 27800, 17, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Wingull - Water Pulse - Level 20
  (278, 27800, 352, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Wingull - Agility - Level 26
  (278, 27800, 97, 18, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Wingull - Air Slash - Level 30
  (278, 27800, 403, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Wingull - Mist - Level 35
  (278, 27800, 54, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Wingull - Roost - Level 40
  (278, 27800, 355, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Wingull - Hurricane - Level 45
  (278, 27800, 542, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Wingull - Fly - TM06
  (278, 27800, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 12),
  -- Wingull - Rest - TM21
  (278, 27800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 13),
  -- Wingull - Thief - TM23
  (278, 27800, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 14),
  -- Wingull - Snore - TM24
  (278, 27800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 15),
  -- Wingull - Protect - TM25
  (278, 27800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 16),
  -- Wingull - Icy Wind - TM27
  (278, 27800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 17),
  -- Wingull - Steel Wing - TM30
  (278, 27800, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 18),
  -- Wingull - Attract - TM31
  (278, 27800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Wingull - Rain Dance - TM33
  (278, 27800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 20),
  -- Wingull - Hail - TM35
  (278, 27800, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 21),
  -- Wingull - Facade - TM39
  (278, 27800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Wingull - Swift - TM40
  (278, 27800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 23),
  -- Wingull - Brine - TM55
  (278, 27800, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 24),
  -- Wingull - U-turn - TM56
  (278, 27800, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 25),
  -- Wingull - Round - TM76
  (278, 27800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 26),
  -- Wingull - Air Slash - TM95
  (278, 27800, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 27),
  -- Wingull - Ice Beam - TR05
  (278, 27800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 28),
  -- Wingull - Blizzard - TR06
  (278, 27800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 29),
  -- Wingull - Agility - TR12
  (278, 27800, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 30),
  -- Wingull - Substitute - TR20
  (278, 27800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 31),
  -- Wingull - Endure - TR26
  (278, 27800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 32),
  -- Wingull - Sleep Talk - TR27
  (278, 27800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 33),
  -- Wingull - Uproar - TR35
  (278, 27800, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 34),
  -- Wingull - Scald - TR84
  (278, 27800, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 35),
  -- Wingull - Hurricane - TR89
  (278, 27800, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 36),
  -- Wingull - Liquidation - TR98
  (278, 27800, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 37),
  -- Wingull - Gust - Egg
  (278, 27800, 16, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Wingull - Twister - Egg
  (278, 27800, 239, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Wingull - Knock Off - Egg
  (278, 27800, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Wingull - Air Cutter - Egg
  (278, 27800, 314, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Wingull - Aerial Ace - Egg
  (278, 27800, 332, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Wingull - Aqua Ring - Egg
  (278, 27800, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Wingull - Wide Guard - Egg
  (278, 27800, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Wingull - Soak - Egg
  (278, 27800, 487, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Pelipper - Growl - Level 1
  (279, 27900, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pelipper - Supersonic - Level 1
  (279, 27900, 48, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pelipper - Water Gun - Level 1
  (279, 27900, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pelipper - Agility - Level 1
  (279, 27900, 97, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pelipper - Quick Attack - Level 1
  (279, 27900, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Pelipper - Protect - Level 1
  (279, 27900, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Pelipper - Tailwind - Level 1
  (279, 27900, 366, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Pelipper - Air Slash - Level 1
  (279, 27900, 403, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Pelipper - Soak - Level 1
  (279, 27900, 487, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Pelipper - Wing Attack - Level 15
  (279, 27900, 17, 18, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Pelipper - Water Pulse - Level 20
  (279, 27900, 352, 18, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Pelipper - Stockpile - Level 28
  (279, 27900, 254, 18, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Pelipper - Spit Up - Level 28
  (279, 27900, 255, 18, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Pelipper - Swallow - Level 28
  (279, 27900, 256, 18, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Pelipper - Fling - Level 34
  (279, 27900, 374, 18, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Pelipper - Mist - Level 41
  (279, 27900, 54, 18, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Pelipper - Roost - Level 48
  (279, 27900, 355, 18, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Pelipper - Hurricane - Level 55
  (279, 27900, 542, 18, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Pelipper - Hydro Pump - Level 62
  (279, 27900, 56, 18, NULL, 1, 62, NULL, NULL, NULL, 19),
  -- Pelipper - Fly - TM06
  (279, 27900, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 20),
  -- Pelipper - Hyper Beam - TM08
  (279, 27900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Pelipper - Giga Impact - TM09
  (279, 27900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Pelipper - Rest - TM21
  (279, 27900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Pelipper - Thief - TM23
  (279, 27900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Pelipper - Snore - TM24
  (279, 27900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Pelipper - Protect - TM25
  (279, 27900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Pelipper - Icy Wind - TM27
  (279, 27900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 27),
  -- Pelipper - Steel Wing - TM30
  (279, 27900, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 28),
  -- Pelipper - Attract - TM31
  (279, 27900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Pelipper - Rain Dance - TM33
  (279, 27900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Pelipper - Hail - TM35
  (279, 27900, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 31),
  -- Pelipper - Whirlpool - TM36
  (279, 27900, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 32),
  -- Pelipper - Facade - TM39
  (279, 27900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Pelipper - Swift - TM40
  (279, 27900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 34),
  -- Pelipper - Weather Ball - TM46
  (279, 27900, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 35),
  -- Pelipper - Brine - TM55
  (279, 27900, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 36),
  -- Pelipper - U-turn - TM56
  (279, 27900, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 37),
  -- Pelipper - Payback - TM57
  (279, 27900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 38),
  -- Pelipper - Fling - TM59
  (279, 27900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 39),
  -- Pelipper - Round - TM76
  (279, 27900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Pelipper - Air Slash - TM95
  (279, 27900, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 41),
  -- Pelipper - Hydro Pump - TR03
  (279, 27900, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 42),
  -- Pelipper - Surf - TR04
  (279, 27900, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 43),
  -- Pelipper - Ice Beam - TR05
  (279, 27900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 44),
  -- Pelipper - Blizzard - TR06
  (279, 27900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 45),
  -- Pelipper - Agility - TR12
  (279, 27900, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 46),
  -- Pelipper - Substitute - TR20
  (279, 27900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Pelipper - Endure - TR26
  (279, 27900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Pelipper - Sleep Talk - TR27
  (279, 27900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Pelipper - Uproar - TR35
  (279, 27900, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 50),
  -- Pelipper - Seed Bomb - TR59
  (279, 27900, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 51),
  -- Pelipper - Brave Bird - TR66
  (279, 27900, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 52),
  -- Pelipper - Gunk Shot - TR73
  (279, 27900, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 53),
  -- Pelipper - Scald - TR84
  (279, 27900, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 54),
  -- Pelipper - Hurricane - TR89
  (279, 27900, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 55),
  -- Pelipper - Liquidation - TR98
  (279, 27900, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 56),
  -- Ralts - Growl - Level 1
  (280, 28000, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ralts - Disarming Voice - Level 1
  (280, 28000, 574, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ralts - Double Team - Level 3
  (280, 28000, 104, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Ralts - Confusion - Level 6
  (280, 28000, 93, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Ralts - Hypnosis - Level 9
  (280, 28000, 95, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Ralts - Draining Kiss - Level 12
  (280, 28000, 577, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Ralts - Teleport - Level 15
  (280, 28000, 100, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Ralts - Psybeam - Level 18
  (280, 28000, 60, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Ralts - Life Dew - Level 21
  (280, 28000, 791, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Ralts - Charm - Level 24
  (280, 28000, 204, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Ralts - Calm Mind - Level 27
  (280, 28000, 347, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Ralts - Psychic - Level 30
  (280, 28000, 94, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Ralts - Heal Pulse - Level 33
  (280, 28000, 505, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Ralts - Dream Eater - Level 36
  (280, 28000, 138, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Ralts - Future Sight - Level 39
  (280, 28000, 248, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Ralts - Mega Punch - TM00
  (280, 28000, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Ralts - Mega Kick - TM01
  (280, 28000, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Ralts - Fire Punch - TM03
  (280, 28000, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 18),
  -- Ralts - Ice Punch - TM04
  (280, 28000, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Ralts - Thunder Punch - TM05
  (280, 28000, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Ralts - Magical Leaf - TM10
  (280, 28000, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 21),
  -- Ralts - Thunder Wave - TM14
  (280, 28000, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 22),
  -- Ralts - Light Screen - TM17
  (280, 28000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 23),
  -- Ralts - Reflect - TM18
  (280, 28000, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 24),
  -- Ralts - Safeguard - TM19
  (280, 28000, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 25),
  -- Ralts - Rest - TM21
  (280, 28000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Ralts - Thief - TM23
  (280, 28000, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 27),
  -- Ralts - Snore - TM24
  (280, 28000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Ralts - Protect - TM25
  (280, 28000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Ralts - Icy Wind - TM27
  (280, 28000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 30),
  -- Ralts - Charm - TM29
  (280, 28000, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 31),
  -- Ralts - Attract - TM31
  (280, 28000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Ralts - Rain Dance - TM33
  (280, 28000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 33),
  -- Ralts - Sunny Day - TM34
  (280, 28000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 34),
  -- Ralts - Will-O-Wisp - TM38
  (280, 28000, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 35),
  -- Ralts - Facade - TM39
  (280, 28000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Ralts - Swift - TM40
  (280, 28000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 37),
  -- Ralts - Helping Hand - TM41
  (280, 28000, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 38),
  -- Ralts - Imprison - TM44
  (280, 28000, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 39),
  -- Ralts - Fling - TM59
  (280, 28000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Ralts - Trick Room - TM70
  (280, 28000, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 41),
  -- Ralts - Wonder Room - TM71
  (280, 28000, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 42),
  -- Ralts - Magic Room - TM72
  (280, 28000, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 43),
  -- Ralts - Round - TM76
  (280, 28000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 44),
  -- Ralts - Draining Kiss - TM87
  (280, 28000, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 45),
  -- Ralts - Misty Terrain - TM89
  (280, 28000, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 46),
  -- Ralts - Body Slam - TR01
  (280, 28000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 47),
  -- Ralts - Thunderbolt - TR08
  (280, 28000, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 48),
  -- Ralts - Psychic - TR11
  (280, 28000, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 49),
  -- Ralts - Substitute - TR20
  (280, 28000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 50),
  -- Ralts - Psyshock - TR25
  (280, 28000, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 51),
  -- Ralts - Endure - TR26
  (280, 28000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 52),
  -- Ralts - Sleep Talk - TR27
  (280, 28000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 53),
  -- Ralts - Encore - TR30
  (280, 28000, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 54),
  -- Ralts - Shadow Ball - TR33
  (280, 28000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 55),
  -- Ralts - Future Sight - TR34
  (280, 28000, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 56),
  -- Ralts - Taunt - TR37
  (280, 28000, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 57),
  -- Ralts - Trick - TR38
  (280, 28000, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 58),
  -- Ralts - Skill Swap - TR40
  (280, 28000, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 59),
  -- Ralts - Hyper Voice - TR42
  (280, 28000, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 60),
  -- Ralts - Calm Mind - TR49
  (280, 28000, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 61),
  -- Ralts - Zen Headbutt - TR69
  (280, 28000, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 62),
  -- Ralts - Grass Knot - TR77
  (280, 28000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 63),
  -- Ralts - Stored Power - TR82
  (280, 28000, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 64),
  -- Ralts - Ally Switch - TR83
  (280, 28000, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 65),
  -- Ralts - Dazzling Gleam - TR92
  (280, 28000, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 66),
  -- Ralts - Disable - Egg
  (280, 28000, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Ralts - Confuse Ray - Egg
  (280, 28000, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Ralts - Destiny Bond - Egg
  (280, 28000, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Ralts - Mean Look - Egg
  (280, 28000, 212, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Ralts - Memento - Egg
  (280, 28000, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Ralts - Knock Off - Egg
  (280, 28000, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Ralts - Grudge - Egg
  (280, 28000, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Ralts - Shadow Sneak - Egg
  (280, 28000, 425, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Kirlia - Growl - Level 1
  (281, 28100, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kirlia - Confusion - Level 1
  (281, 28100, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kirlia - Double Team - Level 1
  (281, 28100, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kirlia - Disarming Voice - Level 1
  (281, 28100, 574, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kirlia - Hypnosis - Level 9
  (281, 28100, 95, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Kirlia - Draining Kiss - Level 12
  (281, 28100, 577, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Kirlia - Teleport - Level 15
  (281, 28100, 100, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Kirlia - Psybeam - Level 18
  (281, 28100, 60, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Kirlia - Life Dew - Level 23
  (281, 28100, 791, 18, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Kirlia - Charm - Level 28
  (281, 28100, 204, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Kirlia - Calm Mind - Level 33
  (281, 28100, 347, 18, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Kirlia - Psychic - Level 38
  (281, 28100, 94, 18, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Kirlia - Heal Pulse - Level 43
  (281, 28100, 505, 18, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Kirlia - Dream Eater - Level 48
  (281, 28100, 138, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Kirlia - Future Sight - Level 53
  (281, 28100, 248, 18, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Kirlia - Mega Punch - TM00
  (281, 28100, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Kirlia - Mega Kick - TM01
  (281, 28100, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Kirlia - Fire Punch - TM03
  (281, 28100, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 18),
  -- Kirlia - Ice Punch - TM04
  (281, 28100, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Kirlia - Thunder Punch - TM05
  (281, 28100, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Kirlia - Magical Leaf - TM10
  (281, 28100, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 21),
  -- Kirlia - Thunder Wave - TM14
  (281, 28100, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 22),
  -- Kirlia - Light Screen - TM17
  (281, 28100, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 23),
  -- Kirlia - Reflect - TM18
  (281, 28100, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 24),
  -- Kirlia - Safeguard - TM19
  (281, 28100, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 25),
  -- Kirlia - Rest - TM21
  (281, 28100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Kirlia - Thief - TM23
  (281, 28100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 27),
  -- Kirlia - Snore - TM24
  (281, 28100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Kirlia - Protect - TM25
  (281, 28100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Kirlia - Icy Wind - TM27
  (281, 28100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 30),
  -- Kirlia - Charm - TM29
  (281, 28100, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 31),
  -- Kirlia - Attract - TM31
  (281, 28100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Kirlia - Rain Dance - TM33
  (281, 28100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 33),
  -- Kirlia - Sunny Day - TM34
  (281, 28100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 34),
  -- Kirlia - Will-O-Wisp - TM38
  (281, 28100, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 35),
  -- Kirlia - Facade - TM39
  (281, 28100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Kirlia - Swift - TM40
  (281, 28100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 37),
  -- Kirlia - Helping Hand - TM41
  (281, 28100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 38),
  -- Kirlia - Imprison - TM44
  (281, 28100, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 39),
  -- Kirlia - Fling - TM59
  (281, 28100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Kirlia - Trick Room - TM70
  (281, 28100, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 41),
  -- Kirlia - Wonder Room - TM71
  (281, 28100, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 42),
  -- Kirlia - Magic Room - TM72
  (281, 28100, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 43),
  -- Kirlia - Round - TM76
  (281, 28100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 44),
  -- Kirlia - Draining Kiss - TM87
  (281, 28100, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 45),
  -- Kirlia - Misty Terrain - TM89
  (281, 28100, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 46),
  -- Kirlia - Body Slam - TR01
  (281, 28100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 47),
  -- Kirlia - Thunderbolt - TR08
  (281, 28100, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 48),
  -- Kirlia - Psychic - TR11
  (281, 28100, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 49),
  -- Kirlia - Substitute - TR20
  (281, 28100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 50),
  -- Kirlia - Psyshock - TR25
  (281, 28100, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 51),
  -- Kirlia - Endure - TR26
  (281, 28100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 52),
  -- Kirlia - Sleep Talk - TR27
  (281, 28100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 53),
  -- Kirlia - Encore - TR30
  (281, 28100, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 54),
  -- Kirlia - Shadow Ball - TR33
  (281, 28100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 55),
  -- Kirlia - Future Sight - TR34
  (281, 28100, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 56),
  -- Kirlia - Taunt - TR37
  (281, 28100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 57),
  -- Kirlia - Trick - TR38
  (281, 28100, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 58),
  -- Kirlia - Skill Swap - TR40
  (281, 28100, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 59),
  -- Kirlia - Hyper Voice - TR42
  (281, 28100, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 60),
  -- Kirlia - Calm Mind - TR49
  (281, 28100, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 61),
  -- Kirlia - Zen Headbutt - TR69
  (281, 28100, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 62),
  -- Kirlia - Grass Knot - TR77
  (281, 28100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 63),
  -- Kirlia - Stored Power - TR82
  (281, 28100, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 64),
  -- Kirlia - Ally Switch - TR83
  (281, 28100, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 65),
  -- Kirlia - Dazzling Gleam - TR92
  (281, 28100, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 66),
  -- Gardevoir - Growl - Level 1
  (282, 28200, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gardevoir - Confusion - Level 1
  (282, 28200, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gardevoir - Double Team - Level 1
  (282, 28200, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gardevoir - Charm - Level 1
  (282, 28200, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gardevoir - Healing Wish - Level 1
  (282, 28200, 361, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gardevoir - Disarming Voice - Level 1
  (282, 28200, 574, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gardevoir - Misty Terrain - Level 1
  (282, 28200, 581, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Gardevoir - Moonblast - Level 1
  (282, 28200, 585, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Gardevoir - Dazzling Gleam - Level 1
  (282, 28200, 605, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Gardevoir - Hypnosis - Level 9
  (282, 28200, 95, 18, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Gardevoir - Draining Kiss - Level 12
  (282, 28200, 577, 18, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Gardevoir - Teleport - Level 15
  (282, 28200, 100, 18, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Gardevoir - Psybeam - Level 18
  (282, 28200, 60, 18, NULL, 1, 18, NULL, NULL, NULL, 13),
  -- Gardevoir - Life Dew - Level 23
  (282, 28200, 791, 18, NULL, 1, 23, NULL, NULL, NULL, 14),
  -- Gardevoir - Wish - Level 28
  (282, 28200, 273, 18, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Gardevoir - Calm Mind - Level 35
  (282, 28200, 347, 18, NULL, 1, 35, NULL, NULL, NULL, 16),
  -- Gardevoir - Psychic - Level 42
  (282, 28200, 94, 18, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Gardevoir - Heal Pulse - Level 49
  (282, 28200, 505, 18, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Gardevoir - Dream Eater - Level 56
  (282, 28200, 138, 18, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Gardevoir - Future Sight - Level 63
  (282, 28200, 248, 18, NULL, 1, 63, NULL, NULL, NULL, 20),
  -- Gardevoir - Dazzling Gleam - Evolution
  (282, 28200, 605, 18, NULL, 7, NULL, NULL, NULL, NULL, 21),
  -- Gardevoir - Mega Punch - TM00
  (282, 28200, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 22),
  -- Gardevoir - Mega Kick - TM01
  (282, 28200, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 23),
  -- Gardevoir - Fire Punch - TM03
  (282, 28200, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 24),
  -- Gardevoir - Ice Punch - TM04
  (282, 28200, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 25),
  -- Gardevoir - Thunder Punch - TM05
  (282, 28200, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 26),
  -- Gardevoir - Hyper Beam - TM08
  (282, 28200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 27),
  -- Gardevoir - Giga Impact - TM09
  (282, 28200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 28),
  -- Gardevoir - Magical Leaf - TM10
  (282, 28200, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 29),
  -- Gardevoir - Thunder Wave - TM14
  (282, 28200, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 30),
  -- Gardevoir - Light Screen - TM17
  (282, 28200, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 31),
  -- Gardevoir - Reflect - TM18
  (282, 28200, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 32),
  -- Gardevoir - Safeguard - TM19
  (282, 28200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 33),
  -- Gardevoir - Rest - TM21
  (282, 28200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 34),
  -- Gardevoir - Thief - TM23
  (282, 28200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 35),
  -- Gardevoir - Snore - TM24
  (282, 28200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 36),
  -- Gardevoir - Protect - TM25
  (282, 28200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 37),
  -- Gardevoir - Icy Wind - TM27
  (282, 28200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 38),
  -- Gardevoir - Charm - TM29
  (282, 28200, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 39),
  -- Gardevoir - Attract - TM31
  (282, 28200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 40),
  -- Gardevoir - Rain Dance - TM33
  (282, 28200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 41),
  -- Gardevoir - Sunny Day - TM34
  (282, 28200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 42),
  -- Gardevoir - Will-O-Wisp - TM38
  (282, 28200, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 43),
  -- Gardevoir - Facade - TM39
  (282, 28200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 44),
  -- Gardevoir - Swift - TM40
  (282, 28200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 45),
  -- Gardevoir - Helping Hand - TM41
  (282, 28200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 46),
  -- Gardevoir - Imprison - TM44
  (282, 28200, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 47),
  -- Gardevoir - Fling - TM59
  (282, 28200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 48),
  -- Gardevoir - Power Swap - TM60
  (282, 28200, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 49),
  -- Gardevoir - Guard Swap - TM61
  (282, 28200, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 50),
  -- Gardevoir - Trick Room - TM70
  (282, 28200, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 51),
  -- Gardevoir - Wonder Room - TM71
  (282, 28200, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 52),
  -- Gardevoir - Magic Room - TM72
  (282, 28200, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 53),
  -- Gardevoir - Round - TM76
  (282, 28200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 54),
  -- Gardevoir - Draining Kiss - TM87
  (282, 28200, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 55),
  -- Gardevoir - Misty Terrain - TM89
  (282, 28200, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 56),
  -- Gardevoir - Psychic Terrain - TM91
  (282, 28200, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 57),
  -- Gardevoir - Mystical Fire - TM92
  (282, 28200, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 58),
  -- Gardevoir - Body Slam - TR01
  (282, 28200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 59),
  -- Gardevoir - Thunderbolt - TR08
  (282, 28200, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 60),
  -- Gardevoir - Psychic - TR11
  (282, 28200, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 61),
  -- Gardevoir - Substitute - TR20
  (282, 28200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 62),
  -- Gardevoir - Psyshock - TR25
  (282, 28200, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 63),
  -- Gardevoir - Endure - TR26
  (282, 28200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 64),
  -- Gardevoir - Sleep Talk - TR27
  (282, 28200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 65),
  -- Gardevoir - Encore - TR30
  (282, 28200, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 66),
  -- Gardevoir - Shadow Ball - TR33
  (282, 28200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 67),
  -- Gardevoir - Future Sight - TR34
  (282, 28200, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 68),
  -- Gardevoir - Taunt - TR37
  (282, 28200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 69),
  -- Gardevoir - Trick - TR38
  (282, 28200, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 70),
  -- Gardevoir - Skill Swap - TR40
  (282, 28200, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 71),
  -- Gardevoir - Hyper Voice - TR42
  (282, 28200, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 72),
  -- Gardevoir - Calm Mind - TR49
  (282, 28200, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 73),
  -- Gardevoir - Focus Blast - TR64
  (282, 28200, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 74),
  -- Gardevoir - Energy Ball - TR65
  (282, 28200, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 75),
  -- Gardevoir - Zen Headbutt - TR69
  (282, 28200, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 76),
  -- Gardevoir - Grass Knot - TR77
  (282, 28200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 77),
  -- Gardevoir - Stored Power - TR82
  (282, 28200, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 78),
  -- Gardevoir - Ally Switch - TR83
  (282, 28200, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 79),
  -- Gardevoir - Dazzling Gleam - TR92
  (282, 28200, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 80),
  -- Nincada - Scratch - Level 1
  (290, 29000, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nincada - Sand Attack - Level 1
  (290, 29000, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nincada - Harden - Level 5
  (290, 29000, 106, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Nincada - False Swipe - Level 10
  (290, 29000, 206, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Nincada - Mud-Slap - Level 15
  (290, 29000, 189, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Nincada - Absorb - Level 21
  (290, 29000, 71, 18, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Nincada - Metal Claw - Level 25
  (290, 29000, 232, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Nincada - Fury Swipes - Level 30
  (290, 29000, 154, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Nincada - Mind Reader - Level 35
  (290, 29000, 170, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Nincada - Dig - Level 40
  (290, 29000, 91, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Nincada - Solar Beam - TM11
  (290, 29000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 11),
  -- Nincada - Dig - TM15
  (290, 29000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 12),
  -- Nincada - Rest - TM21
  (290, 29000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 13),
  -- Nincada - Snore - TM24
  (290, 29000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 14),
  -- Nincada - Protect - TM25
  (290, 29000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 15),
  -- Nincada - Giga Drain - TM28
  (290, 29000, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 16),
  -- Nincada - Sandstorm - TM32
  (290, 29000, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 17),
  -- Nincada - Sunny Day - TM34
  (290, 29000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 18),
  -- Nincada - Facade - TM39
  (290, 29000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 19),
  -- Nincada - Round - TM76
  (290, 29000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 20),
  -- Nincada - False Swipe - TM94
  (290, 29000, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 21),
  -- Nincada - Leech Life - TR18
  (290, 29000, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 22),
  -- Nincada - Substitute - TR20
  (290, 29000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 23),
  -- Nincada - Endure - TR26
  (290, 29000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 24),
  -- Nincada - Sleep Talk - TR27
  (290, 29000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 25),
  -- Nincada - Shadow Ball - TR33
  (290, 29000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 26),
  -- Nincada - X-Scissor - TR60
  (290, 29000, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 27),
  -- Nincada - Bug Buzz - TR61
  (290, 29000, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 28),
  -- Nincada - Gust - Egg
  (290, 29000, 16, 18, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Nincada - Flail - Egg
  (290, 29000, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Nincada - Night Slash - Egg
  (290, 29000, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Nincada - Bug Bite - Egg
  (290, 29000, 450, 18, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Nincada - Final Gambit - Egg
  (290, 29000, 515, 18, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Ninjask - Scratch - Level 1
  (291, 29100, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ninjask - Sand Attack - Level 1
  (291, 29100, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ninjask - Dig - Level 1
  (291, 29100, 91, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ninjask - Screech - Level 1
  (291, 29100, 103, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ninjask - Double Team - Level 1
  (291, 29100, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ninjask - Harden - Level 1
  (291, 29100, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Ninjask - Mud-Slap - Level 1
  (291, 29100, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Ninjask - False Swipe - Level 1
  (291, 29100, 206, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Ninjask - Fury Cutter - Level 1
  (291, 29100, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Ninjask - Baton Pass - Level 1
  (291, 29100, 226, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Ninjask - Metal Claw - Level 1
  (291, 29100, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Ninjask - Aerial Ace - Level 1
  (291, 29100, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Ninjask - Agility - Level 15
  (291, 29100, 97, 18, NULL, 1, 15, NULL, NULL, NULL, 13),
  -- Ninjask - Absorb - Level 23
  (291, 29100, 71, 18, NULL, 1, 23, NULL, NULL, NULL, 14),
  -- Ninjask - Bug Bite - Level 29
  (291, 29100, 450, 18, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Ninjask - Fury Swipes - Level 36
  (291, 29100, 154, 18, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Ninjask - Mind Reader - Level 43
  (291, 29100, 170, 18, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Ninjask - Slash - Level 50
  (291, 29100, 163, 18, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Ninjask - Swords Dance - Level 57
  (291, 29100, 14, 18, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Ninjask - X-Scissor - Level 64
  (291, 29100, 404, 18, NULL, 1, 64, NULL, NULL, NULL, 20),
  -- Ninjask - Screech - Evolution
  (291, 29100, 103, 18, NULL, 7, NULL, NULL, NULL, NULL, 21),
  -- Ninjask - Double Team - Evolution
  (291, 29100, 104, 18, NULL, 7, NULL, NULL, NULL, NULL, 22),
  -- Ninjask - Fury Cutter - Evolution
  (291, 29100, 210, 18, NULL, 7, NULL, NULL, NULL, NULL, 23),
  -- Ninjask - Hyper Beam - TM08
  (291, 29100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 24),
  -- Ninjask - Giga Impact - TM09
  (291, 29100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 25),
  -- Ninjask - Solar Beam - TM11
  (291, 29100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 26),
  -- Ninjask - Dig - TM15
  (291, 29100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 27),
  -- Ninjask - Screech - TM16
  (291, 29100, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 28),
  -- Ninjask - Rest - TM21
  (291, 29100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 29),
  -- Ninjask - Thief - TM23
  (291, 29100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 30),
  -- Ninjask - Snore - TM24
  (291, 29100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 31),
  -- Ninjask - Protect - TM25
  (291, 29100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 32),
  -- Ninjask - Giga Drain - TM28
  (291, 29100, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 33),
  -- Ninjask - Sandstorm - TM32
  (291, 29100, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Ninjask - Sunny Day - TM34
  (291, 29100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Ninjask - Facade - TM39
  (291, 29100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Ninjask - Swift - TM40
  (291, 29100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 37),
  -- Ninjask - U-turn - TM56
  (291, 29100, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 38),
  -- Ninjask - Round - TM76
  (291, 29100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Ninjask - Acrobatics - TM78
  (291, 29100, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 40),
  -- Ninjask - False Swipe - TM94
  (291, 29100, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 41),
  -- Ninjask - Air Slash - TM95
  (291, 29100, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 42),
  -- Ninjask - Swords Dance - TR00
  (291, 29100, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 43),
  -- Ninjask - Agility - TR12
  (291, 29100, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 44),
  -- Ninjask - Leech Life - TR18
  (291, 29100, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 45),
  -- Ninjask - Substitute - TR20
  (291, 29100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Ninjask - Endure - TR26
  (291, 29100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Ninjask - Sleep Talk - TR27
  (291, 29100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Ninjask - Baton Pass - TR29
  (291, 29100, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 49),
  -- Ninjask - Shadow Ball - TR33
  (291, 29100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 50),
  -- Ninjask - Uproar - TR35
  (291, 29100, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 51),
  -- Ninjask - X-Scissor - TR60
  (291, 29100, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 52),
  -- Ninjask - Bug Buzz - TR61
  (291, 29100, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 53),
  -- Shedinja - Scratch - Level 1
  (292, 29200, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shedinja - Sand Attack - Level 1
  (292, 29200, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shedinja - Dig - Level 1
  (292, 29200, 91, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shedinja - Harden - Level 1
  (292, 29200, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Shedinja - Mud-Slap - Level 1
  (292, 29200, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Shedinja - False Swipe - Level 1
  (292, 29200, 206, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Shedinja - Metal Claw - Level 1
  (292, 29200, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Shedinja - Grudge - Level 1
  (292, 29200, 288, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Shedinja - Shadow Claw - Level 1
  (292, 29200, 421, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Shedinja - Confuse Ray - Level 15
  (292, 29200, 109, 18, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Shedinja - Absorb - Level 23
  (292, 29200, 71, 18, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Shedinja - Shadow Sneak - Level 29
  (292, 29200, 425, 18, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Shedinja - Fury Swipes - Level 36
  (292, 29200, 154, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Shedinja - Mind Reader - Level 43
  (292, 29200, 170, 18, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Shedinja - Shadow Ball - Level 50
  (292, 29200, 247, 18, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Shedinja - Spite - Level 57
  (292, 29200, 180, 18, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Shedinja - Phantom Force - Level 64
  (292, 29200, 566, 18, NULL, 1, 64, NULL, NULL, NULL, 17),
  -- Shedinja - Hyper Beam - TM08
  (292, 29200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Shedinja - Giga Impact - TM09
  (292, 29200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Shedinja - Solar Beam - TM11
  (292, 29200, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Shedinja - Dig - TM15
  (292, 29200, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Shedinja - Rest - TM21
  (292, 29200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Shedinja - Thief - TM23
  (292, 29200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Shedinja - Snore - TM24
  (292, 29200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Shedinja - Protect - TM25
  (292, 29200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Shedinja - Giga Drain - TM28
  (292, 29200, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 26),
  -- Shedinja - Sandstorm - TM32
  (292, 29200, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 27),
  -- Shedinja - Sunny Day - TM34
  (292, 29200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Shedinja - Will-O-Wisp - TM38
  (292, 29200, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 29),
  -- Shedinja - Facade - TM39
  (292, 29200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Shedinja - Shadow Claw - TM65
  (292, 29200, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 31),
  -- Shedinja - Round - TM76
  (292, 29200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Shedinja - Hex - TM77
  (292, 29200, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 33),
  -- Shedinja - Phantom Force - TM86
  (292, 29200, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 34),
  -- Shedinja - False Swipe - TM94
  (292, 29200, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 35),
  -- Shedinja - Agility - TR12
  (292, 29200, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 36),
  -- Shedinja - Leech Life - TR18
  (292, 29200, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 37),
  -- Shedinja - Substitute - TR20
  (292, 29200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Shedinja - Endure - TR26
  (292, 29200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Shedinja - Sleep Talk - TR27
  (292, 29200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Shedinja - Shadow Ball - TR33
  (292, 29200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 41),
  -- Shedinja - Trick - TR38
  (292, 29200, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 42),
  -- Shedinja - X-Scissor - TR60
  (292, 29200, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 43),
  -- Shedinja - Bug Buzz - TR61
  (292, 29200, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 44),
  -- Shedinja - Ally Switch - TR83
  (292, 29200, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 45),
  -- Whismur - Pound - Level 1
  (293, 29300, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whismur - Astonish - Level 1
  (293, 29300, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Whismur - Echoed Voice - Level 5
  (293, 29300, 497, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Whismur - Howl - Level 10
  (293, 29300, 336, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Whismur - Rest - Level 15
  (293, 29300, 156, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Whismur - Sleep Talk - Level 15
  (293, 29300, 214, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Whismur - Stomp - Level 21
  (293, 29300, 23, 18, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Whismur - Roar - Level 25
  (293, 29300, 46, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Whismur - Supersonic - Level 30
  (293, 29300, 48, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Whismur - Uproar - Level 35
  (293, 29300, 253, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Whismur - Screech - Level 40
  (293, 29300, 103, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Whismur - Hyper Voice - Level 45
  (293, 29300, 304, 18, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Whismur - Mega Punch - TM00
  (293, 29300, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 13),
  -- Whismur - Mega Kick - TM01
  (293, 29300, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 14),
  -- Whismur - Fire Punch - TM03
  (293, 29300, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 15),
  -- Whismur - Ice Punch - TM04
  (293, 29300, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 16),
  -- Whismur - Thunder Punch - TM05
  (293, 29300, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 17),
  -- Whismur - Solar Beam - TM11
  (293, 29300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 18),
  -- Whismur - Screech - TM16
  (293, 29300, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 19),
  -- Whismur - Rest - TM21
  (293, 29300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Whismur - Snore - TM24
  (293, 29300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Whismur - Protect - TM25
  (293, 29300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Whismur - Icy Wind - TM27
  (293, 29300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 23),
  -- Whismur - Attract - TM31
  (293, 29300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Whismur - Rain Dance - TM33
  (293, 29300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Whismur - Sunny Day - TM34
  (293, 29300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Whismur - Facade - TM39
  (293, 29300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Whismur - Fake Tears - TM47
  (293, 29300, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 28),
  -- Whismur - Fling - TM59
  (293, 29300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 29),
  -- Whismur - Round - TM76
  (293, 29300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 30),
  -- Whismur - Retaliate - TM79
  (293, 29300, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 31),
  -- Whismur - Body Slam - TR01
  (293, 29300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 32),
  -- Whismur - Flamethrower - TR02
  (293, 29300, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 33),
  -- Whismur - Ice Beam - TR05
  (293, 29300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 34),
  -- Whismur - Blizzard - TR06
  (293, 29300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 35),
  -- Whismur - Fire Blast - TR15
  (293, 29300, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 36),
  -- Whismur - Substitute - TR20
  (293, 29300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Whismur - Endure - TR26
  (293, 29300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Whismur - Sleep Talk - TR27
  (293, 29300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Whismur - Shadow Ball - TR33
  (293, 29300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 40),
  -- Whismur - Uproar - TR35
  (293, 29300, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 41),
  -- Whismur - Hyper Voice - TR42
  (293, 29300, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 42),
  -- Whismur - Zen Headbutt - TR69
  (293, 29300, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 43),
  -- Whismur - Work Up - TR85
  (293, 29300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 44),
  -- Whismur - Whirlwind - Egg
  (293, 29300, 18, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Whismur - Take Down - Egg
  (293, 29300, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Whismur - Smokescreen - Egg
  (293, 29300, 108, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Whismur - Endeavor - Egg
  (293, 29300, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Whismur - Extrasensory - Egg
  (293, 29300, 326, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Whismur - Hammer Arm - Egg
  (293, 29300, 359, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Whismur - Circle Throw - Egg
  (293, 29300, 509, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Whismur - Disarming Voice - Egg
  (293, 29300, 574, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Loudred - Pound - Level 1
  (294, 29400, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Loudred - Bite - Level 1
  (294, 29400, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Loudred - Astonish - Level 1
  (294, 29400, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Loudred - Howl - Level 1
  (294, 29400, 336, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Loudred - Echoed Voice - Level 1
  (294, 29400, 497, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Loudred - Rest - Level 15
  (294, 29400, 156, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Loudred - Sleep Talk - Level 15
  (294, 29400, 214, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Loudred - Stomp - Level 23
  (294, 29400, 23, 18, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Loudred - Roar - Level 29
  (294, 29400, 46, 18, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Loudred - Supersonic - Level 36
  (294, 29400, 48, 18, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Loudred - Uproar - Level 43
  (294, 29400, 253, 18, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Loudred - Screech - Level 50
  (294, 29400, 103, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Loudred - Hyper Voice - Level 57
  (294, 29400, 304, 18, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Loudred - Bite - Evolution
  (294, 29400, 44, 18, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Loudred - Mega Punch - TM00
  (294, 29400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Loudred - Mega Kick - TM01
  (294, 29400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Loudred - Fire Punch - TM03
  (294, 29400, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 17),
  -- Loudred - Ice Punch - TM04
  (294, 29400, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 18),
  -- Loudred - Thunder Punch - TM05
  (294, 29400, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 19),
  -- Loudred - Solar Beam - TM11
  (294, 29400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Loudred - Screech - TM16
  (294, 29400, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 21),
  -- Loudred - Rest - TM21
  (294, 29400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Loudred - Rock Slide - TM22
  (294, 29400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Loudred - Snore - TM24
  (294, 29400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Loudred - Protect - TM25
  (294, 29400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Loudred - Icy Wind - TM27
  (294, 29400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 26),
  -- Loudred - Attract - TM31
  (294, 29400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Loudred - Rain Dance - TM33
  (294, 29400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Loudred - Sunny Day - TM34
  (294, 29400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Loudred - Facade - TM39
  (294, 29400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Loudred - Brick Break - TM43
  (294, 29400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Loudred - Fake Tears - TM47
  (294, 29400, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 32),
  -- Loudred - Rock Tomb - TM48
  (294, 29400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Loudred - Fling - TM59
  (294, 29400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 34),
  -- Loudred - Round - TM76
  (294, 29400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Loudred - Retaliate - TM79
  (294, 29400, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 36),
  -- Loudred - Bulldoze - TM81
  (294, 29400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 37),
  -- Loudred - Stomping Tantrum - TM98
  (294, 29400, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 38),
  -- Loudred - Body Slam - TR01
  (294, 29400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 39),
  -- Loudred - Flamethrower - TR02
  (294, 29400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 40),
  -- Loudred - Ice Beam - TR05
  (294, 29400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 41),
  -- Loudred - Blizzard - TR06
  (294, 29400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 42),
  -- Loudred - Low Kick - TR07
  (294, 29400, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 43),
  -- Loudred - Earthquake - TR10
  (294, 29400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 44),
  -- Loudred - Fire Blast - TR15
  (294, 29400, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 45),
  -- Loudred - Substitute - TR20
  (294, 29400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Loudred - Endure - TR26
  (294, 29400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Loudred - Sleep Talk - TR27
  (294, 29400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Loudred - Shadow Ball - TR33
  (294, 29400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 49),
  -- Loudred - Uproar - TR35
  (294, 29400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 50),
  -- Loudred - Taunt - TR37
  (294, 29400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 51),
  -- Loudred - Hyper Voice - TR42
  (294, 29400, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 52),
  -- Loudred - Overheat - TR43
  (294, 29400, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 53),
  -- Loudred - Zen Headbutt - TR69
  (294, 29400, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 54),
  -- Loudred - Work Up - TR85
  (294, 29400, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 55),
  -- Exploud - Pound - Level 1
  (295, 29500, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exploud - Bite - Level 1
  (295, 29500, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exploud - Crunch - Level 1
  (295, 29500, 242, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exploud - Astonish - Level 1
  (295, 29500, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Exploud - Howl - Level 1
  (295, 29500, 336, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Exploud - Thunder Fang - Level 1
  (295, 29500, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Exploud - Ice Fang - Level 1
  (295, 29500, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Exploud - Fire Fang - Level 1
  (295, 29500, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Exploud - Echoed Voice - Level 1
  (295, 29500, 497, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Exploud - Rest - Level 15
  (295, 29500, 156, 18, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Exploud - Sleep Talk - Level 15
  (295, 29500, 214, 18, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Exploud - Stomp - Level 23
  (295, 29500, 23, 18, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Exploud - Roar - Level 29
  (295, 29500, 46, 18, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Exploud - Supersonic - Level 36
  (295, 29500, 48, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Exploud - Uproar - Level 45
  (295, 29500, 253, 18, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Exploud - Screech - Level 54
  (295, 29500, 103, 18, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Exploud - Hyper Voice - Level 63
  (295, 29500, 304, 18, NULL, 1, 63, NULL, NULL, NULL, 17),
  -- Exploud - Boomburst - Level 72
  (295, 29500, 586, 18, NULL, 1, 72, NULL, NULL, NULL, 18),
  -- Exploud - Hyper Beam - Level 81
  (295, 29500, 63, 18, NULL, 1, 81, NULL, NULL, NULL, 19),
  -- Exploud - Crunch - Evolution
  (295, 29500, 242, 18, NULL, 7, NULL, NULL, NULL, NULL, 20),
  -- Exploud - Mega Punch - TM00
  (295, 29500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 21),
  -- Exploud - Mega Kick - TM01
  (295, 29500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 22),
  -- Exploud - Fire Punch - TM03
  (295, 29500, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 23),
  -- Exploud - Ice Punch - TM04
  (295, 29500, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 24),
  -- Exploud - Thunder Punch - TM05
  (295, 29500, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 25),
  -- Exploud - Hyper Beam - TM08
  (295, 29500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 26),
  -- Exploud - Giga Impact - TM09
  (295, 29500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 27),
  -- Exploud - Solar Beam - TM11
  (295, 29500, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 28),
  -- Exploud - Screech - TM16
  (295, 29500, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 29),
  -- Exploud - Rest - TM21
  (295, 29500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 30),
  -- Exploud - Rock Slide - TM22
  (295, 29500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 31),
  -- Exploud - Snore - TM24
  (295, 29500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 32),
  -- Exploud - Protect - TM25
  (295, 29500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 33),
  -- Exploud - Icy Wind - TM27
  (295, 29500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 34),
  -- Exploud - Attract - TM31
  (295, 29500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 35),
  -- Exploud - Rain Dance - TM33
  (295, 29500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 36),
  -- Exploud - Sunny Day - TM34
  (295, 29500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 37),
  -- Exploud - Whirlpool - TM36
  (295, 29500, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 38),
  -- Exploud - Facade - TM39
  (295, 29500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 39),
  -- Exploud - Brick Break - TM43
  (295, 29500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 40),
  -- Exploud - Fake Tears - TM47
  (295, 29500, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 41),
  -- Exploud - Rock Tomb - TM48
  (295, 29500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 42),
  -- Exploud - Fling - TM59
  (295, 29500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 43),
  -- Exploud - Avalanche - TM64
  (295, 29500, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 44),
  -- Exploud - Thunder Fang - TM66
  (295, 29500, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 45),
  -- Exploud - Ice Fang - TM67
  (295, 29500, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 46),
  -- Exploud - Fire Fang - TM68
  (295, 29500, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 47),
  -- Exploud - Round - TM76
  (295, 29500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 48),
  -- Exploud - Retaliate - TM79
  (295, 29500, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 49),
  -- Exploud - Bulldoze - TM81
  (295, 29500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 50),
  -- Exploud - Stomping Tantrum - TM98
  (295, 29500, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 51),
  -- Exploud - Body Slam - TR01
  (295, 29500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 52),
  -- Exploud - Flamethrower - TR02
  (295, 29500, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 53),
  -- Exploud - Hydro Pump - TR03
  (295, 29500, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 54),
  -- Exploud - Surf - TR04
  (295, 29500, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 55),
  -- Exploud - Ice Beam - TR05
  (295, 29500, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 56),
  -- Exploud - Blizzard - TR06
  (295, 29500, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 57),
  -- Exploud - Low Kick - TR07
  (295, 29500, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 58),
  -- Exploud - Earthquake - TR10
  (295, 29500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 59),
  -- Exploud - Fire Blast - TR15
  (295, 29500, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 60),
  -- Exploud - Substitute - TR20
  (295, 29500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 61),
  -- Exploud - Outrage - TR24
  (295, 29500, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 62),
  -- Exploud - Endure - TR26
  (295, 29500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 63),
  -- Exploud - Sleep Talk - TR27
  (295, 29500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 64),
  -- Exploud - Crunch - TR32
  (295, 29500, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 65),
  -- Exploud - Shadow Ball - TR33
  (295, 29500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 66),
  -- Exploud - Uproar - TR35
  (295, 29500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 67),
  -- Exploud - Taunt - TR37
  (295, 29500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 68),
  -- Exploud - Hyper Voice - TR42
  (295, 29500, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 69),
  -- Exploud - Overheat - TR43
  (295, 29500, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 70),
  -- Exploud - Focus Blast - TR64
  (295, 29500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 71),
  -- Exploud - Zen Headbutt - TR69
  (295, 29500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 72),
  -- Exploud - Work Up - TR85
  (295, 29500, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 73),
  -- Azurill - Tail Whip - Level 1
  (298, 29800, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azurill - Water Gun - Level 1
  (298, 29800, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Azurill - Splash - Level 1
  (298, 29800, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Azurill - Helping Hand - Level 3
  (298, 29800, 270, 18, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Azurill - Bubble Beam - Level 6
  (298, 29800, 61, 18, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Azurill - Charm - Level 9
  (298, 29800, 204, 18, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Azurill - Slam - Level 12
  (298, 29800, 21, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Azurill - Bounce - Level 15
  (298, 29800, 340, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Azurill - Light Screen - TM17
  (298, 29800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 9),
  -- Azurill - Rest - TM21
  (298, 29800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 10),
  -- Azurill - Snore - TM24
  (298, 29800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 11),
  -- Azurill - Protect - TM25
  (298, 29800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 12),
  -- Azurill - Icy Wind - TM27
  (298, 29800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 13),
  -- Azurill - Charm - TM29
  (298, 29800, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 14),
  -- Azurill - Attract - TM31
  (298, 29800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 15),
  -- Azurill - Rain Dance - TM33
  (298, 29800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 16),
  -- Azurill - Hail - TM35
  (298, 29800, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 17),
  -- Azurill - Whirlpool - TM36
  (298, 29800, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 18),
  -- Azurill - Facade - TM39
  (298, 29800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 19),
  -- Azurill - Helping Hand - TM41
  (298, 29800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 20),
  -- Azurill - Fake Tears - TM47
  (298, 29800, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 21),
  -- Azurill - Bounce - TM52
  (298, 29800, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 22),
  -- Azurill - Mud Shot - TM53
  (298, 29800, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 23),
  -- Azurill - Round - TM76
  (298, 29800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 24),
  -- Azurill - Draining Kiss - TM87
  (298, 29800, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 25),
  -- Azurill - Brutal Swing - TM97
  (298, 29800, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 26),
  -- Azurill - Body Slam - TR01
  (298, 29800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 27),
  -- Azurill - Surf - TR04
  (298, 29800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 28),
  -- Azurill - Ice Beam - TR05
  (298, 29800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 29),
  -- Azurill - Blizzard - TR06
  (298, 29800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 30),
  -- Azurill - Waterfall - TR16
  (298, 29800, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 31),
  -- Azurill - Substitute - TR20
  (298, 29800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 32),
  -- Azurill - Endure - TR26
  (298, 29800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 33),
  -- Azurill - Sleep Talk - TR27
  (298, 29800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 34),
  -- Azurill - Encore - TR30
  (298, 29800, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 35),
  -- Azurill - Iron Tail - TR31
  (298, 29800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 36),
  -- Azurill - Uproar - TR35
  (298, 29800, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 37),
  -- Azurill - Hyper Voice - TR42
  (298, 29800, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 38),
  -- Azurill - Muddy Water - TR45
  (298, 29800, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 39),
  -- Azurill - Scald - TR84
  (298, 29800, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 40),
  -- Azurill - Work Up - TR85
  (298, 29800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 41),
  -- Azurill - Sing - Egg
  (298, 29800, 47, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Azurill - Supersonic - Egg
  (298, 29800, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Azurill - Belly Drum - Egg
  (298, 29800, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Azurill - Perish Song - Egg
  (298, 29800, 195, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Azurill - Present - Egg
  (298, 29800, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Azurill - Tickle - Egg
  (298, 29800, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Azurill - Copycat - Egg
  (298, 29800, 383, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Azurill - Aqua Jet - Egg
  (298, 29800, 453, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Azurill - Soak - Egg
  (298, 29800, 487, 18, NULL, 5, NULL, NULL, NULL, NULL, 50);

-- ============================================================================
-- Source Audit Corrections
-- ============================================================================
-- Rows below are source-verified Sword / Shield learnset rows omitted from the legacy migration.
-- They preserve current-species Generation VIII source tables, including evolved/form learn paths.
INSERT INTO reference.pokemon_learnsets (
  species_id,
  form_id,
  move_id,
  version_group_id,
  game_id,
  learn_method_id,
  level_learned_at,
  source_item_id,
  move_machine_id,
  condition_summary,
  sort_order
) VALUES
  -- Grovyle - Double Kick - Egg
  (253, 25300, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Grovyle - Absorb - Egg
  (253, 25300, 71, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Grovyle - Leech Seed - Egg
  (253, 25300, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Grovyle - Slash - Egg
  (253, 25300, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Grovyle - Dragon Breath - Egg
  (253, 25300, 225, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Grovyle - Synthesis - Egg
  (253, 25300, 235, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Grovyle - Worry Seed - Egg
  (253, 25300, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Grovyle - Night Slash - Egg
  (253, 25300, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Sceptile - Double Kick - Egg
  (254, 25400, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Sceptile - Absorb - Egg
  (254, 25400, 71, 18, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Sceptile - Leech Seed - Egg
  (254, 25400, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Sceptile - Slash - Egg
  (254, 25400, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Sceptile - Dragon Breath - Egg
  (254, 25400, 225, 18, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Sceptile - Synthesis - Egg
  (254, 25400, 235, 18, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Sceptile - Worry Seed - Egg
  (254, 25400, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Sceptile - Night Slash - Egg
  (254, 25400, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Combusken - Peck - Egg
  (256, 25600, 64, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Combusken - Counter - Egg
  (256, 25600, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Combusken - Curse - Egg
  (256, 25600, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Combusken - Crush Claw - Egg
  (256, 25600, 306, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Combusken - Feint - Egg
  (256, 25600, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Combusken - Last Resort - Egg
  (256, 25600, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Combusken - Night Slash - Egg
  (256, 25600, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Blaziken - Close Combat - Level 1
  (257, 25700, 370, 18, NULL, 1, 1, NULL, NULL, NULL, 81),
  -- Blaziken - Peck - Egg
  (257, 25700, 64, 18, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Blaziken - Counter - Egg
  (257, 25700, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Blaziken - Curse - Egg
  (257, 25700, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Blaziken - Crush Claw - Egg
  (257, 25700, 306, 18, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Blaziken - Feint - Egg
  (257, 25700, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Blaziken - Last Resort - Egg
  (257, 25700, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Blaziken - Night Slash - Egg
  (257, 25700, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Marshtomp - Stomp - Egg
  (259, 25900, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Marshtomp - Double-Edge - Egg
  (259, 25900, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Marshtomp - Bite - Egg
  (259, 25900, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Marshtomp - Counter - Egg
  (259, 25900, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Marshtomp - Sludge - Egg
  (259, 25900, 124, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Marshtomp - Curse - Egg
  (259, 25900, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Marshtomp - Mud-Slap - Egg
  (259, 25900, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Marshtomp - Mirror Coat - Egg
  (259, 25900, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Marshtomp - Ancient Power - Egg
  (259, 25900, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Marshtomp - Yawn - Egg
  (259, 25900, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Marshtomp - Wide Guard - Egg
  (259, 25900, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Swampert - Stomp - Egg
  (260, 26000, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Swampert - Double-Edge - Egg
  (260, 26000, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Swampert - Bite - Egg
  (260, 26000, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Swampert - Counter - Egg
  (260, 26000, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Swampert - Sludge - Egg
  (260, 26000, 124, 18, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Swampert - Curse - Egg
  (260, 26000, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Swampert - Mud-Slap - Egg
  (260, 26000, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Swampert - Mirror Coat - Egg
  (260, 26000, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Swampert - Ancient Power - Egg
  (260, 26000, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Swampert - Yawn - Egg
  (260, 26000, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Swampert - Wide Guard - Egg
  (260, 26000, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Linoone - Extreme Speed - Egg
  (264, 26400, 245, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Linoone - Tickle - Egg
  (264, 26400, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Linoone - Simple Beam - Egg
  (264, 26400, 493, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Lombre - Counter - Egg
  (271, 27100, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Lombre - Leech Seed - Egg
  (271, 27100, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Lombre - Razor Leaf - Egg
  (271, 27100, 75, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Lombre - Sweet Scent - Egg
  (271, 27100, 230, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Lombre - Synthesis - Egg
  (271, 27100, 235, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Lombre - Teeter Dance - Egg
  (271, 27100, 298, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Lombre - Tickle - Egg
  (271, 27100, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Ludicolo - Counter - Egg
  (272, 27200, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Ludicolo - Leech Seed - Egg
  (272, 27200, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Ludicolo - Razor Leaf - Egg
  (272, 27200, 75, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Ludicolo - Sweet Scent - Egg
  (272, 27200, 230, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Ludicolo - Synthesis - Egg
  (272, 27200, 235, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Ludicolo - Teeter Dance - Egg
  (272, 27200, 298, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Ludicolo - Tickle - Egg
  (272, 27200, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Nuzleaf - Take Down - Egg
  (274, 27400, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Nuzleaf - Leech Seed - Egg
  (274, 27400, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Nuzleaf - Quick Attack - Egg
  (274, 27400, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Nuzleaf - Worry Seed - Egg
  (274, 27400, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Nuzleaf - Night Slash - Egg
  (274, 27400, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Nuzleaf - Defog - Egg
  (274, 27400, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Shiftry - Take Down - Egg
  (275, 27500, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Shiftry - Leech Seed - Egg
  (275, 27500, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Shiftry - Quick Attack - Egg
  (275, 27500, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Shiftry - Worry Seed - Egg
  (275, 27500, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Shiftry - Night Slash - Egg
  (275, 27500, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Shiftry - Defog - Egg
  (275, 27500, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Pelipper - Gust - Egg
  (279, 27900, 16, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pelipper - Twister - Egg
  (279, 27900, 239, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pelipper - Knock Off - Egg
  (279, 27900, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Pelipper - Air Cutter - Egg
  (279, 27900, 314, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Pelipper - Aerial Ace - Egg
  (279, 27900, 332, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Pelipper - Aqua Ring - Egg
  (279, 27900, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Pelipper - Wide Guard - Egg
  (279, 27900, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Pelipper - Soak - Egg
  (279, 27900, 487, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Kirlia - Disable - Egg
  (281, 28100, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Kirlia - Confuse Ray - Egg
  (281, 28100, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Kirlia - Destiny Bond - Egg
  (281, 28100, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Kirlia - Mean Look - Egg
  (281, 28100, 212, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Kirlia - Memento - Egg
  (281, 28100, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Kirlia - Knock Off - Egg
  (281, 28100, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Kirlia - Grudge - Egg
  (281, 28100, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Kirlia - Shadow Sneak - Egg
  (281, 28100, 425, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Gardevoir - Disable - Egg
  (282, 28200, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Gardevoir - Confuse Ray - Egg
  (282, 28200, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Gardevoir - Destiny Bond - Egg
  (282, 28200, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Gardevoir - Mean Look - Egg
  (282, 28200, 212, 18, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Gardevoir - Memento - Egg
  (282, 28200, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Gardevoir - Knock Off - Egg
  (282, 28200, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Gardevoir - Grudge - Egg
  (282, 28200, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Gardevoir - Shadow Sneak - Egg
  (282, 28200, 425, 18, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Ninjask - Gust - Egg
  (291, 29100, 16, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ninjask - Flail - Egg
  (291, 29100, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Ninjask - Night Slash - Egg
  (291, 29100, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Ninjask - Bug Bite - Egg
  (291, 29100, 450, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Ninjask - Final Gambit - Egg
  (291, 29100, 515, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Shedinja - Gust - Egg
  (292, 29200, 16, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shedinja - Flail - Egg
  (292, 29200, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shedinja - Night Slash - Egg
  (292, 29200, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Shedinja - Bug Bite - Egg
  (292, 29200, 450, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shedinja - Final Gambit - Egg
  (292, 29200, 515, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Loudred - Whirlwind - Egg
  (294, 29400, 18, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Loudred - Take Down - Egg
  (294, 29400, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Loudred - Smokescreen - Egg
  (294, 29400, 108, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Loudred - Endeavor - Egg
  (294, 29400, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Loudred - Extrasensory - Egg
  (294, 29400, 326, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Loudred - Hammer Arm - Egg
  (294, 29400, 359, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Loudred - Circle Throw - Egg
  (294, 29400, 509, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Loudred - Disarming Voice - Egg
  (294, 29400, 574, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Exploud - Whirlwind - Egg
  (295, 29500, 18, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Exploud - Take Down - Egg
  (295, 29500, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Exploud - Smokescreen - Egg
  (295, 29500, 108, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Exploud - Endeavor - Egg
  (295, 29500, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Exploud - Extrasensory - Egg
  (295, 29500, 326, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Exploud - Hammer Arm - Egg
  (295, 29500, 359, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Exploud - Circle Throw - Egg
  (295, 29500, 509, 18, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Exploud - Disarming Voice - Egg
  (295, 29500, 574, 18, NULL, 5, NULL, NULL, NULL, NULL, 81);
