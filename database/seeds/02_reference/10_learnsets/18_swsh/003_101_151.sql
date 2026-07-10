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
-- Sword / Shield learnsets for default forms, species 101-151.
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
  -- Exeggcute - Absorb - Level 1
  (102, 10200, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggcute - Hypnosis - Level 1
  (102, 10200, 95, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggcute - Reflect - Level 5
  (102, 10200, 115, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Exeggcute - Leech Seed - Level 10
  (102, 10200, 73, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Exeggcute - Mega Drain - Level 15
  (102, 10200, 72, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Exeggcute - Confusion - Level 20
  (102, 10200, 93, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Exeggcute - Synthesis - Level 25
  (102, 10200, 235, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Exeggcute - Bullet Seed - Level 30
  (102, 10200, 331, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Exeggcute - Giga Drain - Level 35
  (102, 10200, 202, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Exeggcute - Extrasensory - Level 40
  (102, 10200, 326, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Exeggcute - Uproar - Level 45
  (102, 10200, 253, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Exeggcute - Worry Seed - Level 50
  (102, 10200, 388, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Exeggcute - Solar Beam - Level 55
  (102, 10200, 76, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Exeggcute - Solar Beam - TM11
  (102, 10200, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 14),
  -- Exeggcute - Light Screen - TM17
  (102, 10200, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 15),
  -- Exeggcute - Reflect - TM18
  (102, 10200, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 16),
  -- Exeggcute - Self-Destruct - TM20
  (102, 10200, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 17),
  -- Exeggcute - Rest - TM21
  (102, 10200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Exeggcute - Thief - TM23
  (102, 10200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 19),
  -- Exeggcute - Snore - TM24
  (102, 10200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Exeggcute - Protect - TM25
  (102, 10200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Exeggcute - Giga Drain - TM28
  (102, 10200, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 22),
  -- Exeggcute - Attract - TM31
  (102, 10200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Exeggcute - Sunny Day - TM34
  (102, 10200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Exeggcute - Facade - TM39
  (102, 10200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Exeggcute - Bullet Seed - TM50
  (102, 10200, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 26),
  -- Exeggcute - Power Swap - TM60
  (102, 10200, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 27),
  -- Exeggcute - Trick Room - TM70
  (102, 10200, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 28),
  -- Exeggcute - Round - TM76
  (102, 10200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Exeggcute - Grassy Terrain - TM88
  (102, 10200, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 30),
  -- Exeggcute - Swords Dance - TR00
  (102, 10200, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 31),
  -- Exeggcute - Psychic - TR11
  (102, 10200, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 32),
  -- Exeggcute - Substitute - TR20
  (102, 10200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 33),
  -- Exeggcute - Sludge Bomb - TR22
  (102, 10200, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 34),
  -- Exeggcute - Endure - TR26
  (102, 10200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Exeggcute - Sleep Talk - TR27
  (102, 10200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Exeggcute - Uproar - TR35
  (102, 10200, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 37),
  -- Exeggcute - Skill Swap - TR40
  (102, 10200, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 38),
  -- Exeggcute - Seed Bomb - TR59
  (102, 10200, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 39),
  -- Exeggcute - Energy Ball - TR65
  (102, 10200, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 40),
  -- Exeggcute - Leaf Storm - TR71
  (102, 10200, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 41),
  -- Exeggcute - Grass Knot - TR77
  (102, 10200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 42),
  -- Exeggcute - Poison Powder - Egg
  (102, 10200, 77, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Exeggcute - Stun Spore - Egg
  (102, 10200, 78, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Exeggcute - Sleep Powder - Egg
  (102, 10200, 79, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Exeggcute - Curse - Egg
  (102, 10200, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Exeggcute - Moonlight - Egg
  (102, 10200, 236, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Exeggcute - Ancient Power - Egg
  (102, 10200, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Exeggcute - Ingrain - Egg
  (102, 10200, 275, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Exeggcute - Block - Egg
  (102, 10200, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Exeggutor - Stomp - Level 1
  (103, 10300, 23, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggutor - Absorb - Level 1
  (103, 10300, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggutor - Mega Drain - Level 1
  (103, 10300, 72, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exeggutor - Leech Seed - Level 1
  (103, 10300, 73, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Exeggutor - Solar Beam - Level 1
  (103, 10300, 76, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Exeggutor - Confusion - Level 1
  (103, 10300, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Exeggutor - Hypnosis - Level 1
  (103, 10300, 95, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Exeggutor - Reflect - Level 1
  (103, 10300, 115, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Exeggutor - Giga Drain - Level 1
  (103, 10300, 202, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Exeggutor - Synthesis - Level 1
  (103, 10300, 235, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Exeggutor - Uproar - Level 1
  (103, 10300, 253, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Exeggutor - Extrasensory - Level 1
  (103, 10300, 326, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Exeggutor - Bullet Seed - Level 1
  (103, 10300, 331, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Exeggutor - Worry Seed - Level 1
  (103, 10300, 388, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Exeggutor - Seed Bomb - Level 1
  (103, 10300, 402, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Exeggutor - Leaf Storm - Level 1
  (103, 10300, 437, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Exeggutor - Wood Hammer - Level 1
  (103, 10300, 452, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Exeggutor - Psyshock - Level 1
  (103, 10300, 473, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Exeggutor - Stomp - Evolution
  (103, 10300, 23, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Exeggutor - Hyper Beam - TM08
  (103, 10300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Exeggutor - Giga Impact - TM09
  (103, 10300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Exeggutor - Magical Leaf - TM10
  (103, 10300, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 22),
  -- Exeggutor - Solar Beam - TM11
  (103, 10300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 23),
  -- Exeggutor - Light Screen - TM17
  (103, 10300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 24),
  -- Exeggutor - Reflect - TM18
  (103, 10300, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 25),
  -- Exeggutor - Self-Destruct - TM20
  (103, 10300, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Exeggutor - Rest - TM21
  (103, 10300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Exeggutor - Thief - TM23
  (103, 10300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 28),
  -- Exeggutor - Snore - TM24
  (103, 10300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Exeggutor - Protect - TM25
  (103, 10300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Exeggutor - Giga Drain - TM28
  (103, 10300, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 31),
  -- Exeggutor - Attract - TM31
  (103, 10300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Exeggutor - Sunny Day - TM34
  (103, 10300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 33),
  -- Exeggutor - Facade - TM39
  (103, 10300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Exeggutor - Bullet Seed - TM50
  (103, 10300, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 35),
  -- Exeggutor - Power Swap - TM60
  (103, 10300, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 36),
  -- Exeggutor - Psycho Cut - TM69
  (103, 10300, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 37),
  -- Exeggutor - Trick Room - TM70
  (103, 10300, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 38),
  -- Exeggutor - Round - TM76
  (103, 10300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Exeggutor - Bulldoze - TM81
  (103, 10300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 40),
  -- Exeggutor - Grassy Terrain - TM88
  (103, 10300, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 41),
  -- Exeggutor - Stomping Tantrum - TM98
  (103, 10300, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 42),
  -- Exeggutor - Swords Dance - TR00
  (103, 10300, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 43),
  -- Exeggutor - Low Kick - TR07
  (103, 10300, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 44),
  -- Exeggutor - Psychic - TR11
  (103, 10300, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 45),
  -- Exeggutor - Substitute - TR20
  (103, 10300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Exeggutor - Sludge Bomb - TR22
  (103, 10300, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 47),
  -- Exeggutor - Psyshock - TR25
  (103, 10300, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 48),
  -- Exeggutor - Endure - TR26
  (103, 10300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Exeggutor - Sleep Talk - TR27
  (103, 10300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Exeggutor - Future Sight - TR34
  (103, 10300, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 51),
  -- Exeggutor - Uproar - TR35
  (103, 10300, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 52),
  -- Exeggutor - Skill Swap - TR40
  (103, 10300, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 53),
  -- Exeggutor - Calm Mind - TR49
  (103, 10300, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 54),
  -- Exeggutor - Seed Bomb - TR59
  (103, 10300, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 55),
  -- Exeggutor - Energy Ball - TR65
  (103, 10300, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 56),
  -- Exeggutor - Zen Headbutt - TR69
  (103, 10300, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 57),
  -- Exeggutor - Leaf Storm - TR71
  (103, 10300, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 58),
  -- Exeggutor - Grass Knot - TR77
  (103, 10300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 59),
  -- Cubone - Growl - Level 1
  (104, 10400, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cubone - Mud-Slap - Level 1
  (104, 10400, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cubone - Tail Whip - Level 4
  (104, 10400, 39, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Cubone - False Swipe - Level 8
  (104, 10400, 206, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Cubone - Headbutt - Level 12
  (104, 10400, 29, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Cubone - Retaliate - Level 16
  (104, 10400, 514, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Cubone - Fling - Level 20
  (104, 10400, 374, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Cubone - Stomping Tantrum - Level 24
  (104, 10400, 707, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Cubone - Bone Rush - Level 29
  (104, 10400, 198, 18, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Cubone - Focus Energy - Level 32
  (104, 10400, 116, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Cubone - Endeavor - Level 36
  (104, 10400, 283, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Cubone - Bonemerang - Level 40
  (104, 10400, 155, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Cubone - Thrash - Level 44
  (104, 10400, 37, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Cubone - Double-Edge - Level 48
  (104, 10400, 38, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Cubone - Mega Punch - TM00
  (104, 10400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Cubone - Mega Kick - TM01
  (104, 10400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Cubone - Fire Punch - TM03
  (104, 10400, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 17),
  -- Cubone - Thunder Punch - TM05
  (104, 10400, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 18),
  -- Cubone - Dig - TM15
  (104, 10400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 19),
  -- Cubone - Screech - TM16
  (104, 10400, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 20),
  -- Cubone - Rest - TM21
  (104, 10400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Cubone - Rock Slide - TM22
  (104, 10400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Cubone - Thief - TM23
  (104, 10400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Cubone - Snore - TM24
  (104, 10400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Cubone - Protect - TM25
  (104, 10400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Cubone - Icy Wind - TM27
  (104, 10400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 26),
  -- Cubone - Attract - TM31
  (104, 10400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Cubone - Sandstorm - TM32
  (104, 10400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 28),
  -- Cubone - Sunny Day - TM34
  (104, 10400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Cubone - Facade - TM39
  (104, 10400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Cubone - Swift - TM40
  (104, 10400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Cubone - Brick Break - TM43
  (104, 10400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 32),
  -- Cubone - Rock Tomb - TM48
  (104, 10400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Cubone - Fling - TM59
  (104, 10400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 34),
  -- Cubone - Round - TM76
  (104, 10400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Cubone - Retaliate - TM79
  (104, 10400, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 36),
  -- Cubone - Bulldoze - TM81
  (104, 10400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 37),
  -- Cubone - False Swipe - TM94
  (104, 10400, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 38),
  -- Cubone - Brutal Swing - TM97
  (104, 10400, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 39),
  -- Cubone - Stomping Tantrum - TM98
  (104, 10400, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 40),
  -- Cubone - Swords Dance - TR00
  (104, 10400, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 41),
  -- Cubone - Body Slam - TR01
  (104, 10400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 42),
  -- Cubone - Flamethrower - TR02
  (104, 10400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 43),
  -- Cubone - Ice Beam - TR05
  (104, 10400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 44),
  -- Cubone - Blizzard - TR06
  (104, 10400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 45),
  -- Cubone - Low Kick - TR07
  (104, 10400, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 46),
  -- Cubone - Earthquake - TR10
  (104, 10400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 47),
  -- Cubone - Focus Energy - TR13
  (104, 10400, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 48),
  -- Cubone - Fire Blast - TR15
  (104, 10400, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 49),
  -- Cubone - Substitute - TR20
  (104, 10400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 50),
  -- Cubone - Endure - TR26
  (104, 10400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 51),
  -- Cubone - Sleep Talk - TR27
  (104, 10400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 52),
  -- Cubone - Iron Tail - TR31
  (104, 10400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 53),
  -- Cubone - Uproar - TR35
  (104, 10400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 54),
  -- Cubone - Iron Defense - TR46
  (104, 10400, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 55),
  -- Cubone - Earth Power - TR67
  (104, 10400, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 56),
  -- Cubone - Iron Head - TR74
  (104, 10400, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 57),
  -- Cubone - Stealth Rock - TR76
  (104, 10400, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 58),
  -- Cubone - Double Kick - Egg
  (104, 10400, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Cubone - Leer - Egg
  (104, 10400, 43, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Cubone - Skull Bash - Egg
  (104, 10400, 130, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Cubone - Curse - Egg
  (104, 10400, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Cubone - Belly Drum - Egg
  (104, 10400, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Cubone - Perish Song - Egg
  (104, 10400, 195, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Cubone - Detect - Egg
  (104, 10400, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Cubone - Ancient Power - Egg
  (104, 10400, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Marowak - Tail Whip - Level 1
  (105, 10500, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marowak - Growl - Level 1
  (105, 10500, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marowak - Mud-Slap - Level 1
  (105, 10500, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marowak - False Swipe - Level 1
  (105, 10500, 206, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marowak - Headbutt - Level 12
  (105, 10500, 29, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Marowak - Retaliate - Level 16
  (105, 10500, 514, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Marowak - Fling - Level 20
  (105, 10500, 374, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Marowak - Stomping Tantrum - Level 24
  (105, 10500, 707, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Marowak - Bone Rush - Level 31
  (105, 10500, 198, 18, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Marowak - Focus Energy - Level 36
  (105, 10500, 116, 18, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Marowak - Endeavor - Level 42
  (105, 10500, 283, 18, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Marowak - Bonemerang - Level 48
  (105, 10500, 155, 18, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Marowak - Thrash - Level 54
  (105, 10500, 37, 18, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Marowak - Double-Edge - Level 60
  (105, 10500, 38, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Marowak - Mega Punch - TM00
  (105, 10500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Marowak - Mega Kick - TM01
  (105, 10500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Marowak - Fire Punch - TM03
  (105, 10500, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 17),
  -- Marowak - Thunder Punch - TM05
  (105, 10500, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 18),
  -- Marowak - Hyper Beam - TM08
  (105, 10500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Marowak - Giga Impact - TM09
  (105, 10500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Marowak - Dig - TM15
  (105, 10500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Marowak - Screech - TM16
  (105, 10500, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 22),
  -- Marowak - Rest - TM21
  (105, 10500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Marowak - Rock Slide - TM22
  (105, 10500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Marowak - Thief - TM23
  (105, 10500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 25),
  -- Marowak - Snore - TM24
  (105, 10500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Marowak - Protect - TM25
  (105, 10500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Marowak - Icy Wind - TM27
  (105, 10500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 28),
  -- Marowak - Attract - TM31
  (105, 10500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Marowak - Sandstorm - TM32
  (105, 10500, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 30),
  -- Marowak - Sunny Day - TM34
  (105, 10500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Marowak - Facade - TM39
  (105, 10500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Marowak - Swift - TM40
  (105, 10500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Marowak - Brick Break - TM43
  (105, 10500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Marowak - Rock Tomb - TM48
  (105, 10500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 35),
  -- Marowak - Fling - TM59
  (105, 10500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Marowak - Round - TM76
  (105, 10500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Marowak - Retaliate - TM79
  (105, 10500, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 38),
  -- Marowak - Bulldoze - TM81
  (105, 10500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 39),
  -- Marowak - False Swipe - TM94
  (105, 10500, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 40),
  -- Marowak - Brutal Swing - TM97
  (105, 10500, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 41),
  -- Marowak - Stomping Tantrum - TM98
  (105, 10500, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 42),
  -- Marowak - Swords Dance - TR00
  (105, 10500, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 43),
  -- Marowak - Body Slam - TR01
  (105, 10500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 44),
  -- Marowak - Flamethrower - TR02
  (105, 10500, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 45),
  -- Marowak - Ice Beam - TR05
  (105, 10500, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 46),
  -- Marowak - Blizzard - TR06
  (105, 10500, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 47),
  -- Marowak - Low Kick - TR07
  (105, 10500, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 48),
  -- Marowak - Earthquake - TR10
  (105, 10500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 49),
  -- Marowak - Focus Energy - TR13
  (105, 10500, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 50),
  -- Marowak - Fire Blast - TR15
  (105, 10500, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 51),
  -- Marowak - Substitute - TR20
  (105, 10500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 52),
  -- Marowak - Outrage - TR24
  (105, 10500, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 53),
  -- Marowak - Endure - TR26
  (105, 10500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Marowak - Sleep Talk - TR27
  (105, 10500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Marowak - Iron Tail - TR31
  (105, 10500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 56),
  -- Marowak - Uproar - TR35
  (105, 10500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 57),
  -- Marowak - Iron Defense - TR46
  (105, 10500, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 58),
  -- Marowak - Focus Blast - TR64
  (105, 10500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 59),
  -- Marowak - Earth Power - TR67
  (105, 10500, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 60),
  -- Marowak - Iron Head - TR74
  (105, 10500, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 61),
  -- Marowak - Stone Edge - TR75
  (105, 10500, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 62),
  -- Marowak - Stealth Rock - TR76
  (105, 10500, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 63),
  -- Marowak - Throat Chop - TR95
  (105, 10500, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 64),
  -- Hitmonlee - Tackle - Level 1
  (106, 10600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmonlee - Focus Energy - Level 1
  (106, 10600, 116, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmonlee - Fake Out - Level 1
  (106, 10600, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hitmonlee - Helping Hand - Level 1
  (106, 10600, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hitmonlee - Brick Break - Level 1
  (106, 10600, 280, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hitmonlee - Feint - Level 1
  (106, 10600, 364, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Hitmonlee - Low Sweep - Level 1
  (106, 10600, 490, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Hitmonlee - Double Kick - Level 4
  (106, 10600, 24, 18, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Hitmonlee - Low Kick - Level 8
  (106, 10600, 67, 18, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Hitmonlee - Endure - Level 12
  (106, 10600, 203, 18, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Hitmonlee - Revenge - Level 16
  (106, 10600, 279, 18, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Hitmonlee - Wide Guard - Level 21
  (106, 10600, 469, 18, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Hitmonlee - Blaze Kick - Level 24
  (106, 10600, 299, 18, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Hitmonlee - Mind Reader - Level 28
  (106, 10600, 170, 18, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Hitmonlee - Mega Kick - Level 32
  (106, 10600, 25, 18, NULL, 1, 32, NULL, NULL, NULL, 15),
  -- Hitmonlee - Close Combat - Level 36
  (106, 10600, 370, 18, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Hitmonlee - Reversal - Level 40
  (106, 10600, 179, 18, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Hitmonlee - High Jump Kick - Level 44
  (106, 10600, 136, 18, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Hitmonlee - Brick Break - Evolution
  (106, 10600, 280, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Hitmonlee - Mega Punch - TM00
  (106, 10600, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 20),
  -- Hitmonlee - Mega Kick - TM01
  (106, 10600, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 21),
  -- Hitmonlee - Rest - TM21
  (106, 10600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Hitmonlee - Rock Slide - TM22
  (106, 10600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Hitmonlee - Thief - TM23
  (106, 10600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Hitmonlee - Snore - TM24
  (106, 10600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Hitmonlee - Protect - TM25
  (106, 10600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Hitmonlee - Attract - TM31
  (106, 10600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Hitmonlee - Rain Dance - TM33
  (106, 10600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Hitmonlee - Sunny Day - TM34
  (106, 10600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Hitmonlee - Facade - TM39
  (106, 10600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Hitmonlee - Swift - TM40
  (106, 10600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Hitmonlee - Helping Hand - TM41
  (106, 10600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 32),
  -- Hitmonlee - Revenge - TM42
  (106, 10600, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 33),
  -- Hitmonlee - Brick Break - TM43
  (106, 10600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Hitmonlee - Rock Tomb - TM48
  (106, 10600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 35),
  -- Hitmonlee - Bounce - TM52
  (106, 10600, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 36),
  -- Hitmonlee - Fling - TM59
  (106, 10600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 37),
  -- Hitmonlee - Low Sweep - TM75
  (106, 10600, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 38),
  -- Hitmonlee - Round - TM76
  (106, 10600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Hitmonlee - Retaliate - TM79
  (106, 10600, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 40),
  -- Hitmonlee - Bulldoze - TM81
  (106, 10600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 41),
  -- Hitmonlee - Stomping Tantrum - TM98
  (106, 10600, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 42),
  -- Hitmonlee - Body Slam - TR01
  (106, 10600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Hitmonlee - Low Kick - TR07
  (106, 10600, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 44),
  -- Hitmonlee - Earthquake - TR10
  (106, 10600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 45),
  -- Hitmonlee - Focus Energy - TR13
  (106, 10600, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 46),
  -- Hitmonlee - Metronome - TR14
  (106, 10600, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 47),
  -- Hitmonlee - Substitute - TR20
  (106, 10600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Hitmonlee - Reversal - TR21
  (106, 10600, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 49),
  -- Hitmonlee - Endure - TR26
  (106, 10600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Hitmonlee - Sleep Talk - TR27
  (106, 10600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Hitmonlee - Uproar - TR35
  (106, 10600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 52),
  -- Hitmonlee - Superpower - TR39
  (106, 10600, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 53),
  -- Hitmonlee - Blaze Kick - TR41
  (106, 10600, 299, 18, NULL, 4, NULL, NULL, 18004041, NULL, 54),
  -- Hitmonlee - Bulk Up - TR48
  (106, 10600, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 55),
  -- Hitmonlee - Close Combat - TR53
  (106, 10600, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 56),
  -- Hitmonlee - Aura Sphere - TR56
  (106, 10600, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 57),
  -- Hitmonlee - Poison Jab - TR57
  (106, 10600, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 58),
  -- Hitmonlee - Focus Blast - TR64
  (106, 10600, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 59),
  -- Hitmonlee - Stone Edge - TR75
  (106, 10600, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 60),
  -- Hitmonlee - Work Up - TR85
  (106, 10600, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 61),
  -- Hitmonlee - Throat Chop - TR95
  (106, 10600, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 62),
  -- Hitmonchan - Tackle - Level 1
  (107, 10700, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmonchan - Focus Energy - Level 1
  (107, 10700, 116, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmonchan - Fake Out - Level 1
  (107, 10700, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hitmonchan - Helping Hand - Level 1
  (107, 10700, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hitmonchan - Feint - Level 1
  (107, 10700, 364, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hitmonchan - Drain Punch - Level 1
  (107, 10700, 409, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Hitmonchan - Vacuum Wave - Level 1
  (107, 10700, 410, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Hitmonchan - Bullet Punch - Level 1
  (107, 10700, 418, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Hitmonchan - Mach Punch - Level 4
  (107, 10700, 183, 18, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Hitmonchan - Power-Up Punch - Level 8
  (107, 10700, 612, 18, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Hitmonchan - Detect - Level 12
  (107, 10700, 197, 18, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Hitmonchan - Revenge - Level 16
  (107, 10700, 279, 18, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Hitmonchan - Quick Guard - Level 21
  (107, 10700, 501, 18, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Hitmonchan - Fire Punch - Level 24
  (107, 10700, 7, 18, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Hitmonchan - Ice Punch - Level 24
  (107, 10700, 8, 18, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Hitmonchan - Thunder Punch - Level 24
  (107, 10700, 9, 18, NULL, 1, 24, NULL, NULL, NULL, 16),
  -- Hitmonchan - Agility - Level 28
  (107, 10700, 97, 18, NULL, 1, 28, NULL, NULL, NULL, 17),
  -- Hitmonchan - Mega Punch - Level 32
  (107, 10700, 5, 18, NULL, 1, 32, NULL, NULL, NULL, 18),
  -- Hitmonchan - Close Combat - Level 36
  (107, 10700, 370, 18, NULL, 1, 36, NULL, NULL, NULL, 19),
  -- Hitmonchan - Counter - Level 40
  (107, 10700, 68, 18, NULL, 1, 40, NULL, NULL, NULL, 20),
  -- Hitmonchan - Focus Punch - Level 44
  (107, 10700, 264, 18, NULL, 1, 44, NULL, NULL, NULL, 21),
  -- Hitmonchan - Drain Punch - Evolution
  (107, 10700, 409, 18, NULL, 7, NULL, NULL, NULL, NULL, 22),
  -- Hitmonchan - Mega Punch - TM00
  (107, 10700, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 23),
  -- Hitmonchan - Mega Kick - TM01
  (107, 10700, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 24),
  -- Hitmonchan - Fire Punch - TM03
  (107, 10700, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 25),
  -- Hitmonchan - Ice Punch - TM04
  (107, 10700, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 26),
  -- Hitmonchan - Thunder Punch - TM05
  (107, 10700, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 27),
  -- Hitmonchan - Rest - TM21
  (107, 10700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 28),
  -- Hitmonchan - Rock Slide - TM22
  (107, 10700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 29),
  -- Hitmonchan - Thief - TM23
  (107, 10700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 30),
  -- Hitmonchan - Snore - TM24
  (107, 10700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 31),
  -- Hitmonchan - Protect - TM25
  (107, 10700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 32),
  -- Hitmonchan - Attract - TM31
  (107, 10700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 33),
  -- Hitmonchan - Rain Dance - TM33
  (107, 10700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 34),
  -- Hitmonchan - Sunny Day - TM34
  (107, 10700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Hitmonchan - Facade - TM39
  (107, 10700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Hitmonchan - Swift - TM40
  (107, 10700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 37),
  -- Hitmonchan - Helping Hand - TM41
  (107, 10700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 38),
  -- Hitmonchan - Revenge - TM42
  (107, 10700, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 39),
  -- Hitmonchan - Brick Break - TM43
  (107, 10700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 40),
  -- Hitmonchan - Rock Tomb - TM48
  (107, 10700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 41),
  -- Hitmonchan - Fling - TM59
  (107, 10700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 42),
  -- Hitmonchan - Drain Punch - TM63
  (107, 10700, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 43),
  -- Hitmonchan - Low Sweep - TM75
  (107, 10700, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 44),
  -- Hitmonchan - Round - TM76
  (107, 10700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Hitmonchan - Retaliate - TM79
  (107, 10700, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 46),
  -- Hitmonchan - Bulldoze - TM81
  (107, 10700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 47),
  -- Hitmonchan - Body Slam - TR01
  (107, 10700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 48),
  -- Hitmonchan - Low Kick - TR07
  (107, 10700, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 49),
  -- Hitmonchan - Earthquake - TR10
  (107, 10700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 50),
  -- Hitmonchan - Agility - TR12
  (107, 10700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 51),
  -- Hitmonchan - Focus Energy - TR13
  (107, 10700, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 52),
  -- Hitmonchan - Metronome - TR14
  (107, 10700, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 53),
  -- Hitmonchan - Substitute - TR20
  (107, 10700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 54),
  -- Hitmonchan - Endure - TR26
  (107, 10700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 55),
  -- Hitmonchan - Sleep Talk - TR27
  (107, 10700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 56),
  -- Hitmonchan - Uproar - TR35
  (107, 10700, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 57),
  -- Hitmonchan - Bulk Up - TR48
  (107, 10700, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 58),
  -- Hitmonchan - Close Combat - TR53
  (107, 10700, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 59),
  -- Hitmonchan - Aura Sphere - TR56
  (107, 10700, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 60),
  -- Hitmonchan - Focus Blast - TR64
  (107, 10700, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 61),
  -- Hitmonchan - Stone Edge - TR75
  (107, 10700, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 62),
  -- Hitmonchan - Work Up - TR85
  (107, 10700, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 63),
  -- Hitmonchan - Throat Chop - TR95
  (107, 10700, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 64),
  -- Lickitung - Defense Curl - Level 1
  (108, 10800, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lickitung - Lick - Level 1
  (108, 10800, 122, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lickitung - Rollout - Level 6
  (108, 10800, 205, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Lickitung - Supersonic - Level 12
  (108, 10800, 48, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Lickitung - Wrap - Level 18
  (108, 10800, 35, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Lickitung - Disable - Level 24
  (108, 10800, 50, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Lickitung - Stomp - Level 30
  (108, 10800, 23, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Lickitung - Knock Off - Level 36
  (108, 10800, 282, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Lickitung - Screech - Level 42
  (108, 10800, 103, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Lickitung - Slam - Level 48
  (108, 10800, 21, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Lickitung - Power Whip - Level 54
  (108, 10800, 438, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Lickitung - Belly Drum - Level 60
  (108, 10800, 187, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Lickitung - Mega Punch - TM00
  (108, 10800, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 13),
  -- Lickitung - Mega Kick - TM01
  (108, 10800, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 14),
  -- Lickitung - Fire Punch - TM03
  (108, 10800, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 15),
  -- Lickitung - Ice Punch - TM04
  (108, 10800, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 16),
  -- Lickitung - Thunder Punch - TM05
  (108, 10800, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 17),
  -- Lickitung - Hyper Beam - TM08
  (108, 10800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Lickitung - Giga Impact - TM09
  (108, 10800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Lickitung - Solar Beam - TM11
  (108, 10800, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Lickitung - Dig - TM15
  (108, 10800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Lickitung - Screech - TM16
  (108, 10800, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 22),
  -- Lickitung - Rest - TM21
  (108, 10800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Lickitung - Rock Slide - TM22
  (108, 10800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Lickitung - Thief - TM23
  (108, 10800, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 25),
  -- Lickitung - Snore - TM24
  (108, 10800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Lickitung - Protect - TM25
  (108, 10800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Lickitung - Icy Wind - TM27
  (108, 10800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 28),
  -- Lickitung - Attract - TM31
  (108, 10800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Lickitung - Sandstorm - TM32
  (108, 10800, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 30),
  -- Lickitung - Rain Dance - TM33
  (108, 10800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Lickitung - Sunny Day - TM34
  (108, 10800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Lickitung - Whirlpool - TM36
  (108, 10800, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 33),
  -- Lickitung - Facade - TM39
  (108, 10800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Lickitung - Helping Hand - TM41
  (108, 10800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 35),
  -- Lickitung - Brick Break - TM43
  (108, 10800, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 36),
  -- Lickitung - Rock Tomb - TM48
  (108, 10800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 37),
  -- Lickitung - Fling - TM59
  (108, 10800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Lickitung - Round - TM76
  (108, 10800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Lickitung - Retaliate - TM79
  (108, 10800, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 40),
  -- Lickitung - Bulldoze - TM81
  (108, 10800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 41),
  -- Lickitung - Brutal Swing - TM97
  (108, 10800, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 42),
  -- Lickitung - Stomping Tantrum - TM98
  (108, 10800, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 43),
  -- Lickitung - Swords Dance - TR00
  (108, 10800, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 44),
  -- Lickitung - Body Slam - TR01
  (108, 10800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 45),
  -- Lickitung - Flamethrower - TR02
  (108, 10800, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 46),
  -- Lickitung - Hydro Pump - TR03
  (108, 10800, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 47),
  -- Lickitung - Surf - TR04
  (108, 10800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 48),
  -- Lickitung - Ice Beam - TR05
  (108, 10800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 49),
  -- Lickitung - Blizzard - TR06
  (108, 10800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 50),
  -- Lickitung - Thunderbolt - TR08
  (108, 10800, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 51),
  -- Lickitung - Thunder - TR09
  (108, 10800, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 52),
  -- Lickitung - Earthquake - TR10
  (108, 10800, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 53),
  -- Lickitung - Fire Blast - TR15
  (108, 10800, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 54),
  -- Lickitung - Amnesia - TR17
  (108, 10800, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 55),
  -- Lickitung - Substitute - TR20
  (108, 10800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Lickitung - Endure - TR26
  (108, 10800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 57),
  -- Lickitung - Sleep Talk - TR27
  (108, 10800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 58),
  -- Lickitung - Iron Tail - TR31
  (108, 10800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 59),
  -- Lickitung - Shadow Ball - TR33
  (108, 10800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 60),
  -- Lickitung - Muddy Water - TR45
  (108, 10800, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 61),
  -- Lickitung - Zen Headbutt - TR69
  (108, 10800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 62),
  -- Lickitung - Power Whip - TR72
  (108, 10800, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 63),
  -- Lickitung - Work Up - TR85
  (108, 10800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 64),
  -- Lickitung - Body Press - TR99
  (108, 10800, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 65),
  -- Lickitung - Thrash - Egg
  (108, 10800, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Lickitung - Curse - Egg
  (108, 10800, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Lickitung - Hammer Arm - Egg
  (108, 10800, 359, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Lickitung - Belch - Egg
  (108, 10800, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Koffing - Tackle - Level 1
  (109, 10900, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Koffing - Poison Gas - Level 1
  (109, 10900, 139, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Koffing - Smog - Level 4
  (109, 10900, 123, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Koffing - Smokescreen - Level 8
  (109, 10900, 108, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Koffing - Clear Smog - Level 12
  (109, 10900, 499, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Koffing - Assurance - Level 16
  (109, 10900, 372, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Koffing - Sludge - Level 20
  (109, 10900, 124, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Koffing - Haze - Level 24
  (109, 10900, 114, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Koffing - Self-Destruct - Level 28
  (109, 10900, 120, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Koffing - Sludge Bomb - Level 32
  (109, 10900, 188, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Koffing - Toxic - Level 36
  (109, 10900, 92, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Koffing - Belch - Level 40
  (109, 10900, 562, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Koffing - Explosion - Level 44
  (109, 10900, 153, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Koffing - Memento - Level 48
  (109, 10900, 262, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Koffing - Destiny Bond - Level 52
  (109, 10900, 194, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Koffing - Screech - TM16
  (109, 10900, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 16),
  -- Koffing - Self-Destruct - TM20
  (109, 10900, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 17),
  -- Koffing - Rest - TM21
  (109, 10900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Koffing - Thief - TM23
  (109, 10900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 19),
  -- Koffing - Snore - TM24
  (109, 10900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Koffing - Protect - TM25
  (109, 10900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Koffing - Attract - TM31
  (109, 10900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Koffing - Rain Dance - TM33
  (109, 10900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Koffing - Sunny Day - TM34
  (109, 10900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Koffing - Will-O-Wisp - TM38
  (109, 10900, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 25),
  -- Koffing - Facade - TM39
  (109, 10900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Koffing - Payback - TM57
  (109, 10900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 27),
  -- Koffing - Assurance - TM58
  (109, 10900, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 28),
  -- Koffing - Venoshock - TM74
  (109, 10900, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 29),
  -- Koffing - Round - TM76
  (109, 10900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 30),
  -- Koffing - Flamethrower - TR02
  (109, 10900, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 31),
  -- Koffing - Thunderbolt - TR08
  (109, 10900, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 32),
  -- Koffing - Thunder - TR09
  (109, 10900, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 33),
  -- Koffing - Fire Blast - TR15
  (109, 10900, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 34),
  -- Koffing - Substitute - TR20
  (109, 10900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Koffing - Sludge Bomb - TR22
  (109, 10900, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 36),
  -- Koffing - Endure - TR26
  (109, 10900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Koffing - Sleep Talk - TR27
  (109, 10900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Koffing - Shadow Ball - TR33
  (109, 10900, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 39),
  -- Koffing - Uproar - TR35
  (109, 10900, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 40),
  -- Koffing - Taunt - TR37
  (109, 10900, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 41),
  -- Koffing - Gyro Ball - TR52
  (109, 10900, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 42),
  -- Koffing - Toxic Spikes - TR54
  (109, 10900, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 43),
  -- Koffing - Dark Pulse - TR58
  (109, 10900, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 44),
  -- Koffing - Sludge Wave - TR78
  (109, 10900, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 45),
  -- Koffing - Venom Drench - TR91
  (109, 10900, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 46),
  -- Koffing - Psybeam - Egg
  (109, 10900, 60, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Koffing - Curse - Egg
  (109, 10900, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Koffing - Spite - Egg
  (109, 10900, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Koffing - Pain Split - Egg
  (109, 10900, 220, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Koffing - Stockpile - Egg
  (109, 10900, 254, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Koffing - Spit Up - Egg
  (109, 10900, 255, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Koffing - Swallow - Egg
  (109, 10900, 256, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Koffing - Grudge - Egg
  (109, 10900, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Weezing - Tackle - Level 1
  (110, 11000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weezing - Smokescreen - Level 1
  (110, 11000, 108, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weezing - Smog - Level 1
  (110, 11000, 123, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weezing - Poison Gas - Level 1
  (110, 11000, 139, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Weezing - Heat Wave - Level 1
  (110, 11000, 257, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Weezing - Double Hit - Level 1
  (110, 11000, 458, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Weezing - Clear Smog - Level 12
  (110, 11000, 499, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Weezing - Assurance - Level 16
  (110, 11000, 372, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Weezing - Sludge - Level 20
  (110, 11000, 124, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Weezing - Haze - Level 24
  (110, 11000, 114, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Weezing - Self-Destruct - Level 28
  (110, 11000, 120, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Weezing - Sludge Bomb - Level 32
  (110, 11000, 188, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Weezing - Toxic - Level 38
  (110, 11000, 92, 18, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Weezing - Belch - Level 44
  (110, 11000, 562, 18, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Weezing - Explosion - Level 50
  (110, 11000, 153, 18, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Weezing - Memento - Level 56
  (110, 11000, 262, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Weezing - Destiny Bond - Level 62
  (110, 11000, 194, 18, NULL, 1, 62, NULL, NULL, NULL, 17),
  -- Weezing - Double Hit - Evolution
  (110, 11000, 458, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Weezing - Hyper Beam - TM08
  (110, 11000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Weezing - Giga Impact - TM09
  (110, 11000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Weezing - Screech - TM16
  (110, 11000, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 21),
  -- Weezing - Self-Destruct - TM20
  (110, 11000, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 22),
  -- Weezing - Rest - TM21
  (110, 11000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Weezing - Thief - TM23
  (110, 11000, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Weezing - Snore - TM24
  (110, 11000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Weezing - Protect - TM25
  (110, 11000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Weezing - Attract - TM31
  (110, 11000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Weezing - Rain Dance - TM33
  (110, 11000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Weezing - Sunny Day - TM34
  (110, 11000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Weezing - Will-O-Wisp - TM38
  (110, 11000, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 30),
  -- Weezing - Facade - TM39
  (110, 11000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Weezing - Payback - TM57
  (110, 11000, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 32),
  -- Weezing - Assurance - TM58
  (110, 11000, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 33),
  -- Weezing - Venoshock - TM74
  (110, 11000, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 34),
  -- Weezing - Round - TM76
  (110, 11000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Weezing - Flamethrower - TR02
  (110, 11000, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 36),
  -- Weezing - Thunderbolt - TR08
  (110, 11000, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 37),
  -- Weezing - Thunder - TR09
  (110, 11000, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 38),
  -- Weezing - Fire Blast - TR15
  (110, 11000, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 39),
  -- Weezing - Substitute - TR20
  (110, 11000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Weezing - Sludge Bomb - TR22
  (110, 11000, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 41),
  -- Weezing - Endure - TR26
  (110, 11000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Weezing - Sleep Talk - TR27
  (110, 11000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Weezing - Shadow Ball - TR33
  (110, 11000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 44),
  -- Weezing - Uproar - TR35
  (110, 11000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 45),
  -- Weezing - Heat Wave - TR36
  (110, 11000, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 46),
  -- Weezing - Taunt - TR37
  (110, 11000, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Weezing - Gyro Ball - TR52
  (110, 11000, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 48),
  -- Weezing - Toxic Spikes - TR54
  (110, 11000, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 49),
  -- Weezing - Dark Pulse - TR58
  (110, 11000, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 50),
  -- Weezing - Sludge Wave - TR78
  (110, 11000, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 51),
  -- Weezing - Venom Drench - TR91
  (110, 11000, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 52),
  -- Rhyhorn - Tackle - Level 1
  (111, 11100, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhyhorn - Tail Whip - Level 1
  (111, 11100, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhyhorn - Smack Down - Level 5
  (111, 11100, 479, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rhyhorn - Bulldoze - Level 10
  (111, 11100, 523, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rhyhorn - Horn Attack - Level 15
  (111, 11100, 30, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rhyhorn - Scary Face - Level 20
  (111, 11100, 184, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rhyhorn - Stomp - Level 25
  (111, 11100, 23, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Rhyhorn - Rock Blast - Level 30
  (111, 11100, 350, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Rhyhorn - Drill Run - Level 35
  (111, 11100, 529, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Rhyhorn - Take Down - Level 40
  (111, 11100, 36, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Rhyhorn - Earthquake - Level 45
  (111, 11100, 89, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Rhyhorn - Stone Edge - Level 50
  (111, 11100, 444, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rhyhorn - Megahorn - Level 55
  (111, 11100, 224, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Rhyhorn - Horn Drill - Level 60
  (111, 11100, 32, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Rhyhorn - Dig - TM15
  (111, 11100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 15),
  -- Rhyhorn - Rest - TM21
  (111, 11100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Rhyhorn - Rock Slide - TM22
  (111, 11100, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 17),
  -- Rhyhorn - Thief - TM23
  (111, 11100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Rhyhorn - Snore - TM24
  (111, 11100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Rhyhorn - Protect - TM25
  (111, 11100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Rhyhorn - Scary Face - TM26
  (111, 11100, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 21),
  -- Rhyhorn - Icy Wind - TM27
  (111, 11100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 22),
  -- Rhyhorn - Attract - TM31
  (111, 11100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Rhyhorn - Sandstorm - TM32
  (111, 11100, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 24),
  -- Rhyhorn - Rain Dance - TM33
  (111, 11100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Rhyhorn - Sunny Day - TM34
  (111, 11100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Rhyhorn - Facade - TM39
  (111, 11100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Rhyhorn - Rock Tomb - TM48
  (111, 11100, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 28),
  -- Rhyhorn - Mud Shot - TM53
  (111, 11100, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 29),
  -- Rhyhorn - Rock Blast - TM54
  (111, 11100, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 30),
  -- Rhyhorn - Payback - TM57
  (111, 11100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Rhyhorn - Thunder Fang - TM66
  (111, 11100, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 32),
  -- Rhyhorn - Ice Fang - TM67
  (111, 11100, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 33),
  -- Rhyhorn - Fire Fang - TM68
  (111, 11100, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 34),
  -- Rhyhorn - Round - TM76
  (111, 11100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Rhyhorn - Bulldoze - TM81
  (111, 11100, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 36),
  -- Rhyhorn - Smart Strike - TM96
  (111, 11100, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 37),
  -- Rhyhorn - Stomping Tantrum - TM98
  (111, 11100, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 38),
  -- Rhyhorn - Swords Dance - TR00
  (111, 11100, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 39),
  -- Rhyhorn - Body Slam - TR01
  (111, 11100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 40),
  -- Rhyhorn - Flamethrower - TR02
  (111, 11100, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 41),
  -- Rhyhorn - Ice Beam - TR05
  (111, 11100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 42),
  -- Rhyhorn - Blizzard - TR06
  (111, 11100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 43),
  -- Rhyhorn - Thunderbolt - TR08
  (111, 11100, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 44),
  -- Rhyhorn - Thunder - TR09
  (111, 11100, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 45),
  -- Rhyhorn - Earthquake - TR10
  (111, 11100, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 46),
  -- Rhyhorn - Fire Blast - TR15
  (111, 11100, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 47),
  -- Rhyhorn - Substitute - TR20
  (111, 11100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Rhyhorn - Reversal - TR21
  (111, 11100, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 49),
  -- Rhyhorn - Endure - TR26
  (111, 11100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Rhyhorn - Sleep Talk - TR27
  (111, 11100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Rhyhorn - Megahorn - TR28
  (111, 11100, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 52),
  -- Rhyhorn - Iron Tail - TR31
  (111, 11100, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 53),
  -- Rhyhorn - Crunch - TR32
  (111, 11100, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 54),
  -- Rhyhorn - Uproar - TR35
  (111, 11100, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 55),
  -- Rhyhorn - Superpower - TR39
  (111, 11100, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 56),
  -- Rhyhorn - Poison Jab - TR57
  (111, 11100, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 57),
  -- Rhyhorn - Dragon Pulse - TR62
  (111, 11100, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 58),
  -- Rhyhorn - Earth Power - TR67
  (111, 11100, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 59),
  -- Rhyhorn - Stone Edge - TR75
  (111, 11100, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 60),
  -- Rhyhorn - Stealth Rock - TR76
  (111, 11100, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 61),
  -- Rhyhorn - Drill Run - TR87
  (111, 11100, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 62),
  -- Rhyhorn - High Horsepower - TR94
  (111, 11100, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 63),
  -- Rhyhorn - Counter - Egg
  (111, 11100, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Rhyhorn - Skull Bash - Egg
  (111, 11100, 130, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Rhyhorn - Curse - Egg
  (111, 11100, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Rhyhorn - Metal Burst - Egg
  (111, 11100, 368, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Rhyhorn - Rock Polish - Egg
  (111, 11100, 397, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Rhyhorn - Dragon Rush - Egg
  (111, 11100, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Rhyhorn - Guard Split - Egg
  (111, 11100, 470, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Rhydon - Tackle - Level 1
  (112, 11200, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhydon - Tail Whip - Level 1
  (112, 11200, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhydon - Hammer Arm - Level 1
  (112, 11200, 359, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rhydon - Smack Down - Level 1
  (112, 11200, 479, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rhydon - Bulldoze - Level 1
  (112, 11200, 523, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rhydon - Horn Attack - Level 15
  (112, 11200, 30, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Rhydon - Scary Face - Level 20
  (112, 11200, 184, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Rhydon - Stomp - Level 25
  (112, 11200, 23, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Rhydon - Rock Blast - Level 30
  (112, 11200, 350, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Rhydon - Drill Run - Level 35
  (112, 11200, 529, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Rhydon - Take Down - Level 40
  (112, 11200, 36, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Rhydon - Earthquake - Level 47
  (112, 11200, 89, 18, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Rhydon - Stone Edge - Level 54
  (112, 11200, 444, 18, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Rhydon - Megahorn - Level 61
  (112, 11200, 224, 18, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Rhydon - Horn Drill - Level 68
  (112, 11200, 32, 18, NULL, 1, 68, NULL, NULL, NULL, 15),
  -- Rhydon - Hammer Arm - Evolution
  (112, 11200, 359, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Rhydon - Mega Punch - TM00
  (112, 11200, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Rhydon - Mega Kick - TM01
  (112, 11200, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Rhydon - Pay Day - TM02
  (112, 11200, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 19),
  -- Rhydon - Fire Punch - TM03
  (112, 11200, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 20),
  -- Rhydon - Ice Punch - TM04
  (112, 11200, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 21),
  -- Rhydon - Thunder Punch - TM05
  (112, 11200, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 22),
  -- Rhydon - Hyper Beam - TM08
  (112, 11200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Rhydon - Giga Impact - TM09
  (112, 11200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Rhydon - Dig - TM15
  (112, 11200, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 25),
  -- Rhydon - Rest - TM21
  (112, 11200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Rhydon - Rock Slide - TM22
  (112, 11200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 27),
  -- Rhydon - Thief - TM23
  (112, 11200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 28),
  -- Rhydon - Snore - TM24
  (112, 11200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Rhydon - Protect - TM25
  (112, 11200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Rhydon - Scary Face - TM26
  (112, 11200, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Rhydon - Icy Wind - TM27
  (112, 11200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Rhydon - Attract - TM31
  (112, 11200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 33),
  -- Rhydon - Sandstorm - TM32
  (112, 11200, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Rhydon - Rain Dance - TM33
  (112, 11200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Rhydon - Sunny Day - TM34
  (112, 11200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Rhydon - Whirlpool - TM36
  (112, 11200, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 37),
  -- Rhydon - Facade - TM39
  (112, 11200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Rhydon - Helping Hand - TM41
  (112, 11200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 39),
  -- Rhydon - Brick Break - TM43
  (112, 11200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 40),
  -- Rhydon - Rock Tomb - TM48
  (112, 11200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 41),
  -- Rhydon - Mud Shot - TM53
  (112, 11200, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 42),
  -- Rhydon - Rock Blast - TM54
  (112, 11200, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 43),
  -- Rhydon - Payback - TM57
  (112, 11200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 44),
  -- Rhydon - Fling - TM59
  (112, 11200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 45),
  -- Rhydon - Avalanche - TM64
  (112, 11200, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 46),
  -- Rhydon - Shadow Claw - TM65
  (112, 11200, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 47),
  -- Rhydon - Thunder Fang - TM66
  (112, 11200, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 48),
  -- Rhydon - Ice Fang - TM67
  (112, 11200, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 49),
  -- Rhydon - Fire Fang - TM68
  (112, 11200, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 50),
  -- Rhydon - Round - TM76
  (112, 11200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 51),
  -- Rhydon - Bulldoze - TM81
  (112, 11200, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 52),
  -- Rhydon - Smart Strike - TM96
  (112, 11200, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 53),
  -- Rhydon - Brutal Swing - TM97
  (112, 11200, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 54),
  -- Rhydon - Stomping Tantrum - TM98
  (112, 11200, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 55),
  -- Rhydon - Breaking Swipe - TM99
  (112, 11200, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 56),
  -- Rhydon - Swords Dance - TR00
  (112, 11200, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 57),
  -- Rhydon - Body Slam - TR01
  (112, 11200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 58),
  -- Rhydon - Flamethrower - TR02
  (112, 11200, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 59),
  -- Rhydon - Hydro Pump - TR03
  (112, 11200, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 60),
  -- Rhydon - Surf - TR04
  (112, 11200, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 61),
  -- Rhydon - Ice Beam - TR05
  (112, 11200, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 62),
  -- Rhydon - Blizzard - TR06
  (112, 11200, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 63),
  -- Rhydon - Thunderbolt - TR08
  (112, 11200, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 64),
  -- Rhydon - Thunder - TR09
  (112, 11200, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 65),
  -- Rhydon - Earthquake - TR10
  (112, 11200, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 66),
  -- Rhydon - Fire Blast - TR15
  (112, 11200, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 67),
  -- Rhydon - Substitute - TR20
  (112, 11200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 68),
  -- Rhydon - Reversal - TR21
  (112, 11200, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 69),
  -- Rhydon - Outrage - TR24
  (112, 11200, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 70),
  -- Rhydon - Endure - TR26
  (112, 11200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 71),
  -- Rhydon - Sleep Talk - TR27
  (112, 11200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 72),
  -- Rhydon - Megahorn - TR28
  (112, 11200, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 73),
  -- Rhydon - Iron Tail - TR31
  (112, 11200, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 74),
  -- Rhydon - Crunch - TR32
  (112, 11200, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 75),
  -- Rhydon - Uproar - TR35
  (112, 11200, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 76),
  -- Rhydon - Superpower - TR39
  (112, 11200, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 77),
  -- Rhydon - Iron Defense - TR46
  (112, 11200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 78),
  -- Rhydon - Poison Jab - TR57
  (112, 11200, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 79),
  -- Rhydon - Dragon Pulse - TR62
  (112, 11200, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 80),
  -- Rhydon - Focus Blast - TR64
  (112, 11200, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 81),
  -- Rhydon - Earth Power - TR67
  (112, 11200, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 82),
  -- Rhydon - Stone Edge - TR75
  (112, 11200, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 83),
  -- Rhydon - Stealth Rock - TR76
  (112, 11200, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 84),
  -- Rhydon - Heavy Slam - TR79
  (112, 11200, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 85),
  -- Rhydon - Drill Run - TR87
  (112, 11200, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 86),
  -- Rhydon - Heat Crash - TR88
  (112, 11200, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 87),
  -- Rhydon - High Horsepower - TR94
  (112, 11200, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 88),
  -- Rhydon - Body Press - TR99
  (112, 11200, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 89),
  -- Chansey - Pound - Level 1
  (113, 11300, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chansey - Minimize - Level 1
  (113, 11300, 107, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chansey - Defense Curl - Level 1
  (113, 11300, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Chansey - Sweet Kiss - Level 1
  (113, 11300, 186, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Chansey - Charm - Level 1
  (113, 11300, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Chansey - Covet - Level 1
  (113, 11300, 343, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Chansey - Copycat - Level 1
  (113, 11300, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Chansey - Disarming Voice - Level 1
  (113, 11300, 574, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Chansey - Tail Whip - Level 4
  (113, 11300, 39, 18, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Chansey - Echoed Voice - Level 8
  (113, 11300, 497, 18, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Chansey - Life Dew - Level 12
  (113, 11300, 791, 18, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Chansey - Sing - Level 16
  (113, 11300, 47, 18, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Chansey - Fling - Level 20
  (113, 11300, 374, 18, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Chansey - Take Down - Level 24
  (113, 11300, 36, 18, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Chansey - Heal Pulse - Level 28
  (113, 11300, 505, 18, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Chansey - Helping Hand - Level 32
  (113, 11300, 270, 18, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Chansey - Light Screen - Level 36
  (113, 11300, 113, 18, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Chansey - Double-Edge - Level 40
  (113, 11300, 38, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Chansey - Soft-Boiled - Level 44
  (113, 11300, 135, 18, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Chansey - Last Resort - Level 48
  (113, 11300, 387, 18, NULL, 1, 48, NULL, NULL, NULL, 20),
  -- Chansey - Healing Wish - Level 52
  (113, 11300, 361, 18, NULL, 1, 52, NULL, NULL, NULL, 21),
  -- Chansey - Mega Punch - TM00
  (113, 11300, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 22),
  -- Chansey - Mega Kick - TM01
  (113, 11300, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 23),
  -- Chansey - Fire Punch - TM03
  (113, 11300, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 24),
  -- Chansey - Ice Punch - TM04
  (113, 11300, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 25),
  -- Chansey - Thunder Punch - TM05
  (113, 11300, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 26),
  -- Chansey - Hyper Beam - TM08
  (113, 11300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 27),
  -- Chansey - Giga Impact - TM09
  (113, 11300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 28),
  -- Chansey - Solar Beam - TM11
  (113, 11300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 29),
  -- Chansey - Thunder Wave - TM14
  (113, 11300, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 30),
  -- Chansey - Light Screen - TM17
  (113, 11300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 31),
  -- Chansey - Safeguard - TM19
  (113, 11300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 32),
  -- Chansey - Rest - TM21
  (113, 11300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 33),
  -- Chansey - Rock Slide - TM22
  (113, 11300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 34),
  -- Chansey - Snore - TM24
  (113, 11300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 35),
  -- Chansey - Protect - TM25
  (113, 11300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 36),
  -- Chansey - Icy Wind - TM27
  (113, 11300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 37),
  -- Chansey - Charm - TM29
  (113, 11300, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 38),
  -- Chansey - Attract - TM31
  (113, 11300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 39),
  -- Chansey - Sandstorm - TM32
  (113, 11300, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 40),
  -- Chansey - Rain Dance - TM33
  (113, 11300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 41),
  -- Chansey - Sunny Day - TM34
  (113, 11300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 42),
  -- Chansey - Hail - TM35
  (113, 11300, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 43),
  -- Chansey - Facade - TM39
  (113, 11300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 44),
  -- Chansey - Helping Hand - TM41
  (113, 11300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 45),
  -- Chansey - Brick Break - TM43
  (113, 11300, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 46),
  -- Chansey - Rock Tomb - TM48
  (113, 11300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 47),
  -- Chansey - Fling - TM59
  (113, 11300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 48),
  -- Chansey - Drain Punch - TM63
  (113, 11300, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 49),
  -- Chansey - Round - TM76
  (113, 11300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 50),
  -- Chansey - Retaliate - TM79
  (113, 11300, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 51),
  -- Chansey - Bulldoze - TM81
  (113, 11300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 52),
  -- Chansey - Stomping Tantrum - TM98
  (113, 11300, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 53),
  -- Chansey - Body Slam - TR01
  (113, 11300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 54),
  -- Chansey - Flamethrower - TR02
  (113, 11300, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 55),
  -- Chansey - Ice Beam - TR05
  (113, 11300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 56),
  -- Chansey - Blizzard - TR06
  (113, 11300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 57),
  -- Chansey - Thunderbolt - TR08
  (113, 11300, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 58),
  -- Chansey - Thunder - TR09
  (113, 11300, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 59),
  -- Chansey - Earthquake - TR10
  (113, 11300, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 60),
  -- Chansey - Psychic - TR11
  (113, 11300, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 61),
  -- Chansey - Metronome - TR14
  (113, 11300, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 62),
  -- Chansey - Fire Blast - TR15
  (113, 11300, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 63),
  -- Chansey - Tri Attack - TR19
  (113, 11300, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 64),
  -- Chansey - Substitute - TR20
  (113, 11300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 65),
  -- Chansey - Endure - TR26
  (113, 11300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 66),
  -- Chansey - Sleep Talk - TR27
  (113, 11300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 67),
  -- Chansey - Iron Tail - TR31
  (113, 11300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 68),
  -- Chansey - Shadow Ball - TR33
  (113, 11300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 69),
  -- Chansey - Uproar - TR35
  (113, 11300, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 70),
  -- Chansey - Skill Swap - TR40
  (113, 11300, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 71),
  -- Chansey - Hyper Voice - TR42
  (113, 11300, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 72),
  -- Chansey - Calm Mind - TR49
  (113, 11300, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 73),
  -- Chansey - Zen Headbutt - TR69
  (113, 11300, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 74),
  -- Chansey - Stealth Rock - TR76
  (113, 11300, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 75),
  -- Chansey - Grass Knot - TR77
  (113, 11300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 76),
  -- Chansey - Stored Power - TR82
  (113, 11300, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 77),
  -- Chansey - Ally Switch - TR83
  (113, 11300, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 78),
  -- Chansey - Work Up - TR85
  (113, 11300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 79),
  -- Chansey - Wild Charge - TR86
  (113, 11300, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 80),
  -- Chansey - Dazzling Gleam - TR92
  (113, 11300, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 81),
  -- Chansey - Seismic Toss - Egg
  (113, 11300, 69, 18, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Chansey - Present - Egg
  (113, 11300, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Chansey - Aromatherapy - Egg
  (113, 11300, 312, 18, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Chansey - Gravity - Egg
  (113, 11300, 356, 18, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Tangela - Bind - Level 1
  (114, 11400, 20, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tangela - Absorb - Level 1
  (114, 11400, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tangela - Stun Spore - Level 4
  (114, 11400, 78, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Tangela - Growth - Level 8
  (114, 11400, 74, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Tangela - Mega Drain - Level 12
  (114, 11400, 72, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Tangela - Vine Whip - Level 16
  (114, 11400, 22, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Tangela - Poison Powder - Level 20
  (114, 11400, 77, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Tangela - Ancient Power - Level 24
  (114, 11400, 246, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Tangela - Knock Off - Level 28
  (114, 11400, 282, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Tangela - Giga Drain - Level 32
  (114, 11400, 202, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Tangela - Sleep Powder - Level 36
  (114, 11400, 79, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Tangela - Slam - Level 40
  (114, 11400, 21, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Tangela - Tickle - Level 44
  (114, 11400, 321, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Tangela - Power Whip - Level 48
  (114, 11400, 438, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Tangela - Ingrain - Level 52
  (114, 11400, 275, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Tangela - Grassy Terrain - Level 56
  (114, 11400, 580, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Tangela - Hyper Beam - TM08
  (114, 11400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Tangela - Giga Impact - TM09
  (114, 11400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Tangela - Solar Beam - TM11
  (114, 11400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 19),
  -- Tangela - Reflect - TM18
  (114, 11400, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Tangela - Rest - TM21
  (114, 11400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Tangela - Thief - TM23
  (114, 11400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 22),
  -- Tangela - Snore - TM24
  (114, 11400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Tangela - Protect - TM25
  (114, 11400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Tangela - Giga Drain - TM28
  (114, 11400, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 25),
  -- Tangela - Attract - TM31
  (114, 11400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Tangela - Sunny Day - TM34
  (114, 11400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Tangela - Facade - TM39
  (114, 11400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Tangela - Bullet Seed - TM50
  (114, 11400, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 29),
  -- Tangela - Power Swap - TM60
  (114, 11400, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 30),
  -- Tangela - Round - TM76
  (114, 11400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Tangela - Grassy Terrain - TM88
  (114, 11400, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 32),
  -- Tangela - Swords Dance - TR00
  (114, 11400, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 33),
  -- Tangela - Body Slam - TR01
  (114, 11400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 34),
  -- Tangela - Amnesia - TR17
  (114, 11400, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 35),
  -- Tangela - Substitute - TR20
  (114, 11400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Tangela - Sludge Bomb - TR22
  (114, 11400, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 37),
  -- Tangela - Endure - TR26
  (114, 11400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Tangela - Sleep Talk - TR27
  (114, 11400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Tangela - Seed Bomb - TR59
  (114, 11400, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 40),
  -- Tangela - Energy Ball - TR65
  (114, 11400, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 41),
  -- Tangela - Leaf Storm - TR71
  (114, 11400, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 42),
  -- Tangela - Power Whip - TR72
  (114, 11400, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 43),
  -- Tangela - Grass Knot - TR77
  (114, 11400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 44),
  -- Tangela - Leech Seed - Egg
  (114, 11400, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Tangela - Confusion - Egg
  (114, 11400, 93, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Tangela - Flail - Egg
  (114, 11400, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Tangela - Nature Power - Egg
  (114, 11400, 267, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Tangela - Endeavor - Egg
  (114, 11400, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Tangela - Rage Powder - Egg
  (114, 11400, 476, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Kangaskhan - Pound - Level 1
  (115, 11500, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kangaskhan - Tail Whip - Level 1
  (115, 11500, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kangaskhan - Growl - Level 4
  (115, 11500, 45, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Kangaskhan - Fake Out - Level 8
  (115, 11500, 252, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Kangaskhan - Bite - Level 12
  (115, 11500, 44, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Kangaskhan - Stomp - Level 16
  (115, 11500, 23, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Kangaskhan - Focus Energy - Level 20
  (115, 11500, 116, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Kangaskhan - Headbutt - Level 24
  (115, 11500, 29, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Kangaskhan - Sucker Punch - Level 28
  (115, 11500, 389, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Kangaskhan - Double Hit - Level 32
  (115, 11500, 458, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Kangaskhan - Crunch - Level 36
  (115, 11500, 242, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Kangaskhan - Endure - Level 40
  (115, 11500, 203, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Kangaskhan - Reversal - Level 44
  (115, 11500, 179, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Kangaskhan - Outrage - Level 48
  (115, 11500, 200, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Kangaskhan - Last Resort - Level 52
  (115, 11500, 387, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Kangaskhan - Mega Punch - TM00
  (115, 11500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Kangaskhan - Mega Kick - TM01
  (115, 11500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Kangaskhan - Fire Punch - TM03
  (115, 11500, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 18),
  -- Kangaskhan - Ice Punch - TM04
  (115, 11500, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Kangaskhan - Thunder Punch - TM05
  (115, 11500, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Kangaskhan - Hyper Beam - TM08
  (115, 11500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Kangaskhan - Giga Impact - TM09
  (115, 11500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Kangaskhan - Solar Beam - TM11
  (115, 11500, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 23),
  -- Kangaskhan - Dig - TM15
  (115, 11500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 24),
  -- Kangaskhan - Safeguard - TM19
  (115, 11500, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 25),
  -- Kangaskhan - Rest - TM21
  (115, 11500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Kangaskhan - Rock Slide - TM22
  (115, 11500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 27),
  -- Kangaskhan - Thief - TM23
  (115, 11500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 28),
  -- Kangaskhan - Snore - TM24
  (115, 11500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Kangaskhan - Protect - TM25
  (115, 11500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Kangaskhan - Icy Wind - TM27
  (115, 11500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 31),
  -- Kangaskhan - Attract - TM31
  (115, 11500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Kangaskhan - Sandstorm - TM32
  (115, 11500, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 33),
  -- Kangaskhan - Rain Dance - TM33
  (115, 11500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 34),
  -- Kangaskhan - Sunny Day - TM34
  (115, 11500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Kangaskhan - Hail - TM35
  (115, 11500, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 36),
  -- Kangaskhan - Whirlpool - TM36
  (115, 11500, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 37),
  -- Kangaskhan - Beat Up - TM37
  (115, 11500, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 38),
  -- Kangaskhan - Facade - TM39
  (115, 11500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 39),
  -- Kangaskhan - Helping Hand - TM41
  (115, 11500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 40),
  -- Kangaskhan - Brick Break - TM43
  (115, 11500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 41),
  -- Kangaskhan - Rock Tomb - TM48
  (115, 11500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 42),
  -- Kangaskhan - Assurance - TM58
  (115, 11500, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 43),
  -- Kangaskhan - Fling - TM59
  (115, 11500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 44),
  -- Kangaskhan - Drain Punch - TM63
  (115, 11500, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 45),
  -- Kangaskhan - Avalanche - TM64
  (115, 11500, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 46),
  -- Kangaskhan - Shadow Claw - TM65
  (115, 11500, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 47),
  -- Kangaskhan - Round - TM76
  (115, 11500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 48),
  -- Kangaskhan - Retaliate - TM79
  (115, 11500, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 49),
  -- Kangaskhan - Bulldoze - TM81
  (115, 11500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 50),
  -- Kangaskhan - Body Slam - TR01
  (115, 11500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 51),
  -- Kangaskhan - Flamethrower - TR02
  (115, 11500, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 52),
  -- Kangaskhan - Hydro Pump - TR03
  (115, 11500, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 53),
  -- Kangaskhan - Surf - TR04
  (115, 11500, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 54),
  -- Kangaskhan - Ice Beam - TR05
  (115, 11500, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 55),
  -- Kangaskhan - Blizzard - TR06
  (115, 11500, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 56),
  -- Kangaskhan - Low Kick - TR07
  (115, 11500, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 57),
  -- Kangaskhan - Thunderbolt - TR08
  (115, 11500, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 58),
  -- Kangaskhan - Thunder - TR09
  (115, 11500, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 59),
  -- Kangaskhan - Earthquake - TR10
  (115, 11500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 60),
  -- Kangaskhan - Focus Energy - TR13
  (115, 11500, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 61),
  -- Kangaskhan - Fire Blast - TR15
  (115, 11500, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 62),
  -- Kangaskhan - Substitute - TR20
  (115, 11500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 63),
  -- Kangaskhan - Reversal - TR21
  (115, 11500, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 64),
  -- Kangaskhan - Outrage - TR24
  (115, 11500, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 65),
  -- Kangaskhan - Endure - TR26
  (115, 11500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 66),
  -- Kangaskhan - Sleep Talk - TR27
  (115, 11500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 67),
  -- Kangaskhan - Iron Tail - TR31
  (115, 11500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 68),
  -- Kangaskhan - Crunch - TR32
  (115, 11500, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 69),
  -- Kangaskhan - Shadow Ball - TR33
  (115, 11500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 70),
  -- Kangaskhan - Uproar - TR35
  (115, 11500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 71),
  -- Kangaskhan - Focus Blast - TR64
  (115, 11500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 72),
  -- Kangaskhan - Work Up - TR85
  (115, 11500, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 73),
  -- Kangaskhan - Double-Edge - Egg
  (115, 11500, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Kangaskhan - Disable - Egg
  (115, 11500, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Kangaskhan - Counter - Egg
  (115, 11500, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Kangaskhan - Endeavor - Egg
  (115, 11500, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Kangaskhan - Hammer Arm - Egg
  (115, 11500, 359, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Kangaskhan - Circle Throw - Egg
  (115, 11500, 509, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Horsea - Leer - Level 1
  (116, 11600, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Horsea - Water Gun - Level 1
  (116, 11600, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Horsea - Smokescreen - Level 5
  (116, 11600, 108, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Horsea - Twister - Level 10
  (116, 11600, 239, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Horsea - Focus Energy - Level 15
  (116, 11600, 116, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Horsea - Dragon Breath - Level 20
  (116, 11600, 225, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Horsea - Bubble Beam - Level 25
  (116, 11600, 61, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Horsea - Agility - Level 30
  (116, 11600, 97, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Horsea - Laser Focus - Level 35
  (116, 11600, 673, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Horsea - Dragon Pulse - Level 40
  (116, 11600, 406, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Horsea - Hydro Pump - Level 45
  (116, 11600, 56, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Horsea - Dragon Dance - Level 50
  (116, 11600, 349, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Horsea - Rain Dance - Level 55
  (116, 11600, 240, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Horsea - Rest - TM21
  (116, 11600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 14),
  -- Horsea - Snore - TM24
  (116, 11600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 15),
  -- Horsea - Protect - TM25
  (116, 11600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 16),
  -- Horsea - Icy Wind - TM27
  (116, 11600, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 17),
  -- Horsea - Attract - TM31
  (116, 11600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 18),
  -- Horsea - Rain Dance - TM33
  (116, 11600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 19),
  -- Horsea - Hail - TM35
  (116, 11600, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 20),
  -- Horsea - Whirlpool - TM36
  (116, 11600, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 21),
  -- Horsea - Facade - TM39
  (116, 11600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Horsea - Swift - TM40
  (116, 11600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 23),
  -- Horsea - Dive - TM45
  (116, 11600, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 24),
  -- Horsea - Bounce - TM52
  (116, 11600, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 25),
  -- Horsea - Brine - TM55
  (116, 11600, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 26),
  -- Horsea - Round - TM76
  (116, 11600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Horsea - Hydro Pump - TR03
  (116, 11600, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 28),
  -- Horsea - Surf - TR04
  (116, 11600, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 29),
  -- Horsea - Ice Beam - TR05
  (116, 11600, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 30),
  -- Horsea - Blizzard - TR06
  (116, 11600, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 31),
  -- Horsea - Agility - TR12
  (116, 11600, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 32),
  -- Horsea - Focus Energy - TR13
  (116, 11600, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 33),
  -- Horsea - Waterfall - TR16
  (116, 11600, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 34),
  -- Horsea - Substitute - TR20
  (116, 11600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Horsea - Outrage - TR24
  (116, 11600, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 36),
  -- Horsea - Endure - TR26
  (116, 11600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Horsea - Sleep Talk - TR27
  (116, 11600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Horsea - Muddy Water - TR45
  (116, 11600, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 39),
  -- Horsea - Dragon Dance - TR51
  (116, 11600, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 40),
  -- Horsea - Dragon Pulse - TR62
  (116, 11600, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 41),
  -- Horsea - Flash Cannon - TR70
  (116, 11600, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 42),
  -- Horsea - Scald - TR84
  (116, 11600, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 43),
  -- Horsea - Liquidation - TR98
  (116, 11600, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 44),
  -- Horsea - Disable - Egg
  (116, 11600, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Horsea - Aurora Beam - Egg
  (116, 11600, 62, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Horsea - Splash - Egg
  (116, 11600, 150, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Horsea - Flail - Egg
  (116, 11600, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Horsea - Octazooka - Egg
  (116, 11600, 190, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Horsea - Water Pulse - Egg
  (116, 11600, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Horsea - Clear Smog - Egg
  (116, 11600, 499, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Seadra - Leer - Level 1
  (117, 11700, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seadra - Water Gun - Level 1
  (117, 11700, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seadra - Smokescreen - Level 1
  (117, 11700, 108, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Seadra - Twister - Level 1
  (117, 11700, 239, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Seadra - Focus Energy - Level 15
  (117, 11700, 116, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Seadra - Dragon Breath - Level 20
  (117, 11700, 225, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Seadra - Bubble Beam - Level 25
  (117, 11700, 61, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Seadra - Agility - Level 30
  (117, 11700, 97, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Seadra - Laser Focus - Level 37
  (117, 11700, 673, 18, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Seadra - Dragon Pulse - Level 44
  (117, 11700, 406, 18, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Seadra - Hydro Pump - Level 51
  (117, 11700, 56, 18, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Seadra - Dragon Dance - Level 58
  (117, 11700, 349, 18, NULL, 1, 58, NULL, NULL, NULL, 12),
  -- Seadra - Rain Dance - Level 65
  (117, 11700, 240, 18, NULL, 1, 65, NULL, NULL, NULL, 13),
  -- Seadra - Hyper Beam - TM08
  (117, 11700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 14),
  -- Seadra - Giga Impact - TM09
  (117, 11700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 15),
  -- Seadra - Rest - TM21
  (117, 11700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Seadra - Snore - TM24
  (117, 11700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Seadra - Protect - TM25
  (117, 11700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Seadra - Icy Wind - TM27
  (117, 11700, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 19),
  -- Seadra - Attract - TM31
  (117, 11700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Seadra - Rain Dance - TM33
  (117, 11700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Seadra - Hail - TM35
  (117, 11700, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 22),
  -- Seadra - Whirlpool - TM36
  (117, 11700, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 23),
  -- Seadra - Facade - TM39
  (117, 11700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Seadra - Swift - TM40
  (117, 11700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 25),
  -- Seadra - Dive - TM45
  (117, 11700, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 26),
  -- Seadra - Bounce - TM52
  (117, 11700, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 27),
  -- Seadra - Brine - TM55
  (117, 11700, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 28),
  -- Seadra - Round - TM76
  (117, 11700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Seadra - Hydro Pump - TR03
  (117, 11700, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 30),
  -- Seadra - Surf - TR04
  (117, 11700, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 31),
  -- Seadra - Ice Beam - TR05
  (117, 11700, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 32),
  -- Seadra - Blizzard - TR06
  (117, 11700, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 33),
  -- Seadra - Agility - TR12
  (117, 11700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 34),
  -- Seadra - Focus Energy - TR13
  (117, 11700, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 35),
  -- Seadra - Waterfall - TR16
  (117, 11700, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 36),
  -- Seadra - Substitute - TR20
  (117, 11700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Seadra - Outrage - TR24
  (117, 11700, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 38),
  -- Seadra - Endure - TR26
  (117, 11700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Seadra - Sleep Talk - TR27
  (117, 11700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Seadra - Muddy Water - TR45
  (117, 11700, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 41),
  -- Seadra - Dragon Dance - TR51
  (117, 11700, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 42),
  -- Seadra - Dragon Pulse - TR62
  (117, 11700, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 43),
  -- Seadra - Flash Cannon - TR70
  (117, 11700, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 44),
  -- Seadra - Scald - TR84
  (117, 11700, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 45),
  -- Seadra - Liquidation - TR98
  (117, 11700, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 46),
  -- Goldeen - Tail Whip - Level 1
  (118, 11800, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Goldeen - Peck - Level 1
  (118, 11800, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Goldeen - Supersonic - Level 5
  (118, 11800, 48, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Goldeen - Water Pulse - Level 10
  (118, 11800, 352, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Goldeen - Horn Attack - Level 15
  (118, 11800, 30, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Goldeen - Agility - Level 20
  (118, 11800, 97, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Goldeen - Aqua Ring - Level 25
  (118, 11800, 392, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Goldeen - Flail - Level 30
  (118, 11800, 175, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Goldeen - Waterfall - Level 35
  (118, 11800, 127, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Goldeen - Soak - Level 40
  (118, 11800, 487, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Goldeen - Megahorn - Level 45
  (118, 11800, 224, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Goldeen - Horn Drill - Level 50
  (118, 11800, 32, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Goldeen - Rest - TM21
  (118, 11800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 13),
  -- Goldeen - Snore - TM24
  (118, 11800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 14),
  -- Goldeen - Protect - TM25
  (118, 11800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 15),
  -- Goldeen - Icy Wind - TM27
  (118, 11800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 16),
  -- Goldeen - Attract - TM31
  (118, 11800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 17),
  -- Goldeen - Rain Dance - TM33
  (118, 11800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 18),
  -- Goldeen - Hail - TM35
  (118, 11800, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 19),
  -- Goldeen - Whirlpool - TM36
  (118, 11800, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 20),
  -- Goldeen - Facade - TM39
  (118, 11800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 21),
  -- Goldeen - Swift - TM40
  (118, 11800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 22),
  -- Goldeen - Dive - TM45
  (118, 11800, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 23),
  -- Goldeen - Bounce - TM52
  (118, 11800, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 24),
  -- Goldeen - Mud Shot - TM53
  (118, 11800, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 25),
  -- Goldeen - Round - TM76
  (118, 11800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 26),
  -- Goldeen - Smart Strike - TM96
  (118, 11800, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 27),
  -- Goldeen - Swords Dance - TR00
  (118, 11800, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 28),
  -- Goldeen - Body Slam - TR01
  (118, 11800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 29),
  -- Goldeen - Hydro Pump - TR03
  (118, 11800, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 30),
  -- Goldeen - Surf - TR04
  (118, 11800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 31),
  -- Goldeen - Ice Beam - TR05
  (118, 11800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 32),
  -- Goldeen - Blizzard - TR06
  (118, 11800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 33),
  -- Goldeen - Agility - TR12
  (118, 11800, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 34),
  -- Goldeen - Waterfall - TR16
  (118, 11800, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 35),
  -- Goldeen - Substitute - TR20
  (118, 11800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Goldeen - Endure - TR26
  (118, 11800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Goldeen - Sleep Talk - TR27
  (118, 11800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Goldeen - Megahorn - TR28
  (118, 11800, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 39),
  -- Goldeen - Muddy Water - TR45
  (118, 11800, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 40),
  -- Goldeen - Poison Jab - TR57
  (118, 11800, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 41),
  -- Goldeen - Scald - TR84
  (118, 11800, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 42),
  -- Goldeen - Drill Run - TR87
  (118, 11800, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 43),
  -- Goldeen - Throat Chop - TR95
  (118, 11800, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 44),
  -- Goldeen - Psybeam - Egg
  (118, 11800, 60, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Goldeen - Haze - Egg
  (118, 11800, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Goldeen - Mud-Slap - Egg
  (118, 11800, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Goldeen - Acupressure - Egg
  (118, 11800, 367, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Goldeen - Aqua Tail - Egg
  (118, 11800, 401, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Seaking - Tail Whip - Level 1
  (119, 11900, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seaking - Supersonic - Level 1
  (119, 11900, 48, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seaking - Peck - Level 1
  (119, 11900, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Seaking - Water Pulse - Level 1
  (119, 11900, 352, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Seaking - Horn Attack - Level 15
  (119, 11900, 30, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Seaking - Agility - Level 20
  (119, 11900, 97, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Seaking - Aqua Ring - Level 25
  (119, 11900, 392, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Seaking - Flail - Level 30
  (119, 11900, 175, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Seaking - Waterfall - Level 37
  (119, 11900, 127, 18, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Seaking - Soak - Level 44
  (119, 11900, 487, 18, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Seaking - Megahorn - Level 51
  (119, 11900, 224, 18, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Seaking - Horn Drill - Level 58
  (119, 11900, 32, 18, NULL, 1, 58, NULL, NULL, NULL, 12),
  -- Seaking - Hyper Beam - TM08
  (119, 11900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 13),
  -- Seaking - Giga Impact - TM09
  (119, 11900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 14),
  -- Seaking - Rest - TM21
  (119, 11900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Seaking - Snore - TM24
  (119, 11900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Seaking - Protect - TM25
  (119, 11900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Seaking - Icy Wind - TM27
  (119, 11900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 18),
  -- Seaking - Attract - TM31
  (119, 11900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Seaking - Rain Dance - TM33
  (119, 11900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 20),
  -- Seaking - Hail - TM35
  (119, 11900, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 21),
  -- Seaking - Whirlpool - TM36
  (119, 11900, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 22),
  -- Seaking - Facade - TM39
  (119, 11900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Seaking - Swift - TM40
  (119, 11900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 24),
  -- Seaking - Dive - TM45
  (119, 11900, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 25),
  -- Seaking - Bounce - TM52
  (119, 11900, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 26),
  -- Seaking - Mud Shot - TM53
  (119, 11900, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 27),
  -- Seaking - Round - TM76
  (119, 11900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Seaking - Smart Strike - TM96
  (119, 11900, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 29),
  -- Seaking - Swords Dance - TR00
  (119, 11900, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 30),
  -- Seaking - Body Slam - TR01
  (119, 11900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 31),
  -- Seaking - Hydro Pump - TR03
  (119, 11900, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 32),
  -- Seaking - Surf - TR04
  (119, 11900, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 33),
  -- Seaking - Ice Beam - TR05
  (119, 11900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 34),
  -- Seaking - Blizzard - TR06
  (119, 11900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 35),
  -- Seaking - Agility - TR12
  (119, 11900, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 36),
  -- Seaking - Waterfall - TR16
  (119, 11900, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 37),
  -- Seaking - Substitute - TR20
  (119, 11900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Seaking - Endure - TR26
  (119, 11900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Seaking - Sleep Talk - TR27
  (119, 11900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Seaking - Megahorn - TR28
  (119, 11900, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 41),
  -- Seaking - Muddy Water - TR45
  (119, 11900, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 42),
  -- Seaking - Poison Jab - TR57
  (119, 11900, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 43),
  -- Seaking - Scald - TR84
  (119, 11900, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 44),
  -- Seaking - Drill Run - TR87
  (119, 11900, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 45),
  -- Seaking - Throat Chop - TR95
  (119, 11900, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 46),
  -- Staryu - Tackle - Level 1
  (120, 12000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staryu - Harden - Level 1
  (120, 12000, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Staryu - Water Gun - Level 4
  (120, 12000, 55, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Staryu - Confuse Ray - Level 8
  (120, 12000, 109, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Staryu - Rapid Spin - Level 12
  (120, 12000, 229, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Staryu - Minimize - Level 16
  (120, 12000, 107, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Staryu - Swift - Level 20
  (120, 12000, 129, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Staryu - Psybeam - Level 24
  (120, 12000, 60, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Staryu - Brine - Level 28
  (120, 12000, 362, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Staryu - Light Screen - Level 32
  (120, 12000, 113, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Staryu - Power Gem - Level 36
  (120, 12000, 408, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Staryu - Psychic - Level 40
  (120, 12000, 94, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Staryu - Surf - Level 44
  (120, 12000, 57, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Staryu - Recover - Level 48
  (120, 12000, 105, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Staryu - Cosmic Power - Level 52
  (120, 12000, 322, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Staryu - Hydro Pump - Level 56
  (120, 12000, 56, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Staryu - Thunder Wave - TM14
  (120, 12000, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 17),
  -- Staryu - Light Screen - TM17
  (120, 12000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 18),
  -- Staryu - Reflect - TM18
  (120, 12000, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 19),
  -- Staryu - Rest - TM21
  (120, 12000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Staryu - Snore - TM24
  (120, 12000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Staryu - Protect - TM25
  (120, 12000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Staryu - Icy Wind - TM27
  (120, 12000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 23),
  -- Staryu - Rain Dance - TM33
  (120, 12000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Staryu - Hail - TM35
  (120, 12000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 25),
  -- Staryu - Whirlpool - TM36
  (120, 12000, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 26),
  -- Staryu - Facade - TM39
  (120, 12000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Staryu - Swift - TM40
  (120, 12000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 28),
  -- Staryu - Dive - TM45
  (120, 12000, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 29),
  -- Staryu - Brine - TM55
  (120, 12000, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 30),
  -- Staryu - Round - TM76
  (120, 12000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Staryu - Hydro Pump - TR03
  (120, 12000, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 32),
  -- Staryu - Surf - TR04
  (120, 12000, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 33),
  -- Staryu - Ice Beam - TR05
  (120, 12000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 34),
  -- Staryu - Blizzard - TR06
  (120, 12000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 35),
  -- Staryu - Thunderbolt - TR08
  (120, 12000, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 36),
  -- Staryu - Thunder - TR09
  (120, 12000, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 37),
  -- Staryu - Psychic - TR11
  (120, 12000, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 38),
  -- Staryu - Waterfall - TR16
  (120, 12000, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 39),
  -- Staryu - Tri Attack - TR19
  (120, 12000, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 40),
  -- Staryu - Substitute - TR20
  (120, 12000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Staryu - Endure - TR26
  (120, 12000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Staryu - Sleep Talk - TR27
  (120, 12000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Staryu - Cosmic Power - TR44
  (120, 12000, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 44),
  -- Staryu - Gyro Ball - TR52
  (120, 12000, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 45),
  -- Staryu - Power Gem - TR63
  (120, 12000, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 46),
  -- Staryu - Flash Cannon - TR70
  (120, 12000, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 47),
  -- Staryu - Scald - TR84
  (120, 12000, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 48),
  -- Staryu - Dazzling Gleam - TR92
  (120, 12000, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 49),
  -- Starmie - Tackle - Level 1
  (121, 12100, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Starmie - Water Gun - Level 1
  (121, 12100, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Starmie - Hydro Pump - Level 1
  (121, 12100, 56, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Starmie - Surf - Level 1
  (121, 12100, 57, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Starmie - Psybeam - Level 1
  (121, 12100, 60, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Starmie - Psychic - Level 1
  (121, 12100, 94, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Starmie - Recover - Level 1
  (121, 12100, 105, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Starmie - Harden - Level 1
  (121, 12100, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Starmie - Minimize - Level 1
  (121, 12100, 107, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Starmie - Confuse Ray - Level 1
  (121, 12100, 109, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Starmie - Light Screen - Level 1
  (121, 12100, 113, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Starmie - Swift - Level 1
  (121, 12100, 129, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Starmie - Rapid Spin - Level 1
  (121, 12100, 229, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Starmie - Cosmic Power - Level 1
  (121, 12100, 322, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Starmie - Brine - Level 1
  (121, 12100, 362, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Starmie - Power Gem - Level 1
  (121, 12100, 408, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Starmie - Hyper Beam - TM08
  (121, 12100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Starmie - Giga Impact - TM09
  (121, 12100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Starmie - Thunder Wave - TM14
  (121, 12100, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 19),
  -- Starmie - Light Screen - TM17
  (121, 12100, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Starmie - Reflect - TM18
  (121, 12100, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Starmie - Rest - TM21
  (121, 12100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Starmie - Snore - TM24
  (121, 12100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Starmie - Protect - TM25
  (121, 12100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Starmie - Icy Wind - TM27
  (121, 12100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 25),
  -- Starmie - Rain Dance - TM33
  (121, 12100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Starmie - Hail - TM35
  (121, 12100, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 27),
  -- Starmie - Whirlpool - TM36
  (121, 12100, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 28),
  -- Starmie - Facade - TM39
  (121, 12100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Starmie - Swift - TM40
  (121, 12100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 30),
  -- Starmie - Dive - TM45
  (121, 12100, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 31),
  -- Starmie - Brine - TM55
  (121, 12100, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 32),
  -- Starmie - Avalanche - TM64
  (121, 12100, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 33),
  -- Starmie - Psycho Cut - TM69
  (121, 12100, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 34),
  -- Starmie - Trick Room - TM70
  (121, 12100, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 35),
  -- Starmie - Wonder Room - TM71
  (121, 12100, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 36),
  -- Starmie - Round - TM76
  (121, 12100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Starmie - Hydro Pump - TR03
  (121, 12100, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 38),
  -- Starmie - Surf - TR04
  (121, 12100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 39),
  -- Starmie - Ice Beam - TR05
  (121, 12100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 40),
  -- Starmie - Blizzard - TR06
  (121, 12100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 41),
  -- Starmie - Thunderbolt - TR08
  (121, 12100, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 42),
  -- Starmie - Thunder - TR09
  (121, 12100, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 43),
  -- Starmie - Psychic - TR11
  (121, 12100, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 44),
  -- Starmie - Agility - TR12
  (121, 12100, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 45),
  -- Starmie - Waterfall - TR16
  (121, 12100, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 46),
  -- Starmie - Tri Attack - TR19
  (121, 12100, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 47),
  -- Starmie - Substitute - TR20
  (121, 12100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Starmie - Psyshock - TR25
  (121, 12100, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 49),
  -- Starmie - Endure - TR26
  (121, 12100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Starmie - Sleep Talk - TR27
  (121, 12100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Starmie - Trick - TR38
  (121, 12100, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 52),
  -- Starmie - Skill Swap - TR40
  (121, 12100, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 53),
  -- Starmie - Cosmic Power - TR44
  (121, 12100, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 54),
  -- Starmie - Gyro Ball - TR52
  (121, 12100, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 55),
  -- Starmie - Power Gem - TR63
  (121, 12100, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 56),
  -- Starmie - Flash Cannon - TR70
  (121, 12100, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 57),
  -- Starmie - Grass Knot - TR77
  (121, 12100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 58),
  -- Starmie - Ally Switch - TR83
  (121, 12100, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 59),
  -- Starmie - Scald - TR84
  (121, 12100, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 60),
  -- Starmie - Dazzling Gleam - TR92
  (121, 12100, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 61),
  -- Mr. Mime - Pound - Level 1
  (122, 12200, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mr. Mime - Baton Pass - Level 1
  (122, 12200, 226, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mr. Mime - Encore - Level 1
  (122, 12200, 227, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mr. Mime - Copycat - Level 1
  (122, 12200, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mr. Mime - Power Swap - Level 1
  (122, 12200, 384, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mr. Mime - Guard Swap - Level 1
  (122, 12200, 385, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mr. Mime - Wide Guard - Level 1
  (122, 12200, 469, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Mr. Mime - Quick Guard - Level 1
  (122, 12200, 501, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Mr. Mime - Confusion - Level 12
  (122, 12200, 93, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Mr. Mime - Role Play - Level 16
  (122, 12200, 272, 18, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Mr. Mime - Protect - Level 20
  (122, 12200, 182, 18, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Mr. Mime - Recycle - Level 24
  (122, 12200, 278, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Mr. Mime - Psybeam - Level 28
  (122, 12200, 60, 18, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Mr. Mime - Mimic - Level 32
  (122, 12200, 102, 18, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Mr. Mime - Light Screen - Level 36
  (122, 12200, 113, 18, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Mr. Mime - Reflect - Level 36
  (122, 12200, 115, 18, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Mr. Mime - Safeguard - Level 36
  (122, 12200, 219, 18, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Mr. Mime - Sucker Punch - Level 40
  (122, 12200, 389, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Mr. Mime - Dazzling Gleam - Level 44
  (122, 12200, 605, 18, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Mr. Mime - Psychic - Level 48
  (122, 12200, 94, 18, NULL, 1, 48, NULL, NULL, NULL, 20),
  -- Mr. Mime - Teeter Dance - Level 52
  (122, 12200, 298, 18, NULL, 1, 52, NULL, NULL, NULL, 21),
  -- Mr. Mime - Mega Punch - TM00
  (122, 12200, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 22),
  -- Mr. Mime - Mega Kick - TM01
  (122, 12200, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 23),
  -- Mr. Mime - Fire Punch - TM03
  (122, 12200, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 24),
  -- Mr. Mime - Ice Punch - TM04
  (122, 12200, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 25),
  -- Mr. Mime - Thunder Punch - TM05
  (122, 12200, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 26),
  -- Mr. Mime - Hyper Beam - TM08
  (122, 12200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 27),
  -- Mr. Mime - Giga Impact - TM09
  (122, 12200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 28),
  -- Mr. Mime - Magical Leaf - TM10
  (122, 12200, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 29),
  -- Mr. Mime - Solar Beam - TM11
  (122, 12200, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 30),
  -- Mr. Mime - Thunder Wave - TM14
  (122, 12200, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 31),
  -- Mr. Mime - Light Screen - TM17
  (122, 12200, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 32),
  -- Mr. Mime - Reflect - TM18
  (122, 12200, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 33),
  -- Mr. Mime - Safeguard - TM19
  (122, 12200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 34),
  -- Mr. Mime - Rest - TM21
  (122, 12200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 35),
  -- Mr. Mime - Thief - TM23
  (122, 12200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 36),
  -- Mr. Mime - Snore - TM24
  (122, 12200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 37),
  -- Mr. Mime - Protect - TM25
  (122, 12200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 38),
  -- Mr. Mime - Icy Wind - TM27
  (122, 12200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 39),
  -- Mr. Mime - Charm - TM29
  (122, 12200, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 40),
  -- Mr. Mime - Attract - TM31
  (122, 12200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 41),
  -- Mr. Mime - Rain Dance - TM33
  (122, 12200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 42),
  -- Mr. Mime - Sunny Day - TM34
  (122, 12200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 43),
  -- Mr. Mime - Facade - TM39
  (122, 12200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 44),
  -- Mr. Mime - Helping Hand - TM41
  (122, 12200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 45),
  -- Mr. Mime - Brick Break - TM43
  (122, 12200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 46),
  -- Mr. Mime - Payback - TM57
  (122, 12200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 47),
  -- Mr. Mime - Fling - TM59
  (122, 12200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 48),
  -- Mr. Mime - Power Swap - TM60
  (122, 12200, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 49),
  -- Mr. Mime - Guard Swap - TM61
  (122, 12200, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 50),
  -- Mr. Mime - Drain Punch - TM63
  (122, 12200, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 51),
  -- Mr. Mime - Trick Room - TM70
  (122, 12200, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 52),
  -- Mr. Mime - Wonder Room - TM71
  (122, 12200, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 53),
  -- Mr. Mime - Magic Room - TM72
  (122, 12200, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 54),
  -- Mr. Mime - Round - TM76
  (122, 12200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 55),
  -- Mr. Mime - Misty Terrain - TM89
  (122, 12200, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 56),
  -- Mr. Mime - Psychic Terrain - TM91
  (122, 12200, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 57),
  -- Mr. Mime - Mystical Fire - TM92
  (122, 12200, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 58),
  -- Mr. Mime - Body Slam - TR01
  (122, 12200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 59),
  -- Mr. Mime - Thunderbolt - TR08
  (122, 12200, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 60),
  -- Mr. Mime - Thunder - TR09
  (122, 12200, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 61),
  -- Mr. Mime - Psychic - TR11
  (122, 12200, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 62),
  -- Mr. Mime - Metronome - TR14
  (122, 12200, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 63),
  -- Mr. Mime - Substitute - TR20
  (122, 12200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 64),
  -- Mr. Mime - Psyshock - TR25
  (122, 12200, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 65),
  -- Mr. Mime - Endure - TR26
  (122, 12200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 66),
  -- Mr. Mime - Sleep Talk - TR27
  (122, 12200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 67),
  -- Mr. Mime - Baton Pass - TR29
  (122, 12200, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 68),
  -- Mr. Mime - Encore - TR30
  (122, 12200, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 69),
  -- Mr. Mime - Shadow Ball - TR33
  (122, 12200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 70),
  -- Mr. Mime - Future Sight - TR34
  (122, 12200, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 71),
  -- Mr. Mime - Uproar - TR35
  (122, 12200, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 72),
  -- Mr. Mime - Taunt - TR37
  (122, 12200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 73),
  -- Mr. Mime - Trick - TR38
  (122, 12200, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 74),
  -- Mr. Mime - Skill Swap - TR40
  (122, 12200, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 75),
  -- Mr. Mime - Iron Defense - TR46
  (122, 12200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 76),
  -- Mr. Mime - Calm Mind - TR49
  (122, 12200, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 77),
  -- Mr. Mime - Focus Blast - TR64
  (122, 12200, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 78),
  -- Mr. Mime - Energy Ball - TR65
  (122, 12200, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 79),
  -- Mr. Mime - Nasty Plot - TR68
  (122, 12200, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 80),
  -- Mr. Mime - Zen Headbutt - TR69
  (122, 12200, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 81),
  -- Mr. Mime - Grass Knot - TR77
  (122, 12200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 82),
  -- Mr. Mime - Foul Play - TR81
  (122, 12200, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 83),
  -- Mr. Mime - Stored Power - TR82
  (122, 12200, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 84),
  -- Mr. Mime - Ally Switch - TR83
  (122, 12200, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 85),
  -- Mr. Mime - Dazzling Gleam - TR92
  (122, 12200, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 86),
  -- Mr. Mime - Hypnosis - Egg
  (122, 12200, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Mr. Mime - Confuse Ray - Egg
  (122, 12200, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Mr. Mime - Fake Out - Egg
  (122, 12200, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Mr. Mime - Tickle - Egg
  (122, 12200, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 90),
  -- Mr. Mime - Power Split - Egg
  (122, 12200, 471, 18, NULL, 5, NULL, NULL, NULL, NULL, 91),
  -- Scyther - Leer - Level 1
  (123, 12300, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scyther - Quick Attack - Level 1
  (123, 12300, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scyther - Fury Cutter - Level 4
  (123, 12300, 210, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Scyther - False Swipe - Level 8
  (123, 12300, 206, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Scyther - Wing Attack - Level 12
  (123, 12300, 17, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Scyther - Double Team - Level 16
  (123, 12300, 104, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Scyther - Double Hit - Level 20
  (123, 12300, 458, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Scyther - Slash - Level 24
  (123, 12300, 163, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Scyther - Focus Energy - Level 28
  (123, 12300, 116, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Scyther - Agility - Level 32
  (123, 12300, 97, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Scyther - Air Slash - Level 36
  (123, 12300, 403, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Scyther - X-Scissor - Level 40
  (123, 12300, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Scyther - Laser Focus - Level 44
  (123, 12300, 673, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Scyther - Swords Dance - Level 48
  (123, 12300, 14, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Scyther - Hyper Beam - TM08
  (123, 12300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Scyther - Giga Impact - TM09
  (123, 12300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Scyther - Light Screen - TM17
  (123, 12300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 17),
  -- Scyther - Safeguard - TM19
  (123, 12300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 18),
  -- Scyther - Rest - TM21
  (123, 12300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Scyther - Thief - TM23
  (123, 12300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 20),
  -- Scyther - Snore - TM24
  (123, 12300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Scyther - Protect - TM25
  (123, 12300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Scyther - Steel Wing - TM30
  (123, 12300, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 23),
  -- Scyther - Attract - TM31
  (123, 12300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Scyther - Rain Dance - TM33
  (123, 12300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Scyther - Sunny Day - TM34
  (123, 12300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Scyther - Facade - TM39
  (123, 12300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Scyther - Swift - TM40
  (123, 12300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 28),
  -- Scyther - Brick Break - TM43
  (123, 12300, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 29),
  -- Scyther - U-turn - TM56
  (123, 12300, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 30),
  -- Scyther - Assurance - TM58
  (123, 12300, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 31),
  -- Scyther - Psycho Cut - TM69
  (123, 12300, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 32),
  -- Scyther - Cross Poison - TM73
  (123, 12300, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 33),
  -- Scyther - Round - TM76
  (123, 12300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Scyther - Acrobatics - TM78
  (123, 12300, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 35),
  -- Scyther - False Swipe - TM94
  (123, 12300, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 36),
  -- Scyther - Air Slash - TM95
  (123, 12300, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 37),
  -- Scyther - Brutal Swing - TM97
  (123, 12300, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 38),
  -- Scyther - Swords Dance - TR00
  (123, 12300, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 39),
  -- Scyther - Agility - TR12
  (123, 12300, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 40),
  -- Scyther - Focus Energy - TR13
  (123, 12300, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 41),
  -- Scyther - Substitute - TR20
  (123, 12300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Scyther - Reversal - TR21
  (123, 12300, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 43),
  -- Scyther - Endure - TR26
  (123, 12300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Scyther - Sleep Talk - TR27
  (123, 12300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Scyther - Baton Pass - TR29
  (123, 12300, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 46),
  -- Scyther - X-Scissor - TR60
  (123, 12300, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 47),
  -- Scyther - Bug Buzz - TR61
  (123, 12300, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 48),
  -- Scyther - Counter - Egg
  (123, 12300, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Scyther - Feint - Egg
  (123, 12300, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Scyther - Night Slash - Egg
  (123, 12300, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Scyther - Defog - Egg
  (123, 12300, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Scyther - Quick Guard - Egg
  (123, 12300, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Jynx - Pound - Level 1
  (124, 12400, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jynx - Lick - Level 1
  (124, 12400, 122, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jynx - Powder Snow - Level 1
  (124, 12400, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jynx - Sweet Kiss - Level 1
  (124, 12400, 186, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jynx - Copycat - Level 1
  (124, 12400, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Jynx - Confusion - Level 12
  (124, 12400, 93, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Jynx - Covet - Level 16
  (124, 12400, 343, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Jynx - Sing - Level 20
  (124, 12400, 47, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Jynx - Fake Tears - Level 24
  (124, 12400, 313, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Jynx - Ice Punch - Level 28
  (124, 12400, 8, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Jynx - Psychic - Level 34
  (124, 12400, 94, 18, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Jynx - Lovely Kiss - Level 40
  (124, 12400, 142, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Jynx - Mean Look - Level 46
  (124, 12400, 212, 18, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Jynx - Perish Song - Level 52
  (124, 12400, 195, 18, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Jynx - Blizzard - Level 58
  (124, 12400, 59, 18, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Jynx - Mega Punch - TM00
  (124, 12400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Jynx - Mega Kick - TM01
  (124, 12400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Jynx - Ice Punch - TM04
  (124, 12400, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 18),
  -- Jynx - Hyper Beam - TM08
  (124, 12400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Jynx - Giga Impact - TM09
  (124, 12400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Jynx - Light Screen - TM17
  (124, 12400, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 21),
  -- Jynx - Reflect - TM18
  (124, 12400, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 22),
  -- Jynx - Rest - TM21
  (124, 12400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Jynx - Thief - TM23
  (124, 12400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Jynx - Snore - TM24
  (124, 12400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Jynx - Protect - TM25
  (124, 12400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Jynx - Icy Wind - TM27
  (124, 12400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 27),
  -- Jynx - Charm - TM29
  (124, 12400, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 28),
  -- Jynx - Attract - TM31
  (124, 12400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Jynx - Rain Dance - TM33
  (124, 12400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Jynx - Hail - TM35
  (124, 12400, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 31),
  -- Jynx - Facade - TM39
  (124, 12400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Jynx - Helping Hand - TM41
  (124, 12400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Jynx - Brick Break - TM43
  (124, 12400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Jynx - Fake Tears - TM47
  (124, 12400, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 35),
  -- Jynx - Icicle Spear - TM51
  (124, 12400, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 36),
  -- Jynx - Payback - TM57
  (124, 12400, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 37),
  -- Jynx - Fling - TM59
  (124, 12400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Jynx - Drain Punch - TM63
  (124, 12400, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 39),
  -- Jynx - Avalanche - TM64
  (124, 12400, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 40),
  -- Jynx - Psycho Cut - TM69
  (124, 12400, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 41),
  -- Jynx - Trick Room - TM70
  (124, 12400, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 42),
  -- Jynx - Wonder Room - TM71
  (124, 12400, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 43),
  -- Jynx - Magic Room - TM72
  (124, 12400, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 44),
  -- Jynx - Round - TM76
  (124, 12400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Jynx - Draining Kiss - TM87
  (124, 12400, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 46),
  -- Jynx - Psychic Terrain - TM91
  (124, 12400, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 47),
  -- Jynx - Body Slam - TR01
  (124, 12400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 48),
  -- Jynx - Ice Beam - TR05
  (124, 12400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 49),
  -- Jynx - Blizzard - TR06
  (124, 12400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 50),
  -- Jynx - Psychic - TR11
  (124, 12400, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 51),
  -- Jynx - Metronome - TR14
  (124, 12400, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 52),
  -- Jynx - Substitute - TR20
  (124, 12400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 53),
  -- Jynx - Psyshock - TR25
  (124, 12400, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 54),
  -- Jynx - Endure - TR26
  (124, 12400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 55),
  -- Jynx - Sleep Talk - TR27
  (124, 12400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 56),
  -- Jynx - Encore - TR30
  (124, 12400, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 57),
  -- Jynx - Shadow Ball - TR33
  (124, 12400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 58),
  -- Jynx - Future Sight - TR34
  (124, 12400, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 59),
  -- Jynx - Uproar - TR35
  (124, 12400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 60),
  -- Jynx - Taunt - TR37
  (124, 12400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 61),
  -- Jynx - Trick - TR38
  (124, 12400, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 62),
  -- Jynx - Skill Swap - TR40
  (124, 12400, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 63),
  -- Jynx - Hyper Voice - TR42
  (124, 12400, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 64),
  -- Jynx - Calm Mind - TR49
  (124, 12400, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 65),
  -- Jynx - Focus Blast - TR64
  (124, 12400, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 66),
  -- Jynx - Energy Ball - TR65
  (124, 12400, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 67),
  -- Jynx - Nasty Plot - TR68
  (124, 12400, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 68),
  -- Jynx - Zen Headbutt - TR69
  (124, 12400, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 69),
  -- Jynx - Grass Knot - TR77
  (124, 12400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 70),
  -- Jynx - Stored Power - TR82
  (124, 12400, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 71),
  -- Jynx - Ally Switch - TR83
  (124, 12400, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 72),
  -- Electabuzz - Leer - Level 1
  (125, 12500, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electabuzz - Thunder Shock - Level 1
  (125, 12500, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electabuzz - Quick Attack - Level 1
  (125, 12500, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electabuzz - Charge - Level 1
  (125, 12500, 268, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Electabuzz - Swift - Level 12
  (125, 12500, 129, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Electabuzz - Shock Wave - Level 16
  (125, 12500, 351, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Electabuzz - Thunder Wave - Level 20
  (125, 12500, 86, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Electabuzz - Screech - Level 24
  (125, 12500, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Electabuzz - Thunder Punch - Level 28
  (125, 12500, 9, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Electabuzz - Discharge - Level 34
  (125, 12500, 435, 18, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Electabuzz - Low Kick - Level 40
  (125, 12500, 67, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Electabuzz - Thunderbolt - Level 46
  (125, 12500, 85, 18, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Electabuzz - Light Screen - Level 52
  (125, 12500, 113, 18, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Electabuzz - Thunder - Level 58
  (125, 12500, 87, 18, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Electabuzz - Giga Impact - Level 64
  (125, 12500, 416, 18, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Electabuzz - Mega Punch - TM00
  (125, 12500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Electabuzz - Mega Kick - TM01
  (125, 12500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Electabuzz - Fire Punch - TM03
  (125, 12500, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 18),
  -- Electabuzz - Ice Punch - TM04
  (125, 12500, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Electabuzz - Thunder Punch - TM05
  (125, 12500, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Electabuzz - Hyper Beam - TM08
  (125, 12500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Electabuzz - Giga Impact - TM09
  (125, 12500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Electabuzz - Thunder Wave - TM14
  (125, 12500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 23),
  -- Electabuzz - Screech - TM16
  (125, 12500, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 24),
  -- Electabuzz - Light Screen - TM17
  (125, 12500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 25),
  -- Electabuzz - Rest - TM21
  (125, 12500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Electabuzz - Thief - TM23
  (125, 12500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 27),
  -- Electabuzz - Snore - TM24
  (125, 12500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Electabuzz - Protect - TM25
  (125, 12500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Electabuzz - Attract - TM31
  (125, 12500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Electabuzz - Rain Dance - TM33
  (125, 12500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Electabuzz - Facade - TM39
  (125, 12500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Electabuzz - Swift - TM40
  (125, 12500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Electabuzz - Helping Hand - TM41
  (125, 12500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 34),
  -- Electabuzz - Brick Break - TM43
  (125, 12500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 35),
  -- Electabuzz - Fling - TM59
  (125, 12500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Electabuzz - Low Sweep - TM75
  (125, 12500, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 37),
  -- Electabuzz - Round - TM76
  (125, 12500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Electabuzz - Volt Switch - TM80
  (125, 12500, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 39),
  -- Electabuzz - Electroweb - TM82
  (125, 12500, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 40),
  -- Electabuzz - Body Slam - TR01
  (125, 12500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 41),
  -- Electabuzz - Low Kick - TR07
  (125, 12500, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 42),
  -- Electabuzz - Thunderbolt - TR08
  (125, 12500, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 43),
  -- Electabuzz - Thunder - TR09
  (125, 12500, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 44),
  -- Electabuzz - Psychic - TR11
  (125, 12500, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 45),
  -- Electabuzz - Substitute - TR20
  (125, 12500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Electabuzz - Endure - TR26
  (125, 12500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Electabuzz - Sleep Talk - TR27
  (125, 12500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Electabuzz - Iron Tail - TR31
  (125, 12500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 49),
  -- Electabuzz - Uproar - TR35
  (125, 12500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 50),
  -- Electabuzz - Focus Blast - TR64
  (125, 12500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 51),
  -- Electabuzz - Electro Ball - TR80
  (125, 12500, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 52),
  -- Electabuzz - Wild Charge - TR86
  (125, 12500, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 53),
  -- Magmar - Leer - Level 1
  (126, 12600, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magmar - Ember - Level 1
  (126, 12600, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magmar - Smokescreen - Level 1
  (126, 12600, 108, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magmar - Smog - Level 1
  (126, 12600, 123, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magmar - Clear Smog - Level 12
  (126, 12600, 499, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Magmar - Flame Wheel - Level 16
  (126, 12600, 172, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Magmar - Confuse Ray - Level 20
  (126, 12600, 109, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Magmar - Scary Face - Level 24
  (126, 12600, 184, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Magmar - Fire Punch - Level 28
  (126, 12600, 7, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Magmar - Lava Plume - Level 34
  (126, 12600, 436, 18, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Magmar - Low Kick - Level 40
  (126, 12600, 67, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Magmar - Flamethrower - Level 46
  (126, 12600, 53, 18, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Magmar - Sunny Day - Level 52
  (126, 12600, 241, 18, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Magmar - Fire Blast - Level 58
  (126, 12600, 126, 18, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Magmar - Hyper Beam - Level 64
  (126, 12600, 63, 18, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Magmar - Mega Punch - TM00
  (126, 12600, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Magmar - Mega Kick - TM01
  (126, 12600, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Magmar - Fire Punch - TM03
  (126, 12600, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 18),
  -- Magmar - Thunder Punch - TM05
  (126, 12600, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 19),
  -- Magmar - Hyper Beam - TM08
  (126, 12600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Magmar - Giga Impact - TM09
  (126, 12600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Magmar - Fire Spin - TM13
  (126, 12600, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 22),
  -- Magmar - Screech - TM16
  (126, 12600, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 23),
  -- Magmar - Rest - TM21
  (126, 12600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Magmar - Thief - TM23
  (126, 12600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 25),
  -- Magmar - Snore - TM24
  (126, 12600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Magmar - Protect - TM25
  (126, 12600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Magmar - Scary Face - TM26
  (126, 12600, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 28),
  -- Magmar - Attract - TM31
  (126, 12600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Magmar - Sunny Day - TM34
  (126, 12600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Magmar - Will-O-Wisp - TM38
  (126, 12600, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 31),
  -- Magmar - Facade - TM39
  (126, 12600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Magmar - Helping Hand - TM41
  (126, 12600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Magmar - Brick Break - TM43
  (126, 12600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Magmar - Fling - TM59
  (126, 12600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Magmar - Power Swap - TM60
  (126, 12600, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 36),
  -- Magmar - Low Sweep - TM75
  (126, 12600, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 37),
  -- Magmar - Round - TM76
  (126, 12600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Magmar - Body Slam - TR01
  (126, 12600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 39),
  -- Magmar - Flamethrower - TR02
  (126, 12600, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 40),
  -- Magmar - Low Kick - TR07
  (126, 12600, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 41),
  -- Magmar - Psychic - TR11
  (126, 12600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 42),
  -- Magmar - Focus Energy - TR13
  (126, 12600, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 43),
  -- Magmar - Fire Blast - TR15
  (126, 12600, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 44),
  -- Magmar - Substitute - TR20
  (126, 12600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Magmar - Endure - TR26
  (126, 12600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Magmar - Sleep Talk - TR27
  (126, 12600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Magmar - Iron Tail - TR31
  (126, 12600, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 48),
  -- Magmar - Uproar - TR35
  (126, 12600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 49),
  -- Magmar - Heat Wave - TR36
  (126, 12600, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 50),
  -- Magmar - Overheat - TR43
  (126, 12600, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 51),
  -- Magmar - Flare Blitz - TR55
  (126, 12600, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 52),
  -- Magmar - Focus Blast - TR64
  (126, 12600, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 53),
  -- Pinsir - Vise Grip - Level 1
  (127, 12700, 11, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pinsir - Harden - Level 1
  (127, 12700, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pinsir - Focus Energy - Level 4
  (127, 12700, 116, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pinsir - Bind - Level 8
  (127, 12700, 20, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pinsir - Seismic Toss - Level 12
  (127, 12700, 69, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pinsir - Bug Bite - Level 16
  (127, 12700, 450, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Pinsir - Storm Throw - Level 20
  (127, 12700, 480, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pinsir - Double Hit - Level 24
  (127, 12700, 458, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Pinsir - Vital Throw - Level 28
  (127, 12700, 233, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Pinsir - X-Scissor - Level 32
  (127, 12700, 404, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Pinsir - Strength - Level 36
  (127, 12700, 70, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Pinsir - Swords Dance - Level 40
  (127, 12700, 14, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Pinsir - Submission - Level 44
  (127, 12700, 66, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Pinsir - Guillotine - Level 48
  (127, 12700, 12, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Pinsir - Superpower - Level 52
  (127, 12700, 276, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Pinsir - Hyper Beam - TM08
  (127, 12700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Pinsir - Giga Impact - TM09
  (127, 12700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Pinsir - Dig - TM15
  (127, 12700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Pinsir - Rest - TM21
  (127, 12700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Pinsir - Rock Slide - TM22
  (127, 12700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Pinsir - Thief - TM23
  (127, 12700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Pinsir - Snore - TM24
  (127, 12700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Pinsir - Protect - TM25
  (127, 12700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Pinsir - Attract - TM31
  (127, 12700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Pinsir - Rain Dance - TM33
  (127, 12700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Pinsir - Sunny Day - TM34
  (127, 12700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Pinsir - Facade - TM39
  (127, 12700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Pinsir - Helping Hand - TM41
  (127, 12700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Pinsir - Revenge - TM42
  (127, 12700, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 29),
  -- Pinsir - Brick Break - TM43
  (127, 12700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 30),
  -- Pinsir - Rock Tomb - TM48
  (127, 12700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 31),
  -- Pinsir - Fling - TM59
  (127, 12700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 32),
  -- Pinsir - Round - TM76
  (127, 12700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Pinsir - Bulldoze - TM81
  (127, 12700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 34),
  -- Pinsir - False Swipe - TM94
  (127, 12700, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 35),
  -- Pinsir - Brutal Swing - TM97
  (127, 12700, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 36),
  -- Pinsir - Swords Dance - TR00
  (127, 12700, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 37),
  -- Pinsir - Body Slam - TR01
  (127, 12700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 38),
  -- Pinsir - Earthquake - TR10
  (127, 12700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 39),
  -- Pinsir - Focus Energy - TR13
  (127, 12700, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 40),
  -- Pinsir - Substitute - TR20
  (127, 12700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Pinsir - Reversal - TR21
  (127, 12700, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 42),
  -- Pinsir - Endure - TR26
  (127, 12700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Pinsir - Sleep Talk - TR27
  (127, 12700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Pinsir - Superpower - TR39
  (127, 12700, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 45),
  -- Pinsir - Iron Defense - TR46
  (127, 12700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 46),
  -- Pinsir - Bulk Up - TR48
  (127, 12700, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 47),
  -- Pinsir - Close Combat - TR53
  (127, 12700, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 48),
  -- Pinsir - X-Scissor - TR60
  (127, 12700, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 49),
  -- Pinsir - Focus Blast - TR64
  (127, 12700, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 50),
  -- Pinsir - Stone Edge - TR75
  (127, 12700, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 51),
  -- Pinsir - Stealth Rock - TR76
  (127, 12700, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 52),
  -- Pinsir - High Horsepower - TR94
  (127, 12700, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 53),
  -- Pinsir - Throat Chop - TR95
  (127, 12700, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 54),
  -- Pinsir - Fury Attack - Egg
  (127, 12700, 31, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pinsir - Thrash - Egg
  (127, 12700, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pinsir - Quick Attack - Egg
  (127, 12700, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pinsir - Flail - Egg
  (127, 12700, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pinsir - Feint - Egg
  (127, 12700, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Tauros - Tackle - Level 1
  (128, 12800, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tauros - Tail Whip - Level 1
  (128, 12800, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tauros - Work Up - Level 5
  (128, 12800, 526, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tauros - Payback - Level 10
  (128, 12800, 371, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tauros - Assurance - Level 15
  (128, 12800, 372, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Tauros - Horn Attack - Level 20
  (128, 12800, 30, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Tauros - Scary Face - Level 25
  (128, 12800, 184, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tauros - Zen Headbutt - Level 30
  (128, 12800, 428, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Tauros - Take Down - Level 35
  (128, 12800, 36, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Tauros - Rest - Level 40
  (128, 12800, 156, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Tauros - Swagger - Level 45
  (128, 12800, 207, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Tauros - Thrash - Level 50
  (128, 12800, 37, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Tauros - Double-Edge - Level 55
  (128, 12800, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Tauros - Giga Impact - Level 60
  (128, 12800, 416, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Tauros - Hyper Beam - TM08
  (128, 12800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Tauros - Giga Impact - TM09
  (128, 12800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Tauros - Solar Beam - TM11
  (128, 12800, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Tauros - Rest - TM21
  (128, 12800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Tauros - Rock Slide - TM22
  (128, 12800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 19),
  -- Tauros - Snore - TM24
  (128, 12800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Tauros - Protect - TM25
  (128, 12800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Tauros - Scary Face - TM26
  (128, 12800, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 22),
  -- Tauros - Icy Wind - TM27
  (128, 12800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 23),
  -- Tauros - Attract - TM31
  (128, 12800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Tauros - Sandstorm - TM32
  (128, 12800, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 25),
  -- Tauros - Rain Dance - TM33
  (128, 12800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Tauros - Sunny Day - TM34
  (128, 12800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Tauros - Whirlpool - TM36
  (128, 12800, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 28),
  -- Tauros - Facade - TM39
  (128, 12800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Tauros - Helping Hand - TM41
  (128, 12800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Tauros - Revenge - TM42
  (128, 12800, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 31),
  -- Tauros - Rock Tomb - TM48
  (128, 12800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Tauros - Payback - TM57
  (128, 12800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 33),
  -- Tauros - Assurance - TM58
  (128, 12800, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 34),
  -- Tauros - Round - TM76
  (128, 12800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Tauros - Retaliate - TM79
  (128, 12800, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 36),
  -- Tauros - Bulldoze - TM81
  (128, 12800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 37),
  -- Tauros - Smart Strike - TM96
  (128, 12800, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 38),
  -- Tauros - Stomping Tantrum - TM98
  (128, 12800, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 39),
  -- Tauros - Body Slam - TR01
  (128, 12800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 40),
  -- Tauros - Flamethrower - TR02
  (128, 12800, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 41),
  -- Tauros - Surf - TR04
  (128, 12800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 42),
  -- Tauros - Ice Beam - TR05
  (128, 12800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 43),
  -- Tauros - Blizzard - TR06
  (128, 12800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 44),
  -- Tauros - Thunderbolt - TR08
  (128, 12800, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 45),
  -- Tauros - Thunder - TR09
  (128, 12800, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 46),
  -- Tauros - Earthquake - TR10
  (128, 12800, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 47),
  -- Tauros - Fire Blast - TR15
  (128, 12800, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 48),
  -- Tauros - Substitute - TR20
  (128, 12800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Tauros - Reversal - TR21
  (128, 12800, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 50),
  -- Tauros - Outrage - TR24
  (128, 12800, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 51),
  -- Tauros - Endure - TR26
  (128, 12800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 52),
  -- Tauros - Sleep Talk - TR27
  (128, 12800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 53),
  -- Tauros - Megahorn - TR28
  (128, 12800, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 54),
  -- Tauros - Iron Tail - TR31
  (128, 12800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 55),
  -- Tauros - Uproar - TR35
  (128, 12800, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 56),
  -- Tauros - Close Combat - TR53
  (128, 12800, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 57),
  -- Tauros - Zen Headbutt - TR69
  (128, 12800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 58),
  -- Tauros - Iron Head - TR74
  (128, 12800, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 59),
  -- Tauros - Stone Edge - TR75
  (128, 12800, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 60),
  -- Tauros - Work Up - TR85
  (128, 12800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 61),
  -- Tauros - Wild Charge - TR86
  (128, 12800, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 62),
  -- Tauros - High Horsepower - TR94
  (128, 12800, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 63),
  -- Tauros - Throat Chop - TR95
  (128, 12800, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 64),
  -- Magikarp - Splash - Level 1
  (129, 12900, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magikarp - Tackle - Level 15
  (129, 12900, 33, 18, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Magikarp - Flail - Level 25
  (129, 12900, 175, 18, NULL, 1, 25, NULL, NULL, NULL, 3),
  -- Magikarp - Bounce - TM52
  (129, 12900, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 4),
  -- Magikarp - Hydro Pump - TR03
  (129, 12900, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 5),
  -- Gyarados - Tackle - Level 1
  (130, 13000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gyarados - Leer - Level 1
  (130, 13000, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gyarados - Bite - Level 1
  (130, 13000, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gyarados - Splash - Level 1
  (130, 13000, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gyarados - Flail - Level 1
  (130, 13000, 175, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gyarados - Twister - Level 1
  (130, 13000, 239, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gyarados - Whirlpool - Level 4
  (130, 13000, 250, 18, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Gyarados - Ice Fang - Level 8
  (130, 13000, 423, 18, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Gyarados - Brine - Level 12
  (130, 13000, 362, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Gyarados - Scary Face - Level 16
  (130, 13000, 184, 18, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Gyarados - Waterfall - Level 21
  (130, 13000, 127, 18, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Gyarados - Crunch - Level 24
  (130, 13000, 242, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Gyarados - Rain Dance - Level 28
  (130, 13000, 240, 18, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Gyarados - Aqua Tail - Level 32
  (130, 13000, 401, 18, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Gyarados - Dragon Dance - Level 36
  (130, 13000, 349, 18, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Gyarados - Hydro Pump - Level 40
  (130, 13000, 56, 18, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Gyarados - Hurricane - Level 44
  (130, 13000, 542, 18, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Gyarados - Thrash - Level 48
  (130, 13000, 37, 18, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Gyarados - Hyper Beam - Level 52
  (130, 13000, 63, 18, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Gyarados - Bite - Evolution
  (130, 13000, 44, 18, NULL, 7, NULL, NULL, NULL, NULL, 20),
  -- Gyarados - Hyper Beam - TM08
  (130, 13000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Gyarados - Giga Impact - TM09
  (130, 13000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Gyarados - Thunder Wave - TM14
  (130, 13000, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 23),
  -- Gyarados - Rest - TM21
  (130, 13000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Gyarados - Snore - TM24
  (130, 13000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Gyarados - Protect - TM25
  (130, 13000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Gyarados - Scary Face - TM26
  (130, 13000, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 27),
  -- Gyarados - Icy Wind - TM27
  (130, 13000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 28),
  -- Gyarados - Attract - TM31
  (130, 13000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Gyarados - Sandstorm - TM32
  (130, 13000, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 30),
  -- Gyarados - Rain Dance - TM33
  (130, 13000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Gyarados - Hail - TM35
  (130, 13000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 32),
  -- Gyarados - Whirlpool - TM36
  (130, 13000, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 33),
  -- Gyarados - Facade - TM39
  (130, 13000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Gyarados - Dive - TM45
  (130, 13000, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 35),
  -- Gyarados - Bounce - TM52
  (130, 13000, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 36),
  -- Gyarados - Brine - TM55
  (130, 13000, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 37),
  -- Gyarados - Payback - TM57
  (130, 13000, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 38),
  -- Gyarados - Avalanche - TM64
  (130, 13000, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 39),
  -- Gyarados - Ice Fang - TM67
  (130, 13000, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 40),
  -- Gyarados - Round - TM76
  (130, 13000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Gyarados - Bulldoze - TM81
  (130, 13000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 42),
  -- Gyarados - Brutal Swing - TM97
  (130, 13000, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 43),
  -- Gyarados - Body Slam - TR01
  (130, 13000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 44),
  -- Gyarados - Flamethrower - TR02
  (130, 13000, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 45),
  -- Gyarados - Hydro Pump - TR03
  (130, 13000, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 46),
  -- Gyarados - Surf - TR04
  (130, 13000, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 47),
  -- Gyarados - Ice Beam - TR05
  (130, 13000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 48),
  -- Gyarados - Blizzard - TR06
  (130, 13000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 49),
  -- Gyarados - Thunderbolt - TR08
  (130, 13000, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 50),
  -- Gyarados - Thunder - TR09
  (130, 13000, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 51),
  -- Gyarados - Earthquake - TR10
  (130, 13000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 52),
  -- Gyarados - Fire Blast - TR15
  (130, 13000, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 53),
  -- Gyarados - Waterfall - TR16
  (130, 13000, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 54),
  -- Gyarados - Substitute - TR20
  (130, 13000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 55),
  -- Gyarados - Outrage - TR24
  (130, 13000, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 56),
  -- Gyarados - Endure - TR26
  (130, 13000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 57),
  -- Gyarados - Sleep Talk - TR27
  (130, 13000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 58),
  -- Gyarados - Iron Tail - TR31
  (130, 13000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 59),
  -- Gyarados - Crunch - TR32
  (130, 13000, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 60),
  -- Gyarados - Uproar - TR35
  (130, 13000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 61),
  -- Gyarados - Taunt - TR37
  (130, 13000, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 62),
  -- Gyarados - Muddy Water - TR45
  (130, 13000, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 63),
  -- Gyarados - Dragon Dance - TR51
  (130, 13000, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 64),
  -- Gyarados - Dark Pulse - TR58
  (130, 13000, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 65),
  -- Gyarados - Dragon Pulse - TR62
  (130, 13000, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 66),
  -- Gyarados - Power Whip - TR72
  (130, 13000, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 67),
  -- Gyarados - Iron Head - TR74
  (130, 13000, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 68),
  -- Gyarados - Stone Edge - TR75
  (130, 13000, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 69),
  -- Gyarados - Scald - TR84
  (130, 13000, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 70),
  -- Gyarados - Hurricane - TR89
  (130, 13000, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 71),
  -- Lapras - Growl - Level 1
  (131, 13100, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lapras - Water Gun - Level 1
  (131, 13100, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lapras - Sing - Level 5
  (131, 13100, 47, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Lapras - Mist - Level 10
  (131, 13100, 54, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Lapras - Life Dew - Level 15
  (131, 13100, 791, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Lapras - Ice Shard - Level 20
  (131, 13100, 420, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Lapras - Confuse Ray - Level 25
  (131, 13100, 109, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Lapras - Water Pulse - Level 30
  (131, 13100, 352, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Lapras - Brine - Level 35
  (131, 13100, 362, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Lapras - Body Slam - Level 40
  (131, 13100, 34, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Lapras - Ice Beam - Level 45
  (131, 13100, 58, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Lapras - Rain Dance - Level 50
  (131, 13100, 240, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Lapras - Hydro Pump - Level 55
  (131, 13100, 56, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Lapras - Perish Song - Level 60
  (131, 13100, 195, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Lapras - Sheer Cold - Level 65
  (131, 13100, 329, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Lapras - Hyper Beam - TM08
  (131, 13100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Lapras - Giga Impact - TM09
  (131, 13100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Lapras - Safeguard - TM19
  (131, 13100, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 18),
  -- Lapras - Rest - TM21
  (131, 13100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Lapras - Snore - TM24
  (131, 13100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Lapras - Protect - TM25
  (131, 13100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Lapras - Icy Wind - TM27
  (131, 13100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 22),
  -- Lapras - Charm - TM29
  (131, 13100, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 23),
  -- Lapras - Attract - TM31
  (131, 13100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Lapras - Rain Dance - TM33
  (131, 13100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Lapras - Hail - TM35
  (131, 13100, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 26),
  -- Lapras - Whirlpool - TM36
  (131, 13100, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 27),
  -- Lapras - Facade - TM39
  (131, 13100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Lapras - Helping Hand - TM41
  (131, 13100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 29),
  -- Lapras - Dive - TM45
  (131, 13100, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 30),
  -- Lapras - Weather Ball - TM46
  (131, 13100, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 31),
  -- Lapras - Brine - TM55
  (131, 13100, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 32),
  -- Lapras - Avalanche - TM64
  (131, 13100, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 33),
  -- Lapras - Round - TM76
  (131, 13100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Lapras - Bulldoze - TM81
  (131, 13100, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 35),
  -- Lapras - Smart Strike - TM96
  (131, 13100, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 36),
  -- Lapras - Body Slam - TR01
  (131, 13100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 37),
  -- Lapras - Hydro Pump - TR03
  (131, 13100, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 38),
  -- Lapras - Surf - TR04
  (131, 13100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 39),
  -- Lapras - Ice Beam - TR05
  (131, 13100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 40),
  -- Lapras - Blizzard - TR06
  (131, 13100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 41),
  -- Lapras - Thunderbolt - TR08
  (131, 13100, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 42),
  -- Lapras - Thunder - TR09
  (131, 13100, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 43),
  -- Lapras - Psychic - TR11
  (131, 13100, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 44),
  -- Lapras - Waterfall - TR16
  (131, 13100, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 45),
  -- Lapras - Substitute - TR20
  (131, 13100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Lapras - Outrage - TR24
  (131, 13100, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 47),
  -- Lapras - Endure - TR26
  (131, 13100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Lapras - Sleep Talk - TR27
  (131, 13100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Lapras - Megahorn - TR28
  (131, 13100, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 50),
  -- Lapras - Iron Tail - TR31
  (131, 13100, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 51),
  -- Lapras - Future Sight - TR34
  (131, 13100, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 52),
  -- Lapras - Hyper Voice - TR42
  (131, 13100, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 53),
  -- Lapras - Dragon Dance - TR51
  (131, 13100, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 54),
  -- Lapras - Dragon Pulse - TR62
  (131, 13100, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 55),
  -- Lapras - Zen Headbutt - TR69
  (131, 13100, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 56),
  -- Lapras - Iron Head - TR74
  (131, 13100, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 57),
  -- Lapras - Drill Run - TR87
  (131, 13100, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 58),
  -- Lapras - Liquidation - TR98
  (131, 13100, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 59),
  -- Lapras - Body Press - TR99
  (131, 13100, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 60),
  -- Lapras - Horn Drill - Egg
  (131, 13100, 32, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Lapras - Fissure - Egg
  (131, 13100, 90, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Lapras - Curse - Egg
  (131, 13100, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Lapras - Ancient Power - Egg
  (131, 13100, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Lapras - Tickle - Egg
  (131, 13100, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Lapras - Freeze-Dry - Egg
  (131, 13100, 573, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Lapras - Sparkling Aria - Egg
  (131, 13100, 664, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Ditto - Transform - Level 1
  (132, 13200, 144, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Tackle - Level 1
  (133, 13300, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Tail Whip - Level 1
  (133, 13300, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eevee - Growl - Level 1
  (133, 13300, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Eevee - Helping Hand - Level 1
  (133, 13300, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Eevee - Covet - Level 1
  (133, 13300, 343, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Eevee - Sand Attack - Level 5
  (133, 13300, 28, 18, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Eevee - Quick Attack - Level 10
  (133, 13300, 98, 18, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Eevee - Baby-Doll Eyes - Level 15
  (133, 13300, 608, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Eevee - Swift - Level 20
  (133, 13300, 129, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Eevee - Bite - Level 25
  (133, 13300, 44, 18, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Eevee - Copycat - Level 30
  (133, 13300, 383, 18, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Eevee - Baton Pass - Level 35
  (133, 13300, 226, 18, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Eevee - Take Down - Level 40
  (133, 13300, 36, 18, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Eevee - Charm - Level 45
  (133, 13300, 204, 18, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Eevee - Double-Edge - Level 50
  (133, 13300, 38, 18, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Eevee - Last Resort - Level 55
  (133, 13300, 387, 18, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Eevee - Pay Day - TM02
  (133, 13300, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 17),
  -- Eevee - Dig - TM15
  (133, 13300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Eevee - Rest - TM21
  (133, 13300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Eevee - Snore - TM24
  (133, 13300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Eevee - Protect - TM25
  (133, 13300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Eevee - Charm - TM29
  (133, 13300, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 22),
  -- Eevee - Attract - TM31
  (133, 13300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Eevee - Rain Dance - TM33
  (133, 13300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Eevee - Sunny Day - TM34
  (133, 13300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Eevee - Facade - TM39
  (133, 13300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Eevee - Swift - TM40
  (133, 13300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Eevee - Helping Hand - TM41
  (133, 13300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Eevee - Weather Ball - TM46
  (133, 13300, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 29),
  -- Eevee - Fake Tears - TM47
  (133, 13300, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 30),
  -- Eevee - Round - TM76
  (133, 13300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Eevee - Retaliate - TM79
  (133, 13300, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 32),
  -- Eevee - Body Slam - TR01
  (133, 13300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 33),
  -- Eevee - Focus Energy - TR13
  (133, 13300, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 34),
  -- Eevee - Substitute - TR20
  (133, 13300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Eevee - Endure - TR26
  (133, 13300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Eevee - Sleep Talk - TR27
  (133, 13300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Eevee - Baton Pass - TR29
  (133, 13300, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 38),
  -- Eevee - Iron Tail - TR31
  (133, 13300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 39),
  -- Eevee - Shadow Ball - TR33
  (133, 13300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 40),
  -- Eevee - Hyper Voice - TR42
  (133, 13300, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 41),
  -- Eevee - Stored Power - TR82
  (133, 13300, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 42),
  -- Eevee - Work Up - TR85
  (133, 13300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 43),
  -- Eevee - Double Kick - Egg
  (133, 13300, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Eevee - Curse - Egg
  (133, 13300, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Eevee - Flail - Egg
  (133, 13300, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Eevee - Mud-Slap - Egg
  (133, 13300, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Eevee - Detect - Egg
  (133, 13300, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Eevee - Wish - Egg
  (133, 13300, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Eevee - Yawn - Egg
  (133, 13300, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Eevee - Tickle - Egg
  (133, 13300, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Vaporeon - Tackle - Level 1
  (134, 13400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vaporeon - Take Down - Level 1
  (134, 13400, 36, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vaporeon - Double-Edge - Level 1
  (134, 13400, 38, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vaporeon - Tail Whip - Level 1
  (134, 13400, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vaporeon - Bite - Level 1
  (134, 13400, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vaporeon - Growl - Level 1
  (134, 13400, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Vaporeon - Water Gun - Level 1
  (134, 13400, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Vaporeon - Swift - Level 1
  (134, 13400, 129, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Vaporeon - Charm - Level 1
  (134, 13400, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Vaporeon - Baton Pass - Level 1
  (134, 13400, 226, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Vaporeon - Helping Hand - Level 1
  (134, 13400, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Vaporeon - Covet - Level 1
  (134, 13400, 343, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Vaporeon - Copycat - Level 1
  (134, 13400, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Vaporeon - Sand Attack - Level 5
  (134, 13400, 28, 18, NULL, 1, 5, NULL, NULL, NULL, 14),
  -- Vaporeon - Quick Attack - Level 10
  (134, 13400, 98, 18, NULL, 1, 10, NULL, NULL, NULL, 15),
  -- Vaporeon - Baby-Doll Eyes - Level 15
  (134, 13400, 608, 18, NULL, 1, 15, NULL, NULL, NULL, 16),
  -- Vaporeon - Haze - Level 20
  (134, 13400, 114, 18, NULL, 1, 20, NULL, NULL, NULL, 17),
  -- Vaporeon - Water Pulse - Level 25
  (134, 13400, 352, 18, NULL, 1, 25, NULL, NULL, NULL, 18),
  -- Vaporeon - Aurora Beam - Level 30
  (134, 13400, 62, 18, NULL, 1, 30, NULL, NULL, NULL, 19),
  -- Vaporeon - Aqua Ring - Level 35
  (134, 13400, 392, 18, NULL, 1, 35, NULL, NULL, NULL, 20),
  -- Vaporeon - Muddy Water - Level 40
  (134, 13400, 330, 18, NULL, 1, 40, NULL, NULL, NULL, 21),
  -- Vaporeon - Acid Armor - Level 45
  (134, 13400, 151, 18, NULL, 1, 45, NULL, NULL, NULL, 22),
  -- Vaporeon - Hydro Pump - Level 50
  (134, 13400, 56, 18, NULL, 1, 50, NULL, NULL, NULL, 23),
  -- Vaporeon - Last Resort - Level 55
  (134, 13400, 387, 18, NULL, 1, 55, NULL, NULL, NULL, 24),
  -- Vaporeon - Water Gun - Evolution
  (134, 13400, 55, 18, NULL, 7, NULL, NULL, NULL, NULL, 25),
  -- Vaporeon - Pay Day - TM02
  (134, 13400, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 26),
  -- Vaporeon - Hyper Beam - TM08
  (134, 13400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 27),
  -- Vaporeon - Giga Impact - TM09
  (134, 13400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 28),
  -- Vaporeon - Dig - TM15
  (134, 13400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 29),
  -- Vaporeon - Rest - TM21
  (134, 13400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 30),
  -- Vaporeon - Snore - TM24
  (134, 13400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 31),
  -- Vaporeon - Protect - TM25
  (134, 13400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 32),
  -- Vaporeon - Icy Wind - TM27
  (134, 13400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 33),
  -- Vaporeon - Charm - TM29
  (134, 13400, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 34),
  -- Vaporeon - Attract - TM31
  (134, 13400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 35),
  -- Vaporeon - Rain Dance - TM33
  (134, 13400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 36),
  -- Vaporeon - Sunny Day - TM34
  (134, 13400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 37),
  -- Vaporeon - Hail - TM35
  (134, 13400, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 38),
  -- Vaporeon - Whirlpool - TM36
  (134, 13400, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 39),
  -- Vaporeon - Facade - TM39
  (134, 13400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 40),
  -- Vaporeon - Swift - TM40
  (134, 13400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 41),
  -- Vaporeon - Helping Hand - TM41
  (134, 13400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 42),
  -- Vaporeon - Dive - TM45
  (134, 13400, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 43),
  -- Vaporeon - Weather Ball - TM46
  (134, 13400, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 44),
  -- Vaporeon - Fake Tears - TM47
  (134, 13400, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 45),
  -- Vaporeon - Brine - TM55
  (134, 13400, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 46),
  -- Vaporeon - Round - TM76
  (134, 13400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Vaporeon - Retaliate - TM79
  (134, 13400, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 48),
  -- Vaporeon - Body Slam - TR01
  (134, 13400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 49),
  -- Vaporeon - Hydro Pump - TR03
  (134, 13400, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 50),
  -- Vaporeon - Surf - TR04
  (134, 13400, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 51),
  -- Vaporeon - Ice Beam - TR05
  (134, 13400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 52),
  -- Vaporeon - Blizzard - TR06
  (134, 13400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 53),
  -- Vaporeon - Focus Energy - TR13
  (134, 13400, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 54),
  -- Vaporeon - Waterfall - TR16
  (134, 13400, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 55),
  -- Vaporeon - Substitute - TR20
  (134, 13400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Vaporeon - Endure - TR26
  (134, 13400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 57),
  -- Vaporeon - Sleep Talk - TR27
  (134, 13400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 58),
  -- Vaporeon - Baton Pass - TR29
  (134, 13400, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 59),
  -- Vaporeon - Iron Tail - TR31
  (134, 13400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 60),
  -- Vaporeon - Shadow Ball - TR33
  (134, 13400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 61),
  -- Vaporeon - Hyper Voice - TR42
  (134, 13400, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 62),
  -- Vaporeon - Muddy Water - TR45
  (134, 13400, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 63),
  -- Vaporeon - Stored Power - TR82
  (134, 13400, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 64),
  -- Vaporeon - Scald - TR84
  (134, 13400, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 65),
  -- Vaporeon - Work Up - TR85
  (134, 13400, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 66),
  -- Vaporeon - Liquidation - TR98
  (134, 13400, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 67),
  -- Jolteon - Tackle - Level 1
  (135, 13500, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jolteon - Take Down - Level 1
  (135, 13500, 36, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jolteon - Double-Edge - Level 1
  (135, 13500, 38, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jolteon - Tail Whip - Level 1
  (135, 13500, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jolteon - Bite - Level 1
  (135, 13500, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Jolteon - Growl - Level 1
  (135, 13500, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Jolteon - Thunder Shock - Level 1
  (135, 13500, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Jolteon - Swift - Level 1
  (135, 13500, 129, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Jolteon - Charm - Level 1
  (135, 13500, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Jolteon - Baton Pass - Level 1
  (135, 13500, 226, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Jolteon - Helping Hand - Level 1
  (135, 13500, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Jolteon - Covet - Level 1
  (135, 13500, 343, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Jolteon - Copycat - Level 1
  (135, 13500, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Jolteon - Sand Attack - Level 5
  (135, 13500, 28, 18, NULL, 1, 5, NULL, NULL, NULL, 14),
  -- Jolteon - Quick Attack - Level 10
  (135, 13500, 98, 18, NULL, 1, 10, NULL, NULL, NULL, 15),
  -- Jolteon - Baby-Doll Eyes - Level 15
  (135, 13500, 608, 18, NULL, 1, 15, NULL, NULL, NULL, 16),
  -- Jolteon - Thunder Wave - Level 20
  (135, 13500, 86, 18, NULL, 1, 20, NULL, NULL, NULL, 17),
  -- Jolteon - Double Kick - Level 25
  (135, 13500, 24, 18, NULL, 1, 25, NULL, NULL, NULL, 18),
  -- Jolteon - Thunder Fang - Level 30
  (135, 13500, 422, 18, NULL, 1, 30, NULL, NULL, NULL, 19),
  -- Jolteon - Pin Missile - Level 35
  (135, 13500, 42, 18, NULL, 1, 35, NULL, NULL, NULL, 20),
  -- Jolteon - Discharge - Level 40
  (135, 13500, 435, 18, NULL, 1, 40, NULL, NULL, NULL, 21),
  -- Jolteon - Agility - Level 45
  (135, 13500, 97, 18, NULL, 1, 45, NULL, NULL, NULL, 22),
  -- Jolteon - Thunder - Level 50
  (135, 13500, 87, 18, NULL, 1, 50, NULL, NULL, NULL, 23),
  -- Jolteon - Last Resort - Level 55
  (135, 13500, 387, 18, NULL, 1, 55, NULL, NULL, NULL, 24),
  -- Jolteon - Thunder Shock - Evolution
  (135, 13500, 84, 18, NULL, 7, NULL, NULL, NULL, NULL, 25),
  -- Jolteon - Pay Day - TM02
  (135, 13500, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 26),
  -- Jolteon - Pin Missile - TM07
  (135, 13500, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 27),
  -- Jolteon - Hyper Beam - TM08
  (135, 13500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 28),
  -- Jolteon - Giga Impact - TM09
  (135, 13500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 29),
  -- Jolteon - Thunder Wave - TM14
  (135, 13500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 30),
  -- Jolteon - Dig - TM15
  (135, 13500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 31),
  -- Jolteon - Light Screen - TM17
  (135, 13500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 32),
  -- Jolteon - Rest - TM21
  (135, 13500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 33),
  -- Jolteon - Snore - TM24
  (135, 13500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 34),
  -- Jolteon - Protect - TM25
  (135, 13500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 35),
  -- Jolteon - Charm - TM29
  (135, 13500, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 36),
  -- Jolteon - Attract - TM31
  (135, 13500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 37),
  -- Jolteon - Rain Dance - TM33
  (135, 13500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 38),
  -- Jolteon - Sunny Day - TM34
  (135, 13500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 39),
  -- Jolteon - Facade - TM39
  (135, 13500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 40),
  -- Jolteon - Swift - TM40
  (135, 13500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 41),
  -- Jolteon - Helping Hand - TM41
  (135, 13500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 42),
  -- Jolteon - Weather Ball - TM46
  (135, 13500, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 43),
  -- Jolteon - Fake Tears - TM47
  (135, 13500, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 44),
  -- Jolteon - Thunder Fang - TM66
  (135, 13500, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 45),
  -- Jolteon - Round - TM76
  (135, 13500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 46),
  -- Jolteon - Retaliate - TM79
  (135, 13500, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 47),
  -- Jolteon - Volt Switch - TM80
  (135, 13500, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 48),
  -- Jolteon - Body Slam - TR01
  (135, 13500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 49),
  -- Jolteon - Thunderbolt - TR08
  (135, 13500, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 50),
  -- Jolteon - Thunder - TR09
  (135, 13500, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 51),
  -- Jolteon - Agility - TR12
  (135, 13500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 52),
  -- Jolteon - Focus Energy - TR13
  (135, 13500, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 53),
  -- Jolteon - Substitute - TR20
  (135, 13500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 54),
  -- Jolteon - Endure - TR26
  (135, 13500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 55),
  -- Jolteon - Sleep Talk - TR27
  (135, 13500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 56),
  -- Jolteon - Baton Pass - TR29
  (135, 13500, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 57),
  -- Jolteon - Iron Tail - TR31
  (135, 13500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 58),
  -- Jolteon - Shadow Ball - TR33
  (135, 13500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 59),
  -- Jolteon - Hyper Voice - TR42
  (135, 13500, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 60),
  -- Jolteon - Electro Ball - TR80
  (135, 13500, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 61),
  -- Jolteon - Stored Power - TR82
  (135, 13500, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 62),
  -- Jolteon - Work Up - TR85
  (135, 13500, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 63),
  -- Jolteon - Wild Charge - TR86
  (135, 13500, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 64),
  -- Flareon - Tackle - Level 1
  (136, 13600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flareon - Take Down - Level 1
  (136, 13600, 36, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flareon - Double-Edge - Level 1
  (136, 13600, 38, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flareon - Tail Whip - Level 1
  (136, 13600, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Flareon - Growl - Level 1
  (136, 13600, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Flareon - Ember - Level 1
  (136, 13600, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Flareon - Swift - Level 1
  (136, 13600, 129, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Flareon - Charm - Level 1
  (136, 13600, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Flareon - Baton Pass - Level 1
  (136, 13600, 226, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Flareon - Helping Hand - Level 1
  (136, 13600, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Flareon - Covet - Level 1
  (136, 13600, 343, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Flareon - Copycat - Level 1
  (136, 13600, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Flareon - Sand Attack - Level 5
  (136, 13600, 28, 18, NULL, 1, 5, NULL, NULL, NULL, 13),
  -- Flareon - Quick Attack - Level 10
  (136, 13600, 98, 18, NULL, 1, 10, NULL, NULL, NULL, 14),
  -- Flareon - Baby-Doll Eyes - Level 15
  (136, 13600, 608, 18, NULL, 1, 15, NULL, NULL, NULL, 15),
  -- Flareon - Smog - Level 20
  (136, 13600, 123, 18, NULL, 1, 20, NULL, NULL, NULL, 16),
  -- Flareon - Bite - Level 25
  (136, 13600, 44, 18, NULL, 1, 25, NULL, NULL, NULL, 17),
  -- Flareon - Fire Fang - Level 30
  (136, 13600, 424, 18, NULL, 1, 30, NULL, NULL, NULL, 18),
  -- Flareon - Fire Spin - Level 35
  (136, 13600, 83, 18, NULL, 1, 35, NULL, NULL, NULL, 19),
  -- Flareon - Lava Plume - Level 40
  (136, 13600, 436, 18, NULL, 1, 40, NULL, NULL, NULL, 20),
  -- Flareon - Scary Face - Level 45
  (136, 13600, 184, 18, NULL, 1, 45, NULL, NULL, NULL, 21),
  -- Flareon - Flare Blitz - Level 50
  (136, 13600, 394, 18, NULL, 1, 50, NULL, NULL, NULL, 22),
  -- Flareon - Last Resort - Level 55
  (136, 13600, 387, 18, NULL, 1, 55, NULL, NULL, NULL, 23),
  -- Flareon - Ember - Evolution
  (136, 13600, 52, 18, NULL, 7, NULL, NULL, NULL, NULL, 24),
  -- Flareon - Pay Day - TM02
  (136, 13600, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 25),
  -- Flareon - Hyper Beam - TM08
  (136, 13600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 26),
  -- Flareon - Giga Impact - TM09
  (136, 13600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 27),
  -- Flareon - Fire Spin - TM13
  (136, 13600, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 28),
  -- Flareon - Dig - TM15
  (136, 13600, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 29),
  -- Flareon - Rest - TM21
  (136, 13600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 30),
  -- Flareon - Snore - TM24
  (136, 13600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 31),
  -- Flareon - Protect - TM25
  (136, 13600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 32),
  -- Flareon - Scary Face - TM26
  (136, 13600, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 33),
  -- Flareon - Charm - TM29
  (136, 13600, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 34),
  -- Flareon - Attract - TM31
  (136, 13600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 35),
  -- Flareon - Rain Dance - TM33
  (136, 13600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 36),
  -- Flareon - Sunny Day - TM34
  (136, 13600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 37),
  -- Flareon - Will-O-Wisp - TM38
  (136, 13600, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 38),
  -- Flareon - Facade - TM39
  (136, 13600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 39),
  -- Flareon - Swift - TM40
  (136, 13600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 40),
  -- Flareon - Helping Hand - TM41
  (136, 13600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 41),
  -- Flareon - Weather Ball - TM46
  (136, 13600, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 42),
  -- Flareon - Fake Tears - TM47
  (136, 13600, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 43),
  -- Flareon - Fire Fang - TM68
  (136, 13600, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 44),
  -- Flareon - Round - TM76
  (136, 13600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Flareon - Retaliate - TM79
  (136, 13600, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 46),
  -- Flareon - Mystical Fire - TM92
  (136, 13600, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 47),
  -- Flareon - Body Slam - TR01
  (136, 13600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 48),
  -- Flareon - Flamethrower - TR02
  (136, 13600, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 49),
  -- Flareon - Focus Energy - TR13
  (136, 13600, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 50),
  -- Flareon - Fire Blast - TR15
  (136, 13600, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 51),
  -- Flareon - Substitute - TR20
  (136, 13600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 52),
  -- Flareon - Endure - TR26
  (136, 13600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Flareon - Sleep Talk - TR27
  (136, 13600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Flareon - Baton Pass - TR29
  (136, 13600, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 55),
  -- Flareon - Iron Tail - TR31
  (136, 13600, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 56),
  -- Flareon - Shadow Ball - TR33
  (136, 13600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 57),
  -- Flareon - Heat Wave - TR36
  (136, 13600, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 58),
  -- Flareon - Superpower - TR39
  (136, 13600, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 59),
  -- Flareon - Hyper Voice - TR42
  (136, 13600, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 60),
  -- Flareon - Overheat - TR43
  (136, 13600, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 61),
  -- Flareon - Flare Blitz - TR55
  (136, 13600, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 62),
  -- Flareon - Stored Power - TR82
  (136, 13600, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 63),
  -- Flareon - Work Up - TR85
  (136, 13600, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 64),
  -- Porygon - Tackle - Level 1
  (137, 13700, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon - Conversion - Level 1
  (137, 13700, 160, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon - Recycle - Level 5
  (137, 13700, 278, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Porygon - Magnet Rise - Level 10
  (137, 13700, 393, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Porygon - Thunder Shock - Level 15
  (137, 13700, 84, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Porygon - Psybeam - Level 20
  (137, 13700, 60, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Porygon - Conversion 2 - Level 25
  (137, 13700, 176, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Porygon - Agility - Level 30
  (137, 13700, 97, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Porygon - Recover - Level 35
  (137, 13700, 105, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Porygon - Discharge - Level 40
  (137, 13700, 435, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Porygon - Tri Attack - Level 45
  (137, 13700, 161, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Porygon - Magic Coat - Level 50
  (137, 13700, 277, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Porygon - Lock-On - Level 55
  (137, 13700, 199, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Porygon - Zap Cannon - Level 60
  (137, 13700, 192, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Porygon - Hyper Beam - TM08
  (137, 13700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Porygon - Giga Impact - TM09
  (137, 13700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Porygon - Solar Beam - TM11
  (137, 13700, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Porygon - Thunder Wave - TM14
  (137, 13700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Porygon - Rest - TM21
  (137, 13700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Porygon - Thief - TM23
  (137, 13700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 20),
  -- Porygon - Snore - TM24
  (137, 13700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Porygon - Protect - TM25
  (137, 13700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Porygon - Icy Wind - TM27
  (137, 13700, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 23),
  -- Porygon - Rain Dance - TM33
  (137, 13700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Porygon - Sunny Day - TM34
  (137, 13700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Porygon - Facade - TM39
  (137, 13700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Porygon - Swift - TM40
  (137, 13700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Porygon - Power Swap - TM60
  (137, 13700, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 28),
  -- Porygon - Guard Swap - TM61
  (137, 13700, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 29),
  -- Porygon - Speed Swap - TM62
  (137, 13700, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 30),
  -- Porygon - Trick Room - TM70
  (137, 13700, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 31),
  -- Porygon - Wonder Room - TM71
  (137, 13700, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 32),
  -- Porygon - Round - TM76
  (137, 13700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Porygon - Electroweb - TM82
  (137, 13700, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 34),
  -- Porygon - Eerie Impulse - TM93
  (137, 13700, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 35),
  -- Porygon - Ice Beam - TR05
  (137, 13700, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 36),
  -- Porygon - Blizzard - TR06
  (137, 13700, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 37),
  -- Porygon - Thunderbolt - TR08
  (137, 13700, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 38),
  -- Porygon - Thunder - TR09
  (137, 13700, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 39),
  -- Porygon - Psychic - TR11
  (137, 13700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 40),
  -- Porygon - Agility - TR12
  (137, 13700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 41),
  -- Porygon - Tri Attack - TR19
  (137, 13700, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 42),
  -- Porygon - Substitute - TR20
  (137, 13700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Porygon - Psyshock - TR25
  (137, 13700, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 44),
  -- Porygon - Endure - TR26
  (137, 13700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Porygon - Sleep Talk - TR27
  (137, 13700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Porygon - Iron Tail - TR31
  (137, 13700, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 47),
  -- Porygon - Shadow Ball - TR33
  (137, 13700, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 48),
  -- Porygon - Trick - TR38
  (137, 13700, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 49),
  -- Porygon - Zen Headbutt - TR69
  (137, 13700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 50),
  -- Porygon - Foul Play - TR81
  (137, 13700, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 51),
  -- Porygon - Ally Switch - TR83
  (137, 13700, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 52),
  -- Omanyte - Bind - Level 1
  (138, 13800, 20, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Omanyte - Withdraw - Level 1
  (138, 13800, 110, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Omanyte - Rollout - Level 5
  (138, 13800, 205, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Omanyte - Sand Attack - Level 10
  (138, 13800, 28, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Omanyte - Water Gun - Level 15
  (138, 13800, 55, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Omanyte - Leer - Level 20
  (138, 13800, 43, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Omanyte - Mud Shot - Level 25
  (138, 13800, 341, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Omanyte - Ancient Power - Level 30
  (138, 13800, 246, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Omanyte - Brine - Level 35
  (138, 13800, 362, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Omanyte - Protect - Level 41
  (138, 13800, 182, 18, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Omanyte - Rock Blast - Level 45
  (138, 13800, 350, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Omanyte - Surf - Level 50
  (138, 13800, 57, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Omanyte - Shell Smash - Level 55
  (138, 13800, 504, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Omanyte - Hydro Pump - Level 60
  (138, 13800, 56, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Omanyte - Rest - TM21
  (138, 13800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Omanyte - Rock Slide - TM22
  (138, 13800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 16),
  -- Omanyte - Thief - TM23
  (138, 13800, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 17),
  -- Omanyte - Snore - TM24
  (138, 13800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Omanyte - Protect - TM25
  (138, 13800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Omanyte - Icy Wind - TM27
  (138, 13800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 20),
  -- Omanyte - Attract - TM31
  (138, 13800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Omanyte - Sandstorm - TM32
  (138, 13800, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 22),
  -- Omanyte - Rain Dance - TM33
  (138, 13800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Omanyte - Hail - TM35
  (138, 13800, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 24),
  -- Omanyte - Whirlpool - TM36
  (138, 13800, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 25),
  -- Omanyte - Facade - TM39
  (138, 13800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Omanyte - Dive - TM45
  (138, 13800, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 27),
  -- Omanyte - Rock Tomb - TM48
  (138, 13800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 28),
  -- Omanyte - Mud Shot - TM53
  (138, 13800, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 29),
  -- Omanyte - Rock Blast - TM54
  (138, 13800, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 30),
  -- Omanyte - Brine - TM55
  (138, 13800, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 31),
  -- Omanyte - Round - TM76
  (138, 13800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Omanyte - Body Slam - TR01
  (138, 13800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 33),
  -- Omanyte - Hydro Pump - TR03
  (138, 13800, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 34),
  -- Omanyte - Surf - TR04
  (138, 13800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 35),
  -- Omanyte - Ice Beam - TR05
  (138, 13800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 36),
  -- Omanyte - Blizzard - TR06
  (138, 13800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 37),
  -- Omanyte - Waterfall - TR16
  (138, 13800, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 38),
  -- Omanyte - Substitute - TR20
  (138, 13800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Omanyte - Spikes - TR23
  (138, 13800, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 40),
  -- Omanyte - Endure - TR26
  (138, 13800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Omanyte - Sleep Talk - TR27
  (138, 13800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Omanyte - Muddy Water - TR45
  (138, 13800, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 43),
  -- Omanyte - Iron Defense - TR46
  (138, 13800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 44),
  -- Omanyte - Gyro Ball - TR52
  (138, 13800, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 45),
  -- Omanyte - Toxic Spikes - TR54
  (138, 13800, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 46),
  -- Omanyte - Earth Power - TR67
  (138, 13800, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 47),
  -- Omanyte - Stealth Rock - TR76
  (138, 13800, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 48),
  -- Omanyte - Scald - TR84
  (138, 13800, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 49),
  -- Omanyte - Slam - Egg
  (138, 13800, 21, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Omanyte - Bite - Egg
  (138, 13800, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Omanyte - Supersonic - Egg
  (138, 13800, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Omanyte - Bubble Beam - Egg
  (138, 13800, 61, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Omanyte - Aurora Beam - Egg
  (138, 13800, 62, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Omanyte - Haze - Egg
  (138, 13800, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Omanyte - Knock Off - Egg
  (138, 13800, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Omanyte - Tickle - Egg
  (138, 13800, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Omanyte - Water Pulse - Egg
  (138, 13800, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Omanyte - Reflect Type - Egg
  (138, 13800, 513, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Omastar - Bind - Level 1
  (139, 13900, 20, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Omastar - Sand Attack - Level 1
  (139, 13900, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Omastar - Withdraw - Level 1
  (139, 13900, 110, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Omastar - Rollout - Level 1
  (139, 13900, 205, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Omastar - Crunch - Level 1
  (139, 13900, 242, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Omastar - Water Gun - Level 15
  (139, 13900, 55, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Omastar - Leer - Level 20
  (139, 13900, 43, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Omastar - Mud Shot - Level 25
  (139, 13900, 341, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Omastar - Ancient Power - Level 30
  (139, 13900, 246, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Omastar - Brine - Level 35
  (139, 13900, 362, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Omastar - Protect - Level 43
  (139, 13900, 182, 18, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Omastar - Rock Blast - Level 49
  (139, 13900, 350, 18, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Omastar - Surf - Level 56
  (139, 13900, 57, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Omastar - Shell Smash - Level 63
  (139, 13900, 504, 18, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Omastar - Hydro Pump - Level 70
  (139, 13900, 56, 18, NULL, 1, 70, NULL, NULL, NULL, 15),
  -- Omastar - Crunch - Evolution
  (139, 13900, 242, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Omastar - Pin Missile - TM07
  (139, 13900, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 17),
  -- Omastar - Hyper Beam - TM08
  (139, 13900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Omastar - Giga Impact - TM09
  (139, 13900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Omastar - Rest - TM21
  (139, 13900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Omastar - Rock Slide - TM22
  (139, 13900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Omastar - Thief - TM23
  (139, 13900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 22),
  -- Omastar - Snore - TM24
  (139, 13900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Omastar - Protect - TM25
  (139, 13900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Omastar - Icy Wind - TM27
  (139, 13900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 25),
  -- Omastar - Attract - TM31
  (139, 13900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Omastar - Sandstorm - TM32
  (139, 13900, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 27),
  -- Omastar - Rain Dance - TM33
  (139, 13900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Omastar - Hail - TM35
  (139, 13900, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 29),
  -- Omastar - Whirlpool - TM36
  (139, 13900, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 30),
  -- Omastar - Facade - TM39
  (139, 13900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Omastar - Dive - TM45
  (139, 13900, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 32),
  -- Omastar - Rock Tomb - TM48
  (139, 13900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Omastar - Mud Shot - TM53
  (139, 13900, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 34),
  -- Omastar - Rock Blast - TM54
  (139, 13900, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 35),
  -- Omastar - Brine - TM55
  (139, 13900, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 36),
  -- Omastar - Round - TM76
  (139, 13900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Omastar - Body Slam - TR01
  (139, 13900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 38),
  -- Omastar - Hydro Pump - TR03
  (139, 13900, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 39),
  -- Omastar - Surf - TR04
  (139, 13900, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 40),
  -- Omastar - Ice Beam - TR05
  (139, 13900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 41),
  -- Omastar - Blizzard - TR06
  (139, 13900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 42),
  -- Omastar - Waterfall - TR16
  (139, 13900, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 43),
  -- Omastar - Substitute - TR20
  (139, 13900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Omastar - Spikes - TR23
  (139, 13900, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 45),
  -- Omastar - Endure - TR26
  (139, 13900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Omastar - Sleep Talk - TR27
  (139, 13900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Omastar - Crunch - TR32
  (139, 13900, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 48),
  -- Omastar - Muddy Water - TR45
  (139, 13900, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 49),
  -- Omastar - Iron Defense - TR46
  (139, 13900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 50),
  -- Omastar - Gyro Ball - TR52
  (139, 13900, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 51),
  -- Omastar - Toxic Spikes - TR54
  (139, 13900, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 52),
  -- Omastar - Earth Power - TR67
  (139, 13900, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 53),
  -- Omastar - Stone Edge - TR75
  (139, 13900, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 54),
  -- Omastar - Stealth Rock - TR76
  (139, 13900, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 55),
  -- Omastar - Scald - TR84
  (139, 13900, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 56),
  -- Omastar - Liquidation - TR98
  (139, 13900, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 57),
  -- Kabuto - Absorb - Level 1
  (140, 14000, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kabuto - Harden - Level 1
  (140, 14000, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kabuto - Scratch - Level 5
  (140, 14000, 10, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Kabuto - Sand Attack - Level 10
  (140, 14000, 28, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Kabuto - Aqua Jet - Level 15
  (140, 14000, 453, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Kabuto - Leer - Level 20
  (140, 14000, 43, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Kabuto - Mud Shot - Level 25
  (140, 14000, 341, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Kabuto - Ancient Power - Level 30
  (140, 14000, 246, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Kabuto - Brine - Level 35
  (140, 14000, 362, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Kabuto - Protect - Level 41
  (140, 14000, 182, 18, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Kabuto - Leech Life - Level 45
  (140, 14000, 141, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Kabuto - Liquidation - Level 50
  (140, 14000, 710, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Kabuto - Metal Sound - Level 55
  (140, 14000, 319, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Kabuto - Stone Edge - Level 60
  (140, 14000, 444, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Kabuto - Dig - TM15
  (140, 14000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 15),
  -- Kabuto - Screech - TM16
  (140, 14000, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 16),
  -- Kabuto - Rest - TM21
  (140, 14000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Kabuto - Rock Slide - TM22
  (140, 14000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 18),
  -- Kabuto - Thief - TM23
  (140, 14000, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 19),
  -- Kabuto - Snore - TM24
  (140, 14000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Kabuto - Protect - TM25
  (140, 14000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Kabuto - Icy Wind - TM27
  (140, 14000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 22),
  -- Kabuto - Giga Drain - TM28
  (140, 14000, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 23),
  -- Kabuto - Attract - TM31
  (140, 14000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Kabuto - Sandstorm - TM32
  (140, 14000, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 25),
  -- Kabuto - Rain Dance - TM33
  (140, 14000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Kabuto - Hail - TM35
  (140, 14000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 27),
  -- Kabuto - Whirlpool - TM36
  (140, 14000, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 28),
  -- Kabuto - Facade - TM39
  (140, 14000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Kabuto - Rock Tomb - TM48
  (140, 14000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Kabuto - Mud Shot - TM53
  (140, 14000, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 31),
  -- Kabuto - Rock Blast - TM54
  (140, 14000, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 32),
  -- Kabuto - Brine - TM55
  (140, 14000, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 33),
  -- Kabuto - Round - TM76
  (140, 14000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Kabuto - Body Slam - TR01
  (140, 14000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 35),
  -- Kabuto - Hydro Pump - TR03
  (140, 14000, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 36),
  -- Kabuto - Surf - TR04
  (140, 14000, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 37),
  -- Kabuto - Ice Beam - TR05
  (140, 14000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 38),
  -- Kabuto - Blizzard - TR06
  (140, 14000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 39),
  -- Kabuto - Waterfall - TR16
  (140, 14000, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 40),
  -- Kabuto - Leech Life - TR18
  (140, 14000, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 41),
  -- Kabuto - Substitute - TR20
  (140, 14000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Kabuto - Endure - TR26
  (140, 14000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Kabuto - Sleep Talk - TR27
  (140, 14000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Kabuto - Iron Defense - TR46
  (140, 14000, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 45),
  -- Kabuto - Earth Power - TR67
  (140, 14000, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 46),
  -- Kabuto - Stone Edge - TR75
  (140, 14000, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 47),
  -- Kabuto - Stealth Rock - TR76
  (140, 14000, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 48),
  -- Kabuto - Scald - TR84
  (140, 14000, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 49),
  -- Kabuto - Liquidation - TR98
  (140, 14000, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 50),
  -- Kabuto - Take Down - Egg
  (140, 14000, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Kabuto - Bubble Beam - Egg
  (140, 14000, 61, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Kabuto - Aurora Beam - Egg
  (140, 14000, 62, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Kabuto - Mega Drain - Egg
  (140, 14000, 72, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Kabuto - Confuse Ray - Egg
  (140, 14000, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Kabuto - Flail - Egg
  (140, 14000, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Kabuto - Rapid Spin - Egg
  (140, 14000, 229, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Kabuto - Knock Off - Egg
  (140, 14000, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Kabutops - Scratch - Level 1
  (141, 14100, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kabutops - Sand Attack - Level 1
  (141, 14100, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kabutops - Absorb - Level 1
  (141, 14100, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kabutops - Harden - Level 1
  (141, 14100, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kabutops - Slash - Level 1
  (141, 14100, 163, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kabutops - Feint - Level 1
  (141, 14100, 364, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Kabutops - Night Slash - Level 1
  (141, 14100, 400, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Kabutops - Aqua Jet - Level 15
  (141, 14100, 453, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Kabutops - Leer - Level 20
  (141, 14100, 43, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Kabutops - Mud Shot - Level 25
  (141, 14100, 341, 18, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Kabutops - Ancient Power - Level 30
  (141, 14100, 246, 18, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Kabutops - Brine - Level 35
  (141, 14100, 362, 18, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Kabutops - Protect - Level 43
  (141, 14100, 182, 18, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Kabutops - Leech Life - Level 49
  (141, 14100, 141, 18, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Kabutops - Liquidation - Level 56
  (141, 14100, 710, 18, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Kabutops - Metal Sound - Level 63
  (141, 14100, 319, 18, NULL, 1, 63, NULL, NULL, NULL, 16),
  -- Kabutops - Stone Edge - Level 70
  (141, 14100, 444, 18, NULL, 1, 70, NULL, NULL, NULL, 17),
  -- Kabutops - Slash - Evolution
  (141, 14100, 163, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Kabutops - Mega Kick - TM01
  (141, 14100, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 19),
  -- Kabutops - Hyper Beam - TM08
  (141, 14100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Kabutops - Giga Impact - TM09
  (141, 14100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Kabutops - Dig - TM15
  (141, 14100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 22),
  -- Kabutops - Screech - TM16
  (141, 14100, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 23),
  -- Kabutops - Rest - TM21
  (141, 14100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Kabutops - Rock Slide - TM22
  (141, 14100, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 25),
  -- Kabutops - Thief - TM23
  (141, 14100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 26),
  -- Kabutops - Snore - TM24
  (141, 14100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Kabutops - Protect - TM25
  (141, 14100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Kabutops - Icy Wind - TM27
  (141, 14100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 29),
  -- Kabutops - Giga Drain - TM28
  (141, 14100, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 30),
  -- Kabutops - Attract - TM31
  (141, 14100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 31),
  -- Kabutops - Sandstorm - TM32
  (141, 14100, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 32),
  -- Kabutops - Rain Dance - TM33
  (141, 14100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 33),
  -- Kabutops - Hail - TM35
  (141, 14100, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 34),
  -- Kabutops - Whirlpool - TM36
  (141, 14100, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 35),
  -- Kabutops - Facade - TM39
  (141, 14100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Kabutops - Brick Break - TM43
  (141, 14100, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 37),
  -- Kabutops - Dive - TM45
  (141, 14100, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 38),
  -- Kabutops - Rock Tomb - TM48
  (141, 14100, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 39),
  -- Kabutops - Mud Shot - TM53
  (141, 14100, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 40),
  -- Kabutops - Rock Blast - TM54
  (141, 14100, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 41),
  -- Kabutops - Brine - TM55
  (141, 14100, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 42),
  -- Kabutops - Psycho Cut - TM69
  (141, 14100, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 43),
  -- Kabutops - Cross Poison - TM73
  (141, 14100, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 44),
  -- Kabutops - Round - TM76
  (141, 14100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Kabutops - Razor Shell - TM83
  (141, 14100, 534, 18, NULL, 2, NULL, NULL, 18002083, NULL, 46),
  -- Kabutops - Swords Dance - TR00
  (141, 14100, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 47),
  -- Kabutops - Body Slam - TR01
  (141, 14100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 48),
  -- Kabutops - Hydro Pump - TR03
  (141, 14100, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 49),
  -- Kabutops - Surf - TR04
  (141, 14100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 50),
  -- Kabutops - Ice Beam - TR05
  (141, 14100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 51),
  -- Kabutops - Blizzard - TR06
  (141, 14100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 52),
  -- Kabutops - Low Kick - TR07
  (141, 14100, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 53),
  -- Kabutops - Waterfall - TR16
  (141, 14100, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 54),
  -- Kabutops - Leech Life - TR18
  (141, 14100, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 55),
  -- Kabutops - Substitute - TR20
  (141, 14100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Kabutops - Endure - TR26
  (141, 14100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 57),
  -- Kabutops - Sleep Talk - TR27
  (141, 14100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 58),
  -- Kabutops - Superpower - TR39
  (141, 14100, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 59),
  -- Kabutops - Iron Defense - TR46
  (141, 14100, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 60),
  -- Kabutops - X-Scissor - TR60
  (141, 14100, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 61),
  -- Kabutops - Earth Power - TR67
  (141, 14100, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 62),
  -- Kabutops - Stone Edge - TR75
  (141, 14100, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 63),
  -- Kabutops - Stealth Rock - TR76
  (141, 14100, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 64),
  -- Kabutops - Scald - TR84
  (141, 14100, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 65),
  -- Kabutops - Liquidation - TR98
  (141, 14100, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 66),
  -- Aerodactyl - Bite - Level 1
  (142, 14200, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aerodactyl - Ancient Power - Level 1
  (142, 14200, 246, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aerodactyl - Supersonic - Level 5
  (142, 14200, 48, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Aerodactyl - Wing Attack - Level 10
  (142, 14200, 17, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Aerodactyl - Scary Face - Level 15
  (142, 14200, 184, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Aerodactyl - Rock Slide - Level 20
  (142, 14200, 157, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Aerodactyl - Roar - Level 25
  (142, 14200, 46, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Aerodactyl - Crunch - Level 30
  (142, 14200, 242, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Aerodactyl - Iron Head - Level 35
  (142, 14200, 442, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Aerodactyl - Take Down - Level 40
  (142, 14200, 36, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Aerodactyl - Stone Edge - Level 45
  (142, 14200, 444, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Aerodactyl - Agility - Level 50
  (142, 14200, 97, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Aerodactyl - Hyper Beam - Level 55
  (142, 14200, 63, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Aerodactyl - Giga Impact - Level 60
  (142, 14200, 416, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Aerodactyl - Fly - TM06
  (142, 14200, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 15),
  -- Aerodactyl - Hyper Beam - TM08
  (142, 14200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Aerodactyl - Giga Impact - TM09
  (142, 14200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Aerodactyl - Rest - TM21
  (142, 14200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Aerodactyl - Rock Slide - TM22
  (142, 14200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 19),
  -- Aerodactyl - Thief - TM23
  (142, 14200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 20),
  -- Aerodactyl - Snore - TM24
  (142, 14200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Aerodactyl - Protect - TM25
  (142, 14200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Aerodactyl - Scary Face - TM26
  (142, 14200, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 23),
  -- Aerodactyl - Steel Wing - TM30
  (142, 14200, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 24),
  -- Aerodactyl - Attract - TM31
  (142, 14200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Aerodactyl - Sandstorm - TM32
  (142, 14200, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 26),
  -- Aerodactyl - Rain Dance - TM33
  (142, 14200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Aerodactyl - Sunny Day - TM34
  (142, 14200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Aerodactyl - Facade - TM39
  (142, 14200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Aerodactyl - Swift - TM40
  (142, 14200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 30),
  -- Aerodactyl - Rock Tomb - TM48
  (142, 14200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 31),
  -- Aerodactyl - Rock Blast - TM54
  (142, 14200, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 32),
  -- Aerodactyl - Payback - TM57
  (142, 14200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 33),
  -- Aerodactyl - Assurance - TM58
  (142, 14200, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 34),
  -- Aerodactyl - Thunder Fang - TM66
  (142, 14200, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 35),
  -- Aerodactyl - Ice Fang - TM67
  (142, 14200, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 36),
  -- Aerodactyl - Fire Fang - TM68
  (142, 14200, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 37),
  -- Aerodactyl - Round - TM76
  (142, 14200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Aerodactyl - Bulldoze - TM81
  (142, 14200, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 39),
  -- Aerodactyl - Brutal Swing - TM97
  (142, 14200, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 40),
  -- Aerodactyl - Flamethrower - TR02
  (142, 14200, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 41),
  -- Aerodactyl - Earthquake - TR10
  (142, 14200, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 42),
  -- Aerodactyl - Agility - TR12
  (142, 14200, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 43),
  -- Aerodactyl - Fire Blast - TR15
  (142, 14200, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 44),
  -- Aerodactyl - Substitute - TR20
  (142, 14200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Aerodactyl - Endure - TR26
  (142, 14200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Aerodactyl - Sleep Talk - TR27
  (142, 14200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Aerodactyl - Iron Tail - TR31
  (142, 14200, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 48),
  -- Aerodactyl - Crunch - TR32
  (142, 14200, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 49),
  -- Aerodactyl - Heat Wave - TR36
  (142, 14200, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 50),
  -- Aerodactyl - Taunt - TR37
  (142, 14200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 51),
  -- Aerodactyl - Dragon Claw - TR47
  (142, 14200, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 52),
  -- Aerodactyl - Dragon Dance - TR51
  (142, 14200, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 53),
  -- Aerodactyl - Dragon Pulse - TR62
  (142, 14200, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 54),
  -- Aerodactyl - Earth Power - TR67
  (142, 14200, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 55),
  -- Aerodactyl - Iron Head - TR74
  (142, 14200, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 56),
  -- Aerodactyl - Stone Edge - TR75
  (142, 14200, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 57),
  -- Aerodactyl - Stealth Rock - TR76
  (142, 14200, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 58),
  -- Aerodactyl - Hurricane - TR89
  (142, 14200, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 59),
  -- Aerodactyl - Psychic Fangs - TR97
  (142, 14200, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 60),
  -- Aerodactyl - Whirlwind - Egg
  (142, 14200, 18, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Aerodactyl - Curse - Egg
  (142, 14200, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Aerodactyl - Dragon Breath - Egg
  (142, 14200, 225, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Aerodactyl - Roost - Egg
  (142, 14200, 355, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Aerodactyl - Tailwind - Egg
  (142, 14200, 366, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Aerodactyl - Wide Guard - Egg
  (142, 14200, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Snorlax - Tackle - Level 1
  (143, 14300, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snorlax - Screech - Level 1
  (143, 14300, 103, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snorlax - Defense Curl - Level 1
  (143, 14300, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Snorlax - Metronome - Level 1
  (143, 14300, 118, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Snorlax - Lick - Level 1
  (143, 14300, 122, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Snorlax - Flail - Level 1
  (143, 14300, 175, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Snorlax - Stockpile - Level 1
  (143, 14300, 254, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Snorlax - Swallow - Level 1
  (143, 14300, 256, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Snorlax - Recycle - Level 1
  (143, 14300, 278, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Snorlax - Block - Level 1
  (143, 14300, 335, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Snorlax - Covet - Level 1
  (143, 14300, 343, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Snorlax - Fling - Level 1
  (143, 14300, 374, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Snorlax - Last Resort - Level 1
  (143, 14300, 387, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Snorlax - Yawn - Level 12
  (143, 14300, 281, 18, NULL, 1, 12, NULL, NULL, NULL, 14),
  -- Snorlax - Bite - Level 16
  (143, 14300, 44, 18, NULL, 1, 16, NULL, NULL, NULL, 15),
  -- Snorlax - Rest - Level 20
  (143, 14300, 156, 18, NULL, 1, 20, NULL, NULL, NULL, 16),
  -- Snorlax - Snore - Level 20
  (143, 14300, 173, 18, NULL, 1, 20, NULL, NULL, NULL, 17),
  -- Snorlax - Sleep Talk - Level 20
  (143, 14300, 214, 18, NULL, 1, 20, NULL, NULL, NULL, 18),
  -- Snorlax - Crunch - Level 24
  (143, 14300, 242, 18, NULL, 1, 24, NULL, NULL, NULL, 19),
  -- Snorlax - Body Slam - Level 28
  (143, 14300, 34, 18, NULL, 1, 28, NULL, NULL, NULL, 20),
  -- Snorlax - Heavy Slam - Level 32
  (143, 14300, 484, 18, NULL, 1, 32, NULL, NULL, NULL, 21),
  -- Snorlax - Amnesia - Level 36
  (143, 14300, 133, 18, NULL, 1, 36, NULL, NULL, NULL, 22),
  -- Snorlax - High Horsepower - Level 40
  (143, 14300, 667, 18, NULL, 1, 40, NULL, NULL, NULL, 23),
  -- Snorlax - Hammer Arm - Level 44
  (143, 14300, 359, 18, NULL, 1, 44, NULL, NULL, NULL, 24),
  -- Snorlax - Belly Drum - Level 48
  (143, 14300, 187, 18, NULL, 1, 48, NULL, NULL, NULL, 25),
  -- Snorlax - Belch - Level 52
  (143, 14300, 562, 18, NULL, 1, 52, NULL, NULL, NULL, 26),
  -- Snorlax - Giga Impact - Level 56
  (143, 14300, 416, 18, NULL, 1, 56, NULL, NULL, NULL, 27),
  -- Snorlax - Mega Punch - TM00
  (143, 14300, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 28),
  -- Snorlax - Mega Kick - TM01
  (143, 14300, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 29),
  -- Snorlax - Pay Day - TM02
  (143, 14300, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 30),
  -- Snorlax - Fire Punch - TM03
  (143, 14300, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 31),
  -- Snorlax - Ice Punch - TM04
  (143, 14300, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 32),
  -- Snorlax - Thunder Punch - TM05
  (143, 14300, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 33),
  -- Snorlax - Hyper Beam - TM08
  (143, 14300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 34),
  -- Snorlax - Giga Impact - TM09
  (143, 14300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 35),
  -- Snorlax - Solar Beam - TM11
  (143, 14300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 36),
  -- Snorlax - Screech - TM16
  (143, 14300, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 37),
  -- Snorlax - Self-Destruct - TM20
  (143, 14300, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 38),
  -- Snorlax - Rest - TM21
  (143, 14300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 39),
  -- Snorlax - Rock Slide - TM22
  (143, 14300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 40),
  -- Snorlax - Snore - TM24
  (143, 14300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 41),
  -- Snorlax - Protect - TM25
  (143, 14300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 42),
  -- Snorlax - Icy Wind - TM27
  (143, 14300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 43),
  -- Snorlax - Charm - TM29
  (143, 14300, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 44),
  -- Snorlax - Attract - TM31
  (143, 14300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 45),
  -- Snorlax - Sandstorm - TM32
  (143, 14300, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 46),
  -- Snorlax - Rain Dance - TM33
  (143, 14300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 47),
  -- Snorlax - Sunny Day - TM34
  (143, 14300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 48),
  -- Snorlax - Whirlpool - TM36
  (143, 14300, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 49),
  -- Snorlax - Facade - TM39
  (143, 14300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 50),
  -- Snorlax - Brick Break - TM43
  (143, 14300, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 51),
  -- Snorlax - Rock Tomb - TM48
  (143, 14300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 52),
  -- Snorlax - Fling - TM59
  (143, 14300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 53),
  -- Snorlax - Round - TM76
  (143, 14300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 54),
  -- Snorlax - Retaliate - TM79
  (143, 14300, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 55),
  -- Snorlax - Bulldoze - TM81
  (143, 14300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 56),
  -- Snorlax - Stomping Tantrum - TM98
  (143, 14300, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 57),
  -- Snorlax - Body Slam - TR01
  (143, 14300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 58),
  -- Snorlax - Flamethrower - TR02
  (143, 14300, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 59),
  -- Snorlax - Hydro Pump - TR03
  (143, 14300, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 60),
  -- Snorlax - Surf - TR04
  (143, 14300, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 61),
  -- Snorlax - Ice Beam - TR05
  (143, 14300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 62),
  -- Snorlax - Blizzard - TR06
  (143, 14300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 63),
  -- Snorlax - Thunderbolt - TR08
  (143, 14300, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 64),
  -- Snorlax - Thunder - TR09
  (143, 14300, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 65),
  -- Snorlax - Earthquake - TR10
  (143, 14300, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 66),
  -- Snorlax - Psychic - TR11
  (143, 14300, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 67),
  -- Snorlax - Metronome - TR14
  (143, 14300, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 68),
  -- Snorlax - Fire Blast - TR15
  (143, 14300, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 69),
  -- Snorlax - Amnesia - TR17
  (143, 14300, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 70),
  -- Snorlax - Substitute - TR20
  (143, 14300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 71),
  -- Snorlax - Outrage - TR24
  (143, 14300, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 72),
  -- Snorlax - Endure - TR26
  (143, 14300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 73),
  -- Snorlax - Sleep Talk - TR27
  (143, 14300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 74),
  -- Snorlax - Encore - TR30
  (143, 14300, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 75),
  -- Snorlax - Crunch - TR32
  (143, 14300, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 76),
  -- Snorlax - Shadow Ball - TR33
  (143, 14300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 77),
  -- Snorlax - Uproar - TR35
  (143, 14300, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 78),
  -- Snorlax - Superpower - TR39
  (143, 14300, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 79),
  -- Snorlax - Hyper Voice - TR42
  (143, 14300, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 80),
  -- Snorlax - Seed Bomb - TR59
  (143, 14300, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 81),
  -- Snorlax - Focus Blast - TR64
  (143, 14300, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 82),
  -- Snorlax - Zen Headbutt - TR69
  (143, 14300, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 83),
  -- Snorlax - Gunk Shot - TR73
  (143, 14300, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 84),
  -- Snorlax - Iron Head - TR74
  (143, 14300, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 85),
  -- Snorlax - Heavy Slam - TR79
  (143, 14300, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 86),
  -- Snorlax - Work Up - TR85
  (143, 14300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 87),
  -- Snorlax - Wild Charge - TR86
  (143, 14300, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 88),
  -- Snorlax - Heat Crash - TR88
  (143, 14300, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 89),
  -- Snorlax - Darkest Lariat - TR93
  (143, 14300, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 90),
  -- Snorlax - High Horsepower - TR94
  (143, 14300, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 91),
  -- Snorlax - Body Press - TR99
  (143, 14300, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 92),
  -- Snorlax - Double-Edge - Egg
  (143, 14300, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 93),
  -- Snorlax - Counter - Egg
  (143, 14300, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 94),
  -- Snorlax - Fissure - Egg
  (143, 14300, 90, 18, NULL, 5, NULL, NULL, NULL, NULL, 95),
  -- Snorlax - Curse - Egg
  (143, 14300, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 96),
  -- Snorlax - Gastro Acid - Egg
  (143, 14300, 380, 18, NULL, 5, NULL, NULL, NULL, NULL, 97),
  -- Snorlax - Belch - Egg
  (143, 14300, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 98),
  -- Articuno - Gust - Level 1
  (144, 14400, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Articuno - Mist - Level 1
  (144, 14400, 54, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Articuno - Powder Snow - Level 5
  (144, 14400, 181, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Articuno - Reflect - Level 10
  (144, 14400, 115, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Articuno - Ice Shard - Level 15
  (144, 14400, 420, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Articuno - Agility - Level 20
  (144, 14400, 97, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Articuno - Ancient Power - Level 25
  (144, 14400, 246, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Articuno - Tailwind - Level 30
  (144, 14400, 366, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Articuno - Freeze-Dry - Level 35
  (144, 14400, 573, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Articuno - Roost - Level 40
  (144, 14400, 355, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Articuno - Ice Beam - Level 45
  (144, 14400, 58, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Articuno - Hail - Level 50
  (144, 14400, 258, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Articuno - Hurricane - Level 55
  (144, 14400, 542, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Articuno - Mind Reader - Level 60
  (144, 14400, 170, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Articuno - Blizzard - Level 65
  (144, 14400, 59, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Articuno - Sheer Cold - Level 70
  (144, 14400, 329, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Articuno - Fly - TM06
  (144, 14400, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 17),
  -- Articuno - Hyper Beam - TM08
  (144, 14400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Articuno - Giga Impact - TM09
  (144, 14400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Articuno - Reflect - TM18
  (144, 14400, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Articuno - Rest - TM21
  (144, 14400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Articuno - Snore - TM24
  (144, 14400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Articuno - Protect - TM25
  (144, 14400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Articuno - Icy Wind - TM27
  (144, 14400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 24),
  -- Articuno - Steel Wing - TM30
  (144, 14400, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 25),
  -- Articuno - Sandstorm - TM32
  (144, 14400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 26),
  -- Articuno - Rain Dance - TM33
  (144, 14400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Articuno - Sunny Day - TM34
  (144, 14400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Articuno - Hail - TM35
  (144, 14400, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 29),
  -- Articuno - Facade - TM39
  (144, 14400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Articuno - Swift - TM40
  (144, 14400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Articuno - Weather Ball - TM46
  (144, 14400, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 32),
  -- Articuno - Icicle Spear - TM51
  (144, 14400, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 33),
  -- Articuno - U-turn - TM56
  (144, 14400, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 34),
  -- Articuno - Avalanche - TM64
  (144, 14400, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 35),
  -- Articuno - Round - TM76
  (144, 14400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Articuno - Air Slash - TM95
  (144, 14400, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 37),
  -- Articuno - Ice Beam - TR05
  (144, 14400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 38),
  -- Articuno - Blizzard - TR06
  (144, 14400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 39),
  -- Articuno - Agility - TR12
  (144, 14400, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 40),
  -- Articuno - Substitute - TR20
  (144, 14400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Articuno - Endure - TR26
  (144, 14400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Articuno - Sleep Talk - TR27
  (144, 14400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Articuno - Brave Bird - TR66
  (144, 14400, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 44),
  -- Articuno - Hurricane - TR89
  (144, 14400, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 45),
  -- Zapdos - Peck - Level 1
  (145, 14500, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zapdos - Thunder Wave - Level 1
  (145, 14500, 86, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zapdos - Thunder Shock - Level 5
  (145, 14500, 84, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zapdos - Light Screen - Level 10
  (145, 14500, 113, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Zapdos - Pluck - Level 15
  (145, 14500, 365, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Zapdos - Agility - Level 20
  (145, 14500, 97, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Zapdos - Ancient Power - Level 25
  (145, 14500, 246, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Zapdos - Charge - Level 30
  (145, 14500, 268, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Zapdos - Drill Peck - Level 35
  (145, 14500, 65, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Zapdos - Roost - Level 40
  (145, 14500, 355, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Zapdos - Discharge - Level 45
  (145, 14500, 435, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Zapdos - Rain Dance - Level 50
  (145, 14500, 240, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Zapdos - Thunder - Level 55
  (145, 14500, 87, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Zapdos - Detect - Level 60
  (145, 14500, 197, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Zapdos - Magnetic Flux - Level 65
  (145, 14500, 602, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Zapdos - Zap Cannon - Level 70
  (145, 14500, 192, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Zapdos - Fly - TM06
  (145, 14500, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 17),
  -- Zapdos - Hyper Beam - TM08
  (145, 14500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Zapdos - Giga Impact - TM09
  (145, 14500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Zapdos - Thunder Wave - TM14
  (145, 14500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 20),
  -- Zapdos - Light Screen - TM17
  (145, 14500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 21),
  -- Zapdos - Rest - TM21
  (145, 14500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Zapdos - Snore - TM24
  (145, 14500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Zapdos - Protect - TM25
  (145, 14500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Zapdos - Steel Wing - TM30
  (145, 14500, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 25),
  -- Zapdos - Sandstorm - TM32
  (145, 14500, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 26),
  -- Zapdos - Rain Dance - TM33
  (145, 14500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Zapdos - Sunny Day - TM34
  (145, 14500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Zapdos - Hail - TM35
  (145, 14500, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 29),
  -- Zapdos - Facade - TM39
  (145, 14500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Zapdos - Swift - TM40
  (145, 14500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Zapdos - Weather Ball - TM46
  (145, 14500, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 32),
  -- Zapdos - U-turn - TM56
  (145, 14500, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 33),
  -- Zapdos - Round - TM76
  (145, 14500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Zapdos - Volt Switch - TM80
  (145, 14500, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 35),
  -- Zapdos - Eerie Impulse - TM93
  (145, 14500, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 36),
  -- Zapdos - Thunderbolt - TR08
  (145, 14500, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 37),
  -- Zapdos - Thunder - TR09
  (145, 14500, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 38),
  -- Zapdos - Agility - TR12
  (145, 14500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 39),
  -- Zapdos - Substitute - TR20
  (145, 14500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Zapdos - Endure - TR26
  (145, 14500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Zapdos - Sleep Talk - TR27
  (145, 14500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Zapdos - Baton Pass - TR29
  (145, 14500, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 43),
  -- Zapdos - Heat Wave - TR36
  (145, 14500, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 44),
  -- Zapdos - Brave Bird - TR66
  (145, 14500, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 45),
  -- Zapdos - Wild Charge - TR86
  (145, 14500, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 46),
  -- Zapdos - Hurricane - TR89
  (145, 14500, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 47),
  -- Moltres - Gust - Level 1
  (146, 14600, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Moltres - Leer - Level 1
  (146, 14600, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Moltres - Ember - Level 5
  (146, 14600, 52, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Moltres - Safeguard - Level 10
  (146, 14600, 219, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Moltres - Wing Attack - Level 15
  (146, 14600, 17, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Moltres - Agility - Level 20
  (146, 14600, 97, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Moltres - Ancient Power - Level 25
  (146, 14600, 246, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Moltres - Incinerate - Level 30
  (146, 14600, 510, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Moltres - Air Slash - Level 35
  (146, 14600, 403, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Moltres - Roost - Level 40
  (146, 14600, 355, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Moltres - Heat Wave - Level 45
  (146, 14600, 257, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Moltres - Sunny Day - Level 50
  (146, 14600, 241, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Moltres - Hurricane - Level 55
  (146, 14600, 542, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Moltres - Endure - Level 60
  (146, 14600, 203, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Moltres - Burn Up - Level 65
  (146, 14600, 682, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Moltres - Sky Attack - Level 70
  (146, 14600, 143, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Moltres - Fly - TM06
  (146, 14600, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 17),
  -- Moltres - Hyper Beam - TM08
  (146, 14600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Moltres - Giga Impact - TM09
  (146, 14600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Moltres - Solar Beam - TM11
  (146, 14600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Moltres - Fire Spin - TM13
  (146, 14600, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 21),
  -- Moltres - Safeguard - TM19
  (146, 14600, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Moltres - Rest - TM21
  (146, 14600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Moltres - Snore - TM24
  (146, 14600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Moltres - Protect - TM25
  (146, 14600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Moltres - Steel Wing - TM30
  (146, 14600, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 26),
  -- Moltres - Sandstorm - TM32
  (146, 14600, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 27),
  -- Moltres - Rain Dance - TM33
  (146, 14600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Moltres - Sunny Day - TM34
  (146, 14600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Moltres - Will-O-Wisp - TM38
  (146, 14600, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 30),
  -- Moltres - Facade - TM39
  (146, 14600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Moltres - Swift - TM40
  (146, 14600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 32),
  -- Moltres - Weather Ball - TM46
  (146, 14600, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 33),
  -- Moltres - U-turn - TM56
  (146, 14600, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 34),
  -- Moltres - Round - TM76
  (146, 14600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Moltres - Mystical Fire - TM92
  (146, 14600, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 36),
  -- Moltres - Air Slash - TM95
  (146, 14600, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 37),
  -- Moltres - Flamethrower - TR02
  (146, 14600, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 38),
  -- Moltres - Agility - TR12
  (146, 14600, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 39),
  -- Moltres - Fire Blast - TR15
  (146, 14600, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 40),
  -- Moltres - Substitute - TR20
  (146, 14600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Moltres - Endure - TR26
  (146, 14600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Moltres - Sleep Talk - TR27
  (146, 14600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Moltres - Heat Wave - TR36
  (146, 14600, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 44),
  -- Moltres - Overheat - TR43
  (146, 14600, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 45),
  -- Moltres - Flare Blitz - TR55
  (146, 14600, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 46),
  -- Moltres - Brave Bird - TR66
  (146, 14600, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 47),
  -- Moltres - Hurricane - TR89
  (146, 14600, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 48),
  -- Dratini - Wrap - Level 1
  (147, 14700, 35, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dratini - Leer - Level 1
  (147, 14700, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dratini - Twister - Level 5
  (147, 14700, 239, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Dratini - Thunder Wave - Level 10
  (147, 14700, 86, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Dratini - Dragon Tail - Level 15
  (147, 14700, 525, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dratini - Agility - Level 20
  (147, 14700, 97, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Dratini - Slam - Level 25
  (147, 14700, 21, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Dratini - Aqua Tail - Level 31
  (147, 14700, 401, 18, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Dratini - Dragon Rush - Level 35
  (147, 14700, 407, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Dratini - Safeguard - Level 40
  (147, 14700, 219, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Dratini - Rain Dance - Level 45
  (147, 14700, 240, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Dratini - Dragon Dance - Level 50
  (147, 14700, 349, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Dratini - Outrage - Level 55
  (147, 14700, 200, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Dratini - Hyper Beam - Level 60
  (147, 14700, 63, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Dratini - Hyper Beam - TM08
  (147, 14700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Dratini - Giga Impact - TM09
  (147, 14700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Dratini - Fire Spin - TM13
  (147, 14700, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 17),
  -- Dratini - Thunder Wave - TM14
  (147, 14700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Dratini - Light Screen - TM17
  (147, 14700, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Dratini - Safeguard - TM19
  (147, 14700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 20),
  -- Dratini - Rest - TM21
  (147, 14700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Dratini - Snore - TM24
  (147, 14700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Dratini - Protect - TM25
  (147, 14700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Dratini - Icy Wind - TM27
  (147, 14700, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 24),
  -- Dratini - Attract - TM31
  (147, 14700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Dratini - Rain Dance - TM33
  (147, 14700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Dratini - Sunny Day - TM34
  (147, 14700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Dratini - Hail - TM35
  (147, 14700, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 28),
  -- Dratini - Whirlpool - TM36
  (147, 14700, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 29),
  -- Dratini - Facade - TM39
  (147, 14700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Dratini - Swift - TM40
  (147, 14700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Dratini - Round - TM76
  (147, 14700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Dratini - Brutal Swing - TM97
  (147, 14700, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 33),
  -- Dratini - Breaking Swipe - TM99
  (147, 14700, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 34),
  -- Dratini - Body Slam - TR01
  (147, 14700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 35),
  -- Dratini - Flamethrower - TR02
  (147, 14700, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 36),
  -- Dratini - Hydro Pump - TR03
  (147, 14700, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 37),
  -- Dratini - Surf - TR04
  (147, 14700, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 38),
  -- Dratini - Ice Beam - TR05
  (147, 14700, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 39),
  -- Dratini - Blizzard - TR06
  (147, 14700, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 40),
  -- Dratini - Thunderbolt - TR08
  (147, 14700, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 41),
  -- Dratini - Thunder - TR09
  (147, 14700, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 42),
  -- Dratini - Agility - TR12
  (147, 14700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 43),
  -- Dratini - Fire Blast - TR15
  (147, 14700, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 44),
  -- Dratini - Waterfall - TR16
  (147, 14700, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 45),
  -- Dratini - Substitute - TR20
  (147, 14700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Dratini - Outrage - TR24
  (147, 14700, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 47),
  -- Dratini - Endure - TR26
  (147, 14700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Dratini - Sleep Talk - TR27
  (147, 14700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Dratini - Iron Tail - TR31
  (147, 14700, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 50),
  -- Dratini - Dragon Dance - TR51
  (147, 14700, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 51),
  -- Dratini - Dragon Pulse - TR62
  (147, 14700, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 52),
  -- Dratini - Supersonic - Egg
  (147, 14700, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Dratini - Mist - Egg
  (147, 14700, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Dratini - Dragon Breath - Egg
  (147, 14700, 225, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Dratini - Extreme Speed - Egg
  (147, 14700, 245, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Dratini - Water Pulse - Egg
  (147, 14700, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Dratini - Aqua Jet - Egg
  (147, 14700, 453, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Dratini - Draco Meteor - Tutor
  (147, 14700, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 59),
  -- Dragonair - Wrap - Level 1
  (148, 14800, 35, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonair - Leer - Level 1
  (148, 14800, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonair - Thunder Wave - Level 1
  (148, 14800, 86, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragonair - Twister - Level 1
  (148, 14800, 239, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragonair - Dragon Tail - Level 15
  (148, 14800, 525, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dragonair - Agility - Level 20
  (148, 14800, 97, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Dragonair - Slam - Level 25
  (148, 14800, 21, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Dragonair - Aqua Tail - Level 33
  (148, 14800, 401, 18, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Dragonair - Dragon Rush - Level 39
  (148, 14800, 407, 18, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Dragonair - Safeguard - Level 46
  (148, 14800, 219, 18, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Dragonair - Rain Dance - Level 53
  (148, 14800, 240, 18, NULL, 1, 53, NULL, NULL, NULL, 11),
  -- Dragonair - Dragon Dance - Level 60
  (148, 14800, 349, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Dragonair - Outrage - Level 67
  (148, 14800, 200, 18, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Dragonair - Hyper Beam - Level 74
  (148, 14800, 63, 18, NULL, 1, 74, NULL, NULL, NULL, 14),
  -- Dragonair - Hyper Beam - TM08
  (148, 14800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Dragonair - Giga Impact - TM09
  (148, 14800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Dragonair - Fire Spin - TM13
  (148, 14800, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 17),
  -- Dragonair - Thunder Wave - TM14
  (148, 14800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Dragonair - Light Screen - TM17
  (148, 14800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Dragonair - Safeguard - TM19
  (148, 14800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 20),
  -- Dragonair - Rest - TM21
  (148, 14800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Dragonair - Snore - TM24
  (148, 14800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Dragonair - Protect - TM25
  (148, 14800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Dragonair - Icy Wind - TM27
  (148, 14800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 24),
  -- Dragonair - Attract - TM31
  (148, 14800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Dragonair - Rain Dance - TM33
  (148, 14800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Dragonair - Sunny Day - TM34
  (148, 14800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Dragonair - Hail - TM35
  (148, 14800, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 28),
  -- Dragonair - Whirlpool - TM36
  (148, 14800, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 29),
  -- Dragonair - Facade - TM39
  (148, 14800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Dragonair - Swift - TM40
  (148, 14800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Dragonair - Round - TM76
  (148, 14800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Dragonair - Brutal Swing - TM97
  (148, 14800, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 33),
  -- Dragonair - Breaking Swipe - TM99
  (148, 14800, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 34),
  -- Dragonair - Body Slam - TR01
  (148, 14800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 35),
  -- Dragonair - Flamethrower - TR02
  (148, 14800, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 36),
  -- Dragonair - Hydro Pump - TR03
  (148, 14800, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 37),
  -- Dragonair - Surf - TR04
  (148, 14800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 38),
  -- Dragonair - Ice Beam - TR05
  (148, 14800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 39),
  -- Dragonair - Blizzard - TR06
  (148, 14800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 40),
  -- Dragonair - Thunderbolt - TR08
  (148, 14800, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 41),
  -- Dragonair - Thunder - TR09
  (148, 14800, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 42),
  -- Dragonair - Agility - TR12
  (148, 14800, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 43),
  -- Dragonair - Fire Blast - TR15
  (148, 14800, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 44),
  -- Dragonair - Waterfall - TR16
  (148, 14800, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 45),
  -- Dragonair - Substitute - TR20
  (148, 14800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Dragonair - Outrage - TR24
  (148, 14800, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 47),
  -- Dragonair - Endure - TR26
  (148, 14800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Dragonair - Sleep Talk - TR27
  (148, 14800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Dragonair - Iron Tail - TR31
  (148, 14800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 50),
  -- Dragonair - Dragon Dance - TR51
  (148, 14800, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 51),
  -- Dragonair - Dragon Pulse - TR62
  (148, 14800, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 52),
  -- Dragonair - Draco Meteor - Tutor
  (148, 14800, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 53),
  -- Dragonite - Fire Punch - Level 1
  (149, 14900, 7, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonite - Thunder Punch - Level 1
  (149, 14900, 9, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonite - Wing Attack - Level 1
  (149, 14900, 17, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragonite - Wrap - Level 1
  (149, 14900, 35, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragonite - Leer - Level 1
  (149, 14900, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dragonite - Thunder Wave - Level 1
  (149, 14900, 86, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dragonite - Twister - Level 1
  (149, 14900, 239, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dragonite - Extreme Speed - Level 1
  (149, 14900, 245, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Dragonite - Roost - Level 1
  (149, 14900, 355, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Dragonite - Hurricane - Level 1
  (149, 14900, 542, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Dragonite - Dragon Tail - Level 15
  (149, 14900, 525, 18, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Dragonite - Agility - Level 20
  (149, 14900, 97, 18, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Dragonite - Slam - Level 25
  (149, 14900, 21, 18, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Dragonite - Aqua Tail - Level 33
  (149, 14900, 401, 18, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Dragonite - Dragon Rush - Level 39
  (149, 14900, 407, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Dragonite - Outrage - Level 41
  (149, 14900, 200, 18, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Dragonite - Safeguard - Level 46
  (149, 14900, 219, 18, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Dragonite - Rain Dance - Level 53
  (149, 14900, 240, 18, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Dragonite - Dragon Dance - Level 62
  (149, 14900, 349, 18, NULL, 1, 62, NULL, NULL, NULL, 19),
  -- Dragonite - Hyper Beam - Level 80
  (149, 14900, 63, 18, NULL, 1, 80, NULL, NULL, NULL, 20),
  -- Dragonite - Hurricane - Evolution
  (149, 14900, 542, 18, NULL, 7, NULL, NULL, NULL, NULL, 21),
  -- Dragonite - Mega Punch - TM00
  (149, 14900, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 22),
  -- Dragonite - Mega Kick - TM01
  (149, 14900, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 23),
  -- Dragonite - Fire Punch - TM03
  (149, 14900, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 24),
  -- Dragonite - Ice Punch - TM04
  (149, 14900, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 25),
  -- Dragonite - Thunder Punch - TM05
  (149, 14900, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 26),
  -- Dragonite - Fly - TM06
  (149, 14900, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 27),
  -- Dragonite - Hyper Beam - TM08
  (149, 14900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 28),
  -- Dragonite - Giga Impact - TM09
  (149, 14900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 29),
  -- Dragonite - Fire Spin - TM13
  (149, 14900, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 30),
  -- Dragonite - Thunder Wave - TM14
  (149, 14900, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 31),
  -- Dragonite - Light Screen - TM17
  (149, 14900, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 32),
  -- Dragonite - Safeguard - TM19
  (149, 14900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 33),
  -- Dragonite - Rest - TM21
  (149, 14900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 34),
  -- Dragonite - Rock Slide - TM22
  (149, 14900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 35),
  -- Dragonite - Snore - TM24
  (149, 14900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 36),
  -- Dragonite - Protect - TM25
  (149, 14900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 37),
  -- Dragonite - Icy Wind - TM27
  (149, 14900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 38),
  -- Dragonite - Steel Wing - TM30
  (149, 14900, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 39),
  -- Dragonite - Attract - TM31
  (149, 14900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 40),
  -- Dragonite - Sandstorm - TM32
  (149, 14900, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 41),
  -- Dragonite - Rain Dance - TM33
  (149, 14900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 42),
  -- Dragonite - Sunny Day - TM34
  (149, 14900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 43),
  -- Dragonite - Hail - TM35
  (149, 14900, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 44),
  -- Dragonite - Whirlpool - TM36
  (149, 14900, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 45),
  -- Dragonite - Facade - TM39
  (149, 14900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 46),
  -- Dragonite - Swift - TM40
  (149, 14900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 47),
  -- Dragonite - Brick Break - TM43
  (149, 14900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 48),
  -- Dragonite - Dive - TM45
  (149, 14900, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 49),
  -- Dragonite - Rock Tomb - TM48
  (149, 14900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 50),
  -- Dragonite - Fling - TM59
  (149, 14900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 51),
  -- Dragonite - Round - TM76
  (149, 14900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 52),
  -- Dragonite - Bulldoze - TM81
  (149, 14900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 53),
  -- Dragonite - Air Slash - TM95
  (149, 14900, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 54),
  -- Dragonite - Brutal Swing - TM97
  (149, 14900, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 55),
  -- Dragonite - Breaking Swipe - TM99
  (149, 14900, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 56),
  -- Dragonite - Body Slam - TR01
  (149, 14900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 57),
  -- Dragonite - Flamethrower - TR02
  (149, 14900, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 58),
  -- Dragonite - Hydro Pump - TR03
  (149, 14900, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 59),
  -- Dragonite - Surf - TR04
  (149, 14900, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 60),
  -- Dragonite - Ice Beam - TR05
  (149, 14900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 61),
  -- Dragonite - Blizzard - TR06
  (149, 14900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 62),
  -- Dragonite - Thunderbolt - TR08
  (149, 14900, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 63),
  -- Dragonite - Thunder - TR09
  (149, 14900, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 64),
  -- Dragonite - Earthquake - TR10
  (149, 14900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 65),
  -- Dragonite - Agility - TR12
  (149, 14900, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 66),
  -- Dragonite - Fire Blast - TR15
  (149, 14900, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 67),
  -- Dragonite - Waterfall - TR16
  (149, 14900, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 68),
  -- Dragonite - Substitute - TR20
  (149, 14900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 69),
  -- Dragonite - Outrage - TR24
  (149, 14900, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 70),
  -- Dragonite - Endure - TR26
  (149, 14900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 71),
  -- Dragonite - Sleep Talk - TR27
  (149, 14900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 72),
  -- Dragonite - Iron Tail - TR31
  (149, 14900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 73),
  -- Dragonite - Heat Wave - TR36
  (149, 14900, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 74),
  -- Dragonite - Superpower - TR39
  (149, 14900, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 75),
  -- Dragonite - Dragon Claw - TR47
  (149, 14900, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 76),
  -- Dragonite - Dragon Dance - TR51
  (149, 14900, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 77),
  -- Dragonite - Dragon Pulse - TR62
  (149, 14900, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 78),
  -- Dragonite - Focus Blast - TR64
  (149, 14900, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 79),
  -- Dragonite - Iron Head - TR74
  (149, 14900, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 80),
  -- Dragonite - Stone Edge - TR75
  (149, 14900, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 81),
  -- Dragonite - Hurricane - TR89
  (149, 14900, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 82),
  -- Dragonite - Body Press - TR99
  (149, 14900, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 83),
  -- Dragonite - Draco Meteor - Tutor
  (149, 14900, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 84),
  -- Mewtwo - Disable - Level 1
  (150, 15000, 50, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mewtwo - Confusion - Level 1
  (150, 15000, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mewtwo - Swift - Level 1
  (150, 15000, 129, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mewtwo - Laser Focus - Level 1
  (150, 15000, 673, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mewtwo - Life Dew - Level 1
  (150, 15000, 791, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mewtwo - Ancient Power - Level 8
  (150, 15000, 246, 18, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Mewtwo - Psycho Cut - Level 16
  (150, 15000, 427, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Mewtwo - Safeguard - Level 24
  (150, 15000, 219, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Mewtwo - Amnesia - Level 32
  (150, 15000, 133, 18, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Mewtwo - Aura Sphere - Level 40
  (150, 15000, 396, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Mewtwo - Psychic - Level 48
  (150, 15000, 94, 18, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Mewtwo - Power Swap - Level 56
  (150, 15000, 384, 18, NULL, 1, 56, NULL, NULL, NULL, 12),
  -- Mewtwo - Guard Swap - Level 56
  (150, 15000, 385, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Mewtwo - Mist - Level 64
  (150, 15000, 54, 18, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Mewtwo - Psystrike - Level 72
  (150, 15000, 540, 18, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Mewtwo - Recover - Level 80
  (150, 15000, 105, 18, NULL, 1, 80, NULL, NULL, NULL, 16),
  -- Mewtwo - Future Sight - Level 88
  (150, 15000, 248, 18, NULL, 1, 88, NULL, NULL, NULL, 17),
  -- Mewtwo - Mega Punch - TM00
  (150, 15000, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 18),
  -- Mewtwo - Mega Kick - TM01
  (150, 15000, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 19),
  -- Mewtwo - Pay Day - TM02
  (150, 15000, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 20),
  -- Mewtwo - Fire Punch - TM03
  (150, 15000, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 21),
  -- Mewtwo - Ice Punch - TM04
  (150, 15000, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 22),
  -- Mewtwo - Thunder Punch - TM05
  (150, 15000, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 23),
  -- Mewtwo - Hyper Beam - TM08
  (150, 15000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 24),
  -- Mewtwo - Giga Impact - TM09
  (150, 15000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 25),
  -- Mewtwo - Solar Beam - TM11
  (150, 15000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 26),
  -- Mewtwo - Thunder Wave - TM14
  (150, 15000, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 27),
  -- Mewtwo - Light Screen - TM17
  (150, 15000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 28),
  -- Mewtwo - Reflect - TM18
  (150, 15000, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 29),
  -- Mewtwo - Safeguard - TM19
  (150, 15000, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 30),
  -- Mewtwo - Self-Destruct - TM20
  (150, 15000, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 31),
  -- Mewtwo - Rest - TM21
  (150, 15000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 32),
  -- Mewtwo - Rock Slide - TM22
  (150, 15000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 33),
  -- Mewtwo - Snore - TM24
  (150, 15000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 34),
  -- Mewtwo - Protect - TM25
  (150, 15000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 35),
  -- Mewtwo - Icy Wind - TM27
  (150, 15000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 36),
  -- Mewtwo - Sandstorm - TM32
  (150, 15000, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 37),
  -- Mewtwo - Rain Dance - TM33
  (150, 15000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 38),
  -- Mewtwo - Sunny Day - TM34
  (150, 15000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 39),
  -- Mewtwo - Hail - TM35
  (150, 15000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 40),
  -- Mewtwo - Will-O-Wisp - TM38
  (150, 15000, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 41),
  -- Mewtwo - Facade - TM39
  (150, 15000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 42),
  -- Mewtwo - Swift - TM40
  (150, 15000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 43),
  -- Mewtwo - Brick Break - TM43
  (150, 15000, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 44),
  -- Mewtwo - Dive - TM45
  (150, 15000, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 45),
  -- Mewtwo - Rock Tomb - TM48
  (150, 15000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 46),
  -- Mewtwo - Fling - TM59
  (150, 15000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 47),
  -- Mewtwo - Power Swap - TM60
  (150, 15000, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 48),
  -- Mewtwo - Guard Swap - TM61
  (150, 15000, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 49),
  -- Mewtwo - Speed Swap - TM62
  (150, 15000, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 50),
  -- Mewtwo - Drain Punch - TM63
  (150, 15000, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 51),
  -- Mewtwo - Avalanche - TM64
  (150, 15000, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 52),
  -- Mewtwo - Psycho Cut - TM69
  (150, 15000, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 53),
  -- Mewtwo - Trick Room - TM70
  (150, 15000, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 54),
  -- Mewtwo - Wonder Room - TM71
  (150, 15000, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 55),
  -- Mewtwo - Magic Room - TM72
  (150, 15000, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 56),
  -- Mewtwo - Low Sweep - TM75
  (150, 15000, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 57),
  -- Mewtwo - Round - TM76
  (150, 15000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 58),
  -- Mewtwo - Bulldoze - TM81
  (150, 15000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 59),
  -- Mewtwo - Psychic Terrain - TM91
  (150, 15000, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 60),
  -- Mewtwo - Brutal Swing - TM97
  (150, 15000, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 61),
  -- Mewtwo - Body Slam - TR01
  (150, 15000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 62),
  -- Mewtwo - Flamethrower - TR02
  (150, 15000, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 63),
  -- Mewtwo - Ice Beam - TR05
  (150, 15000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 64),
  -- Mewtwo - Blizzard - TR06
  (150, 15000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 65),
  -- Mewtwo - Low Kick - TR07
  (150, 15000, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 66),
  -- Mewtwo - Thunderbolt - TR08
  (150, 15000, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 67),
  -- Mewtwo - Thunder - TR09
  (150, 15000, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 68),
  -- Mewtwo - Earthquake - TR10
  (150, 15000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 69),
  -- Mewtwo - Psychic - TR11
  (150, 15000, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 70),
  -- Mewtwo - Agility - TR12
  (150, 15000, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 71),
  -- Mewtwo - Metronome - TR14
  (150, 15000, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 72),
  -- Mewtwo - Fire Blast - TR15
  (150, 15000, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 73),
  -- Mewtwo - Amnesia - TR17
  (150, 15000, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 74),
  -- Mewtwo - Tri Attack - TR19
  (150, 15000, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 75),
  -- Mewtwo - Substitute - TR20
  (150, 15000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 76),
  -- Mewtwo - Psyshock - TR25
  (150, 15000, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 77),
  -- Mewtwo - Endure - TR26
  (150, 15000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 78),
  -- Mewtwo - Sleep Talk - TR27
  (150, 15000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 79),
  -- Mewtwo - Iron Tail - TR31
  (150, 15000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 80),
  -- Mewtwo - Shadow Ball - TR33
  (150, 15000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 81),
  -- Mewtwo - Future Sight - TR34
  (150, 15000, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 82),
  -- Mewtwo - Taunt - TR37
  (150, 15000, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 83),
  -- Mewtwo - Trick - TR38
  (150, 15000, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 84),
  -- Mewtwo - Skill Swap - TR40
  (150, 15000, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 85),
  -- Mewtwo - Bulk Up - TR48
  (150, 15000, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 86),
  -- Mewtwo - Calm Mind - TR49
  (150, 15000, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 87),
  -- Mewtwo - Aura Sphere - TR56
  (150, 15000, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 88),
  -- Mewtwo - Poison Jab - TR57
  (150, 15000, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 89),
  -- Mewtwo - Focus Blast - TR64
  (150, 15000, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 90),
  -- Mewtwo - Energy Ball - TR65
  (150, 15000, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 91),
  -- Mewtwo - Nasty Plot - TR68
  (150, 15000, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 92),
  -- Mewtwo - Zen Headbutt - TR69
  (150, 15000, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 93),
  -- Mewtwo - Stone Edge - TR75
  (150, 15000, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 94),
  -- Mewtwo - Grass Knot - TR77
  (150, 15000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 95),
  -- Mewtwo - Electro Ball - TR80
  (150, 15000, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 96),
  -- Mewtwo - Foul Play - TR81
  (150, 15000, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 97),
  -- Mewtwo - Stored Power - TR82
  (150, 15000, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 98),
  -- Mewtwo - Ally Switch - TR83
  (150, 15000, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 99),
  -- Mewtwo - Hurricane - TR89
  (150, 15000, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 100),
  -- Mew - Pound - Level 1
  (151, 15100, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mew - Reflect Type - Level 1
  (151, 15100, 513, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mew - Amnesia - Level 10
  (151, 15100, 133, 18, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Mew - Baton Pass - Level 20
  (151, 15100, 226, 18, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Mew - Ancient Power - Level 30
  (151, 15100, 246, 18, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Mew - Life Dew - Level 40
  (151, 15100, 791, 18, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Mew - Nasty Plot - Level 50
  (151, 15100, 417, 18, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Mew - Metronome - Level 60
  (151, 15100, 118, 18, NULL, 1, 60, NULL, NULL, NULL, 8),
  -- Mew - Imprison - Level 70
  (151, 15100, 286, 18, NULL, 1, 70, NULL, NULL, NULL, 9),
  -- Mew - Transform - Level 80
  (151, 15100, 144, 18, NULL, 1, 80, NULL, NULL, NULL, 10),
  -- Mew - Aura Sphere - Level 90
  (151, 15100, 396, 18, NULL, 1, 90, NULL, NULL, NULL, 11),
  -- Mew - Psychic - Level 100
  (151, 15100, 94, 18, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Mew - Mega Punch - TM00
  (151, 15100, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 13),
  -- Mew - Mega Kick - TM01
  (151, 15100, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 14),
  -- Mew - Pay Day - TM02
  (151, 15100, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 15),
  -- Mew - Fire Punch - TM03
  (151, 15100, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 16),
  -- Mew - Ice Punch - TM04
  (151, 15100, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 17),
  -- Mew - Thunder Punch - TM05
  (151, 15100, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 18),
  -- Mew - Fly - TM06
  (151, 15100, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 19),
  -- Mew - Pin Missile - TM07
  (151, 15100, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 20),
  -- Mew - Hyper Beam - TM08
  (151, 15100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Mew - Giga Impact - TM09
  (151, 15100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Mew - Magical Leaf - TM10
  (151, 15100, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 23),
  -- Mew - Solar Beam - TM11
  (151, 15100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 24),
  -- Mew - Solar Blade - TM12
  (151, 15100, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 25),
  -- Mew - Fire Spin - TM13
  (151, 15100, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 26),
  -- Mew - Thunder Wave - TM14
  (151, 15100, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 27),
  -- Mew - Dig - TM15
  (151, 15100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 28),
  -- Mew - Screech - TM16
  (151, 15100, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 29),
  -- Mew - Light Screen - TM17
  (151, 15100, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 30),
  -- Mew - Reflect - TM18
  (151, 15100, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 31),
  -- Mew - Safeguard - TM19
  (151, 15100, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 32),
  -- Mew - Self-Destruct - TM20
  (151, 15100, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 33),
  -- Mew - Rest - TM21
  (151, 15100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 34),
  -- Mew - Rock Slide - TM22
  (151, 15100, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 35),
  -- Mew - Thief - TM23
  (151, 15100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 36),
  -- Mew - Snore - TM24
  (151, 15100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 37),
  -- Mew - Protect - TM25
  (151, 15100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 38),
  -- Mew - Scary Face - TM26
  (151, 15100, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 39),
  -- Mew - Icy Wind - TM27
  (151, 15100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 40),
  -- Mew - Giga Drain - TM28
  (151, 15100, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 41),
  -- Mew - Charm - TM29
  (151, 15100, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 42),
  -- Mew - Steel Wing - TM30
  (151, 15100, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 43),
  -- Mew - Attract - TM31
  (151, 15100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 44),
  -- Mew - Sandstorm - TM32
  (151, 15100, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 45),
  -- Mew - Rain Dance - TM33
  (151, 15100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 46),
  -- Mew - Sunny Day - TM34
  (151, 15100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 47),
  -- Mew - Hail - TM35
  (151, 15100, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 48),
  -- Mew - Whirlpool - TM36
  (151, 15100, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 49),
  -- Mew - Beat Up - TM37
  (151, 15100, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 50),
  -- Mew - Will-O-Wisp - TM38
  (151, 15100, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 51),
  -- Mew - Facade - TM39
  (151, 15100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 52),
  -- Mew - Swift - TM40
  (151, 15100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 53),
  -- Mew - Helping Hand - TM41
  (151, 15100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 54),
  -- Mew - Revenge - TM42
  (151, 15100, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 55),
  -- Mew - Brick Break - TM43
  (151, 15100, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 56),
  -- Mew - Imprison - TM44
  (151, 15100, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 57),
  -- Mew - Dive - TM45
  (151, 15100, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 58),
  -- Mew - Weather Ball - TM46
  (151, 15100, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 59),
  -- Mew - Fake Tears - TM47
  (151, 15100, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 60),
  -- Mew - Rock Tomb - TM48
  (151, 15100, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 61),
  -- Mew - Sand Tomb - TM49
  (151, 15100, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 62),
  -- Mew - Bullet Seed - TM50
  (151, 15100, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 63),
  -- Mew - Icicle Spear - TM51
  (151, 15100, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 64),
  -- Mew - Bounce - TM52
  (151, 15100, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 65),
  -- Mew - Mud Shot - TM53
  (151, 15100, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 66),
  -- Mew - Rock Blast - TM54
  (151, 15100, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 67),
  -- Mew - Brine - TM55
  (151, 15100, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 68),
  -- Mew - U-turn - TM56
  (151, 15100, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 69),
  -- Mew - Payback - TM57
  (151, 15100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 70),
  -- Mew - Assurance - TM58
  (151, 15100, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 71),
  -- Mew - Fling - TM59
  (151, 15100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 72),
  -- Mew - Power Swap - TM60
  (151, 15100, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 73),
  -- Mew - Guard Swap - TM61
  (151, 15100, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 74),
  -- Mew - Speed Swap - TM62
  (151, 15100, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 75),
  -- Mew - Drain Punch - TM63
  (151, 15100, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 76),
  -- Mew - Avalanche - TM64
  (151, 15100, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 77),
  -- Mew - Shadow Claw - TM65
  (151, 15100, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 78),
  -- Mew - Thunder Fang - TM66
  (151, 15100, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 79),
  -- Mew - Ice Fang - TM67
  (151, 15100, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 80),
  -- Mew - Fire Fang - TM68
  (151, 15100, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 81),
  -- Mew - Psycho Cut - TM69
  (151, 15100, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 82),
  -- Mew - Trick Room - TM70
  (151, 15100, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 83),
  -- Mew - Wonder Room - TM71
  (151, 15100, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 84),
  -- Mew - Magic Room - TM72
  (151, 15100, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 85),
  -- Mew - Cross Poison - TM73
  (151, 15100, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 86),
  -- Mew - Venoshock - TM74
  (151, 15100, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 87),
  -- Mew - Low Sweep - TM75
  (151, 15100, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 88),
  -- Mew - Round - TM76
  (151, 15100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 89),
  -- Mew - Hex - TM77
  (151, 15100, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 90),
  -- Mew - Acrobatics - TM78
  (151, 15100, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 91),
  -- Mew - Retaliate - TM79
  (151, 15100, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 92),
  -- Mew - Volt Switch - TM80
  (151, 15100, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 93),
  -- Mew - Bulldoze - TM81
  (151, 15100, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 94),
  -- Mew - Electroweb - TM82
  (151, 15100, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 95),
  -- Mew - Razor Shell - TM83
  (151, 15100, 534, 18, NULL, 2, NULL, NULL, 18002083, NULL, 96),
  -- Mew - Tail Slap - TM84
  (151, 15100, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 97),
  -- Mew - Snarl - TM85
  (151, 15100, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 98),
  -- Mew - Phantom Force - TM86
  (151, 15100, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 99),
  -- Mew - Draining Kiss - TM87
  (151, 15100, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 100),
  -- Mew - Grassy Terrain - TM88
  (151, 15100, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 101),
  -- Mew - Misty Terrain - TM89
  (151, 15100, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 102),
  -- Mew - Electric Terrain - TM90
  (151, 15100, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 103),
  -- Mew - Psychic Terrain - TM91
  (151, 15100, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 104),
  -- Mew - Mystical Fire - TM92
  (151, 15100, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 105),
  -- Mew - Eerie Impulse - TM93
  (151, 15100, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 106),
  -- Mew - False Swipe - TM94
  (151, 15100, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 107),
  -- Mew - Air Slash - TM95
  (151, 15100, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 108),
  -- Mew - Smart Strike - TM96
  (151, 15100, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 109),
  -- Mew - Brutal Swing - TM97
  (151, 15100, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 110),
  -- Mew - Stomping Tantrum - TM98
  (151, 15100, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 111),
  -- Mew - Breaking Swipe - TM99
  (151, 15100, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 112),
  -- Mew - Swords Dance - TR00
  (151, 15100, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 113),
  -- Mew - Body Slam - TR01
  (151, 15100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 114),
  -- Mew - Flamethrower - TR02
  (151, 15100, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 115),
  -- Mew - Hydro Pump - TR03
  (151, 15100, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 116),
  -- Mew - Surf - TR04
  (151, 15100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 117),
  -- Mew - Ice Beam - TR05
  (151, 15100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 118),
  -- Mew - Blizzard - TR06
  (151, 15100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 119),
  -- Mew - Low Kick - TR07
  (151, 15100, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 120),
  -- Mew - Thunderbolt - TR08
  (151, 15100, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 121),
  -- Mew - Thunder - TR09
  (151, 15100, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 122),
  -- Mew - Earthquake - TR10
  (151, 15100, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 123),
  -- Mew - Psychic - TR11
  (151, 15100, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 124),
  -- Mew - Agility - TR12
  (151, 15100, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 125),
  -- Mew - Focus Energy - TR13
  (151, 15100, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 126),
  -- Mew - Metronome - TR14
  (151, 15100, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 127),
  -- Mew - Fire Blast - TR15
  (151, 15100, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 128),
  -- Mew - Waterfall - TR16
  (151, 15100, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 129),
  -- Mew - Amnesia - TR17
  (151, 15100, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 130),
  -- Mew - Leech Life - TR18
  (151, 15100, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 131),
  -- Mew - Tri Attack - TR19
  (151, 15100, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 132),
  -- Mew - Substitute - TR20
  (151, 15100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 133),
  -- Mew - Reversal - TR21
  (151, 15100, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 134),
  -- Mew - Sludge Bomb - TR22
  (151, 15100, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 135),
  -- Mew - Spikes - TR23
  (151, 15100, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 136),
  -- Mew - Outrage - TR24
  (151, 15100, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 137),
  -- Mew - Psyshock - TR25
  (151, 15100, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 138),
  -- Mew - Endure - TR26
  (151, 15100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 139),
  -- Mew - Sleep Talk - TR27
  (151, 15100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 140),
  -- Mew - Megahorn - TR28
  (151, 15100, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 141),
  -- Mew - Baton Pass - TR29
  (151, 15100, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 142),
  -- Mew - Encore - TR30
  (151, 15100, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 143),
  -- Mew - Iron Tail - TR31
  (151, 15100, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 144),
  -- Mew - Crunch - TR32
  (151, 15100, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 145),
  -- Mew - Shadow Ball - TR33
  (151, 15100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 146),
  -- Mew - Future Sight - TR34
  (151, 15100, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 147),
  -- Mew - Uproar - TR35
  (151, 15100, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 148),
  -- Mew - Heat Wave - TR36
  (151, 15100, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 149),
  -- Mew - Taunt - TR37
  (151, 15100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 150),
  -- Mew - Trick - TR38
  (151, 15100, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 151),
  -- Mew - Superpower - TR39
  (151, 15100, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 152),
  -- Mew - Skill Swap - TR40
  (151, 15100, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 153),
  -- Mew - Blaze Kick - TR41
  (151, 15100, 299, 18, NULL, 4, NULL, NULL, 18004041, NULL, 154),
  -- Mew - Hyper Voice - TR42
  (151, 15100, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 155),
  -- Mew - Overheat - TR43
  (151, 15100, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 156),
  -- Mew - Cosmic Power - TR44
  (151, 15100, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 157),
  -- Mew - Muddy Water - TR45
  (151, 15100, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 158),
  -- Mew - Iron Defense - TR46
  (151, 15100, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 159),
  -- Mew - Dragon Claw - TR47
  (151, 15100, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 160),
  -- Mew - Bulk Up - TR48
  (151, 15100, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 161),
  -- Mew - Calm Mind - TR49
  (151, 15100, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 162),
  -- Mew - Leaf Blade - TR50
  (151, 15100, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 163),
  -- Mew - Dragon Dance - TR51
  (151, 15100, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 164),
  -- Mew - Gyro Ball - TR52
  (151, 15100, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 165),
  -- Mew - Close Combat - TR53
  (151, 15100, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 166),
  -- Mew - Toxic Spikes - TR54
  (151, 15100, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 167),
  -- Mew - Flare Blitz - TR55
  (151, 15100, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 168),
  -- Mew - Aura Sphere - TR56
  (151, 15100, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 169),
  -- Mew - Poison Jab - TR57
  (151, 15100, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 170),
  -- Mew - Dark Pulse - TR58
  (151, 15100, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 171),
  -- Mew - Seed Bomb - TR59
  (151, 15100, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 172),
  -- Mew - X-Scissor - TR60
  (151, 15100, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 173),
  -- Mew - Bug Buzz - TR61
  (151, 15100, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 174),
  -- Mew - Dragon Pulse - TR62
  (151, 15100, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 175),
  -- Mew - Power Gem - TR63
  (151, 15100, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 176),
  -- Mew - Focus Blast - TR64
  (151, 15100, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 177),
  -- Mew - Energy Ball - TR65
  (151, 15100, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 178),
  -- Mew - Brave Bird - TR66
  (151, 15100, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 179),
  -- Mew - Earth Power - TR67
  (151, 15100, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 180),
  -- Mew - Nasty Plot - TR68
  (151, 15100, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 181),
  -- Mew - Zen Headbutt - TR69
  (151, 15100, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 182),
  -- Mew - Flash Cannon - TR70
  (151, 15100, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 183),
  -- Mew - Leaf Storm - TR71
  (151, 15100, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 184),
  -- Mew - Power Whip - TR72
  (151, 15100, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 185),
  -- Mew - Gunk Shot - TR73
  (151, 15100, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 186),
  -- Mew - Iron Head - TR74
  (151, 15100, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 187),
  -- Mew - Stone Edge - TR75
  (151, 15100, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 188),
  -- Mew - Stealth Rock - TR76
  (151, 15100, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 189),
  -- Mew - Grass Knot - TR77
  (151, 15100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 190),
  -- Mew - Sludge Wave - TR78
  (151, 15100, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 191),
  -- Mew - Heavy Slam - TR79
  (151, 15100, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 192),
  -- Mew - Electro Ball - TR80
  (151, 15100, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 193),
  -- Mew - Foul Play - TR81
  (151, 15100, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 194),
  -- Mew - Stored Power - TR82
  (151, 15100, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 195),
  -- Mew - Ally Switch - TR83
  (151, 15100, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 196),
  -- Mew - Scald - TR84
  (151, 15100, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 197),
  -- Mew - Work Up - TR85
  (151, 15100, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 198),
  -- Mew - Wild Charge - TR86
  (151, 15100, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 199),
  -- Mew - Drill Run - TR87
  (151, 15100, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 200),
  -- Mew - Heat Crash - TR88
  (151, 15100, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 201),
  -- Mew - Hurricane - TR89
  (151, 15100, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 202),
  -- Mew - Play Rough - TR90
  (151, 15100, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 203),
  -- Mew - Venom Drench - TR91
  (151, 15100, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 204),
  -- Mew - Dazzling Gleam - TR92
  (151, 15100, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 205),
  -- Mew - Darkest Lariat - TR93
  (151, 15100, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 206),
  -- Mew - High Horsepower - TR94
  (151, 15100, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 207),
  -- Mew - Throat Chop - TR95
  (151, 15100, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 208),
  -- Mew - Pollen Puff - TR96
  (151, 15100, 676, 18, NULL, 4, NULL, NULL, 18004096, NULL, 209),
  -- Mew - Psychic Fangs - TR97
  (151, 15100, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 210),
  -- Mew - Liquidation - TR98
  (151, 15100, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 211),
  -- Mew - Body Press - TR99
  (151, 15100, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 212);

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
  -- Exeggutor - Poison Powder - Egg
  (103, 10300, 77, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Exeggutor - Stun Spore - Egg
  (103, 10300, 78, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Exeggutor - Sleep Powder - Egg
  (103, 10300, 79, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Exeggutor - Curse - Egg
  (103, 10300, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Exeggutor - Moonlight - Egg
  (103, 10300, 236, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Exeggutor - Ancient Power - Egg
  (103, 10300, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Exeggutor - Ingrain - Egg
  (103, 10300, 275, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Exeggutor - Block - Egg
  (103, 10300, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Marowak - Double Kick - Egg
  (105, 10500, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Marowak - Leer - Egg
  (105, 10500, 43, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Marowak - Skull Bash - Egg
  (105, 10500, 130, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Marowak - Curse - Egg
  (105, 10500, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Marowak - Belly Drum - Egg
  (105, 10500, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Marowak - Perish Song - Egg
  (105, 10500, 195, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Marowak - Detect - Egg
  (105, 10500, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Marowak - Ancient Power - Egg
  (105, 10500, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Hitmonlee - Counter - Egg
  (106, 10600, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Hitmonlee - High Jump Kick - Egg
  (106, 10600, 136, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Hitmonlee - Mind Reader - Egg
  (106, 10600, 170, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Hitmonlee - Mach Punch - Egg
  (106, 10600, 183, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Hitmonlee - Rapid Spin - Egg
  (106, 10600, 229, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Hitmonlee - Feint - Egg
  (106, 10600, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Hitmonlee - Vacuum Wave - Egg
  (106, 10600, 410, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Hitmonlee - Bullet Punch - Egg
  (106, 10600, 418, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Hitmonchan - Counter - Egg
  (107, 10700, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Hitmonchan - High Jump Kick - Egg
  (107, 10700, 136, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Hitmonchan - Mind Reader - Egg
  (107, 10700, 170, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Hitmonchan - Mach Punch - Egg
  (107, 10700, 183, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Hitmonchan - Rapid Spin - Egg
  (107, 10700, 229, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Hitmonchan - Feint - Egg
  (107, 10700, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Hitmonchan - Vacuum Wave - Egg
  (107, 10700, 410, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Hitmonchan - Bullet Punch - Egg
  (107, 10700, 418, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Weezing - Psybeam - Egg
  (110, 11000, 60, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Weezing - Curse - Egg
  (110, 11000, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Weezing - Spite - Egg
  (110, 11000, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Weezing - Pain Split - Egg
  (110, 11000, 220, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Weezing - Stockpile - Egg
  (110, 11000, 254, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Weezing - Spit Up - Egg
  (110, 11000, 255, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Weezing - Swallow - Egg
  (110, 11000, 256, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Weezing - Grudge - Egg
  (110, 11000, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Rhydon - Counter - Egg
  (112, 11200, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 90),
  -- Rhydon - Skull Bash - Egg
  (112, 11200, 130, 18, NULL, 5, NULL, NULL, NULL, NULL, 91),
  -- Rhydon - Curse - Egg
  (112, 11200, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 92),
  -- Rhydon - Metal Burst - Egg
  (112, 11200, 368, 18, NULL, 5, NULL, NULL, NULL, NULL, 93),
  -- Rhydon - Rock Polish - Egg
  (112, 11200, 397, 18, NULL, 5, NULL, NULL, NULL, NULL, 94),
  -- Rhydon - Dragon Rush - Egg
  (112, 11200, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 95),
  -- Rhydon - Guard Split - Egg
  (112, 11200, 470, 18, NULL, 5, NULL, NULL, NULL, NULL, 96),
  -- Seadra - Disable - Egg
  (117, 11700, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Seadra - Aurora Beam - Egg
  (117, 11700, 62, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Seadra - Splash - Egg
  (117, 11700, 150, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Seadra - Flail - Egg
  (117, 11700, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Seadra - Octazooka - Egg
  (117, 11700, 190, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Seadra - Water Pulse - Egg
  (117, 11700, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Seadra - Clear Smog - Egg
  (117, 11700, 499, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Seaking - Psybeam - Egg
  (119, 11900, 60, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Seaking - Haze - Egg
  (119, 11900, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Seaking - Mud-Slap - Egg
  (119, 11900, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Seaking - Acupressure - Egg
  (119, 11900, 367, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Seaking - Aqua Tail - Egg
  (119, 11900, 401, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Jynx - Fake Out - Egg
  (124, 12400, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Jynx - Role Play - Egg
  (124, 12400, 272, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Jynx - Wish - Egg
  (124, 12400, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Electabuzz - Dynamic Punch - Egg
  (125, 12500, 223, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Electabuzz - Cross Chop - Egg
  (125, 12500, 238, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Electabuzz - Focus Punch - Egg
  (125, 12500, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Electabuzz - Hammer Arm - Egg
  (125, 12500, 359, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Electabuzz - Feint - Egg
  (125, 12500, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Magmar - Mach Punch - Egg
  (126, 12600, 183, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Magmar - Dynamic Punch - Egg
  (126, 12600, 223, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Magmar - Cross Chop - Egg
  (126, 12600, 238, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Magmar - Focus Punch - Egg
  (126, 12600, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Magmar - Belch - Egg
  (126, 12600, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Vaporeon - Double Kick - Egg
  (134, 13400, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Vaporeon - Curse - Egg
  (134, 13400, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Vaporeon - Flail - Egg
  (134, 13400, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Vaporeon - Mud-Slap - Egg
  (134, 13400, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Vaporeon - Detect - Egg
  (134, 13400, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Vaporeon - Wish - Egg
  (134, 13400, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Vaporeon - Yawn - Egg
  (134, 13400, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Vaporeon - Tickle - Egg
  (134, 13400, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Jolteon - Double Kick - Egg
  (135, 13500, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Jolteon - Curse - Egg
  (135, 13500, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Jolteon - Flail - Egg
  (135, 13500, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Jolteon - Mud-Slap - Egg
  (135, 13500, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Jolteon - Detect - Egg
  (135, 13500, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Jolteon - Wish - Egg
  (135, 13500, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Jolteon - Yawn - Egg
  (135, 13500, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Jolteon - Tickle - Egg
  (135, 13500, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Flareon - Double Kick - Egg
  (136, 13600, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Flareon - Curse - Egg
  (136, 13600, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Flareon - Flail - Egg
  (136, 13600, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Flareon - Mud-Slap - Egg
  (136, 13600, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Flareon - Detect - Egg
  (136, 13600, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Flareon - Wish - Egg
  (136, 13600, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Flareon - Yawn - Egg
  (136, 13600, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Flareon - Tickle - Egg
  (136, 13600, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Omastar - Slam - Egg
  (139, 13900, 21, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Omastar - Bite - Egg
  (139, 13900, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Omastar - Supersonic - Egg
  (139, 13900, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Omastar - Bubble Beam - Egg
  (139, 13900, 61, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Omastar - Aurora Beam - Egg
  (139, 13900, 62, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Omastar - Haze - Egg
  (139, 13900, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Omastar - Knock Off - Egg
  (139, 13900, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Omastar - Tickle - Egg
  (139, 13900, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Omastar - Water Pulse - Egg
  (139, 13900, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Omastar - Reflect Type - Egg
  (139, 13900, 513, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Kabutops - Take Down - Egg
  (141, 14100, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Kabutops - Bubble Beam - Egg
  (141, 14100, 61, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Kabutops - Aurora Beam - Egg
  (141, 14100, 62, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Kabutops - Mega Drain - Egg
  (141, 14100, 72, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Kabutops - Confuse Ray - Egg
  (141, 14100, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Kabutops - Flail - Egg
  (141, 14100, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Kabutops - Rapid Spin - Egg
  (141, 14100, 229, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Kabutops - Knock Off - Egg
  (141, 14100, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Dragonair - Supersonic - Egg
  (148, 14800, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Dragonair - Mist - Egg
  (148, 14800, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Dragonair - Dragon Breath - Egg
  (148, 14800, 225, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Dragonair - Extreme Speed - Egg
  (148, 14800, 245, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Dragonair - Water Pulse - Egg
  (148, 14800, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Dragonair - Aqua Jet - Egg
  (148, 14800, 453, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Dragonite - Supersonic - Egg
  (149, 14900, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Dragonite - Mist - Egg
  (149, 14900, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Dragonite - Dragon Breath - Egg
  (149, 14900, 225, 18, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Dragonite - Extreme Speed - Egg
  (149, 14900, 245, 18, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Dragonite - Water Pulse - Egg
  (149, 14900, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Dragonite - Aqua Jet - Egg
  (149, 14900, 453, 18, NULL, 5, NULL, NULL, NULL, NULL, 90);
