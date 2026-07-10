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
-- Sword / Shield learnsets for default forms, species 650-700.
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
  -- Bunnelby - Leer - Level 1
  (659, 65900, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bunnelby - Mud-Slap - Level 1
  (659, 65900, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bunnelby - Tackle - Level 3
  (659, 65900, 33, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Bunnelby - Laser Focus - Level 6
  (659, 65900, 673, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Bunnelby - Quick Attack - Level 9
  (659, 65900, 98, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Bunnelby - Mud Shot - Level 12
  (659, 65900, 341, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Bunnelby - Flail - Level 15
  (659, 65900, 175, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Bunnelby - Double Kick - Level 18
  (659, 65900, 24, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Bunnelby - Bulldoze - Level 21
  (659, 65900, 523, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Bunnelby - Dig - Level 24
  (659, 65900, 91, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Bunnelby - Bounce - Level 27
  (659, 65900, 340, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Bunnelby - Take Down - Level 30
  (659, 65900, 36, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Bunnelby - Swords Dance - Level 33
  (659, 65900, 14, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Bunnelby - Earthquake - Level 36
  (659, 65900, 89, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Bunnelby - Super Fang - Level 39
  (659, 65900, 162, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Bunnelby - Dig - TM15
  (659, 65900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 16),
  -- Bunnelby - Rest - TM21
  (659, 65900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Bunnelby - Rock Slide - TM22
  (659, 65900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 18),
  -- Bunnelby - Thief - TM23
  (659, 65900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 19),
  -- Bunnelby - Snore - TM24
  (659, 65900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Bunnelby - Protect - TM25
  (659, 65900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Bunnelby - Attract - TM31
  (659, 65900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Bunnelby - Sandstorm - TM32
  (659, 65900, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 23),
  -- Bunnelby - Facade - TM39
  (659, 65900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Bunnelby - Brick Break - TM43
  (659, 65900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 25),
  -- Bunnelby - Rock Tomb - TM48
  (659, 65900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 26),
  -- Bunnelby - Bounce - TM52
  (659, 65900, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 27),
  -- Bunnelby - Mud Shot - TM53
  (659, 65900, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 28),
  -- Bunnelby - U-turn - TM56
  (659, 65900, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 29),
  -- Bunnelby - Payback - TM57
  (659, 65900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 30),
  -- Bunnelby - Fling - TM59
  (659, 65900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 31),
  -- Bunnelby - Round - TM76
  (659, 65900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Bunnelby - Bulldoze - TM81
  (659, 65900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 33),
  -- Bunnelby - Swords Dance - TR00
  (659, 65900, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 34),
  -- Bunnelby - Surf - TR04
  (659, 65900, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 35),
  -- Bunnelby - Earthquake - TR10
  (659, 65900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 36),
  -- Bunnelby - Agility - TR12
  (659, 65900, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 37),
  -- Bunnelby - Substitute - TR20
  (659, 65900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Bunnelby - Sludge Bomb - TR22
  (659, 65900, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 39),
  -- Bunnelby - Spikes - TR23
  (659, 65900, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 40),
  -- Bunnelby - Endure - TR26
  (659, 65900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Bunnelby - Sleep Talk - TR27
  (659, 65900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Bunnelby - Iron Tail - TR31
  (659, 65900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 43),
  -- Bunnelby - Bulk Up - TR48
  (659, 65900, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 44),
  -- Bunnelby - Iron Head - TR74
  (659, 65900, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 45),
  -- Bunnelby - Stone Edge - TR75
  (659, 65900, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 46),
  -- Bunnelby - Grass Knot - TR77
  (659, 65900, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 47),
  -- Bunnelby - Work Up - TR85
  (659, 65900, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 48),
  -- Bunnelby - Wild Charge - TR86
  (659, 65900, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 49),
  -- Bunnelby - Defense Curl - Egg
  (659, 65900, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bunnelby - Rollout - Egg
  (659, 65900, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Diggersby - Tackle - Level 1
  (660, 66000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Diggersby - Leer - Level 1
  (660, 66000, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Diggersby - Mud-Slap - Level 1
  (660, 66000, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Diggersby - Laser Focus - Level 1
  (660, 66000, 673, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Diggersby - Quick Attack - Level 9
  (660, 66000, 98, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Diggersby - Mud Shot - Level 12
  (660, 66000, 341, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Diggersby - Flail - Level 15
  (660, 66000, 175, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Diggersby - Double Kick - Level 18
  (660, 66000, 24, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Diggersby - Bulldoze - Level 23
  (660, 66000, 523, 18, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Diggersby - Dig - Level 28
  (660, 66000, 91, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Diggersby - Bounce - Level 33
  (660, 66000, 340, 18, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Diggersby - Take Down - Level 38
  (660, 66000, 36, 18, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Diggersby - Swords Dance - Level 43
  (660, 66000, 14, 18, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Diggersby - Earthquake - Level 48
  (660, 66000, 89, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Diggersby - Super Fang - Level 53
  (660, 66000, 162, 18, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Diggersby - Hammer Arm - Level 58
  (660, 66000, 359, 18, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Diggersby - Mega Punch - TM00
  (660, 66000, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Diggersby - Mega Kick - TM01
  (660, 66000, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Diggersby - Fire Punch - TM03
  (660, 66000, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 19),
  -- Diggersby - Ice Punch - TM04
  (660, 66000, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 20),
  -- Diggersby - Thunder Punch - TM05
  (660, 66000, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 21),
  -- Diggersby - Hyper Beam - TM08
  (660, 66000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 22),
  -- Diggersby - Giga Impact - TM09
  (660, 66000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 23),
  -- Diggersby - Dig - TM15
  (660, 66000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 24),
  -- Diggersby - Rest - TM21
  (660, 66000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Diggersby - Rock Slide - TM22
  (660, 66000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Diggersby - Thief - TM23
  (660, 66000, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 27),
  -- Diggersby - Snore - TM24
  (660, 66000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Diggersby - Protect - TM25
  (660, 66000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Diggersby - Attract - TM31
  (660, 66000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Diggersby - Sandstorm - TM32
  (660, 66000, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 31),
  -- Diggersby - Facade - TM39
  (660, 66000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Diggersby - Brick Break - TM43
  (660, 66000, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 33),
  -- Diggersby - Rock Tomb - TM48
  (660, 66000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 34),
  -- Diggersby - Sand Tomb - TM49
  (660, 66000, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 35),
  -- Diggersby - Bounce - TM52
  (660, 66000, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 36),
  -- Diggersby - Mud Shot - TM53
  (660, 66000, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 37),
  -- Diggersby - U-turn - TM56
  (660, 66000, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 38),
  -- Diggersby - Payback - TM57
  (660, 66000, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 39),
  -- Diggersby - Fling - TM59
  (660, 66000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Diggersby - Round - TM76
  (660, 66000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Diggersby - Bulldoze - TM81
  (660, 66000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 42),
  -- Diggersby - Brutal Swing - TM97
  (660, 66000, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 43),
  -- Diggersby - Stomping Tantrum - TM98
  (660, 66000, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 44),
  -- Diggersby - Swords Dance - TR00
  (660, 66000, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 45),
  -- Diggersby - Body Slam - TR01
  (660, 66000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 46),
  -- Diggersby - Surf - TR04
  (660, 66000, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 47),
  -- Diggersby - Low Kick - TR07
  (660, 66000, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 48),
  -- Diggersby - Earthquake - TR10
  (660, 66000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 49),
  -- Diggersby - Agility - TR12
  (660, 66000, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 50),
  -- Diggersby - Substitute - TR20
  (660, 66000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Diggersby - Sludge Bomb - TR22
  (660, 66000, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 52),
  -- Diggersby - Spikes - TR23
  (660, 66000, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 53),
  -- Diggersby - Endure - TR26
  (660, 66000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Diggersby - Sleep Talk - TR27
  (660, 66000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Diggersby - Iron Tail - TR31
  (660, 66000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 56),
  -- Diggersby - Uproar - TR35
  (660, 66000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 57),
  -- Diggersby - Superpower - TR39
  (660, 66000, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 58),
  -- Diggersby - Bulk Up - TR48
  (660, 66000, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 59),
  -- Diggersby - Earth Power - TR67
  (660, 66000, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 60),
  -- Diggersby - Gunk Shot - TR73
  (660, 66000, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 61),
  -- Diggersby - Iron Head - TR74
  (660, 66000, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 62),
  -- Diggersby - Stone Edge - TR75
  (660, 66000, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 63),
  -- Diggersby - Grass Knot - TR77
  (660, 66000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 64),
  -- Diggersby - Foul Play - TR81
  (660, 66000, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 65),
  -- Diggersby - Work Up - TR85
  (660, 66000, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 66),
  -- Diggersby - Wild Charge - TR86
  (660, 66000, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 67),
  -- Diggersby - High Horsepower - TR94
  (660, 66000, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 68),
  -- Fletchling - Growl - Level 1
  (661, 66100, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fletchling - Peck - Level 1
  (661, 66100, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fletchling - Quick Attack - Level 5
  (661, 66100, 98, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Fletchling - Ember - Level 10
  (661, 66100, 52, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Fletchling - Flail - Level 15
  (661, 66100, 175, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Fletchling - Acrobatics - Level 20
  (661, 66100, 512, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Fletchling - Agility - Level 25
  (661, 66100, 97, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Fletchling - Aerial Ace - Level 30
  (661, 66100, 332, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Fletchling - Tailwind - Level 35
  (661, 66100, 366, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Fletchling - Steel Wing - Level 40
  (661, 66100, 211, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Fletchling - Roost - Level 45
  (661, 66100, 355, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Fletchling - Fly - Level 50
  (661, 66100, 19, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Fletchling - Fly - TM06
  (661, 66100, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 13),
  -- Fletchling - Rest - TM21
  (661, 66100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 14),
  -- Fletchling - Thief - TM23
  (661, 66100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 15),
  -- Fletchling - Snore - TM24
  (661, 66100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Fletchling - Protect - TM25
  (661, 66100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Fletchling - Steel Wing - TM30
  (661, 66100, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 18),
  -- Fletchling - Attract - TM31
  (661, 66100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Fletchling - Sunny Day - TM34
  (661, 66100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 20),
  -- Fletchling - Will-O-Wisp - TM38
  (661, 66100, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 21),
  -- Fletchling - Facade - TM39
  (661, 66100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Fletchling - Swift - TM40
  (661, 66100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 23),
  -- Fletchling - U-turn - TM56
  (661, 66100, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 24),
  -- Fletchling - Round - TM76
  (661, 66100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 25),
  -- Fletchling - Acrobatics - TM78
  (661, 66100, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 26),
  -- Fletchling - Swords Dance - TR00
  (661, 66100, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 27),
  -- Fletchling - Agility - TR12
  (661, 66100, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 28),
  -- Fletchling - Substitute - TR20
  (661, 66100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 29),
  -- Fletchling - Endure - TR26
  (661, 66100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 30),
  -- Fletchling - Sleep Talk - TR27
  (661, 66100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 31),
  -- Fletchling - Heat Wave - TR36
  (661, 66100, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 32),
  -- Fletchling - Taunt - TR37
  (661, 66100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 33),
  -- Fletchling - Overheat - TR43
  (661, 66100, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 34),
  -- Fletchling - Work Up - TR85
  (661, 66100, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 35),
  -- Fletchling - Defog - Egg
  (661, 66100, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Fletchling - Flame Charge - Egg
  (661, 66100, 488, 18, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Fletchling - Quick Guard - Egg
  (661, 66100, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Fletchinder - Growl - Level 1
  (662, 66200, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fletchinder - Ember - Level 1
  (662, 66200, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fletchinder - Peck - Level 1
  (662, 66200, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Fletchinder - Quick Attack - Level 1
  (662, 66200, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Fletchinder - Feint - Level 1
  (662, 66200, 364, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Fletchinder - Flame Charge - Level 1
  (662, 66200, 488, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Fletchinder - Flail - Level 15
  (662, 66200, 175, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Fletchinder - Acrobatics - Level 22
  (662, 66200, 512, 18, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Fletchinder - Agility - Level 29
  (662, 66200, 97, 18, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Fletchinder - Aerial Ace - Level 36
  (662, 66200, 332, 18, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Fletchinder - Tailwind - Level 43
  (662, 66200, 366, 18, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Fletchinder - Steel Wing - Level 50
  (662, 66200, 211, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Fletchinder - Roost - Level 57
  (662, 66200, 355, 18, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Fletchinder - Fly - Level 64
  (662, 66200, 19, 18, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Fletchinder - Flame Charge - Evolution
  (662, 66200, 488, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Fletchinder - Fly - TM06
  (662, 66200, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 16),
  -- Fletchinder - Fire Spin - TM13
  (662, 66200, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 17),
  -- Fletchinder - Rest - TM21
  (662, 66200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Fletchinder - Thief - TM23
  (662, 66200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 19),
  -- Fletchinder - Snore - TM24
  (662, 66200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Fletchinder - Protect - TM25
  (662, 66200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Fletchinder - Steel Wing - TM30
  (662, 66200, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 22),
  -- Fletchinder - Attract - TM31
  (662, 66200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Fletchinder - Sunny Day - TM34
  (662, 66200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Fletchinder - Will-O-Wisp - TM38
  (662, 66200, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 25),
  -- Fletchinder - Facade - TM39
  (662, 66200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Fletchinder - Swift - TM40
  (662, 66200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Fletchinder - U-turn - TM56
  (662, 66200, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 28),
  -- Fletchinder - Round - TM76
  (662, 66200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Fletchinder - Acrobatics - TM78
  (662, 66200, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 30),
  -- Fletchinder - Swords Dance - TR00
  (662, 66200, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 31),
  -- Fletchinder - Flamethrower - TR02
  (662, 66200, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 32),
  -- Fletchinder - Agility - TR12
  (662, 66200, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 33),
  -- Fletchinder - Fire Blast - TR15
  (662, 66200, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 34),
  -- Fletchinder - Substitute - TR20
  (662, 66200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Fletchinder - Endure - TR26
  (662, 66200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Fletchinder - Sleep Talk - TR27
  (662, 66200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Fletchinder - Heat Wave - TR36
  (662, 66200, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 38),
  -- Fletchinder - Taunt - TR37
  (662, 66200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 39),
  -- Fletchinder - Overheat - TR43
  (662, 66200, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 40),
  -- Fletchinder - Work Up - TR85
  (662, 66200, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 41),
  -- Talonflame - Growl - Level 1
  (663, 66300, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Talonflame - Ember - Level 1
  (663, 66300, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Talonflame - Peck - Level 1
  (663, 66300, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Talonflame - Quick Attack - Level 1
  (663, 66300, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Talonflame - Feint - Level 1
  (663, 66300, 364, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Talonflame - Flare Blitz - Level 1
  (663, 66300, 394, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Talonflame - Flame Charge - Level 1
  (663, 66300, 488, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Talonflame - Flail - Level 15
  (663, 66300, 175, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Talonflame - Acrobatics - Level 22
  (663, 66300, 512, 18, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Talonflame - Agility - Level 29
  (663, 66300, 97, 18, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Talonflame - Aerial Ace - Level 38
  (663, 66300, 332, 18, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Talonflame - Tailwind - Level 47
  (663, 66300, 366, 18, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Talonflame - Steel Wing - Level 56
  (663, 66300, 211, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Talonflame - Roost - Level 65
  (663, 66300, 355, 18, NULL, 1, 65, NULL, NULL, NULL, 14),
  -- Talonflame - Fly - Level 74
  (663, 66300, 19, 18, NULL, 1, 74, NULL, NULL, NULL, 15),
  -- Talonflame - Brave Bird - Level 83
  (663, 66300, 413, 18, NULL, 1, 83, NULL, NULL, NULL, 16),
  -- Talonflame - Fly - TM06
  (663, 66300, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 17),
  -- Talonflame - Hyper Beam - TM08
  (663, 66300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Talonflame - Giga Impact - TM09
  (663, 66300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Talonflame - Solar Beam - TM11
  (663, 66300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Talonflame - Fire Spin - TM13
  (663, 66300, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 21),
  -- Talonflame - Rest - TM21
  (663, 66300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Talonflame - Thief - TM23
  (663, 66300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Talonflame - Snore - TM24
  (663, 66300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Talonflame - Protect - TM25
  (663, 66300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Talonflame - Steel Wing - TM30
  (663, 66300, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 26),
  -- Talonflame - Attract - TM31
  (663, 66300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Talonflame - Sunny Day - TM34
  (663, 66300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Talonflame - Will-O-Wisp - TM38
  (663, 66300, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 29),
  -- Talonflame - Facade - TM39
  (663, 66300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Talonflame - Swift - TM40
  (663, 66300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Talonflame - U-turn - TM56
  (663, 66300, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 32),
  -- Talonflame - Round - TM76
  (663, 66300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Talonflame - Acrobatics - TM78
  (663, 66300, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 34),
  -- Talonflame - Swords Dance - TR00
  (663, 66300, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 35),
  -- Talonflame - Flamethrower - TR02
  (663, 66300, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 36),
  -- Talonflame - Agility - TR12
  (663, 66300, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 37),
  -- Talonflame - Fire Blast - TR15
  (663, 66300, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 38),
  -- Talonflame - Substitute - TR20
  (663, 66300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Talonflame - Endure - TR26
  (663, 66300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Talonflame - Sleep Talk - TR27
  (663, 66300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Talonflame - Heat Wave - TR36
  (663, 66300, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 42),
  -- Talonflame - Taunt - TR37
  (663, 66300, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 43),
  -- Talonflame - Overheat - TR43
  (663, 66300, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 44),
  -- Talonflame - Bulk Up - TR48
  (663, 66300, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 45),
  -- Talonflame - Flare Blitz - TR55
  (663, 66300, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 46),
  -- Talonflame - Brave Bird - TR66
  (663, 66300, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 47),
  -- Talonflame - Work Up - TR85
  (663, 66300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 48),
  -- Talonflame - Hurricane - TR89
  (663, 66300, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 49),
  -- Pancham - Tackle - Level 1
  (674, 67400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pancham - Leer - Level 1
  (674, 67400, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pancham - Arm Thrust - Level 4
  (674, 67400, 292, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pancham - Taunt - Level 8
  (674, 67400, 269, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pancham - Circle Throw - Level 12
  (674, 67400, 509, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pancham - Low Sweep - Level 16
  (674, 67400, 490, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Pancham - Work Up - Level 20
  (674, 67400, 526, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pancham - Slash - Level 24
  (674, 67400, 163, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Pancham - Vital Throw - Level 28
  (674, 67400, 233, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Pancham - Crunch - Level 33
  (674, 67400, 242, 18, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Pancham - Body Slam - Level 36
  (674, 67400, 34, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Pancham - Parting Shot - Level 40
  (674, 67400, 575, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Pancham - Entrainment - Level 44
  (674, 67400, 494, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Pancham - Mega Punch - TM00
  (674, 67400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 14),
  -- Pancham - Mega Kick - TM01
  (674, 67400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 15),
  -- Pancham - Fire Punch - TM03
  (674, 67400, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 16),
  -- Pancham - Ice Punch - TM04
  (674, 67400, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 17),
  -- Pancham - Thunder Punch - TM05
  (674, 67400, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 18),
  -- Pancham - Dig - TM15
  (674, 67400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 19),
  -- Pancham - Rest - TM21
  (674, 67400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Pancham - Rock Slide - TM22
  (674, 67400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Pancham - Snore - TM24
  (674, 67400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Pancham - Protect - TM25
  (674, 67400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Pancham - Attract - TM31
  (674, 67400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Pancham - Rain Dance - TM33
  (674, 67400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Pancham - Sunny Day - TM34
  (674, 67400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Pancham - Facade - TM39
  (674, 67400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Pancham - Helping Hand - TM41
  (674, 67400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Pancham - Brick Break - TM43
  (674, 67400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 29),
  -- Pancham - Rock Tomb - TM48
  (674, 67400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Pancham - Payback - TM57
  (674, 67400, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Pancham - Fling - TM59
  (674, 67400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 32),
  -- Pancham - Drain Punch - TM63
  (674, 67400, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 33),
  -- Pancham - Shadow Claw - TM65
  (674, 67400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 34),
  -- Pancham - Low Sweep - TM75
  (674, 67400, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 35),
  -- Pancham - Round - TM76
  (674, 67400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Pancham - Retaliate - TM79
  (674, 67400, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 37),
  -- Pancham - Bulldoze - TM81
  (674, 67400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 38),
  -- Pancham - False Swipe - TM94
  (674, 67400, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 39),
  -- Pancham - Swords Dance - TR00
  (674, 67400, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 40),
  -- Pancham - Body Slam - TR01
  (674, 67400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 41),
  -- Pancham - Surf - TR04
  (674, 67400, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 42),
  -- Pancham - Low Kick - TR07
  (674, 67400, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 43),
  -- Pancham - Substitute - TR20
  (674, 67400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Pancham - Sludge Bomb - TR22
  (674, 67400, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 45),
  -- Pancham - Endure - TR26
  (674, 67400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Pancham - Sleep Talk - TR27
  (674, 67400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Pancham - Crunch - TR32
  (674, 67400, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 48),
  -- Pancham - Uproar - TR35
  (674, 67400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 49),
  -- Pancham - Taunt - TR37
  (674, 67400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 50),
  -- Pancham - Superpower - TR39
  (674, 67400, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 51),
  -- Pancham - Hyper Voice - TR42
  (674, 67400, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 52),
  -- Pancham - Bulk Up - TR48
  (674, 67400, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 53),
  -- Pancham - Dark Pulse - TR58
  (674, 67400, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 54),
  -- Pancham - Zen Headbutt - TR69
  (674, 67400, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 55),
  -- Pancham - Gunk Shot - TR73
  (674, 67400, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 56),
  -- Pancham - Iron Head - TR74
  (674, 67400, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 57),
  -- Pancham - Stone Edge - TR75
  (674, 67400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 58),
  -- Pancham - Grass Knot - TR77
  (674, 67400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 59),
  -- Pancham - Foul Play - TR81
  (674, 67400, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 60),
  -- Pancham - Work Up - TR85
  (674, 67400, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 61),
  -- Pancham - Seismic Toss - Egg
  (674, 67400, 69, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Pancham - Storm Throw - Egg
  (674, 67400, 480, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Pancham - Quick Guard - Egg
  (674, 67400, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Pancham - Quash - Egg
  (674, 67400, 511, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Pancham - Power Trip - Egg
  (674, 67400, 681, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Pangoro - Tackle - Level 1
  (675, 67500, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pangoro - Leer - Level 1
  (675, 67500, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pangoro - Taunt - Level 1
  (675, 67500, 269, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pangoro - Arm Thrust - Level 1
  (675, 67500, 292, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pangoro - Night Slash - Level 1
  (675, 67500, 400, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Pangoro - Bullet Punch - Level 1
  (675, 67500, 418, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Pangoro - Circle Throw - Level 12
  (675, 67500, 509, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Pangoro - Low Sweep - Level 16
  (675, 67500, 490, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Pangoro - Work Up - Level 20
  (675, 67500, 526, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Pangoro - Slash - Level 24
  (675, 67500, 163, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Pangoro - Vital Throw - Level 28
  (675, 67500, 233, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Pangoro - Crunch - Level 35
  (675, 67500, 242, 18, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Pangoro - Body Slam - Level 40
  (675, 67500, 34, 18, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Pangoro - Parting Shot - Level 46
  (675, 67500, 575, 18, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Pangoro - Entrainment - Level 52
  (675, 67500, 494, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Pangoro - Hammer Arm - Level 58
  (675, 67500, 359, 18, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Pangoro - Night Slash - Evolution
  (675, 67500, 400, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Pangoro - Mega Punch - TM00
  (675, 67500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 18),
  -- Pangoro - Mega Kick - TM01
  (675, 67500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 19),
  -- Pangoro - Fire Punch - TM03
  (675, 67500, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 20),
  -- Pangoro - Ice Punch - TM04
  (675, 67500, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 21),
  -- Pangoro - Thunder Punch - TM05
  (675, 67500, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 22),
  -- Pangoro - Hyper Beam - TM08
  (675, 67500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Pangoro - Giga Impact - TM09
  (675, 67500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Pangoro - Dig - TM15
  (675, 67500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 25),
  -- Pangoro - Rest - TM21
  (675, 67500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Pangoro - Rock Slide - TM22
  (675, 67500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 27),
  -- Pangoro - Thief - TM23
  (675, 67500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 28),
  -- Pangoro - Snore - TM24
  (675, 67500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Pangoro - Protect - TM25
  (675, 67500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Pangoro - Scary Face - TM26
  (675, 67500, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Pangoro - Attract - TM31
  (675, 67500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Pangoro - Rain Dance - TM33
  (675, 67500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 33),
  -- Pangoro - Sunny Day - TM34
  (675, 67500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 34),
  -- Pangoro - Beat Up - TM37
  (675, 67500, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 35),
  -- Pangoro - Facade - TM39
  (675, 67500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Pangoro - Helping Hand - TM41
  (675, 67500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 37),
  -- Pangoro - Revenge - TM42
  (675, 67500, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 38),
  -- Pangoro - Brick Break - TM43
  (675, 67500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 39),
  -- Pangoro - Rock Tomb - TM48
  (675, 67500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 40),
  -- Pangoro - Payback - TM57
  (675, 67500, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 41),
  -- Pangoro - Fling - TM59
  (675, 67500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 42),
  -- Pangoro - Drain Punch - TM63
  (675, 67500, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 43),
  -- Pangoro - Shadow Claw - TM65
  (675, 67500, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 44),
  -- Pangoro - Low Sweep - TM75
  (675, 67500, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 45),
  -- Pangoro - Round - TM76
  (675, 67500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 46),
  -- Pangoro - Retaliate - TM79
  (675, 67500, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 47),
  -- Pangoro - Bulldoze - TM81
  (675, 67500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 48),
  -- Pangoro - Snarl - TM85
  (675, 67500, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 49),
  -- Pangoro - False Swipe - TM94
  (675, 67500, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 50),
  -- Pangoro - Stomping Tantrum - TM98
  (675, 67500, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 51),
  -- Pangoro - Swords Dance - TR00
  (675, 67500, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 52),
  -- Pangoro - Body Slam - TR01
  (675, 67500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 53),
  -- Pangoro - Surf - TR04
  (675, 67500, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 54),
  -- Pangoro - Low Kick - TR07
  (675, 67500, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 55),
  -- Pangoro - Earthquake - TR10
  (675, 67500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 56),
  -- Pangoro - Focus Energy - TR13
  (675, 67500, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 57),
  -- Pangoro - Substitute - TR20
  (675, 67500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 58),
  -- Pangoro - Reversal - TR21
  (675, 67500, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 59),
  -- Pangoro - Sludge Bomb - TR22
  (675, 67500, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 60),
  -- Pangoro - Outrage - TR24
  (675, 67500, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 61),
  -- Pangoro - Endure - TR26
  (675, 67500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 62),
  -- Pangoro - Sleep Talk - TR27
  (675, 67500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 63),
  -- Pangoro - Crunch - TR32
  (675, 67500, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 64),
  -- Pangoro - Uproar - TR35
  (675, 67500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 65),
  -- Pangoro - Taunt - TR37
  (675, 67500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 66),
  -- Pangoro - Superpower - TR39
  (675, 67500, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 67),
  -- Pangoro - Hyper Voice - TR42
  (675, 67500, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 68),
  -- Pangoro - Dragon Claw - TR47
  (675, 67500, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 69),
  -- Pangoro - Bulk Up - TR48
  (675, 67500, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 70),
  -- Pangoro - Close Combat - TR53
  (675, 67500, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 71),
  -- Pangoro - Poison Jab - TR57
  (675, 67500, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 72),
  -- Pangoro - Dark Pulse - TR58
  (675, 67500, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 73),
  -- Pangoro - X-Scissor - TR60
  (675, 67500, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 74),
  -- Pangoro - Focus Blast - TR64
  (675, 67500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 75),
  -- Pangoro - Zen Headbutt - TR69
  (675, 67500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 76),
  -- Pangoro - Gunk Shot - TR73
  (675, 67500, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 77),
  -- Pangoro - Iron Head - TR74
  (675, 67500, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 78),
  -- Pangoro - Stone Edge - TR75
  (675, 67500, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 79),
  -- Pangoro - Grass Knot - TR77
  (675, 67500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 80),
  -- Pangoro - Foul Play - TR81
  (675, 67500, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 81),
  -- Pangoro - Work Up - TR85
  (675, 67500, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 82),
  -- Pangoro - Darkest Lariat - TR93
  (675, 67500, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 83),
  -- Pangoro - Throat Chop - TR95
  (675, 67500, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 84),
  -- Espurr - Scratch - Level 1
  (677, 67700, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Espurr - Leer - Level 1
  (677, 67700, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Espurr - Fake Out - Level 3
  (677, 67700, 252, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Espurr - Disarming Voice - Level 6
  (677, 67700, 574, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Espurr - Confusion - Level 9
  (677, 67700, 93, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Espurr - Covet - Level 18
  (677, 67700, 343, 18, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Espurr - Psybeam - Level 21
  (677, 67700, 60, 18, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Espurr - Light Screen - Level 30
  (677, 67700, 113, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Espurr - Reflect - Level 30
  (677, 67700, 115, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Espurr - Psyshock - Level 33
  (677, 67700, 473, 18, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Espurr - Pay Day - TM02
  (677, 67700, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 11),
  -- Espurr - Thunder Wave - TM14
  (677, 67700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 12),
  -- Espurr - Light Screen - TM17
  (677, 67700, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 13),
  -- Espurr - Reflect - TM18
  (677, 67700, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 14),
  -- Espurr - Safeguard - TM19
  (677, 67700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 15),
  -- Espurr - Rest - TM21
  (677, 67700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Espurr - Snore - TM24
  (677, 67700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Espurr - Protect - TM25
  (677, 67700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Espurr - Attract - TM31
  (677, 67700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Espurr - Rain Dance - TM33
  (677, 67700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 20),
  -- Espurr - Sunny Day - TM34
  (677, 67700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 21),
  -- Espurr - Facade - TM39
  (677, 67700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Espurr - Swift - TM40
  (677, 67700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 23),
  -- Espurr - Helping Hand - TM41
  (677, 67700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 24),
  -- Espurr - Fake Tears - TM47
  (677, 67700, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 25),
  -- Espurr - Payback - TM57
  (677, 67700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 26),
  -- Espurr - Trick Room - TM70
  (677, 67700, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 27),
  -- Espurr - Wonder Room - TM71
  (677, 67700, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 28),
  -- Espurr - Magic Room - TM72
  (677, 67700, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 29),
  -- Espurr - Round - TM76
  (677, 67700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 30),
  -- Espurr - Thunderbolt - TR08
  (677, 67700, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 31),
  -- Espurr - Psychic - TR11
  (677, 67700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 32),
  -- Espurr - Substitute - TR20
  (677, 67700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 33),
  -- Espurr - Psyshock - TR25
  (677, 67700, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 34),
  -- Espurr - Endure - TR26
  (677, 67700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Espurr - Sleep Talk - TR27
  (677, 67700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Espurr - Iron Tail - TR31
  (677, 67700, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 37),
  -- Espurr - Trick - TR38
  (677, 67700, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 38),
  -- Espurr - Skill Swap - TR40
  (677, 67700, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 39),
  -- Espurr - Calm Mind - TR49
  (677, 67700, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 40),
  -- Espurr - Dark Pulse - TR58
  (677, 67700, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 41),
  -- Espurr - Energy Ball - TR65
  (677, 67700, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 42),
  -- Espurr - Nasty Plot - TR68
  (677, 67700, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 43),
  -- Espurr - Zen Headbutt - TR69
  (677, 67700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 44),
  -- Espurr - Ally Switch - TR83
  (677, 67700, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 45),
  -- Espurr - Work Up - TR85
  (677, 67700, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 46),
  -- Espurr - Play Rough - TR90
  (677, 67700, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 47),
  -- Espurr - Yawn - Egg
  (677, 67700, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Espurr - Tickle - Egg
  (677, 67700, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Meowstic - Scratch - Level 1
  (678, 67800, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowstic - Leer - Level 1
  (678, 67800, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowstic - Mean Look - Level 1
  (678, 67800, 212, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meowstic - Fake Out - Level 1
  (678, 67800, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Meowstic - Disarming Voice - Level 1
  (678, 67800, 574, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Meowstic - Confusion - Level 9
  (678, 67800, 93, 18, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Meowstic - Helping Hand - Level 12
  (678, 67800, 270, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Meowstic - Charm - Level 15
  (678, 67800, 204, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Meowstic - Covet - Level 18
  (678, 67800, 343, 18, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Meowstic - Psybeam - Level 21
  (678, 67800, 60, 18, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Meowstic - Sucker Punch - Level 24
  (678, 67800, 389, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Meowstic - Role Play - Level 29
  (678, 67800, 272, 18, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Meowstic - Light Screen - Level 34
  (678, 67800, 113, 18, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Meowstic - Reflect - Level 34
  (678, 67800, 115, 18, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Meowstic - Psyshock - Level 39
  (678, 67800, 473, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Meowstic - Imprison - Level 44
  (678, 67800, 286, 18, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Meowstic - Quick Guard - Level 49
  (678, 67800, 501, 18, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Meowstic - Psychic - Level 54
  (678, 67800, 94, 18, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Meowstic - Misty Terrain - Level 59
  (678, 67800, 581, 18, NULL, 1, 59, NULL, NULL, NULL, 19),
  -- Meowstic - Pay Day - TM02
  (678, 67800, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 20),
  -- Meowstic - Hyper Beam - TM08
  (678, 67800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Meowstic - Giga Impact - TM09
  (678, 67800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Meowstic - Thunder Wave - TM14
  (678, 67800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 23),
  -- Meowstic - Dig - TM15
  (678, 67800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 24),
  -- Meowstic - Light Screen - TM17
  (678, 67800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 25),
  -- Meowstic - Reflect - TM18
  (678, 67800, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 26),
  -- Meowstic - Safeguard - TM19
  (678, 67800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 27),
  -- Meowstic - Rest - TM21
  (678, 67800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 28),
  -- Meowstic - Snore - TM24
  (678, 67800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Meowstic - Protect - TM25
  (678, 67800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Meowstic - Charm - TM29
  (678, 67800, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 31),
  -- Meowstic - Attract - TM31
  (678, 67800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Meowstic - Rain Dance - TM33
  (678, 67800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 33),
  -- Meowstic - Sunny Day - TM34
  (678, 67800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 34),
  -- Meowstic - Facade - TM39
  (678, 67800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 35),
  -- Meowstic - Swift - TM40
  (678, 67800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 36),
  -- Meowstic - Helping Hand - TM41
  (678, 67800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 37),
  -- Meowstic - Imprison - TM44
  (678, 67800, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 38),
  -- Meowstic - Fake Tears - TM47
  (678, 67800, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 39),
  -- Meowstic - Payback - TM57
  (678, 67800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 40),
  -- Meowstic - Trick Room - TM70
  (678, 67800, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 41),
  -- Meowstic - Wonder Room - TM71
  (678, 67800, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 42),
  -- Meowstic - Magic Room - TM72
  (678, 67800, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 43),
  -- Meowstic - Round - TM76
  (678, 67800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 44),
  -- Meowstic - Tail Slap - TM84
  (678, 67800, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 45),
  -- Meowstic - Misty Terrain - TM89
  (678, 67800, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 46),
  -- Meowstic - Psychic Terrain - TM91
  (678, 67800, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 47),
  -- Meowstic - Thunderbolt - TR08
  (678, 67800, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 48),
  -- Meowstic - Psychic - TR11
  (678, 67800, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 49),
  -- Meowstic - Substitute - TR20
  (678, 67800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 50),
  -- Meowstic - Psyshock - TR25
  (678, 67800, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 51),
  -- Meowstic - Endure - TR26
  (678, 67800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 52),
  -- Meowstic - Sleep Talk - TR27
  (678, 67800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 53),
  -- Meowstic - Iron Tail - TR31
  (678, 67800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 54),
  -- Meowstic - Shadow Ball - TR33
  (678, 67800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 55),
  -- Meowstic - Trick - TR38
  (678, 67800, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 56),
  -- Meowstic - Skill Swap - TR40
  (678, 67800, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 57),
  -- Meowstic - Calm Mind - TR49
  (678, 67800, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 58),
  -- Meowstic - Dark Pulse - TR58
  (678, 67800, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 59),
  -- Meowstic - Energy Ball - TR65
  (678, 67800, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 60),
  -- Meowstic - Nasty Plot - TR68
  (678, 67800, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 61),
  -- Meowstic - Zen Headbutt - TR69
  (678, 67800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 62),
  -- Meowstic - Ally Switch - TR83
  (678, 67800, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 63),
  -- Meowstic - Work Up - TR85
  (678, 67800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 64),
  -- Meowstic - Play Rough - TR90
  (678, 67800, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 65),
  -- Meowstic - Tickle - Egg
  (678, 67800, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Meowstic - Yawn - Egg
  (678, 67800, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Honedge - Tackle - Level 1
  (679, 67900, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Honedge - Fury Cutter - Level 1
  (679, 67900, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Honedge - Shadow Sneak - Level 4
  (679, 67900, 425, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Honedge - Autotomize - Level 8
  (679, 67900, 475, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Honedge - Aerial Ace - Level 12
  (679, 67900, 332, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Honedge - Metal Sound - Level 16
  (679, 67900, 319, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Honedge - Slash - Level 20
  (679, 67900, 163, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Honedge - Night Slash - Level 24
  (679, 67900, 400, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Honedge - Retaliate - Level 28
  (679, 67900, 514, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Honedge - Iron Defense - Level 32
  (679, 67900, 334, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Honedge - Iron Head - Level 36
  (679, 67900, 442, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Honedge - Power Trick - Level 40
  (679, 67900, 379, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Honedge - Swords Dance - Level 44
  (679, 67900, 14, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Honedge - Sacred Sword - Level 48
  (679, 67900, 533, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Honedge - Solar Blade - TM12
  (679, 67900, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 15),
  -- Honedge - Screech - TM16
  (679, 67900, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 16),
  -- Honedge - Reflect - TM18
  (679, 67900, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 17),
  -- Honedge - Rest - TM21
  (679, 67900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Honedge - Rock Slide - TM22
  (679, 67900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 19),
  -- Honedge - Snore - TM24
  (679, 67900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Honedge - Protect - TM25
  (679, 67900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Honedge - Attract - TM31
  (679, 67900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Honedge - Rain Dance - TM33
  (679, 67900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Honedge - Facade - TM39
  (679, 67900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Honedge - Brick Break - TM43
  (679, 67900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 25),
  -- Honedge - Shadow Claw - TM65
  (679, 67900, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 26),
  -- Honedge - Psycho Cut - TM69
  (679, 67900, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 27),
  -- Honedge - Round - TM76
  (679, 67900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Honedge - Retaliate - TM79
  (679, 67900, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 29),
  -- Honedge - False Swipe - TM94
  (679, 67900, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 30),
  -- Honedge - Brutal Swing - TM97
  (679, 67900, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 31),
  -- Honedge - Swords Dance - TR00
  (679, 67900, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 32),
  -- Honedge - Substitute - TR20
  (679, 67900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 33),
  -- Honedge - Reversal - TR21
  (679, 67900, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 34),
  -- Honedge - Endure - TR26
  (679, 67900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Honedge - Sleep Talk - TR27
  (679, 67900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Honedge - Iron Defense - TR46
  (679, 67900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 37),
  -- Honedge - Gyro Ball - TR52
  (679, 67900, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 38),
  -- Honedge - Close Combat - TR53
  (679, 67900, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 39),
  -- Honedge - Flash Cannon - TR70
  (679, 67900, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 40),
  -- Honedge - Iron Head - TR74
  (679, 67900, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 41),
  -- Honedge - Destiny Bond - Egg
  (679, 67900, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Honedge - Block - Egg
  (679, 67900, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Honedge - Wide Guard - Egg
  (679, 67900, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Honedge - Steel Beam - Tutor
  (679, 67900, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 45),
  -- Doublade - Tackle - Level 1
  (680, 68000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Doublade - Fury Cutter - Level 1
  (680, 68000, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Doublade - Shadow Sneak - Level 1
  (680, 68000, 425, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Doublade - Autotomize - Level 1
  (680, 68000, 475, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Doublade - Aerial Ace - Level 12
  (680, 68000, 332, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Doublade - Metal Sound - Level 16
  (680, 68000, 319, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Doublade - Slash - Level 20
  (680, 68000, 163, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Doublade - Night Slash - Level 24
  (680, 68000, 400, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Doublade - Retaliate - Level 28
  (680, 68000, 514, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Doublade - Iron Defense - Level 32
  (680, 68000, 334, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Doublade - Iron Head - Level 38
  (680, 68000, 442, 18, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Doublade - Power Trick - Level 44
  (680, 68000, 379, 18, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Doublade - Swords Dance - Level 50
  (680, 68000, 14, 18, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Doublade - Sacred Sword - Level 56
  (680, 68000, 533, 18, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Doublade - Solar Blade - TM12
  (680, 68000, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 15),
  -- Doublade - Screech - TM16
  (680, 68000, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 16),
  -- Doublade - Reflect - TM18
  (680, 68000, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 17),
  -- Doublade - Rest - TM21
  (680, 68000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Doublade - Rock Slide - TM22
  (680, 68000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 19),
  -- Doublade - Snore - TM24
  (680, 68000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Doublade - Protect - TM25
  (680, 68000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Doublade - Attract - TM31
  (680, 68000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Doublade - Rain Dance - TM33
  (680, 68000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Doublade - Facade - TM39
  (680, 68000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Doublade - Brick Break - TM43
  (680, 68000, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 25),
  -- Doublade - Shadow Claw - TM65
  (680, 68000, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 26),
  -- Doublade - Psycho Cut - TM69
  (680, 68000, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 27),
  -- Doublade - Round - TM76
  (680, 68000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Doublade - Retaliate - TM79
  (680, 68000, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 29),
  -- Doublade - False Swipe - TM94
  (680, 68000, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 30),
  -- Doublade - Brutal Swing - TM97
  (680, 68000, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 31),
  -- Doublade - Swords Dance - TR00
  (680, 68000, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 32),
  -- Doublade - Substitute - TR20
  (680, 68000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 33),
  -- Doublade - Reversal - TR21
  (680, 68000, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 34),
  -- Doublade - Endure - TR26
  (680, 68000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Doublade - Sleep Talk - TR27
  (680, 68000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Doublade - Iron Defense - TR46
  (680, 68000, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 37),
  -- Doublade - Gyro Ball - TR52
  (680, 68000, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 38),
  -- Doublade - Close Combat - TR53
  (680, 68000, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 39),
  -- Doublade - Flash Cannon - TR70
  (680, 68000, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 40),
  -- Doublade - Iron Head - TR74
  (680, 68000, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 41),
  -- Doublade - Steel Beam - Tutor
  (680, 68000, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 42),
  -- Aegislash - Swords Dance - Level 1
  (681, 68100, 14, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aegislash - Tackle - Level 1
  (681, 68100, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aegislash - Slash - Level 1
  (681, 68100, 163, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Aegislash - Fury Cutter - Level 1
  (681, 68100, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Aegislash - Metal Sound - Level 1
  (681, 68100, 319, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Aegislash - Aerial Ace - Level 1
  (681, 68100, 332, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Aegislash - Iron Defense - Level 1
  (681, 68100, 334, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Aegislash - Power Trick - Level 1
  (681, 68100, 379, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Aegislash - Night Slash - Level 1
  (681, 68100, 400, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Aegislash - Shadow Sneak - Level 1
  (681, 68100, 425, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Aegislash - Iron Head - Level 1
  (681, 68100, 442, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Aegislash - Head Smash - Level 1
  (681, 68100, 457, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Aegislash - Autotomize - Level 1
  (681, 68100, 475, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Aegislash - Retaliate - Level 1
  (681, 68100, 514, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Aegislash - Sacred Sword - Level 1
  (681, 68100, 533, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Aegislash - King's Shield - Level 1
  (681, 68100, 588, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Aegislash - King's Shield - Evolution
  (681, 68100, 588, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Aegislash - Hyper Beam - TM08
  (681, 68100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Aegislash - Giga Impact - TM09
  (681, 68100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Aegislash - Solar Blade - TM12
  (681, 68100, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 20),
  -- Aegislash - Screech - TM16
  (681, 68100, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 21),
  -- Aegislash - Reflect - TM18
  (681, 68100, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 22),
  -- Aegislash - Rest - TM21
  (681, 68100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Aegislash - Rock Slide - TM22
  (681, 68100, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Aegislash - Snore - TM24
  (681, 68100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Aegislash - Protect - TM25
  (681, 68100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Aegislash - Attract - TM31
  (681, 68100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Aegislash - Rain Dance - TM33
  (681, 68100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Aegislash - Sunny Day - TM34
  (681, 68100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Aegislash - Facade - TM39
  (681, 68100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Aegislash - Brick Break - TM43
  (681, 68100, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Aegislash - Shadow Claw - TM65
  (681, 68100, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 32),
  -- Aegislash - Psycho Cut - TM69
  (681, 68100, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 33),
  -- Aegislash - Round - TM76
  (681, 68100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Aegislash - Retaliate - TM79
  (681, 68100, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 35),
  -- Aegislash - False Swipe - TM94
  (681, 68100, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 36),
  -- Aegislash - Air Slash - TM95
  (681, 68100, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 37),
  -- Aegislash - Brutal Swing - TM97
  (681, 68100, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 38),
  -- Aegislash - Swords Dance - TR00
  (681, 68100, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 39),
  -- Aegislash - Substitute - TR20
  (681, 68100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Aegislash - Reversal - TR21
  (681, 68100, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 41),
  -- Aegislash - Endure - TR26
  (681, 68100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Aegislash - Sleep Talk - TR27
  (681, 68100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Aegislash - Shadow Ball - TR33
  (681, 68100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 44),
  -- Aegislash - Iron Defense - TR46
  (681, 68100, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 45),
  -- Aegislash - Gyro Ball - TR52
  (681, 68100, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 46),
  -- Aegislash - Close Combat - TR53
  (681, 68100, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 47),
  -- Aegislash - Flash Cannon - TR70
  (681, 68100, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 48),
  -- Aegislash - Iron Head - TR74
  (681, 68100, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 49),
  -- Aegislash - Steel Beam - Tutor
  (681, 68100, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 50),
  -- Spritzee - Sweet Scent - Level 1
  (682, 68200, 230, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spritzee - Fairy Wind - Level 1
  (682, 68200, 584, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spritzee - Sweet Kiss - Level 3
  (682, 68200, 186, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Spritzee - Echoed Voice - Level 6
  (682, 68200, 497, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Spritzee - Disarming Voice - Level 9
  (682, 68200, 574, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Spritzee - Aromatherapy - Level 12
  (682, 68200, 312, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Spritzee - Draining Kiss - Level 15
  (682, 68200, 577, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Spritzee - Attract - Level 18
  (682, 68200, 213, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Spritzee - Flail - Level 21
  (682, 68200, 175, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Spritzee - Misty Terrain - Level 24
  (682, 68200, 581, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Spritzee - Psychic - Level 27
  (682, 68200, 94, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Spritzee - Charm - Level 30
  (682, 68200, 204, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Spritzee - Calm Mind - Level 33
  (682, 68200, 347, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Spritzee - Moonblast - Level 36
  (682, 68200, 585, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Spritzee - Skill Swap - Level 39
  (682, 68200, 285, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Spritzee - Light Screen - TM17
  (682, 68200, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Spritzee - Reflect - TM18
  (682, 68200, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 17),
  -- Spritzee - Rest - TM21
  (682, 68200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Spritzee - Snore - TM24
  (682, 68200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Spritzee - Protect - TM25
  (682, 68200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Spritzee - Charm - TM29
  (682, 68200, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 21),
  -- Spritzee - Attract - TM31
  (682, 68200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Spritzee - Rain Dance - TM33
  (682, 68200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Spritzee - Sunny Day - TM34
  (682, 68200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Spritzee - Facade - TM39
  (682, 68200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Spritzee - Helping Hand - TM41
  (682, 68200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 26),
  -- Spritzee - Fake Tears - TM47
  (682, 68200, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 27),
  -- Spritzee - Trick Room - TM70
  (682, 68200, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 28),
  -- Spritzee - Round - TM76
  (682, 68200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Spritzee - Draining Kiss - TM87
  (682, 68200, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 30),
  -- Spritzee - Misty Terrain - TM89
  (682, 68200, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 31),
  -- Spritzee - Thunderbolt - TR08
  (682, 68200, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 32),
  -- Spritzee - Psychic - TR11
  (682, 68200, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 33),
  -- Spritzee - Substitute - TR20
  (682, 68200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 34),
  -- Spritzee - Endure - TR26
  (682, 68200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Spritzee - Sleep Talk - TR27
  (682, 68200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Spritzee - Encore - TR30
  (682, 68200, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 37),
  -- Spritzee - Skill Swap - TR40
  (682, 68200, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 38),
  -- Spritzee - Calm Mind - TR49
  (682, 68200, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 39),
  -- Spritzee - Gyro Ball - TR52
  (682, 68200, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 40),
  -- Spritzee - Energy Ball - TR65
  (682, 68200, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 41),
  -- Spritzee - Nasty Plot - TR68
  (682, 68200, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 42),
  -- Spritzee - Flash Cannon - TR70
  (682, 68200, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 43),
  -- Spritzee - Ally Switch - TR83
  (682, 68200, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 44),
  -- Spritzee - Dazzling Gleam - TR92
  (682, 68200, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 45),
  -- Spritzee - Disable - Egg
  (682, 68200, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Spritzee - Wish - Egg
  (682, 68200, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Spritzee - After You - Egg
  (682, 68200, 495, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Aromatisse - Sweet Kiss - Level 1
  (683, 68300, 186, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aromatisse - Sweet Scent - Level 1
  (683, 68300, 230, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aromatisse - Echoed Voice - Level 1
  (683, 68300, 497, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Aromatisse - Heal Pulse - Level 1
  (683, 68300, 505, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Aromatisse - Fairy Wind - Level 1
  (683, 68300, 584, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Aromatisse - Aromatic Mist - Level 1
  (683, 68300, 597, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Aromatisse - Disarming Voice - Level 9
  (683, 68300, 574, 18, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Aromatisse - Aromatherapy - Level 12
  (683, 68300, 312, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Aromatisse - Draining Kiss - Level 15
  (683, 68300, 577, 18, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Aromatisse - Attract - Level 18
  (683, 68300, 213, 18, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Aromatisse - Flail - Level 21
  (683, 68300, 175, 18, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Aromatisse - Misty Terrain - Level 24
  (683, 68300, 581, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Aromatisse - Psychic - Level 27
  (683, 68300, 94, 18, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Aromatisse - Charm - Level 30
  (683, 68300, 204, 18, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Aromatisse - Calm Mind - Level 33
  (683, 68300, 347, 18, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Aromatisse - Moonblast - Level 36
  (683, 68300, 585, 18, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Aromatisse - Skill Swap - Level 39
  (683, 68300, 285, 18, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Aromatisse - Psych Up - Level 42
  (683, 68300, 244, 18, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Aromatisse - Hyper Beam - TM08
  (683, 68300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Aromatisse - Giga Impact - TM09
  (683, 68300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Aromatisse - Light Screen - TM17
  (683, 68300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 21),
  -- Aromatisse - Reflect - TM18
  (683, 68300, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 22),
  -- Aromatisse - Rest - TM21
  (683, 68300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Aromatisse - Snore - TM24
  (683, 68300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Aromatisse - Protect - TM25
  (683, 68300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Aromatisse - Charm - TM29
  (683, 68300, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 26),
  -- Aromatisse - Attract - TM31
  (683, 68300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Aromatisse - Rain Dance - TM33
  (683, 68300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Aromatisse - Sunny Day - TM34
  (683, 68300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Aromatisse - Facade - TM39
  (683, 68300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Aromatisse - Helping Hand - TM41
  (683, 68300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 31),
  -- Aromatisse - Fake Tears - TM47
  (683, 68300, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 32),
  -- Aromatisse - Drain Punch - TM63
  (683, 68300, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 33),
  -- Aromatisse - Trick Room - TM70
  (683, 68300, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 34),
  -- Aromatisse - Round - TM76
  (683, 68300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Aromatisse - Draining Kiss - TM87
  (683, 68300, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 36),
  -- Aromatisse - Misty Terrain - TM89
  (683, 68300, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 37),
  -- Aromatisse - Thunderbolt - TR08
  (683, 68300, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 38),
  -- Aromatisse - Thunder - TR09
  (683, 68300, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 39),
  -- Aromatisse - Psychic - TR11
  (683, 68300, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 40),
  -- Aromatisse - Metronome - TR14
  (683, 68300, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 41),
  -- Aromatisse - Substitute - TR20
  (683, 68300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Aromatisse - Psyshock - TR25
  (683, 68300, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 43),
  -- Aromatisse - Endure - TR26
  (683, 68300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Aromatisse - Sleep Talk - TR27
  (683, 68300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Aromatisse - Encore - TR30
  (683, 68300, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 46),
  -- Aromatisse - Skill Swap - TR40
  (683, 68300, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 47),
  -- Aromatisse - Calm Mind - TR49
  (683, 68300, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 48),
  -- Aromatisse - Gyro Ball - TR52
  (683, 68300, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 49),
  -- Aromatisse - Energy Ball - TR65
  (683, 68300, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 50),
  -- Aromatisse - Nasty Plot - TR68
  (683, 68300, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 51),
  -- Aromatisse - Flash Cannon - TR70
  (683, 68300, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 52),
  -- Aromatisse - Ally Switch - TR83
  (683, 68300, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 53),
  -- Aromatisse - Dazzling Gleam - TR92
  (683, 68300, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 54),
  -- Swirlix - Tackle - Level 1
  (684, 68400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swirlix - Sweet Scent - Level 1
  (684, 68400, 230, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swirlix - Play Nice - Level 3
  (684, 68400, 589, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Swirlix - Fairy Wind - Level 6
  (684, 68400, 584, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Swirlix - Aromatherapy - Level 9
  (684, 68400, 312, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Swirlix - Draining Kiss - Level 12
  (684, 68400, 577, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Swirlix - Fake Tears - Level 15
  (684, 68400, 313, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Swirlix - Round - Level 18
  (684, 68400, 496, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Swirlix - String Shot - Level 21
  (684, 68400, 81, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Swirlix - Cotton Spore - Level 24
  (684, 68400, 178, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Swirlix - Energy Ball - Level 27
  (684, 68400, 412, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Swirlix - Wish - Level 30
  (684, 68400, 273, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Swirlix - Play Rough - Level 33
  (684, 68400, 583, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Swirlix - Cotton Guard - Level 36
  (684, 68400, 538, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Swirlix - Endeavor - Level 39
  (684, 68400, 283, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Swirlix - Light Screen - TM17
  (684, 68400, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Swirlix - Safeguard - TM19
  (684, 68400, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Swirlix - Rest - TM21
  (684, 68400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Swirlix - Thief - TM23
  (684, 68400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 19),
  -- Swirlix - Snore - TM24
  (684, 68400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Swirlix - Protect - TM25
  (684, 68400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Swirlix - Charm - TM29
  (684, 68400, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 22),
  -- Swirlix - Attract - TM31
  (684, 68400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Swirlix - Rain Dance - TM33
  (684, 68400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Swirlix - Sunny Day - TM34
  (684, 68400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Swirlix - Facade - TM39
  (684, 68400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Swirlix - Helping Hand - TM41
  (684, 68400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 27),
  -- Swirlix - Fake Tears - TM47
  (684, 68400, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 28),
  -- Swirlix - Round - TM76
  (684, 68400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Swirlix - Draining Kiss - TM87
  (684, 68400, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 30),
  -- Swirlix - Flamethrower - TR02
  (684, 68400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 31),
  -- Swirlix - Surf - TR04
  (684, 68400, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 32),
  -- Swirlix - Thunderbolt - TR08
  (684, 68400, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 33),
  -- Swirlix - Psychic - TR11
  (684, 68400, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 34),
  -- Swirlix - Amnesia - TR17
  (684, 68400, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 35),
  -- Swirlix - Substitute - TR20
  (684, 68400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Swirlix - Endure - TR26
  (684, 68400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Swirlix - Sleep Talk - TR27
  (684, 68400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Swirlix - Calm Mind - TR49
  (684, 68400, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 39),
  -- Swirlix - Energy Ball - TR65
  (684, 68400, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 40),
  -- Swirlix - Play Rough - TR90
  (684, 68400, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 41),
  -- Swirlix - Dazzling Gleam - TR92
  (684, 68400, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 42),
  -- Swirlix - Yawn - Egg
  (684, 68400, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Swirlix - Copycat - Egg
  (684, 68400, 383, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Swirlix - After You - Egg
  (684, 68400, 495, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Swirlix - Sticky Web - Egg
  (684, 68400, 564, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Slurpuff - Tackle - Level 1
  (685, 68500, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slurpuff - Sweet Scent - Level 1
  (685, 68500, 230, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slurpuff - Fairy Wind - Level 1
  (685, 68500, 584, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slurpuff - Play Nice - Level 1
  (685, 68500, 589, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slurpuff - Aromatherapy - Level 9
  (685, 68500, 312, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Slurpuff - Draining Kiss - Level 12
  (685, 68500, 577, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Slurpuff - Fake Tears - Level 15
  (685, 68500, 313, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Slurpuff - Round - Level 18
  (685, 68500, 496, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Slurpuff - String Shot - Level 21
  (685, 68500, 81, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Slurpuff - Cotton Spore - Level 24
  (685, 68500, 178, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Slurpuff - Energy Ball - Level 27
  (685, 68500, 412, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Slurpuff - Wish - Level 30
  (685, 68500, 273, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Slurpuff - Play Rough - Level 33
  (685, 68500, 583, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Slurpuff - Cotton Guard - Level 36
  (685, 68500, 538, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Slurpuff - Endeavor - Level 39
  (685, 68500, 283, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Slurpuff - Sticky Web - Level 42
  (685, 68500, 564, 18, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Slurpuff - Hyper Beam - TM08
  (685, 68500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Slurpuff - Giga Impact - TM09
  (685, 68500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Slurpuff - Light Screen - TM17
  (685, 68500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Slurpuff - Safeguard - TM19
  (685, 68500, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 20),
  -- Slurpuff - Rest - TM21
  (685, 68500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Slurpuff - Thief - TM23
  (685, 68500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 22),
  -- Slurpuff - Snore - TM24
  (685, 68500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Slurpuff - Protect - TM25
  (685, 68500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Slurpuff - Charm - TM29
  (685, 68500, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 25),
  -- Slurpuff - Attract - TM31
  (685, 68500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Slurpuff - Rain Dance - TM33
  (685, 68500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Slurpuff - Sunny Day - TM34
  (685, 68500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Slurpuff - Facade - TM39
  (685, 68500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Slurpuff - Helping Hand - TM41
  (685, 68500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Slurpuff - Fake Tears - TM47
  (685, 68500, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 31),
  -- Slurpuff - Drain Punch - TM63
  (685, 68500, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 32),
  -- Slurpuff - Round - TM76
  (685, 68500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Slurpuff - Draining Kiss - TM87
  (685, 68500, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 34),
  -- Slurpuff - Flamethrower - TR02
  (685, 68500, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 35),
  -- Slurpuff - Surf - TR04
  (685, 68500, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 36),
  -- Slurpuff - Thunderbolt - TR08
  (685, 68500, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 37),
  -- Slurpuff - Thunder - TR09
  (685, 68500, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 38),
  -- Slurpuff - Psychic - TR11
  (685, 68500, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 39),
  -- Slurpuff - Metronome - TR14
  (685, 68500, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 40),
  -- Slurpuff - Amnesia - TR17
  (685, 68500, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 41),
  -- Slurpuff - Substitute - TR20
  (685, 68500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Slurpuff - Endure - TR26
  (685, 68500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Slurpuff - Sleep Talk - TR27
  (685, 68500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Slurpuff - Calm Mind - TR49
  (685, 68500, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 45),
  -- Slurpuff - Energy Ball - TR65
  (685, 68500, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 46),
  -- Slurpuff - Play Rough - TR90
  (685, 68500, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 47),
  -- Slurpuff - Dazzling Gleam - TR92
  (685, 68500, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 48),
  -- Inkay - Tackle - Level 1
  (686, 68600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Inkay - Peck - Level 1
  (686, 68600, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Inkay - Hypnosis - Level 3
  (686, 68600, 95, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Inkay - Wrap - Level 6
  (686, 68600, 35, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Inkay - Payback - Level 9
  (686, 68600, 371, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Inkay - Pluck - Level 12
  (686, 68600, 365, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Inkay - Psybeam - Level 15
  (686, 68600, 60, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Inkay - Swagger - Level 18
  (686, 68600, 207, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Inkay - Slash - Level 21
  (686, 68600, 163, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Inkay - Night Slash - Level 24
  (686, 68600, 400, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Inkay - Psycho Cut - Level 27
  (686, 68600, 427, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Inkay - Switcheroo - Level 31
  (686, 68600, 415, 18, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Inkay - Foul Play - Level 33
  (686, 68600, 492, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Inkay - Topsy-Turvy - Level 36
  (686, 68600, 576, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Inkay - Superpower - Level 39
  (686, 68600, 276, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Inkay - Light Screen - TM17
  (686, 68600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Inkay - Reflect - TM18
  (686, 68600, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 17),
  -- Inkay - Rest - TM21
  (686, 68600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Inkay - Rock Slide - TM22
  (686, 68600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 19),
  -- Inkay - Thief - TM23
  (686, 68600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 20),
  -- Inkay - Snore - TM24
  (686, 68600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Inkay - Protect - TM25
  (686, 68600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Inkay - Attract - TM31
  (686, 68600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Inkay - Rain Dance - TM33
  (686, 68600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Inkay - Sunny Day - TM34
  (686, 68600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Inkay - Facade - TM39
  (686, 68600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Inkay - Fake Tears - TM47
  (686, 68600, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 27),
  -- Inkay - Payback - TM57
  (686, 68600, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 28),
  -- Inkay - Fling - TM59
  (686, 68600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 29),
  -- Inkay - Guard Swap - TM61
  (686, 68600, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 30),
  -- Inkay - Psycho Cut - TM69
  (686, 68600, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 31),
  -- Inkay - Trick Room - TM70
  (686, 68600, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 32),
  -- Inkay - Round - TM76
  (686, 68600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Inkay - Retaliate - TM79
  (686, 68600, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 34),
  -- Inkay - Flamethrower - TR02
  (686, 68600, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 35),
  -- Inkay - Thunderbolt - TR08
  (686, 68600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 36),
  -- Inkay - Psychic - TR11
  (686, 68600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 37),
  -- Inkay - Substitute - TR20
  (686, 68600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Inkay - Endure - TR26
  (686, 68600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Inkay - Sleep Talk - TR27
  (686, 68600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Inkay - Baton Pass - TR29
  (686, 68600, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 41),
  -- Inkay - Future Sight - TR34
  (686, 68600, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 42),
  -- Inkay - Taunt - TR37
  (686, 68600, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 43),
  -- Inkay - Superpower - TR39
  (686, 68600, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 44),
  -- Inkay - Calm Mind - TR49
  (686, 68600, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 45),
  -- Inkay - Dark Pulse - TR58
  (686, 68600, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 46),
  -- Inkay - Nasty Plot - TR68
  (686, 68600, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 47),
  -- Inkay - Foul Play - TR81
  (686, 68600, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 48),
  -- Inkay - Stored Power - TR82
  (686, 68600, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 49),
  -- Inkay - Ally Switch - TR83
  (686, 68600, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 50),
  -- Inkay - Liquidation - TR98
  (686, 68600, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 51),
  -- Inkay - Disable - Egg
  (686, 68600, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Inkay - Destiny Bond - Egg
  (686, 68600, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Inkay - Acupressure - Egg
  (686, 68600, 367, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Malamar - Tackle - Level 1
  (687, 68700, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Malamar - Wrap - Level 1
  (687, 68700, 35, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Malamar - Peck - Level 1
  (687, 68700, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Malamar - Hypnosis - Level 1
  (687, 68700, 95, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Malamar - Reversal - Level 1
  (687, 68700, 179, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Malamar - Payback - Level 9
  (687, 68700, 371, 18, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Malamar - Pluck - Level 12
  (687, 68700, 365, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Malamar - Psybeam - Level 15
  (687, 68700, 60, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Malamar - Swagger - Level 18
  (687, 68700, 207, 18, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Malamar - Slash - Level 21
  (687, 68700, 163, 18, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Malamar - Night Slash - Level 24
  (687, 68700, 400, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Malamar - Psycho Cut - Level 27
  (687, 68700, 427, 18, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Malamar - Switcheroo - Level 33
  (687, 68700, 415, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Malamar - Foul Play - Level 37
  (687, 68700, 492, 18, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Malamar - Topsy-Turvy - Level 42
  (687, 68700, 576, 18, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Malamar - Superpower - Level 47
  (687, 68700, 276, 18, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Malamar - Hyper Beam - TM08
  (687, 68700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Malamar - Giga Impact - TM09
  (687, 68700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Malamar - Light Screen - TM17
  (687, 68700, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Malamar - Reflect - TM18
  (687, 68700, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Malamar - Rest - TM21
  (687, 68700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Malamar - Rock Slide - TM22
  (687, 68700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Malamar - Thief - TM23
  (687, 68700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Malamar - Snore - TM24
  (687, 68700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Malamar - Protect - TM25
  (687, 68700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Malamar - Scary Face - TM26
  (687, 68700, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Malamar - Attract - TM31
  (687, 68700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Malamar - Rain Dance - TM33
  (687, 68700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Malamar - Sunny Day - TM34
  (687, 68700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Malamar - Facade - TM39
  (687, 68700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Malamar - Fake Tears - TM47
  (687, 68700, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 31),
  -- Malamar - Payback - TM57
  (687, 68700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 32),
  -- Malamar - Fling - TM59
  (687, 68700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 33),
  -- Malamar - Guard Swap - TM61
  (687, 68700, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 34),
  -- Malamar - Psycho Cut - TM69
  (687, 68700, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 35),
  -- Malamar - Trick Room - TM70
  (687, 68700, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 36),
  -- Malamar - Round - TM76
  (687, 68700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Malamar - Retaliate - TM79
  (687, 68700, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 38),
  -- Malamar - Brutal Swing - TM97
  (687, 68700, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 39),
  -- Malamar - Flamethrower - TR02
  (687, 68700, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 40),
  -- Malamar - Thunderbolt - TR08
  (687, 68700, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 41),
  -- Malamar - Psychic - TR11
  (687, 68700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 42),
  -- Malamar - Substitute - TR20
  (687, 68700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Malamar - Reversal - TR21
  (687, 68700, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 44),
  -- Malamar - Psyshock - TR25
  (687, 68700, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 45),
  -- Malamar - Endure - TR26
  (687, 68700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Malamar - Sleep Talk - TR27
  (687, 68700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Malamar - Baton Pass - TR29
  (687, 68700, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 48),
  -- Malamar - Future Sight - TR34
  (687, 68700, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 49),
  -- Malamar - Taunt - TR37
  (687, 68700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 50),
  -- Malamar - Superpower - TR39
  (687, 68700, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 51),
  -- Malamar - Calm Mind - TR49
  (687, 68700, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 52),
  -- Malamar - Dark Pulse - TR58
  (687, 68700, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 53),
  -- Malamar - Nasty Plot - TR68
  (687, 68700, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 54),
  -- Malamar - Foul Play - TR81
  (687, 68700, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 55),
  -- Malamar - Stored Power - TR82
  (687, 68700, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 56),
  -- Malamar - Ally Switch - TR83
  (687, 68700, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 57),
  -- Malamar - Throat Chop - TR95
  (687, 68700, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 58),
  -- Malamar - Liquidation - TR98
  (687, 68700, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 59),
  -- Binacle - Scratch - Level 1
  (688, 68800, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Binacle - Mud-Slap - Level 1
  (688, 68800, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Binacle - Withdraw - Level 4
  (688, 68800, 110, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Binacle - Water Gun - Level 8
  (688, 68800, 55, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Binacle - Fury Cutter - Level 12
  (688, 68800, 210, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Binacle - Fury Swipes - Level 16
  (688, 68800, 154, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Binacle - Ancient Power - Level 20
  (688, 68800, 246, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Binacle - Rock Polish - Level 24
  (688, 68800, 397, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Binacle - Slash - Level 28
  (688, 68800, 163, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Binacle - Hone Claws - Level 32
  (688, 68800, 468, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Binacle - Razor Shell - Level 36
  (688, 68800, 534, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Binacle - Shell Smash - Level 40
  (688, 68800, 504, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Binacle - Cross Chop - Level 44
  (688, 68800, 238, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Binacle - Dig - TM15
  (688, 68800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 14),
  -- Binacle - Screech - TM16
  (688, 68800, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 15),
  -- Binacle - Safeguard - TM19
  (688, 68800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 16),
  -- Binacle - Rest - TM21
  (688, 68800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Binacle - Rock Slide - TM22
  (688, 68800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 18),
  -- Binacle - Thief - TM23
  (688, 68800, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 19),
  -- Binacle - Snore - TM24
  (688, 68800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Binacle - Protect - TM25
  (688, 68800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Binacle - Icy Wind - TM27
  (688, 68800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 22),
  -- Binacle - Attract - TM31
  (688, 68800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Binacle - Sandstorm - TM32
  (688, 68800, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 24),
  -- Binacle - Rain Dance - TM33
  (688, 68800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Binacle - Beat Up - TM37
  (688, 68800, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 26),
  -- Binacle - Facade - TM39
  (688, 68800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Binacle - Helping Hand - TM41
  (688, 68800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Binacle - Brick Break - TM43
  (688, 68800, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 29),
  -- Binacle - Rock Tomb - TM48
  (688, 68800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Binacle - Mud Shot - TM53
  (688, 68800, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 31),
  -- Binacle - Rock Blast - TM54
  (688, 68800, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 32),
  -- Binacle - Payback - TM57
  (688, 68800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 33),
  -- Binacle - Assurance - TM58
  (688, 68800, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 34),
  -- Binacle - Fling - TM59
  (688, 68800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Binacle - Shadow Claw - TM65
  (688, 68800, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 36),
  -- Binacle - Round - TM76
  (688, 68800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Binacle - Bulldoze - TM81
  (688, 68800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 38),
  -- Binacle - Razor Shell - TM83
  (688, 68800, 534, 18, NULL, 2, NULL, NULL, 18002083, NULL, 39),
  -- Binacle - False Swipe - TM94
  (688, 68800, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 40),
  -- Binacle - Swords Dance - TR00
  (688, 68800, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 41),
  -- Binacle - Surf - TR04
  (688, 68800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 42),
  -- Binacle - Ice Beam - TR05
  (688, 68800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 43),
  -- Binacle - Blizzard - TR06
  (688, 68800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 44),
  -- Binacle - Earthquake - TR10
  (688, 68800, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 45),
  -- Binacle - Substitute - TR20
  (688, 68800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Binacle - Sludge Bomb - TR22
  (688, 68800, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 47),
  -- Binacle - Endure - TR26
  (688, 68800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Binacle - Sleep Talk - TR27
  (688, 68800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Binacle - Uproar - TR35
  (688, 68800, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 50),
  -- Binacle - Taunt - TR37
  (688, 68800, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 51),
  -- Binacle - Iron Defense - TR46
  (688, 68800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 52),
  -- Binacle - Poison Jab - TR57
  (688, 68800, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 53),
  -- Binacle - X-Scissor - TR60
  (688, 68800, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 54),
  -- Binacle - Stone Edge - TR75
  (688, 68800, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 55),
  -- Binacle - Stealth Rock - TR76
  (688, 68800, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 56),
  -- Binacle - Grass Knot - TR77
  (688, 68800, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 57),
  -- Binacle - Sludge Wave - TR78
  (688, 68800, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 58),
  -- Binacle - Scald - TR84
  (688, 68800, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 59),
  -- Binacle - Liquidation - TR98
  (688, 68800, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 60),
  -- Binacle - Sand Attack - Egg
  (688, 68800, 28, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Binacle - Night Slash - Egg
  (688, 68800, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Binacle - Switcheroo - Egg
  (688, 68800, 415, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Barbaracle - Scratch - Level 1
  (689, 68900, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Barbaracle - Water Gun - Level 1
  (689, 68900, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Barbaracle - Withdraw - Level 1
  (689, 68900, 110, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Barbaracle - Skull Bash - Level 1
  (689, 68900, 130, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Barbaracle - Mud-Slap - Level 1
  (689, 68900, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Barbaracle - Fury Cutter - Level 12
  (689, 68900, 210, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Barbaracle - Fury Swipes - Level 16
  (689, 68900, 154, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Barbaracle - Ancient Power - Level 20
  (689, 68900, 246, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Barbaracle - Rock Polish - Level 24
  (689, 68900, 397, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Barbaracle - Slash - Level 28
  (689, 68900, 163, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Barbaracle - Hone Claws - Level 32
  (689, 68900, 468, 18, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Barbaracle - Razor Shell - Level 36
  (689, 68900, 534, 18, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Barbaracle - Shell Smash - Level 42
  (689, 68900, 504, 18, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Barbaracle - Cross Chop - Level 48
  (689, 68900, 238, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Barbaracle - Stone Edge - Level 54
  (689, 68900, 444, 18, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Barbaracle - Hyper Beam - TM08
  (689, 68900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Barbaracle - Giga Impact - TM09
  (689, 68900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Barbaracle - Dig - TM15
  (689, 68900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Barbaracle - Screech - TM16
  (689, 68900, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 19),
  -- Barbaracle - Safeguard - TM19
  (689, 68900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 20),
  -- Barbaracle - Rest - TM21
  (689, 68900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Barbaracle - Rock Slide - TM22
  (689, 68900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Barbaracle - Thief - TM23
  (689, 68900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Barbaracle - Snore - TM24
  (689, 68900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Barbaracle - Protect - TM25
  (689, 68900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Barbaracle - Icy Wind - TM27
  (689, 68900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 26),
  -- Barbaracle - Attract - TM31
  (689, 68900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Barbaracle - Sandstorm - TM32
  (689, 68900, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 28),
  -- Barbaracle - Rain Dance - TM33
  (689, 68900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Barbaracle - Whirlpool - TM36
  (689, 68900, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 30),
  -- Barbaracle - Beat Up - TM37
  (689, 68900, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 31),
  -- Barbaracle - Facade - TM39
  (689, 68900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Barbaracle - Helping Hand - TM41
  (689, 68900, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Barbaracle - Brick Break - TM43
  (689, 68900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Barbaracle - Dive - TM45
  (689, 68900, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 35),
  -- Barbaracle - Rock Tomb - TM48
  (689, 68900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 36),
  -- Barbaracle - Mud Shot - TM53
  (689, 68900, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 37),
  -- Barbaracle - Rock Blast - TM54
  (689, 68900, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 38),
  -- Barbaracle - Payback - TM57
  (689, 68900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 39),
  -- Barbaracle - Assurance - TM58
  (689, 68900, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 40),
  -- Barbaracle - Fling - TM59
  (689, 68900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 41),
  -- Barbaracle - Shadow Claw - TM65
  (689, 68900, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 42),
  -- Barbaracle - Round - TM76
  (689, 68900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 43),
  -- Barbaracle - Bulldoze - TM81
  (689, 68900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 44),
  -- Barbaracle - Razor Shell - TM83
  (689, 68900, 534, 18, NULL, 2, NULL, NULL, 18002083, NULL, 45),
  -- Barbaracle - False Swipe - TM94
  (689, 68900, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 46),
  -- Barbaracle - Brutal Swing - TM97
  (689, 68900, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 47),
  -- Barbaracle - Swords Dance - TR00
  (689, 68900, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 48),
  -- Barbaracle - Surf - TR04
  (689, 68900, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 49),
  -- Barbaracle - Ice Beam - TR05
  (689, 68900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 50),
  -- Barbaracle - Blizzard - TR06
  (689, 68900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 51),
  -- Barbaracle - Low Kick - TR07
  (689, 68900, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 52),
  -- Barbaracle - Earthquake - TR10
  (689, 68900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 53),
  -- Barbaracle - Substitute - TR20
  (689, 68900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 54),
  -- Barbaracle - Sludge Bomb - TR22
  (689, 68900, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 55),
  -- Barbaracle - Endure - TR26
  (689, 68900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 56),
  -- Barbaracle - Sleep Talk - TR27
  (689, 68900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 57),
  -- Barbaracle - Uproar - TR35
  (689, 68900, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 58),
  -- Barbaracle - Taunt - TR37
  (689, 68900, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 59),
  -- Barbaracle - Superpower - TR39
  (689, 68900, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 60),
  -- Barbaracle - Muddy Water - TR45
  (689, 68900, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 61),
  -- Barbaracle - Iron Defense - TR46
  (689, 68900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 62),
  -- Barbaracle - Dragon Claw - TR47
  (689, 68900, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 63),
  -- Barbaracle - Bulk Up - TR48
  (689, 68900, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 64),
  -- Barbaracle - Poison Jab - TR57
  (689, 68900, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 65),
  -- Barbaracle - X-Scissor - TR60
  (689, 68900, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 66),
  -- Barbaracle - Focus Blast - TR64
  (689, 68900, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 67),
  -- Barbaracle - Earth Power - TR67
  (689, 68900, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 68),
  -- Barbaracle - Stone Edge - TR75
  (689, 68900, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 69),
  -- Barbaracle - Stealth Rock - TR76
  (689, 68900, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 70),
  -- Barbaracle - Grass Knot - TR77
  (689, 68900, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 71),
  -- Barbaracle - Sludge Wave - TR78
  (689, 68900, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 72),
  -- Barbaracle - Scald - TR84
  (689, 68900, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 73),
  -- Barbaracle - Liquidation - TR98
  (689, 68900, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 74),
  -- Skrelp - Tackle - Level 1
  (690, 69000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skrelp - Smokescreen - Level 1
  (690, 69000, 108, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skrelp - Acid - Level 5
  (690, 69000, 51, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Skrelp - Water Gun - Level 10
  (690, 69000, 55, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Skrelp - Tail Whip - Level 15
  (690, 69000, 39, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Skrelp - Double Team - Level 20
  (690, 69000, 104, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Skrelp - Poison Tail - Level 25
  (690, 69000, 342, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Skrelp - Water Pulse - Level 30
  (690, 69000, 352, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Skrelp - Toxic - Level 35
  (690, 69000, 92, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Skrelp - Dragon Pulse - Level 40
  (690, 69000, 406, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Skrelp - Aqua Tail - Level 45
  (690, 69000, 401, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Skrelp - Sludge Bomb - Level 50
  (690, 69000, 188, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Skrelp - Hydro Pump - Level 55
  (690, 69000, 56, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Skrelp - Rest - TM21
  (690, 69000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 14),
  -- Skrelp - Snore - TM24
  (690, 69000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 15),
  -- Skrelp - Protect - TM25
  (690, 69000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 16),
  -- Skrelp - Icy Wind - TM27
  (690, 69000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 17),
  -- Skrelp - Attract - TM31
  (690, 69000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 18),
  -- Skrelp - Rain Dance - TM33
  (690, 69000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 19),
  -- Skrelp - Hail - TM35
  (690, 69000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 20),
  -- Skrelp - Facade - TM39
  (690, 69000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 21),
  -- Skrelp - Dive - TM45
  (690, 69000, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 22),
  -- Skrelp - Bounce - TM52
  (690, 69000, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 23),
  -- Skrelp - Venoshock - TM74
  (690, 69000, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 24),
  -- Skrelp - Round - TM76
  (690, 69000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 25),
  -- Skrelp - Hydro Pump - TR03
  (690, 69000, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 26),
  -- Skrelp - Surf - TR04
  (690, 69000, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 27),
  -- Skrelp - Thunderbolt - TR08
  (690, 69000, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 28),
  -- Skrelp - Waterfall - TR16
  (690, 69000, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 29),
  -- Skrelp - Substitute - TR20
  (690, 69000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 30),
  -- Skrelp - Sludge Bomb - TR22
  (690, 69000, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 31),
  -- Skrelp - Outrage - TR24
  (690, 69000, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 32),
  -- Skrelp - Endure - TR26
  (690, 69000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 33),
  -- Skrelp - Sleep Talk - TR27
  (690, 69000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 34),
  -- Skrelp - Iron Tail - TR31
  (690, 69000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 35),
  -- Skrelp - Shadow Ball - TR33
  (690, 69000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 36),
  -- Skrelp - Toxic Spikes - TR54
  (690, 69000, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 37),
  -- Skrelp - Dragon Pulse - TR62
  (690, 69000, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 38),
  -- Skrelp - Gunk Shot - TR73
  (690, 69000, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 39),
  -- Skrelp - Sludge Wave - TR78
  (690, 69000, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 40),
  -- Skrelp - Scald - TR84
  (690, 69000, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 41),
  -- Skrelp - Play Rough - TR90
  (690, 69000, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 42),
  -- Skrelp - Venom Drench - TR91
  (690, 69000, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 43),
  -- Skrelp - Haze - Egg
  (690, 69000, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Skrelp - Acid Armor - Egg
  (690, 69000, 151, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Skrelp - Twister - Egg
  (690, 69000, 239, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Skrelp - Dragon Tail - Egg
  (690, 69000, 525, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Dragalge - Tackle - Level 1
  (691, 69100, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragalge - Acid - Level 1
  (691, 69100, 51, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragalge - Water Gun - Level 1
  (691, 69100, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragalge - Smokescreen - Level 1
  (691, 69100, 108, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragalge - Tail Whip - Level 15
  (691, 69100, 39, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dragalge - Double Team - Level 20
  (691, 69100, 104, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Dragalge - Poison Tail - Level 25
  (691, 69100, 342, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Dragalge - Water Pulse - Level 30
  (691, 69100, 352, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Dragalge - Toxic - Level 35
  (691, 69100, 92, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Dragalge - Dragon Pulse - Level 40
  (691, 69100, 406, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Dragalge - Aqua Tail - Level 45
  (691, 69100, 401, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Dragalge - Sludge Bomb - Level 52
  (691, 69100, 188, 18, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Dragalge - Hydro Pump - Level 59
  (691, 69100, 56, 18, NULL, 1, 59, NULL, NULL, NULL, 13),
  -- Dragalge - Outrage - Level 66
  (691, 69100, 200, 18, NULL, 1, 66, NULL, NULL, NULL, 14),
  -- Dragalge - Hyper Beam - TM08
  (691, 69100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Dragalge - Giga Impact - TM09
  (691, 69100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Dragalge - Rest - TM21
  (691, 69100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Dragalge - Snore - TM24
  (691, 69100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Dragalge - Protect - TM25
  (691, 69100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Dragalge - Icy Wind - TM27
  (691, 69100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 20),
  -- Dragalge - Attract - TM31
  (691, 69100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Dragalge - Rain Dance - TM33
  (691, 69100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Dragalge - Hail - TM35
  (691, 69100, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 23),
  -- Dragalge - Facade - TM39
  (691, 69100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Dragalge - Dive - TM45
  (691, 69100, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 25),
  -- Dragalge - Bounce - TM52
  (691, 69100, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 26),
  -- Dragalge - Venoshock - TM74
  (691, 69100, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 27),
  -- Dragalge - Round - TM76
  (691, 69100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Dragalge - Hydro Pump - TR03
  (691, 69100, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 29),
  -- Dragalge - Surf - TR04
  (691, 69100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 30),
  -- Dragalge - Thunderbolt - TR08
  (691, 69100, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 31),
  -- Dragalge - Thunder - TR09
  (691, 69100, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 32),
  -- Dragalge - Waterfall - TR16
  (691, 69100, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 33),
  -- Dragalge - Substitute - TR20
  (691, 69100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 34),
  -- Dragalge - Sludge Bomb - TR22
  (691, 69100, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 35),
  -- Dragalge - Outrage - TR24
  (691, 69100, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 36),
  -- Dragalge - Endure - TR26
  (691, 69100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Dragalge - Sleep Talk - TR27
  (691, 69100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Dragalge - Iron Tail - TR31
  (691, 69100, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 39),
  -- Dragalge - Shadow Ball - TR33
  (691, 69100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 40),
  -- Dragalge - Toxic Spikes - TR54
  (691, 69100, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 41),
  -- Dragalge - Dragon Pulse - TR62
  (691, 69100, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 42),
  -- Dragalge - Focus Blast - TR64
  (691, 69100, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 43),
  -- Dragalge - Gunk Shot - TR73
  (691, 69100, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 44),
  -- Dragalge - Sludge Wave - TR78
  (691, 69100, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 45),
  -- Dragalge - Scald - TR84
  (691, 69100, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 46),
  -- Dragalge - Play Rough - TR90
  (691, 69100, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 47),
  -- Dragalge - Venom Drench - TR91
  (691, 69100, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 48),
  -- Dragalge - Draco Meteor - Tutor
  (691, 69100, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 49),
  -- Clauncher - Water Gun - Level 1
  (692, 69200, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clauncher - Splash - Level 1
  (692, 69200, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clauncher - Vise Grip - Level 5
  (692, 69200, 11, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Clauncher - Flail - Level 10
  (692, 69200, 175, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Clauncher - Aqua Jet - Level 15
  (692, 69200, 453, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Clauncher - Smack Down - Level 20
  (692, 69200, 479, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Clauncher - Hone Claws - Level 25
  (692, 69200, 468, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Clauncher - Water Pulse - Level 30
  (692, 69200, 352, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Clauncher - Swords Dance - Level 35
  (692, 69200, 14, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Clauncher - Aura Sphere - Level 40
  (692, 69200, 396, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Clauncher - Bounce - Level 45
  (692, 69200, 340, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Clauncher - Muddy Water - Level 50
  (692, 69200, 330, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Clauncher - Crabhammer - Level 55
  (692, 69200, 152, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Clauncher - Rest - TM21
  (692, 69200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 14),
  -- Clauncher - Rock Slide - TM22
  (692, 69200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 15),
  -- Clauncher - Snore - TM24
  (692, 69200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Clauncher - Protect - TM25
  (692, 69200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Clauncher - Icy Wind - TM27
  (692, 69200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 18),
  -- Clauncher - Attract - TM31
  (692, 69200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Clauncher - Rain Dance - TM33
  (692, 69200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 20),
  -- Clauncher - Facade - TM39
  (692, 69200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 21),
  -- Clauncher - Helping Hand - TM41
  (692, 69200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 22),
  -- Clauncher - Dive - TM45
  (692, 69200, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 23),
  -- Clauncher - Bounce - TM52
  (692, 69200, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 24),
  -- Clauncher - U-turn - TM56
  (692, 69200, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 25),
  -- Clauncher - Venoshock - TM74
  (692, 69200, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 26),
  -- Clauncher - Round - TM76
  (692, 69200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Clauncher - Swords Dance - TR00
  (692, 69200, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 28),
  -- Clauncher - Surf - TR04
  (692, 69200, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 29),
  -- Clauncher - Ice Beam - TR05
  (692, 69200, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 30),
  -- Clauncher - Waterfall - TR16
  (692, 69200, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 31),
  -- Clauncher - Substitute - TR20
  (692, 69200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 32),
  -- Clauncher - Sludge Bomb - TR22
  (692, 69200, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 33),
  -- Clauncher - Endure - TR26
  (692, 69200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 34),
  -- Clauncher - Sleep Talk - TR27
  (692, 69200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 35),
  -- Clauncher - Iron Tail - TR31
  (692, 69200, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 36),
  -- Clauncher - Muddy Water - TR45
  (692, 69200, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 37),
  -- Clauncher - Aura Sphere - TR56
  (692, 69200, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 38),
  -- Clauncher - Dragon Pulse - TR62
  (692, 69200, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 39),
  -- Clauncher - Flash Cannon - TR70
  (692, 69200, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 40),
  -- Clauncher - Sludge Wave - TR78
  (692, 69200, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 41),
  -- Clauncher - Scald - TR84
  (692, 69200, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 42),
  -- Clauncher - Bubble Beam - Egg
  (692, 69200, 61, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Clauncher - Aqua Tail - Egg
  (692, 69200, 401, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Clauncher - Entrainment - Egg
  (692, 69200, 494, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Clawitzer - Vise Grip - Level 1
  (693, 69300, 11, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clawitzer - Water Gun - Level 1
  (693, 69300, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clawitzer - Splash - Level 1
  (693, 69300, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Clawitzer - Flail - Level 1
  (693, 69300, 175, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Clawitzer - Dark Pulse - Level 1
  (693, 69300, 399, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Clawitzer - Dragon Pulse - Level 1
  (693, 69300, 406, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Clawitzer - Heal Pulse - Level 1
  (693, 69300, 505, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Clawitzer - Aqua Jet - Level 15
  (693, 69300, 453, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Clawitzer - Smack Down - Level 20
  (693, 69300, 479, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Clawitzer - Hone Claws - Level 25
  (693, 69300, 468, 18, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Clawitzer - Water Pulse - Level 30
  (693, 69300, 352, 18, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Clawitzer - Swords Dance - Level 35
  (693, 69300, 14, 18, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Clawitzer - Aura Sphere - Level 42
  (693, 69300, 396, 18, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Clawitzer - Bounce - Level 49
  (693, 69300, 340, 18, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Clawitzer - Muddy Water - Level 56
  (693, 69300, 330, 18, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Clawitzer - Crabhammer - Level 63
  (693, 69300, 152, 18, NULL, 1, 63, NULL, NULL, NULL, 16),
  -- Clawitzer - Hyper Beam - TM08
  (693, 69300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Clawitzer - Giga Impact - TM09
  (693, 69300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Clawitzer - Rest - TM21
  (693, 69300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Clawitzer - Rock Slide - TM22
  (693, 69300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Clawitzer - Snore - TM24
  (693, 69300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Clawitzer - Protect - TM25
  (693, 69300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Clawitzer - Icy Wind - TM27
  (693, 69300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 23),
  -- Clawitzer - Attract - TM31
  (693, 69300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Clawitzer - Rain Dance - TM33
  (693, 69300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Clawitzer - Facade - TM39
  (693, 69300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Clawitzer - Helping Hand - TM41
  (693, 69300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 27),
  -- Clawitzer - Dive - TM45
  (693, 69300, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 28),
  -- Clawitzer - Bounce - TM52
  (693, 69300, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 29),
  -- Clawitzer - U-turn - TM56
  (693, 69300, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 30),
  -- Clawitzer - Venoshock - TM74
  (693, 69300, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 31),
  -- Clawitzer - Round - TM76
  (693, 69300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Clawitzer - Swords Dance - TR00
  (693, 69300, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 33),
  -- Clawitzer - Surf - TR04
  (693, 69300, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 34),
  -- Clawitzer - Ice Beam - TR05
  (693, 69300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 35),
  -- Clawitzer - Waterfall - TR16
  (693, 69300, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 36),
  -- Clawitzer - Substitute - TR20
  (693, 69300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Clawitzer - Sludge Bomb - TR22
  (693, 69300, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 38),
  -- Clawitzer - Endure - TR26
  (693, 69300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Clawitzer - Sleep Talk - TR27
  (693, 69300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Clawitzer - Iron Tail - TR31
  (693, 69300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 41),
  -- Clawitzer - Shadow Ball - TR33
  (693, 69300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 42),
  -- Clawitzer - Muddy Water - TR45
  (693, 69300, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 43),
  -- Clawitzer - Aura Sphere - TR56
  (693, 69300, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 44),
  -- Clawitzer - Dark Pulse - TR58
  (693, 69300, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 45),
  -- Clawitzer - Dragon Pulse - TR62
  (693, 69300, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 46),
  -- Clawitzer - Focus Blast - TR64
  (693, 69300, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 47),
  -- Clawitzer - Flash Cannon - TR70
  (693, 69300, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 48),
  -- Clawitzer - Sludge Wave - TR78
  (693, 69300, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 49),
  -- Clawitzer - Scald - TR84
  (693, 69300, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 50),
  -- Clawitzer - Liquidation - TR98
  (693, 69300, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 51),
  -- Helioptile - Tail Whip - Level 1
  (694, 69400, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Helioptile - Mud-Slap - Level 1
  (694, 69400, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Helioptile - Pound - Level 4
  (694, 69400, 1, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Helioptile - Thunder Shock - Level 8
  (694, 69400, 84, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Helioptile - Quick Attack - Level 12
  (694, 69400, 98, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Helioptile - Charge - Level 16
  (694, 69400, 268, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Helioptile - Bulldoze - Level 20
  (694, 69400, 523, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Helioptile - Volt Switch - Level 24
  (694, 69400, 521, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Helioptile - Parabolic Charge - Level 28
  (694, 69400, 570, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Helioptile - Thunder Wave - Level 32
  (694, 69400, 86, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Helioptile - Thunderbolt - Level 36
  (694, 69400, 85, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Helioptile - Electrify - Level 40
  (694, 69400, 582, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Helioptile - Thunder - Level 44
  (694, 69400, 87, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Helioptile - Thunder Wave - TM14
  (694, 69400, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 14),
  -- Helioptile - Dig - TM15
  (694, 69400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 15),
  -- Helioptile - Light Screen - TM17
  (694, 69400, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Helioptile - Rest - TM21
  (694, 69400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Helioptile - Rock Slide - TM22
  (694, 69400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 18),
  -- Helioptile - Snore - TM24
  (694, 69400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Helioptile - Protect - TM25
  (694, 69400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Helioptile - Attract - TM31
  (694, 69400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Helioptile - Sandstorm - TM32
  (694, 69400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 22),
  -- Helioptile - Rain Dance - TM33
  (694, 69400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Helioptile - Facade - TM39
  (694, 69400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Helioptile - Swift - TM40
  (694, 69400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 25),
  -- Helioptile - Rock Tomb - TM48
  (694, 69400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 26),
  -- Helioptile - U-turn - TM56
  (694, 69400, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 27),
  -- Helioptile - Low Sweep - TM75
  (694, 69400, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 28),
  -- Helioptile - Round - TM76
  (694, 69400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Helioptile - Volt Switch - TM80
  (694, 69400, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 30),
  -- Helioptile - Bulldoze - TM81
  (694, 69400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 31),
  -- Helioptile - Electroweb - TM82
  (694, 69400, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 32),
  -- Helioptile - Electric Terrain - TM90
  (694, 69400, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 33),
  -- Helioptile - Surf - TR04
  (694, 69400, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 34),
  -- Helioptile - Thunderbolt - TR08
  (694, 69400, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 35),
  -- Helioptile - Thunder - TR09
  (694, 69400, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 36),
  -- Helioptile - Agility - TR12
  (694, 69400, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 37),
  -- Helioptile - Substitute - TR20
  (694, 69400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Helioptile - Endure - TR26
  (694, 69400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Helioptile - Sleep Talk - TR27
  (694, 69400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Helioptile - Iron Tail - TR31
  (694, 69400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 41),
  -- Helioptile - Dark Pulse - TR58
  (694, 69400, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 42),
  -- Helioptile - Grass Knot - TR77
  (694, 69400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 43),
  -- Helioptile - Electro Ball - TR80
  (694, 69400, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 44),
  -- Helioptile - Ally Switch - TR83
  (694, 69400, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 45),
  -- Helioptile - Wild Charge - TR86
  (694, 69400, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 46),
  -- Helioptile - Glare - Egg
  (694, 69400, 137, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Helioptile - Dragon Rush - Egg
  (694, 69400, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Helioptile - Dragon Tail - Egg
  (694, 69400, 525, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Heliolisk - Pound - Level 1
  (695, 69500, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heliolisk - Tail Whip - Level 1
  (695, 69500, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Heliolisk - Thunder Shock - Level 1
  (695, 69500, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Heliolisk - Thunderbolt - Level 1
  (695, 69500, 85, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Heliolisk - Thunder Wave - Level 1
  (695, 69500, 86, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Heliolisk - Thunder - Level 1
  (695, 69500, 87, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Heliolisk - Quick Attack - Level 1
  (695, 69500, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Heliolisk - Mud-Slap - Level 1
  (695, 69500, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Heliolisk - Charge - Level 1
  (695, 69500, 268, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Heliolisk - Discharge - Level 1
  (695, 69500, 435, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Heliolisk - Volt Switch - Level 1
  (695, 69500, 521, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Heliolisk - Bulldoze - Level 1
  (695, 69500, 523, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Heliolisk - Parabolic Charge - Level 1
  (695, 69500, 570, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Heliolisk - Electrify - Level 1
  (695, 69500, 582, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Heliolisk - Eerie Impulse - Level 1
  (695, 69500, 598, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Heliolisk - Mega Punch - TM00
  (695, 69500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Heliolisk - Mega Kick - TM01
  (695, 69500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Heliolisk - Fire Punch - TM03
  (695, 69500, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 18),
  -- Heliolisk - Thunder Punch - TM05
  (695, 69500, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 19),
  -- Heliolisk - Hyper Beam - TM08
  (695, 69500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Heliolisk - Giga Impact - TM09
  (695, 69500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Heliolisk - Solar Beam - TM11
  (695, 69500, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Heliolisk - Thunder Wave - TM14
  (695, 69500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 23),
  -- Heliolisk - Dig - TM15
  (695, 69500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 24),
  -- Heliolisk - Light Screen - TM17
  (695, 69500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 25),
  -- Heliolisk - Rest - TM21
  (695, 69500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Heliolisk - Rock Slide - TM22
  (695, 69500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 27),
  -- Heliolisk - Snore - TM24
  (695, 69500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Heliolisk - Protect - TM25
  (695, 69500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Heliolisk - Attract - TM31
  (695, 69500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Heliolisk - Sandstorm - TM32
  (695, 69500, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 31),
  -- Heliolisk - Rain Dance - TM33
  (695, 69500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 32),
  -- Heliolisk - Sunny Day - TM34
  (695, 69500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 33),
  -- Heliolisk - Facade - TM39
  (695, 69500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Heliolisk - Swift - TM40
  (695, 69500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 35),
  -- Heliolisk - Weather Ball - TM46
  (695, 69500, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 36),
  -- Heliolisk - Rock Tomb - TM48
  (695, 69500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 37),
  -- Heliolisk - U-turn - TM56
  (695, 69500, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 38),
  -- Heliolisk - Low Sweep - TM75
  (695, 69500, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 39),
  -- Heliolisk - Round - TM76
  (695, 69500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Heliolisk - Volt Switch - TM80
  (695, 69500, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 41),
  -- Heliolisk - Bulldoze - TM81
  (695, 69500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 42),
  -- Heliolisk - Electroweb - TM82
  (695, 69500, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 43),
  -- Heliolisk - Electric Terrain - TM90
  (695, 69500, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 44),
  -- Heliolisk - Eerie Impulse - TM93
  (695, 69500, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 45),
  -- Heliolisk - Brutal Swing - TM97
  (695, 69500, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 46),
  -- Heliolisk - Breaking Swipe - TM99
  (695, 69500, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 47),
  -- Heliolisk - Surf - TR04
  (695, 69500, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 48),
  -- Heliolisk - Low Kick - TR07
  (695, 69500, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 49),
  -- Heliolisk - Thunderbolt - TR08
  (695, 69500, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 50),
  -- Heliolisk - Thunder - TR09
  (695, 69500, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 51),
  -- Heliolisk - Agility - TR12
  (695, 69500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 52),
  -- Heliolisk - Substitute - TR20
  (695, 69500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 53),
  -- Heliolisk - Endure - TR26
  (695, 69500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Heliolisk - Sleep Talk - TR27
  (695, 69500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Heliolisk - Iron Tail - TR31
  (695, 69500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 56),
  -- Heliolisk - Hyper Voice - TR42
  (695, 69500, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 57),
  -- Heliolisk - Dark Pulse - TR58
  (695, 69500, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 58),
  -- Heliolisk - Dragon Pulse - TR62
  (695, 69500, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 59),
  -- Heliolisk - Focus Blast - TR64
  (695, 69500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 60),
  -- Heliolisk - Grass Knot - TR77
  (695, 69500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 61),
  -- Heliolisk - Electro Ball - TR80
  (695, 69500, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 62),
  -- Heliolisk - Ally Switch - TR83
  (695, 69500, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 63),
  -- Heliolisk - Wild Charge - TR86
  (695, 69500, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 64),
  -- Tyrunt - Tackle - Level 1
  (696, 69600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyrunt - Tail Whip - Level 1
  (696, 69600, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tyrunt - Roar - Level 4
  (696, 69600, 46, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Tyrunt - Ancient Power - Level 8
  (696, 69600, 246, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Tyrunt - Charm - Level 12
  (696, 69600, 204, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Tyrunt - Bite - Level 16
  (696, 69600, 44, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Tyrunt - Dragon Tail - Level 20
  (696, 69600, 525, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Tyrunt - Stomp - Level 24
  (696, 69600, 23, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Tyrunt - Rock Slide - Level 28
  (696, 69600, 157, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Tyrunt - Crunch - Level 32
  (696, 69600, 242, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Tyrunt - Dragon Claw - Level 36
  (696, 69600, 337, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Tyrunt - Thrash - Level 40
  (696, 69600, 37, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Tyrunt - Earthquake - Level 44
  (696, 69600, 89, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Tyrunt - Horn Drill - Level 48
  (696, 69600, 32, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Tyrunt - Dig - TM15
  (696, 69600, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 15),
  -- Tyrunt - Rest - TM21
  (696, 69600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Tyrunt - Rock Slide - TM22
  (696, 69600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 17),
  -- Tyrunt - Snore - TM24
  (696, 69600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Tyrunt - Protect - TM25
  (696, 69600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Tyrunt - Scary Face - TM26
  (696, 69600, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 20),
  -- Tyrunt - Charm - TM29
  (696, 69600, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 21),
  -- Tyrunt - Attract - TM31
  (696, 69600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Tyrunt - Sandstorm - TM32
  (696, 69600, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 23),
  -- Tyrunt - Sunny Day - TM34
  (696, 69600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Tyrunt - Facade - TM39
  (696, 69600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Tyrunt - Brick Break - TM43
  (696, 69600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 26),
  -- Tyrunt - Rock Tomb - TM48
  (696, 69600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Tyrunt - Rock Blast - TM54
  (696, 69600, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 28),
  -- Tyrunt - Assurance - TM58
  (696, 69600, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 29),
  -- Tyrunt - Thunder Fang - TM66
  (696, 69600, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 30),
  -- Tyrunt - Ice Fang - TM67
  (696, 69600, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 31),
  -- Tyrunt - Fire Fang - TM68
  (696, 69600, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 32),
  -- Tyrunt - Round - TM76
  (696, 69600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Tyrunt - Bulldoze - TM81
  (696, 69600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 34),
  -- Tyrunt - Stomping Tantrum - TM98
  (696, 69600, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 35),
  -- Tyrunt - Body Slam - TR01
  (696, 69600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 36),
  -- Tyrunt - Earthquake - TR10
  (696, 69600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 37),
  -- Tyrunt - Substitute - TR20
  (696, 69600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Tyrunt - Outrage - TR24
  (696, 69600, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 39),
  -- Tyrunt - Endure - TR26
  (696, 69600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Tyrunt - Sleep Talk - TR27
  (696, 69600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Tyrunt - Iron Tail - TR31
  (696, 69600, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 42),
  -- Tyrunt - Crunch - TR32
  (696, 69600, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 43),
  -- Tyrunt - Superpower - TR39
  (696, 69600, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 44),
  -- Tyrunt - Hyper Voice - TR42
  (696, 69600, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 45),
  -- Tyrunt - Iron Defense - TR46
  (696, 69600, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 46),
  -- Tyrunt - Dragon Claw - TR47
  (696, 69600, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 47),
  -- Tyrunt - Dragon Dance - TR51
  (696, 69600, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 48),
  -- Tyrunt - Close Combat - TR53
  (696, 69600, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 49),
  -- Tyrunt - Dark Pulse - TR58
  (696, 69600, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 50),
  -- Tyrunt - Dragon Pulse - TR62
  (696, 69600, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 51),
  -- Tyrunt - Earth Power - TR67
  (696, 69600, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 52),
  -- Tyrunt - Zen Headbutt - TR69
  (696, 69600, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 53),
  -- Tyrunt - Iron Head - TR74
  (696, 69600, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 54),
  -- Tyrunt - Stone Edge - TR75
  (696, 69600, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 55),
  -- Tyrunt - Stealth Rock - TR76
  (696, 69600, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 56),
  -- Tyrunt - Play Rough - TR90
  (696, 69600, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 57),
  -- Tyrunt - Psychic Fangs - TR97
  (696, 69600, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 58),
  -- Tyrunt - Rock Throw - Egg
  (696, 69600, 88, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Tyrunt - Curse - Egg
  (696, 69600, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Tyrunt - Poison Fang - Egg
  (696, 69600, 305, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Tyrunt - Rock Polish - Egg
  (696, 69600, 397, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Tyrunt - Draco Meteor - Tutor
  (696, 69600, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 63),
  -- Tyrantrum - Tackle - Level 1
  (697, 69700, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyrantrum - Tail Whip - Level 1
  (697, 69700, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tyrantrum - Roar - Level 1
  (697, 69700, 46, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tyrantrum - Ancient Power - Level 1
  (697, 69700, 246, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tyrantrum - Charm - Level 12
  (697, 69700, 204, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Tyrantrum - Bite - Level 16
  (697, 69700, 44, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Tyrantrum - Dragon Tail - Level 20
  (697, 69700, 525, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Tyrantrum - Stomp - Level 24
  (697, 69700, 23, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Tyrantrum - Rock Slide - Level 28
  (697, 69700, 157, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Tyrantrum - Crunch - Level 32
  (697, 69700, 242, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Tyrantrum - Dragon Claw - Level 36
  (697, 69700, 337, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Tyrantrum - Thrash - Level 42
  (697, 69700, 37, 18, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Tyrantrum - Earthquake - Level 48
  (697, 69700, 89, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Tyrantrum - Horn Drill - Level 54
  (697, 69700, 32, 18, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Tyrantrum - Giga Impact - Level 60
  (697, 69700, 416, 18, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Tyrantrum - Head Smash - Level 66
  (697, 69700, 457, 18, NULL, 1, 66, NULL, NULL, NULL, 16),
  -- Tyrantrum - Hyper Beam - TM08
  (697, 69700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Tyrantrum - Giga Impact - TM09
  (697, 69700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Tyrantrum - Dig - TM15
  (697, 69700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 19),
  -- Tyrantrum - Rest - TM21
  (697, 69700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Tyrantrum - Rock Slide - TM22
  (697, 69700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Tyrantrum - Snore - TM24
  (697, 69700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Tyrantrum - Protect - TM25
  (697, 69700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Tyrantrum - Scary Face - TM26
  (697, 69700, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 24),
  -- Tyrantrum - Charm - TM29
  (697, 69700, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 25),
  -- Tyrantrum - Attract - TM31
  (697, 69700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Tyrantrum - Sandstorm - TM32
  (697, 69700, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 27),
  -- Tyrantrum - Sunny Day - TM34
  (697, 69700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Tyrantrum - Facade - TM39
  (697, 69700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Tyrantrum - Brick Break - TM43
  (697, 69700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 30),
  -- Tyrantrum - Rock Tomb - TM48
  (697, 69700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 31),
  -- Tyrantrum - Rock Blast - TM54
  (697, 69700, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 32),
  -- Tyrantrum - Assurance - TM58
  (697, 69700, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 33),
  -- Tyrantrum - Thunder Fang - TM66
  (697, 69700, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 34),
  -- Tyrantrum - Ice Fang - TM67
  (697, 69700, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 35),
  -- Tyrantrum - Fire Fang - TM68
  (697, 69700, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 36),
  -- Tyrantrum - Round - TM76
  (697, 69700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Tyrantrum - Bulldoze - TM81
  (697, 69700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 38),
  -- Tyrantrum - Brutal Swing - TM97
  (697, 69700, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 39),
  -- Tyrantrum - Stomping Tantrum - TM98
  (697, 69700, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 40),
  -- Tyrantrum - Breaking Swipe - TM99
  (697, 69700, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 41),
  -- Tyrantrum - Body Slam - TR01
  (697, 69700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 42),
  -- Tyrantrum - Earthquake - TR10
  (697, 69700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 43),
  -- Tyrantrum - Substitute - TR20
  (697, 69700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Tyrantrum - Outrage - TR24
  (697, 69700, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 45),
  -- Tyrantrum - Endure - TR26
  (697, 69700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Tyrantrum - Sleep Talk - TR27
  (697, 69700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Tyrantrum - Iron Tail - TR31
  (697, 69700, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 48),
  -- Tyrantrum - Crunch - TR32
  (697, 69700, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 49),
  -- Tyrantrum - Superpower - TR39
  (697, 69700, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 50),
  -- Tyrantrum - Hyper Voice - TR42
  (697, 69700, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 51),
  -- Tyrantrum - Iron Defense - TR46
  (697, 69700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 52),
  -- Tyrantrum - Dragon Claw - TR47
  (697, 69700, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 53),
  -- Tyrantrum - Dragon Dance - TR51
  (697, 69700, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 54),
  -- Tyrantrum - Close Combat - TR53
  (697, 69700, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 55),
  -- Tyrantrum - Dark Pulse - TR58
  (697, 69700, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 56),
  -- Tyrantrum - Dragon Pulse - TR62
  (697, 69700, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 57),
  -- Tyrantrum - Earth Power - TR67
  (697, 69700, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 58),
  -- Tyrantrum - Zen Headbutt - TR69
  (697, 69700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 59),
  -- Tyrantrum - Iron Head - TR74
  (697, 69700, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 60),
  -- Tyrantrum - Stone Edge - TR75
  (697, 69700, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 61),
  -- Tyrantrum - Stealth Rock - TR76
  (697, 69700, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 62),
  -- Tyrantrum - Play Rough - TR90
  (697, 69700, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 63),
  -- Tyrantrum - High Horsepower - TR94
  (697, 69700, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 64),
  -- Tyrantrum - Psychic Fangs - TR97
  (697, 69700, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 65),
  -- Tyrantrum - Draco Meteor - Tutor
  (697, 69700, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 66),
  -- Amaura - Growl - Level 1
  (698, 69800, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Amaura - Powder Snow - Level 1
  (698, 69800, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Amaura - Encore - Level 4
  (698, 69800, 227, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Amaura - Ancient Power - Level 8
  (698, 69800, 246, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Amaura - Icy Wind - Level 12
  (698, 69800, 196, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Amaura - Round - Level 16
  (698, 69800, 496, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Amaura - Mist - Level 20
  (698, 69800, 54, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Amaura - Aurora Beam - Level 24
  (698, 69800, 62, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Amaura - Thunder Wave - Level 28
  (698, 69800, 86, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Amaura - Nature Power - Level 32
  (698, 69800, 267, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Amaura - Freeze-Dry - Level 36
  (698, 69800, 573, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Amaura - Ice Beam - Level 40
  (698, 69800, 58, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Amaura - Light Screen - Level 44
  (698, 69800, 113, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Amaura - Hail - Level 48
  (698, 69800, 258, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Amaura - Blizzard - Level 52
  (698, 69800, 59, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Amaura - Hyper Beam - Level 56
  (698, 69800, 63, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Amaura - Hyper Beam - TM08
  (698, 69800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Amaura - Thunder Wave - TM14
  (698, 69800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Amaura - Light Screen - TM17
  (698, 69800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Amaura - Reflect - TM18
  (698, 69800, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Amaura - Safeguard - TM19
  (698, 69800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 21),
  -- Amaura - Rest - TM21
  (698, 69800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Amaura - Rock Slide - TM22
  (698, 69800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Amaura - Snore - TM24
  (698, 69800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Amaura - Protect - TM25
  (698, 69800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Amaura - Icy Wind - TM27
  (698, 69800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 26),
  -- Amaura - Attract - TM31
  (698, 69800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Amaura - Sandstorm - TM32
  (698, 69800, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 28),
  -- Amaura - Rain Dance - TM33
  (698, 69800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Amaura - Hail - TM35
  (698, 69800, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 30),
  -- Amaura - Facade - TM39
  (698, 69800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Amaura - Weather Ball - TM46
  (698, 69800, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 32),
  -- Amaura - Rock Tomb - TM48
  (698, 69800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Amaura - Mud Shot - TM53
  (698, 69800, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 34),
  -- Amaura - Rock Blast - TM54
  (698, 69800, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 35),
  -- Amaura - Avalanche - TM64
  (698, 69800, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 36),
  -- Amaura - Round - TM76
  (698, 69800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Amaura - Bulldoze - TM81
  (698, 69800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 38),
  -- Amaura - Body Slam - TR01
  (698, 69800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 39),
  -- Amaura - Ice Beam - TR05
  (698, 69800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 40),
  -- Amaura - Blizzard - TR06
  (698, 69800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 41),
  -- Amaura - Thunderbolt - TR08
  (698, 69800, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 42),
  -- Amaura - Substitute - TR20
  (698, 69800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Amaura - Outrage - TR24
  (698, 69800, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 44),
  -- Amaura - Endure - TR26
  (698, 69800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Amaura - Sleep Talk - TR27
  (698, 69800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Amaura - Encore - TR30
  (698, 69800, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 47),
  -- Amaura - Iron Tail - TR31
  (698, 69800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 48),
  -- Amaura - Hyper Voice - TR42
  (698, 69800, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 49),
  -- Amaura - Iron Defense - TR46
  (698, 69800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 50),
  -- Amaura - Calm Mind - TR49
  (698, 69800, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 51),
  -- Amaura - Dark Pulse - TR58
  (698, 69800, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 52),
  -- Amaura - Earth Power - TR67
  (698, 69800, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 53),
  -- Amaura - Zen Headbutt - TR69
  (698, 69800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 54),
  -- Amaura - Flash Cannon - TR70
  (698, 69800, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 55),
  -- Amaura - Iron Head - TR74
  (698, 69800, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 56),
  -- Amaura - Stone Edge - TR75
  (698, 69800, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 57),
  -- Amaura - Stealth Rock - TR76
  (698, 69800, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 58),
  -- Amaura - Take Down - Egg
  (698, 69800, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Amaura - Rock Throw - Egg
  (698, 69800, 88, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Amaura - Haze - Egg
  (698, 69800, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Amaura - Mirror Coat - Egg
  (698, 69800, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Amaura - Discharge - Egg
  (698, 69800, 435, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Amaura - Aurora Veil - Egg
  (698, 69800, 694, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Aurorus - Growl - Level 1
  (699, 69900, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aurorus - Powder Snow - Level 1
  (699, 69900, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aurorus - Encore - Level 1
  (699, 69900, 227, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Aurorus - Ancient Power - Level 1
  (699, 69900, 246, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Aurorus - Icy Wind - Level 12
  (699, 69900, 196, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Aurorus - Round - Level 16
  (699, 69900, 496, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Aurorus - Mist - Level 20
  (699, 69900, 54, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Aurorus - Aurora Beam - Level 24
  (699, 69900, 62, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Aurorus - Thunder Wave - Level 28
  (699, 69900, 86, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Aurorus - Nature Power - Level 32
  (699, 69900, 267, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Aurorus - Freeze-Dry - Level 36
  (699, 69900, 573, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Aurorus - Ice Beam - Level 42
  (699, 69900, 58, 18, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Aurorus - Light Screen - Level 48
  (699, 69900, 113, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Aurorus - Hail - Level 54
  (699, 69900, 258, 18, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Aurorus - Blizzard - Level 60
  (699, 69900, 59, 18, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Aurorus - Hyper Beam - Level 66
  (699, 69900, 63, 18, NULL, 1, 66, NULL, NULL, NULL, 16),
  -- Aurorus - Hyper Beam - TM08
  (699, 69900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Aurorus - Giga Impact - TM09
  (699, 69900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Aurorus - Thunder Wave - TM14
  (699, 69900, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 19),
  -- Aurorus - Light Screen - TM17
  (699, 69900, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Aurorus - Reflect - TM18
  (699, 69900, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Aurorus - Safeguard - TM19
  (699, 69900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Aurorus - Rest - TM21
  (699, 69900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Aurorus - Rock Slide - TM22
  (699, 69900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Aurorus - Snore - TM24
  (699, 69900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Aurorus - Protect - TM25
  (699, 69900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Aurorus - Icy Wind - TM27
  (699, 69900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 27),
  -- Aurorus - Attract - TM31
  (699, 69900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Aurorus - Sandstorm - TM32
  (699, 69900, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 29),
  -- Aurorus - Rain Dance - TM33
  (699, 69900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Aurorus - Hail - TM35
  (699, 69900, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 31),
  -- Aurorus - Facade - TM39
  (699, 69900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Aurorus - Weather Ball - TM46
  (699, 69900, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 33),
  -- Aurorus - Rock Tomb - TM48
  (699, 69900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 34),
  -- Aurorus - Icicle Spear - TM51
  (699, 69900, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 35),
  -- Aurorus - Mud Shot - TM53
  (699, 69900, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 36),
  -- Aurorus - Rock Blast - TM54
  (699, 69900, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 37),
  -- Aurorus - Avalanche - TM64
  (699, 69900, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 38),
  -- Aurorus - Round - TM76
  (699, 69900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Aurorus - Bulldoze - TM81
  (699, 69900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 40),
  -- Aurorus - Body Slam - TR01
  (699, 69900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 41),
  -- Aurorus - Ice Beam - TR05
  (699, 69900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 42),
  -- Aurorus - Blizzard - TR06
  (699, 69900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 43),
  -- Aurorus - Thunderbolt - TR08
  (699, 69900, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 44),
  -- Aurorus - Thunder - TR09
  (699, 69900, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 45),
  -- Aurorus - Earthquake - TR10
  (699, 69900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 46),
  -- Aurorus - Psychic - TR11
  (699, 69900, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 47),
  -- Aurorus - Substitute - TR20
  (699, 69900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Aurorus - Outrage - TR24
  (699, 69900, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 49),
  -- Aurorus - Endure - TR26
  (699, 69900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Aurorus - Sleep Talk - TR27
  (699, 69900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Aurorus - Encore - TR30
  (699, 69900, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 52),
  -- Aurorus - Iron Tail - TR31
  (699, 69900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 53),
  -- Aurorus - Hyper Voice - TR42
  (699, 69900, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 54),
  -- Aurorus - Iron Defense - TR46
  (699, 69900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 55),
  -- Aurorus - Calm Mind - TR49
  (699, 69900, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 56),
  -- Aurorus - Dark Pulse - TR58
  (699, 69900, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 57),
  -- Aurorus - Earth Power - TR67
  (699, 69900, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 58),
  -- Aurorus - Zen Headbutt - TR69
  (699, 69900, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 59),
  -- Aurorus - Flash Cannon - TR70
  (699, 69900, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 60),
  -- Aurorus - Iron Head - TR74
  (699, 69900, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 61),
  -- Aurorus - Stone Edge - TR75
  (699, 69900, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 62),
  -- Aurorus - Stealth Rock - TR76
  (699, 69900, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 63),
  -- Sylveon - Tackle - Level 1
  (700, 70000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sylveon - Take Down - Level 1
  (700, 70000, 36, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sylveon - Double-Edge - Level 1
  (700, 70000, 38, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sylveon - Tail Whip - Level 1
  (700, 70000, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sylveon - Bite - Level 1
  (700, 70000, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sylveon - Growl - Level 1
  (700, 70000, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Sylveon - Charm - Level 1
  (700, 70000, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Sylveon - Baton Pass - Level 1
  (700, 70000, 226, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Sylveon - Helping Hand - Level 1
  (700, 70000, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Sylveon - Covet - Level 1
  (700, 70000, 343, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Sylveon - Copycat - Level 1
  (700, 70000, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Sylveon - Disarming Voice - Level 1
  (700, 70000, 574, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Sylveon - Sand Attack - Level 5
  (700, 70000, 28, 18, NULL, 1, 5, NULL, NULL, NULL, 13),
  -- Sylveon - Quick Attack - Level 10
  (700, 70000, 98, 18, NULL, 1, 10, NULL, NULL, NULL, 14),
  -- Sylveon - Baby-Doll Eyes - Level 15
  (700, 70000, 608, 18, NULL, 1, 15, NULL, NULL, NULL, 15),
  -- Sylveon - Swift - Level 20
  (700, 70000, 129, 18, NULL, 1, 20, NULL, NULL, NULL, 16),
  -- Sylveon - Light Screen - Level 25
  (700, 70000, 113, 18, NULL, 1, 25, NULL, NULL, NULL, 17),
  -- Sylveon - Draining Kiss - Level 30
  (700, 70000, 577, 18, NULL, 1, 30, NULL, NULL, NULL, 18),
  -- Sylveon - Misty Terrain - Level 35
  (700, 70000, 581, 18, NULL, 1, 35, NULL, NULL, NULL, 19),
  -- Sylveon - Skill Swap - Level 40
  (700, 70000, 285, 18, NULL, 1, 40, NULL, NULL, NULL, 20),
  -- Sylveon - Psych Up - Level 45
  (700, 70000, 244, 18, NULL, 1, 45, NULL, NULL, NULL, 21),
  -- Sylveon - Moonblast - Level 50
  (700, 70000, 585, 18, NULL, 1, 50, NULL, NULL, NULL, 22),
  -- Sylveon - Last Resort - Level 55
  (700, 70000, 387, 18, NULL, 1, 55, NULL, NULL, NULL, 23),
  -- Sylveon - Disarming Voice - Evolution
  (700, 70000, 574, 18, NULL, 7, NULL, NULL, NULL, NULL, 24),
  -- Sylveon - Pay Day - TM02
  (700, 70000, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 25),
  -- Sylveon - Hyper Beam - TM08
  (700, 70000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 26),
  -- Sylveon - Giga Impact - TM09
  (700, 70000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 27),
  -- Sylveon - Magical Leaf - TM10
  (700, 70000, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 28),
  -- Sylveon - Dig - TM15
  (700, 70000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 29),
  -- Sylveon - Light Screen - TM17
  (700, 70000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 30),
  -- Sylveon - Reflect - TM18
  (700, 70000, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 31),
  -- Sylveon - Safeguard - TM19
  (700, 70000, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 32),
  -- Sylveon - Rest - TM21
  (700, 70000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 33),
  -- Sylveon - Snore - TM24
  (700, 70000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 34),
  -- Sylveon - Protect - TM25
  (700, 70000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 35),
  -- Sylveon - Charm - TM29
  (700, 70000, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 36),
  -- Sylveon - Attract - TM31
  (700, 70000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 37),
  -- Sylveon - Rain Dance - TM33
  (700, 70000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 38),
  -- Sylveon - Sunny Day - TM34
  (700, 70000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 39),
  -- Sylveon - Facade - TM39
  (700, 70000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 40),
  -- Sylveon - Swift - TM40
  (700, 70000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 41),
  -- Sylveon - Helping Hand - TM41
  (700, 70000, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 42),
  -- Sylveon - Weather Ball - TM46
  (700, 70000, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 43),
  -- Sylveon - Fake Tears - TM47
  (700, 70000, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 44),
  -- Sylveon - Round - TM76
  (700, 70000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Sylveon - Retaliate - TM79
  (700, 70000, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 46),
  -- Sylveon - Draining Kiss - TM87
  (700, 70000, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 47),
  -- Sylveon - Misty Terrain - TM89
  (700, 70000, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 48),
  -- Sylveon - Mystical Fire - TM92
  (700, 70000, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 49),
  -- Sylveon - Body Slam - TR01
  (700, 70000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 50),
  -- Sylveon - Focus Energy - TR13
  (700, 70000, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 51),
  -- Sylveon - Substitute - TR20
  (700, 70000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 52),
  -- Sylveon - Psyshock - TR25
  (700, 70000, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 53),
  -- Sylveon - Endure - TR26
  (700, 70000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Sylveon - Sleep Talk - TR27
  (700, 70000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Sylveon - Baton Pass - TR29
  (700, 70000, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 56),
  -- Sylveon - Iron Tail - TR31
  (700, 70000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 57),
  -- Sylveon - Shadow Ball - TR33
  (700, 70000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 58),
  -- Sylveon - Skill Swap - TR40
  (700, 70000, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 59),
  -- Sylveon - Hyper Voice - TR42
  (700, 70000, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 60),
  -- Sylveon - Calm Mind - TR49
  (700, 70000, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 61),
  -- Sylveon - Stored Power - TR82
  (700, 70000, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 62),
  -- Sylveon - Work Up - TR85
  (700, 70000, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 63),
  -- Sylveon - Play Rough - TR90
  (700, 70000, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 64),
  -- Sylveon - Dazzling Gleam - TR92
  (700, 70000, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 65);

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
  -- Diggersby - Defense Curl - Egg
  (660, 66000, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Diggersby - Rollout - Egg
  (660, 66000, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Fletchinder - Defog - Egg
  (662, 66200, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Fletchinder - Flame Charge - Egg
  (662, 66200, 488, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Fletchinder - Quick Guard - Egg
  (662, 66200, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Talonflame - Defog - Egg
  (663, 66300, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Talonflame - Flame Charge - Egg
  (663, 66300, 488, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Talonflame - Quick Guard - Egg
  (663, 66300, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pangoro - Seismic Toss - Egg
  (675, 67500, 69, 18, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Pangoro - Storm Throw - Egg
  (675, 67500, 480, 18, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Pangoro - Quick Guard - Egg
  (675, 67500, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Pangoro - Quash - Egg
  (675, 67500, 511, 18, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Pangoro - Power Trip - Egg
  (675, 67500, 681, 18, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Doublade - Destiny Bond - Egg
  (680, 68000, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Doublade - Block - Egg
  (680, 68000, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Doublade - Wide Guard - Egg
  (680, 68000, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Aegislash - Destiny Bond - Egg
  (681, 68100, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Aegislash - Block - Egg
  (681, 68100, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Aegislash - Wide Guard - Egg
  (681, 68100, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Aromatisse - Disable - Egg
  (683, 68300, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Aromatisse - Wish - Egg
  (683, 68300, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Aromatisse - After You - Egg
  (683, 68300, 495, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Slurpuff - Yawn - Egg
  (685, 68500, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Slurpuff - Copycat - Egg
  (685, 68500, 383, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Slurpuff - After You - Egg
  (685, 68500, 495, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Slurpuff - Sticky Web - Egg
  (685, 68500, 564, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Malamar - Disable - Egg
  (687, 68700, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Malamar - Destiny Bond - Egg
  (687, 68700, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Malamar - Acupressure - Egg
  (687, 68700, 367, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Barbaracle - Sand Attack - Egg
  (689, 68900, 28, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Barbaracle - Night Slash - Egg
  (689, 68900, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Barbaracle - Switcheroo - Egg
  (689, 68900, 415, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Dragalge - Haze - Egg
  (691, 69100, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Dragalge - Acid Armor - Egg
  (691, 69100, 151, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Dragalge - Twister - Egg
  (691, 69100, 239, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Dragalge - Dragon Tail - Egg
  (691, 69100, 525, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Clawitzer - Bubble Beam - Egg
  (693, 69300, 61, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Clawitzer - Aqua Tail - Egg
  (693, 69300, 401, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Clawitzer - Entrainment - Egg
  (693, 69300, 494, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Heliolisk - Glare - Egg
  (695, 69500, 137, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Heliolisk - Dragon Rush - Egg
  (695, 69500, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Heliolisk - Dragon Tail - Egg
  (695, 69500, 525, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Tyrantrum - Rock Throw - Egg
  (697, 69700, 88, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Tyrantrum - Curse - Egg
  (697, 69700, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Tyrantrum - Poison Fang - Egg
  (697, 69700, 305, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Tyrantrum - Rock Polish - Egg
  (697, 69700, 397, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Aurorus - Take Down - Egg
  (699, 69900, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Aurorus - Rock Throw - Egg
  (699, 69900, 88, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Aurorus - Haze - Egg
  (699, 69900, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Aurorus - Mirror Coat - Egg
  (699, 69900, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Aurorus - Discharge - Egg
  (699, 69900, 435, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Aurorus - Aurora Veil - Egg
  (699, 69900, 694, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Sylveon - Double Kick - Egg
  (700, 70000, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sylveon - Curse - Egg
  (700, 70000, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Sylveon - Flail - Egg
  (700, 70000, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Sylveon - Mud-Slap - Egg
  (700, 70000, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Sylveon - Detect - Egg
  (700, 70000, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Sylveon - Wish - Egg
  (700, 70000, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Sylveon - Yawn - Egg
  (700, 70000, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Sylveon - Tickle - Egg
  (700, 70000, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 73);
