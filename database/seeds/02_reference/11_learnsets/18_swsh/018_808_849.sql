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
-- Sword / Shield learnsets for default forms, species 808-849.
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
  -- Meltan - Thunder Shock - Level 1
  (808, 80800, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meltan - Harden - Level 1
  (808, 80800, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meltan - Tail Whip - Level 8
  (808, 80800, 39, 18, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Meltan - Headbutt - Level 16
  (808, 80800, 29, 18, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Meltan - Thunder Wave - Level 24
  (808, 80800, 86, 18, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Meltan - Acid Armor - Level 32
  (808, 80800, 151, 18, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Meltan - Flash Cannon - Level 40
  (808, 80800, 430, 18, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Meltan - Thunder Wave - TM14
  (808, 80800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 8),
  -- Meltan - Rest - TM21
  (808, 80800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 9),
  -- Meltan - Snore - TM24
  (808, 80800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 10),
  -- Meltan - Protect - TM25
  (808, 80800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 11),
  -- Meltan - Facade - TM39
  (808, 80800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 12),
  -- Meltan - Round - TM76
  (808, 80800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 13),
  -- Meltan - Thunderbolt - TR08
  (808, 80800, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 14),
  -- Meltan - Substitute - TR20
  (808, 80800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 15),
  -- Meltan - Endure - TR26
  (808, 80800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 16),
  -- Meltan - Sleep Talk - TR27
  (808, 80800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 17),
  -- Meltan - Iron Defense - TR46
  (808, 80800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 18),
  -- Meltan - Gyro Ball - TR52
  (808, 80800, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 19),
  -- Meltan - Flash Cannon - TR70
  (808, 80800, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 20),
  -- Meltan - Steel Beam - Tutor
  (808, 80800, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 21),
  -- Melmetal - Thunder Punch - Level 1
  (809, 80900, 9, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Melmetal - Headbutt - Level 1
  (809, 80900, 29, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Melmetal - Tail Whip - Level 1
  (809, 80900, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Melmetal - Thunder Shock - Level 1
  (809, 80900, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Melmetal - Harden - Level 1
  (809, 80900, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Melmetal - Thunder Wave - Level 24
  (809, 80900, 86, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Melmetal - Acid Armor - Level 32
  (809, 80900, 151, 18, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Melmetal - Flash Cannon - Level 40
  (809, 80900, 430, 18, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Melmetal - Mega Punch - Level 48
  (809, 80900, 5, 18, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Melmetal - Protect - Level 56
  (809, 80900, 182, 18, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Melmetal - Discharge - Level 64
  (809, 80900, 435, 18, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Melmetal - Dynamic Punch - Level 72
  (809, 80900, 223, 18, NULL, 1, 72, NULL, NULL, NULL, 12),
  -- Melmetal - Superpower - Level 80
  (809, 80900, 276, 18, NULL, 1, 80, NULL, NULL, NULL, 13),
  -- Melmetal - Double Iron Bash - Level 88
  (809, 80900, 742, 18, NULL, 1, 88, NULL, NULL, NULL, 14),
  -- Melmetal - Hyper Beam - Level 96
  (809, 80900, 63, 18, NULL, 1, 96, NULL, NULL, NULL, 15),
  -- Melmetal - Thunder Punch - Evolution
  (809, 80900, 9, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Melmetal - Mega Punch - TM00
  (809, 80900, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Melmetal - Mega Kick - TM01
  (809, 80900, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Melmetal - Ice Punch - TM04
  (809, 80900, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Melmetal - Thunder Punch - TM05
  (809, 80900, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Melmetal - Hyper Beam - TM08
  (809, 80900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Melmetal - Giga Impact - TM09
  (809, 80900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Melmetal - Solar Beam - TM11
  (809, 80900, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 23),
  -- Melmetal - Thunder Wave - TM14
  (809, 80900, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 24),
  -- Melmetal - Self-Destruct - TM20
  (809, 80900, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 25),
  -- Melmetal - Rest - TM21
  (809, 80900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Melmetal - Rock Slide - TM22
  (809, 80900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 27),
  -- Melmetal - Snore - TM24
  (809, 80900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Melmetal - Protect - TM25
  (809, 80900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Melmetal - Facade - TM39
  (809, 80900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Melmetal - Brick Break - TM43
  (809, 80900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Melmetal - Rock Tomb - TM48
  (809, 80900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Melmetal - Round - TM76
  (809, 80900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Melmetal - Electric Terrain - TM90
  (809, 80900, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 34),
  -- Melmetal - Brutal Swing - TM97
  (809, 80900, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 35),
  -- Melmetal - Body Slam - TR01
  (809, 80900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 36),
  -- Melmetal - Ice Beam - TR05
  (809, 80900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 37),
  -- Melmetal - Thunderbolt - TR08
  (809, 80900, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 38),
  -- Melmetal - Thunder - TR09
  (809, 80900, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 39),
  -- Melmetal - Earthquake - TR10
  (809, 80900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 40),
  -- Melmetal - Substitute - TR20
  (809, 80900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Melmetal - Endure - TR26
  (809, 80900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Melmetal - Sleep Talk - TR27
  (809, 80900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Melmetal - Superpower - TR39
  (809, 80900, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 44),
  -- Melmetal - Iron Defense - TR46
  (809, 80900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 45),
  -- Melmetal - Gyro Ball - TR52
  (809, 80900, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 46),
  -- Melmetal - Flash Cannon - TR70
  (809, 80900, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 47),
  -- Melmetal - Iron Head - TR74
  (809, 80900, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 48),
  -- Melmetal - Heavy Slam - TR79
  (809, 80900, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 49),
  -- Melmetal - Darkest Lariat - TR93
  (809, 80900, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 50),
  -- Melmetal - High Horsepower - TR94
  (809, 80900, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 51),
  -- Melmetal - Body Press - TR99
  (809, 80900, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 52),
  -- Melmetal - Steel Beam - Tutor
  (809, 80900, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 53),
  -- Grookey - Scratch - Level 1
  (810, 81000, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grookey - Growl - Level 1
  (810, 81000, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grookey - Branch Poke - Level 6
  (810, 81000, 785, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Grookey - Taunt - Level 8
  (810, 81000, 269, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Grookey - Razor Leaf - Level 12
  (810, 81000, 75, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Grookey - Screech - Level 17
  (810, 81000, 103, 18, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Grookey - Knock Off - Level 20
  (810, 81000, 282, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Grookey - Slam - Level 24
  (810, 81000, 21, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Grookey - Uproar - Level 28
  (810, 81000, 253, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Grookey - Wood Hammer - Level 32
  (810, 81000, 452, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Grookey - Endeavor - Level 36
  (810, 81000, 283, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Grookey - Mega Punch - TM00
  (810, 81000, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 12),
  -- Grookey - Mega Kick - TM01
  (810, 81000, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 13),
  -- Grookey - Magical Leaf - TM10
  (810, 81000, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 14),
  -- Grookey - Solar Beam - TM11
  (810, 81000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 15),
  -- Grookey - Solar Blade - TM12
  (810, 81000, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 16),
  -- Grookey - Screech - TM16
  (810, 81000, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 17),
  -- Grookey - Rest - TM21
  (810, 81000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Grookey - Snore - TM24
  (810, 81000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Grookey - Protect - TM25
  (810, 81000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Grookey - Giga Drain - TM28
  (810, 81000, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 21),
  -- Grookey - Attract - TM31
  (810, 81000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Grookey - Sunny Day - TM34
  (810, 81000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 23),
  -- Grookey - Facade - TM39
  (810, 81000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Grookey - Swift - TM40
  (810, 81000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 25),
  -- Grookey - U-turn - TM56
  (810, 81000, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 26),
  -- Grookey - Assurance - TM58
  (810, 81000, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 27),
  -- Grookey - Fling - TM59
  (810, 81000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 28),
  -- Grookey - Drain Punch - TM63
  (810, 81000, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 29),
  -- Grookey - Round - TM76
  (810, 81000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 30),
  -- Grookey - Acrobatics - TM78
  (810, 81000, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 31),
  -- Grookey - False Swipe - TM94
  (810, 81000, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 32),
  -- Grookey - Swords Dance - TR00
  (810, 81000, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 33),
  -- Grookey - Low Kick - TR07
  (810, 81000, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 34),
  -- Grookey - Focus Energy - TR13
  (810, 81000, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 35),
  -- Grookey - Substitute - TR20
  (810, 81000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Grookey - Endure - TR26
  (810, 81000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Grookey - Sleep Talk - TR27
  (810, 81000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Grookey - Uproar - TR35
  (810, 81000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 39),
  -- Grookey - Taunt - TR37
  (810, 81000, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 40),
  -- Grookey - Energy Ball - TR65
  (810, 81000, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 41),
  -- Grookey - Grass Knot - TR77
  (810, 81000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 42),
  -- Grookey - Work Up - TR85
  (810, 81000, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 43),
  -- Grookey - Strength - Egg
  (810, 81000, 70, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Grookey - Leech Seed - Egg
  (810, 81000, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Grookey - Growth - Egg
  (810, 81000, 74, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Grookey - Fake Out - Egg
  (810, 81000, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Grookey - Nature Power - Egg
  (810, 81000, 267, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Grookey - Hammer Arm - Egg
  (810, 81000, 359, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Grookey - Worry Seed - Egg
  (810, 81000, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Grookey - Grass Pledge - Tutor
  (810, 81000, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 51),
  -- Thwackey - Scratch - Level 1
  (811, 81100, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Thwackey - Growl - Level 1
  (811, 81100, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Thwackey - Taunt - Level 1
  (811, 81100, 269, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Thwackey - Double Hit - Level 1
  (811, 81100, 458, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Thwackey - Branch Poke - Level 1
  (811, 81100, 785, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Thwackey - Razor Leaf - Level 12
  (811, 81100, 75, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Thwackey - Screech - Level 19
  (811, 81100, 103, 18, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Thwackey - Knock Off - Level 24
  (811, 81100, 282, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Thwackey - Slam - Level 30
  (811, 81100, 21, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Thwackey - Uproar - Level 36
  (811, 81100, 253, 18, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Thwackey - Wood Hammer - Level 42
  (811, 81100, 452, 18, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Thwackey - Endeavor - Level 48
  (811, 81100, 283, 18, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Thwackey - Double Hit - Evolution
  (811, 81100, 458, 18, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Thwackey - Mega Punch - TM00
  (811, 81100, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 14),
  -- Thwackey - Mega Kick - TM01
  (811, 81100, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 15),
  -- Thwackey - Magical Leaf - TM10
  (811, 81100, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 16),
  -- Thwackey - Solar Beam - TM11
  (811, 81100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Thwackey - Solar Blade - TM12
  (811, 81100, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 18),
  -- Thwackey - Screech - TM16
  (811, 81100, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 19),
  -- Thwackey - Rest - TM21
  (811, 81100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Thwackey - Snore - TM24
  (811, 81100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Thwackey - Protect - TM25
  (811, 81100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Thwackey - Giga Drain - TM28
  (811, 81100, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 23),
  -- Thwackey - Attract - TM31
  (811, 81100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Thwackey - Sunny Day - TM34
  (811, 81100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Thwackey - Facade - TM39
  (811, 81100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Thwackey - Swift - TM40
  (811, 81100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Thwackey - U-turn - TM56
  (811, 81100, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 28),
  -- Thwackey - Assurance - TM58
  (811, 81100, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 29),
  -- Thwackey - Fling - TM59
  (811, 81100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 30),
  -- Thwackey - Drain Punch - TM63
  (811, 81100, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 31),
  -- Thwackey - Round - TM76
  (811, 81100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Thwackey - Acrobatics - TM78
  (811, 81100, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 33),
  -- Thwackey - False Swipe - TM94
  (811, 81100, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 34),
  -- Thwackey - Swords Dance - TR00
  (811, 81100, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 35),
  -- Thwackey - Low Kick - TR07
  (811, 81100, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 36),
  -- Thwackey - Focus Energy - TR13
  (811, 81100, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 37),
  -- Thwackey - Substitute - TR20
  (811, 81100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Thwackey - Endure - TR26
  (811, 81100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Thwackey - Sleep Talk - TR27
  (811, 81100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Thwackey - Uproar - TR35
  (811, 81100, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 41),
  -- Thwackey - Taunt - TR37
  (811, 81100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 42),
  -- Thwackey - Energy Ball - TR65
  (811, 81100, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 43),
  -- Thwackey - Grass Knot - TR77
  (811, 81100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 44),
  -- Thwackey - Work Up - TR85
  (811, 81100, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 45),
  -- Thwackey - Grass Pledge - Tutor
  (811, 81100, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 46),
  -- Rillaboom - Scratch - Level 1
  (812, 81200, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rillaboom - Growl - Level 1
  (812, 81200, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rillaboom - Taunt - Level 1
  (812, 81200, 269, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rillaboom - Double Hit - Level 1
  (812, 81200, 458, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rillaboom - Noble Roar - Level 1
  (812, 81200, 568, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rillaboom - Grassy Terrain - Level 1
  (812, 81200, 580, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rillaboom - Drum Beating - Level 1
  (812, 81200, 778, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rillaboom - Branch Poke - Level 1
  (812, 81200, 785, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Rillaboom - Razor Leaf - Level 12
  (812, 81200, 75, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Rillaboom - Screech - Level 19
  (812, 81200, 103, 18, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Rillaboom - Knock Off - Level 24
  (812, 81200, 282, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Rillaboom - Slam - Level 30
  (812, 81200, 21, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Rillaboom - Uproar - Level 38
  (812, 81200, 253, 18, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Rillaboom - Wood Hammer - Level 46
  (812, 81200, 452, 18, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Rillaboom - Endeavor - Level 54
  (812, 81200, 283, 18, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Rillaboom - Boomburst - Level 62
  (812, 81200, 586, 18, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Rillaboom - Drum Beating - Evolution
  (812, 81200, 778, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Rillaboom - Mega Punch - TM00
  (812, 81200, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 18),
  -- Rillaboom - Mega Kick - TM01
  (812, 81200, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 19),
  -- Rillaboom - Hyper Beam - TM08
  (812, 81200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Rillaboom - Giga Impact - TM09
  (812, 81200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Rillaboom - Magical Leaf - TM10
  (812, 81200, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 22),
  -- Rillaboom - Solar Beam - TM11
  (812, 81200, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 23),
  -- Rillaboom - Solar Blade - TM12
  (812, 81200, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 24),
  -- Rillaboom - Screech - TM16
  (812, 81200, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 25),
  -- Rillaboom - Rest - TM21
  (812, 81200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Rillaboom - Snore - TM24
  (812, 81200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Rillaboom - Protect - TM25
  (812, 81200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Rillaboom - Scary Face - TM26
  (812, 81200, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 29),
  -- Rillaboom - Giga Drain - TM28
  (812, 81200, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 30),
  -- Rillaboom - Attract - TM31
  (812, 81200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 31),
  -- Rillaboom - Sunny Day - TM34
  (812, 81200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Rillaboom - Facade - TM39
  (812, 81200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Rillaboom - Swift - TM40
  (812, 81200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 34),
  -- Rillaboom - Brick Break - TM43
  (812, 81200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 35),
  -- Rillaboom - Bullet Seed - TM50
  (812, 81200, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 36),
  -- Rillaboom - Mud Shot - TM53
  (812, 81200, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 37),
  -- Rillaboom - U-turn - TM56
  (812, 81200, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 38),
  -- Rillaboom - Assurance - TM58
  (812, 81200, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 39),
  -- Rillaboom - Fling - TM59
  (812, 81200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Rillaboom - Drain Punch - TM63
  (812, 81200, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 41),
  -- Rillaboom - Round - TM76
  (812, 81200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 42),
  -- Rillaboom - Acrobatics - TM78
  (812, 81200, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 43),
  -- Rillaboom - Bulldoze - TM81
  (812, 81200, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 44),
  -- Rillaboom - Snarl - TM85
  (812, 81200, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 45),
  -- Rillaboom - Grassy Terrain - TM88
  (812, 81200, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 46),
  -- Rillaboom - False Swipe - TM94
  (812, 81200, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 47),
  -- Rillaboom - Brutal Swing - TM97
  (812, 81200, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 48),
  -- Rillaboom - Stomping Tantrum - TM98
  (812, 81200, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 49),
  -- Rillaboom - Swords Dance - TR00
  (812, 81200, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 50),
  -- Rillaboom - Body Slam - TR01
  (812, 81200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 51),
  -- Rillaboom - Low Kick - TR07
  (812, 81200, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 52),
  -- Rillaboom - Earthquake - TR10
  (812, 81200, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 53),
  -- Rillaboom - Focus Energy - TR13
  (812, 81200, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 54),
  -- Rillaboom - Substitute - TR20
  (812, 81200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 55),
  -- Rillaboom - Endure - TR26
  (812, 81200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 56),
  -- Rillaboom - Sleep Talk - TR27
  (812, 81200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 57),
  -- Rillaboom - Uproar - TR35
  (812, 81200, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 58),
  -- Rillaboom - Taunt - TR37
  (812, 81200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 59),
  -- Rillaboom - Superpower - TR39
  (812, 81200, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 60),
  -- Rillaboom - Hyper Voice - TR42
  (812, 81200, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 61),
  -- Rillaboom - Bulk Up - TR48
  (812, 81200, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 62),
  -- Rillaboom - Focus Blast - TR64
  (812, 81200, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 63),
  -- Rillaboom - Energy Ball - TR65
  (812, 81200, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 64),
  -- Rillaboom - Earth Power - TR67
  (812, 81200, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 65),
  -- Rillaboom - Leaf Storm - TR71
  (812, 81200, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 66),
  -- Rillaboom - Grass Knot - TR77
  (812, 81200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 67),
  -- Rillaboom - Work Up - TR85
  (812, 81200, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 68),
  -- Rillaboom - Darkest Lariat - TR93
  (812, 81200, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 69),
  -- Rillaboom - High Horsepower - TR94
  (812, 81200, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 70),
  -- Rillaboom - Body Press - TR99
  (812, 81200, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 71),
  -- Rillaboom - Frenzy Plant - Tutor
  (812, 81200, 338, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 72),
  -- Rillaboom - Grass Pledge - Tutor
  (812, 81200, 520, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 73),
  -- Scorbunny - Tackle - Level 1
  (813, 81300, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scorbunny - Growl - Level 1
  (813, 81300, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scorbunny - Ember - Level 6
  (813, 81300, 52, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Scorbunny - Quick Attack - Level 8
  (813, 81300, 98, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Scorbunny - Double Kick - Level 12
  (813, 81300, 24, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Scorbunny - Flame Charge - Level 17
  (813, 81300, 488, 18, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Scorbunny - Agility - Level 20
  (813, 81300, 97, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Scorbunny - Headbutt - Level 24
  (813, 81300, 29, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Scorbunny - Counter - Level 28
  (813, 81300, 68, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Scorbunny - Bounce - Level 32
  (813, 81300, 340, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Scorbunny - Double-Edge - Level 36
  (813, 81300, 38, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Scorbunny - Mega Kick - TM01
  (813, 81300, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 12),
  -- Scorbunny - Rest - TM21
  (813, 81300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 13),
  -- Scorbunny - Snore - TM24
  (813, 81300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 14),
  -- Scorbunny - Protect - TM25
  (813, 81300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 15),
  -- Scorbunny - Attract - TM31
  (813, 81300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 16),
  -- Scorbunny - Sunny Day - TM34
  (813, 81300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 17),
  -- Scorbunny - Facade - TM39
  (813, 81300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 18),
  -- Scorbunny - Swift - TM40
  (813, 81300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 19),
  -- Scorbunny - Bounce - TM52
  (813, 81300, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 20),
  -- Scorbunny - Mud Shot - TM53
  (813, 81300, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 21),
  -- Scorbunny - U-turn - TM56
  (813, 81300, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 22),
  -- Scorbunny - Assurance - TM58
  (813, 81300, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 23),
  -- Scorbunny - Fire Fang - TM68
  (813, 81300, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 24),
  -- Scorbunny - Low Sweep - TM75
  (813, 81300, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 25),
  -- Scorbunny - Round - TM76
  (813, 81300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 26),
  -- Scorbunny - Acrobatics - TM78
  (813, 81300, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 27),
  -- Scorbunny - Flamethrower - TR02
  (813, 81300, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 28),
  -- Scorbunny - Low Kick - TR07
  (813, 81300, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 29),
  -- Scorbunny - Agility - TR12
  (813, 81300, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 30),
  -- Scorbunny - Focus Energy - TR13
  (813, 81300, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 31),
  -- Scorbunny - Fire Blast - TR15
  (813, 81300, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 32),
  -- Scorbunny - Substitute - TR20
  (813, 81300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 33),
  -- Scorbunny - Reversal - TR21
  (813, 81300, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 34),
  -- Scorbunny - Endure - TR26
  (813, 81300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Scorbunny - Sleep Talk - TR27
  (813, 81300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Scorbunny - Baton Pass - TR29
  (813, 81300, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 37),
  -- Scorbunny - Heat Wave - TR36
  (813, 81300, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 38),
  -- Scorbunny - Taunt - TR37
  (813, 81300, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 39),
  -- Scorbunny - Blaze Kick - TR41
  (813, 81300, 299, 18, NULL, 4, NULL, NULL, 18004041, NULL, 40),
  -- Scorbunny - Overheat - TR43
  (813, 81300, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 41),
  -- Scorbunny - Gunk Shot - TR73
  (813, 81300, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 42),
  -- Scorbunny - Electro Ball - TR80
  (813, 81300, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 43),
  -- Scorbunny - Ally Switch - TR83
  (813, 81300, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 44),
  -- Scorbunny - Work Up - TR85
  (813, 81300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 45),
  -- Scorbunny - Sand Attack - Egg
  (813, 81300, 28, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Scorbunny - High Jump Kick - Egg
  (813, 81300, 136, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Scorbunny - Super Fang - Egg
  (813, 81300, 162, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Scorbunny - Sucker Punch - Egg
  (813, 81300, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Scorbunny - Fire Pledge - Tutor
  (813, 81300, 519, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 50),
  -- Raboot - Tackle - Level 1
  (814, 81400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raboot - Growl - Level 1
  (814, 81400, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raboot - Ember - Level 1
  (814, 81400, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raboot - Quick Attack - Level 1
  (814, 81400, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raboot - Double Kick - Level 12
  (814, 81400, 24, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Raboot - Flame Charge - Level 19
  (814, 81400, 488, 18, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Raboot - Agility - Level 24
  (814, 81400, 97, 18, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Raboot - Headbutt - Level 30
  (814, 81400, 29, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Raboot - Counter - Level 36
  (814, 81400, 68, 18, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Raboot - Bounce - Level 42
  (814, 81400, 340, 18, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Raboot - Double-Edge - Level 48
  (814, 81400, 38, 18, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Raboot - Mega Kick - TM01
  (814, 81400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 12),
  -- Raboot - Rest - TM21
  (814, 81400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 13),
  -- Raboot - Snore - TM24
  (814, 81400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 14),
  -- Raboot - Protect - TM25
  (814, 81400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 15),
  -- Raboot - Attract - TM31
  (814, 81400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 16),
  -- Raboot - Sunny Day - TM34
  (814, 81400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 17),
  -- Raboot - Facade - TM39
  (814, 81400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 18),
  -- Raboot - Swift - TM40
  (814, 81400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 19),
  -- Raboot - Bounce - TM52
  (814, 81400, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 20),
  -- Raboot - Mud Shot - TM53
  (814, 81400, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 21),
  -- Raboot - U-turn - TM56
  (814, 81400, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 22),
  -- Raboot - Assurance - TM58
  (814, 81400, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 23),
  -- Raboot - Fire Fang - TM68
  (814, 81400, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 24),
  -- Raboot - Low Sweep - TM75
  (814, 81400, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 25),
  -- Raboot - Round - TM76
  (814, 81400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 26),
  -- Raboot - Acrobatics - TM78
  (814, 81400, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 27),
  -- Raboot - Flamethrower - TR02
  (814, 81400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 28),
  -- Raboot - Low Kick - TR07
  (814, 81400, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 29),
  -- Raboot - Agility - TR12
  (814, 81400, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 30),
  -- Raboot - Focus Energy - TR13
  (814, 81400, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 31),
  -- Raboot - Fire Blast - TR15
  (814, 81400, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 32),
  -- Raboot - Substitute - TR20
  (814, 81400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 33),
  -- Raboot - Reversal - TR21
  (814, 81400, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 34),
  -- Raboot - Endure - TR26
  (814, 81400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Raboot - Sleep Talk - TR27
  (814, 81400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Raboot - Baton Pass - TR29
  (814, 81400, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 37),
  -- Raboot - Heat Wave - TR36
  (814, 81400, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 38),
  -- Raboot - Taunt - TR37
  (814, 81400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 39),
  -- Raboot - Blaze Kick - TR41
  (814, 81400, 299, 18, NULL, 4, NULL, NULL, 18004041, NULL, 40),
  -- Raboot - Overheat - TR43
  (814, 81400, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 41),
  -- Raboot - Bulk Up - TR48
  (814, 81400, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 42),
  -- Raboot - Flare Blitz - TR55
  (814, 81400, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 43),
  -- Raboot - Gunk Shot - TR73
  (814, 81400, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 44),
  -- Raboot - Electro Ball - TR80
  (814, 81400, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 45),
  -- Raboot - Ally Switch - TR83
  (814, 81400, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 46),
  -- Raboot - Work Up - TR85
  (814, 81400, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 47),
  -- Raboot - Fire Pledge - Tutor
  (814, 81400, 519, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 48),
  -- Cinderace - Tackle - Level 1
  (815, 81500, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cinderace - Growl - Level 1
  (815, 81500, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cinderace - Ember - Level 1
  (815, 81500, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cinderace - Quick Attack - Level 1
  (815, 81500, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cinderace - Feint - Level 1
  (815, 81500, 364, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cinderace - Pyro Ball - Level 1
  (815, 81500, 780, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Cinderace - Double Kick - Level 12
  (815, 81500, 24, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Cinderace - Flame Charge - Level 19
  (815, 81500, 488, 18, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Cinderace - Agility - Level 24
  (815, 81500, 97, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Cinderace - Headbutt - Level 30
  (815, 81500, 29, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Cinderace - Counter - Level 38
  (815, 81500, 68, 18, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Cinderace - Bounce - Level 46
  (815, 81500, 340, 18, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Cinderace - Double-Edge - Level 54
  (815, 81500, 38, 18, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Cinderace - Court Change - Level 62
  (815, 81500, 756, 18, NULL, 1, 62, NULL, NULL, NULL, 14),
  -- Cinderace - Pyro Ball - Evolution
  (815, 81500, 780, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Cinderace - Mega Kick - TM01
  (815, 81500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Cinderace - Fire Punch - TM03
  (815, 81500, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 17),
  -- Cinderace - Hyper Beam - TM08
  (815, 81500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Cinderace - Giga Impact - TM09
  (815, 81500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Cinderace - Fire Spin - TM13
  (815, 81500, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 20),
  -- Cinderace - Rest - TM21
  (815, 81500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Cinderace - Snore - TM24
  (815, 81500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Cinderace - Protect - TM25
  (815, 81500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Cinderace - Attract - TM31
  (815, 81500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Cinderace - Sunny Day - TM34
  (815, 81500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Cinderace - Facade - TM39
  (815, 81500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Cinderace - Swift - TM40
  (815, 81500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Cinderace - Helping Hand - TM41
  (815, 81500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Cinderace - Revenge - TM42
  (815, 81500, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 29),
  -- Cinderace - Bounce - TM52
  (815, 81500, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 30),
  -- Cinderace - Mud Shot - TM53
  (815, 81500, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 31),
  -- Cinderace - U-turn - TM56
  (815, 81500, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 32),
  -- Cinderace - Assurance - TM58
  (815, 81500, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 33),
  -- Cinderace - Fire Fang - TM68
  (815, 81500, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 34),
  -- Cinderace - Low Sweep - TM75
  (815, 81500, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 35),
  -- Cinderace - Round - TM76
  (815, 81500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Cinderace - Acrobatics - TM78
  (815, 81500, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 37),
  -- Cinderace - Snarl - TM85
  (815, 81500, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 38),
  -- Cinderace - Flamethrower - TR02
  (815, 81500, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 39),
  -- Cinderace - Low Kick - TR07
  (815, 81500, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 40),
  -- Cinderace - Agility - TR12
  (815, 81500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 41),
  -- Cinderace - Focus Energy - TR13
  (815, 81500, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 42),
  -- Cinderace - Fire Blast - TR15
  (815, 81500, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 43),
  -- Cinderace - Substitute - TR20
  (815, 81500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Cinderace - Reversal - TR21
  (815, 81500, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 45),
  -- Cinderace - Endure - TR26
  (815, 81500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Cinderace - Sleep Talk - TR27
  (815, 81500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Cinderace - Baton Pass - TR29
  (815, 81500, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 48),
  -- Cinderace - Shadow Ball - TR33
  (815, 81500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 49),
  -- Cinderace - Heat Wave - TR36
  (815, 81500, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 50),
  -- Cinderace - Taunt - TR37
  (815, 81500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 51),
  -- Cinderace - Blaze Kick - TR41
  (815, 81500, 299, 18, NULL, 4, NULL, NULL, 18004041, NULL, 52),
  -- Cinderace - Overheat - TR43
  (815, 81500, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 53),
  -- Cinderace - Bulk Up - TR48
  (815, 81500, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 54),
  -- Cinderace - Flare Blitz - TR55
  (815, 81500, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 55),
  -- Cinderace - Focus Blast - TR64
  (815, 81500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 56),
  -- Cinderace - Zen Headbutt - TR69
  (815, 81500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 57),
  -- Cinderace - Gunk Shot - TR73
  (815, 81500, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 58),
  -- Cinderace - Iron Head - TR74
  (815, 81500, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 59),
  -- Cinderace - Electro Ball - TR80
  (815, 81500, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 60),
  -- Cinderace - Ally Switch - TR83
  (815, 81500, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 61),
  -- Cinderace - Work Up - TR85
  (815, 81500, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 62),
  -- Cinderace - Blast Burn - Tutor
  (815, 81500, 307, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 63),
  -- Cinderace - Fire Pledge - Tutor
  (815, 81500, 519, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 64),
  -- Sobble - Pound - Level 1
  (816, 81600, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sobble - Growl - Level 1
  (816, 81600, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sobble - Water Gun - Level 6
  (816, 81600, 55, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Sobble - Bind - Level 8
  (816, 81600, 20, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Sobble - Water Pulse - Level 12
  (816, 81600, 352, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Sobble - Tearful Look - Level 17
  (816, 81600, 715, 18, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Sobble - Sucker Punch - Level 20
  (816, 81600, 389, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Sobble - U-turn - Level 24
  (816, 81600, 369, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Sobble - Liquidation - Level 28
  (816, 81600, 710, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Sobble - Soak - Level 32
  (816, 81600, 487, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Sobble - Rain Dance - Level 36
  (816, 81600, 240, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Sobble - Light Screen - TM17
  (816, 81600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 12),
  -- Sobble - Reflect - TM18
  (816, 81600, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 13),
  -- Sobble - Safeguard - TM19
  (816, 81600, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 14),
  -- Sobble - Rest - TM21
  (816, 81600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Sobble - Snore - TM24
  (816, 81600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Sobble - Protect - TM25
  (816, 81600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Sobble - Attract - TM31
  (816, 81600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 18),
  -- Sobble - Rain Dance - TM33
  (816, 81600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 19),
  -- Sobble - Whirlpool - TM36
  (816, 81600, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 20),
  -- Sobble - Facade - TM39
  (816, 81600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 21),
  -- Sobble - Swift - TM40
  (816, 81600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 22),
  -- Sobble - Dive - TM45
  (816, 81600, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 23),
  -- Sobble - Weather Ball - TM46
  (816, 81600, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 24),
  -- Sobble - Bounce - TM52
  (816, 81600, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 25),
  -- Sobble - Mud Shot - TM53
  (816, 81600, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 26),
  -- Sobble - U-turn - TM56
  (816, 81600, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 27),
  -- Sobble - Round - TM76
  (816, 81600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Sobble - Surf - TR04
  (816, 81600, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 29),
  -- Sobble - Substitute - TR20
  (816, 81600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 30),
  -- Sobble - Endure - TR26
  (816, 81600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 31),
  -- Sobble - Sleep Talk - TR27
  (816, 81600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 32),
  -- Sobble - Baton Pass - TR29
  (816, 81600, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 33),
  -- Sobble - Muddy Water - TR45
  (816, 81600, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 34),
  -- Sobble - Work Up - TR85
  (816, 81600, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 35),
  -- Sobble - Liquidation - TR98
  (816, 81600, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 36),
  -- Sobble - Mist - Egg
  (816, 81600, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Sobble - Double Team - Egg
  (816, 81600, 104, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Sobble - Haze - Egg
  (816, 81600, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Sobble - Aqua Ring - Egg
  (816, 81600, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Sobble - Ice Shard - Egg
  (816, 81600, 420, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Sobble - Aqua Jet - Egg
  (816, 81600, 453, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Sobble - Fell Stinger - Egg
  (816, 81600, 565, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Sobble - Water Pledge - Tutor
  (816, 81600, 518, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 44),
  -- Drizzile - Pound - Level 1
  (817, 81700, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drizzile - Bind - Level 1
  (817, 81700, 20, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drizzile - Growl - Level 1
  (817, 81700, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Drizzile - Water Gun - Level 1
  (817, 81700, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Drizzile - Water Pulse - Level 12
  (817, 81700, 352, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Drizzile - Tearful Look - Level 19
  (817, 81700, 715, 18, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Drizzile - Sucker Punch - Level 24
  (817, 81700, 389, 18, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Drizzile - U-turn - Level 30
  (817, 81700, 369, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Drizzile - Liquidation - Level 36
  (817, 81700, 710, 18, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Drizzile - Soak - Level 42
  (817, 81700, 487, 18, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Drizzile - Rain Dance - Level 48
  (817, 81700, 240, 18, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Drizzile - Light Screen - TM17
  (817, 81700, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 12),
  -- Drizzile - Reflect - TM18
  (817, 81700, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 13),
  -- Drizzile - Safeguard - TM19
  (817, 81700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 14),
  -- Drizzile - Rest - TM21
  (817, 81700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Drizzile - Snore - TM24
  (817, 81700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Drizzile - Protect - TM25
  (817, 81700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Drizzile - Attract - TM31
  (817, 81700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 18),
  -- Drizzile - Rain Dance - TM33
  (817, 81700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 19),
  -- Drizzile - Whirlpool - TM36
  (817, 81700, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 20),
  -- Drizzile - Facade - TM39
  (817, 81700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 21),
  -- Drizzile - Swift - TM40
  (817, 81700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 22),
  -- Drizzile - Dive - TM45
  (817, 81700, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 23),
  -- Drizzile - Weather Ball - TM46
  (817, 81700, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 24),
  -- Drizzile - Bounce - TM52
  (817, 81700, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 25),
  -- Drizzile - Mud Shot - TM53
  (817, 81700, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 26),
  -- Drizzile - U-turn - TM56
  (817, 81700, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 27),
  -- Drizzile - Fling - TM59
  (817, 81700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 28),
  -- Drizzile - Round - TM76
  (817, 81700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Drizzile - Surf - TR04
  (817, 81700, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 30),
  -- Drizzile - Substitute - TR20
  (817, 81700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 31),
  -- Drizzile - Endure - TR26
  (817, 81700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 32),
  -- Drizzile - Sleep Talk - TR27
  (817, 81700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 33),
  -- Drizzile - Baton Pass - TR29
  (817, 81700, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 34),
  -- Drizzile - Muddy Water - TR45
  (817, 81700, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 35),
  -- Drizzile - Work Up - TR85
  (817, 81700, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 36),
  -- Drizzile - Liquidation - TR98
  (817, 81700, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 37),
  -- Drizzile - Water Pledge - Tutor
  (817, 81700, 518, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 38),
  -- Inteleon - Pound - Level 1
  (818, 81800, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Inteleon - Bind - Level 1
  (818, 81800, 20, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Inteleon - Growl - Level 1
  (818, 81800, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Inteleon - Water Gun - Level 1
  (818, 81800, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Inteleon - Acrobatics - Level 1
  (818, 81800, 512, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Inteleon - Snipe Shot - Level 1
  (818, 81800, 745, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Inteleon - Water Pulse - Level 12
  (818, 81800, 352, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Inteleon - Tearful Look - Level 19
  (818, 81800, 715, 18, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Inteleon - Sucker Punch - Level 24
  (818, 81800, 389, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Inteleon - U-turn - Level 30
  (818, 81800, 369, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Inteleon - Liquidation - Level 38
  (818, 81800, 710, 18, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Inteleon - Soak - Level 46
  (818, 81800, 487, 18, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Inteleon - Rain Dance - Level 54
  (818, 81800, 240, 18, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Inteleon - Hydro Pump - Level 62
  (818, 81800, 56, 18, NULL, 1, 62, NULL, NULL, NULL, 14),
  -- Inteleon - Snipe Shot - Evolution
  (818, 81800, 745, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Inteleon - Hyper Beam - TM08
  (818, 81800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Inteleon - Giga Impact - TM09
  (818, 81800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Inteleon - Light Screen - TM17
  (818, 81800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 18),
  -- Inteleon - Reflect - TM18
  (818, 81800, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 19),
  -- Inteleon - Safeguard - TM19
  (818, 81800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 20),
  -- Inteleon - Rest - TM21
  (818, 81800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Inteleon - Snore - TM24
  (818, 81800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Inteleon - Protect - TM25
  (818, 81800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Inteleon - Icy Wind - TM27
  (818, 81800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 24),
  -- Inteleon - Attract - TM31
  (818, 81800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Inteleon - Rain Dance - TM33
  (818, 81800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Inteleon - Whirlpool - TM36
  (818, 81800, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 27),
  -- Inteleon - Facade - TM39
  (818, 81800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Inteleon - Swift - TM40
  (818, 81800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 29),
  -- Inteleon - Dive - TM45
  (818, 81800, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 30),
  -- Inteleon - Weather Ball - TM46
  (818, 81800, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 31),
  -- Inteleon - Icicle Spear - TM51
  (818, 81800, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 32),
  -- Inteleon - Bounce - TM52
  (818, 81800, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 33),
  -- Inteleon - Mud Shot - TM53
  (818, 81800, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 34),
  -- Inteleon - U-turn - TM56
  (818, 81800, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 35),
  -- Inteleon - Fling - TM59
  (818, 81800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Inteleon - Round - TM76
  (818, 81800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Inteleon - Acrobatics - TM78
  (818, 81800, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 38),
  -- Inteleon - Air Slash - TM95
  (818, 81800, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 39),
  -- Inteleon - Breaking Swipe - TM99
  (818, 81800, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 40),
  -- Inteleon - Swords Dance - TR00
  (818, 81800, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 41),
  -- Inteleon - Hydro Pump - TR03
  (818, 81800, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 42),
  -- Inteleon - Surf - TR04
  (818, 81800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 43),
  -- Inteleon - Ice Beam - TR05
  (818, 81800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 44),
  -- Inteleon - Blizzard - TR06
  (818, 81800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 45),
  -- Inteleon - Agility - TR12
  (818, 81800, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 46),
  -- Inteleon - Focus Energy - TR13
  (818, 81800, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 47),
  -- Inteleon - Metronome - TR14
  (818, 81800, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 48),
  -- Inteleon - Waterfall - TR16
  (818, 81800, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 49),
  -- Inteleon - Substitute - TR20
  (818, 81800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 50),
  -- Inteleon - Endure - TR26
  (818, 81800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 51),
  -- Inteleon - Sleep Talk - TR27
  (818, 81800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 52),
  -- Inteleon - Baton Pass - TR29
  (818, 81800, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 53),
  -- Inteleon - Shadow Ball - TR33
  (818, 81800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 54),
  -- Inteleon - Muddy Water - TR45
  (818, 81800, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 55),
  -- Inteleon - Dark Pulse - TR58
  (818, 81800, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 56),
  -- Inteleon - Scald - TR84
  (818, 81800, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 57),
  -- Inteleon - Work Up - TR85
  (818, 81800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 58),
  -- Inteleon - Liquidation - TR98
  (818, 81800, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 59),
  -- Inteleon - Hydro Cannon - Tutor
  (818, 81800, 308, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 60),
  -- Inteleon - Water Pledge - Tutor
  (818, 81800, 518, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 61),
  -- Skwovet - Tackle - Level 1
  (819, 81900, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skwovet - Tail Whip - Level 1
  (819, 81900, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skwovet - Bite - Level 5
  (819, 81900, 44, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Skwovet - Stuff Cheeks - Level 10
  (819, 81900, 747, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Skwovet - Stockpile - Level 15
  (819, 81900, 254, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Skwovet - Spit Up - Level 15
  (819, 81900, 255, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Skwovet - Swallow - Level 15
  (819, 81900, 256, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Skwovet - Body Slam - Level 20
  (819, 81900, 34, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Skwovet - Rest - Level 25
  (819, 81900, 156, 18, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Skwovet - Counter - Level 30
  (819, 81900, 68, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Skwovet - Bullet Seed - Level 35
  (819, 81900, 331, 18, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Skwovet - Super Fang - Level 40
  (819, 81900, 162, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Skwovet - Belch - Level 45
  (819, 81900, 562, 18, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Skwovet - Dig - TM15
  (819, 81900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 14),
  -- Skwovet - Rest - TM21
  (819, 81900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Skwovet - Thief - TM23
  (819, 81900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 16),
  -- Skwovet - Snore - TM24
  (819, 81900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Skwovet - Protect - TM25
  (819, 81900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Skwovet - Attract - TM31
  (819, 81900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Skwovet - Facade - TM39
  (819, 81900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 20),
  -- Skwovet - Bullet Seed - TM50
  (819, 81900, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 21),
  -- Skwovet - Mud Shot - TM53
  (819, 81900, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 22),
  -- Skwovet - Payback - TM57
  (819, 81900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 23),
  -- Skwovet - Assurance - TM58
  (819, 81900, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 24),
  -- Skwovet - Fling - TM59
  (819, 81900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 25),
  -- Skwovet - Round - TM76
  (819, 81900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 26),
  -- Skwovet - Tail Slap - TM84
  (819, 81900, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 27),
  -- Skwovet - Brutal Swing - TM97
  (819, 81900, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 28),
  -- Skwovet - Body Slam - TR01
  (819, 81900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 29),
  -- Skwovet - Amnesia - TR17
  (819, 81900, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 30),
  -- Skwovet - Substitute - TR20
  (819, 81900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 31),
  -- Skwovet - Endure - TR26
  (819, 81900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 32),
  -- Skwovet - Sleep Talk - TR27
  (819, 81900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 33),
  -- Skwovet - Iron Tail - TR31
  (819, 81900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 34),
  -- Skwovet - Crunch - TR32
  (819, 81900, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 35),
  -- Skwovet - Uproar - TR35
  (819, 81900, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 36),
  -- Skwovet - Hyper Voice - TR42
  (819, 81900, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 37),
  -- Skwovet - Gyro Ball - TR52
  (819, 81900, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 38),
  -- Skwovet - Seed Bomb - TR59
  (819, 81900, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 39),
  -- Skwovet - Defense Curl - Egg
  (819, 81900, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Skwovet - Belly Drum - Egg
  (819, 81900, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Skwovet - Rollout - Egg
  (819, 81900, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Skwovet - Last Resort - Egg
  (819, 81900, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Greedent - Tackle - Level 1
  (820, 82000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Greedent - Tail Whip - Level 1
  (820, 82000, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Greedent - Bite - Level 1
  (820, 82000, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Greedent - Covet - Level 1
  (820, 82000, 343, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Greedent - Stuff Cheeks - Level 1
  (820, 82000, 747, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Greedent - Stockpile - Level 15
  (820, 82000, 254, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Greedent - Spit Up - Level 15
  (820, 82000, 255, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Greedent - Swallow - Level 15
  (820, 82000, 256, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Greedent - Body Slam - Level 20
  (820, 82000, 34, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Greedent - Rest - Level 27
  (820, 82000, 156, 18, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Greedent - Counter - Level 34
  (820, 82000, 68, 18, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Greedent - Bullet Seed - Level 41
  (820, 82000, 331, 18, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Greedent - Super Fang - Level 48
  (820, 82000, 162, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Greedent - Belch - Level 55
  (820, 82000, 562, 18, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Greedent - Covet - Evolution
  (820, 82000, 343, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Greedent - Hyper Beam - TM08
  (820, 82000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Greedent - Giga Impact - TM09
  (820, 82000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Greedent - Dig - TM15
  (820, 82000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Greedent - Rest - TM21
  (820, 82000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Greedent - Thief - TM23
  (820, 82000, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 20),
  -- Greedent - Snore - TM24
  (820, 82000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Greedent - Protect - TM25
  (820, 82000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Greedent - Attract - TM31
  (820, 82000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Greedent - Facade - TM39
  (820, 82000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Greedent - Bullet Seed - TM50
  (820, 82000, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 25),
  -- Greedent - Mud Shot - TM53
  (820, 82000, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 26),
  -- Greedent - Payback - TM57
  (820, 82000, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 27),
  -- Greedent - Assurance - TM58
  (820, 82000, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 28),
  -- Greedent - Fling - TM59
  (820, 82000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 29),
  -- Greedent - Thunder Fang - TM66
  (820, 82000, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 30),
  -- Greedent - Ice Fang - TM67
  (820, 82000, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 31),
  -- Greedent - Fire Fang - TM68
  (820, 82000, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 32),
  -- Greedent - Round - TM76
  (820, 82000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Greedent - Tail Slap - TM84
  (820, 82000, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 34),
  -- Greedent - Brutal Swing - TM97
  (820, 82000, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 35),
  -- Greedent - Stomping Tantrum - TM98
  (820, 82000, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 36),
  -- Greedent - Swords Dance - TR00
  (820, 82000, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 37),
  -- Greedent - Body Slam - TR01
  (820, 82000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 38),
  -- Greedent - Earthquake - TR10
  (820, 82000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 39),
  -- Greedent - Amnesia - TR17
  (820, 82000, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 40),
  -- Greedent - Substitute - TR20
  (820, 82000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Greedent - Endure - TR26
  (820, 82000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Greedent - Sleep Talk - TR27
  (820, 82000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Greedent - Iron Tail - TR31
  (820, 82000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 44),
  -- Greedent - Crunch - TR32
  (820, 82000, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 45),
  -- Greedent - Uproar - TR35
  (820, 82000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 46),
  -- Greedent - Superpower - TR39
  (820, 82000, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 47),
  -- Greedent - Hyper Voice - TR42
  (820, 82000, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 48),
  -- Greedent - Gyro Ball - TR52
  (820, 82000, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 49),
  -- Greedent - Seed Bomb - TR59
  (820, 82000, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 50),
  -- Greedent - Wild Charge - TR86
  (820, 82000, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 51),
  -- Greedent - Psychic Fangs - TR97
  (820, 82000, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 52),
  -- Greedent - Body Press - TR99
  (820, 82000, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 53),
  -- Rookidee - Leer - Level 1
  (821, 82100, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rookidee - Peck - Level 1
  (821, 82100, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rookidee - Power Trip - Level 4
  (821, 82100, 681, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Rookidee - Hone Claws - Level 8
  (821, 82100, 468, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Rookidee - Fury Attack - Level 12
  (821, 82100, 31, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Rookidee - Pluck - Level 16
  (821, 82100, 365, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Rookidee - Taunt - Level 20
  (821, 82100, 269, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Rookidee - Scary Face - Level 24
  (821, 82100, 184, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Rookidee - Drill Peck - Level 28
  (821, 82100, 65, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Rookidee - Swagger - Level 32
  (821, 82100, 207, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Rookidee - Brave Bird - Level 36
  (821, 82100, 413, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Rookidee - Fly - TM06
  (821, 82100, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 12),
  -- Rookidee - Rest - TM21
  (821, 82100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 13),
  -- Rookidee - Thief - TM23
  (821, 82100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 14),
  -- Rookidee - Snore - TM24
  (821, 82100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 15),
  -- Rookidee - Protect - TM25
  (821, 82100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 16),
  -- Rookidee - Scary Face - TM26
  (821, 82100, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 17),
  -- Rookidee - Attract - TM31
  (821, 82100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 18),
  -- Rookidee - Facade - TM39
  (821, 82100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 19),
  -- Rookidee - Swift - TM40
  (821, 82100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 20),
  -- Rookidee - Revenge - TM42
  (821, 82100, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 21),
  -- Rookidee - Fake Tears - TM47
  (821, 82100, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 22),
  -- Rookidee - U-turn - TM56
  (821, 82100, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 23),
  -- Rookidee - Payback - TM57
  (821, 82100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 24),
  -- Rookidee - Assurance - TM58
  (821, 82100, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 25),
  -- Rookidee - Round - TM76
  (821, 82100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 26),
  -- Rookidee - Retaliate - TM79
  (821, 82100, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 27),
  -- Rookidee - Air Slash - TM95
  (821, 82100, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 28),
  -- Rookidee - Agility - TR12
  (821, 82100, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 29),
  -- Rookidee - Focus Energy - TR13
  (821, 82100, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 30),
  -- Rookidee - Substitute - TR20
  (821, 82100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 31),
  -- Rookidee - Reversal - TR21
  (821, 82100, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 32),
  -- Rookidee - Endure - TR26
  (821, 82100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 33),
  -- Rookidee - Sleep Talk - TR27
  (821, 82100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 34),
  -- Rookidee - Taunt - TR37
  (821, 82100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 35),
  -- Rookidee - Brave Bird - TR66
  (821, 82100, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 36),
  -- Rookidee - Nasty Plot - TR68
  (821, 82100, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 37),
  -- Rookidee - Work Up - TR85
  (821, 82100, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 38),
  -- Rookidee - Sand Attack - Egg
  (821, 82100, 28, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Rookidee - Sky Attack - Egg
  (821, 82100, 143, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Rookidee - Spite - Egg
  (821, 82100, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Rookidee - Rock Smash - Egg
  (821, 82100, 249, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Rookidee - Roost - Egg
  (821, 82100, 355, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Rookidee - Tailwind - Egg
  (821, 82100, 366, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Rookidee - Defog - Egg
  (821, 82100, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Corvisquire - Leer - Level 1
  (822, 82200, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corvisquire - Peck - Level 1
  (822, 82200, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Corvisquire - Hone Claws - Level 1
  (822, 82200, 468, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Corvisquire - Power Trip - Level 1
  (822, 82200, 681, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Corvisquire - Fury Attack - Level 12
  (822, 82200, 31, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Corvisquire - Pluck - Level 16
  (822, 82200, 365, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Corvisquire - Taunt - Level 22
  (822, 82200, 269, 18, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Corvisquire - Scary Face - Level 28
  (822, 82200, 184, 18, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Corvisquire - Drill Peck - Level 34
  (822, 82200, 65, 18, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Corvisquire - Swagger - Level 40
  (822, 82200, 207, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Corvisquire - Brave Bird - Level 46
  (822, 82200, 413, 18, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Corvisquire - Fly - TM06
  (822, 82200, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 12),
  -- Corvisquire - Rest - TM21
  (822, 82200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 13),
  -- Corvisquire - Thief - TM23
  (822, 82200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 14),
  -- Corvisquire - Snore - TM24
  (822, 82200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 15),
  -- Corvisquire - Protect - TM25
  (822, 82200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 16),
  -- Corvisquire - Scary Face - TM26
  (822, 82200, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 17),
  -- Corvisquire - Attract - TM31
  (822, 82200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 18),
  -- Corvisquire - Facade - TM39
  (822, 82200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 19),
  -- Corvisquire - Swift - TM40
  (822, 82200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 20),
  -- Corvisquire - Revenge - TM42
  (822, 82200, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 21),
  -- Corvisquire - Fake Tears - TM47
  (822, 82200, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 22),
  -- Corvisquire - U-turn - TM56
  (822, 82200, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 23),
  -- Corvisquire - Payback - TM57
  (822, 82200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 24),
  -- Corvisquire - Assurance - TM58
  (822, 82200, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 25),
  -- Corvisquire - Round - TM76
  (822, 82200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 26),
  -- Corvisquire - Retaliate - TM79
  (822, 82200, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 27),
  -- Corvisquire - Air Slash - TM95
  (822, 82200, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 28),
  -- Corvisquire - Agility - TR12
  (822, 82200, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 29),
  -- Corvisquire - Focus Energy - TR13
  (822, 82200, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 30),
  -- Corvisquire - Substitute - TR20
  (822, 82200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 31),
  -- Corvisquire - Reversal - TR21
  (822, 82200, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 32),
  -- Corvisquire - Endure - TR26
  (822, 82200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 33),
  -- Corvisquire - Sleep Talk - TR27
  (822, 82200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 34),
  -- Corvisquire - Taunt - TR37
  (822, 82200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 35),
  -- Corvisquire - Brave Bird - TR66
  (822, 82200, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 36),
  -- Corvisquire - Nasty Plot - TR68
  (822, 82200, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 37),
  -- Corvisquire - Work Up - TR85
  (822, 82200, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 38),
  -- Corviknight - Leer - Level 1
  (823, 82300, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corviknight - Peck - Level 1
  (823, 82300, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Corviknight - Steel Wing - Level 1
  (823, 82300, 211, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Corviknight - Metal Sound - Level 1
  (823, 82300, 319, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Corviknight - Iron Defense - Level 1
  (823, 82300, 334, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Corviknight - Hone Claws - Level 1
  (823, 82300, 468, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Corviknight - Power Trip - Level 1
  (823, 82300, 681, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Corviknight - Fury Attack - Level 12
  (823, 82300, 31, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Corviknight - Pluck - Level 16
  (823, 82300, 365, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Corviknight - Taunt - Level 22
  (823, 82300, 269, 18, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Corviknight - Scary Face - Level 28
  (823, 82300, 184, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Corviknight - Drill Peck - Level 34
  (823, 82300, 65, 18, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Corviknight - Swagger - Level 42
  (823, 82300, 207, 18, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Corviknight - Brave Bird - Level 50
  (823, 82300, 413, 18, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Corviknight - Steel Wing - Evolution
  (823, 82300, 211, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Corviknight - Fly - TM06
  (823, 82300, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 16),
  -- Corviknight - Hyper Beam - TM08
  (823, 82300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Corviknight - Giga Impact - TM09
  (823, 82300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Corviknight - Screech - TM16
  (823, 82300, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 19),
  -- Corviknight - Light Screen - TM17
  (823, 82300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Corviknight - Reflect - TM18
  (823, 82300, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Corviknight - Rest - TM21
  (823, 82300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Corviknight - Thief - TM23
  (823, 82300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Corviknight - Snore - TM24
  (823, 82300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Corviknight - Protect - TM25
  (823, 82300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Corviknight - Scary Face - TM26
  (823, 82300, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Corviknight - Steel Wing - TM30
  (823, 82300, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 27),
  -- Corviknight - Attract - TM31
  (823, 82300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Corviknight - Facade - TM39
  (823, 82300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Corviknight - Swift - TM40
  (823, 82300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 30),
  -- Corviknight - Revenge - TM42
  (823, 82300, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 31),
  -- Corviknight - Fake Tears - TM47
  (823, 82300, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 32),
  -- Corviknight - U-turn - TM56
  (823, 82300, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 33),
  -- Corviknight - Payback - TM57
  (823, 82300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 34),
  -- Corviknight - Assurance - TM58
  (823, 82300, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 35),
  -- Corviknight - Round - TM76
  (823, 82300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Corviknight - Retaliate - TM79
  (823, 82300, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 37),
  -- Corviknight - Air Slash - TM95
  (823, 82300, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 38),
  -- Corviknight - Body Slam - TR01
  (823, 82300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 39),
  -- Corviknight - Agility - TR12
  (823, 82300, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 40),
  -- Corviknight - Focus Energy - TR13
  (823, 82300, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 41),
  -- Corviknight - Substitute - TR20
  (823, 82300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Corviknight - Reversal - TR21
  (823, 82300, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 43),
  -- Corviknight - Endure - TR26
  (823, 82300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Corviknight - Sleep Talk - TR27
  (823, 82300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Corviknight - Taunt - TR37
  (823, 82300, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 46),
  -- Corviknight - Iron Defense - TR46
  (823, 82300, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 47),
  -- Corviknight - Bulk Up - TR48
  (823, 82300, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 48),
  -- Corviknight - Brave Bird - TR66
  (823, 82300, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 49),
  -- Corviknight - Nasty Plot - TR68
  (823, 82300, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 50),
  -- Corviknight - Flash Cannon - TR70
  (823, 82300, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 51),
  -- Corviknight - Iron Head - TR74
  (823, 82300, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 52),
  -- Corviknight - Heavy Slam - TR79
  (823, 82300, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 53),
  -- Corviknight - Work Up - TR85
  (823, 82300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 54),
  -- Corviknight - Hurricane - TR89
  (823, 82300, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 55),
  -- Corviknight - Body Press - TR99
  (823, 82300, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 56),
  -- Corviknight - Steel Beam - Tutor
  (823, 82300, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 57),
  -- Blipbug - Struggle Bug - Level 1
  (824, 82400, 522, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blipbug - Supersonic - Egg
  (824, 82400, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 2),
  -- Blipbug - Recover - Egg
  (824, 82400, 105, 18, NULL, 5, NULL, NULL, NULL, NULL, 3),
  -- Blipbug - Sticky Web - Egg
  (824, 82400, 564, 18, NULL, 5, NULL, NULL, NULL, NULL, 4),
  -- Blipbug - Infestation - Egg
  (824, 82400, 611, 18, NULL, 5, NULL, NULL, NULL, NULL, 5),
  -- Dottler - Confusion - Level 1
  (825, 82500, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dottler - Light Screen - Level 1
  (825, 82500, 113, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dottler - Reflect - Level 1
  (825, 82500, 115, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dottler - Struggle Bug - Level 1
  (825, 82500, 522, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dottler - Confusion - Evolution
  (825, 82500, 93, 18, NULL, 7, NULL, NULL, NULL, NULL, 5),
  -- Dottler - Light Screen - Evolution
  (825, 82500, 113, 18, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Dottler - Reflect - Evolution
  (825, 82500, 115, 18, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Dottler - Solar Beam - TM11
  (825, 82500, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 8),
  -- Dottler - Light Screen - TM17
  (825, 82500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 9),
  -- Dottler - Reflect - TM18
  (825, 82500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 10),
  -- Dottler - Safeguard - TM19
  (825, 82500, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 11),
  -- Dottler - Rest - TM21
  (825, 82500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 12),
  -- Dottler - Snore - TM24
  (825, 82500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 13),
  -- Dottler - Protect - TM25
  (825, 82500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 14),
  -- Dottler - Attract - TM31
  (825, 82500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 15),
  -- Dottler - Facade - TM39
  (825, 82500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 16),
  -- Dottler - Helping Hand - TM41
  (825, 82500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 17),
  -- Dottler - Imprison - TM44
  (825, 82500, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 18),
  -- Dottler - Payback - TM57
  (825, 82500, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 19),
  -- Dottler - Power Swap - TM60
  (825, 82500, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 20),
  -- Dottler - Guard Swap - TM61
  (825, 82500, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 21),
  -- Dottler - Trick Room - TM70
  (825, 82500, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 22),
  -- Dottler - Wonder Room - TM71
  (825, 82500, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 23),
  -- Dottler - Magic Room - TM72
  (825, 82500, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 24),
  -- Dottler - Round - TM76
  (825, 82500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 25),
  -- Dottler - Psychic Terrain - TM91
  (825, 82500, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 26),
  -- Dottler - Psychic - TR11
  (825, 82500, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 27),
  -- Dottler - Leech Life - TR18
  (825, 82500, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 28),
  -- Dottler - Substitute - TR20
  (825, 82500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 29),
  -- Dottler - Psyshock - TR25
  (825, 82500, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 30),
  -- Dottler - Endure - TR26
  (825, 82500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 31),
  -- Dottler - Sleep Talk - TR27
  (825, 82500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 32),
  -- Dottler - Shadow Ball - TR33
  (825, 82500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 33),
  -- Dottler - Future Sight - TR34
  (825, 82500, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 34),
  -- Dottler - Trick - TR38
  (825, 82500, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 35),
  -- Dottler - Skill Swap - TR40
  (825, 82500, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 36),
  -- Dottler - Iron Defense - TR46
  (825, 82500, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 37),
  -- Dottler - Calm Mind - TR49
  (825, 82500, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 38),
  -- Dottler - Bug Buzz - TR61
  (825, 82500, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 39),
  -- Dottler - Energy Ball - TR65
  (825, 82500, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 40),
  -- Dottler - Zen Headbutt - TR69
  (825, 82500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 41),
  -- Dottler - Stored Power - TR82
  (825, 82500, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 42),
  -- Dottler - Ally Switch - TR83
  (825, 82500, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 43),
  -- Dottler - Body Press - TR99
  (825, 82500, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 44),
  -- Orbeetle - Confusion - Level 1
  (826, 82600, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Orbeetle - Light Screen - Level 1
  (826, 82600, 113, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Orbeetle - Reflect - Level 1
  (826, 82600, 115, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Orbeetle - Struggle Bug - Level 1
  (826, 82600, 522, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Orbeetle - Confuse Ray - Level 4
  (826, 82600, 109, 18, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Orbeetle - Magic Coat - Level 8
  (826, 82600, 277, 18, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Orbeetle - Agility - Level 12
  (826, 82600, 97, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Orbeetle - Psybeam - Level 16
  (826, 82600, 60, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Orbeetle - Hypnosis - Level 20
  (826, 82600, 95, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Orbeetle - Ally Switch - Level 24
  (826, 82600, 502, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Orbeetle - Bug Buzz - Level 28
  (826, 82600, 405, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Orbeetle - Mirror Coat - Level 32
  (826, 82600, 243, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Orbeetle - Psychic - Level 36
  (826, 82600, 94, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Orbeetle - After You - Level 40
  (826, 82600, 495, 18, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Orbeetle - Calm Mind - Level 44
  (826, 82600, 347, 18, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Orbeetle - Psychic Terrain - Level 48
  (826, 82600, 678, 18, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Orbeetle - Hyper Beam - TM08
  (826, 82600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Orbeetle - Giga Impact - TM09
  (826, 82600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Orbeetle - Solar Beam - TM11
  (826, 82600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 19),
  -- Orbeetle - Light Screen - TM17
  (826, 82600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Orbeetle - Reflect - TM18
  (826, 82600, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Orbeetle - Safeguard - TM19
  (826, 82600, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Orbeetle - Rest - TM21
  (826, 82600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Orbeetle - Snore - TM24
  (826, 82600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Orbeetle - Protect - TM25
  (826, 82600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Orbeetle - Giga Drain - TM28
  (826, 82600, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 26),
  -- Orbeetle - Attract - TM31
  (826, 82600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Orbeetle - Facade - TM39
  (826, 82600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Orbeetle - Helping Hand - TM41
  (826, 82600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 29),
  -- Orbeetle - Imprison - TM44
  (826, 82600, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 30),
  -- Orbeetle - U-turn - TM56
  (826, 82600, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 31),
  -- Orbeetle - Payback - TM57
  (826, 82600, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 32),
  -- Orbeetle - Power Swap - TM60
  (826, 82600, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 33),
  -- Orbeetle - Guard Swap - TM61
  (826, 82600, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 34),
  -- Orbeetle - Psycho Cut - TM69
  (826, 82600, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 35),
  -- Orbeetle - Trick Room - TM70
  (826, 82600, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 36),
  -- Orbeetle - Wonder Room - TM71
  (826, 82600, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 37),
  -- Orbeetle - Magic Room - TM72
  (826, 82600, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 38),
  -- Orbeetle - Round - TM76
  (826, 82600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Orbeetle - Psychic Terrain - TM91
  (826, 82600, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 40),
  -- Orbeetle - Psychic - TR11
  (826, 82600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 41),
  -- Orbeetle - Agility - TR12
  (826, 82600, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 42),
  -- Orbeetle - Leech Life - TR18
  (826, 82600, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 43),
  -- Orbeetle - Substitute - TR20
  (826, 82600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Orbeetle - Psyshock - TR25
  (826, 82600, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 45),
  -- Orbeetle - Endure - TR26
  (826, 82600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Orbeetle - Sleep Talk - TR27
  (826, 82600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Orbeetle - Baton Pass - TR29
  (826, 82600, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 48),
  -- Orbeetle - Shadow Ball - TR33
  (826, 82600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 49),
  -- Orbeetle - Future Sight - TR34
  (826, 82600, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 50),
  -- Orbeetle - Trick - TR38
  (826, 82600, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 51),
  -- Orbeetle - Skill Swap - TR40
  (826, 82600, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 52),
  -- Orbeetle - Iron Defense - TR46
  (826, 82600, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 53),
  -- Orbeetle - Calm Mind - TR49
  (826, 82600, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 54),
  -- Orbeetle - Bug Buzz - TR61
  (826, 82600, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 55),
  -- Orbeetle - Energy Ball - TR65
  (826, 82600, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 56),
  -- Orbeetle - Zen Headbutt - TR69
  (826, 82600, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 57),
  -- Orbeetle - Stored Power - TR82
  (826, 82600, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 58),
  -- Orbeetle - Ally Switch - TR83
  (826, 82600, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 59),
  -- Orbeetle - Body Press - TR99
  (826, 82600, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 60),
  -- Nickit - Tail Whip - Level 1
  (827, 82700, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nickit - Quick Attack - Level 1
  (827, 82700, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nickit - Beat Up - Level 4
  (827, 82700, 251, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Nickit - Hone Claws - Level 8
  (827, 82700, 468, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Nickit - Snarl - Level 12
  (827, 82700, 555, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Nickit - Assurance - Level 16
  (827, 82700, 372, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Nickit - Nasty Plot - Level 20
  (827, 82700, 417, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Nickit - Sucker Punch - Level 24
  (827, 82700, 389, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Nickit - Night Slash - Level 28
  (827, 82700, 400, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Nickit - Tail Slap - Level 32
  (827, 82700, 541, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Nickit - Foul Play - Level 36
  (827, 82700, 492, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Nickit - Dig - TM15
  (827, 82700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 12),
  -- Nickit - Screech - TM16
  (827, 82700, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 13),
  -- Nickit - Rest - TM21
  (827, 82700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 14),
  -- Nickit - Thief - TM23
  (827, 82700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 15),
  -- Nickit - Snore - TM24
  (827, 82700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Nickit - Protect - TM25
  (827, 82700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Nickit - Attract - TM31
  (827, 82700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 18),
  -- Nickit - Beat Up - TM37
  (827, 82700, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 19),
  -- Nickit - Facade - TM39
  (827, 82700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 20),
  -- Nickit - Swift - TM40
  (827, 82700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 21),
  -- Nickit - Fake Tears - TM47
  (827, 82700, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 22),
  -- Nickit - Mud Shot - TM53
  (827, 82700, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 23),
  -- Nickit - Assurance - TM58
  (827, 82700, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 24),
  -- Nickit - Round - TM76
  (827, 82700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 25),
  -- Nickit - Tail Slap - TM84
  (827, 82700, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 26),
  -- Nickit - Snarl - TM85
  (827, 82700, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 27),
  -- Nickit - Agility - TR12
  (827, 82700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 28),
  -- Nickit - Substitute - TR20
  (827, 82700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 29),
  -- Nickit - Endure - TR26
  (827, 82700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 30),
  -- Nickit - Sleep Talk - TR27
  (827, 82700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 31),
  -- Nickit - Baton Pass - TR29
  (827, 82700, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 32),
  -- Nickit - Taunt - TR37
  (827, 82700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 33),
  -- Nickit - Nasty Plot - TR68
  (827, 82700, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 34),
  -- Nickit - Foul Play - TR81
  (827, 82700, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 35),
  -- Nickit - Play Rough - TR90
  (827, 82700, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 36),
  -- Nickit - Torment - Egg
  (827, 82700, 259, 18, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Nickit - Knock Off - Egg
  (827, 82700, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Nickit - Howl - Egg
  (827, 82700, 336, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Nickit - Quick Guard - Egg
  (827, 82700, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Thievul - Tail Whip - Level 1
  (828, 82800, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Thievul - Quick Attack - Level 1
  (828, 82800, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Thievul - Thief - Level 1
  (828, 82800, 168, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Thievul - Beat Up - Level 1
  (828, 82800, 251, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Thievul - Hone Claws - Level 1
  (828, 82800, 468, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Thievul - Snarl - Level 12
  (828, 82800, 555, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Thievul - Assurance - Level 16
  (828, 82800, 372, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Thievul - Nasty Plot - Level 22
  (828, 82800, 417, 18, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Thievul - Sucker Punch - Level 28
  (828, 82800, 389, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Thievul - Night Slash - Level 34
  (828, 82800, 400, 18, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Thievul - Tail Slap - Level 40
  (828, 82800, 541, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Thievul - Foul Play - Level 46
  (828, 82800, 492, 18, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Thievul - Parting Shot - Level 52
  (828, 82800, 575, 18, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Thievul - Thief - Evolution
  (828, 82800, 168, 18, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Thievul - Hyper Beam - TM08
  (828, 82800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Thievul - Giga Impact - TM09
  (828, 82800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Thievul - Dig - TM15
  (828, 82800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 17),
  -- Thievul - Screech - TM16
  (828, 82800, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 18),
  -- Thievul - Rest - TM21
  (828, 82800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Thievul - Thief - TM23
  (828, 82800, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 20),
  -- Thievul - Snore - TM24
  (828, 82800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Thievul - Protect - TM25
  (828, 82800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Thievul - Attract - TM31
  (828, 82800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Thievul - Beat Up - TM37
  (828, 82800, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 24),
  -- Thievul - Facade - TM39
  (828, 82800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Thievul - Swift - TM40
  (828, 82800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 26),
  -- Thievul - Fake Tears - TM47
  (828, 82800, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 27),
  -- Thievul - Mud Shot - TM53
  (828, 82800, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 28),
  -- Thievul - U-turn - TM56
  (828, 82800, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 29),
  -- Thievul - Assurance - TM58
  (828, 82800, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 30),
  -- Thievul - Shadow Claw - TM65
  (828, 82800, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 31),
  -- Thievul - Thunder Fang - TM66
  (828, 82800, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 32),
  -- Thievul - Ice Fang - TM67
  (828, 82800, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 33),
  -- Thievul - Fire Fang - TM68
  (828, 82800, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 34),
  -- Thievul - Round - TM76
  (828, 82800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Thievul - Acrobatics - TM78
  (828, 82800, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 36),
  -- Thievul - Tail Slap - TM84
  (828, 82800, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 37),
  -- Thievul - Snarl - TM85
  (828, 82800, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 38),
  -- Thievul - Psychic - TR11
  (828, 82800, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 39),
  -- Thievul - Agility - TR12
  (828, 82800, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 40),
  -- Thievul - Substitute - TR20
  (828, 82800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Thievul - Endure - TR26
  (828, 82800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Thievul - Sleep Talk - TR27
  (828, 82800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Thievul - Baton Pass - TR29
  (828, 82800, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 44),
  -- Thievul - Crunch - TR32
  (828, 82800, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 45),
  -- Thievul - Shadow Ball - TR33
  (828, 82800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 46),
  -- Thievul - Taunt - TR37
  (828, 82800, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Thievul - Dark Pulse - TR58
  (828, 82800, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 48),
  -- Thievul - Nasty Plot - TR68
  (828, 82800, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 49),
  -- Thievul - Grass Knot - TR77
  (828, 82800, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 50),
  -- Thievul - Foul Play - TR81
  (828, 82800, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 51),
  -- Thievul - Play Rough - TR90
  (828, 82800, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 52),
  -- Gossifleur - Sing - Level 1
  (829, 82900, 47, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gossifleur - Leafage - Level 1
  (829, 82900, 670, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gossifleur - Rapid Spin - Level 4
  (829, 82900, 229, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Gossifleur - Sweet Scent - Level 8
  (829, 82900, 230, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Gossifleur - Razor Leaf - Level 12
  (829, 82900, 75, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gossifleur - Round - Level 16
  (829, 82900, 496, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gossifleur - Leaf Tornado - Level 21
  (829, 82900, 536, 18, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Gossifleur - Synthesis - Level 24
  (829, 82900, 235, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Gossifleur - Hyper Voice - Level 28
  (829, 82900, 304, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Gossifleur - Aromatherapy - Level 32
  (829, 82900, 312, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Gossifleur - Leaf Storm - Level 36
  (829, 82900, 437, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Gossifleur - Magical Leaf - TM10
  (829, 82900, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 12),
  -- Gossifleur - Solar Beam - TM11
  (829, 82900, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 13),
  -- Gossifleur - Light Screen - TM17
  (829, 82900, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 14),
  -- Gossifleur - Rest - TM21
  (829, 82900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Gossifleur - Snore - TM24
  (829, 82900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Gossifleur - Protect - TM25
  (829, 82900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Gossifleur - Giga Drain - TM28
  (829, 82900, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 18),
  -- Gossifleur - Charm - TM29
  (829, 82900, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 19),
  -- Gossifleur - Attract - TM31
  (829, 82900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Gossifleur - Sunny Day - TM34
  (829, 82900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 21),
  -- Gossifleur - Facade - TM39
  (829, 82900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Gossifleur - Helping Hand - TM41
  (829, 82900, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 23),
  -- Gossifleur - Bullet Seed - TM50
  (829, 82900, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 24),
  -- Gossifleur - Round - TM76
  (829, 82900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 25),
  -- Gossifleur - Grassy Terrain - TM88
  (829, 82900, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 26),
  -- Gossifleur - Substitute - TR20
  (829, 82900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 27),
  -- Gossifleur - Endure - TR26
  (829, 82900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 28),
  -- Gossifleur - Sleep Talk - TR27
  (829, 82900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 29),
  -- Gossifleur - Hyper Voice - TR42
  (829, 82900, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 30),
  -- Gossifleur - Energy Ball - TR65
  (829, 82900, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 31),
  -- Gossifleur - Leaf Storm - TR71
  (829, 82900, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 32),
  -- Gossifleur - Grass Knot - TR77
  (829, 82900, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 33),
  -- Gossifleur - Pollen Puff - TR96
  (829, 82900, 676, 18, NULL, 4, NULL, NULL, 18004096, NULL, 34),
  -- Gossifleur - Leech Seed - Egg
  (829, 82900, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Gossifleur - Growth - Egg
  (829, 82900, 74, 18, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Gossifleur - Poison Powder - Egg
  (829, 82900, 77, 18, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Gossifleur - Stun Spore - Egg
  (829, 82900, 78, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Gossifleur - Sleep Powder - Egg
  (829, 82900, 79, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Gossifleur - Worry Seed - Egg
  (829, 82900, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Eldegoss - Sing - Level 1
  (830, 83000, 47, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eldegoss - Cotton Spore - Level 1
  (830, 83000, 178, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eldegoss - Rapid Spin - Level 1
  (830, 83000, 229, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Eldegoss - Sweet Scent - Level 1
  (830, 83000, 230, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Eldegoss - Leafage - Level 1
  (830, 83000, 670, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Eldegoss - Razor Leaf - Level 12
  (830, 83000, 75, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Eldegoss - Round - Level 16
  (830, 83000, 496, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Eldegoss - Leaf Tornado - Level 23
  (830, 83000, 536, 18, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Eldegoss - Synthesis - Level 28
  (830, 83000, 235, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Eldegoss - Hyper Voice - Level 34
  (830, 83000, 304, 18, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Eldegoss - Aromatherapy - Level 40
  (830, 83000, 312, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Eldegoss - Leaf Storm - Level 46
  (830, 83000, 437, 18, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Eldegoss - Cotton Guard - Level 52
  (830, 83000, 538, 18, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Eldegoss - Cotton Spore - Evolution
  (830, 83000, 178, 18, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Eldegoss - Hyper Beam - TM08
  (830, 83000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Eldegoss - Giga Impact - TM09
  (830, 83000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Eldegoss - Magical Leaf - TM10
  (830, 83000, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 17),
  -- Eldegoss - Solar Beam - TM11
  (830, 83000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 18),
  -- Eldegoss - Light Screen - TM17
  (830, 83000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Eldegoss - Rest - TM21
  (830, 83000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Eldegoss - Snore - TM24
  (830, 83000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Eldegoss - Protect - TM25
  (830, 83000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Eldegoss - Giga Drain - TM28
  (830, 83000, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 23),
  -- Eldegoss - Charm - TM29
  (830, 83000, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 24),
  -- Eldegoss - Attract - TM31
  (830, 83000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Eldegoss - Sunny Day - TM34
  (830, 83000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Eldegoss - Facade - TM39
  (830, 83000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Eldegoss - Helping Hand - TM41
  (830, 83000, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Eldegoss - Weather Ball - TM46
  (830, 83000, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 29),
  -- Eldegoss - Bullet Seed - TM50
  (830, 83000, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 30),
  -- Eldegoss - Round - TM76
  (830, 83000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Eldegoss - Grassy Terrain - TM88
  (830, 83000, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 32),
  -- Eldegoss - Substitute - TR20
  (830, 83000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 33),
  -- Eldegoss - Endure - TR26
  (830, 83000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 34),
  -- Eldegoss - Sleep Talk - TR27
  (830, 83000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 35),
  -- Eldegoss - Hyper Voice - TR42
  (830, 83000, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 36),
  -- Eldegoss - Seed Bomb - TR59
  (830, 83000, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 37),
  -- Eldegoss - Energy Ball - TR65
  (830, 83000, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 38),
  -- Eldegoss - Leaf Storm - TR71
  (830, 83000, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 39),
  -- Eldegoss - Grass Knot - TR77
  (830, 83000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 40),
  -- Eldegoss - Pollen Puff - TR96
  (830, 83000, 676, 18, NULL, 4, NULL, NULL, 18004096, NULL, 41),
  -- Wooloo - Tackle - Level 1
  (831, 83100, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wooloo - Growl - Level 1
  (831, 83100, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wooloo - Defense Curl - Level 4
  (831, 83100, 111, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Wooloo - Copycat - Level 8
  (831, 83100, 383, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Wooloo - Guard Split - Level 12
  (831, 83100, 470, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Wooloo - Double Kick - Level 16
  (831, 83100, 24, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Wooloo - Headbutt - Level 21
  (831, 83100, 29, 18, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Wooloo - Take Down - Level 25
  (831, 83100, 36, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Wooloo - Guard Swap - Level 28
  (831, 83100, 385, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Wooloo - Reversal - Level 32
  (831, 83100, 179, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Wooloo - Cotton Guard - Level 36
  (831, 83100, 538, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Wooloo - Double-Edge - Level 40
  (831, 83100, 38, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Wooloo - Thunder Wave - TM14
  (831, 83100, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 13),
  -- Wooloo - Rest - TM21
  (831, 83100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 14),
  -- Wooloo - Snore - TM24
  (831, 83100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 15),
  -- Wooloo - Protect - TM25
  (831, 83100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 16),
  -- Wooloo - Attract - TM31
  (831, 83100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 17),
  -- Wooloo - Facade - TM39
  (831, 83100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 18),
  -- Wooloo - Payback - TM57
  (831, 83100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 19),
  -- Wooloo - Guard Swap - TM61
  (831, 83100, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 20),
  -- Wooloo - Round - TM76
  (831, 83100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 21),
  -- Wooloo - Agility - TR12
  (831, 83100, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 22),
  -- Wooloo - Substitute - TR20
  (831, 83100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 23),
  -- Wooloo - Reversal - TR21
  (831, 83100, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 24),
  -- Wooloo - Endure - TR26
  (831, 83100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 25),
  -- Wooloo - Sleep Talk - TR27
  (831, 83100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 26),
  -- Wooloo - Electro Ball - TR80
  (831, 83100, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 27),
  -- Wooloo - Wild Charge - TR86
  (831, 83100, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 28),
  -- Wooloo - Stomp - Egg
  (831, 83100, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Wooloo - Counter - Egg
  (831, 83100, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Wooloo - Swagger - Egg
  (831, 83100, 207, 18, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Dubwool - Tackle - Level 1
  (832, 83200, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dubwool - Growl - Level 1
  (832, 83200, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dubwool - Defense Curl - Level 1
  (832, 83200, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dubwool - Copycat - Level 1
  (832, 83200, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dubwool - Guard Split - Level 12
  (832, 83200, 470, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Dubwool - Double Kick - Level 16
  (832, 83200, 24, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Dubwool - Headbutt - Level 21
  (832, 83200, 29, 18, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Dubwool - Take Down - Level 27
  (832, 83200, 36, 18, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Dubwool - Guard Swap - Level 32
  (832, 83200, 385, 18, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Dubwool - Reversal - Level 38
  (832, 83200, 179, 18, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Dubwool - Cotton Guard - Level 44
  (832, 83200, 538, 18, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Dubwool - Double-Edge - Level 50
  (832, 83200, 38, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Dubwool - Last Resort - Level 56
  (832, 83200, 387, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Dubwool - Mega Kick - TM01
  (832, 83200, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 14),
  -- Dubwool - Hyper Beam - TM08
  (832, 83200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Dubwool - Giga Impact - TM09
  (832, 83200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Dubwool - Thunder Wave - TM14
  (832, 83200, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 17),
  -- Dubwool - Rest - TM21
  (832, 83200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Dubwool - Snore - TM24
  (832, 83200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Dubwool - Protect - TM25
  (832, 83200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Dubwool - Attract - TM31
  (832, 83200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Dubwool - Facade - TM39
  (832, 83200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Dubwool - Bounce - TM52
  (832, 83200, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 23),
  -- Dubwool - Payback - TM57
  (832, 83200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 24),
  -- Dubwool - Guard Swap - TM61
  (832, 83200, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 25),
  -- Dubwool - Round - TM76
  (832, 83200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 26),
  -- Dubwool - Retaliate - TM79
  (832, 83200, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 27),
  -- Dubwool - Swords Dance - TR00
  (832, 83200, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 28),
  -- Dubwool - Body Slam - TR01
  (832, 83200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 29),
  -- Dubwool - Agility - TR12
  (832, 83200, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 30),
  -- Dubwool - Substitute - TR20
  (832, 83200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 31),
  -- Dubwool - Reversal - TR21
  (832, 83200, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 32),
  -- Dubwool - Endure - TR26
  (832, 83200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 33),
  -- Dubwool - Sleep Talk - TR27
  (832, 83200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 34),
  -- Dubwool - Baton Pass - TR29
  (832, 83200, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 35),
  -- Dubwool - Zen Headbutt - TR69
  (832, 83200, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 36),
  -- Dubwool - Electro Ball - TR80
  (832, 83200, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 37),
  -- Dubwool - Wild Charge - TR86
  (832, 83200, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 38),
  -- Dubwool - Body Press - TR99
  (832, 83200, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 39),
  -- Chewtle - Tackle - Level 1
  (833, 83300, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chewtle - Water Gun - Level 1
  (833, 83300, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chewtle - Bite - Level 7
  (833, 83300, 44, 18, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Chewtle - Protect - Level 14
  (833, 83300, 182, 18, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Chewtle - Headbutt - Level 21
  (833, 83300, 29, 18, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Chewtle - Counter - Level 28
  (833, 83300, 68, 18, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Chewtle - Jaw Lock - Level 35
  (833, 83300, 746, 18, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Chewtle - Liquidation - Level 42
  (833, 83300, 710, 18, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Chewtle - Body Slam - Level 49
  (833, 83300, 34, 18, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Chewtle - Rest - TM21
  (833, 83300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 10),
  -- Chewtle - Snore - TM24
  (833, 83300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 11),
  -- Chewtle - Protect - TM25
  (833, 83300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 12),
  -- Chewtle - Attract - TM31
  (833, 83300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 13),
  -- Chewtle - Rain Dance - TM33
  (833, 83300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 14),
  -- Chewtle - Whirlpool - TM36
  (833, 83300, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 15),
  -- Chewtle - Facade - TM39
  (833, 83300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 16),
  -- Chewtle - Revenge - TM42
  (833, 83300, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 17),
  -- Chewtle - Dive - TM45
  (833, 83300, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 18),
  -- Chewtle - Mud Shot - TM53
  (833, 83300, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 19),
  -- Chewtle - Payback - TM57
  (833, 83300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 20),
  -- Chewtle - Assurance - TM58
  (833, 83300, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 21),
  -- Chewtle - Ice Fang - TM67
  (833, 83300, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 22),
  -- Chewtle - Round - TM76
  (833, 83300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 23),
  -- Chewtle - Body Slam - TR01
  (833, 83300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 24),
  -- Chewtle - Hydro Pump - TR03
  (833, 83300, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 25),
  -- Chewtle - Surf - TR04
  (833, 83300, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 26),
  -- Chewtle - Substitute - TR20
  (833, 83300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 27),
  -- Chewtle - Endure - TR26
  (833, 83300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 28),
  -- Chewtle - Sleep Talk - TR27
  (833, 83300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 29),
  -- Chewtle - Liquidation - TR98
  (833, 83300, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 30),
  -- Chewtle - Skull Bash - Egg
  (833, 83300, 130, 18, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Chewtle - Gastro Acid - Egg
  (833, 83300, 380, 18, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Chewtle - Dragon Tail - Egg
  (833, 83300, 525, 18, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Drednaw - Tackle - Level 1
  (834, 83400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drednaw - Bite - Level 1
  (834, 83400, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drednaw - Water Gun - Level 1
  (834, 83400, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Drednaw - Protect - Level 1
  (834, 83400, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Drednaw - Crunch - Level 1
  (834, 83400, 242, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Drednaw - Rock Tomb - Level 1
  (834, 83400, 317, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Drednaw - Rock Polish - Level 1
  (834, 83400, 397, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Drednaw - Razor Shell - Level 1
  (834, 83400, 534, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Drednaw - Headbutt - Level 21
  (834, 83400, 29, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Drednaw - Counter - Level 30
  (834, 83400, 68, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Drednaw - Jaw Lock - Level 39
  (834, 83400, 746, 18, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Drednaw - Liquidation - Level 48
  (834, 83400, 710, 18, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Drednaw - Body Slam - Level 57
  (834, 83400, 34, 18, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Drednaw - Head Smash - Level 66
  (834, 83400, 457, 18, NULL, 1, 66, NULL, NULL, NULL, 14),
  -- Drednaw - Rock Tomb - Evolution
  (834, 83400, 317, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Drednaw - Hyper Beam - TM08
  (834, 83400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Drednaw - Giga Impact - TM09
  (834, 83400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Drednaw - Dig - TM15
  (834, 83400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Drednaw - Rest - TM21
  (834, 83400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Drednaw - Rock Slide - TM22
  (834, 83400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Drednaw - Snore - TM24
  (834, 83400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Drednaw - Protect - TM25
  (834, 83400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Drednaw - Scary Face - TM26
  (834, 83400, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 23),
  -- Drednaw - Attract - TM31
  (834, 83400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Drednaw - Sandstorm - TM32
  (834, 83400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 25),
  -- Drednaw - Rain Dance - TM33
  (834, 83400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Drednaw - Whirlpool - TM36
  (834, 83400, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 27),
  -- Drednaw - Facade - TM39
  (834, 83400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Drednaw - Revenge - TM42
  (834, 83400, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 29),
  -- Drednaw - Dive - TM45
  (834, 83400, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 30),
  -- Drednaw - Rock Tomb - TM48
  (834, 83400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 31),
  -- Drednaw - Sand Tomb - TM49
  (834, 83400, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 32),
  -- Drednaw - Mud Shot - TM53
  (834, 83400, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 33),
  -- Drednaw - Rock Blast - TM54
  (834, 83400, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 34),
  -- Drednaw - Payback - TM57
  (834, 83400, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 35),
  -- Drednaw - Assurance - TM58
  (834, 83400, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 36),
  -- Drednaw - Ice Fang - TM67
  (834, 83400, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 37),
  -- Drednaw - Round - TM76
  (834, 83400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Drednaw - Bulldoze - TM81
  (834, 83400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 39),
  -- Drednaw - Razor Shell - TM83
  (834, 83400, 534, 18, NULL, 2, NULL, NULL, 18002083, NULL, 40),
  -- Drednaw - False Swipe - TM94
  (834, 83400, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 41),
  -- Drednaw - Smart Strike - TM96
  (834, 83400, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 42),
  -- Drednaw - Stomping Tantrum - TM98
  (834, 83400, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 43),
  -- Drednaw - Swords Dance - TR00
  (834, 83400, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 44),
  -- Drednaw - Body Slam - TR01
  (834, 83400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 45),
  -- Drednaw - Hydro Pump - TR03
  (834, 83400, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 46),
  -- Drednaw - Surf - TR04
  (834, 83400, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 47),
  -- Drednaw - Ice Beam - TR05
  (834, 83400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 48),
  -- Drednaw - Blizzard - TR06
  (834, 83400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 49),
  -- Drednaw - Earthquake - TR10
  (834, 83400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 50),
  -- Drednaw - Waterfall - TR16
  (834, 83400, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 51),
  -- Drednaw - Substitute - TR20
  (834, 83400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 52),
  -- Drednaw - Endure - TR26
  (834, 83400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Drednaw - Sleep Talk - TR27
  (834, 83400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Drednaw - Megahorn - TR28
  (834, 83400, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 55),
  -- Drednaw - Iron Tail - TR31
  (834, 83400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 56),
  -- Drednaw - Crunch - TR32
  (834, 83400, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 57),
  -- Drednaw - Superpower - TR39
  (834, 83400, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 58),
  -- Drednaw - Muddy Water - TR45
  (834, 83400, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 59),
  -- Drednaw - Iron Defense - TR46
  (834, 83400, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 60),
  -- Drednaw - Poison Jab - TR57
  (834, 83400, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 61),
  -- Drednaw - Earth Power - TR67
  (834, 83400, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 62),
  -- Drednaw - Stone Edge - TR75
  (834, 83400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 63),
  -- Drednaw - Stealth Rock - TR76
  (834, 83400, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 64),
  -- Drednaw - Scald - TR84
  (834, 83400, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 65),
  -- Drednaw - High Horsepower - TR94
  (834, 83400, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 66),
  -- Drednaw - Throat Chop - TR95
  (834, 83400, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 67),
  -- Drednaw - Liquidation - TR98
  (834, 83400, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 68),
  -- Drednaw - Body Press - TR99
  (834, 83400, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 69),
  -- Yamper - Tackle - Level 1
  (835, 83500, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yamper - Tail Whip - Level 1
  (835, 83500, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yamper - Nuzzle - Level 5
  (835, 83500, 609, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Yamper - Bite - Level 10
  (835, 83500, 44, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Yamper - Roar - Level 15
  (835, 83500, 46, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Yamper - Spark - Level 20
  (835, 83500, 209, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Yamper - Charm - Level 26
  (835, 83500, 204, 18, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Yamper - Crunch - Level 30
  (835, 83500, 242, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Yamper - Charge - Level 35
  (835, 83500, 268, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Yamper - Wild Charge - Level 40
  (835, 83500, 528, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Yamper - Play Rough - Level 45
  (835, 83500, 583, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Yamper - Thunder Wave - TM14
  (835, 83500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 12),
  -- Yamper - Dig - TM15
  (835, 83500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 13),
  -- Yamper - Rest - TM21
  (835, 83500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 14),
  -- Yamper - Snore - TM24
  (835, 83500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 15),
  -- Yamper - Protect - TM25
  (835, 83500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 16),
  -- Yamper - Charm - TM29
  (835, 83500, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 17),
  -- Yamper - Attract - TM31
  (835, 83500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 18),
  -- Yamper - Facade - TM39
  (835, 83500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 19),
  -- Yamper - Swift - TM40
  (835, 83500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 20),
  -- Yamper - Helping Hand - TM41
  (835, 83500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 21),
  -- Yamper - Thunder Fang - TM66
  (835, 83500, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 22),
  -- Yamper - Fire Fang - TM68
  (835, 83500, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 23),
  -- Yamper - Round - TM76
  (835, 83500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 24),
  -- Yamper - Volt Switch - TM80
  (835, 83500, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 25),
  -- Yamper - Snarl - TM85
  (835, 83500, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 26),
  -- Yamper - Thunderbolt - TR08
  (835, 83500, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 27),
  -- Yamper - Thunder - TR09
  (835, 83500, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 28),
  -- Yamper - Substitute - TR20
  (835, 83500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 29),
  -- Yamper - Endure - TR26
  (835, 83500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 30),
  -- Yamper - Sleep Talk - TR27
  (835, 83500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 31),
  -- Yamper - Crunch - TR32
  (835, 83500, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 32),
  -- Yamper - Uproar - TR35
  (835, 83500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 33),
  -- Yamper - Electro Ball - TR80
  (835, 83500, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 34),
  -- Yamper - Wild Charge - TR86
  (835, 83500, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 35),
  -- Yamper - Play Rough - TR90
  (835, 83500, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 36),
  -- Yamper - Sand Attack - Egg
  (835, 83500, 28, 18, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Yamper - Double-Edge - Egg
  (835, 83500, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Yamper - Howl - Egg
  (835, 83500, 336, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Yamper - Discharge - Egg
  (835, 83500, 435, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Yamper - Flame Charge - Egg
  (835, 83500, 488, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Boltund - Tackle - Level 1
  (836, 83600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Boltund - Tail Whip - Level 1
  (836, 83600, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Boltund - Bite - Level 1
  (836, 83600, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Boltund - Electrify - Level 1
  (836, 83600, 582, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Boltund - Nuzzle - Level 1
  (836, 83600, 609, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Boltund - Roar - Level 15
  (836, 83600, 46, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Boltund - Spark - Level 20
  (836, 83600, 209, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Boltund - Charm - Level 28
  (836, 83600, 204, 18, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Boltund - Crunch - Level 34
  (836, 83600, 242, 18, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Boltund - Charge - Level 41
  (836, 83600, 268, 18, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Boltund - Wild Charge - Level 48
  (836, 83600, 528, 18, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Boltund - Play Rough - Level 55
  (836, 83600, 583, 18, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Boltund - Electric Terrain - Level 62
  (836, 83600, 604, 18, NULL, 1, 62, NULL, NULL, NULL, 13),
  -- Boltund - Hyper Beam - TM08
  (836, 83600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 14),
  -- Boltund - Giga Impact - TM09
  (836, 83600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 15),
  -- Boltund - Thunder Wave - TM14
  (836, 83600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Boltund - Dig - TM15
  (836, 83600, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 17),
  -- Boltund - Rest - TM21
  (836, 83600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Boltund - Snore - TM24
  (836, 83600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Boltund - Protect - TM25
  (836, 83600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Boltund - Charm - TM29
  (836, 83600, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 21),
  -- Boltund - Attract - TM31
  (836, 83600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Boltund - Facade - TM39
  (836, 83600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Boltund - Swift - TM40
  (836, 83600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 24),
  -- Boltund - Helping Hand - TM41
  (836, 83600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 25),
  -- Boltund - Thunder Fang - TM66
  (836, 83600, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 26),
  -- Boltund - Fire Fang - TM68
  (836, 83600, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 27),
  -- Boltund - Round - TM76
  (836, 83600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Boltund - Volt Switch - TM80
  (836, 83600, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 29),
  -- Boltund - Snarl - TM85
  (836, 83600, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 30),
  -- Boltund - Electric Terrain - TM90
  (836, 83600, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 31),
  -- Boltund - Eerie Impulse - TM93
  (836, 83600, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 32),
  -- Boltund - Thunderbolt - TR08
  (836, 83600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 33),
  -- Boltund - Thunder - TR09
  (836, 83600, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 34),
  -- Boltund - Agility - TR12
  (836, 83600, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 35),
  -- Boltund - Focus Energy - TR13
  (836, 83600, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 36),
  -- Boltund - Substitute - TR20
  (836, 83600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Boltund - Endure - TR26
  (836, 83600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Boltund - Sleep Talk - TR27
  (836, 83600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Boltund - Crunch - TR32
  (836, 83600, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 40),
  -- Boltund - Uproar - TR35
  (836, 83600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 41),
  -- Boltund - Hyper Voice - TR42
  (836, 83600, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 42),
  -- Boltund - Bulk Up - TR48
  (836, 83600, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 43),
  -- Boltund - Electro Ball - TR80
  (836, 83600, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 44),
  -- Boltund - Wild Charge - TR86
  (836, 83600, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 45),
  -- Boltund - Play Rough - TR90
  (836, 83600, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 46),
  -- Boltund - Psychic Fangs - TR97
  (836, 83600, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 47),
  -- Rolycoly - Tackle - Level 1
  (837, 83700, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rolycoly - Smokescreen - Level 1
  (837, 83700, 108, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rolycoly - Rapid Spin - Level 5
  (837, 83700, 229, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rolycoly - Smack Down - Level 10
  (837, 83700, 479, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rolycoly - Rock Polish - Level 15
  (837, 83700, 397, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rolycoly - Ancient Power - Level 20
  (837, 83700, 246, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rolycoly - Incinerate - Level 25
  (837, 83700, 510, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Rolycoly - Stealth Rock - Level 30
  (837, 83700, 446, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Rolycoly - Heat Crash - Level 35
  (837, 83700, 535, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Rolycoly - Rock Blast - Level 40
  (837, 83700, 350, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Rolycoly - Dig - TM15
  (837, 83700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 11),
  -- Rolycoly - Reflect - TM18
  (837, 83700, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 12),
  -- Rolycoly - Self-Destruct - TM20
  (837, 83700, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 13),
  -- Rolycoly - Rest - TM21
  (837, 83700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 14),
  -- Rolycoly - Rock Slide - TM22
  (837, 83700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 15),
  -- Rolycoly - Snore - TM24
  (837, 83700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Rolycoly - Protect - TM25
  (837, 83700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Rolycoly - Attract - TM31
  (837, 83700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 18),
  -- Rolycoly - Sandstorm - TM32
  (837, 83700, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 19),
  -- Rolycoly - Will-O-Wisp - TM38
  (837, 83700, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 20),
  -- Rolycoly - Facade - TM39
  (837, 83700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 21),
  -- Rolycoly - Rock Tomb - TM48
  (837, 83700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 22),
  -- Rolycoly - Sand Tomb - TM49
  (837, 83700, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 23),
  -- Rolycoly - Rock Blast - TM54
  (837, 83700, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 24),
  -- Rolycoly - Round - TM76
  (837, 83700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 25),
  -- Rolycoly - Substitute - TR20
  (837, 83700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 26),
  -- Rolycoly - Spikes - TR23
  (837, 83700, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 27),
  -- Rolycoly - Endure - TR26
  (837, 83700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 28),
  -- Rolycoly - Sleep Talk - TR27
  (837, 83700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 29),
  -- Rolycoly - Iron Defense - TR46
  (837, 83700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 30),
  -- Rolycoly - Gyro Ball - TR52
  (837, 83700, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 31),
  -- Rolycoly - Iron Head - TR74
  (837, 83700, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 32),
  -- Rolycoly - Stone Edge - TR75
  (837, 83700, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 33),
  -- Rolycoly - Stealth Rock - TR76
  (837, 83700, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 34),
  -- Rolycoly - Heat Crash - TR88
  (837, 83700, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 35),
  -- Rolycoly - Explosion - Egg
  (837, 83700, 153, 18, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Rolycoly - Mud-Slap - Egg
  (837, 83700, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Rolycoly - Block - Egg
  (837, 83700, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Carkol - Tackle - Level 1
  (838, 83800, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carkol - Smokescreen - Level 1
  (838, 83800, 108, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carkol - Rapid Spin - Level 1
  (838, 83800, 229, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Carkol - Smack Down - Level 1
  (838, 83800, 479, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Carkol - Flame Charge - Level 1
  (838, 83800, 488, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Carkol - Rock Polish - Level 15
  (838, 83800, 397, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Carkol - Ancient Power - Level 20
  (838, 83800, 246, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Carkol - Incinerate - Level 27
  (838, 83800, 510, 18, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Carkol - Stealth Rock - Level 35
  (838, 83800, 446, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Carkol - Heat Crash - Level 41
  (838, 83800, 535, 18, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Carkol - Rock Blast - Level 48
  (838, 83800, 350, 18, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Carkol - Burn Up - Level 55
  (838, 83800, 682, 18, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Carkol - Flame Charge - Evolution
  (838, 83800, 488, 18, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Carkol - Fire Spin - TM13
  (838, 83800, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 14),
  -- Carkol - Dig - TM15
  (838, 83800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 15),
  -- Carkol - Reflect - TM18
  (838, 83800, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 16),
  -- Carkol - Self-Destruct - TM20
  (838, 83800, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 17),
  -- Carkol - Rest - TM21
  (838, 83800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Carkol - Rock Slide - TM22
  (838, 83800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 19),
  -- Carkol - Snore - TM24
  (838, 83800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Carkol - Protect - TM25
  (838, 83800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Carkol - Attract - TM31
  (838, 83800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Carkol - Sandstorm - TM32
  (838, 83800, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 23),
  -- Carkol - Will-O-Wisp - TM38
  (838, 83800, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 24),
  -- Carkol - Facade - TM39
  (838, 83800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Carkol - Rock Tomb - TM48
  (838, 83800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 26),
  -- Carkol - Sand Tomb - TM49
  (838, 83800, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 27),
  -- Carkol - Rock Blast - TM54
  (838, 83800, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 28),
  -- Carkol - Round - TM76
  (838, 83800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Carkol - Flamethrower - TR02
  (838, 83800, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 30),
  -- Carkol - Fire Blast - TR15
  (838, 83800, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 31),
  -- Carkol - Substitute - TR20
  (838, 83800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 32),
  -- Carkol - Spikes - TR23
  (838, 83800, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 33),
  -- Carkol - Endure - TR26
  (838, 83800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 34),
  -- Carkol - Sleep Talk - TR27
  (838, 83800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 35),
  -- Carkol - Heat Wave - TR36
  (838, 83800, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 36),
  -- Carkol - Overheat - TR43
  (838, 83800, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 37),
  -- Carkol - Iron Defense - TR46
  (838, 83800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 38),
  -- Carkol - Gyro Ball - TR52
  (838, 83800, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 39),
  -- Carkol - Flare Blitz - TR55
  (838, 83800, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 40),
  -- Carkol - Iron Head - TR74
  (838, 83800, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 41),
  -- Carkol - Stone Edge - TR75
  (838, 83800, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 42),
  -- Carkol - Stealth Rock - TR76
  (838, 83800, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 43),
  -- Carkol - Heavy Slam - TR79
  (838, 83800, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 44),
  -- Carkol - Scald - TR84
  (838, 83800, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 45),
  -- Carkol - Heat Crash - TR88
  (838, 83800, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 46),
  -- Carkol - High Horsepower - TR94
  (838, 83800, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 47),
  -- Carkol - Body Press - TR99
  (838, 83800, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 48),
  -- Coalossal - Tackle - Level 1
  (839, 83900, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Coalossal - Smokescreen - Level 1
  (839, 83900, 108, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Coalossal - Rapid Spin - Level 1
  (839, 83900, 229, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Coalossal - Smack Down - Level 1
  (839, 83900, 479, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Coalossal - Flame Charge - Level 1
  (839, 83900, 488, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Coalossal - Tar Shot - Level 1
  (839, 83900, 749, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Coalossal - Rock Polish - Level 15
  (839, 83900, 397, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Coalossal - Ancient Power - Level 20
  (839, 83900, 246, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Coalossal - Incinerate - Level 27
  (839, 83900, 510, 18, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Coalossal - Stealth Rock - Level 37
  (839, 83900, 446, 18, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Coalossal - Heat Crash - Level 45
  (839, 83900, 535, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Coalossal - Rock Blast - Level 54
  (839, 83900, 350, 18, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Coalossal - Burn Up - Level 63
  (839, 83900, 682, 18, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Coalossal - Tar Shot - Evolution
  (839, 83900, 749, 18, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Coalossal - Mega Punch - TM00
  (839, 83900, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Coalossal - Mega Kick - TM01
  (839, 83900, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Coalossal - Fire Punch - TM03
  (839, 83900, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 17),
  -- Coalossal - Hyper Beam - TM08
  (839, 83900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Coalossal - Giga Impact - TM09
  (839, 83900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Coalossal - Solar Beam - TM11
  (839, 83900, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Coalossal - Fire Spin - TM13
  (839, 83900, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 21),
  -- Coalossal - Dig - TM15
  (839, 83900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 22),
  -- Coalossal - Reflect - TM18
  (839, 83900, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 23),
  -- Coalossal - Self-Destruct - TM20
  (839, 83900, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 24),
  -- Coalossal - Rest - TM21
  (839, 83900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Coalossal - Rock Slide - TM22
  (839, 83900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Coalossal - Snore - TM24
  (839, 83900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Coalossal - Protect - TM25
  (839, 83900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Coalossal - Attract - TM31
  (839, 83900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Coalossal - Sandstorm - TM32
  (839, 83900, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 30),
  -- Coalossal - Will-O-Wisp - TM38
  (839, 83900, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 31),
  -- Coalossal - Facade - TM39
  (839, 83900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Coalossal - Rock Tomb - TM48
  (839, 83900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Coalossal - Sand Tomb - TM49
  (839, 83900, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 34),
  -- Coalossal - Rock Blast - TM54
  (839, 83900, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 35),
  -- Coalossal - Round - TM76
  (839, 83900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Coalossal - Bulldoze - TM81
  (839, 83900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 37),
  -- Coalossal - Body Slam - TR01
  (839, 83900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 38),
  -- Coalossal - Flamethrower - TR02
  (839, 83900, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 39),
  -- Coalossal - Earthquake - TR10
  (839, 83900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 40),
  -- Coalossal - Fire Blast - TR15
  (839, 83900, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 41),
  -- Coalossal - Substitute - TR20
  (839, 83900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Coalossal - Spikes - TR23
  (839, 83900, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 43),
  -- Coalossal - Endure - TR26
  (839, 83900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Coalossal - Sleep Talk - TR27
  (839, 83900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Coalossal - Heat Wave - TR36
  (839, 83900, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 46),
  -- Coalossal - Overheat - TR43
  (839, 83900, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 47),
  -- Coalossal - Iron Defense - TR46
  (839, 83900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 48),
  -- Coalossal - Gyro Ball - TR52
  (839, 83900, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 49),
  -- Coalossal - Flare Blitz - TR55
  (839, 83900, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 50),
  -- Coalossal - Earth Power - TR67
  (839, 83900, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 51),
  -- Coalossal - Iron Head - TR74
  (839, 83900, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 52),
  -- Coalossal - Stone Edge - TR75
  (839, 83900, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 53),
  -- Coalossal - Stealth Rock - TR76
  (839, 83900, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 54),
  -- Coalossal - Heavy Slam - TR79
  (839, 83900, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 55),
  -- Coalossal - Scald - TR84
  (839, 83900, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 56),
  -- Coalossal - Heat Crash - TR88
  (839, 83900, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 57),
  -- Coalossal - High Horsepower - TR94
  (839, 83900, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 58),
  -- Coalossal - Body Press - TR99
  (839, 83900, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 59),
  -- Applin - Withdraw - Level 1
  (840, 84000, 110, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Applin - Astonish - Level 1
  (840, 84000, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Applin - Attract - TM31
  (840, 84000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 3),
  -- Applin - Defense Curl - Egg
  (840, 84000, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 4),
  -- Applin - Rollout - Egg
  (840, 84000, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 5),
  -- Applin - Recycle - Egg
  (840, 84000, 278, 18, NULL, 5, NULL, NULL, NULL, NULL, 6),
  -- Applin - Sucker Punch - Egg
  (840, 84000, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 7),
  -- Applin - Draco Meteor - Tutor
  (840, 84000, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 8),
  -- Flapple - Wing Attack - Level 1
  (841, 84100, 17, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flapple - Growth - Level 1
  (841, 84100, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flapple - Withdraw - Level 1
  (841, 84100, 110, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flapple - Twister - Level 1
  (841, 84100, 239, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Flapple - Recycle - Level 1
  (841, 84100, 278, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Flapple - Astonish - Level 1
  (841, 84100, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Flapple - Acid Spray - Level 4
  (841, 84100, 491, 18, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Flapple - Acrobatics - Level 8
  (841, 84100, 512, 18, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Flapple - Leech Seed - Level 12
  (841, 84100, 73, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Flapple - Protect - Level 16
  (841, 84100, 182, 18, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Flapple - Dragon Breath - Level 20
  (841, 84100, 225, 18, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Flapple - Dragon Dance - Level 24
  (841, 84100, 349, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Flapple - Dragon Pulse - Level 28
  (841, 84100, 406, 18, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Flapple - Grav Apple - Level 32
  (841, 84100, 788, 18, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Flapple - Iron Defense - Level 36
  (841, 84100, 334, 18, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Flapple - Fly - Level 40
  (841, 84100, 19, 18, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Flapple - Dragon Rush - Level 44
  (841, 84100, 407, 18, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Flapple - Wing Attack - Evolution
  (841, 84100, 17, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Flapple - Fly - TM06
  (841, 84100, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 19),
  -- Flapple - Hyper Beam - TM08
  (841, 84100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Flapple - Giga Impact - TM09
  (841, 84100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Flapple - Solar Beam - TM11
  (841, 84100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Flapple - Rest - TM21
  (841, 84100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Flapple - Snore - TM24
  (841, 84100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Flapple - Protect - TM25
  (841, 84100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Flapple - Scary Face - TM26
  (841, 84100, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Flapple - Giga Drain - TM28
  (841, 84100, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 27),
  -- Flapple - Attract - TM31
  (841, 84100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Flapple - Sunny Day - TM34
  (841, 84100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Flapple - Facade - TM39
  (841, 84100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Flapple - Bullet Seed - TM50
  (841, 84100, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 31),
  -- Flapple - U-turn - TM56
  (841, 84100, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 32),
  -- Flapple - Round - TM76
  (841, 84100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Flapple - Acrobatics - TM78
  (841, 84100, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 34),
  -- Flapple - Air Slash - TM95
  (841, 84100, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 35),
  -- Flapple - Focus Energy - TR13
  (841, 84100, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 36),
  -- Flapple - Substitute - TR20
  (841, 84100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Flapple - Outrage - TR24
  (841, 84100, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 38),
  -- Flapple - Endure - TR26
  (841, 84100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Flapple - Sleep Talk - TR27
  (841, 84100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Flapple - Iron Defense - TR46
  (841, 84100, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 41),
  -- Flapple - Dragon Dance - TR51
  (841, 84100, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 42),
  -- Flapple - Seed Bomb - TR59
  (841, 84100, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 43),
  -- Flapple - Dragon Pulse - TR62
  (841, 84100, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 44),
  -- Flapple - Energy Ball - TR65
  (841, 84100, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 45),
  -- Flapple - Grass Knot - TR77
  (841, 84100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 46),
  -- Flapple - Heavy Slam - TR79
  (841, 84100, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 47),
  -- Flapple - Draco Meteor - Tutor
  (841, 84100, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 48),
  -- Appletun - Headbutt - Level 1
  (842, 84200, 29, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Appletun - Growth - Level 1
  (842, 84200, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Appletun - Withdraw - Level 1
  (842, 84200, 110, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Appletun - Sweet Scent - Level 1
  (842, 84200, 230, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Appletun - Recycle - Level 1
  (842, 84200, 278, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Appletun - Astonish - Level 1
  (842, 84200, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Appletun - Curse - Level 4
  (842, 84200, 174, 18, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Appletun - Stomp - Level 8
  (842, 84200, 23, 18, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Appletun - Leech Seed - Level 12
  (842, 84200, 73, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Appletun - Protect - Level 16
  (842, 84200, 182, 18, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Appletun - Bullet Seed - Level 20
  (842, 84200, 331, 18, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Appletun - Recover - Level 24
  (842, 84200, 105, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Appletun - Apple Acid - Level 28
  (842, 84200, 787, 18, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Appletun - Body Slam - Level 32
  (842, 84200, 34, 18, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Appletun - Iron Defense - Level 36
  (842, 84200, 334, 18, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Appletun - Dragon Pulse - Level 40
  (842, 84200, 406, 18, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Appletun - Energy Ball - Level 44
  (842, 84200, 412, 18, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Appletun - Headbutt - Evolution
  (842, 84200, 29, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Appletun - Hyper Beam - TM08
  (842, 84200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Appletun - Giga Impact - TM09
  (842, 84200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Appletun - Solar Beam - TM11
  (842, 84200, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 21),
  -- Appletun - Light Screen - TM17
  (842, 84200, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Appletun - Reflect - TM18
  (842, 84200, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 23),
  -- Appletun - Safeguard - TM19
  (842, 84200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Appletun - Rest - TM21
  (842, 84200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Appletun - Snore - TM24
  (842, 84200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Appletun - Protect - TM25
  (842, 84200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Appletun - Giga Drain - TM28
  (842, 84200, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 28),
  -- Appletun - Attract - TM31
  (842, 84200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Appletun - Sunny Day - TM34
  (842, 84200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Appletun - Facade - TM39
  (842, 84200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Appletun - Bullet Seed - TM50
  (842, 84200, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 32),
  -- Appletun - Payback - TM57
  (842, 84200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 33),
  -- Appletun - Round - TM76
  (842, 84200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Appletun - Bulldoze - TM81
  (842, 84200, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 35),
  -- Appletun - Body Slam - TR01
  (842, 84200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 36),
  -- Appletun - Earthquake - TR10
  (842, 84200, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 37),
  -- Appletun - Amnesia - TR17
  (842, 84200, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 38),
  -- Appletun - Substitute - TR20
  (842, 84200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Appletun - Outrage - TR24
  (842, 84200, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 40),
  -- Appletun - Endure - TR26
  (842, 84200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Appletun - Sleep Talk - TR27
  (842, 84200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Appletun - Superpower - TR39
  (842, 84200, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 43),
  -- Appletun - Iron Defense - TR46
  (842, 84200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 44),
  -- Appletun - Gyro Ball - TR52
  (842, 84200, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 45),
  -- Appletun - Seed Bomb - TR59
  (842, 84200, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 46),
  -- Appletun - Dragon Pulse - TR62
  (842, 84200, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 47),
  -- Appletun - Energy Ball - TR65
  (842, 84200, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 48),
  -- Appletun - Grass Knot - TR77
  (842, 84200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 49),
  -- Appletun - Heavy Slam - TR79
  (842, 84200, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 50),
  -- Appletun - High Horsepower - TR94
  (842, 84200, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 51),
  -- Appletun - Body Press - TR99
  (842, 84200, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 52),
  -- Appletun - Draco Meteor - Tutor
  (842, 84200, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 53),
  -- Silicobra - Sand Attack - Level 1
  (843, 84300, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Silicobra - Wrap - Level 1
  (843, 84300, 35, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Silicobra - Minimize - Level 5
  (843, 84300, 107, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Silicobra - Brutal Swing - Level 10
  (843, 84300, 693, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Silicobra - Bulldoze - Level 15
  (843, 84300, 523, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Silicobra - Headbutt - Level 20
  (843, 84300, 29, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Silicobra - Glare - Level 25
  (843, 84300, 137, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Silicobra - Dig - Level 30
  (843, 84300, 91, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Silicobra - Sandstorm - Level 35
  (843, 84300, 201, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Silicobra - Slam - Level 40
  (843, 84300, 21, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Silicobra - Coil - Level 45
  (843, 84300, 489, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Silicobra - Sand Tomb - Level 50
  (843, 84300, 328, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Silicobra - Dig - TM15
  (843, 84300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 13),
  -- Silicobra - Screech - TM16
  (843, 84300, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 14),
  -- Silicobra - Rest - TM21
  (843, 84300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Silicobra - Snore - TM24
  (843, 84300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Silicobra - Protect - TM25
  (843, 84300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Silicobra - Attract - TM31
  (843, 84300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 18),
  -- Silicobra - Sandstorm - TM32
  (843, 84300, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 19),
  -- Silicobra - Facade - TM39
  (843, 84300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 20),
  -- Silicobra - Sand Tomb - TM49
  (843, 84300, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 21),
  -- Silicobra - Mud Shot - TM53
  (843, 84300, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 22),
  -- Silicobra - Round - TM76
  (843, 84300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 23),
  -- Silicobra - Bulldoze - TM81
  (843, 84300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 24),
  -- Silicobra - Brutal Swing - TM97
  (843, 84300, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 25),
  -- Silicobra - Earthquake - TR10
  (843, 84300, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 26),
  -- Silicobra - Substitute - TR20
  (843, 84300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 27),
  -- Silicobra - Endure - TR26
  (843, 84300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 28),
  -- Silicobra - Sleep Talk - TR27
  (843, 84300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 29),
  -- Silicobra - Earth Power - TR67
  (843, 84300, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 30),
  -- Silicobra - Drill Run - TR87
  (843, 84300, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 31),
  -- Silicobra - Mud-Slap - Egg
  (843, 84300, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Silicobra - Poison Tail - Egg
  (843, 84300, 342, 18, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Silicobra - Last Resort - Egg
  (843, 84300, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Silicobra - Dragon Rush - Egg
  (843, 84300, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Silicobra - Belch - Egg
  (843, 84300, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Sandaconda - Sand Attack - Level 1
  (844, 84400, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandaconda - Wrap - Level 1
  (844, 84400, 35, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandaconda - Minimize - Level 1
  (844, 84400, 107, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sandaconda - Skull Bash - Level 1
  (844, 84400, 130, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sandaconda - Brutal Swing - Level 1
  (844, 84400, 693, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sandaconda - Bulldoze - Level 15
  (844, 84400, 523, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Sandaconda - Headbutt - Level 20
  (844, 84400, 29, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Sandaconda - Glare - Level 25
  (844, 84400, 137, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Sandaconda - Dig - Level 30
  (844, 84400, 91, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Sandaconda - Sandstorm - Level 35
  (844, 84400, 201, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Sandaconda - Slam - Level 42
  (844, 84400, 21, 18, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Sandaconda - Coil - Level 49
  (844, 84400, 489, 18, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Sandaconda - Sand Tomb - Level 51
  (844, 84400, 328, 18, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Sandaconda - Hyper Beam - TM08
  (844, 84400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 14),
  -- Sandaconda - Giga Impact - TM09
  (844, 84400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 15),
  -- Sandaconda - Dig - TM15
  (844, 84400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 16),
  -- Sandaconda - Screech - TM16
  (844, 84400, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 17),
  -- Sandaconda - Rest - TM21
  (844, 84400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Sandaconda - Rock Slide - TM22
  (844, 84400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 19),
  -- Sandaconda - Snore - TM24
  (844, 84400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Sandaconda - Protect - TM25
  (844, 84400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Sandaconda - Attract - TM31
  (844, 84400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Sandaconda - Sandstorm - TM32
  (844, 84400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 23),
  -- Sandaconda - Facade - TM39
  (844, 84400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Sandaconda - Rock Tomb - TM48
  (844, 84400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 25),
  -- Sandaconda - Sand Tomb - TM49
  (844, 84400, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 26),
  -- Sandaconda - Mud Shot - TM53
  (844, 84400, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 27),
  -- Sandaconda - Rock Blast - TM54
  (844, 84400, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 28),
  -- Sandaconda - Fire Fang - TM68
  (844, 84400, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 29),
  -- Sandaconda - Round - TM76
  (844, 84400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 30),
  -- Sandaconda - Bulldoze - TM81
  (844, 84400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 31),
  -- Sandaconda - Brutal Swing - TM97
  (844, 84400, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 32),
  -- Sandaconda - Earthquake - TR10
  (844, 84400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 33),
  -- Sandaconda - Substitute - TR20
  (844, 84400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 34),
  -- Sandaconda - Outrage - TR24
  (844, 84400, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 35),
  -- Sandaconda - Endure - TR26
  (844, 84400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Sandaconda - Sleep Talk - TR27
  (844, 84400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Sandaconda - Iron Defense - TR46
  (844, 84400, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 38),
  -- Sandaconda - Earth Power - TR67
  (844, 84400, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 39),
  -- Sandaconda - Zen Headbutt - TR69
  (844, 84400, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 40),
  -- Sandaconda - Iron Head - TR74
  (844, 84400, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 41),
  -- Sandaconda - Stone Edge - TR75
  (844, 84400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 42),
  -- Sandaconda - Stealth Rock - TR76
  (844, 84400, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 43),
  -- Sandaconda - Drill Run - TR87
  (844, 84400, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 44),
  -- Sandaconda - Hurricane - TR89
  (844, 84400, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 45),
  -- Sandaconda - High Horsepower - TR94
  (844, 84400, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 46),
  -- Sandaconda - Body Press - TR99
  (844, 84400, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 47),
  -- Cramorant - Peck - Level 1
  (845, 84500, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cramorant - Stockpile - Level 1
  (845, 84500, 254, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cramorant - Spit Up - Level 1
  (845, 84500, 255, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cramorant - Swallow - Level 1
  (845, 84500, 256, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cramorant - Belch - Level 1
  (845, 84500, 562, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cramorant - Water Gun - Level 7
  (845, 84500, 55, 18, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Cramorant - Fury Attack - Level 14
  (845, 84500, 31, 18, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Cramorant - Pluck - Level 21
  (845, 84500, 365, 18, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Cramorant - Dive - Level 28
  (845, 84500, 291, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Cramorant - Drill Peck - Level 35
  (845, 84500, 65, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Cramorant - Amnesia - Level 42
  (845, 84500, 133, 18, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Cramorant - Thrash - Level 49
  (845, 84500, 37, 18, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Cramorant - Hydro Pump - Level 56
  (845, 84500, 56, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Cramorant - Fly - TM06
  (845, 84500, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 14),
  -- Cramorant - Hyper Beam - TM08
  (845, 84500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Cramorant - Giga Impact - TM09
  (845, 84500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Cramorant - Rest - TM21
  (845, 84500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Cramorant - Thief - TM23
  (845, 84500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Cramorant - Snore - TM24
  (845, 84500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Cramorant - Protect - TM25
  (845, 84500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Cramorant - Icy Wind - TM27
  (845, 84500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 21),
  -- Cramorant - Steel Wing - TM30
  (845, 84500, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 22),
  -- Cramorant - Attract - TM31
  (845, 84500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Cramorant - Rain Dance - TM33
  (845, 84500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Cramorant - Whirlpool - TM36
  (845, 84500, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 25),
  -- Cramorant - Facade - TM39
  (845, 84500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Cramorant - Dive - TM45
  (845, 84500, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 27),
  -- Cramorant - Weather Ball - TM46
  (845, 84500, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 28),
  -- Cramorant - Assurance - TM58
  (845, 84500, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 29),
  -- Cramorant - Round - TM76
  (845, 84500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 30),
  -- Cramorant - Air Slash - TM95
  (845, 84500, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 31),
  -- Cramorant - Hydro Pump - TR03
  (845, 84500, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 32),
  -- Cramorant - Surf - TR04
  (845, 84500, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 33),
  -- Cramorant - Ice Beam - TR05
  (845, 84500, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 34),
  -- Cramorant - Blizzard - TR06
  (845, 84500, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 35),
  -- Cramorant - Agility - TR12
  (845, 84500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 36),
  -- Cramorant - Amnesia - TR17
  (845, 84500, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 37),
  -- Cramorant - Substitute - TR20
  (845, 84500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Cramorant - Reversal - TR21
  (845, 84500, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 39),
  -- Cramorant - Endure - TR26
  (845, 84500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Cramorant - Sleep Talk - TR27
  (845, 84500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Cramorant - Uproar - TR35
  (845, 84500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 42),
  -- Cramorant - Superpower - TR39
  (845, 84500, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 43),
  -- Cramorant - Brave Bird - TR66
  (845, 84500, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 44),
  -- Cramorant - Scald - TR84
  (845, 84500, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 45),
  -- Cramorant - Hurricane - TR89
  (845, 84500, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 46),
  -- Cramorant - Throat Chop - TR95
  (845, 84500, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 47),
  -- Cramorant - Liquidation - TR98
  (845, 84500, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 48),
  -- Cramorant - Feather Dance - Egg
  (845, 84500, 297, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cramorant - Aerial Ace - Egg
  (845, 84500, 332, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cramorant - Roost - Egg
  (845, 84500, 355, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cramorant - Aqua Ring - Egg
  (845, 84500, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cramorant - Defog - Egg
  (845, 84500, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Arrokuda - Peck - Level 1
  (846, 84600, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arrokuda - Aqua Jet - Level 1
  (846, 84600, 453, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arrokuda - Fury Attack - Level 6
  (846, 84600, 31, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Arrokuda - Bite - Level 12
  (846, 84600, 44, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Arrokuda - Agility - Level 18
  (846, 84600, 97, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Arrokuda - Dive - Level 24
  (846, 84600, 291, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Arrokuda - Laser Focus - Level 30
  (846, 84600, 673, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Arrokuda - Crunch - Level 36
  (846, 84600, 242, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Arrokuda - Liquidation - Level 42
  (846, 84600, 710, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Arrokuda - Double-Edge - Level 48
  (846, 84600, 38, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Arrokuda - Rest - TM21
  (846, 84600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 11),
  -- Arrokuda - Snore - TM24
  (846, 84600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 12),
  -- Arrokuda - Protect - TM25
  (846, 84600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 13),
  -- Arrokuda - Attract - TM31
  (846, 84600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 14),
  -- Arrokuda - Rain Dance - TM33
  (846, 84600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 15),
  -- Arrokuda - Whirlpool - TM36
  (846, 84600, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 16),
  -- Arrokuda - Facade - TM39
  (846, 84600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 17),
  -- Arrokuda - Swift - TM40
  (846, 84600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 18),
  -- Arrokuda - Brick Break - TM43
  (846, 84600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 19),
  -- Arrokuda - Dive - TM45
  (846, 84600, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 20),
  -- Arrokuda - Bounce - TM52
  (846, 84600, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 21),
  -- Arrokuda - Assurance - TM58
  (846, 84600, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 22),
  -- Arrokuda - Ice Fang - TM67
  (846, 84600, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 23),
  -- Arrokuda - Round - TM76
  (846, 84600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 24),
  -- Arrokuda - Agility - TR12
  (846, 84600, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 25),
  -- Arrokuda - Focus Energy - TR13
  (846, 84600, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 26),
  -- Arrokuda - Waterfall - TR16
  (846, 84600, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 27),
  -- Arrokuda - Substitute - TR20
  (846, 84600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 28),
  -- Arrokuda - Endure - TR26
  (846, 84600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 29),
  -- Arrokuda - Sleep Talk - TR27
  (846, 84600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 30),
  -- Arrokuda - Crunch - TR32
  (846, 84600, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 31),
  -- Arrokuda - Close Combat - TR53
  (846, 84600, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 32),
  -- Arrokuda - Poison Jab - TR57
  (846, 84600, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 33),
  -- Arrokuda - Scald - TR84
  (846, 84600, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 34),
  -- Arrokuda - Drill Run - TR87
  (846, 84600, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 35),
  -- Arrokuda - Throat Chop - TR95
  (846, 84600, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 36),
  -- Arrokuda - Psychic Fangs - TR97
  (846, 84600, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 37),
  -- Arrokuda - Liquidation - TR98
  (846, 84600, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 38),
  -- Arrokuda - Thrash - Egg
  (846, 84600, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Arrokuda - Slash - Egg
  (846, 84600, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Arrokuda - Acupressure - Egg
  (846, 84600, 367, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Arrokuda - Night Slash - Egg
  (846, 84600, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Barraskewda - Fury Attack - Level 1
  (847, 84700, 31, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Barraskewda - Bite - Level 1
  (847, 84700, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Barraskewda - Peck - Level 1
  (847, 84700, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Barraskewda - Aqua Jet - Level 1
  (847, 84700, 453, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Barraskewda - Throat Chop - Level 1
  (847, 84700, 675, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Barraskewda - Agility - Level 18
  (847, 84700, 97, 18, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Barraskewda - Dive - Level 24
  (847, 84700, 291, 18, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Barraskewda - Laser Focus - Level 32
  (847, 84700, 673, 18, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Barraskewda - Crunch - Level 40
  (847, 84700, 242, 18, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Barraskewda - Liquidation - Level 48
  (847, 84700, 710, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Barraskewda - Double-Edge - Level 56
  (847, 84700, 38, 18, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Barraskewda - Hyper Beam - TM08
  (847, 84700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 12),
  -- Barraskewda - Giga Impact - TM09
  (847, 84700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 13),
  -- Barraskewda - Rest - TM21
  (847, 84700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 14),
  -- Barraskewda - Snore - TM24
  (847, 84700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 15),
  -- Barraskewda - Protect - TM25
  (847, 84700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 16),
  -- Barraskewda - Scary Face - TM26
  (847, 84700, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 17),
  -- Barraskewda - Attract - TM31
  (847, 84700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 18),
  -- Barraskewda - Rain Dance - TM33
  (847, 84700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 19),
  -- Barraskewda - Whirlpool - TM36
  (847, 84700, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 20),
  -- Barraskewda - Facade - TM39
  (847, 84700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 21),
  -- Barraskewda - Swift - TM40
  (847, 84700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 22),
  -- Barraskewda - Brick Break - TM43
  (847, 84700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 23),
  -- Barraskewda - Dive - TM45
  (847, 84700, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 24),
  -- Barraskewda - Bounce - TM52
  (847, 84700, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 25),
  -- Barraskewda - Assurance - TM58
  (847, 84700, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 26),
  -- Barraskewda - Ice Fang - TM67
  (847, 84700, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 27),
  -- Barraskewda - Round - TM76
  (847, 84700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Barraskewda - Hydro Pump - TR03
  (847, 84700, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 29),
  -- Barraskewda - Surf - TR04
  (847, 84700, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 30),
  -- Barraskewda - Agility - TR12
  (847, 84700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 31),
  -- Barraskewda - Focus Energy - TR13
  (847, 84700, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 32),
  -- Barraskewda - Waterfall - TR16
  (847, 84700, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 33),
  -- Barraskewda - Substitute - TR20
  (847, 84700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 34),
  -- Barraskewda - Endure - TR26
  (847, 84700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Barraskewda - Sleep Talk - TR27
  (847, 84700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Barraskewda - Crunch - TR32
  (847, 84700, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 37),
  -- Barraskewda - Close Combat - TR53
  (847, 84700, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 38),
  -- Barraskewda - Poison Jab - TR57
  (847, 84700, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 39),
  -- Barraskewda - Scald - TR84
  (847, 84700, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 40),
  -- Barraskewda - Drill Run - TR87
  (847, 84700, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 41),
  -- Barraskewda - Throat Chop - TR95
  (847, 84700, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 42),
  -- Barraskewda - Psychic Fangs - TR97
  (847, 84700, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 43),
  -- Barraskewda - Liquidation - TR98
  (847, 84700, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 44),
  -- Toxel - Growl - Level 1
  (848, 84800, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toxel - Acid - Level 1
  (848, 84800, 51, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toxel - Flail - Level 1
  (848, 84800, 175, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toxel - Belch - Level 1
  (848, 84800, 562, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Toxel - Nuzzle - Level 1
  (848, 84800, 609, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Toxel - Tearful Look - Level 1
  (848, 84800, 715, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Toxel - Rest - TM21
  (848, 84800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 7),
  -- Toxel - Snore - TM24
  (848, 84800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 8),
  -- Toxel - Protect - TM25
  (848, 84800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 9),
  -- Toxel - Attract - TM31
  (848, 84800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 10),
  -- Toxel - Facade - TM39
  (848, 84800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 11),
  -- Toxel - Round - TM76
  (848, 84800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 12),
  -- Toxel - Substitute - TR20
  (848, 84800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 13),
  -- Toxel - Endure - TR26
  (848, 84800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 14),
  -- Toxel - Sleep Talk - TR27
  (848, 84800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 15),
  -- Toxel - Encore - TR30
  (848, 84800, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 16),
  -- Toxel - Endeavor - Egg
  (848, 84800, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 17),
  -- Toxel - Metal Sound - Egg
  (848, 84800, 319, 18, NULL, 5, NULL, NULL, NULL, NULL, 18),
  -- Toxel - Power-Up Punch - Egg
  (848, 84800, 612, 18, NULL, 5, NULL, NULL, NULL, NULL, 19),
  -- Toxtricity - Leer - Level 1
  (849, 84900, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toxtricity - Growl - Level 1
  (849, 84900, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toxtricity - Acid - Level 1
  (849, 84900, 51, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toxtricity - Thunder Shock - Level 1
  (849, 84900, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Toxtricity - Flail - Level 1
  (849, 84900, 175, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Toxtricity - Spark - Level 1
  (849, 84900, 209, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Toxtricity - Acid Spray - Level 1
  (849, 84900, 491, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Toxtricity - Belch - Level 1
  (849, 84900, 562, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Toxtricity - Noble Roar - Level 1
  (849, 84900, 568, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Toxtricity - Eerie Impulse - Level 1
  (849, 84900, 598, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Toxtricity - Nuzzle - Level 1
  (849, 84900, 609, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Toxtricity - Tearful Look - Level 1
  (849, 84900, 715, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Toxtricity - Charge - Level 4
  (849, 84900, 268, 18, NULL, 1, 4, NULL, NULL, NULL, 13),
  -- Toxtricity - Shock Wave - Level 8
  (849, 84900, 351, 18, NULL, 1, 8, NULL, NULL, NULL, 14),
  -- Toxtricity - Scary Face - Level 12
  (849, 84900, 184, 18, NULL, 1, 12, NULL, NULL, NULL, 15),
  -- Toxtricity - Taunt - Level 16
  (849, 84900, 269, 18, NULL, 1, 16, NULL, NULL, NULL, 16),
  -- Toxtricity - Venoshock - Level 20
  (849, 84900, 474, 18, NULL, 1, 20, NULL, NULL, NULL, 17),
  -- Toxtricity - Screech - Level 24
  (849, 84900, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 18),
  -- Toxtricity - Swagger - Level 28
  (849, 84900, 207, 18, NULL, 1, 28, NULL, NULL, NULL, 19),
  -- Toxtricity - Toxic - Level 32
  (849, 84900, 92, 18, NULL, 1, 32, NULL, NULL, NULL, 20),
  -- Toxtricity - Discharge - Level 36
  (849, 84900, 435, 18, NULL, 1, 36, NULL, NULL, NULL, 21),
  -- Toxtricity - Poison Jab - Level 40
  (849, 84900, 398, 18, NULL, 1, 40, NULL, NULL, NULL, 22),
  -- Toxtricity - Overdrive - Level 44
  (849, 84900, 786, 18, NULL, 1, 44, NULL, NULL, NULL, 23),
  -- Toxtricity - Boomburst - Level 48
  (849, 84900, 586, 18, NULL, 1, 48, NULL, NULL, NULL, 24),
  -- Toxtricity - Shift Gear - Level 52
  (849, 84900, 508, 18, NULL, 1, 52, NULL, NULL, NULL, 25),
  -- Toxtricity - Spark - Evolution
  (849, 84900, 209, 18, NULL, 7, NULL, NULL, NULL, NULL, 26),
  -- Toxtricity - Mega Punch - TM00
  (849, 84900, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 27),
  -- Toxtricity - Mega Kick - TM01
  (849, 84900, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 28),
  -- Toxtricity - Fire Punch - TM03
  (849, 84900, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 29),
  -- Toxtricity - Thunder Punch - TM05
  (849, 84900, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 30),
  -- Toxtricity - Hyper Beam - TM08
  (849, 84900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 31),
  -- Toxtricity - Giga Impact - TM09
  (849, 84900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 32),
  -- Toxtricity - Thunder Wave - TM14
  (849, 84900, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 33),
  -- Toxtricity - Screech - TM16
  (849, 84900, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 34),
  -- Toxtricity - Rest - TM21
  (849, 84900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 35),
  -- Toxtricity - Snore - TM24
  (849, 84900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 36),
  -- Toxtricity - Protect - TM25
  (849, 84900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 37),
  -- Toxtricity - Scary Face - TM26
  (849, 84900, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 38),
  -- Toxtricity - Attract - TM31
  (849, 84900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 39),
  -- Toxtricity - Facade - TM39
  (849, 84900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 40),
  -- Toxtricity - Swift - TM40
  (849, 84900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 41),
  -- Toxtricity - Payback - TM57
  (849, 84900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Toxtricity - Fling - TM59
  (849, 84900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 43),
  -- Toxtricity - Drain Punch - TM63
  (849, 84900, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 44),
  -- Toxtricity - Venoshock - TM74
  (849, 84900, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 45),
  -- Toxtricity - Round - TM76
  (849, 84900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 46),
  -- Toxtricity - Hex - TM77
  (849, 84900, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 47),
  -- Toxtricity - Volt Switch - TM80
  (849, 84900, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 48),
  -- Toxtricity - Snarl - TM85
  (849, 84900, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 49),
  -- Toxtricity - Eerie Impulse - TM93
  (849, 84900, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 50),
  -- Toxtricity - Thunderbolt - TR08
  (849, 84900, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 51),
  -- Toxtricity - Thunder - TR09
  (849, 84900, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 52),
  -- Toxtricity - Substitute - TR20
  (849, 84900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 53),
  -- Toxtricity - Sludge Bomb - TR22
  (849, 84900, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 54),
  -- Toxtricity - Endure - TR26
  (849, 84900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 55),
  -- Toxtricity - Sleep Talk - TR27
  (849, 84900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 56),
  -- Toxtricity - Encore - TR30
  (849, 84900, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 57),
  -- Toxtricity - Uproar - TR35
  (849, 84900, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 58),
  -- Toxtricity - Taunt - TR37
  (849, 84900, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 59),
  -- Toxtricity - Hyper Voice - TR42
  (849, 84900, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 60),
  -- Toxtricity - Poison Jab - TR57
  (849, 84900, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 61),
  -- Toxtricity - Gunk Shot - TR73
  (849, 84900, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 62),
  -- Toxtricity - Sludge Wave - TR78
  (849, 84900, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 63),
  -- Toxtricity - Electro Ball - TR80
  (849, 84900, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 64),
  -- Toxtricity - Stored Power - TR82
  (849, 84900, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 65),
  -- Toxtricity - Wild Charge - TR86
  (849, 84900, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 66),
  -- Toxtricity - Throat Chop - TR95
  (849, 84900, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 67),
  -- Toxtricity - Endeavor - Egg
  (849, 84900, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Toxtricity - Metal Sound - Egg
  (849, 84900, 319, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Toxtricity - Power-Up Punch - Egg
  (849, 84900, 612, 18, NULL, 5, NULL, NULL, NULL, NULL, 70);

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
  -- Thwackey - Strength - Egg
  (811, 81100, 70, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Thwackey - Leech Seed - Egg
  (811, 81100, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Thwackey - Growth - Egg
  (811, 81100, 74, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Thwackey - Fake Out - Egg
  (811, 81100, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Thwackey - Nature Power - Egg
  (811, 81100, 267, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Thwackey - Hammer Arm - Egg
  (811, 81100, 359, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Thwackey - Worry Seed - Egg
  (811, 81100, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Rillaboom - Strength - Egg
  (812, 81200, 70, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Rillaboom - Leech Seed - Egg
  (812, 81200, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Rillaboom - Growth - Egg
  (812, 81200, 74, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Rillaboom - Fake Out - Egg
  (812, 81200, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Rillaboom - Nature Power - Egg
  (812, 81200, 267, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Rillaboom - Hammer Arm - Egg
  (812, 81200, 359, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Rillaboom - Worry Seed - Egg
  (812, 81200, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Raboot - Sand Attack - Egg
  (814, 81400, 28, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Raboot - High Jump Kick - Egg
  (814, 81400, 136, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Raboot - Super Fang - Egg
  (814, 81400, 162, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Raboot - Sucker Punch - Egg
  (814, 81400, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cinderace - Sand Attack - Egg
  (815, 81500, 28, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Cinderace - High Jump Kick - Egg
  (815, 81500, 136, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Cinderace - Super Fang - Egg
  (815, 81500, 162, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Cinderace - Sucker Punch - Egg
  (815, 81500, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Drizzile - Mist - Egg
  (817, 81700, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Drizzile - Double Team - Egg
  (817, 81700, 104, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Drizzile - Haze - Egg
  (817, 81700, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Drizzile - Aqua Ring - Egg
  (817, 81700, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Drizzile - Ice Shard - Egg
  (817, 81700, 420, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Drizzile - Aqua Jet - Egg
  (817, 81700, 453, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Drizzile - Fell Stinger - Egg
  (817, 81700, 565, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Inteleon - Mist - Egg
  (818, 81800, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Inteleon - Double Team - Egg
  (818, 81800, 104, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Inteleon - Haze - Egg
  (818, 81800, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Inteleon - Aqua Ring - Egg
  (818, 81800, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Inteleon - Ice Shard - Egg
  (818, 81800, 420, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Inteleon - Aqua Jet - Egg
  (818, 81800, 453, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Inteleon - Fell Stinger - Egg
  (818, 81800, 565, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Greedent - Defense Curl - Egg
  (820, 82000, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Greedent - Belly Drum - Egg
  (820, 82000, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Greedent - Rollout - Egg
  (820, 82000, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Greedent - Last Resort - Egg
  (820, 82000, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Corvisquire - Sand Attack - Egg
  (822, 82200, 28, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Corvisquire - Sky Attack - Egg
  (822, 82200, 143, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Corvisquire - Spite - Egg
  (822, 82200, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Corvisquire - Rock Smash - Egg
  (822, 82200, 249, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Corvisquire - Roost - Egg
  (822, 82200, 355, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Corvisquire - Tailwind - Egg
  (822, 82200, 366, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Corvisquire - Defog - Egg
  (822, 82200, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Corviknight - Sand Attack - Egg
  (823, 82300, 28, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Corviknight - Sky Attack - Egg
  (823, 82300, 143, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Corviknight - Spite - Egg
  (823, 82300, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Corviknight - Rock Smash - Egg
  (823, 82300, 249, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Corviknight - Roost - Egg
  (823, 82300, 355, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Corviknight - Tailwind - Egg
  (823, 82300, 366, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Corviknight - Defog - Egg
  (823, 82300, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Dottler - Supersonic - Egg
  (825, 82500, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Dottler - Recover - Egg
  (825, 82500, 105, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Dottler - Sticky Web - Egg
  (825, 82500, 564, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Dottler - Infestation - Egg
  (825, 82500, 611, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Orbeetle - Supersonic - Egg
  (826, 82600, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Orbeetle - Recover - Egg
  (826, 82600, 105, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Orbeetle - Sticky Web - Egg
  (826, 82600, 564, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Orbeetle - Infestation - Egg
  (826, 82600, 611, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Thievul - Torment - Egg
  (828, 82800, 259, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Thievul - Knock Off - Egg
  (828, 82800, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Thievul - Howl - Egg
  (828, 82800, 336, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Thievul - Quick Guard - Egg
  (828, 82800, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Eldegoss - Leech Seed - Egg
  (830, 83000, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Eldegoss - Growth - Egg
  (830, 83000, 74, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Eldegoss - Poison Powder - Egg
  (830, 83000, 77, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Eldegoss - Stun Spore - Egg
  (830, 83000, 78, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Eldegoss - Sleep Powder - Egg
  (830, 83000, 79, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Eldegoss - Worry Seed - Egg
  (830, 83000, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Dubwool - Stomp - Egg
  (832, 83200, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Dubwool - Counter - Egg
  (832, 83200, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Dubwool - Swagger - Egg
  (832, 83200, 207, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Drednaw - Skull Bash - Egg
  (834, 83400, 130, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Drednaw - Gastro Acid - Egg
  (834, 83400, 380, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Drednaw - Dragon Tail - Egg
  (834, 83400, 525, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Boltund - Sand Attack - Egg
  (836, 83600, 28, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Boltund - Double-Edge - Egg
  (836, 83600, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Boltund - Howl - Egg
  (836, 83600, 336, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Boltund - Discharge - Egg
  (836, 83600, 435, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Boltund - Flame Charge - Egg
  (836, 83600, 488, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Carkol - Explosion - Egg
  (838, 83800, 153, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Carkol - Mud-Slap - Egg
  (838, 83800, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Carkol - Block - Egg
  (838, 83800, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Coalossal - Explosion - Egg
  (839, 83900, 153, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Coalossal - Mud-Slap - Egg
  (839, 83900, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Coalossal - Block - Egg
  (839, 83900, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Flapple - Defense Curl - Egg
  (841, 84100, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Flapple - Rollout - Egg
  (841, 84100, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Flapple - Recycle - Egg
  (841, 84100, 278, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Flapple - Sucker Punch - Egg
  (841, 84100, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Appletun - Defense Curl - Egg
  (842, 84200, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Appletun - Rollout - Egg
  (842, 84200, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Appletun - Recycle - Egg
  (842, 84200, 278, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Appletun - Sucker Punch - Egg
  (842, 84200, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sandaconda - Mud-Slap - Egg
  (844, 84400, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Sandaconda - Poison Tail - Egg
  (844, 84400, 342, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Sandaconda - Last Resort - Egg
  (844, 84400, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Sandaconda - Dragon Rush - Egg
  (844, 84400, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Sandaconda - Belch - Egg
  (844, 84400, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Barraskewda - Thrash - Egg
  (847, 84700, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Barraskewda - Slash - Egg
  (847, 84700, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Barraskewda - Acupressure - Egg
  (847, 84700, 367, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Barraskewda - Night Slash - Egg
  (847, 84700, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 48);
