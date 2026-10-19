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
-- Sword / Shield learnsets for default forms, species 202-251.
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
  -- Wobbuffet - Counter - Level 1
  (202, 20200, 68, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wobbuffet - Amnesia - Level 1
  (202, 20200, 133, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wobbuffet - Splash - Level 1
  (202, 20200, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wobbuffet - Destiny Bond - Level 1
  (202, 20200, 194, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wobbuffet - Charm - Level 1
  (202, 20200, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Wobbuffet - Safeguard - Level 1
  (202, 20200, 219, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Wobbuffet - Encore - Level 1
  (202, 20200, 227, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Wobbuffet - Mirror Coat - Level 1
  (202, 20200, 243, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Wobbuffet - Counter - Evolution
  (202, 20200, 68, 18, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Wobbuffet - Destiny Bond - Evolution
  (202, 20200, 194, 18, NULL, 7, NULL, NULL, NULL, NULL, 10),
  -- Wobbuffet - Safeguard - Evolution
  (202, 20200, 219, 18, NULL, 7, NULL, NULL, NULL, NULL, 11),
  -- Wobbuffet - Mirror Coat - Evolution
  (202, 20200, 243, 18, NULL, 7, NULL, NULL, NULL, NULL, 12),
  -- Wobbuffet - Safeguard - TM19
  (202, 20200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 13),
  -- Wobbuffet - Charm - TM29
  (202, 20200, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 14),
  -- Wobbuffet - Amnesia - TR17
  (202, 20200, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 15),
  -- Wobbuffet - Encore - TR30
  (202, 20200, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 16),
  -- Dunsparce - Defense Curl - Level 1
  (206, 20600, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dunsparce - Flail - Level 1
  (206, 20600, 175, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dunsparce - Mud-Slap - Level 4
  (206, 20600, 189, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Dunsparce - Rollout - Level 8
  (206, 20600, 205, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Dunsparce - Glare - Level 12
  (206, 20600, 137, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Dunsparce - Screech - Level 16
  (206, 20600, 103, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Dunsparce - Ancient Power - Level 20
  (206, 20600, 246, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Dunsparce - Drill Run - Level 24
  (206, 20600, 529, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Dunsparce - Yawn - Level 28
  (206, 20600, 281, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Dunsparce - Body Slam - Level 32
  (206, 20600, 34, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Dunsparce - Take Down - Level 36
  (206, 20600, 36, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Dunsparce - Roost - Level 40
  (206, 20600, 355, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Dunsparce - Dragon Rush - Level 44
  (206, 20600, 407, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Dunsparce - Coil - Level 48
  (206, 20600, 489, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Dunsparce - Double-Edge - Level 52
  (206, 20600, 38, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Dunsparce - Endeavor - Level 56
  (206, 20600, 283, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Dunsparce - Solar Beam - TM11
  (206, 20600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Dunsparce - Thunder Wave - TM14
  (206, 20600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Dunsparce - Dig - TM15
  (206, 20600, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 19),
  -- Dunsparce - Screech - TM16
  (206, 20600, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 20),
  -- Dunsparce - Rest - TM21
  (206, 20600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Dunsparce - Rock Slide - TM22
  (206, 20600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Dunsparce - Thief - TM23
  (206, 20600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Dunsparce - Snore - TM24
  (206, 20600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Dunsparce - Protect - TM25
  (206, 20600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Dunsparce - Attract - TM31
  (206, 20600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Dunsparce - Rain Dance - TM33
  (206, 20600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Dunsparce - Sunny Day - TM34
  (206, 20600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Dunsparce - Facade - TM39
  (206, 20600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Dunsparce - Helping Hand - TM41
  (206, 20600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Dunsparce - Rock Tomb - TM48
  (206, 20600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 31),
  -- Dunsparce - Round - TM76
  (206, 20600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Dunsparce - Hex - TM77
  (206, 20600, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 33),
  -- Dunsparce - Retaliate - TM79
  (206, 20600, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 34),
  -- Dunsparce - Bulldoze - TM81
  (206, 20600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 35),
  -- Dunsparce - Air Slash - TM95
  (206, 20600, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 36),
  -- Dunsparce - Stomping Tantrum - TM98
  (206, 20600, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 37),
  -- Dunsparce - Body Slam - TR01
  (206, 20600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 38),
  -- Dunsparce - Flamethrower - TR02
  (206, 20600, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 39),
  -- Dunsparce - Ice Beam - TR05
  (206, 20600, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 40),
  -- Dunsparce - Blizzard - TR06
  (206, 20600, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 41),
  -- Dunsparce - Thunderbolt - TR08
  (206, 20600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 42),
  -- Dunsparce - Thunder - TR09
  (206, 20600, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 43),
  -- Dunsparce - Earthquake - TR10
  (206, 20600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 44),
  -- Dunsparce - Agility - TR12
  (206, 20600, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 45),
  -- Dunsparce - Fire Blast - TR15
  (206, 20600, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 46),
  -- Dunsparce - Amnesia - TR17
  (206, 20600, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 47),
  -- Dunsparce - Substitute - TR20
  (206, 20600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Dunsparce - Endure - TR26
  (206, 20600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Dunsparce - Sleep Talk - TR27
  (206, 20600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Dunsparce - Baton Pass - TR29
  (206, 20600, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 51),
  -- Dunsparce - Iron Tail - TR31
  (206, 20600, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 52),
  -- Dunsparce - Shadow Ball - TR33
  (206, 20600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 53),
  -- Dunsparce - Calm Mind - TR49
  (206, 20600, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 54),
  -- Dunsparce - Gyro Ball - TR52
  (206, 20600, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 55),
  -- Dunsparce - Poison Jab - TR57
  (206, 20600, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 56),
  -- Dunsparce - Zen Headbutt - TR69
  (206, 20600, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 57),
  -- Dunsparce - Stealth Rock - TR76
  (206, 20600, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 58),
  -- Dunsparce - Stored Power - TR82
  (206, 20600, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 59),
  -- Dunsparce - Wild Charge - TR86
  (206, 20600, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 60),
  -- Dunsparce - Drill Run - TR87
  (206, 20600, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 61),
  -- Dunsparce - Headbutt - Egg
  (206, 20600, 29, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Dunsparce - Bite - Egg
  (206, 20600, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Dunsparce - Curse - Egg
  (206, 20600, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Dunsparce - Magic Coat - Egg
  (206, 20600, 277, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Dunsparce - Astonish - Egg
  (206, 20600, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Dunsparce - Last Resort - Egg
  (206, 20600, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Dunsparce - Aqua Tail - Egg
  (206, 20600, 401, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Steelix - Bind - Level 1
  (208, 20800, 20, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Steelix - Tackle - Level 1
  (208, 20800, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Steelix - Rock Throw - Level 1
  (208, 20800, 88, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Steelix - Harden - Level 1
  (208, 20800, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Steelix - Crunch - Level 1
  (208, 20800, 242, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Steelix - Rock Polish - Level 1
  (208, 20800, 397, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Steelix - Thunder Fang - Level 1
  (208, 20800, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Steelix - Ice Fang - Level 1
  (208, 20800, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Steelix - Fire Fang - Level 1
  (208, 20800, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Steelix - Smack Down - Level 4
  (208, 20800, 479, 18, NULL, 1, 4, NULL, NULL, NULL, 10),
  -- Steelix - Autotomize - Level 8
  (208, 20800, 475, 18, NULL, 1, 8, NULL, NULL, NULL, 11),
  -- Steelix - Dragon Breath - Level 12
  (208, 20800, 225, 18, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Steelix - Curse - Level 16
  (208, 20800, 174, 18, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Steelix - Rock Slide - Level 20
  (208, 20800, 157, 18, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Steelix - Screech - Level 24
  (208, 20800, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Steelix - Sand Tomb - Level 28
  (208, 20800, 328, 18, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Steelix - Stealth Rock - Level 32
  (208, 20800, 446, 18, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Steelix - Slam - Level 36
  (208, 20800, 21, 18, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Steelix - Sandstorm - Level 40
  (208, 20800, 201, 18, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Steelix - Dig - Level 44
  (208, 20800, 91, 18, NULL, 1, 44, NULL, NULL, NULL, 20),
  -- Steelix - Iron Tail - Level 48
  (208, 20800, 231, 18, NULL, 1, 48, NULL, NULL, NULL, 21),
  -- Steelix - Stone Edge - Level 52
  (208, 20800, 444, 18, NULL, 1, 52, NULL, NULL, NULL, 22),
  -- Steelix - Double-Edge - Level 56
  (208, 20800, 38, 18, NULL, 1, 56, NULL, NULL, NULL, 23),
  -- Steelix - Magnet Rise - Level 60
  (208, 20800, 393, 18, NULL, 1, 60, NULL, NULL, NULL, 24),
  -- Steelix - Hyper Beam - TM08
  (208, 20800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 25),
  -- Steelix - Giga Impact - TM09
  (208, 20800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 26),
  -- Steelix - Dig - TM15
  (208, 20800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 27),
  -- Steelix - Screech - TM16
  (208, 20800, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 28),
  -- Steelix - Self-Destruct - TM20
  (208, 20800, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 29),
  -- Steelix - Rest - TM21
  (208, 20800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 30),
  -- Steelix - Rock Slide - TM22
  (208, 20800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 31),
  -- Steelix - Snore - TM24
  (208, 20800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 32),
  -- Steelix - Protect - TM25
  (208, 20800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 33),
  -- Steelix - Scary Face - TM26
  (208, 20800, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 34),
  -- Steelix - Attract - TM31
  (208, 20800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 35),
  -- Steelix - Sandstorm - TM32
  (208, 20800, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 36),
  -- Steelix - Sunny Day - TM34
  (208, 20800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 37),
  -- Steelix - Facade - TM39
  (208, 20800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Steelix - Rock Tomb - TM48
  (208, 20800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 39),
  -- Steelix - Sand Tomb - TM49
  (208, 20800, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 40),
  -- Steelix - Rock Blast - TM54
  (208, 20800, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 41),
  -- Steelix - Payback - TM57
  (208, 20800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Steelix - Thunder Fang - TM66
  (208, 20800, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 43),
  -- Steelix - Ice Fang - TM67
  (208, 20800, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 44),
  -- Steelix - Fire Fang - TM68
  (208, 20800, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 45),
  -- Steelix - Round - TM76
  (208, 20800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 46),
  -- Steelix - Bulldoze - TM81
  (208, 20800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 47),
  -- Steelix - Brutal Swing - TM97
  (208, 20800, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 48),
  -- Steelix - Stomping Tantrum - TM98
  (208, 20800, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 49),
  -- Steelix - Breaking Swipe - TM99
  (208, 20800, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 50),
  -- Steelix - Body Slam - TR01
  (208, 20800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 51),
  -- Steelix - Earthquake - TR10
  (208, 20800, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 52),
  -- Steelix - Substitute - TR20
  (208, 20800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 53),
  -- Steelix - Endure - TR26
  (208, 20800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Steelix - Sleep Talk - TR27
  (208, 20800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Steelix - Iron Tail - TR31
  (208, 20800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 56),
  -- Steelix - Crunch - TR32
  (208, 20800, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 57),
  -- Steelix - Taunt - TR37
  (208, 20800, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 58),
  -- Steelix - Iron Defense - TR46
  (208, 20800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 59),
  -- Steelix - Dragon Dance - TR51
  (208, 20800, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 60),
  -- Steelix - Gyro Ball - TR52
  (208, 20800, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 61),
  -- Steelix - Dark Pulse - TR58
  (208, 20800, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 62),
  -- Steelix - Dragon Pulse - TR62
  (208, 20800, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 63),
  -- Steelix - Earth Power - TR67
  (208, 20800, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 64),
  -- Steelix - Flash Cannon - TR70
  (208, 20800, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 65),
  -- Steelix - Iron Head - TR74
  (208, 20800, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 66),
  -- Steelix - Stone Edge - TR75
  (208, 20800, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 67),
  -- Steelix - Stealth Rock - TR76
  (208, 20800, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 68),
  -- Steelix - Heavy Slam - TR79
  (208, 20800, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 69),
  -- Steelix - Drill Run - TR87
  (208, 20800, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 70),
  -- Steelix - High Horsepower - TR94
  (208, 20800, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 71),
  -- Steelix - Psychic Fangs - TR97
  (208, 20800, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 72),
  -- Steelix - Body Press - TR99
  (208, 20800, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 73),
  -- Steelix - Steel Beam - Tutor
  (208, 20800, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 74),
  -- Qwilfish - Tackle - Level 1
  (211, 21100, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Qwilfish - Poison Sting - Level 1
  (211, 21100, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Qwilfish - Harden - Level 4
  (211, 21100, 106, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Qwilfish - Water Gun - Level 8
  (211, 21100, 55, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Qwilfish - Fell Stinger - Level 12
  (211, 21100, 565, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Qwilfish - Minimize - Level 16
  (211, 21100, 107, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Qwilfish - Spikes - Level 20
  (211, 21100, 191, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Qwilfish - Brine - Level 24
  (211, 21100, 362, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Qwilfish - Revenge - Level 28
  (211, 21100, 279, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Qwilfish - Pin Missile - Level 32
  (211, 21100, 42, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Qwilfish - Toxic Spikes - Level 36
  (211, 21100, 390, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Qwilfish - Poison Jab - Level 40
  (211, 21100, 398, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Qwilfish - Stockpile - Level 44
  (211, 21100, 254, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Qwilfish - Spit Up - Level 44
  (211, 21100, 255, 18, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Qwilfish - Take Down - Level 48
  (211, 21100, 36, 18, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Qwilfish - Toxic - Level 52
  (211, 21100, 92, 18, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Qwilfish - Aqua Tail - Level 56
  (211, 21100, 401, 18, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Qwilfish - Acupressure - Level 60
  (211, 21100, 367, 18, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Qwilfish - Destiny Bond - Level 66
  (211, 21100, 194, 18, NULL, 1, 66, NULL, NULL, NULL, 19),
  -- Qwilfish - Pin Missile - TM07
  (211, 21100, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 20),
  -- Qwilfish - Thunder Wave - TM14
  (211, 21100, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 21),
  -- Qwilfish - Self-Destruct - TM20
  (211, 21100, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 22),
  -- Qwilfish - Rest - TM21
  (211, 21100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Qwilfish - Snore - TM24
  (211, 21100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Qwilfish - Protect - TM25
  (211, 21100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Qwilfish - Scary Face - TM26
  (211, 21100, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Qwilfish - Icy Wind - TM27
  (211, 21100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 27),
  -- Qwilfish - Attract - TM31
  (211, 21100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Qwilfish - Rain Dance - TM33
  (211, 21100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Qwilfish - Hail - TM35
  (211, 21100, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 30),
  -- Qwilfish - Whirlpool - TM36
  (211, 21100, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 31),
  -- Qwilfish - Facade - TM39
  (211, 21100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Qwilfish - Swift - TM40
  (211, 21100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Qwilfish - Revenge - TM42
  (211, 21100, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 34),
  -- Qwilfish - Dive - TM45
  (211, 21100, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 35),
  -- Qwilfish - Bounce - TM52
  (211, 21100, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 36),
  -- Qwilfish - Brine - TM55
  (211, 21100, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 37),
  -- Qwilfish - Payback - TM57
  (211, 21100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 38),
  -- Qwilfish - Assurance - TM58
  (211, 21100, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 39),
  -- Qwilfish - Venoshock - TM74
  (211, 21100, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 40),
  -- Qwilfish - Round - TM76
  (211, 21100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Qwilfish - Hex - TM77
  (211, 21100, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 42),
  -- Qwilfish - Swords Dance - TR00
  (211, 21100, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 43),
  -- Qwilfish - Hydro Pump - TR03
  (211, 21100, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 44),
  -- Qwilfish - Surf - TR04
  (211, 21100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 45),
  -- Qwilfish - Ice Beam - TR05
  (211, 21100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 46),
  -- Qwilfish - Blizzard - TR06
  (211, 21100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 47),
  -- Qwilfish - Waterfall - TR16
  (211, 21100, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 48),
  -- Qwilfish - Substitute - TR20
  (211, 21100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Qwilfish - Reversal - TR21
  (211, 21100, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 50),
  -- Qwilfish - Sludge Bomb - TR22
  (211, 21100, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 51),
  -- Qwilfish - Spikes - TR23
  (211, 21100, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 52),
  -- Qwilfish - Endure - TR26
  (211, 21100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Qwilfish - Sleep Talk - TR27
  (211, 21100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Qwilfish - Shadow Ball - TR33
  (211, 21100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 55),
  -- Qwilfish - Taunt - TR37
  (211, 21100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 56),
  -- Qwilfish - Gyro Ball - TR52
  (211, 21100, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 57),
  -- Qwilfish - Toxic Spikes - TR54
  (211, 21100, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 58),
  -- Qwilfish - Poison Jab - TR57
  (211, 21100, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 59),
  -- Qwilfish - Sludge Wave - TR78
  (211, 21100, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 60),
  -- Qwilfish - Scald - TR84
  (211, 21100, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 61),
  -- Qwilfish - Venom Drench - TR91
  (211, 21100, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 62),
  -- Qwilfish - Throat Chop - TR95
  (211, 21100, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 63),
  -- Qwilfish - Liquidation - TR98
  (211, 21100, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 64),
  -- Qwilfish - Supersonic - Egg
  (211, 21100, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Qwilfish - Bubble Beam - Egg
  (211, 21100, 61, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Qwilfish - Haze - Egg
  (211, 21100, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Qwilfish - Flail - Egg
  (211, 21100, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Qwilfish - Astonish - Egg
  (211, 21100, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Qwilfish - Water Pulse - Egg
  (211, 21100, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Qwilfish - Aqua Jet - Egg
  (211, 21100, 453, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Qwilfish - Acid Spray - Egg
  (211, 21100, 491, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Scizor - Wing Attack - Level 1
  (212, 21200, 17, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scizor - Leer - Level 1
  (212, 21200, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scizor - Agility - Level 1
  (212, 21200, 97, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Scizor - Quick Attack - Level 1
  (212, 21200, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Scizor - False Swipe - Level 1
  (212, 21200, 206, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Scizor - Fury Cutter - Level 1
  (212, 21200, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Scizor - Air Slash - Level 1
  (212, 21200, 403, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Scizor - Bullet Punch - Level 1
  (212, 21200, 418, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Scizor - Metal Claw - Level 12
  (212, 21200, 232, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Scizor - Double Team - Level 16
  (212, 21200, 104, 18, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Scizor - Double Hit - Level 20
  (212, 21200, 458, 18, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Scizor - Slash - Level 24
  (212, 21200, 163, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Scizor - Focus Energy - Level 28
  (212, 21200, 116, 18, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Scizor - Iron Defense - Level 32
  (212, 21200, 334, 18, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Scizor - Iron Head - Level 36
  (212, 21200, 442, 18, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Scizor - X-Scissor - Level 40
  (212, 21200, 404, 18, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Scizor - Laser Focus - Level 44
  (212, 21200, 673, 18, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Scizor - Swords Dance - Level 48
  (212, 21200, 14, 18, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Scizor - Bullet Punch - Evolution
  (212, 21200, 418, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Scizor - Hyper Beam - TM08
  (212, 21200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Scizor - Giga Impact - TM09
  (212, 21200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Scizor - Light Screen - TM17
  (212, 21200, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Scizor - Safeguard - TM19
  (212, 21200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 23),
  -- Scizor - Rest - TM21
  (212, 21200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Scizor - Thief - TM23
  (212, 21200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 25),
  -- Scizor - Snore - TM24
  (212, 21200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Scizor - Protect - TM25
  (212, 21200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Scizor - Steel Wing - TM30
  (212, 21200, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 28),
  -- Scizor - Attract - TM31
  (212, 21200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Scizor - Sandstorm - TM32
  (212, 21200, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 30),
  -- Scizor - Rain Dance - TM33
  (212, 21200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Scizor - Sunny Day - TM34
  (212, 21200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Scizor - Facade - TM39
  (212, 21200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Scizor - Swift - TM40
  (212, 21200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 34),
  -- Scizor - Brick Break - TM43
  (212, 21200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 35),
  -- Scizor - Sand Tomb - TM49
  (212, 21200, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 36),
  -- Scizor - U-turn - TM56
  (212, 21200, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 37),
  -- Scizor - Assurance - TM58
  (212, 21200, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 38),
  -- Scizor - Fling - TM59
  (212, 21200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 39),
  -- Scizor - Psycho Cut - TM69
  (212, 21200, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 40),
  -- Scizor - Cross Poison - TM73
  (212, 21200, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 41),
  -- Scizor - Venoshock - TM74
  (212, 21200, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 42),
  -- Scizor - Round - TM76
  (212, 21200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 43),
  -- Scizor - Acrobatics - TM78
  (212, 21200, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 44),
  -- Scizor - False Swipe - TM94
  (212, 21200, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 45),
  -- Scizor - Air Slash - TM95
  (212, 21200, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 46),
  -- Scizor - Brutal Swing - TM97
  (212, 21200, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 47),
  -- Scizor - Swords Dance - TR00
  (212, 21200, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 48),
  -- Scizor - Agility - TR12
  (212, 21200, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 49),
  -- Scizor - Focus Energy - TR13
  (212, 21200, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 50),
  -- Scizor - Substitute - TR20
  (212, 21200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Scizor - Reversal - TR21
  (212, 21200, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 52),
  -- Scizor - Endure - TR26
  (212, 21200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Scizor - Sleep Talk - TR27
  (212, 21200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Scizor - Baton Pass - TR29
  (212, 21200, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 55),
  -- Scizor - Superpower - TR39
  (212, 21200, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 56),
  -- Scizor - Iron Defense - TR46
  (212, 21200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 57),
  -- Scizor - X-Scissor - TR60
  (212, 21200, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 58),
  -- Scizor - Bug Buzz - TR61
  (212, 21200, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 59),
  -- Scizor - Flash Cannon - TR70
  (212, 21200, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 60),
  -- Scizor - Iron Head - TR74
  (212, 21200, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 61),
  -- Scizor - Steel Beam - Tutor
  (212, 21200, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 62),
  -- Shuckle - Wrap - Level 1
  (213, 21300, 35, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shuckle - Withdraw - Level 1
  (213, 21300, 110, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shuckle - Rollout - Level 5
  (213, 21300, 205, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Shuckle - Struggle Bug - Level 10
  (213, 21300, 522, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Shuckle - Rock Throw - Level 15
  (213, 21300, 88, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Shuckle - Safeguard - Level 20
  (213, 21300, 219, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Shuckle - Rest - Level 25
  (213, 21300, 156, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shuckle - Bug Bite - Level 30
  (213, 21300, 450, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Shuckle - Guard Split - Level 35
  (213, 21300, 470, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Shuckle - Power Split - Level 35
  (213, 21300, 471, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Shuckle - Rock Slide - Level 40
  (213, 21300, 157, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Shuckle - Gastro Acid - Level 45
  (213, 21300, 380, 18, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Shuckle - Sticky Web - Level 50
  (213, 21300, 564, 18, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Shuckle - Power Trick - Level 55
  (213, 21300, 379, 18, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Shuckle - Stone Edge - Level 60
  (213, 21300, 444, 18, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Shuckle - Shell Smash - Level 65
  (213, 21300, 504, 18, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Shuckle - Dig - TM15
  (213, 21300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 17),
  -- Shuckle - Safeguard - TM19
  (213, 21300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 18),
  -- Shuckle - Rest - TM21
  (213, 21300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Shuckle - Rock Slide - TM22
  (213, 21300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Shuckle - Snore - TM24
  (213, 21300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Shuckle - Protect - TM25
  (213, 21300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Shuckle - Attract - TM31
  (213, 21300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Shuckle - Sandstorm - TM32
  (213, 21300, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 24),
  -- Shuckle - Sunny Day - TM34
  (213, 21300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Shuckle - Facade - TM39
  (213, 21300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Shuckle - Helping Hand - TM41
  (213, 21300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 27),
  -- Shuckle - Rock Tomb - TM48
  (213, 21300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 28),
  -- Shuckle - Sand Tomb - TM49
  (213, 21300, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 29),
  -- Shuckle - Mud Shot - TM53
  (213, 21300, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 30),
  -- Shuckle - Rock Blast - TM54
  (213, 21300, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 31),
  -- Shuckle - Venoshock - TM74
  (213, 21300, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 32),
  -- Shuckle - Round - TM76
  (213, 21300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Shuckle - Bulldoze - TM81
  (213, 21300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 34),
  -- Shuckle - Body Slam - TR01
  (213, 21300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 35),
  -- Shuckle - Earthquake - TR10
  (213, 21300, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 36),
  -- Shuckle - Substitute - TR20
  (213, 21300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Shuckle - Reversal - TR21
  (213, 21300, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 38),
  -- Shuckle - Sludge Bomb - TR22
  (213, 21300, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 39),
  -- Shuckle - Endure - TR26
  (213, 21300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Shuckle - Sleep Talk - TR27
  (213, 21300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Shuckle - Encore - TR30
  (213, 21300, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 42),
  -- Shuckle - Iron Defense - TR46
  (213, 21300, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 43),
  -- Shuckle - Gyro Ball - TR52
  (213, 21300, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 44),
  -- Shuckle - Earth Power - TR67
  (213, 21300, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 45),
  -- Shuckle - Stone Edge - TR75
  (213, 21300, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 46),
  -- Shuckle - Stealth Rock - TR76
  (213, 21300, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 47),
  -- Shuckle - Sludge Wave - TR78
  (213, 21300, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 48),
  -- Shuckle - Acid - Egg
  (213, 21300, 51, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shuckle - Toxic - Egg
  (213, 21300, 92, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Shuckle - Defense Curl - Egg
  (213, 21300, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Shuckle - Sweet Scent - Egg
  (213, 21300, 230, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shuckle - Knock Off - Egg
  (213, 21300, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Shuckle - Covet - Egg
  (213, 21300, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Shuckle - Acupressure - Egg
  (213, 21300, 367, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Shuckle - Final Gambit - Egg
  (213, 21300, 515, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Shuckle - Infestation - Egg
  (213, 21300, 611, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Heracross - Tackle - Level 1
  (214, 21400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heracross - Leer - Level 1
  (214, 21400, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Heracross - Fury Attack - Level 5
  (214, 21400, 31, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Heracross - Endure - Level 10
  (214, 21400, 203, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Heracross - Aerial Ace - Level 15
  (214, 21400, 332, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Heracross - Horn Attack - Level 20
  (214, 21400, 30, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Heracross - Counter - Level 25
  (214, 21400, 68, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Heracross - Brick Break - Level 30
  (214, 21400, 280, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Heracross - Pin Missile - Level 35
  (214, 21400, 42, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Heracross - Throat Chop - Level 40
  (214, 21400, 675, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Heracross - Thrash - Level 45
  (214, 21400, 37, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Heracross - Swords Dance - Level 50
  (214, 21400, 14, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Heracross - Megahorn - Level 55
  (214, 21400, 224, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Heracross - Close Combat - Level 60
  (214, 21400, 370, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Heracross - Pin Missile - TM07
  (214, 21400, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 15),
  -- Heracross - Hyper Beam - TM08
  (214, 21400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Heracross - Giga Impact - TM09
  (214, 21400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Heracross - Dig - TM15
  (214, 21400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Heracross - Rest - TM21
  (214, 21400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Heracross - Rock Slide - TM22
  (214, 21400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Heracross - Thief - TM23
  (214, 21400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Heracross - Snore - TM24
  (214, 21400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Heracross - Protect - TM25
  (214, 21400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Heracross - Attract - TM31
  (214, 21400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Heracross - Rain Dance - TM33
  (214, 21400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Heracross - Sunny Day - TM34
  (214, 21400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Heracross - Facade - TM39
  (214, 21400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Heracross - Helping Hand - TM41
  (214, 21400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Heracross - Revenge - TM42
  (214, 21400, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 29),
  -- Heracross - Brick Break - TM43
  (214, 21400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 30),
  -- Heracross - Rock Tomb - TM48
  (214, 21400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 31),
  -- Heracross - Bullet Seed - TM50
  (214, 21400, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 32),
  -- Heracross - Rock Blast - TM54
  (214, 21400, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 33),
  -- Heracross - Assurance - TM58
  (214, 21400, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 34),
  -- Heracross - Fling - TM59
  (214, 21400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Heracross - Shadow Claw - TM65
  (214, 21400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 36),
  -- Heracross - Venoshock - TM74
  (214, 21400, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 37),
  -- Heracross - Round - TM76
  (214, 21400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Heracross - Retaliate - TM79
  (214, 21400, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 39),
  -- Heracross - Bulldoze - TM81
  (214, 21400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 40),
  -- Heracross - False Swipe - TM94
  (214, 21400, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 41),
  -- Heracross - Smart Strike - TM96
  (214, 21400, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 42),
  -- Heracross - Brutal Swing - TM97
  (214, 21400, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 43),
  -- Heracross - Swords Dance - TR00
  (214, 21400, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 44),
  -- Heracross - Body Slam - TR01
  (214, 21400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 45),
  -- Heracross - Low Kick - TR07
  (214, 21400, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 46),
  -- Heracross - Earthquake - TR10
  (214, 21400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 47),
  -- Heracross - Substitute - TR20
  (214, 21400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Heracross - Reversal - TR21
  (214, 21400, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 49),
  -- Heracross - Spikes - TR23
  (214, 21400, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 50),
  -- Heracross - Endure - TR26
  (214, 21400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 51),
  -- Heracross - Sleep Talk - TR27
  (214, 21400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 52),
  -- Heracross - Megahorn - TR28
  (214, 21400, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 53),
  -- Heracross - Iron Defense - TR46
  (214, 21400, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 54),
  -- Heracross - Bulk Up - TR48
  (214, 21400, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 55),
  -- Heracross - Close Combat - TR53
  (214, 21400, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 56),
  -- Heracross - Focus Blast - TR64
  (214, 21400, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 57),
  -- Heracross - Stone Edge - TR75
  (214, 21400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 58),
  -- Heracross - Work Up - TR85
  (214, 21400, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 59),
  -- Heracross - High Horsepower - TR94
  (214, 21400, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 60),
  -- Heracross - Throat Chop - TR95
  (214, 21400, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 61),
  -- Heracross - Take Down - Egg
  (214, 21400, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Heracross - Double-Edge - Egg
  (214, 21400, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Heracross - Seismic Toss - Egg
  (214, 21400, 69, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Heracross - Harden - Egg
  (214, 21400, 106, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Heracross - Flail - Egg
  (214, 21400, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Heracross - Feint - Egg
  (214, 21400, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Heracross - Night Slash - Egg
  (214, 21400, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Sneasel - Scratch - Level 1
  (215, 21500, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sneasel - Leer - Level 1
  (215, 21500, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sneasel - Taunt - Level 6
  (215, 21500, 269, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Sneasel - Quick Attack - Level 12
  (215, 21500, 98, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Sneasel - Metal Claw - Level 18
  (215, 21500, 232, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Sneasel - Icy Wind - Level 24
  (215, 21500, 196, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Sneasel - Fury Swipes - Level 30
  (215, 21500, 154, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Sneasel - Hone Claws - Level 36
  (215, 21500, 468, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Sneasel - Beat Up - Level 42
  (215, 21500, 251, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Sneasel - Agility - Level 48
  (215, 21500, 97, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Sneasel - Screech - Level 54
  (215, 21500, 103, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Sneasel - Slash - Level 60
  (215, 21500, 163, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Sneasel - Mega Punch - TM00
  (215, 21500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 13),
  -- Sneasel - Mega Kick - TM01
  (215, 21500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 14),
  -- Sneasel - Ice Punch - TM04
  (215, 21500, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 15),
  -- Sneasel - Dig - TM15
  (215, 21500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 16),
  -- Sneasel - Screech - TM16
  (215, 21500, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 17),
  -- Sneasel - Reflect - TM18
  (215, 21500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 18),
  -- Sneasel - Rest - TM21
  (215, 21500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Sneasel - Thief - TM23
  (215, 21500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 20),
  -- Sneasel - Snore - TM24
  (215, 21500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Sneasel - Protect - TM25
  (215, 21500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Sneasel - Icy Wind - TM27
  (215, 21500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 23),
  -- Sneasel - Attract - TM31
  (215, 21500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Sneasel - Rain Dance - TM33
  (215, 21500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Sneasel - Sunny Day - TM34
  (215, 21500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Sneasel - Hail - TM35
  (215, 21500, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 27),
  -- Sneasel - Whirlpool - TM36
  (215, 21500, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 28),
  -- Sneasel - Beat Up - TM37
  (215, 21500, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 29),
  -- Sneasel - Facade - TM39
  (215, 21500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Sneasel - Swift - TM40
  (215, 21500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Sneasel - Brick Break - TM43
  (215, 21500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 32),
  -- Sneasel - Fake Tears - TM47
  (215, 21500, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 33),
  -- Sneasel - Payback - TM57
  (215, 21500, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 34),
  -- Sneasel - Fling - TM59
  (215, 21500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Sneasel - Avalanche - TM64
  (215, 21500, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 36),
  -- Sneasel - Shadow Claw - TM65
  (215, 21500, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 37),
  -- Sneasel - Psycho Cut - TM69
  (215, 21500, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 38),
  -- Sneasel - Low Sweep - TM75
  (215, 21500, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 39),
  -- Sneasel - Round - TM76
  (215, 21500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Sneasel - Retaliate - TM79
  (215, 21500, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 41),
  -- Sneasel - Snarl - TM85
  (215, 21500, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 42),
  -- Sneasel - False Swipe - TM94
  (215, 21500, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 43),
  -- Sneasel - Swords Dance - TR00
  (215, 21500, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 44),
  -- Sneasel - Surf - TR04
  (215, 21500, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 45),
  -- Sneasel - Ice Beam - TR05
  (215, 21500, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 46),
  -- Sneasel - Blizzard - TR06
  (215, 21500, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 47),
  -- Sneasel - Low Kick - TR07
  (215, 21500, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 48),
  -- Sneasel - Agility - TR12
  (215, 21500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 49),
  -- Sneasel - Substitute - TR20
  (215, 21500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 50),
  -- Sneasel - Endure - TR26
  (215, 21500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 51),
  -- Sneasel - Sleep Talk - TR27
  (215, 21500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 52),
  -- Sneasel - Iron Tail - TR31
  (215, 21500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 53),
  -- Sneasel - Shadow Ball - TR33
  (215, 21500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 54),
  -- Sneasel - Taunt - TR37
  (215, 21500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 55),
  -- Sneasel - Calm Mind - TR49
  (215, 21500, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 56),
  -- Sneasel - Poison Jab - TR57
  (215, 21500, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 57),
  -- Sneasel - Dark Pulse - TR58
  (215, 21500, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 58),
  -- Sneasel - X-Scissor - TR60
  (215, 21500, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 59),
  -- Sneasel - Foul Play - TR81
  (215, 21500, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 60),
  -- Sneasel - Throat Chop - TR95
  (215, 21500, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 61),
  -- Sneasel - Bite - Egg
  (215, 21500, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sneasel - Counter - Egg
  (215, 21500, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sneasel - Spite - Egg
  (215, 21500, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Sneasel - Fake Out - Egg
  (215, 21500, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sneasel - Feint - Egg
  (215, 21500, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sneasel - Ice Shard - Egg
  (215, 21500, 420, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Sneasel - Double Hit - Egg
  (215, 21500, 458, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Sneasel - Icicle Crash - Egg
  (215, 21500, 556, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Swinub - Tackle - Level 1
  (220, 22000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swinub - Mud-Slap - Level 1
  (220, 22000, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swinub - Powder Snow - Level 5
  (220, 22000, 181, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Swinub - Flail - Level 10
  (220, 22000, 175, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Swinub - Ice Shard - Level 15
  (220, 22000, 420, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Swinub - Mist - Level 20
  (220, 22000, 54, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Swinub - Endure - Level 25
  (220, 22000, 203, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Swinub - Icy Wind - Level 30
  (220, 22000, 196, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Swinub - Amnesia - Level 35
  (220, 22000, 133, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Swinub - Take Down - Level 40
  (220, 22000, 36, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Swinub - Earthquake - Level 45
  (220, 22000, 89, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Swinub - Blizzard - Level 50
  (220, 22000, 59, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Swinub - Dig - TM15
  (220, 22000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 13),
  -- Swinub - Light Screen - TM17
  (220, 22000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 14),
  -- Swinub - Reflect - TM18
  (220, 22000, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 15),
  -- Swinub - Rest - TM21
  (220, 22000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Swinub - Rock Slide - TM22
  (220, 22000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 17),
  -- Swinub - Snore - TM24
  (220, 22000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Swinub - Protect - TM25
  (220, 22000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Swinub - Scary Face - TM26
  (220, 22000, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 20),
  -- Swinub - Icy Wind - TM27
  (220, 22000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 21),
  -- Swinub - Attract - TM31
  (220, 22000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Swinub - Sandstorm - TM32
  (220, 22000, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 23),
  -- Swinub - Rain Dance - TM33
  (220, 22000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Swinub - Hail - TM35
  (220, 22000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 25),
  -- Swinub - Facade - TM39
  (220, 22000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Swinub - Rock Tomb - TM48
  (220, 22000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Swinub - Sand Tomb - TM49
  (220, 22000, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 28),
  -- Swinub - Icicle Spear - TM51
  (220, 22000, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 29),
  -- Swinub - Mud Shot - TM53
  (220, 22000, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 30),
  -- Swinub - Avalanche - TM64
  (220, 22000, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 31),
  -- Swinub - Round - TM76
  (220, 22000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Swinub - Bulldoze - TM81
  (220, 22000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 33),
  -- Swinub - Body Slam - TR01
  (220, 22000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 34),
  -- Swinub - Ice Beam - TR05
  (220, 22000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 35),
  -- Swinub - Blizzard - TR06
  (220, 22000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 36),
  -- Swinub - Earthquake - TR10
  (220, 22000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 37),
  -- Swinub - Amnesia - TR17
  (220, 22000, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 38),
  -- Swinub - Substitute - TR20
  (220, 22000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Swinub - Endure - TR26
  (220, 22000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Swinub - Sleep Talk - TR27
  (220, 22000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Swinub - Superpower - TR39
  (220, 22000, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 42),
  -- Swinub - Earth Power - TR67
  (220, 22000, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 43),
  -- Swinub - Stealth Rock - TR76
  (220, 22000, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 44),
  -- Swinub - Double-Edge - Egg
  (220, 22000, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Swinub - Bite - Egg
  (220, 22000, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Swinub - Fissure - Egg
  (220, 22000, 90, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Swinub - Curse - Egg
  (220, 22000, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Swinub - Ancient Power - Egg
  (220, 22000, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Swinub - Icicle Crash - Egg
  (220, 22000, 556, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Swinub - Freeze-Dry - Egg
  (220, 22000, 573, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Piloswine - Tackle - Level 1
  (221, 22100, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Piloswine - Flail - Level 1
  (221, 22100, 175, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Piloswine - Powder Snow - Level 1
  (221, 22100, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Piloswine - Mud-Slap - Level 1
  (221, 22100, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Piloswine - Ancient Power - Level 1
  (221, 22100, 246, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Piloswine - Ice Fang - Level 1
  (221, 22100, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Piloswine - Ice Shard - Level 15
  (221, 22100, 420, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Piloswine - Mist - Level 20
  (221, 22100, 54, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Piloswine - Endure - Level 25
  (221, 22100, 203, 18, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Piloswine - Icy Wind - Level 30
  (221, 22100, 196, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Piloswine - Amnesia - Level 37
  (221, 22100, 133, 18, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Piloswine - Take Down - Level 44
  (221, 22100, 36, 18, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Piloswine - Earthquake - Level 51
  (221, 22100, 89, 18, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Piloswine - Blizzard - Level 58
  (221, 22100, 59, 18, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Piloswine - Thrash - Level 65
  (221, 22100, 37, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Piloswine - Ice Fang - Evolution
  (221, 22100, 423, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Piloswine - Hyper Beam - TM08
  (221, 22100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Piloswine - Giga Impact - TM09
  (221, 22100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Piloswine - Dig - TM15
  (221, 22100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 19),
  -- Piloswine - Light Screen - TM17
  (221, 22100, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Piloswine - Reflect - TM18
  (221, 22100, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Piloswine - Rest - TM21
  (221, 22100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Piloswine - Rock Slide - TM22
  (221, 22100, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Piloswine - Snore - TM24
  (221, 22100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Piloswine - Protect - TM25
  (221, 22100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Piloswine - Scary Face - TM26
  (221, 22100, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Piloswine - Icy Wind - TM27
  (221, 22100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 27),
  -- Piloswine - Attract - TM31
  (221, 22100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Piloswine - Sandstorm - TM32
  (221, 22100, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 29),
  -- Piloswine - Rain Dance - TM33
  (221, 22100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Piloswine - Hail - TM35
  (221, 22100, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 31),
  -- Piloswine - Facade - TM39
  (221, 22100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Piloswine - Rock Tomb - TM48
  (221, 22100, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Piloswine - Sand Tomb - TM49
  (221, 22100, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 34),
  -- Piloswine - Icicle Spear - TM51
  (221, 22100, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 35),
  -- Piloswine - Mud Shot - TM53
  (221, 22100, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 36),
  -- Piloswine - Avalanche - TM64
  (221, 22100, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 37),
  -- Piloswine - Ice Fang - TM67
  (221, 22100, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 38),
  -- Piloswine - Round - TM76
  (221, 22100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Piloswine - Bulldoze - TM81
  (221, 22100, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 40),
  -- Piloswine - Stomping Tantrum - TM98
  (221, 22100, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 41),
  -- Piloswine - Body Slam - TR01
  (221, 22100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 42),
  -- Piloswine - Ice Beam - TR05
  (221, 22100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 43),
  -- Piloswine - Blizzard - TR06
  (221, 22100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 44),
  -- Piloswine - Earthquake - TR10
  (221, 22100, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 45),
  -- Piloswine - Amnesia - TR17
  (221, 22100, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 46),
  -- Piloswine - Substitute - TR20
  (221, 22100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Piloswine - Endure - TR26
  (221, 22100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Piloswine - Sleep Talk - TR27
  (221, 22100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Piloswine - Superpower - TR39
  (221, 22100, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 50),
  -- Piloswine - Earth Power - TR67
  (221, 22100, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 51),
  -- Piloswine - Stone Edge - TR75
  (221, 22100, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 52),
  -- Piloswine - Stealth Rock - TR76
  (221, 22100, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 53),
  -- Piloswine - High Horsepower - TR94
  (221, 22100, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 54),
  -- Corsola - Tackle - Level 1
  (222, 22200, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corsola - Harden - Level 1
  (222, 22200, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Corsola - Water Gun - Level 5
  (222, 22200, 55, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Corsola - Aqua Ring - Level 10
  (222, 22200, 392, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Corsola - Endure - Level 15
  (222, 22200, 203, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Corsola - Ancient Power - Level 20
  (222, 22200, 246, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Corsola - Bubble Beam - Level 25
  (222, 22200, 61, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Corsola - Flail - Level 30
  (222, 22200, 175, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Corsola - Life Dew - Level 35
  (222, 22200, 791, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Corsola - Power Gem - Level 40
  (222, 22200, 408, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Corsola - Earth Power - Level 45
  (222, 22200, 414, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Corsola - Recover - Level 50
  (222, 22200, 105, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Corsola - Mirror Coat - Level 55
  (222, 22200, 243, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Corsola - Dig - TM15
  (222, 22200, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 14),
  -- Corsola - Screech - TM16
  (222, 22200, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 15),
  -- Corsola - Light Screen - TM17
  (222, 22200, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Corsola - Reflect - TM18
  (222, 22200, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 17),
  -- Corsola - Safeguard - TM19
  (222, 22200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 18),
  -- Corsola - Self-Destruct - TM20
  (222, 22200, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 19),
  -- Corsola - Rest - TM21
  (222, 22200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Corsola - Rock Slide - TM22
  (222, 22200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Corsola - Snore - TM24
  (222, 22200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Corsola - Protect - TM25
  (222, 22200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Corsola - Icy Wind - TM27
  (222, 22200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 24),
  -- Corsola - Attract - TM31
  (222, 22200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Corsola - Sandstorm - TM32
  (222, 22200, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 26),
  -- Corsola - Rain Dance - TM33
  (222, 22200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Corsola - Sunny Day - TM34
  (222, 22200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Corsola - Hail - TM35
  (222, 22200, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 29),
  -- Corsola - Whirlpool - TM36
  (222, 22200, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 30),
  -- Corsola - Facade - TM39
  (222, 22200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Corsola - Rock Tomb - TM48
  (222, 22200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Corsola - Icicle Spear - TM51
  (222, 22200, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 33),
  -- Corsola - Rock Blast - TM54
  (222, 22200, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 34),
  -- Corsola - Brine - TM55
  (222, 22200, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 35),
  -- Corsola - Round - TM76
  (222, 22200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Corsola - Bulldoze - TM81
  (222, 22200, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 37),
  -- Corsola - Stomping Tantrum - TM98
  (222, 22200, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 38),
  -- Corsola - Body Slam - TR01
  (222, 22200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 39),
  -- Corsola - Hydro Pump - TR03
  (222, 22200, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 40),
  -- Corsola - Surf - TR04
  (222, 22200, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 41),
  -- Corsola - Ice Beam - TR05
  (222, 22200, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 42),
  -- Corsola - Blizzard - TR06
  (222, 22200, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 43),
  -- Corsola - Earthquake - TR10
  (222, 22200, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 44),
  -- Corsola - Psychic - TR11
  (222, 22200, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 45),
  -- Corsola - Amnesia - TR17
  (222, 22200, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 46),
  -- Corsola - Substitute - TR20
  (222, 22200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Corsola - Endure - TR26
  (222, 22200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Corsola - Sleep Talk - TR27
  (222, 22200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Corsola - Shadow Ball - TR33
  (222, 22200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 50),
  -- Corsola - Iron Defense - TR46
  (222, 22200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 51),
  -- Corsola - Calm Mind - TR49
  (222, 22200, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 52),
  -- Corsola - Power Gem - TR63
  (222, 22200, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 53),
  -- Corsola - Earth Power - TR67
  (222, 22200, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 54),
  -- Corsola - Stone Edge - TR75
  (222, 22200, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 55),
  -- Corsola - Stealth Rock - TR76
  (222, 22200, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 56),
  -- Corsola - Scald - TR84
  (222, 22200, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 57),
  -- Corsola - Throat Chop - TR95
  (222, 22200, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 58),
  -- Corsola - Liquidation - TR98
  (222, 22200, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 59),
  -- Corsola - Mist - Egg
  (222, 22200, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Corsola - Confuse Ray - Egg
  (222, 22200, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Corsola - Curse - Egg
  (222, 22200, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Corsola - Nature Power - Egg
  (222, 22200, 267, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Corsola - Water Pulse - Egg
  (222, 22200, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Corsola - Head Smash - Egg
  (222, 22200, 457, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Remoraid - Water Gun - Level 1
  (223, 22300, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Remoraid - Helping Hand - Level 1
  (223, 22300, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Remoraid - Water Pulse - Level 4
  (223, 22300, 352, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Remoraid - Focus Energy - Level 8
  (223, 22300, 116, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Remoraid - Psybeam - Level 12
  (223, 22300, 60, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Remoraid - Aurora Beam - Level 16
  (223, 22300, 62, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Remoraid - Bubble Beam - Level 20
  (223, 22300, 61, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Remoraid - Lock-On - Level 24
  (223, 22300, 199, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Remoraid - Bullet Seed - Level 28
  (223, 22300, 331, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Remoraid - Ice Beam - Level 32
  (223, 22300, 58, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Remoraid - Hydro Pump - Level 36
  (223, 22300, 56, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Remoraid - Soak - Level 40
  (223, 22300, 487, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Remoraid - Hyper Beam - Level 44
  (223, 22300, 63, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Remoraid - Hyper Beam - TM08
  (223, 22300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 14),
  -- Remoraid - Thunder Wave - TM14
  (223, 22300, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 15),
  -- Remoraid - Screech - TM16
  (223, 22300, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 16),
  -- Remoraid - Rest - TM21
  (223, 22300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Remoraid - Thief - TM23
  (223, 22300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Remoraid - Snore - TM24
  (223, 22300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Remoraid - Protect - TM25
  (223, 22300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Remoraid - Icy Wind - TM27
  (223, 22300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 21),
  -- Remoraid - Attract - TM31
  (223, 22300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Remoraid - Rain Dance - TM33
  (223, 22300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Remoraid - Sunny Day - TM34
  (223, 22300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Remoraid - Whirlpool - TM36
  (223, 22300, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 25),
  -- Remoraid - Facade - TM39
  (223, 22300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Remoraid - Swift - TM40
  (223, 22300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Remoraid - Helping Hand - TM41
  (223, 22300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Remoraid - Dive - TM45
  (223, 22300, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 29),
  -- Remoraid - Bullet Seed - TM50
  (223, 22300, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 30),
  -- Remoraid - Bounce - TM52
  (223, 22300, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 31),
  -- Remoraid - Mud Shot - TM53
  (223, 22300, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 32),
  -- Remoraid - Rock Blast - TM54
  (223, 22300, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 33),
  -- Remoraid - Brine - TM55
  (223, 22300, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 34),
  -- Remoraid - Assurance - TM58
  (223, 22300, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 35),
  -- Remoraid - Round - TM76
  (223, 22300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Remoraid - Flamethrower - TR02
  (223, 22300, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 37),
  -- Remoraid - Hydro Pump - TR03
  (223, 22300, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 38),
  -- Remoraid - Surf - TR04
  (223, 22300, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 39),
  -- Remoraid - Ice Beam - TR05
  (223, 22300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 40),
  -- Remoraid - Blizzard - TR06
  (223, 22300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 41),
  -- Remoraid - Psychic - TR11
  (223, 22300, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 42),
  -- Remoraid - Focus Energy - TR13
  (223, 22300, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 43),
  -- Remoraid - Fire Blast - TR15
  (223, 22300, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 44),
  -- Remoraid - Waterfall - TR16
  (223, 22300, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 45),
  -- Remoraid - Substitute - TR20
  (223, 22300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Remoraid - Endure - TR26
  (223, 22300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Remoraid - Sleep Talk - TR27
  (223, 22300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Remoraid - Seed Bomb - TR59
  (223, 22300, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 49),
  -- Remoraid - Gunk Shot - TR73
  (223, 22300, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 50),
  -- Remoraid - Scald - TR84
  (223, 22300, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 51),
  -- Remoraid - Supersonic - Egg
  (223, 22300, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Remoraid - Haze - Egg
  (223, 22300, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Remoraid - Flail - Egg
  (223, 22300, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Remoraid - Octazooka - Egg
  (223, 22300, 190, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Remoraid - Water Spout - Egg
  (223, 22300, 323, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Remoraid - Acid Spray - Egg
  (223, 22300, 491, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Octillery - Wrap - Level 1
  (224, 22400, 35, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Octillery - Water Gun - Level 1
  (224, 22400, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Octillery - Focus Energy - Level 1
  (224, 22400, 116, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Octillery - Octazooka - Level 1
  (224, 22400, 190, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Octillery - Helping Hand - Level 1
  (224, 22400, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Octillery - Rock Blast - Level 1
  (224, 22400, 350, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Octillery - Water Pulse - Level 1
  (224, 22400, 352, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Octillery - Gunk Shot - Level 1
  (224, 22400, 441, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Octillery - Psybeam - Level 12
  (224, 22400, 60, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Octillery - Aurora Beam - Level 16
  (224, 22400, 62, 18, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Octillery - Bubble Beam - Level 20
  (224, 22400, 61, 18, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Octillery - Lock-On - Level 24
  (224, 22400, 199, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Octillery - Bullet Seed - Level 30
  (224, 22400, 331, 18, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Octillery - Ice Beam - Level 36
  (224, 22400, 58, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Octillery - Hydro Pump - Level 42
  (224, 22400, 56, 18, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Octillery - Soak - Level 48
  (224, 22400, 487, 18, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Octillery - Hyper Beam - Level 54
  (224, 22400, 63, 18, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Octillery - Octazooka - Evolution
  (224, 22400, 190, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Octillery - Hyper Beam - TM08
  (224, 22400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Octillery - Giga Impact - TM09
  (224, 22400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Octillery - Thunder Wave - TM14
  (224, 22400, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 21),
  -- Octillery - Screech - TM16
  (224, 22400, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 22),
  -- Octillery - Rest - TM21
  (224, 22400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Octillery - Thief - TM23
  (224, 22400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Octillery - Snore - TM24
  (224, 22400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Octillery - Protect - TM25
  (224, 22400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Octillery - Icy Wind - TM27
  (224, 22400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 27),
  -- Octillery - Attract - TM31
  (224, 22400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Octillery - Rain Dance - TM33
  (224, 22400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Octillery - Sunny Day - TM34
  (224, 22400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Octillery - Whirlpool - TM36
  (224, 22400, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 31),
  -- Octillery - Facade - TM39
  (224, 22400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Octillery - Swift - TM40
  (224, 22400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Octillery - Helping Hand - TM41
  (224, 22400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 34),
  -- Octillery - Dive - TM45
  (224, 22400, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 35),
  -- Octillery - Bullet Seed - TM50
  (224, 22400, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 36),
  -- Octillery - Bounce - TM52
  (224, 22400, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 37),
  -- Octillery - Mud Shot - TM53
  (224, 22400, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 38),
  -- Octillery - Rock Blast - TM54
  (224, 22400, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 39),
  -- Octillery - Brine - TM55
  (224, 22400, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 40),
  -- Octillery - Payback - TM57
  (224, 22400, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 41),
  -- Octillery - Assurance - TM58
  (224, 22400, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 42),
  -- Octillery - Round - TM76
  (224, 22400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 43),
  -- Octillery - Flamethrower - TR02
  (224, 22400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 44),
  -- Octillery - Hydro Pump - TR03
  (224, 22400, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 45),
  -- Octillery - Surf - TR04
  (224, 22400, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 46),
  -- Octillery - Ice Beam - TR05
  (224, 22400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 47),
  -- Octillery - Blizzard - TR06
  (224, 22400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 48),
  -- Octillery - Psychic - TR11
  (224, 22400, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 49),
  -- Octillery - Focus Energy - TR13
  (224, 22400, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 50),
  -- Octillery - Fire Blast - TR15
  (224, 22400, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 51),
  -- Octillery - Waterfall - TR16
  (224, 22400, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 52),
  -- Octillery - Substitute - TR20
  (224, 22400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 53),
  -- Octillery - Sludge Bomb - TR22
  (224, 22400, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 54),
  -- Octillery - Endure - TR26
  (224, 22400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 55),
  -- Octillery - Sleep Talk - TR27
  (224, 22400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 56),
  -- Octillery - Seed Bomb - TR59
  (224, 22400, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 57),
  -- Octillery - Energy Ball - TR65
  (224, 22400, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 58),
  -- Octillery - Flash Cannon - TR70
  (224, 22400, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 59),
  -- Octillery - Gunk Shot - TR73
  (224, 22400, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 60),
  -- Octillery - Sludge Wave - TR78
  (224, 22400, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 61),
  -- Octillery - Scald - TR84
  (224, 22400, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 62),
  -- Octillery - Liquidation - TR98
  (224, 22400, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 63),
  -- Delibird - Present - Level 1
  (225, 22500, 217, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Delibird - Drill Peck - Level 25
  (225, 22500, 65, 18, NULL, 1, 25, NULL, NULL, NULL, 2),
  -- Delibird - Mega Punch - TM00
  (225, 22500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 3),
  -- Delibird - Mega Kick - TM01
  (225, 22500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 4),
  -- Delibird - Ice Punch - TM04
  (225, 22500, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 5),
  -- Delibird - Fly - TM06
  (225, 22500, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 6),
  -- Delibird - Rest - TM21
  (225, 22500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 7),
  -- Delibird - Thief - TM23
  (225, 22500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 8),
  -- Delibird - Snore - TM24
  (225, 22500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 9),
  -- Delibird - Protect - TM25
  (225, 22500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 10),
  -- Delibird - Icy Wind - TM27
  (225, 22500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 11),
  -- Delibird - Steel Wing - TM30
  (225, 22500, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 12),
  -- Delibird - Attract - TM31
  (225, 22500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 13),
  -- Delibird - Rain Dance - TM33
  (225, 22500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 14),
  -- Delibird - Hail - TM35
  (225, 22500, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 15),
  -- Delibird - Facade - TM39
  (225, 22500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 16),
  -- Delibird - Swift - TM40
  (225, 22500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 17),
  -- Delibird - Helping Hand - TM41
  (225, 22500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 18),
  -- Delibird - Brick Break - TM43
  (225, 22500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 19),
  -- Delibird - Weather Ball - TM46
  (225, 22500, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 20),
  -- Delibird - Icicle Spear - TM51
  (225, 22500, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 21),
  -- Delibird - Bounce - TM52
  (225, 22500, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 22),
  -- Delibird - Assurance - TM58
  (225, 22500, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 23),
  -- Delibird - Fling - TM59
  (225, 22500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 24),
  -- Delibird - Avalanche - TM64
  (225, 22500, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 25),
  -- Delibird - Round - TM76
  (225, 22500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 26),
  -- Delibird - Brutal Swing - TM97
  (225, 22500, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 27),
  -- Delibird - Body Slam - TR01
  (225, 22500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 28),
  -- Delibird - Ice Beam - TR05
  (225, 22500, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 29),
  -- Delibird - Blizzard - TR06
  (225, 22500, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 30),
  -- Delibird - Agility - TR12
  (225, 22500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 31),
  -- Delibird - Substitute - TR20
  (225, 22500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 32),
  -- Delibird - Spikes - TR23
  (225, 22500, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 33),
  -- Delibird - Endure - TR26
  (225, 22500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 34),
  -- Delibird - Sleep Talk - TR27
  (225, 22500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 35),
  -- Delibird - Baton Pass - TR29
  (225, 22500, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 36),
  -- Delibird - Future Sight - TR34
  (225, 22500, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 37),
  -- Delibird - Seed Bomb - TR59
  (225, 22500, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 38),
  -- Delibird - Brave Bird - TR66
  (225, 22500, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 39),
  -- Delibird - Gunk Shot - TR73
  (225, 22500, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 40),
  -- Delibird - Drill Run - TR87
  (225, 22500, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 41),
  -- Delibird - Aurora Beam - Egg
  (225, 22500, 62, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Delibird - Counter - Egg
  (225, 22500, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Delibird - Quick Attack - Egg
  (225, 22500, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Delibird - Splash - Egg
  (225, 22500, 150, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Delibird - Destiny Bond - Egg
  (225, 22500, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Delibird - Rapid Spin - Egg
  (225, 22500, 229, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Delibird - Fake Out - Egg
  (225, 22500, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Delibird - Memento - Egg
  (225, 22500, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Delibird - Ice Shard - Egg
  (225, 22500, 420, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Delibird - Freeze-Dry - Egg
  (225, 22500, 573, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Delibird - Aurora Veil - Egg
  (225, 22500, 694, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mantine - Wing Attack - Level 1
  (226, 22600, 17, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mantine - Tackle - Level 1
  (226, 22600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mantine - Supersonic - Level 1
  (226, 22600, 48, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mantine - Water Gun - Level 1
  (226, 22600, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mantine - Psybeam - Level 1
  (226, 22600, 60, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mantine - Bullet Seed - Level 1
  (226, 22600, 331, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mantine - Roost - Level 1
  (226, 22600, 355, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Mantine - Water Pulse - Level 12
  (226, 22600, 352, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Mantine - Wide Guard - Level 16
  (226, 22600, 469, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Mantine - Agility - Level 20
  (226, 22600, 97, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Mantine - Bubble Beam - Level 24
  (226, 22600, 61, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Mantine - Headbutt - Level 28
  (226, 22600, 29, 18, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Mantine - Air Slash - Level 32
  (226, 22600, 403, 18, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Mantine - Aqua Ring - Level 36
  (226, 22600, 392, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Mantine - Bounce - Level 40
  (226, 22600, 340, 18, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Mantine - Take Down - Level 44
  (226, 22600, 36, 18, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Mantine - Hydro Pump - Level 48
  (226, 22600, 56, 18, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Mantine - Hyper Beam - TM08
  (226, 22600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Mantine - Giga Impact - TM09
  (226, 22600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Mantine - Rest - TM21
  (226, 22600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Mantine - Rock Slide - TM22
  (226, 22600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Mantine - Snore - TM24
  (226, 22600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Mantine - Protect - TM25
  (226, 22600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Mantine - Icy Wind - TM27
  (226, 22600, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 24),
  -- Mantine - Attract - TM31
  (226, 22600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Mantine - Rain Dance - TM33
  (226, 22600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Mantine - Hail - TM35
  (226, 22600, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 27),
  -- Mantine - Whirlpool - TM36
  (226, 22600, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 28),
  -- Mantine - Facade - TM39
  (226, 22600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Mantine - Swift - TM40
  (226, 22600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 30),
  -- Mantine - Helping Hand - TM41
  (226, 22600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 31),
  -- Mantine - Dive - TM45
  (226, 22600, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 32),
  -- Mantine - Rock Tomb - TM48
  (226, 22600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Mantine - Bullet Seed - TM50
  (226, 22600, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 34),
  -- Mantine - Bounce - TM52
  (226, 22600, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 35),
  -- Mantine - Rock Blast - TM54
  (226, 22600, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 36),
  -- Mantine - Brine - TM55
  (226, 22600, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 37),
  -- Mantine - Assurance - TM58
  (226, 22600, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 38),
  -- Mantine - Round - TM76
  (226, 22600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Mantine - Acrobatics - TM78
  (226, 22600, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 40),
  -- Mantine - Bulldoze - TM81
  (226, 22600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 41),
  -- Mantine - Air Slash - TM95
  (226, 22600, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 42),
  -- Mantine - Body Slam - TR01
  (226, 22600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Mantine - Hydro Pump - TR03
  (226, 22600, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 44),
  -- Mantine - Surf - TR04
  (226, 22600, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 45),
  -- Mantine - Ice Beam - TR05
  (226, 22600, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 46),
  -- Mantine - Blizzard - TR06
  (226, 22600, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 47),
  -- Mantine - Earthquake - TR10
  (226, 22600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 48),
  -- Mantine - Agility - TR12
  (226, 22600, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 49),
  -- Mantine - Waterfall - TR16
  (226, 22600, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 50),
  -- Mantine - Amnesia - TR17
  (226, 22600, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 51),
  -- Mantine - Substitute - TR20
  (226, 22600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 52),
  -- Mantine - Endure - TR26
  (226, 22600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Mantine - Sleep Talk - TR27
  (226, 22600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Mantine - Seed Bomb - TR59
  (226, 22600, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 55),
  -- Mantine - Gunk Shot - TR73
  (226, 22600, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 56),
  -- Mantine - Iron Head - TR74
  (226, 22600, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 57),
  -- Mantine - Scald - TR84
  (226, 22600, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 58),
  -- Mantine - Hurricane - TR89
  (226, 22600, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 59),
  -- Mantine - Liquidation - TR98
  (226, 22600, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 60),
  -- Mantine - Body Press - TR99
  (226, 22600, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 61),
  -- Mantine - Slam - Egg
  (226, 22600, 21, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Mantine - Confuse Ray - Egg
  (226, 22600, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Mantine - Haze - Egg
  (226, 22600, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Mantine - Splash - Egg
  (226, 22600, 150, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Mantine - Twister - Egg
  (226, 22600, 239, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Mantine - Mirror Coat - Egg
  (226, 22600, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mantine - Tailwind - Egg
  (226, 22600, 366, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Skarmory - Leer - Level 1
  (227, 22700, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skarmory - Peck - Level 1
  (227, 22700, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skarmory - Sand Attack - Level 4
  (227, 22700, 28, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Skarmory - Fury Attack - Level 8
  (227, 22700, 31, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Skarmory - Metal Claw - Level 12
  (227, 22700, 232, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Skarmory - Agility - Level 16
  (227, 22700, 97, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Skarmory - Wing Attack - Level 20
  (227, 22700, 17, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Skarmory - Slash - Level 24
  (227, 22700, 163, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Skarmory - Steel Wing - Level 28
  (227, 22700, 211, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Skarmory - Autotomize - Level 32
  (227, 22700, 475, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Skarmory - Drill Peck - Level 36
  (227, 22700, 65, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Skarmory - Metal Sound - Level 40
  (227, 22700, 319, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Skarmory - Spikes - Level 44
  (227, 22700, 191, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Skarmory - Iron Defense - Level 48
  (227, 22700, 334, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Skarmory - Brave Bird - Level 52
  (227, 22700, 413, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Skarmory - Fly - TM06
  (227, 22700, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 16),
  -- Skarmory - Rest - TM21
  (227, 22700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Skarmory - Rock Slide - TM22
  (227, 22700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 18),
  -- Skarmory - Thief - TM23
  (227, 22700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 19),
  -- Skarmory - Snore - TM24
  (227, 22700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Skarmory - Protect - TM25
  (227, 22700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Skarmory - Icy Wind - TM27
  (227, 22700, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 22),
  -- Skarmory - Steel Wing - TM30
  (227, 22700, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 23),
  -- Skarmory - Attract - TM31
  (227, 22700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Skarmory - Sandstorm - TM32
  (227, 22700, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 25),
  -- Skarmory - Sunny Day - TM34
  (227, 22700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Skarmory - Facade - TM39
  (227, 22700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Skarmory - Swift - TM40
  (227, 22700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 28),
  -- Skarmory - Rock Tomb - TM48
  (227, 22700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 29),
  -- Skarmory - Sand Tomb - TM49
  (227, 22700, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 30),
  -- Skarmory - Payback - TM57
  (227, 22700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Skarmory - Assurance - TM58
  (227, 22700, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 32),
  -- Skarmory - Guard Swap - TM61
  (227, 22700, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 33),
  -- Skarmory - Round - TM76
  (227, 22700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Skarmory - Air Slash - TM95
  (227, 22700, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 35),
  -- Skarmory - Swords Dance - TR00
  (227, 22700, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 36),
  -- Skarmory - Agility - TR12
  (227, 22700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 37),
  -- Skarmory - Substitute - TR20
  (227, 22700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Skarmory - Spikes - TR23
  (227, 22700, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 39),
  -- Skarmory - Endure - TR26
  (227, 22700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Skarmory - Sleep Talk - TR27
  (227, 22700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Skarmory - Taunt - TR37
  (227, 22700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 42),
  -- Skarmory - Iron Defense - TR46
  (227, 22700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 43),
  -- Skarmory - Dark Pulse - TR58
  (227, 22700, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 44),
  -- Skarmory - X-Scissor - TR60
  (227, 22700, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 45),
  -- Skarmory - Brave Bird - TR66
  (227, 22700, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 46),
  -- Skarmory - Flash Cannon - TR70
  (227, 22700, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 47),
  -- Skarmory - Iron Head - TR74
  (227, 22700, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 48),
  -- Skarmory - Stealth Rock - TR76
  (227, 22700, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 49),
  -- Skarmory - Body Press - TR99
  (227, 22700, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 50),
  -- Skarmory - Whirlwind - Egg
  (227, 22700, 18, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Skarmory - Sky Attack - Egg
  (227, 22700, 143, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Skarmory - Curse - Egg
  (227, 22700, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Skarmory - Air Cutter - Egg
  (227, 22700, 314, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Skarmory - Roost - Egg
  (227, 22700, 355, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skarmory - Feint - Egg
  (227, 22700, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skarmory - Night Slash - Egg
  (227, 22700, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Skarmory - Steel Beam - Tutor
  (227, 22700, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 58),
  -- Kingdra - Leer - Level 1
  (230, 23000, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kingdra - Water Gun - Level 1
  (230, 23000, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kingdra - Smokescreen - Level 1
  (230, 23000, 108, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kingdra - Twister - Level 1
  (230, 23000, 239, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kingdra - Whirlpool - Level 1
  (230, 23000, 250, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kingdra - Yawn - Level 1
  (230, 23000, 281, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Kingdra - Focus Energy - Level 15
  (230, 23000, 116, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Kingdra - Dragon Breath - Level 20
  (230, 23000, 225, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Kingdra - Bubble Beam - Level 25
  (230, 23000, 61, 18, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Kingdra - Agility - Level 30
  (230, 23000, 97, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Kingdra - Laser Focus - Level 37
  (230, 23000, 673, 18, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Kingdra - Dragon Pulse - Level 44
  (230, 23000, 406, 18, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Kingdra - Hydro Pump - Level 51
  (230, 23000, 56, 18, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Kingdra - Dragon Dance - Level 58
  (230, 23000, 349, 18, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Kingdra - Rain Dance - Level 65
  (230, 23000, 240, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Kingdra - Hyper Beam - TM08
  (230, 23000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Kingdra - Giga Impact - TM09
  (230, 23000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Kingdra - Rest - TM21
  (230, 23000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Kingdra - Snore - TM24
  (230, 23000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Kingdra - Protect - TM25
  (230, 23000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Kingdra - Icy Wind - TM27
  (230, 23000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 21),
  -- Kingdra - Attract - TM31
  (230, 23000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Kingdra - Rain Dance - TM33
  (230, 23000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Kingdra - Hail - TM35
  (230, 23000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 24),
  -- Kingdra - Whirlpool - TM36
  (230, 23000, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 25),
  -- Kingdra - Facade - TM39
  (230, 23000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Kingdra - Swift - TM40
  (230, 23000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Kingdra - Dive - TM45
  (230, 23000, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 28),
  -- Kingdra - Bounce - TM52
  (230, 23000, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 29),
  -- Kingdra - Brine - TM55
  (230, 23000, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 30),
  -- Kingdra - Round - TM76
  (230, 23000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Kingdra - Breaking Swipe - TM99
  (230, 23000, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 32),
  -- Kingdra - Body Slam - TR01
  (230, 23000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 33),
  -- Kingdra - Hydro Pump - TR03
  (230, 23000, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 34),
  -- Kingdra - Surf - TR04
  (230, 23000, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 35),
  -- Kingdra - Ice Beam - TR05
  (230, 23000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 36),
  -- Kingdra - Blizzard - TR06
  (230, 23000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 37),
  -- Kingdra - Agility - TR12
  (230, 23000, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 38),
  -- Kingdra - Focus Energy - TR13
  (230, 23000, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 39),
  -- Kingdra - Waterfall - TR16
  (230, 23000, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 40),
  -- Kingdra - Substitute - TR20
  (230, 23000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Kingdra - Outrage - TR24
  (230, 23000, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 42),
  -- Kingdra - Endure - TR26
  (230, 23000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Kingdra - Sleep Talk - TR27
  (230, 23000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Kingdra - Muddy Water - TR45
  (230, 23000, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 45),
  -- Kingdra - Dragon Dance - TR51
  (230, 23000, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 46),
  -- Kingdra - Dragon Pulse - TR62
  (230, 23000, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 47),
  -- Kingdra - Flash Cannon - TR70
  (230, 23000, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 48),
  -- Kingdra - Iron Head - TR74
  (230, 23000, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 49),
  -- Kingdra - Scald - TR84
  (230, 23000, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 50),
  -- Kingdra - Hurricane - TR89
  (230, 23000, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 51),
  -- Kingdra - Liquidation - TR98
  (230, 23000, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 52),
  -- Kingdra - Draco Meteor - Tutor
  (230, 23000, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 53),
  -- Porygon2 - Tackle - Level 1
  (233, 23300, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon2 - Defense Curl - Level 1
  (233, 23300, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon2 - Conversion - Level 1
  (233, 23300, 160, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon2 - Recycle - Level 1
  (233, 23300, 278, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Porygon2 - Magnet Rise - Level 1
  (233, 23300, 393, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Porygon2 - Thunder Shock - Level 15
  (233, 23300, 84, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Porygon2 - Psybeam - Level 20
  (233, 23300, 60, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Porygon2 - Conversion 2 - Level 25
  (233, 23300, 176, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Porygon2 - Agility - Level 30
  (233, 23300, 97, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Porygon2 - Recover - Level 35
  (233, 23300, 105, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Porygon2 - Discharge - Level 40
  (233, 23300, 435, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Porygon2 - Tri Attack - Level 45
  (233, 23300, 161, 18, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Porygon2 - Magic Coat - Level 50
  (233, 23300, 277, 18, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Porygon2 - Lock-On - Level 55
  (233, 23300, 199, 18, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Porygon2 - Zap Cannon - Level 60
  (233, 23300, 192, 18, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Porygon2 - Hyper Beam - Level 65
  (233, 23300, 63, 18, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Porygon2 - Hyper Beam - TM08
  (233, 23300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Porygon2 - Giga Impact - TM09
  (233, 23300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Porygon2 - Solar Beam - TM11
  (233, 23300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 19),
  -- Porygon2 - Thunder Wave - TM14
  (233, 23300, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 20),
  -- Porygon2 - Rest - TM21
  (233, 23300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Porygon2 - Thief - TM23
  (233, 23300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 22),
  -- Porygon2 - Snore - TM24
  (233, 23300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Porygon2 - Protect - TM25
  (233, 23300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Porygon2 - Icy Wind - TM27
  (233, 23300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 25),
  -- Porygon2 - Rain Dance - TM33
  (233, 23300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Porygon2 - Sunny Day - TM34
  (233, 23300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Porygon2 - Facade - TM39
  (233, 23300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Porygon2 - Swift - TM40
  (233, 23300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 29),
  -- Porygon2 - Power Swap - TM60
  (233, 23300, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 30),
  -- Porygon2 - Guard Swap - TM61
  (233, 23300, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 31),
  -- Porygon2 - Speed Swap - TM62
  (233, 23300, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 32),
  -- Porygon2 - Trick Room - TM70
  (233, 23300, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 33),
  -- Porygon2 - Wonder Room - TM71
  (233, 23300, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 34),
  -- Porygon2 - Round - TM76
  (233, 23300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Porygon2 - Electroweb - TM82
  (233, 23300, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 36),
  -- Porygon2 - Eerie Impulse - TM93
  (233, 23300, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 37),
  -- Porygon2 - Ice Beam - TR05
  (233, 23300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 38),
  -- Porygon2 - Blizzard - TR06
  (233, 23300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 39),
  -- Porygon2 - Thunderbolt - TR08
  (233, 23300, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 40),
  -- Porygon2 - Thunder - TR09
  (233, 23300, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 41),
  -- Porygon2 - Psychic - TR11
  (233, 23300, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 42),
  -- Porygon2 - Agility - TR12
  (233, 23300, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 43),
  -- Porygon2 - Tri Attack - TR19
  (233, 23300, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 44),
  -- Porygon2 - Substitute - TR20
  (233, 23300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Porygon2 - Psyshock - TR25
  (233, 23300, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 46),
  -- Porygon2 - Endure - TR26
  (233, 23300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Porygon2 - Sleep Talk - TR27
  (233, 23300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Porygon2 - Iron Tail - TR31
  (233, 23300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 49),
  -- Porygon2 - Shadow Ball - TR33
  (233, 23300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 50),
  -- Porygon2 - Trick - TR38
  (233, 23300, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 51),
  -- Porygon2 - Zen Headbutt - TR69
  (233, 23300, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 52),
  -- Porygon2 - Foul Play - TR81
  (233, 23300, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 53),
  -- Porygon2 - Ally Switch - TR83
  (233, 23300, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 54),
  -- Tyrogue - Tackle - Level 1
  (236, 23600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyrogue - Focus Energy - Level 1
  (236, 23600, 116, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tyrogue - Fake Out - Level 1
  (236, 23600, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tyrogue - Helping Hand - Level 1
  (236, 23600, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tyrogue - Mega Punch - TM00
  (236, 23600, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 5),
  -- Tyrogue - Mega Kick - TM01
  (236, 23600, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 6),
  -- Tyrogue - Rest - TM21
  (236, 23600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 7),
  -- Tyrogue - Rock Slide - TM22
  (236, 23600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 8),
  -- Tyrogue - Thief - TM23
  (236, 23600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 9),
  -- Tyrogue - Snore - TM24
  (236, 23600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 10),
  -- Tyrogue - Protect - TM25
  (236, 23600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 11),
  -- Tyrogue - Attract - TM31
  (236, 23600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 12),
  -- Tyrogue - Rain Dance - TM33
  (236, 23600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 13),
  -- Tyrogue - Sunny Day - TM34
  (236, 23600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 14),
  -- Tyrogue - Facade - TM39
  (236, 23600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 15),
  -- Tyrogue - Swift - TM40
  (236, 23600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 16),
  -- Tyrogue - Helping Hand - TM41
  (236, 23600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 17),
  -- Tyrogue - Brick Break - TM43
  (236, 23600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 18),
  -- Tyrogue - Low Sweep - TM75
  (236, 23600, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 19),
  -- Tyrogue - Round - TM76
  (236, 23600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 20),
  -- Tyrogue - Retaliate - TM79
  (236, 23600, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 21),
  -- Tyrogue - Bulldoze - TM81
  (236, 23600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 22),
  -- Tyrogue - Body Slam - TR01
  (236, 23600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 23),
  -- Tyrogue - Low Kick - TR07
  (236, 23600, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 24),
  -- Tyrogue - Earthquake - TR10
  (236, 23600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 25),
  -- Tyrogue - Focus Energy - TR13
  (236, 23600, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 26),
  -- Tyrogue - Substitute - TR20
  (236, 23600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 27),
  -- Tyrogue - Endure - TR26
  (236, 23600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 28),
  -- Tyrogue - Sleep Talk - TR27
  (236, 23600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 29),
  -- Tyrogue - Uproar - TR35
  (236, 23600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 30),
  -- Tyrogue - Bulk Up - TR48
  (236, 23600, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 31),
  -- Tyrogue - Work Up - TR85
  (236, 23600, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 32),
  -- Tyrogue - Counter - Egg
  (236, 23600, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Tyrogue - High Jump Kick - Egg
  (236, 23600, 136, 18, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Tyrogue - Mind Reader - Egg
  (236, 23600, 170, 18, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Tyrogue - Mach Punch - Egg
  (236, 23600, 183, 18, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Tyrogue - Rapid Spin - Egg
  (236, 23600, 229, 18, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Tyrogue - Feint - Egg
  (236, 23600, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Tyrogue - Vacuum Wave - Egg
  (236, 23600, 410, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Tyrogue - Bullet Punch - Egg
  (236, 23600, 418, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Hitmontop - Tackle - Level 1
  (237, 23700, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmontop - Focus Energy - Level 1
  (237, 23700, 116, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmontop - Triple Kick - Level 1
  (237, 23700, 167, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hitmontop - Rapid Spin - Level 1
  (237, 23700, 229, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hitmontop - Fake Out - Level 1
  (237, 23700, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hitmontop - Helping Hand - Level 1
  (237, 23700, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Hitmontop - Feint - Level 1
  (237, 23700, 364, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Hitmontop - Quick Attack - Level 4
  (237, 23700, 98, 18, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Hitmontop - Gyro Ball - Level 8
  (237, 23700, 360, 18, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Hitmontop - Detect - Level 12
  (237, 23700, 197, 18, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Hitmontop - Revenge - Level 16
  (237, 23700, 279, 18, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Hitmontop - Wide Guard - Level 21
  (237, 23700, 469, 18, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Hitmontop - Quick Guard - Level 21
  (237, 23700, 501, 18, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Hitmontop - Sucker Punch - Level 24
  (237, 23700, 389, 18, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Hitmontop - Agility - Level 28
  (237, 23700, 97, 18, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Hitmontop - Dig - Level 32
  (237, 23700, 91, 18, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Hitmontop - Close Combat - Level 36
  (237, 23700, 370, 18, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Hitmontop - Counter - Level 40
  (237, 23700, 68, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Hitmontop - Endeavor - Level 44
  (237, 23700, 283, 18, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Hitmontop - Triple Kick - Evolution
  (237, 23700, 167, 18, NULL, 7, NULL, NULL, NULL, NULL, 20),
  -- Hitmontop - Mega Punch - TM00
  (237, 23700, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 21),
  -- Hitmontop - Mega Kick - TM01
  (237, 23700, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 22),
  -- Hitmontop - Dig - TM15
  (237, 23700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 23),
  -- Hitmontop - Rest - TM21
  (237, 23700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Hitmontop - Rock Slide - TM22
  (237, 23700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 25),
  -- Hitmontop - Thief - TM23
  (237, 23700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 26),
  -- Hitmontop - Snore - TM24
  (237, 23700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Hitmontop - Protect - TM25
  (237, 23700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Hitmontop - Attract - TM31
  (237, 23700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Hitmontop - Sandstorm - TM32
  (237, 23700, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 30),
  -- Hitmontop - Rain Dance - TM33
  (237, 23700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Hitmontop - Sunny Day - TM34
  (237, 23700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Hitmontop - Facade - TM39
  (237, 23700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Hitmontop - Swift - TM40
  (237, 23700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 34),
  -- Hitmontop - Helping Hand - TM41
  (237, 23700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 35),
  -- Hitmontop - Revenge - TM42
  (237, 23700, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 36),
  -- Hitmontop - Brick Break - TM43
  (237, 23700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 37),
  -- Hitmontop - Low Sweep - TM75
  (237, 23700, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 38),
  -- Hitmontop - Round - TM76
  (237, 23700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Hitmontop - Retaliate - TM79
  (237, 23700, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 40),
  -- Hitmontop - Bulldoze - TM81
  (237, 23700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 41),
  -- Hitmontop - Brutal Swing - TM97
  (237, 23700, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 42),
  -- Hitmontop - Body Slam - TR01
  (237, 23700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Hitmontop - Low Kick - TR07
  (237, 23700, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 44),
  -- Hitmontop - Earthquake - TR10
  (237, 23700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 45),
  -- Hitmontop - Agility - TR12
  (237, 23700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 46),
  -- Hitmontop - Focus Energy - TR13
  (237, 23700, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 47),
  -- Hitmontop - Substitute - TR20
  (237, 23700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Hitmontop - Endure - TR26
  (237, 23700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Hitmontop - Sleep Talk - TR27
  (237, 23700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Hitmontop - Uproar - TR35
  (237, 23700, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 51),
  -- Hitmontop - Bulk Up - TR48
  (237, 23700, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 52),
  -- Hitmontop - Gyro Ball - TR52
  (237, 23700, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 53),
  -- Hitmontop - Close Combat - TR53
  (237, 23700, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 54),
  -- Hitmontop - Focus Blast - TR64
  (237, 23700, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 55),
  -- Hitmontop - Stone Edge - TR75
  (237, 23700, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 56),
  -- Hitmontop - Work Up - TR85
  (237, 23700, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 57),
  -- Hitmontop - Drill Run - TR87
  (237, 23700, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 58),
  -- Smoochum - Pound - Level 1
  (238, 23800, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Smoochum - Lick - Level 1
  (238, 23800, 122, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Smoochum - Powder Snow - Level 4
  (238, 23800, 181, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Smoochum - Copycat - Level 8
  (238, 23800, 383, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Smoochum - Confusion - Level 12
  (238, 23800, 93, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Smoochum - Covet - Level 16
  (238, 23800, 343, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Smoochum - Sing - Level 20
  (238, 23800, 47, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Smoochum - Fake Tears - Level 24
  (238, 23800, 313, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Smoochum - Ice Punch - Level 28
  (238, 23800, 8, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Smoochum - Psychic - Level 32
  (238, 23800, 94, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Smoochum - Sweet Kiss - Level 36
  (238, 23800, 186, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Smoochum - Mean Look - Level 40
  (238, 23800, 212, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Smoochum - Perish Song - Level 44
  (238, 23800, 195, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Smoochum - Blizzard - Level 48
  (238, 23800, 59, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Smoochum - Mega Punch - TM00
  (238, 23800, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Smoochum - Mega Kick - TM01
  (238, 23800, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Smoochum - Ice Punch - TM04
  (238, 23800, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 17),
  -- Smoochum - Light Screen - TM17
  (238, 23800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 18),
  -- Smoochum - Reflect - TM18
  (238, 23800, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 19),
  -- Smoochum - Rest - TM21
  (238, 23800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Smoochum - Thief - TM23
  (238, 23800, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Smoochum - Snore - TM24
  (238, 23800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Smoochum - Protect - TM25
  (238, 23800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Smoochum - Icy Wind - TM27
  (238, 23800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 24),
  -- Smoochum - Charm - TM29
  (238, 23800, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 25),
  -- Smoochum - Attract - TM31
  (238, 23800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Smoochum - Rain Dance - TM33
  (238, 23800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Smoochum - Hail - TM35
  (238, 23800, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 28),
  -- Smoochum - Facade - TM39
  (238, 23800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Smoochum - Helping Hand - TM41
  (238, 23800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Smoochum - Fake Tears - TM47
  (238, 23800, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 31),
  -- Smoochum - Payback - TM57
  (238, 23800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 32),
  -- Smoochum - Fling - TM59
  (238, 23800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 33),
  -- Smoochum - Avalanche - TM64
  (238, 23800, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 34),
  -- Smoochum - Trick Room - TM70
  (238, 23800, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 35),
  -- Smoochum - Wonder Room - TM71
  (238, 23800, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 36),
  -- Smoochum - Magic Room - TM72
  (238, 23800, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 37),
  -- Smoochum - Round - TM76
  (238, 23800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Smoochum - Draining Kiss - TM87
  (238, 23800, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 39),
  -- Smoochum - Body Slam - TR01
  (238, 23800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 40),
  -- Smoochum - Ice Beam - TR05
  (238, 23800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 41),
  -- Smoochum - Blizzard - TR06
  (238, 23800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 42),
  -- Smoochum - Psychic - TR11
  (238, 23800, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 43),
  -- Smoochum - Metronome - TR14
  (238, 23800, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 44),
  -- Smoochum - Substitute - TR20
  (238, 23800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Smoochum - Psyshock - TR25
  (238, 23800, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 46),
  -- Smoochum - Endure - TR26
  (238, 23800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Smoochum - Sleep Talk - TR27
  (238, 23800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Smoochum - Encore - TR30
  (238, 23800, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 49),
  -- Smoochum - Shadow Ball - TR33
  (238, 23800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 50),
  -- Smoochum - Uproar - TR35
  (238, 23800, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 51),
  -- Smoochum - Trick - TR38
  (238, 23800, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 52),
  -- Smoochum - Skill Swap - TR40
  (238, 23800, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 53),
  -- Smoochum - Calm Mind - TR49
  (238, 23800, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 54),
  -- Smoochum - Nasty Plot - TR68
  (238, 23800, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 55),
  -- Smoochum - Zen Headbutt - TR69
  (238, 23800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 56),
  -- Smoochum - Grass Knot - TR77
  (238, 23800, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 57),
  -- Smoochum - Stored Power - TR82
  (238, 23800, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 58),
  -- Smoochum - Fake Out - Egg
  (238, 23800, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Smoochum - Role Play - Egg
  (238, 23800, 272, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Smoochum - Wish - Egg
  (238, 23800, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Elekid - Leer - Level 1
  (239, 23900, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Elekid - Quick Attack - Level 1
  (239, 23900, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Elekid - Thunder Shock - Level 4
  (239, 23900, 84, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Elekid - Charge - Level 8
  (239, 23900, 268, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Elekid - Swift - Level 12
  (239, 23900, 129, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Elekid - Shock Wave - Level 16
  (239, 23900, 351, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Elekid - Thunder Wave - Level 20
  (239, 23900, 86, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Elekid - Screech - Level 24
  (239, 23900, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Elekid - Thunder Punch - Level 28
  (239, 23900, 9, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Elekid - Discharge - Level 32
  (239, 23900, 435, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Elekid - Low Kick - Level 36
  (239, 23900, 67, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Elekid - Thunderbolt - Level 40
  (239, 23900, 85, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Elekid - Light Screen - Level 44
  (239, 23900, 113, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Elekid - Thunder - Level 48
  (239, 23900, 87, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Elekid - Mega Punch - TM00
  (239, 23900, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Elekid - Mega Kick - TM01
  (239, 23900, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Elekid - Fire Punch - TM03
  (239, 23900, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 17),
  -- Elekid - Ice Punch - TM04
  (239, 23900, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 18),
  -- Elekid - Thunder Punch - TM05
  (239, 23900, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 19),
  -- Elekid - Thunder Wave - TM14
  (239, 23900, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 20),
  -- Elekid - Screech - TM16
  (239, 23900, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 21),
  -- Elekid - Light Screen - TM17
  (239, 23900, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Elekid - Rest - TM21
  (239, 23900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Elekid - Thief - TM23
  (239, 23900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Elekid - Snore - TM24
  (239, 23900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Elekid - Protect - TM25
  (239, 23900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Elekid - Attract - TM31
  (239, 23900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Elekid - Rain Dance - TM33
  (239, 23900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Elekid - Facade - TM39
  (239, 23900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Elekid - Swift - TM40
  (239, 23900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 30),
  -- Elekid - Helping Hand - TM41
  (239, 23900, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 31),
  -- Elekid - Brick Break - TM43
  (239, 23900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 32),
  -- Elekid - Fling - TM59
  (239, 23900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 33),
  -- Elekid - Round - TM76
  (239, 23900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Elekid - Volt Switch - TM80
  (239, 23900, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 35),
  -- Elekid - Electroweb - TM82
  (239, 23900, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 36),
  -- Elekid - Body Slam - TR01
  (239, 23900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 37),
  -- Elekid - Low Kick - TR07
  (239, 23900, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 38),
  -- Elekid - Thunderbolt - TR08
  (239, 23900, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 39),
  -- Elekid - Thunder - TR09
  (239, 23900, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 40),
  -- Elekid - Psychic - TR11
  (239, 23900, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 41),
  -- Elekid - Substitute - TR20
  (239, 23900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Elekid - Endure - TR26
  (239, 23900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Elekid - Sleep Talk - TR27
  (239, 23900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Elekid - Uproar - TR35
  (239, 23900, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 45),
  -- Elekid - Electro Ball - TR80
  (239, 23900, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 46),
  -- Elekid - Wild Charge - TR86
  (239, 23900, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 47),
  -- Elekid - Dynamic Punch - Egg
  (239, 23900, 223, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Elekid - Cross Chop - Egg
  (239, 23900, 238, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Elekid - Focus Punch - Egg
  (239, 23900, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Elekid - Hammer Arm - Egg
  (239, 23900, 359, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Elekid - Feint - Egg
  (239, 23900, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Magby - Leer - Level 1
  (240, 24000, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magby - Smog - Level 1
  (240, 24000, 123, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magby - Ember - Level 4
  (240, 24000, 52, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Magby - Smokescreen - Level 8
  (240, 24000, 108, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Magby - Clear Smog - Level 12
  (240, 24000, 499, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Magby - Flame Wheel - Level 16
  (240, 24000, 172, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Magby - Confuse Ray - Level 20
  (240, 24000, 109, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Magby - Scary Face - Level 24
  (240, 24000, 184, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Magby - Fire Punch - Level 28
  (240, 24000, 7, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Magby - Lava Plume - Level 32
  (240, 24000, 436, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Magby - Low Kick - Level 36
  (240, 24000, 67, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Magby - Flamethrower - Level 40
  (240, 24000, 53, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Magby - Sunny Day - Level 44
  (240, 24000, 241, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Magby - Fire Blast - Level 48
  (240, 24000, 126, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Magby - Mega Punch - TM00
  (240, 24000, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Magby - Mega Kick - TM01
  (240, 24000, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Magby - Fire Punch - TM03
  (240, 24000, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 17),
  -- Magby - Thunder Punch - TM05
  (240, 24000, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 18),
  -- Magby - Fire Spin - TM13
  (240, 24000, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 19),
  -- Magby - Screech - TM16
  (240, 24000, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 20),
  -- Magby - Rest - TM21
  (240, 24000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Magby - Thief - TM23
  (240, 24000, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 22),
  -- Magby - Snore - TM24
  (240, 24000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Magby - Protect - TM25
  (240, 24000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Magby - Scary Face - TM26
  (240, 24000, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Magby - Attract - TM31
  (240, 24000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Magby - Sunny Day - TM34
  (240, 24000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Magby - Will-O-Wisp - TM38
  (240, 24000, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 28),
  -- Magby - Facade - TM39
  (240, 24000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Magby - Helping Hand - TM41
  (240, 24000, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Magby - Brick Break - TM43
  (240, 24000, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Magby - Fling - TM59
  (240, 24000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 32),
  -- Magby - Power Swap - TM60
  (240, 24000, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 33),
  -- Magby - Round - TM76
  (240, 24000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Magby - Body Slam - TR01
  (240, 24000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 35),
  -- Magby - Flamethrower - TR02
  (240, 24000, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 36),
  -- Magby - Low Kick - TR07
  (240, 24000, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 37),
  -- Magby - Psychic - TR11
  (240, 24000, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 38),
  -- Magby - Focus Energy - TR13
  (240, 24000, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 39),
  -- Magby - Fire Blast - TR15
  (240, 24000, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 40),
  -- Magby - Substitute - TR20
  (240, 24000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Magby - Endure - TR26
  (240, 24000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Magby - Sleep Talk - TR27
  (240, 24000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Magby - Iron Tail - TR31
  (240, 24000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 44),
  -- Magby - Uproar - TR35
  (240, 24000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 45),
  -- Magby - Heat Wave - TR36
  (240, 24000, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 46),
  -- Magby - Overheat - TR43
  (240, 24000, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 47),
  -- Magby - Flare Blitz - TR55
  (240, 24000, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 48),
  -- Magby - Mach Punch - Egg
  (240, 24000, 183, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Magby - Dynamic Punch - Egg
  (240, 24000, 223, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Magby - Cross Chop - Egg
  (240, 24000, 238, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Magby - Focus Punch - Egg
  (240, 24000, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Magby - Belch - Egg
  (240, 24000, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Miltank - Tackle - Level 1
  (241, 24100, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Miltank - Growl - Level 1
  (241, 24100, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Miltank - Rollout - Level 5
  (241, 24100, 205, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Miltank - Defense Curl - Level 10
  (241, 24100, 111, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Miltank - Stomp - Level 15
  (241, 24100, 23, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Miltank - Heal Bell - Level 20
  (241, 24100, 215, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Miltank - Headbutt - Level 25
  (241, 24100, 29, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Miltank - Zen Headbutt - Level 30
  (241, 24100, 428, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Miltank - Milk Drink - Level 35
  (241, 24100, 208, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Miltank - Body Slam - Level 40
  (241, 24100, 34, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Miltank - Play Rough - Level 45
  (241, 24100, 583, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Miltank - Charm - Level 50
  (241, 24100, 204, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Miltank - High Horsepower - Level 55
  (241, 24100, 667, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Miltank - Mega Punch - TM00
  (241, 24100, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 14),
  -- Miltank - Mega Kick - TM01
  (241, 24100, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 15),
  -- Miltank - Fire Punch - TM03
  (241, 24100, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 16),
  -- Miltank - Ice Punch - TM04
  (241, 24100, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 17),
  -- Miltank - Thunder Punch - TM05
  (241, 24100, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 18),
  -- Miltank - Hyper Beam - TM08
  (241, 24100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Miltank - Giga Impact - TM09
  (241, 24100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Miltank - Solar Beam - TM11
  (241, 24100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 21),
  -- Miltank - Thunder Wave - TM14
  (241, 24100, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 22),
  -- Miltank - Rest - TM21
  (241, 24100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Miltank - Rock Slide - TM22
  (241, 24100, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Miltank - Snore - TM24
  (241, 24100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Miltank - Protect - TM25
  (241, 24100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Miltank - Icy Wind - TM27
  (241, 24100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 27),
  -- Miltank - Charm - TM29
  (241, 24100, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 28),
  -- Miltank - Attract - TM31
  (241, 24100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Miltank - Sandstorm - TM32
  (241, 24100, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 30),
  -- Miltank - Rain Dance - TM33
  (241, 24100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Miltank - Sunny Day - TM34
  (241, 24100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Miltank - Whirlpool - TM36
  (241, 24100, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 33),
  -- Miltank - Facade - TM39
  (241, 24100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Miltank - Helping Hand - TM41
  (241, 24100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 35),
  -- Miltank - Brick Break - TM43
  (241, 24100, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 36),
  -- Miltank - Rock Tomb - TM48
  (241, 24100, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 37),
  -- Miltank - Fling - TM59
  (241, 24100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Miltank - Round - TM76
  (241, 24100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Miltank - Retaliate - TM79
  (241, 24100, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 40),
  -- Miltank - Bulldoze - TM81
  (241, 24100, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 41),
  -- Miltank - Stomping Tantrum - TM98
  (241, 24100, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 42),
  -- Miltank - Body Slam - TR01
  (241, 24100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Miltank - Surf - TR04
  (241, 24100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 44),
  -- Miltank - Ice Beam - TR05
  (241, 24100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 45),
  -- Miltank - Blizzard - TR06
  (241, 24100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 46),
  -- Miltank - Thunderbolt - TR08
  (241, 24100, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 47),
  -- Miltank - Thunder - TR09
  (241, 24100, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 48),
  -- Miltank - Earthquake - TR10
  (241, 24100, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 49),
  -- Miltank - Metronome - TR14
  (241, 24100, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 50),
  -- Miltank - Substitute - TR20
  (241, 24100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Miltank - Reversal - TR21
  (241, 24100, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 52),
  -- Miltank - Endure - TR26
  (241, 24100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Miltank - Sleep Talk - TR27
  (241, 24100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Miltank - Iron Tail - TR31
  (241, 24100, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 55),
  -- Miltank - Shadow Ball - TR33
  (241, 24100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 56),
  -- Miltank - Gyro Ball - TR52
  (241, 24100, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 57),
  -- Miltank - Focus Blast - TR64
  (241, 24100, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 58),
  -- Miltank - Zen Headbutt - TR69
  (241, 24100, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 59),
  -- Miltank - Iron Head - TR74
  (241, 24100, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 60),
  -- Miltank - Stealth Rock - TR76
  (241, 24100, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 61),
  -- Miltank - Heavy Slam - TR79
  (241, 24100, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 62),
  -- Miltank - Work Up - TR85
  (241, 24100, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 63),
  -- Miltank - Play Rough - TR90
  (241, 24100, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 64),
  -- Miltank - High Horsepower - TR94
  (241, 24100, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 65),
  -- Miltank - Body Press - TR99
  (241, 24100, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 66),
  -- Miltank - Double-Edge - Egg
  (241, 24100, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Miltank - Seismic Toss - Egg
  (241, 24100, 69, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Miltank - Curse - Egg
  (241, 24100, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Miltank - Present - Egg
  (241, 24100, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Miltank - Focus Punch - Egg
  (241, 24100, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Miltank - Hammer Arm - Egg
  (241, 24100, 359, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Miltank - Belch - Egg
  (241, 24100, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Blissey - Pound - Level 1
  (242, 24200, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blissey - Minimize - Level 1
  (242, 24200, 107, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blissey - Defense Curl - Level 1
  (242, 24200, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Blissey - Sweet Kiss - Level 1
  (242, 24200, 186, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Blissey - Charm - Level 1
  (242, 24200, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Blissey - Covet - Level 1
  (242, 24200, 343, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Blissey - Copycat - Level 1
  (242, 24200, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Blissey - Disarming Voice - Level 1
  (242, 24200, 574, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Blissey - Tail Whip - Level 4
  (242, 24200, 39, 18, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Blissey - Echoed Voice - Level 8
  (242, 24200, 497, 18, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Blissey - Life Dew - Level 12
  (242, 24200, 791, 18, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Blissey - Sing - Level 16
  (242, 24200, 47, 18, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Blissey - Fling - Level 20
  (242, 24200, 374, 18, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Blissey - Take Down - Level 24
  (242, 24200, 36, 18, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Blissey - Heal Pulse - Level 28
  (242, 24200, 505, 18, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Blissey - Helping Hand - Level 32
  (242, 24200, 270, 18, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Blissey - Light Screen - Level 36
  (242, 24200, 113, 18, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Blissey - Double-Edge - Level 40
  (242, 24200, 38, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Blissey - Soft-Boiled - Level 44
  (242, 24200, 135, 18, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Blissey - Last Resort - Level 48
  (242, 24200, 387, 18, NULL, 1, 48, NULL, NULL, NULL, 20),
  -- Blissey - Healing Wish - Level 52
  (242, 24200, 361, 18, NULL, 1, 52, NULL, NULL, NULL, 21),
  -- Blissey - Mega Punch - TM00
  (242, 24200, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 22),
  -- Blissey - Mega Kick - TM01
  (242, 24200, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 23),
  -- Blissey - Fire Punch - TM03
  (242, 24200, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 24),
  -- Blissey - Ice Punch - TM04
  (242, 24200, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 25),
  -- Blissey - Thunder Punch - TM05
  (242, 24200, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 26),
  -- Blissey - Hyper Beam - TM08
  (242, 24200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 27),
  -- Blissey - Giga Impact - TM09
  (242, 24200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 28),
  -- Blissey - Solar Beam - TM11
  (242, 24200, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 29),
  -- Blissey - Thunder Wave - TM14
  (242, 24200, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 30),
  -- Blissey - Light Screen - TM17
  (242, 24200, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 31),
  -- Blissey - Safeguard - TM19
  (242, 24200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 32),
  -- Blissey - Rest - TM21
  (242, 24200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 33),
  -- Blissey - Rock Slide - TM22
  (242, 24200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 34),
  -- Blissey - Snore - TM24
  (242, 24200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 35),
  -- Blissey - Protect - TM25
  (242, 24200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 36),
  -- Blissey - Icy Wind - TM27
  (242, 24200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 37),
  -- Blissey - Charm - TM29
  (242, 24200, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 38),
  -- Blissey - Attract - TM31
  (242, 24200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 39),
  -- Blissey - Sandstorm - TM32
  (242, 24200, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 40),
  -- Blissey - Rain Dance - TM33
  (242, 24200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 41),
  -- Blissey - Sunny Day - TM34
  (242, 24200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 42),
  -- Blissey - Hail - TM35
  (242, 24200, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 43),
  -- Blissey - Facade - TM39
  (242, 24200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 44),
  -- Blissey - Helping Hand - TM41
  (242, 24200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 45),
  -- Blissey - Brick Break - TM43
  (242, 24200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 46),
  -- Blissey - Rock Tomb - TM48
  (242, 24200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 47),
  -- Blissey - Fling - TM59
  (242, 24200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 48),
  -- Blissey - Drain Punch - TM63
  (242, 24200, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 49),
  -- Blissey - Avalanche - TM64
  (242, 24200, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 50),
  -- Blissey - Round - TM76
  (242, 24200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 51),
  -- Blissey - Retaliate - TM79
  (242, 24200, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 52),
  -- Blissey - Bulldoze - TM81
  (242, 24200, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 53),
  -- Blissey - Stomping Tantrum - TM98
  (242, 24200, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 54),
  -- Blissey - Body Slam - TR01
  (242, 24200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 55),
  -- Blissey - Flamethrower - TR02
  (242, 24200, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 56),
  -- Blissey - Ice Beam - TR05
  (242, 24200, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 57),
  -- Blissey - Blizzard - TR06
  (242, 24200, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 58),
  -- Blissey - Thunderbolt - TR08
  (242, 24200, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 59),
  -- Blissey - Thunder - TR09
  (242, 24200, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 60),
  -- Blissey - Earthquake - TR10
  (242, 24200, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 61),
  -- Blissey - Psychic - TR11
  (242, 24200, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 62),
  -- Blissey - Metronome - TR14
  (242, 24200, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 63),
  -- Blissey - Fire Blast - TR15
  (242, 24200, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 64),
  -- Blissey - Tri Attack - TR19
  (242, 24200, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 65),
  -- Blissey - Substitute - TR20
  (242, 24200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 66),
  -- Blissey - Endure - TR26
  (242, 24200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 67),
  -- Blissey - Sleep Talk - TR27
  (242, 24200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 68),
  -- Blissey - Iron Tail - TR31
  (242, 24200, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 69),
  -- Blissey - Shadow Ball - TR33
  (242, 24200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 70),
  -- Blissey - Uproar - TR35
  (242, 24200, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 71),
  -- Blissey - Skill Swap - TR40
  (242, 24200, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 72),
  -- Blissey - Hyper Voice - TR42
  (242, 24200, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 73),
  -- Blissey - Calm Mind - TR49
  (242, 24200, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 74),
  -- Blissey - Focus Blast - TR64
  (242, 24200, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 75),
  -- Blissey - Zen Headbutt - TR69
  (242, 24200, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 76),
  -- Blissey - Stealth Rock - TR76
  (242, 24200, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 77),
  -- Blissey - Grass Knot - TR77
  (242, 24200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 78),
  -- Blissey - Stored Power - TR82
  (242, 24200, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 79),
  -- Blissey - Ally Switch - TR83
  (242, 24200, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 80),
  -- Blissey - Work Up - TR85
  (242, 24200, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 81),
  -- Blissey - Wild Charge - TR86
  (242, 24200, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 82),
  -- Blissey - Dazzling Gleam - TR92
  (242, 24200, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 83),
  -- Raikou - Leer - Level 1
  (243, 24300, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raikou - Thunder Shock - Level 1
  (243, 24300, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raikou - Quick Attack - Level 1
  (243, 24300, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Raikou - Extreme Speed - Level 1
  (243, 24300, 245, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Raikou - Charge - Level 1
  (243, 24300, 268, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Raikou - Spark - Level 6
  (243, 24300, 209, 18, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Raikou - Bite - Level 12
  (243, 24300, 44, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Raikou - Calm Mind - Level 18
  (243, 24300, 347, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Raikou - Roar - Level 24
  (243, 24300, 46, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Raikou - Thunder Fang - Level 30
  (243, 24300, 422, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Raikou - Howl - Level 36
  (243, 24300, 336, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Raikou - Crunch - Level 42
  (243, 24300, 242, 18, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Raikou - Extrasensory - Level 48
  (243, 24300, 326, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Raikou - Discharge - Level 54
  (243, 24300, 435, 18, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Raikou - Reflect - Level 60
  (243, 24300, 115, 18, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Raikou - Rain Dance - Level 66
  (243, 24300, 240, 18, NULL, 1, 66, NULL, NULL, NULL, 16),
  -- Raikou - Thunder - Level 72
  (243, 24300, 87, 18, NULL, 1, 72, NULL, NULL, NULL, 17),
  -- Raikou - Zap Cannon - Level 78
  (243, 24300, 192, 18, NULL, 1, 78, NULL, NULL, NULL, 18),
  -- Raikou - Hyper Beam - TM08
  (243, 24300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Raikou - Giga Impact - TM09
  (243, 24300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Raikou - Thunder Wave - TM14
  (243, 24300, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 21),
  -- Raikou - Dig - TM15
  (243, 24300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 22),
  -- Raikou - Light Screen - TM17
  (243, 24300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 23),
  -- Raikou - Reflect - TM18
  (243, 24300, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 24),
  -- Raikou - Rest - TM21
  (243, 24300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Raikou - Snore - TM24
  (243, 24300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Raikou - Protect - TM25
  (243, 24300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Raikou - Sandstorm - TM32
  (243, 24300, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 28),
  -- Raikou - Rain Dance - TM33
  (243, 24300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Raikou - Sunny Day - TM34
  (243, 24300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Raikou - Facade - TM39
  (243, 24300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Raikou - Swift - TM40
  (243, 24300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 32),
  -- Raikou - Helping Hand - TM41
  (243, 24300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Raikou - Weather Ball - TM46
  (243, 24300, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 34),
  -- Raikou - Thunder Fang - TM66
  (243, 24300, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 35),
  -- Raikou - Round - TM76
  (243, 24300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Raikou - Volt Switch - TM80
  (243, 24300, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 37),
  -- Raikou - Bulldoze - TM81
  (243, 24300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 38),
  -- Raikou - Snarl - TM85
  (243, 24300, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 39),
  -- Raikou - Electric Terrain - TM90
  (243, 24300, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 40),
  -- Raikou - Eerie Impulse - TM93
  (243, 24300, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 41),
  -- Raikou - Body Slam - TR01
  (243, 24300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 42),
  -- Raikou - Thunderbolt - TR08
  (243, 24300, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 43),
  -- Raikou - Thunder - TR09
  (243, 24300, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 44),
  -- Raikou - Agility - TR12
  (243, 24300, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 45),
  -- Raikou - Substitute - TR20
  (243, 24300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Raikou - Endure - TR26
  (243, 24300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Raikou - Sleep Talk - TR27
  (243, 24300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Raikou - Iron Tail - TR31
  (243, 24300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 49),
  -- Raikou - Crunch - TR32
  (243, 24300, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 50),
  -- Raikou - Shadow Ball - TR33
  (243, 24300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 51),
  -- Raikou - Calm Mind - TR49
  (243, 24300, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 52),
  -- Raikou - Aura Sphere - TR56
  (243, 24300, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 53),
  -- Raikou - Iron Head - TR74
  (243, 24300, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 54),
  -- Raikou - Scald - TR84
  (243, 24300, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 55),
  -- Raikou - Wild Charge - TR86
  (243, 24300, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 56),
  -- Raikou - Throat Chop - TR95
  (243, 24300, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 57),
  -- Entei - Stomp - Level 1
  (244, 24400, 23, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Entei - Leer - Level 1
  (244, 24400, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Entei - Ember - Level 1
  (244, 24400, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Entei - Smokescreen - Level 1
  (244, 24400, 108, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Entei - Sacred Fire - Level 1
  (244, 24400, 221, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Entei - Extreme Speed - Level 1
  (244, 24400, 245, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Entei - Flame Wheel - Level 6
  (244, 24400, 172, 18, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Entei - Bite - Level 12
  (244, 24400, 44, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Entei - Calm Mind - Level 18
  (244, 24400, 347, 18, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Entei - Roar - Level 24
  (244, 24400, 46, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Entei - Fire Fang - Level 30
  (244, 24400, 424, 18, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Entei - Scary Face - Level 36
  (244, 24400, 184, 18, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Entei - Crunch - Level 42
  (244, 24400, 242, 18, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Entei - Extrasensory - Level 48
  (244, 24400, 326, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Entei - Lava Plume - Level 54
  (244, 24400, 436, 18, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Entei - Swagger - Level 60
  (244, 24400, 207, 18, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Entei - Sunny Day - Level 66
  (244, 24400, 241, 18, NULL, 1, 66, NULL, NULL, NULL, 17),
  -- Entei - Fire Blast - Level 72
  (244, 24400, 126, 18, NULL, 1, 72, NULL, NULL, NULL, 18),
  -- Entei - Eruption - Level 78
  (244, 24400, 284, 18, NULL, 1, 78, NULL, NULL, NULL, 19),
  -- Entei - Hyper Beam - TM08
  (244, 24400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Entei - Giga Impact - TM09
  (244, 24400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Entei - Solar Beam - TM11
  (244, 24400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Entei - Fire Spin - TM13
  (244, 24400, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 23),
  -- Entei - Dig - TM15
  (244, 24400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 24),
  -- Entei - Reflect - TM18
  (244, 24400, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 25),
  -- Entei - Rest - TM21
  (244, 24400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Entei - Snore - TM24
  (244, 24400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Entei - Protect - TM25
  (244, 24400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Entei - Scary Face - TM26
  (244, 24400, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 29),
  -- Entei - Sandstorm - TM32
  (244, 24400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 30),
  -- Entei - Rain Dance - TM33
  (244, 24400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Entei - Sunny Day - TM34
  (244, 24400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Entei - Will-O-Wisp - TM38
  (244, 24400, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 33),
  -- Entei - Facade - TM39
  (244, 24400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Entei - Swift - TM40
  (244, 24400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 35),
  -- Entei - Helping Hand - TM41
  (244, 24400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 36),
  -- Entei - Weather Ball - TM46
  (244, 24400, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 37),
  -- Entei - Fire Fang - TM68
  (244, 24400, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 38),
  -- Entei - Round - TM76
  (244, 24400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Entei - Bulldoze - TM81
  (244, 24400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 40),
  -- Entei - Snarl - TM85
  (244, 24400, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 41),
  -- Entei - Stomping Tantrum - TM98
  (244, 24400, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 42),
  -- Entei - Body Slam - TR01
  (244, 24400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Entei - Flamethrower - TR02
  (244, 24400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 44),
  -- Entei - Agility - TR12
  (244, 24400, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 45),
  -- Entei - Fire Blast - TR15
  (244, 24400, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 46),
  -- Entei - Substitute - TR20
  (244, 24400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Entei - Reversal - TR21
  (244, 24400, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 48),
  -- Entei - Endure - TR26
  (244, 24400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Entei - Sleep Talk - TR27
  (244, 24400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Entei - Iron Tail - TR31
  (244, 24400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 51),
  -- Entei - Crunch - TR32
  (244, 24400, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 52),
  -- Entei - Shadow Ball - TR33
  (244, 24400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 53),
  -- Entei - Heat Wave - TR36
  (244, 24400, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 54),
  -- Entei - Overheat - TR43
  (244, 24400, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 55),
  -- Entei - Calm Mind - TR49
  (244, 24400, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 56),
  -- Entei - Flare Blitz - TR55
  (244, 24400, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 57),
  -- Entei - Iron Head - TR74
  (244, 24400, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 58),
  -- Entei - Stone Edge - TR75
  (244, 24400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 59),
  -- Suicune - Gust - Level 1
  (245, 24500, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Suicune - Leer - Level 1
  (245, 24500, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Suicune - Mist - Level 1
  (245, 24500, 54, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Suicune - Water Gun - Level 1
  (245, 24500, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Suicune - Extreme Speed - Level 1
  (245, 24500, 245, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Suicune - Sheer Cold - Level 1
  (245, 24500, 329, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Suicune - Water Pulse - Level 6
  (245, 24500, 352, 18, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Suicune - Bite - Level 12
  (245, 24500, 44, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Suicune - Calm Mind - Level 18
  (245, 24500, 347, 18, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Suicune - Roar - Level 24
  (245, 24500, 46, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Suicune - Ice Fang - Level 30
  (245, 24500, 423, 18, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Suicune - Tailwind - Level 36
  (245, 24500, 366, 18, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Suicune - Crunch - Level 42
  (245, 24500, 242, 18, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Suicune - Extrasensory - Level 48
  (245, 24500, 326, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Suicune - Surf - Level 54
  (245, 24500, 57, 18, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Suicune - Mirror Coat - Level 60
  (245, 24500, 243, 18, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Suicune - Rain Dance - Level 66
  (245, 24500, 240, 18, NULL, 1, 66, NULL, NULL, NULL, 17),
  -- Suicune - Hydro Pump - Level 72
  (245, 24500, 56, 18, NULL, 1, 72, NULL, NULL, NULL, 18),
  -- Suicune - Blizzard - Level 78
  (245, 24500, 59, 18, NULL, 1, 78, NULL, NULL, NULL, 19),
  -- Suicune - Hyper Beam - TM08
  (245, 24500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Suicune - Giga Impact - TM09
  (245, 24500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Suicune - Dig - TM15
  (245, 24500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 22),
  -- Suicune - Reflect - TM18
  (245, 24500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 23),
  -- Suicune - Rest - TM21
  (245, 24500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Suicune - Snore - TM24
  (245, 24500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Suicune - Protect - TM25
  (245, 24500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Suicune - Icy Wind - TM27
  (245, 24500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 27),
  -- Suicune - Sandstorm - TM32
  (245, 24500, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 28),
  -- Suicune - Rain Dance - TM33
  (245, 24500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Suicune - Sunny Day - TM34
  (245, 24500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Suicune - Hail - TM35
  (245, 24500, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 31),
  -- Suicune - Whirlpool - TM36
  (245, 24500, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 32),
  -- Suicune - Facade - TM39
  (245, 24500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Suicune - Swift - TM40
  (245, 24500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 34),
  -- Suicune - Helping Hand - TM41
  (245, 24500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 35),
  -- Suicune - Dive - TM45
  (245, 24500, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 36),
  -- Suicune - Weather Ball - TM46
  (245, 24500, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 37),
  -- Suicune - Brine - TM55
  (245, 24500, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 38),
  -- Suicune - Avalanche - TM64
  (245, 24500, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 39),
  -- Suicune - Ice Fang - TM67
  (245, 24500, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 40),
  -- Suicune - Round - TM76
  (245, 24500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Suicune - Bulldoze - TM81
  (245, 24500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 42),
  -- Suicune - Snarl - TM85
  (245, 24500, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 43),
  -- Suicune - Air Slash - TM95
  (245, 24500, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 44),
  -- Suicune - Body Slam - TR01
  (245, 24500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 45),
  -- Suicune - Hydro Pump - TR03
  (245, 24500, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 46),
  -- Suicune - Surf - TR04
  (245, 24500, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 47),
  -- Suicune - Ice Beam - TR05
  (245, 24500, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 48),
  -- Suicune - Blizzard - TR06
  (245, 24500, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 49),
  -- Suicune - Agility - TR12
  (245, 24500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 50),
  -- Suicune - Waterfall - TR16
  (245, 24500, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 51),
  -- Suicune - Substitute - TR20
  (245, 24500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 52),
  -- Suicune - Endure - TR26
  (245, 24500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Suicune - Sleep Talk - TR27
  (245, 24500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Suicune - Iron Tail - TR31
  (245, 24500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 55),
  -- Suicune - Crunch - TR32
  (245, 24500, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 56),
  -- Suicune - Shadow Ball - TR33
  (245, 24500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 57),
  -- Suicune - Calm Mind - TR49
  (245, 24500, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 58),
  -- Suicune - Iron Head - TR74
  (245, 24500, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 59),
  -- Suicune - Scald - TR84
  (245, 24500, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 60),
  -- Suicune - Liquidation - TR98
  (245, 24500, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 61),
  -- Larvitar - Tackle - Level 1
  (246, 24600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Larvitar - Leer - Level 1
  (246, 24600, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Larvitar - Rock Throw - Level 3
  (246, 24600, 88, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Larvitar - Payback - Level 6
  (246, 24600, 371, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Larvitar - Bite - Level 9
  (246, 24600, 44, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Larvitar - Scary Face - Level 12
  (246, 24600, 184, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Larvitar - Rock Slide - Level 15
  (246, 24600, 157, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Larvitar - Stomping Tantrum - Level 18
  (246, 24600, 707, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Larvitar - Screech - Level 21
  (246, 24600, 103, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Larvitar - Dark Pulse - Level 24
  (246, 24600, 399, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Larvitar - Crunch - Level 27
  (246, 24600, 242, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Larvitar - Earthquake - Level 31
  (246, 24600, 89, 18, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Larvitar - Stone Edge - Level 33
  (246, 24600, 444, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Larvitar - Thrash - Level 36
  (246, 24600, 37, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Larvitar - Sandstorm - Level 39
  (246, 24600, 201, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Larvitar - Hyper Beam - Level 42
  (246, 24600, 63, 18, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Larvitar - Hyper Beam - TM08
  (246, 24600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Larvitar - Dig - TM15
  (246, 24600, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Larvitar - Screech - TM16
  (246, 24600, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 19),
  -- Larvitar - Rest - TM21
  (246, 24600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Larvitar - Rock Slide - TM22
  (246, 24600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Larvitar - Snore - TM24
  (246, 24600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Larvitar - Protect - TM25
  (246, 24600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Larvitar - Scary Face - TM26
  (246, 24600, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 24),
  -- Larvitar - Attract - TM31
  (246, 24600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Larvitar - Sandstorm - TM32
  (246, 24600, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 26),
  -- Larvitar - Rain Dance - TM33
  (246, 24600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Larvitar - Sunny Day - TM34
  (246, 24600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Larvitar - Facade - TM39
  (246, 24600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Larvitar - Brick Break - TM43
  (246, 24600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 30),
  -- Larvitar - Rock Tomb - TM48
  (246, 24600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 31),
  -- Larvitar - Sand Tomb - TM49
  (246, 24600, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 32),
  -- Larvitar - Payback - TM57
  (246, 24600, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 33),
  -- Larvitar - Assurance - TM58
  (246, 24600, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 34),
  -- Larvitar - Round - TM76
  (246, 24600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Larvitar - Retaliate - TM79
  (246, 24600, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 36),
  -- Larvitar - Bulldoze - TM81
  (246, 24600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 37),
  -- Larvitar - Snarl - TM85
  (246, 24600, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 38),
  -- Larvitar - Stomping Tantrum - TM98
  (246, 24600, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 39),
  -- Larvitar - Body Slam - TR01
  (246, 24600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 40),
  -- Larvitar - Earthquake - TR10
  (246, 24600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 41),
  -- Larvitar - Focus Energy - TR13
  (246, 24600, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 42),
  -- Larvitar - Substitute - TR20
  (246, 24600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Larvitar - Outrage - TR24
  (246, 24600, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 44),
  -- Larvitar - Endure - TR26
  (246, 24600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Larvitar - Sleep Talk - TR27
  (246, 24600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Larvitar - Iron Tail - TR31
  (246, 24600, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 47),
  -- Larvitar - Crunch - TR32
  (246, 24600, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 48),
  -- Larvitar - Uproar - TR35
  (246, 24600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 49),
  -- Larvitar - Taunt - TR37
  (246, 24600, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 50),
  -- Larvitar - Superpower - TR39
  (246, 24600, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 51),
  -- Larvitar - Muddy Water - TR45
  (246, 24600, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 52),
  -- Larvitar - Iron Defense - TR46
  (246, 24600, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 53),
  -- Larvitar - Dragon Dance - TR51
  (246, 24600, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 54),
  -- Larvitar - Dark Pulse - TR58
  (246, 24600, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 55),
  -- Larvitar - Earth Power - TR67
  (246, 24600, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 56),
  -- Larvitar - Iron Head - TR74
  (246, 24600, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 57),
  -- Larvitar - Stone Edge - TR75
  (246, 24600, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 58),
  -- Larvitar - Stealth Rock - TR76
  (246, 24600, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 59),
  -- Larvitar - Stomp - Egg
  (246, 24600, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Larvitar - Curse - Egg
  (246, 24600, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Larvitar - Ancient Power - Egg
  (246, 24600, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Pupitar - Tackle - Level 1
  (247, 24700, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pupitar - Leer - Level 1
  (247, 24700, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pupitar - Rock Throw - Level 1
  (247, 24700, 88, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pupitar - Iron Defense - Level 1
  (247, 24700, 334, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pupitar - Payback - Level 1
  (247, 24700, 371, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Pupitar - Bite - Level 9
  (247, 24700, 44, 18, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Pupitar - Scary Face - Level 12
  (247, 24700, 184, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Pupitar - Rock Slide - Level 15
  (247, 24700, 157, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Pupitar - Stomping Tantrum - Level 18
  (247, 24700, 707, 18, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Pupitar - Screech - Level 21
  (247, 24700, 103, 18, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Pupitar - Dark Pulse - Level 24
  (247, 24700, 399, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Pupitar - Crunch - Level 27
  (247, 24700, 242, 18, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Pupitar - Earthquake - Level 33
  (247, 24700, 89, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Pupitar - Stone Edge - Level 37
  (247, 24700, 444, 18, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Pupitar - Thrash - Level 42
  (247, 24700, 37, 18, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Pupitar - Sandstorm - Level 47
  (247, 24700, 201, 18, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Pupitar - Hyper Beam - Level 52
  (247, 24700, 63, 18, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Pupitar - Iron Defense - Evolution
  (247, 24700, 334, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Pupitar - Hyper Beam - TM08
  (247, 24700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Pupitar - Dig - TM15
  (247, 24700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Pupitar - Screech - TM16
  (247, 24700, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 21),
  -- Pupitar - Rest - TM21
  (247, 24700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Pupitar - Rock Slide - TM22
  (247, 24700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Pupitar - Snore - TM24
  (247, 24700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Pupitar - Protect - TM25
  (247, 24700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Pupitar - Scary Face - TM26
  (247, 24700, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Pupitar - Attract - TM31
  (247, 24700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Pupitar - Sandstorm - TM32
  (247, 24700, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 28),
  -- Pupitar - Rain Dance - TM33
  (247, 24700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Pupitar - Sunny Day - TM34
  (247, 24700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Pupitar - Facade - TM39
  (247, 24700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Pupitar - Brick Break - TM43
  (247, 24700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 32),
  -- Pupitar - Rock Tomb - TM48
  (247, 24700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Pupitar - Sand Tomb - TM49
  (247, 24700, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 34),
  -- Pupitar - Payback - TM57
  (247, 24700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 35),
  -- Pupitar - Assurance - TM58
  (247, 24700, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 36),
  -- Pupitar - Round - TM76
  (247, 24700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Pupitar - Retaliate - TM79
  (247, 24700, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 38),
  -- Pupitar - Bulldoze - TM81
  (247, 24700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 39),
  -- Pupitar - Snarl - TM85
  (247, 24700, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 40),
  -- Pupitar - Stomping Tantrum - TM98
  (247, 24700, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 41),
  -- Pupitar - Body Slam - TR01
  (247, 24700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 42),
  -- Pupitar - Earthquake - TR10
  (247, 24700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 43),
  -- Pupitar - Focus Energy - TR13
  (247, 24700, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 44),
  -- Pupitar - Substitute - TR20
  (247, 24700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Pupitar - Outrage - TR24
  (247, 24700, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 46),
  -- Pupitar - Endure - TR26
  (247, 24700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Pupitar - Sleep Talk - TR27
  (247, 24700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Pupitar - Iron Tail - TR31
  (247, 24700, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 49),
  -- Pupitar - Crunch - TR32
  (247, 24700, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 50),
  -- Pupitar - Uproar - TR35
  (247, 24700, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 51),
  -- Pupitar - Taunt - TR37
  (247, 24700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 52),
  -- Pupitar - Superpower - TR39
  (247, 24700, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 53),
  -- Pupitar - Muddy Water - TR45
  (247, 24700, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 54),
  -- Pupitar - Iron Defense - TR46
  (247, 24700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 55),
  -- Pupitar - Dragon Dance - TR51
  (247, 24700, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 56),
  -- Pupitar - Dark Pulse - TR58
  (247, 24700, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 57),
  -- Pupitar - Earth Power - TR67
  (247, 24700, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 58),
  -- Pupitar - Iron Head - TR74
  (247, 24700, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 59),
  -- Pupitar - Stone Edge - TR75
  (247, 24700, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 60),
  -- Pupitar - Stealth Rock - TR76
  (247, 24700, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 61),
  -- Tyranitar - Tackle - Level 1
  (248, 24800, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyranitar - Leer - Level 1
  (248, 24800, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tyranitar - Rock Throw - Level 1
  (248, 24800, 88, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tyranitar - Iron Defense - Level 1
  (248, 24800, 334, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tyranitar - Payback - Level 1
  (248, 24800, 371, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tyranitar - Thunder Fang - Level 1
  (248, 24800, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Tyranitar - Ice Fang - Level 1
  (248, 24800, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Tyranitar - Fire Fang - Level 1
  (248, 24800, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Tyranitar - Bite - Level 9
  (248, 24800, 44, 18, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Tyranitar - Scary Face - Level 12
  (248, 24800, 184, 18, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Tyranitar - Rock Slide - Level 15
  (248, 24800, 157, 18, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Tyranitar - Stomping Tantrum - Level 18
  (248, 24800, 707, 18, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Tyranitar - Screech - Level 21
  (248, 24800, 103, 18, NULL, 1, 21, NULL, NULL, NULL, 13),
  -- Tyranitar - Dark Pulse - Level 24
  (248, 24800, 399, 18, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Tyranitar - Crunch - Level 27
  (248, 24800, 242, 18, NULL, 1, 27, NULL, NULL, NULL, 15),
  -- Tyranitar - Earthquake - Level 33
  (248, 24800, 89, 18, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Tyranitar - Stone Edge - Level 37
  (248, 24800, 444, 18, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Tyranitar - Thrash - Level 42
  (248, 24800, 37, 18, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Tyranitar - Sandstorm - Level 47
  (248, 24800, 201, 18, NULL, 1, 47, NULL, NULL, NULL, 19),
  -- Tyranitar - Hyper Beam - Level 52
  (248, 24800, 63, 18, NULL, 1, 52, NULL, NULL, NULL, 20),
  -- Tyranitar - Giga Impact - Level 59
  (248, 24800, 416, 18, NULL, 1, 59, NULL, NULL, NULL, 21),
  -- Tyranitar - Mega Punch - TM00
  (248, 24800, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 22),
  -- Tyranitar - Mega Kick - TM01
  (248, 24800, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 23),
  -- Tyranitar - Fire Punch - TM03
  (248, 24800, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 24),
  -- Tyranitar - Ice Punch - TM04
  (248, 24800, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 25),
  -- Tyranitar - Thunder Punch - TM05
  (248, 24800, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 26),
  -- Tyranitar - Hyper Beam - TM08
  (248, 24800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 27),
  -- Tyranitar - Giga Impact - TM09
  (248, 24800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 28),
  -- Tyranitar - Thunder Wave - TM14
  (248, 24800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 29),
  -- Tyranitar - Dig - TM15
  (248, 24800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 30),
  -- Tyranitar - Screech - TM16
  (248, 24800, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 31),
  -- Tyranitar - Rest - TM21
  (248, 24800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 32),
  -- Tyranitar - Rock Slide - TM22
  (248, 24800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 33),
  -- Tyranitar - Snore - TM24
  (248, 24800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 34),
  -- Tyranitar - Protect - TM25
  (248, 24800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 35),
  -- Tyranitar - Scary Face - TM26
  (248, 24800, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 36),
  -- Tyranitar - Attract - TM31
  (248, 24800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 37),
  -- Tyranitar - Sandstorm - TM32
  (248, 24800, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 38),
  -- Tyranitar - Rain Dance - TM33
  (248, 24800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 39),
  -- Tyranitar - Sunny Day - TM34
  (248, 24800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 40),
  -- Tyranitar - Whirlpool - TM36
  (248, 24800, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 41),
  -- Tyranitar - Facade - TM39
  (248, 24800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 42),
  -- Tyranitar - Revenge - TM42
  (248, 24800, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 43),
  -- Tyranitar - Brick Break - TM43
  (248, 24800, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 44),
  -- Tyranitar - Rock Tomb - TM48
  (248, 24800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 45),
  -- Tyranitar - Sand Tomb - TM49
  (248, 24800, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 46),
  -- Tyranitar - Rock Blast - TM54
  (248, 24800, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 47),
  -- Tyranitar - Payback - TM57
  (248, 24800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 48),
  -- Tyranitar - Assurance - TM58
  (248, 24800, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 49),
  -- Tyranitar - Fling - TM59
  (248, 24800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 50),
  -- Tyranitar - Avalanche - TM64
  (248, 24800, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 51),
  -- Tyranitar - Shadow Claw - TM65
  (248, 24800, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 52),
  -- Tyranitar - Thunder Fang - TM66
  (248, 24800, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 53),
  -- Tyranitar - Ice Fang - TM67
  (248, 24800, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 54),
  -- Tyranitar - Fire Fang - TM68
  (248, 24800, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 55),
  -- Tyranitar - Round - TM76
  (248, 24800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 56),
  -- Tyranitar - Retaliate - TM79
  (248, 24800, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 57),
  -- Tyranitar - Bulldoze - TM81
  (248, 24800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 58),
  -- Tyranitar - Snarl - TM85
  (248, 24800, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 59),
  -- Tyranitar - Brutal Swing - TM97
  (248, 24800, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 60),
  -- Tyranitar - Stomping Tantrum - TM98
  (248, 24800, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 61),
  -- Tyranitar - Breaking Swipe - TM99
  (248, 24800, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 62),
  -- Tyranitar - Body Slam - TR01
  (248, 24800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 63),
  -- Tyranitar - Flamethrower - TR02
  (248, 24800, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 64),
  -- Tyranitar - Hydro Pump - TR03
  (248, 24800, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 65),
  -- Tyranitar - Surf - TR04
  (248, 24800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 66),
  -- Tyranitar - Ice Beam - TR05
  (248, 24800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 67),
  -- Tyranitar - Blizzard - TR06
  (248, 24800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 68),
  -- Tyranitar - Low Kick - TR07
  (248, 24800, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 69),
  -- Tyranitar - Thunderbolt - TR08
  (248, 24800, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 70),
  -- Tyranitar - Thunder - TR09
  (248, 24800, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 71),
  -- Tyranitar - Earthquake - TR10
  (248, 24800, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 72),
  -- Tyranitar - Focus Energy - TR13
  (248, 24800, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 73),
  -- Tyranitar - Fire Blast - TR15
  (248, 24800, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 74),
  -- Tyranitar - Substitute - TR20
  (248, 24800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 75),
  -- Tyranitar - Outrage - TR24
  (248, 24800, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 76),
  -- Tyranitar - Endure - TR26
  (248, 24800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 77),
  -- Tyranitar - Sleep Talk - TR27
  (248, 24800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 78),
  -- Tyranitar - Iron Tail - TR31
  (248, 24800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 79),
  -- Tyranitar - Crunch - TR32
  (248, 24800, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 80),
  -- Tyranitar - Uproar - TR35
  (248, 24800, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 81),
  -- Tyranitar - Taunt - TR37
  (248, 24800, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 82),
  -- Tyranitar - Superpower - TR39
  (248, 24800, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 83),
  -- Tyranitar - Muddy Water - TR45
  (248, 24800, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 84),
  -- Tyranitar - Iron Defense - TR46
  (248, 24800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 85),
  -- Tyranitar - Dragon Claw - TR47
  (248, 24800, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 86),
  -- Tyranitar - Dragon Dance - TR51
  (248, 24800, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 87),
  -- Tyranitar - Dark Pulse - TR58
  (248, 24800, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 88),
  -- Tyranitar - Dragon Pulse - TR62
  (248, 24800, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 89),
  -- Tyranitar - Focus Blast - TR64
  (248, 24800, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 90),
  -- Tyranitar - Earth Power - TR67
  (248, 24800, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 91),
  -- Tyranitar - Iron Head - TR74
  (248, 24800, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 92),
  -- Tyranitar - Stone Edge - TR75
  (248, 24800, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 93),
  -- Tyranitar - Stealth Rock - TR76
  (248, 24800, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 94),
  -- Tyranitar - Heavy Slam - TR79
  (248, 24800, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 95),
  -- Tyranitar - Foul Play - TR81
  (248, 24800, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 96),
  -- Tyranitar - High Horsepower - TR94
  (248, 24800, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 97),
  -- Tyranitar - Body Press - TR99
  (248, 24800, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 98),
  -- Lugia - Gust - Level 1
  (249, 24900, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lugia - Whirlwind - Level 1
  (249, 24900, 18, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lugia - Ancient Power - Level 1
  (249, 24900, 246, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lugia - Weather Ball - Level 1
  (249, 24900, 311, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lugia - Dragon Rush - Level 1
  (249, 24900, 407, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lugia - Mist - Level 9
  (249, 24900, 54, 18, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Lugia - Safeguard - Level 18
  (249, 24900, 219, 18, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Lugia - Calm Mind - Level 27
  (249, 24900, 347, 18, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Lugia - Extrasensory - Level 36
  (249, 24900, 326, 18, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Lugia - Recover - Level 45
  (249, 24900, 105, 18, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Lugia - Aeroblast - Level 54
  (249, 24900, 177, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Lugia - Rain Dance - Level 63
  (249, 24900, 240, 18, NULL, 1, 63, NULL, NULL, NULL, 12),
  -- Lugia - Hydro Pump - Level 72
  (249, 24900, 56, 18, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Lugia - Future Sight - Level 81
  (249, 24900, 248, 18, NULL, 1, 81, NULL, NULL, NULL, 14),
  -- Lugia - Sky Attack - Level 90
  (249, 24900, 143, 18, NULL, 1, 90, NULL, NULL, NULL, 15),
  -- Lugia - Fly - TM06
  (249, 24900, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 16),
  -- Lugia - Hyper Beam - TM08
  (249, 24900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Lugia - Giga Impact - TM09
  (249, 24900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Lugia - Thunder Wave - TM14
  (249, 24900, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 19),
  -- Lugia - Light Screen - TM17
  (249, 24900, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Lugia - Reflect - TM18
  (249, 24900, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Lugia - Safeguard - TM19
  (249, 24900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Lugia - Rest - TM21
  (249, 24900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Lugia - Snore - TM24
  (249, 24900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Lugia - Protect - TM25
  (249, 24900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Lugia - Icy Wind - TM27
  (249, 24900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 26),
  -- Lugia - Giga Drain - TM28
  (249, 24900, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 27),
  -- Lugia - Steel Wing - TM30
  (249, 24900, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 28),
  -- Lugia - Sandstorm - TM32
  (249, 24900, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 29),
  -- Lugia - Rain Dance - TM33
  (249, 24900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Lugia - Sunny Day - TM34
  (249, 24900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Lugia - Hail - TM35
  (249, 24900, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 32),
  -- Lugia - Whirlpool - TM36
  (249, 24900, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 33),
  -- Lugia - Facade - TM39
  (249, 24900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Lugia - Swift - TM40
  (249, 24900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 35),
  -- Lugia - Helping Hand - TM41
  (249, 24900, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 36),
  -- Lugia - Imprison - TM44
  (249, 24900, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 37),
  -- Lugia - Dive - TM45
  (249, 24900, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 38),
  -- Lugia - Weather Ball - TM46
  (249, 24900, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 39),
  -- Lugia - Brine - TM55
  (249, 24900, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 40),
  -- Lugia - Avalanche - TM64
  (249, 24900, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 41),
  -- Lugia - Wonder Room - TM71
  (249, 24900, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 42),
  -- Lugia - Round - TM76
  (249, 24900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 43),
  -- Lugia - Bulldoze - TM81
  (249, 24900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 44),
  -- Lugia - Air Slash - TM95
  (249, 24900, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 45),
  -- Lugia - Body Slam - TR01
  (249, 24900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 46),
  -- Lugia - Hydro Pump - TR03
  (249, 24900, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 47),
  -- Lugia - Surf - TR04
  (249, 24900, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 48),
  -- Lugia - Ice Beam - TR05
  (249, 24900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 49),
  -- Lugia - Blizzard - TR06
  (249, 24900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 50),
  -- Lugia - Thunderbolt - TR08
  (249, 24900, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 51),
  -- Lugia - Thunder - TR09
  (249, 24900, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 52),
  -- Lugia - Earthquake - TR10
  (249, 24900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 53),
  -- Lugia - Psychic - TR11
  (249, 24900, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 54),
  -- Lugia - Waterfall - TR16
  (249, 24900, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 55),
  -- Lugia - Substitute - TR20
  (249, 24900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Lugia - Psyshock - TR25
  (249, 24900, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 57),
  -- Lugia - Endure - TR26
  (249, 24900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 58),
  -- Lugia - Sleep Talk - TR27
  (249, 24900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 59),
  -- Lugia - Iron Tail - TR31
  (249, 24900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 60),
  -- Lugia - Shadow Ball - TR33
  (249, 24900, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 61),
  -- Lugia - Future Sight - TR34
  (249, 24900, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 62),
  -- Lugia - Trick - TR38
  (249, 24900, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 63),
  -- Lugia - Skill Swap - TR40
  (249, 24900, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 64),
  -- Lugia - Hyper Voice - TR42
  (249, 24900, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 65),
  -- Lugia - Calm Mind - TR49
  (249, 24900, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 66),
  -- Lugia - Dragon Pulse - TR62
  (249, 24900, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 67),
  -- Lugia - Earth Power - TR67
  (249, 24900, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 68),
  -- Lugia - Zen Headbutt - TR69
  (249, 24900, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 69),
  -- Lugia - Iron Head - TR74
  (249, 24900, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Lugia - Hurricane - TR89
  (249, 24900, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 71),
  -- Ho-Oh - Gust - Level 1
  (250, 25000, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ho-Oh - Whirlwind - Level 1
  (250, 25000, 18, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ho-Oh - Ancient Power - Level 1
  (250, 25000, 246, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ho-Oh - Weather Ball - Level 1
  (250, 25000, 311, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ho-Oh - Life Dew - Level 9
  (250, 25000, 791, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Ho-Oh - Safeguard - Level 18
  (250, 25000, 219, 18, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Ho-Oh - Calm Mind - Level 27
  (250, 25000, 347, 18, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Ho-Oh - Extrasensory - Level 36
  (250, 25000, 326, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Ho-Oh - Recover - Level 45
  (250, 25000, 105, 18, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Ho-Oh - Sacred Fire - Level 54
  (250, 25000, 221, 18, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Ho-Oh - Sunny Day - Level 63
  (250, 25000, 241, 18, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Ho-Oh - Fire Blast - Level 72
  (250, 25000, 126, 18, NULL, 1, 72, NULL, NULL, NULL, 12),
  -- Ho-Oh - Future Sight - Level 81
  (250, 25000, 248, 18, NULL, 1, 81, NULL, NULL, NULL, 13),
  -- Ho-Oh - Sky Attack - Level 90
  (250, 25000, 143, 18, NULL, 1, 90, NULL, NULL, NULL, 14),
  -- Ho-Oh - Burn Up - Level 99
  (250, 25000, 682, 18, NULL, 1, 99, NULL, NULL, NULL, 15),
  -- Ho-Oh - Fly - TM06
  (250, 25000, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 16),
  -- Ho-Oh - Hyper Beam - TM08
  (250, 25000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Ho-Oh - Giga Impact - TM09
  (250, 25000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Ho-Oh - Solar Beam - TM11
  (250, 25000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 19),
  -- Ho-Oh - Fire Spin - TM13
  (250, 25000, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 20),
  -- Ho-Oh - Thunder Wave - TM14
  (250, 25000, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 21),
  -- Ho-Oh - Light Screen - TM17
  (250, 25000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Ho-Oh - Reflect - TM18
  (250, 25000, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 23),
  -- Ho-Oh - Safeguard - TM19
  (250, 25000, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Ho-Oh - Rest - TM21
  (250, 25000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Ho-Oh - Snore - TM24
  (250, 25000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Ho-Oh - Protect - TM25
  (250, 25000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Ho-Oh - Giga Drain - TM28
  (250, 25000, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 28),
  -- Ho-Oh - Steel Wing - TM30
  (250, 25000, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 29),
  -- Ho-Oh - Sandstorm - TM32
  (250, 25000, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 30),
  -- Ho-Oh - Rain Dance - TM33
  (250, 25000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Ho-Oh - Sunny Day - TM34
  (250, 25000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Ho-Oh - Will-O-Wisp - TM38
  (250, 25000, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 33),
  -- Ho-Oh - Facade - TM39
  (250, 25000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Ho-Oh - Swift - TM40
  (250, 25000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 35),
  -- Ho-Oh - Helping Hand - TM41
  (250, 25000, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 36),
  -- Ho-Oh - Imprison - TM44
  (250, 25000, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 37),
  -- Ho-Oh - Weather Ball - TM46
  (250, 25000, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 38),
  -- Ho-Oh - Round - TM76
  (250, 25000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Ho-Oh - Bulldoze - TM81
  (250, 25000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 40),
  -- Ho-Oh - Mystical Fire - TM92
  (250, 25000, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 41),
  -- Ho-Oh - Air Slash - TM95
  (250, 25000, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 42),
  -- Ho-Oh - Flamethrower - TR02
  (250, 25000, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 43),
  -- Ho-Oh - Thunderbolt - TR08
  (250, 25000, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 44),
  -- Ho-Oh - Thunder - TR09
  (250, 25000, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 45),
  -- Ho-Oh - Earthquake - TR10
  (250, 25000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 46),
  -- Ho-Oh - Psychic - TR11
  (250, 25000, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 47),
  -- Ho-Oh - Fire Blast - TR15
  (250, 25000, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 48),
  -- Ho-Oh - Substitute - TR20
  (250, 25000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Ho-Oh - Endure - TR26
  (250, 25000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Ho-Oh - Sleep Talk - TR27
  (250, 25000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Ho-Oh - Shadow Ball - TR33
  (250, 25000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 52),
  -- Ho-Oh - Future Sight - TR34
  (250, 25000, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 53),
  -- Ho-Oh - Heat Wave - TR36
  (250, 25000, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 54),
  -- Ho-Oh - Hyper Voice - TR42
  (250, 25000, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 55),
  -- Ho-Oh - Overheat - TR43
  (250, 25000, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 56),
  -- Ho-Oh - Calm Mind - TR49
  (250, 25000, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 57),
  -- Ho-Oh - Flare Blitz - TR55
  (250, 25000, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 58),
  -- Ho-Oh - Brave Bird - TR66
  (250, 25000, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 59),
  -- Ho-Oh - Earth Power - TR67
  (250, 25000, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 60),
  -- Ho-Oh - Zen Headbutt - TR69
  (250, 25000, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 61),
  -- Ho-Oh - Iron Head - TR74
  (250, 25000, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 62),
  -- Celebi - Confusion - Level 1
  (251, 25100, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Celebi - Heal Bell - Level 1
  (251, 25100, 215, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Celebi - Magical Leaf - Level 10
  (251, 25100, 345, 18, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Celebi - Baton Pass - Level 20
  (251, 25100, 226, 18, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Celebi - Ancient Power - Level 30
  (251, 25100, 246, 18, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Celebi - Life Dew - Level 40
  (251, 25100, 791, 18, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Celebi - Leech Seed - Level 50
  (251, 25100, 73, 18, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Celebi - Recover - Level 60
  (251, 25100, 105, 18, NULL, 1, 60, NULL, NULL, NULL, 8),
  -- Celebi - Future Sight - Level 70
  (251, 25100, 248, 18, NULL, 1, 70, NULL, NULL, NULL, 9),
  -- Celebi - Healing Wish - Level 80
  (251, 25100, 361, 18, NULL, 1, 80, NULL, NULL, NULL, 10),
  -- Celebi - Leaf Storm - Level 90
  (251, 25100, 437, 18, NULL, 1, 90, NULL, NULL, NULL, 11),
  -- Celebi - Perish Song - Level 100
  (251, 25100, 195, 18, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Celebi - Hyper Beam - TM08
  (251, 25100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 13),
  -- Celebi - Giga Impact - TM09
  (251, 25100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 14),
  -- Celebi - Magical Leaf - TM10
  (251, 25100, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 15),
  -- Celebi - Solar Beam - TM11
  (251, 25100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 16),
  -- Celebi - Solar Blade - TM12
  (251, 25100, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 17),
  -- Celebi - Thunder Wave - TM14
  (251, 25100, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Celebi - Light Screen - TM17
  (251, 25100, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Celebi - Reflect - TM18
  (251, 25100, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Celebi - Safeguard - TM19
  (251, 25100, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 21),
  -- Celebi - Rest - TM21
  (251, 25100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Celebi - Snore - TM24
  (251, 25100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Celebi - Protect - TM25
  (251, 25100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Celebi - Giga Drain - TM28
  (251, 25100, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 25),
  -- Celebi - Sandstorm - TM32
  (251, 25100, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 26),
  -- Celebi - Rain Dance - TM33
  (251, 25100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Celebi - Sunny Day - TM34
  (251, 25100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Celebi - Facade - TM39
  (251, 25100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Celebi - Swift - TM40
  (251, 25100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 30),
  -- Celebi - Helping Hand - TM41
  (251, 25100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 31),
  -- Celebi - Imprison - TM44
  (251, 25100, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 32),
  -- Celebi - Weather Ball - TM46
  (251, 25100, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 33),
  -- Celebi - U-turn - TM56
  (251, 25100, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 34),
  -- Celebi - Fling - TM59
  (251, 25100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Celebi - Psycho Cut - TM69
  (251, 25100, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 36),
  -- Celebi - Trick Room - TM70
  (251, 25100, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 37),
  -- Celebi - Wonder Room - TM71
  (251, 25100, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 38),
  -- Celebi - Magic Room - TM72
  (251, 25100, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 39),
  -- Celebi - Round - TM76
  (251, 25100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Celebi - Grassy Terrain - TM88
  (251, 25100, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 41),
  -- Celebi - Psychic Terrain - TM91
  (251, 25100, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 42),
  -- Celebi - Swords Dance - TR00
  (251, 25100, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 43),
  -- Celebi - Psychic - TR11
  (251, 25100, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 44),
  -- Celebi - Metronome - TR14
  (251, 25100, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 45),
  -- Celebi - Substitute - TR20
  (251, 25100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Celebi - Endure - TR26
  (251, 25100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Celebi - Sleep Talk - TR27
  (251, 25100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Celebi - Baton Pass - TR29
  (251, 25100, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 49),
  -- Celebi - Shadow Ball - TR33
  (251, 25100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 50),
  -- Celebi - Future Sight - TR34
  (251, 25100, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 51),
  -- Celebi - Uproar - TR35
  (251, 25100, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 52),
  -- Celebi - Trick - TR38
  (251, 25100, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 53),
  -- Celebi - Skill Swap - TR40
  (251, 25100, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 54),
  -- Celebi - Calm Mind - TR49
  (251, 25100, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 55),
  -- Celebi - Leaf Blade - TR50
  (251, 25100, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 56),
  -- Celebi - Aura Sphere - TR56
  (251, 25100, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 57),
  -- Celebi - Seed Bomb - TR59
  (251, 25100, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 58),
  -- Celebi - Energy Ball - TR65
  (251, 25100, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 59),
  -- Celebi - Earth Power - TR67
  (251, 25100, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 60),
  -- Celebi - Nasty Plot - TR68
  (251, 25100, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 61),
  -- Celebi - Zen Headbutt - TR69
  (251, 25100, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 62),
  -- Celebi - Leaf Storm - TR71
  (251, 25100, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 63),
  -- Celebi - Stealth Rock - TR76
  (251, 25100, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 64),
  -- Celebi - Grass Knot - TR77
  (251, 25100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 65),
  -- Celebi - Ally Switch - TR83
  (251, 25100, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 66),
  -- Celebi - Dazzling Gleam - TR92
  (251, 25100, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 67),
  -- Celebi - Pollen Puff - TR96
  (251, 25100, 676, 18, NULL, 4, NULL, NULL, 18004096, NULL, 68);

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
  -- Steelix - Defense Curl - Egg
  (208, 20800, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Steelix - Flail - Egg
  (208, 20800, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Steelix - Rollout - Egg
  (208, 20800, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Steelix - Block - Egg
  (208, 20800, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Steelix - Head Smash - Egg
  (208, 20800, 457, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Steelix - Wide Guard - Egg
  (208, 20800, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Steelix - Dragon Tail - Egg
  (208, 20800, 525, 18, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Scizor - Counter - Egg
  (212, 21200, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Scizor - Feint - Egg
  (212, 21200, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Scizor - Night Slash - Egg
  (212, 21200, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Scizor - Defog - Egg
  (212, 21200, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Scizor - Quick Guard - Egg
  (212, 21200, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Piloswine - Double-Edge - Egg
  (221, 22100, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Piloswine - Bite - Egg
  (221, 22100, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Piloswine - Fissure - Egg
  (221, 22100, 90, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Piloswine - Curse - Egg
  (221, 22100, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Piloswine - Ancient Power - Egg
  (221, 22100, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Piloswine - Icicle Crash - Egg
  (221, 22100, 556, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Piloswine - Freeze-Dry - Egg
  (221, 22100, 573, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Octillery - Supersonic - Egg
  (224, 22400, 48, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Octillery - Haze - Egg
  (224, 22400, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Octillery - Flail - Egg
  (224, 22400, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Octillery - Octazooka - Egg
  (224, 22400, 190, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Octillery - Water Spout - Egg
  (224, 22400, 323, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Octillery - Acid Spray - Egg
  (224, 22400, 491, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Kingdra - Disable - Egg
  (230, 23000, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Kingdra - Aurora Beam - Egg
  (230, 23000, 62, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Kingdra - Splash - Egg
  (230, 23000, 150, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Kingdra - Flail - Egg
  (230, 23000, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Kingdra - Octazooka - Egg
  (230, 23000, 190, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Kingdra - Water Pulse - Egg
  (230, 23000, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Kingdra - Clear Smog - Egg
  (230, 23000, 499, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Hitmontop - Counter - Egg
  (237, 23700, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Hitmontop - High Jump Kick - Egg
  (237, 23700, 136, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Hitmontop - Mind Reader - Egg
  (237, 23700, 170, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Hitmontop - Mach Punch - Egg
  (237, 23700, 183, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Hitmontop - Rapid Spin - Egg
  (237, 23700, 229, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Hitmontop - Feint - Egg
  (237, 23700, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Hitmontop - Vacuum Wave - Egg
  (237, 23700, 410, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Hitmontop - Bullet Punch - Egg
  (237, 23700, 418, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Blissey - Seismic Toss - Egg
  (242, 24200, 69, 18, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Blissey - Present - Egg
  (242, 24200, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Blissey - Aromatherapy - Egg
  (242, 24200, 312, 18, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Blissey - Gravity - Egg
  (242, 24200, 356, 18, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Pupitar - Stomp - Egg
  (247, 24700, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Pupitar - Curse - Egg
  (247, 24700, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Pupitar - Ancient Power - Egg
  (247, 24700, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Tyranitar - Stomp - Egg
  (248, 24800, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 99),
  -- Tyranitar - Curse - Egg
  (248, 24800, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 100),
  -- Tyranitar - Ancient Power - Egg
  (248, 24800, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 101);
