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
-- Sword / Shield learnsets for default forms, species 701-721.
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
  -- Hawlucha - Tackle - Level 1
  (701, 70100, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hawlucha - Hone Claws - Level 1
  (701, 70100, 468, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hawlucha - Wing Attack - Level 4
  (701, 70100, 17, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Hawlucha - Detect - Level 8
  (701, 70100, 197, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Hawlucha - Aerial Ace - Level 12
  (701, 70100, 332, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Hawlucha - Encore - Level 16
  (701, 70100, 227, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Hawlucha - Feather Dance - Level 20
  (701, 70100, 297, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Hawlucha - Submission - Level 24
  (701, 70100, 66, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Hawlucha - Bounce - Level 28
  (701, 70100, 340, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Hawlucha - Taunt - Level 32
  (701, 70100, 269, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Hawlucha - Roost - Level 36
  (701, 70100, 355, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Hawlucha - Swords Dance - Level 40
  (701, 70100, 14, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Hawlucha - Flying Press - Level 44
  (701, 70100, 560, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Hawlucha - High Jump Kick - Level 48
  (701, 70100, 136, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Hawlucha - Endeavor - Level 52
  (701, 70100, 283, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Hawlucha - Sky Attack - Level 56
  (701, 70100, 143, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Hawlucha - Mega Punch - TM00
  (701, 70100, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Hawlucha - Mega Kick - TM01
  (701, 70100, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Hawlucha - Fire Punch - TM03
  (701, 70100, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 19),
  -- Hawlucha - Thunder Punch - TM05
  (701, 70100, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Hawlucha - Fly - TM06
  (701, 70100, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 21),
  -- Hawlucha - Giga Impact - TM09
  (701, 70100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Hawlucha - Dig - TM15
  (701, 70100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 23),
  -- Hawlucha - Rest - TM21
  (701, 70100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Hawlucha - Rock Slide - TM22
  (701, 70100, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 25),
  -- Hawlucha - Snore - TM24
  (701, 70100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Hawlucha - Protect - TM25
  (701, 70100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Hawlucha - Steel Wing - TM30
  (701, 70100, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 28),
  -- Hawlucha - Attract - TM31
  (701, 70100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Hawlucha - Rain Dance - TM33
  (701, 70100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Hawlucha - Sunny Day - TM34
  (701, 70100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Hawlucha - Facade - TM39
  (701, 70100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Hawlucha - Swift - TM40
  (701, 70100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Hawlucha - Helping Hand - TM41
  (701, 70100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 34),
  -- Hawlucha - Revenge - TM42
  (701, 70100, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 35),
  -- Hawlucha - Brick Break - TM43
  (701, 70100, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 36),
  -- Hawlucha - Rock Tomb - TM48
  (701, 70100, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 37),
  -- Hawlucha - Bounce - TM52
  (701, 70100, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 38),
  -- Hawlucha - U-turn - TM56
  (701, 70100, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 39),
  -- Hawlucha - Payback - TM57
  (701, 70100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 40),
  -- Hawlucha - Assurance - TM58
  (701, 70100, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 41),
  -- Hawlucha - Fling - TM59
  (701, 70100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 42),
  -- Hawlucha - Drain Punch - TM63
  (701, 70100, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 43),
  -- Hawlucha - Low Sweep - TM75
  (701, 70100, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 44),
  -- Hawlucha - Round - TM76
  (701, 70100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Hawlucha - Acrobatics - TM78
  (701, 70100, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 46),
  -- Hawlucha - Retaliate - TM79
  (701, 70100, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 47),
  -- Hawlucha - False Swipe - TM94
  (701, 70100, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 48),
  -- Hawlucha - Swords Dance - TR00
  (701, 70100, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 49),
  -- Hawlucha - Low Kick - TR07
  (701, 70100, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 50),
  -- Hawlucha - Agility - TR12
  (701, 70100, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 51),
  -- Hawlucha - Substitute - TR20
  (701, 70100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 52),
  -- Hawlucha - Reversal - TR21
  (701, 70100, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 53),
  -- Hawlucha - Endure - TR26
  (701, 70100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Hawlucha - Sleep Talk - TR27
  (701, 70100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Hawlucha - Baton Pass - TR29
  (701, 70100, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 56),
  -- Hawlucha - Encore - TR30
  (701, 70100, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 57),
  -- Hawlucha - Taunt - TR37
  (701, 70100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 58),
  -- Hawlucha - Superpower - TR39
  (701, 70100, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 59),
  -- Hawlucha - Bulk Up - TR48
  (701, 70100, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 60),
  -- Hawlucha - Close Combat - TR53
  (701, 70100, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 61),
  -- Hawlucha - Poison Jab - TR57
  (701, 70100, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 62),
  -- Hawlucha - X-Scissor - TR60
  (701, 70100, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 63),
  -- Hawlucha - Focus Blast - TR64
  (701, 70100, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 64),
  -- Hawlucha - Brave Bird - TR66
  (701, 70100, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 65),
  -- Hawlucha - Zen Headbutt - TR69
  (701, 70100, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 66),
  -- Hawlucha - Iron Head - TR74
  (701, 70100, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 67),
  -- Hawlucha - Stone Edge - TR75
  (701, 70100, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 68),
  -- Hawlucha - Grass Knot - TR77
  (701, 70100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 69),
  -- Hawlucha - Ally Switch - TR83
  (701, 70100, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 70),
  -- Hawlucha - Work Up - TR85
  (701, 70100, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Hawlucha - Throat Chop - TR95
  (701, 70100, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 72),
  -- Hawlucha - Body Press - TR99
  (701, 70100, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 73),
  -- Hawlucha - Mean Look - Egg
  (701, 70100, 212, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Hawlucha - Cross Chop - Egg
  (701, 70100, 238, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Hawlucha - Feint - Egg
  (701, 70100, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Hawlucha - Defog - Egg
  (701, 70100, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Hawlucha - Entrainment - Egg
  (701, 70100, 494, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Hawlucha - Quick Guard - Egg
  (701, 70100, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Dedenne - Tail Whip - Level 1
  (702, 70200, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dedenne - Nuzzle - Level 1
  (702, 70200, 609, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dedenne - Tackle - Level 5
  (702, 70200, 33, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Dedenne - Charge - Level 10
  (702, 70200, 268, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Dedenne - Thunder Shock - Level 15
  (702, 70200, 84, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dedenne - Charm - Level 20
  (702, 70200, 204, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Dedenne - Parabolic Charge - Level 25
  (702, 70200, 570, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Dedenne - Volt Switch - Level 30
  (702, 70200, 521, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Dedenne - Rest - Level 35
  (702, 70200, 156, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Dedenne - Snore - Level 35
  (702, 70200, 173, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Dedenne - Discharge - Level 40
  (702, 70200, 435, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Dedenne - Play Rough - Level 45
  (702, 70200, 583, 18, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Dedenne - Super Fang - Level 50
  (702, 70200, 162, 18, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Dedenne - Entrainment - Level 55
  (702, 70200, 494, 18, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Dedenne - Thunder - Level 60
  (702, 70200, 87, 18, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Dedenne - Thunder Punch - TM05
  (702, 70200, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 16),
  -- Dedenne - Giga Impact - TM09
  (702, 70200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Dedenne - Thunder Wave - TM14
  (702, 70200, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Dedenne - Dig - TM15
  (702, 70200, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 19),
  -- Dedenne - Rest - TM21
  (702, 70200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Dedenne - Thief - TM23
  (702, 70200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Dedenne - Snore - TM24
  (702, 70200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Dedenne - Protect - TM25
  (702, 70200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Dedenne - Charm - TM29
  (702, 70200, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 24),
  -- Dedenne - Attract - TM31
  (702, 70200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Dedenne - Rain Dance - TM33
  (702, 70200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Dedenne - Sunny Day - TM34
  (702, 70200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Dedenne - Facade - TM39
  (702, 70200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Dedenne - Helping Hand - TM41
  (702, 70200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 29),
  -- Dedenne - U-turn - TM56
  (702, 70200, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 30),
  -- Dedenne - Fling - TM59
  (702, 70200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 31),
  -- Dedenne - Round - TM76
  (702, 70200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Dedenne - Retaliate - TM79
  (702, 70200, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 33),
  -- Dedenne - Volt Switch - TM80
  (702, 70200, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 34),
  -- Dedenne - Electroweb - TM82
  (702, 70200, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 35),
  -- Dedenne - Electric Terrain - TM90
  (702, 70200, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 36),
  -- Dedenne - Eerie Impulse - TM93
  (702, 70200, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 37),
  -- Dedenne - Thunderbolt - TR08
  (702, 70200, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 38),
  -- Dedenne - Thunder - TR09
  (702, 70200, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 39),
  -- Dedenne - Substitute - TR20
  (702, 70200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Dedenne - Endure - TR26
  (702, 70200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Dedenne - Sleep Talk - TR27
  (702, 70200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Dedenne - Iron Tail - TR31
  (702, 70200, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 43),
  -- Dedenne - Grass Knot - TR77
  (702, 70200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 44),
  -- Dedenne - Electro Ball - TR80
  (702, 70200, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 45),
  -- Dedenne - Ally Switch - TR83
  (702, 70200, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 46),
  -- Dedenne - Wild Charge - TR86
  (702, 70200, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 47),
  -- Dedenne - Play Rough - TR90
  (702, 70200, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 48),
  -- Dedenne - Dazzling Gleam - TR92
  (702, 70200, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 49),
  -- Dedenne - Covet - Egg
  (702, 70200, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Dedenne - Magnet Rise - Egg
  (702, 70200, 393, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Dedenne - Tearful Look - Egg
  (702, 70200, 715, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Carbink - Tackle - Level 1
  (703, 70300, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carbink - Harden - Level 1
  (703, 70300, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carbink - Guard Split - Level 5
  (703, 70300, 470, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Carbink - Smack Down - Level 10
  (703, 70300, 479, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Carbink - Flail - Level 15
  (703, 70300, 175, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Carbink - Ancient Power - Level 20
  (703, 70300, 246, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Carbink - Rock Polish - Level 25
  (703, 70300, 397, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Carbink - Light Screen - Level 30
  (703, 70300, 113, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Carbink - Rock Slide - Level 35
  (703, 70300, 157, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Carbink - Skill Swap - Level 40
  (703, 70300, 285, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Carbink - Power Gem - Level 45
  (703, 70300, 408, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Carbink - Stealth Rock - Level 50
  (703, 70300, 446, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Carbink - Moonblast - Level 55
  (703, 70300, 585, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Carbink - Stone Edge - Level 60
  (703, 70300, 444, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Carbink - Light Screen - TM17
  (703, 70300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 15),
  -- Carbink - Reflect - TM18
  (703, 70300, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 16),
  -- Carbink - Safeguard - TM19
  (703, 70300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Carbink - Rest - TM21
  (703, 70300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Carbink - Rock Slide - TM22
  (703, 70300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 19),
  -- Carbink - Snore - TM24
  (703, 70300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Carbink - Protect - TM25
  (703, 70300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Carbink - Charm - TM29
  (703, 70300, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 22),
  -- Carbink - Sandstorm - TM32
  (703, 70300, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 23),
  -- Carbink - Sunny Day - TM34
  (703, 70300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Carbink - Hail - TM35
  (703, 70300, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 25),
  -- Carbink - Facade - TM39
  (703, 70300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Carbink - Rock Tomb - TM48
  (703, 70300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Carbink - Sand Tomb - TM49
  (703, 70300, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 28),
  -- Carbink - Guard Swap - TM61
  (703, 70300, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 29),
  -- Carbink - Trick Room - TM70
  (703, 70300, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 30),
  -- Carbink - Wonder Room - TM71
  (703, 70300, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 31),
  -- Carbink - Round - TM76
  (703, 70300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Carbink - Stomping Tantrum - TM98
  (703, 70300, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 33),
  -- Carbink - Psychic - TR11
  (703, 70300, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 34),
  -- Carbink - Substitute - TR20
  (703, 70300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Carbink - Endure - TR26
  (703, 70300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Carbink - Sleep Talk - TR27
  (703, 70300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Carbink - Skill Swap - TR40
  (703, 70300, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 38),
  -- Carbink - Iron Defense - TR46
  (703, 70300, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 39),
  -- Carbink - Calm Mind - TR49
  (703, 70300, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 40),
  -- Carbink - Gyro Ball - TR52
  (703, 70300, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 41),
  -- Carbink - Power Gem - TR63
  (703, 70300, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 42),
  -- Carbink - Earth Power - TR67
  (703, 70300, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 43),
  -- Carbink - Stone Edge - TR75
  (703, 70300, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 44),
  -- Carbink - Stealth Rock - TR76
  (703, 70300, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 45),
  -- Carbink - Ally Switch - TR83
  (703, 70300, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 46),
  -- Carbink - Dazzling Gleam - TR92
  (703, 70300, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 47),
  -- Carbink - Body Press - TR99
  (703, 70300, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 48),
  -- Goomy - Tackle - Level 1
  (704, 70400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Goomy - Absorb - Level 1
  (704, 70400, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Goomy - Water Gun - Level 5
  (704, 70400, 55, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Goomy - Dragon Breath - Level 10
  (704, 70400, 225, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Goomy - Protect - Level 15
  (704, 70400, 182, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Goomy - Flail - Level 20
  (704, 70400, 175, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Goomy - Water Pulse - Level 25
  (704, 70400, 352, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Goomy - Rain Dance - Level 30
  (704, 70400, 240, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Goomy - Dragon Pulse - Level 35
  (704, 70400, 406, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Goomy - Curse - Level 41
  (704, 70400, 174, 18, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Goomy - Body Slam - Level 45
  (704, 70400, 34, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Goomy - Muddy Water - Level 50
  (704, 70400, 330, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Goomy - Rest - TM21
  (704, 70400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 13),
  -- Goomy - Rock Slide - TM22
  (704, 70400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 14),
  -- Goomy - Snore - TM24
  (704, 70400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 15),
  -- Goomy - Protect - TM25
  (704, 70400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 16),
  -- Goomy - Attract - TM31
  (704, 70400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 17),
  -- Goomy - Rain Dance - TM33
  (704, 70400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 18),
  -- Goomy - Sunny Day - TM34
  (704, 70400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 19),
  -- Goomy - Facade - TM39
  (704, 70400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 20),
  -- Goomy - Mud Shot - TM53
  (704, 70400, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 21),
  -- Goomy - Round - TM76
  (704, 70400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 22),
  -- Goomy - Body Slam - TR01
  (704, 70400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 23),
  -- Goomy - Thunderbolt - TR08
  (704, 70400, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 24),
  -- Goomy - Substitute - TR20
  (704, 70400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 25),
  -- Goomy - Sludge Bomb - TR22
  (704, 70400, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 26),
  -- Goomy - Outrage - TR24
  (704, 70400, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 27),
  -- Goomy - Endure - TR26
  (704, 70400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 28),
  -- Goomy - Sleep Talk - TR27
  (704, 70400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 29),
  -- Goomy - Iron Tail - TR31
  (704, 70400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 30),
  -- Goomy - Muddy Water - TR45
  (704, 70400, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 31),
  -- Goomy - Dragon Pulse - TR62
  (704, 70400, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 32),
  -- Goomy - Sludge Wave - TR78
  (704, 70400, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 33),
  -- Goomy - Counter - Egg
  (704, 70400, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Goomy - Life Dew - Egg
  (704, 70400, 791, 18, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Goomy - Draco Meteor - Tutor
  (704, 70400, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 36),
  -- Sliggoo - Tackle - Level 1
  (705, 70500, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sliggoo - Water Gun - Level 1
  (705, 70500, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sliggoo - Absorb - Level 1
  (705, 70500, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sliggoo - Dragon Breath - Level 1
  (705, 70500, 225, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sliggoo - Acid Spray - Level 1
  (705, 70500, 491, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sliggoo - Protect - Level 15
  (705, 70500, 182, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Sliggoo - Flail - Level 20
  (705, 70500, 175, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Sliggoo - Water Pulse - Level 25
  (705, 70500, 352, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Sliggoo - Rain Dance - Level 30
  (705, 70500, 240, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Sliggoo - Dragon Pulse - Level 35
  (705, 70500, 406, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Sliggoo - Curse - Level 43
  (705, 70500, 174, 18, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Sliggoo - Body Slam - Level 49
  (705, 70500, 34, 18, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Sliggoo - Muddy Water - Level 56
  (705, 70500, 330, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Sliggoo - Acid Spray - Evolution
  (705, 70500, 491, 18, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Sliggoo - Rest - TM21
  (705, 70500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Sliggoo - Rock Slide - TM22
  (705, 70500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 16),
  -- Sliggoo - Snore - TM24
  (705, 70500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Sliggoo - Protect - TM25
  (705, 70500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Sliggoo - Attract - TM31
  (705, 70500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Sliggoo - Rain Dance - TM33
  (705, 70500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 20),
  -- Sliggoo - Sunny Day - TM34
  (705, 70500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 21),
  -- Sliggoo - Facade - TM39
  (705, 70500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Sliggoo - Mud Shot - TM53
  (705, 70500, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 23),
  -- Sliggoo - Round - TM76
  (705, 70500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 24),
  -- Sliggoo - Body Slam - TR01
  (705, 70500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 25),
  -- Sliggoo - Ice Beam - TR05
  (705, 70500, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 26),
  -- Sliggoo - Blizzard - TR06
  (705, 70500, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 27),
  -- Sliggoo - Thunderbolt - TR08
  (705, 70500, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 28),
  -- Sliggoo - Substitute - TR20
  (705, 70500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 29),
  -- Sliggoo - Sludge Bomb - TR22
  (705, 70500, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 30),
  -- Sliggoo - Outrage - TR24
  (705, 70500, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 31),
  -- Sliggoo - Endure - TR26
  (705, 70500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 32),
  -- Sliggoo - Sleep Talk - TR27
  (705, 70500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 33),
  -- Sliggoo - Iron Tail - TR31
  (705, 70500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 34),
  -- Sliggoo - Muddy Water - TR45
  (705, 70500, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 35),
  -- Sliggoo - Dragon Pulse - TR62
  (705, 70500, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 36),
  -- Sliggoo - Sludge Wave - TR78
  (705, 70500, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 37),
  -- Sliggoo - Draco Meteor - Tutor
  (705, 70500, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 38),
  -- Goodra - Tackle - Level 1
  (706, 70600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Goodra - Water Gun - Level 1
  (706, 70600, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Goodra - Absorb - Level 1
  (706, 70600, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Goodra - Dragon Breath - Level 1
  (706, 70600, 225, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Goodra - Poison Tail - Level 1
  (706, 70600, 342, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Goodra - Feint - Level 1
  (706, 70600, 364, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Goodra - Aqua Tail - Level 1
  (706, 70600, 401, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Goodra - Acid Spray - Level 1
  (706, 70600, 491, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Goodra - Tearful Look - Level 1
  (706, 70600, 715, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Goodra - Protect - Level 15
  (706, 70600, 182, 18, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Goodra - Flail - Level 20
  (706, 70600, 175, 18, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Goodra - Water Pulse - Level 25
  (706, 70600, 352, 18, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Goodra - Rain Dance - Level 30
  (706, 70600, 240, 18, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Goodra - Dragon Pulse - Level 35
  (706, 70600, 406, 18, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Goodra - Curse - Level 43
  (706, 70600, 174, 18, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Goodra - Body Slam - Level 49
  (706, 70600, 34, 18, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Goodra - Muddy Water - Level 58
  (706, 70600, 330, 18, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Goodra - Power Whip - Level 67
  (706, 70600, 438, 18, NULL, 1, 67, NULL, NULL, NULL, 18),
  -- Goodra - Aqua Tail - Evolution
  (706, 70600, 401, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Goodra - Mega Punch - TM00
  (706, 70600, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 20),
  -- Goodra - Mega Kick - TM01
  (706, 70600, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 21),
  -- Goodra - Fire Punch - TM03
  (706, 70600, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 22),
  -- Goodra - Thunder Punch - TM05
  (706, 70600, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 23),
  -- Goodra - Hyper Beam - TM08
  (706, 70600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 24),
  -- Goodra - Giga Impact - TM09
  (706, 70600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 25),
  -- Goodra - Rest - TM21
  (706, 70600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Goodra - Rock Slide - TM22
  (706, 70600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 27),
  -- Goodra - Snore - TM24
  (706, 70600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Goodra - Protect - TM25
  (706, 70600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Goodra - Attract - TM31
  (706, 70600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Goodra - Rain Dance - TM33
  (706, 70600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Goodra - Sunny Day - TM34
  (706, 70600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Goodra - Hail - TM35
  (706, 70600, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 33),
  -- Goodra - Facade - TM39
  (706, 70600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Goodra - Weather Ball - TM46
  (706, 70600, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 35),
  -- Goodra - Mud Shot - TM53
  (706, 70600, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 36),
  -- Goodra - Assurance - TM58
  (706, 70600, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 37),
  -- Goodra - Round - TM76
  (706, 70600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Goodra - Bulldoze - TM81
  (706, 70600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 39),
  -- Goodra - Brutal Swing - TM97
  (706, 70600, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 40),
  -- Goodra - Stomping Tantrum - TM98
  (706, 70600, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 41),
  -- Goodra - Breaking Swipe - TM99
  (706, 70600, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 42),
  -- Goodra - Body Slam - TR01
  (706, 70600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Goodra - Flamethrower - TR02
  (706, 70600, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 44),
  -- Goodra - Hydro Pump - TR03
  (706, 70600, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 45),
  -- Goodra - Surf - TR04
  (706, 70600, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 46),
  -- Goodra - Ice Beam - TR05
  (706, 70600, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 47),
  -- Goodra - Blizzard - TR06
  (706, 70600, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 48),
  -- Goodra - Thunderbolt - TR08
  (706, 70600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 49),
  -- Goodra - Thunder - TR09
  (706, 70600, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 50),
  -- Goodra - Earthquake - TR10
  (706, 70600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 51),
  -- Goodra - Fire Blast - TR15
  (706, 70600, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 52),
  -- Goodra - Substitute - TR20
  (706, 70600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 53),
  -- Goodra - Sludge Bomb - TR22
  (706, 70600, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 54),
  -- Goodra - Outrage - TR24
  (706, 70600, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 55),
  -- Goodra - Endure - TR26
  (706, 70600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 56),
  -- Goodra - Sleep Talk - TR27
  (706, 70600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 57),
  -- Goodra - Iron Tail - TR31
  (706, 70600, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 58),
  -- Goodra - Superpower - TR39
  (706, 70600, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 59),
  -- Goodra - Muddy Water - TR45
  (706, 70600, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 60),
  -- Goodra - Dragon Pulse - TR62
  (706, 70600, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 61),
  -- Goodra - Focus Blast - TR64
  (706, 70600, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 62),
  -- Goodra - Power Whip - TR72
  (706, 70600, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 63),
  -- Goodra - Sludge Wave - TR78
  (706, 70600, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 64),
  -- Goodra - Body Press - TR99
  (706, 70600, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 65),
  -- Goodra - Draco Meteor - Tutor
  (706, 70600, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 66),
  -- Klefki - Astonish - Level 1
  (707, 70700, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Klefki - Fairy Lock - Level 1
  (707, 70700, 587, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Klefki - Tackle - Level 4
  (707, 70700, 33, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Klefki - Fairy Wind - Level 8
  (707, 70700, 584, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Klefki - Torment - Level 12
  (707, 70700, 259, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Klefki - Crafty Shield - Level 16
  (707, 70700, 578, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Klefki - Metal Sound - Level 20
  (707, 70700, 319, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Klefki - Draining Kiss - Level 24
  (707, 70700, 577, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Klefki - Recycle - Level 28
  (707, 70700, 278, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Klefki - Imprison - Level 32
  (707, 70700, 286, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Klefki - Flash Cannon - Level 36
  (707, 70700, 430, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Klefki - Play Rough - Level 40
  (707, 70700, 583, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Klefki - Magic Room - Level 44
  (707, 70700, 478, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Klefki - Foul Play - Level 48
  (707, 70700, 492, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Klefki - Last Resort - Level 52
  (707, 70700, 387, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Klefki - Hyper Beam - TM08
  (707, 70700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Klefki - Giga Impact - TM09
  (707, 70700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Klefki - Thunder Wave - TM14
  (707, 70700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Klefki - Light Screen - TM17
  (707, 70700, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Klefki - Reflect - TM18
  (707, 70700, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Klefki - Safeguard - TM19
  (707, 70700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 21),
  -- Klefki - Rest - TM21
  (707, 70700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Klefki - Thief - TM23
  (707, 70700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Klefki - Snore - TM24
  (707, 70700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Klefki - Protect - TM25
  (707, 70700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Klefki - Attract - TM31
  (707, 70700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Klefki - Rain Dance - TM33
  (707, 70700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Klefki - Sunny Day - TM34
  (707, 70700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Klefki - Facade - TM39
  (707, 70700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Klefki - Imprison - TM44
  (707, 70700, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 30),
  -- Klefki - Magic Room - TM72
  (707, 70700, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 31),
  -- Klefki - Round - TM76
  (707, 70700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Klefki - Draining Kiss - TM87
  (707, 70700, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 33),
  -- Klefki - Misty Terrain - TM89
  (707, 70700, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 34),
  -- Klefki - Psychic - TR11
  (707, 70700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 35),
  -- Klefki - Substitute - TR20
  (707, 70700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Klefki - Spikes - TR23
  (707, 70700, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 37),
  -- Klefki - Psyshock - TR25
  (707, 70700, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 38),
  -- Klefki - Endure - TR26
  (707, 70700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Klefki - Sleep Talk - TR27
  (707, 70700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Klefki - Iron Defense - TR46
  (707, 70700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 41),
  -- Klefki - Calm Mind - TR49
  (707, 70700, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 42),
  -- Klefki - Flash Cannon - TR70
  (707, 70700, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 43),
  -- Klefki - Foul Play - TR81
  (707, 70700, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 44),
  -- Klefki - Stored Power - TR82
  (707, 70700, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 45),
  -- Klefki - Play Rough - TR90
  (707, 70700, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 46),
  -- Klefki - Dazzling Gleam - TR92
  (707, 70700, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 47),
  -- Klefki - Magnet Rise - Egg
  (707, 70700, 393, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Klefki - Switcheroo - Egg
  (707, 70700, 415, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Klefki - Steel Beam - Tutor
  (707, 70700, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 50),
  -- Phantump - Tackle - Level 1
  (708, 70800, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Phantump - Astonish - Level 1
  (708, 70800, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Phantump - Branch Poke - Level 4
  (708, 70800, 785, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Phantump - Leech Seed - Level 8
  (708, 70800, 73, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Phantump - Confuse Ray - Level 12
  (708, 70800, 109, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Phantump - Will-O-Wisp - Level 16
  (708, 70800, 261, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Phantump - Hex - Level 20
  (708, 70800, 506, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Phantump - Growth - Level 24
  (708, 70800, 74, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Phantump - Horn Leech - Level 28
  (708, 70800, 532, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Phantump - Curse - Level 32
  (708, 70800, 174, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Phantump - Phantom Force - Level 36
  (708, 70800, 566, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Phantump - Ingrain - Level 40
  (708, 70800, 275, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Phantump - Wood Hammer - Level 44
  (708, 70800, 452, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Phantump - Destiny Bond - Level 48
  (708, 70800, 194, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Phantump - Forest's Curse - Level 52
  (708, 70800, 571, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Phantump - Magical Leaf - TM10
  (708, 70800, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 16),
  -- Phantump - Solar Beam - TM11
  (708, 70800, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Phantump - Dig - TM15
  (708, 70800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Phantump - Reflect - TM18
  (708, 70800, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 19),
  -- Phantump - Safeguard - TM19
  (708, 70800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 20),
  -- Phantump - Rest - TM21
  (708, 70800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Phantump - Rock Slide - TM22
  (708, 70800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Phantump - Thief - TM23
  (708, 70800, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Phantump - Snore - TM24
  (708, 70800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Phantump - Protect - TM25
  (708, 70800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Phantump - Giga Drain - TM28
  (708, 70800, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 26),
  -- Phantump - Attract - TM31
  (708, 70800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Phantump - Sunny Day - TM34
  (708, 70800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Phantump - Will-O-Wisp - TM38
  (708, 70800, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 29),
  -- Phantump - Facade - TM39
  (708, 70800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Phantump - Imprison - TM44
  (708, 70800, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 31),
  -- Phantump - Shadow Claw - TM65
  (708, 70800, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 32),
  -- Phantump - Trick Room - TM70
  (708, 70800, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 33),
  -- Phantump - Round - TM76
  (708, 70800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Phantump - Hex - TM77
  (708, 70800, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 35),
  -- Phantump - Bulldoze - TM81
  (708, 70800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 36),
  -- Phantump - Phantom Force - TM86
  (708, 70800, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 37),
  -- Phantump - Psychic - TR11
  (708, 70800, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 38),
  -- Phantump - Substitute - TR20
  (708, 70800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Phantump - Endure - TR26
  (708, 70800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Phantump - Sleep Talk - TR27
  (708, 70800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Phantump - Shadow Ball - TR33
  (708, 70800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 42),
  -- Phantump - Trick - TR38
  (708, 70800, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 43),
  -- Phantump - Skill Swap - TR40
  (708, 70800, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 44),
  -- Phantump - Poison Jab - TR57
  (708, 70800, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 45),
  -- Phantump - Dark Pulse - TR58
  (708, 70800, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 46),
  -- Phantump - Seed Bomb - TR59
  (708, 70800, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 47),
  -- Phantump - Energy Ball - TR65
  (708, 70800, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 48),
  -- Phantump - Grass Knot - TR77
  (708, 70800, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 49),
  -- Phantump - Foul Play - TR81
  (708, 70800, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 50),
  -- Phantump - Ally Switch - TR83
  (708, 70800, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 51),
  -- Phantump - Venom Drench - TR91
  (708, 70800, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 52),
  -- Phantump - Disable - Egg
  (708, 70800, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Phantump - Grudge - Egg
  (708, 70800, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Phantump - Sucker Punch - Egg
  (708, 70800, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Trevenant - Tackle - Level 1
  (709, 70900, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Trevenant - Leech Seed - Level 1
  (709, 70900, 73, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Trevenant - Astonish - Level 1
  (709, 70900, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Trevenant - Shadow Claw - Level 1
  (709, 70900, 421, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Trevenant - Branch Poke - Level 1
  (709, 70900, 785, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Trevenant - Confuse Ray - Level 12
  (709, 70900, 109, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Trevenant - Will-O-Wisp - Level 16
  (709, 70900, 261, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Trevenant - Hex - Level 20
  (709, 70900, 506, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Trevenant - Growth - Level 24
  (709, 70900, 74, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Trevenant - Horn Leech - Level 28
  (709, 70900, 532, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Trevenant - Curse - Level 32
  (709, 70900, 174, 18, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Trevenant - Phantom Force - Level 36
  (709, 70900, 566, 18, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Trevenant - Ingrain - Level 40
  (709, 70900, 275, 18, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Trevenant - Wood Hammer - Level 44
  (709, 70900, 452, 18, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Trevenant - Destiny Bond - Level 48
  (709, 70900, 194, 18, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Trevenant - Forest's Curse - Level 52
  (709, 70900, 571, 18, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Trevenant - Shadow Claw - Evolution
  (709, 70900, 421, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Trevenant - Hyper Beam - TM08
  (709, 70900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Trevenant - Giga Impact - TM09
  (709, 70900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Trevenant - Magical Leaf - TM10
  (709, 70900, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 20),
  -- Trevenant - Solar Beam - TM11
  (709, 70900, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 21),
  -- Trevenant - Dig - TM15
  (709, 70900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 22),
  -- Trevenant - Reflect - TM18
  (709, 70900, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 23),
  -- Trevenant - Safeguard - TM19
  (709, 70900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Trevenant - Rest - TM21
  (709, 70900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Trevenant - Rock Slide - TM22
  (709, 70900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Trevenant - Thief - TM23
  (709, 70900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 27),
  -- Trevenant - Snore - TM24
  (709, 70900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Trevenant - Protect - TM25
  (709, 70900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Trevenant - Giga Drain - TM28
  (709, 70900, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 30),
  -- Trevenant - Attract - TM31
  (709, 70900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 31),
  -- Trevenant - Sunny Day - TM34
  (709, 70900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Trevenant - Will-O-Wisp - TM38
  (709, 70900, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 33),
  -- Trevenant - Facade - TM39
  (709, 70900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Trevenant - Imprison - TM44
  (709, 70900, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 35),
  -- Trevenant - Drain Punch - TM63
  (709, 70900, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 36),
  -- Trevenant - Shadow Claw - TM65
  (709, 70900, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 37),
  -- Trevenant - Trick Room - TM70
  (709, 70900, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 38),
  -- Trevenant - Round - TM76
  (709, 70900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Trevenant - Hex - TM77
  (709, 70900, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 40),
  -- Trevenant - Bulldoze - TM81
  (709, 70900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 41),
  -- Trevenant - Phantom Force - TM86
  (709, 70900, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 42),
  -- Trevenant - Brutal Swing - TM97
  (709, 70900, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 43),
  -- Trevenant - Earthquake - TR10
  (709, 70900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 44),
  -- Trevenant - Psychic - TR11
  (709, 70900, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 45),
  -- Trevenant - Substitute - TR20
  (709, 70900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Trevenant - Endure - TR26
  (709, 70900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Trevenant - Sleep Talk - TR27
  (709, 70900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Trevenant - Shadow Ball - TR33
  (709, 70900, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 49),
  -- Trevenant - Trick - TR38
  (709, 70900, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 50),
  -- Trevenant - Skill Swap - TR40
  (709, 70900, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 51),
  -- Trevenant - Calm Mind - TR49
  (709, 70900, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 52),
  -- Trevenant - Poison Jab - TR57
  (709, 70900, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 53),
  -- Trevenant - Dark Pulse - TR58
  (709, 70900, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 54),
  -- Trevenant - Seed Bomb - TR59
  (709, 70900, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 55),
  -- Trevenant - X-Scissor - TR60
  (709, 70900, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 56),
  -- Trevenant - Focus Blast - TR64
  (709, 70900, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 57),
  -- Trevenant - Energy Ball - TR65
  (709, 70900, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 58),
  -- Trevenant - Leaf Storm - TR71
  (709, 70900, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 59),
  -- Trevenant - Grass Knot - TR77
  (709, 70900, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 60),
  -- Trevenant - Foul Play - TR81
  (709, 70900, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 61),
  -- Trevenant - Ally Switch - TR83
  (709, 70900, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 62),
  -- Trevenant - Venom Drench - TR91
  (709, 70900, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 63),
  -- Pumpkaboo - Astonish - Level 1
  (710, 71000, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pumpkaboo - Trick-or-Treat - Level 1
  (710, 71000, 567, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pumpkaboo - Shadow Sneak - Level 4
  (710, 71000, 425, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pumpkaboo - Confuse Ray - Level 8
  (710, 71000, 109, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pumpkaboo - Razor Leaf - Level 12
  (710, 71000, 75, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pumpkaboo - Trick-or-Treat - Level 12
  (710, 71000, 567, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Pumpkaboo - Leech Seed - Level 16
  (710, 71000, 73, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pumpkaboo - Bullet Seed - Level 20
  (710, 71000, 331, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Pumpkaboo - Scary Face - Level 24
  (710, 71000, 184, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Pumpkaboo - Trick-or-Treat - Level 24
  (710, 71000, 567, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Pumpkaboo - Worry Seed - Level 28
  (710, 71000, 388, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Pumpkaboo - Seed Bomb - Level 32
  (710, 71000, 402, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Pumpkaboo - Shadow Ball - Level 36
  (710, 71000, 247, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Pumpkaboo - Trick-or-Treat - Level 36
  (710, 71000, 567, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Pumpkaboo - Trick - Level 40
  (710, 71000, 271, 18, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Pumpkaboo - Pain Split - Level 44
  (710, 71000, 220, 18, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Pumpkaboo - Solar Beam - TM11
  (710, 71000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Pumpkaboo - Light Screen - TM17
  (710, 71000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 18),
  -- Pumpkaboo - Safeguard - TM19
  (710, 71000, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Pumpkaboo - Rest - TM21
  (710, 71000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Pumpkaboo - Rock Slide - TM22
  (710, 71000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Pumpkaboo - Thief - TM23
  (710, 71000, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 22),
  -- Pumpkaboo - Snore - TM24
  (710, 71000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Pumpkaboo - Protect - TM25
  (710, 71000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Pumpkaboo - Scary Face - TM26
  (710, 71000, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Pumpkaboo - Giga Drain - TM28
  (710, 71000, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 26),
  -- Pumpkaboo - Attract - TM31
  (710, 71000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Pumpkaboo - Sunny Day - TM34
  (710, 71000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Pumpkaboo - Will-O-Wisp - TM38
  (710, 71000, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 29),
  -- Pumpkaboo - Facade - TM39
  (710, 71000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Pumpkaboo - Imprison - TM44
  (710, 71000, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 31),
  -- Pumpkaboo - Bullet Seed - TM50
  (710, 71000, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 32),
  -- Pumpkaboo - Trick Room - TM70
  (710, 71000, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 33),
  -- Pumpkaboo - Round - TM76
  (710, 71000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Pumpkaboo - Hex - TM77
  (710, 71000, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 35),
  -- Pumpkaboo - Mystical Fire - TM92
  (710, 71000, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 36),
  -- Pumpkaboo - Flamethrower - TR02
  (710, 71000, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 37),
  -- Pumpkaboo - Psychic - TR11
  (710, 71000, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 38),
  -- Pumpkaboo - Fire Blast - TR15
  (710, 71000, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 39),
  -- Pumpkaboo - Substitute - TR20
  (710, 71000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Pumpkaboo - Sludge Bomb - TR22
  (710, 71000, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 41),
  -- Pumpkaboo - Endure - TR26
  (710, 71000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Pumpkaboo - Sleep Talk - TR27
  (710, 71000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Pumpkaboo - Shadow Ball - TR33
  (710, 71000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 44),
  -- Pumpkaboo - Trick - TR38
  (710, 71000, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 45),
  -- Pumpkaboo - Skill Swap - TR40
  (710, 71000, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 46),
  -- Pumpkaboo - Gyro Ball - TR52
  (710, 71000, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 47),
  -- Pumpkaboo - Dark Pulse - TR58
  (710, 71000, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 48),
  -- Pumpkaboo - Seed Bomb - TR59
  (710, 71000, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 49),
  -- Pumpkaboo - Energy Ball - TR65
  (710, 71000, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 50),
  -- Pumpkaboo - Grass Knot - TR77
  (710, 71000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 51),
  -- Pumpkaboo - Foul Play - TR81
  (710, 71000, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 52),
  -- Pumpkaboo - Ally Switch - TR83
  (710, 71000, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 53),
  -- Pumpkaboo - Disable - Egg
  (710, 71000, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pumpkaboo - Curse - Egg
  (710, 71000, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pumpkaboo - Destiny Bond - Egg
  (710, 71000, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gourgeist - Confuse Ray - Level 1
  (711, 71100, 109, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gourgeist - Explosion - Level 1
  (711, 71100, 153, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gourgeist - Astonish - Level 1
  (711, 71100, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gourgeist - Shadow Sneak - Level 1
  (711, 71100, 425, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gourgeist - Trick-or-Treat - Level 1
  (711, 71100, 567, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gourgeist - Moonblast - Level 1
  (711, 71100, 585, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gourgeist - Razor Leaf - Level 12
  (711, 71100, 75, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Gourgeist - Trick-or-Treat - Level 12
  (711, 71100, 567, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Gourgeist - Leech Seed - Level 16
  (711, 71100, 73, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gourgeist - Bullet Seed - Level 20
  (711, 71100, 331, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Gourgeist - Scary Face - Level 24
  (711, 71100, 184, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Gourgeist - Trick-or-Treat - Level 24
  (711, 71100, 567, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Gourgeist - Worry Seed - Level 28
  (711, 71100, 388, 18, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Gourgeist - Seed Bomb - Level 32
  (711, 71100, 402, 18, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Gourgeist - Shadow Ball - Level 36
  (711, 71100, 247, 18, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Gourgeist - Trick-or-Treat - Level 36
  (711, 71100, 567, 18, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Gourgeist - Trick - Level 40
  (711, 71100, 271, 18, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Gourgeist - Pain Split - Level 44
  (711, 71100, 220, 18, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Gourgeist - Phantom Force - Level 48
  (711, 71100, 566, 18, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Gourgeist - Hyper Beam - TM08
  (711, 71100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Gourgeist - Giga Impact - TM09
  (711, 71100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Gourgeist - Solar Beam - TM11
  (711, 71100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Gourgeist - Light Screen - TM17
  (711, 71100, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 23),
  -- Gourgeist - Safeguard - TM19
  (711, 71100, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Gourgeist - Rest - TM21
  (711, 71100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Gourgeist - Rock Slide - TM22
  (711, 71100, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Gourgeist - Thief - TM23
  (711, 71100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 27),
  -- Gourgeist - Snore - TM24
  (711, 71100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Gourgeist - Protect - TM25
  (711, 71100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Gourgeist - Scary Face - TM26
  (711, 71100, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 30),
  -- Gourgeist - Giga Drain - TM28
  (711, 71100, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 31),
  -- Gourgeist - Attract - TM31
  (711, 71100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Gourgeist - Sunny Day - TM34
  (711, 71100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 33),
  -- Gourgeist - Will-O-Wisp - TM38
  (711, 71100, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 34),
  -- Gourgeist - Facade - TM39
  (711, 71100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 35),
  -- Gourgeist - Imprison - TM44
  (711, 71100, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 36),
  -- Gourgeist - Bullet Seed - TM50
  (711, 71100, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 37),
  -- Gourgeist - Trick Room - TM70
  (711, 71100, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 38),
  -- Gourgeist - Round - TM76
  (711, 71100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Gourgeist - Hex - TM77
  (711, 71100, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 40),
  -- Gourgeist - Phantom Force - TM86
  (711, 71100, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 41),
  -- Gourgeist - Mystical Fire - TM92
  (711, 71100, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 42),
  -- Gourgeist - Brutal Swing - TM97
  (711, 71100, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 43),
  -- Gourgeist - Flamethrower - TR02
  (711, 71100, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 44),
  -- Gourgeist - Psychic - TR11
  (711, 71100, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 45),
  -- Gourgeist - Fire Blast - TR15
  (711, 71100, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 46),
  -- Gourgeist - Substitute - TR20
  (711, 71100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Gourgeist - Sludge Bomb - TR22
  (711, 71100, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 48),
  -- Gourgeist - Endure - TR26
  (711, 71100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Gourgeist - Sleep Talk - TR27
  (711, 71100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Gourgeist - Shadow Ball - TR33
  (711, 71100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 51),
  -- Gourgeist - Trick - TR38
  (711, 71100, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 52),
  -- Gourgeist - Skill Swap - TR40
  (711, 71100, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 53),
  -- Gourgeist - Gyro Ball - TR52
  (711, 71100, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 54),
  -- Gourgeist - Dark Pulse - TR58
  (711, 71100, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 55),
  -- Gourgeist - Seed Bomb - TR59
  (711, 71100, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 56),
  -- Gourgeist - Focus Blast - TR64
  (711, 71100, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 57),
  -- Gourgeist - Energy Ball - TR65
  (711, 71100, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 58),
  -- Gourgeist - Nasty Plot - TR68
  (711, 71100, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 59),
  -- Gourgeist - Power Whip - TR72
  (711, 71100, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 60),
  -- Gourgeist - Grass Knot - TR77
  (711, 71100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 61),
  -- Gourgeist - Foul Play - TR81
  (711, 71100, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 62),
  -- Gourgeist - Ally Switch - TR83
  (711, 71100, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 63),
  -- Bergmite - Harden - Level 1
  (712, 71200, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bergmite - Rapid Spin - Level 1
  (712, 71200, 229, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bergmite - Tackle - Level 3
  (712, 71200, 33, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Bergmite - Powder Snow - Level 6
  (712, 71200, 181, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Bergmite - Curse - Level 9
  (712, 71200, 174, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Bergmite - Icy Wind - Level 12
  (712, 71200, 196, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Bergmite - Protect - Level 15
  (712, 71200, 182, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Bergmite - Avalanche - Level 18
  (712, 71200, 419, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Bergmite - Bite - Level 21
  (712, 71200, 44, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Bergmite - Ice Fang - Level 24
  (712, 71200, 423, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Bergmite - Iron Defense - Level 27
  (712, 71200, 334, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Bergmite - Recover - Level 30
  (712, 71200, 105, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Bergmite - Crunch - Level 33
  (712, 71200, 242, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Bergmite - Take Down - Level 36
  (712, 71200, 36, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Bergmite - Blizzard - Level 39
  (712, 71200, 59, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Bergmite - Double-Edge - Level 42
  (712, 71200, 38, 18, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Bergmite - Safeguard - TM19
  (712, 71200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Bergmite - Rest - TM21
  (712, 71200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Bergmite - Rock Slide - TM22
  (712, 71200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 19),
  -- Bergmite - Snore - TM24
  (712, 71200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Bergmite - Protect - TM25
  (712, 71200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Bergmite - Icy Wind - TM27
  (712, 71200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 22),
  -- Bergmite - Attract - TM31
  (712, 71200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Bergmite - Rain Dance - TM33
  (712, 71200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Bergmite - Hail - TM35
  (712, 71200, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 25),
  -- Bergmite - Facade - TM39
  (712, 71200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Bergmite - Rock Tomb - TM48
  (712, 71200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Bergmite - Icicle Spear - TM51
  (712, 71200, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 28),
  -- Bergmite - Avalanche - TM64
  (712, 71200, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 29),
  -- Bergmite - Ice Fang - TM67
  (712, 71200, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 30),
  -- Bergmite - Round - TM76
  (712, 71200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Bergmite - Surf - TR04
  (712, 71200, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 32),
  -- Bergmite - Ice Beam - TR05
  (712, 71200, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 33),
  -- Bergmite - Blizzard - TR06
  (712, 71200, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 34),
  -- Bergmite - Substitute - TR20
  (712, 71200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Bergmite - Endure - TR26
  (712, 71200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Bergmite - Sleep Talk - TR27
  (712, 71200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Bergmite - Crunch - TR32
  (712, 71200, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 38),
  -- Bergmite - Iron Defense - TR46
  (712, 71200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 39),
  -- Bergmite - Gyro Ball - TR52
  (712, 71200, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 40),
  -- Bergmite - Flash Cannon - TR70
  (712, 71200, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 41),
  -- Bergmite - Stone Edge - TR75
  (712, 71200, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 42),
  -- Bergmite - Mist - Egg
  (712, 71200, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bergmite - Mirror Coat - Egg
  (712, 71200, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bergmite - Aurora Veil - Egg
  (712, 71200, 694, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Avalugg - Tackle - Level 1
  (713, 71300, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Avalugg - Body Slam - Level 1
  (713, 71300, 34, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Avalugg - Harden - Level 1
  (713, 71300, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Avalugg - Powder Snow - Level 1
  (713, 71300, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Avalugg - Rapid Spin - Level 1
  (713, 71300, 229, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Avalugg - Wide Guard - Level 1
  (713, 71300, 469, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Avalugg - Curse - Level 9
  (713, 71300, 174, 18, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Avalugg - Icy Wind - Level 12
  (713, 71300, 196, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Avalugg - Protect - Level 15
  (713, 71300, 182, 18, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Avalugg - Avalanche - Level 18
  (713, 71300, 419, 18, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Avalugg - Bite - Level 21
  (713, 71300, 44, 18, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Avalugg - Ice Fang - Level 24
  (713, 71300, 423, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Avalugg - Iron Defense - Level 27
  (713, 71300, 334, 18, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Avalugg - Recover - Level 30
  (713, 71300, 105, 18, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Avalugg - Crunch - Level 33
  (713, 71300, 242, 18, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Avalugg - Take Down - Level 36
  (713, 71300, 36, 18, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Avalugg - Blizzard - Level 41
  (713, 71300, 59, 18, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Avalugg - Double-Edge - Level 46
  (713, 71300, 38, 18, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Avalugg - Skull Bash - Level 51
  (713, 71300, 130, 18, NULL, 1, 51, NULL, NULL, NULL, 19),
  -- Avalugg - Body Slam - Evolution
  (713, 71300, 34, 18, NULL, 7, NULL, NULL, NULL, NULL, 20),
  -- Avalugg - Hyper Beam - TM08
  (713, 71300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Avalugg - Giga Impact - TM09
  (713, 71300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Avalugg - Safeguard - TM19
  (713, 71300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 23),
  -- Avalugg - Rest - TM21
  (713, 71300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Avalugg - Rock Slide - TM22
  (713, 71300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 25),
  -- Avalugg - Snore - TM24
  (713, 71300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Avalugg - Protect - TM25
  (713, 71300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Avalugg - Icy Wind - TM27
  (713, 71300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 28),
  -- Avalugg - Attract - TM31
  (713, 71300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Avalugg - Rain Dance - TM33
  (713, 71300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Avalugg - Hail - TM35
  (713, 71300, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 31),
  -- Avalugg - Facade - TM39
  (713, 71300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Avalugg - Rock Tomb - TM48
  (713, 71300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Avalugg - Icicle Spear - TM51
  (713, 71300, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 34),
  -- Avalugg - Avalanche - TM64
  (713, 71300, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 35),
  -- Avalugg - Ice Fang - TM67
  (713, 71300, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 36),
  -- Avalugg - Round - TM76
  (713, 71300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Avalugg - Bulldoze - TM81
  (713, 71300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 38),
  -- Avalugg - Stomping Tantrum - TM98
  (713, 71300, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 39),
  -- Avalugg - Body Slam - TR01
  (713, 71300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 40),
  -- Avalugg - Hydro Pump - TR03
  (713, 71300, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 41),
  -- Avalugg - Surf - TR04
  (713, 71300, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 42),
  -- Avalugg - Ice Beam - TR05
  (713, 71300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 43),
  -- Avalugg - Blizzard - TR06
  (713, 71300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 44),
  -- Avalugg - Earthquake - TR10
  (713, 71300, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 45),
  -- Avalugg - Substitute - TR20
  (713, 71300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Avalugg - Endure - TR26
  (713, 71300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Avalugg - Sleep Talk - TR27
  (713, 71300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Avalugg - Crunch - TR32
  (713, 71300, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 49),
  -- Avalugg - Superpower - TR39
  (713, 71300, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 50),
  -- Avalugg - Iron Defense - TR46
  (713, 71300, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 51),
  -- Avalugg - Gyro Ball - TR52
  (713, 71300, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 52),
  -- Avalugg - Flash Cannon - TR70
  (713, 71300, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 53),
  -- Avalugg - Iron Head - TR74
  (713, 71300, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 54),
  -- Avalugg - Stone Edge - TR75
  (713, 71300, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 55),
  -- Avalugg - Heavy Slam - TR79
  (713, 71300, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 56),
  -- Avalugg - High Horsepower - TR94
  (713, 71300, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 57),
  -- Avalugg - Body Press - TR99
  (713, 71300, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 58),
  -- Noibat - Tackle - Level 1
  (714, 71400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Noibat - Absorb - Level 1
  (714, 71400, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Noibat - Gust - Level 4
  (714, 71400, 16, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Noibat - Supersonic - Level 8
  (714, 71400, 48, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Noibat - Double Team - Level 12
  (714, 71400, 104, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Noibat - Wing Attack - Level 16
  (714, 71400, 17, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Noibat - Bite - Level 20
  (714, 71400, 44, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Noibat - Air Cutter - Level 24
  (714, 71400, 314, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Noibat - Whirlwind - Level 28
  (714, 71400, 18, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Noibat - Super Fang - Level 32
  (714, 71400, 162, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Noibat - Air Slash - Level 36
  (714, 71400, 403, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Noibat - Screech - Level 40
  (714, 71400, 103, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Noibat - Roost - Level 44
  (714, 71400, 355, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Noibat - Tailwind - Level 49
  (714, 71400, 366, 18, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Noibat - Hurricane - Level 52
  (714, 71400, 542, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Noibat - Fly - TM06
  (714, 71400, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 16),
  -- Noibat - Solar Beam - TM11
  (714, 71400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Noibat - Screech - TM16
  (714, 71400, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 18),
  -- Noibat - Rest - TM21
  (714, 71400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Noibat - Thief - TM23
  (714, 71400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 20),
  -- Noibat - Snore - TM24
  (714, 71400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Noibat - Protect - TM25
  (714, 71400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Noibat - Steel Wing - TM30
  (714, 71400, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 23),
  -- Noibat - Attract - TM31
  (714, 71400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Noibat - Sunny Day - TM34
  (714, 71400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Noibat - Facade - TM39
  (714, 71400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Noibat - Swift - TM40
  (714, 71400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Noibat - Brick Break - TM43
  (714, 71400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 28),
  -- Noibat - U-turn - TM56
  (714, 71400, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 29),
  -- Noibat - Shadow Claw - TM65
  (714, 71400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 30),
  -- Noibat - Round - TM76
  (714, 71400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Noibat - Acrobatics - TM78
  (714, 71400, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 32),
  -- Noibat - Air Slash - TM95
  (714, 71400, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 33),
  -- Noibat - Psychic - TR11
  (714, 71400, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 34),
  -- Noibat - Agility - TR12
  (714, 71400, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 35),
  -- Noibat - Leech Life - TR18
  (714, 71400, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 36),
  -- Noibat - Substitute - TR20
  (714, 71400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Noibat - Outrage - TR24
  (714, 71400, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 38),
  -- Noibat - Endure - TR26
  (714, 71400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Noibat - Sleep Talk - TR27
  (714, 71400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Noibat - Iron Tail - TR31
  (714, 71400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 41),
  -- Noibat - Shadow Ball - TR33
  (714, 71400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 42),
  -- Noibat - Uproar - TR35
  (714, 71400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 43),
  -- Noibat - Heat Wave - TR36
  (714, 71400, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 44),
  -- Noibat - Taunt - TR37
  (714, 71400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 45),
  -- Noibat - Hyper Voice - TR42
  (714, 71400, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 46),
  -- Noibat - Dark Pulse - TR58
  (714, 71400, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 47),
  -- Noibat - X-Scissor - TR60
  (714, 71400, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 48),
  -- Noibat - Dragon Pulse - TR62
  (714, 71400, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 49),
  -- Noibat - Wild Charge - TR86
  (714, 71400, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 50),
  -- Noibat - Hurricane - TR89
  (714, 71400, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 51),
  -- Noibat - Dragon Rush - Egg
  (714, 71400, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Noibat - Defog - Egg
  (714, 71400, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Noibat - Draco Meteor - Tutor
  (714, 71400, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 54),
  -- Noivern - Gust - Level 1
  (715, 71500, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Noivern - Tackle - Level 1
  (715, 71500, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Noivern - Supersonic - Level 1
  (715, 71500, 48, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Noivern - Absorb - Level 1
  (715, 71500, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Noivern - Moonlight - Level 1
  (715, 71500, 236, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Noivern - Dragon Pulse - Level 1
  (715, 71500, 406, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Noivern - Double Team - Level 12
  (715, 71500, 104, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Noivern - Wing Attack - Level 16
  (715, 71500, 17, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Noivern - Bite - Level 20
  (715, 71500, 44, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Noivern - Air Cutter - Level 24
  (715, 71500, 314, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Noivern - Whirlwind - Level 28
  (715, 71500, 18, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Noivern - Super Fang - Level 32
  (715, 71500, 162, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Noivern - Air Slash - Level 36
  (715, 71500, 403, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Noivern - Screech - Level 40
  (715, 71500, 103, 18, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Noivern - Roost - Level 44
  (715, 71500, 355, 18, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Noivern - Tailwind - Level 51
  (715, 71500, 366, 18, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Noivern - Hurricane - Level 56
  (715, 71500, 542, 18, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Noivern - Boomburst - Level 62
  (715, 71500, 586, 18, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Noivern - Dragon Pulse - Evolution
  (715, 71500, 406, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Noivern - Fly - TM06
  (715, 71500, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 20),
  -- Noivern - Hyper Beam - TM08
  (715, 71500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Noivern - Giga Impact - TM09
  (715, 71500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Noivern - Solar Beam - TM11
  (715, 71500, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 23),
  -- Noivern - Screech - TM16
  (715, 71500, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 24),
  -- Noivern - Rest - TM21
  (715, 71500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Noivern - Thief - TM23
  (715, 71500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 26),
  -- Noivern - Snore - TM24
  (715, 71500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Noivern - Protect - TM25
  (715, 71500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Noivern - Steel Wing - TM30
  (715, 71500, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 29),
  -- Noivern - Attract - TM31
  (715, 71500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Noivern - Sunny Day - TM34
  (715, 71500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Noivern - Facade - TM39
  (715, 71500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Noivern - Swift - TM40
  (715, 71500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Noivern - Brick Break - TM43
  (715, 71500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Noivern - U-turn - TM56
  (715, 71500, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 35),
  -- Noivern - Shadow Claw - TM65
  (715, 71500, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 36),
  -- Noivern - Round - TM76
  (715, 71500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Noivern - Acrobatics - TM78
  (715, 71500, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 38),
  -- Noivern - Air Slash - TM95
  (715, 71500, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 39),
  -- Noivern - Flamethrower - TR02
  (715, 71500, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 40),
  -- Noivern - Psychic - TR11
  (715, 71500, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 41),
  -- Noivern - Agility - TR12
  (715, 71500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 42),
  -- Noivern - Leech Life - TR18
  (715, 71500, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 43),
  -- Noivern - Substitute - TR20
  (715, 71500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Noivern - Outrage - TR24
  (715, 71500, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 45),
  -- Noivern - Endure - TR26
  (715, 71500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Noivern - Sleep Talk - TR27
  (715, 71500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Noivern - Iron Tail - TR31
  (715, 71500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 48),
  -- Noivern - Shadow Ball - TR33
  (715, 71500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 49),
  -- Noivern - Uproar - TR35
  (715, 71500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 50),
  -- Noivern - Heat Wave - TR36
  (715, 71500, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 51),
  -- Noivern - Taunt - TR37
  (715, 71500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 52),
  -- Noivern - Hyper Voice - TR42
  (715, 71500, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 53),
  -- Noivern - Dragon Claw - TR47
  (715, 71500, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 54),
  -- Noivern - Dragon Dance - TR51
  (715, 71500, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 55),
  -- Noivern - Dark Pulse - TR58
  (715, 71500, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 56),
  -- Noivern - X-Scissor - TR60
  (715, 71500, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 57),
  -- Noivern - Dragon Pulse - TR62
  (715, 71500, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 58),
  -- Noivern - Focus Blast - TR64
  (715, 71500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 59),
  -- Noivern - Wild Charge - TR86
  (715, 71500, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 60),
  -- Noivern - Hurricane - TR89
  (715, 71500, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 61),
  -- Noivern - Draco Meteor - Tutor
  (715, 71500, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 62),
  -- Xerneas - Tackle - Level 1
  (716, 71600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Xerneas - Gravity - Level 1
  (716, 71600, 356, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Xerneas - Light Screen - Level 5
  (716, 71600, 113, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Xerneas - Aurora Beam - Level 10
  (716, 71600, 62, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Xerneas - Nature Power - Level 15
  (716, 71600, 267, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Xerneas - Night Slash - Level 20
  (716, 71600, 400, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Xerneas - Aromatherapy - Level 25
  (716, 71600, 312, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Xerneas - Psych Up - Level 30
  (716, 71600, 244, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Xerneas - Horn Leech - Level 35
  (716, 71600, 532, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Xerneas - Misty Terrain - Level 40
  (716, 71600, 581, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Xerneas - Ingrain - Level 45
  (716, 71600, 275, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Xerneas - Take Down - Level 50
  (716, 71600, 36, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Xerneas - Geomancy - Level 55
  (716, 71600, 601, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Xerneas - Moonblast - Level 60
  (716, 71600, 585, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Xerneas - Heal Pulse - Level 65
  (716, 71600, 505, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Xerneas - Megahorn - Level 70
  (716, 71600, 224, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Xerneas - Close Combat - Level 75
  (716, 71600, 370, 18, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Xerneas - Outrage - Level 80
  (716, 71600, 200, 18, NULL, 1, 80, NULL, NULL, NULL, 18),
  -- Xerneas - Giga Impact - Level 85
  (716, 71600, 416, 18, NULL, 1, 85, NULL, NULL, NULL, 19),
  -- Xerneas - Hyper Beam - TM08
  (716, 71600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Xerneas - Giga Impact - TM09
  (716, 71600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Xerneas - Thunder Wave - TM14
  (716, 71600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 22),
  -- Xerneas - Light Screen - TM17
  (716, 71600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 23),
  -- Xerneas - Reflect - TM18
  (716, 71600, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 24),
  -- Xerneas - Rest - TM21
  (716, 71600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Xerneas - Rock Slide - TM22
  (716, 71600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Xerneas - Snore - TM24
  (716, 71600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Xerneas - Protect - TM25
  (716, 71600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Xerneas - Rain Dance - TM33
  (716, 71600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Xerneas - Sunny Day - TM34
  (716, 71600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Xerneas - Hail - TM35
  (716, 71600, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 31),
  -- Xerneas - Facade - TM39
  (716, 71600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Xerneas - Swift - TM40
  (716, 71600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Xerneas - Wonder Room - TM71
  (716, 71600, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 34),
  -- Xerneas - Round - TM76
  (716, 71600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Xerneas - Draining Kiss - TM87
  (716, 71600, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 36),
  -- Xerneas - Misty Terrain - TM89
  (716, 71600, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 37),
  -- Xerneas - Smart Strike - TM96
  (716, 71600, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 38),
  -- Xerneas - Body Slam - TR01
  (716, 71600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 39),
  -- Xerneas - Thunderbolt - TR08
  (716, 71600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 40),
  -- Xerneas - Thunder - TR09
  (716, 71600, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 41),
  -- Xerneas - Psychic - TR11
  (716, 71600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 42),
  -- Xerneas - Substitute - TR20
  (716, 71600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Xerneas - Outrage - TR24
  (716, 71600, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 44),
  -- Xerneas - Psyshock - TR25
  (716, 71600, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 45),
  -- Xerneas - Endure - TR26
  (716, 71600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Xerneas - Sleep Talk - TR27
  (716, 71600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Xerneas - Megahorn - TR28
  (716, 71600, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 48),
  -- Xerneas - Hyper Voice - TR42
  (716, 71600, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 49),
  -- Xerneas - Calm Mind - TR49
  (716, 71600, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 50),
  -- Xerneas - Close Combat - TR53
  (716, 71600, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 51),
  -- Xerneas - Focus Blast - TR64
  (716, 71600, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 52),
  -- Xerneas - Zen Headbutt - TR69
  (716, 71600, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 53),
  -- Xerneas - Flash Cannon - TR70
  (716, 71600, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 54),
  -- Xerneas - Grass Knot - TR77
  (716, 71600, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 55),
  -- Xerneas - Play Rough - TR90
  (716, 71600, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 56),
  -- Xerneas - Dazzling Gleam - TR92
  (716, 71600, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 57),
  -- Yveltal - Gust - Level 1
  (717, 71700, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yveltal - Double Team - Level 1
  (717, 71700, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yveltal - Taunt - Level 5
  (717, 71700, 269, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Yveltal - Snarl - Level 10
  (717, 71700, 555, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Yveltal - Disable - Level 15
  (717, 71700, 50, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Yveltal - Sucker Punch - Level 20
  (717, 71700, 389, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Yveltal - Tailwind - Level 25
  (717, 71700, 366, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Yveltal - Roost - Level 30
  (717, 71700, 355, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Yveltal - Air Slash - Level 35
  (717, 71700, 403, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Yveltal - Dark Pulse - Level 40
  (717, 71700, 399, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Yveltal - Psychic - Level 45
  (717, 71700, 94, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Yveltal - Oblivion Wing - Level 50
  (717, 71700, 613, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Yveltal - Phantom Force - Level 55
  (717, 71700, 566, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Yveltal - Foul Play - Level 60
  (717, 71700, 492, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Yveltal - Dragon Rush - Level 65
  (717, 71700, 407, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Yveltal - Hurricane - Level 70
  (717, 71700, 542, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Yveltal - Focus Blast - Level 75
  (717, 71700, 411, 18, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Yveltal - Sky Attack - Level 80
  (717, 71700, 143, 18, NULL, 1, 80, NULL, NULL, NULL, 18),
  -- Yveltal - Hyper Beam - Level 85
  (717, 71700, 63, 18, NULL, 1, 85, NULL, NULL, NULL, 19),
  -- Yveltal - Fly - TM06
  (717, 71700, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 20),
  -- Yveltal - Hyper Beam - TM08
  (717, 71700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Yveltal - Giga Impact - TM09
  (717, 71700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Yveltal - Rest - TM21
  (717, 71700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Yveltal - Rock Slide - TM22
  (717, 71700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Yveltal - Thief - TM23
  (717, 71700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 25),
  -- Yveltal - Snore - TM24
  (717, 71700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Yveltal - Protect - TM25
  (717, 71700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Yveltal - Steel Wing - TM30
  (717, 71700, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 28),
  -- Yveltal - Rain Dance - TM33
  (717, 71700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Yveltal - Sunny Day - TM34
  (717, 71700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Yveltal - Facade - TM39
  (717, 71700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Yveltal - Swift - TM40
  (717, 71700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 32),
  -- Yveltal - U-turn - TM56
  (717, 71700, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 33),
  -- Yveltal - Payback - TM57
  (717, 71700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 34),
  -- Yveltal - Shadow Claw - TM65
  (717, 71700, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 35),
  -- Yveltal - Round - TM76
  (717, 71700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Yveltal - Acrobatics - TM78
  (717, 71700, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 37),
  -- Yveltal - Snarl - TM85
  (717, 71700, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 38),
  -- Yveltal - Phantom Force - TM86
  (717, 71700, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 39),
  -- Yveltal - Air Slash - TM95
  (717, 71700, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 40),
  -- Yveltal - Body Slam - TR01
  (717, 71700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 41),
  -- Yveltal - Psychic - TR11
  (717, 71700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 42),
  -- Yveltal - Substitute - TR20
  (717, 71700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Yveltal - Endure - TR26
  (717, 71700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Yveltal - Sleep Talk - TR27
  (717, 71700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Yveltal - Shadow Ball - TR33
  (717, 71700, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 46),
  -- Yveltal - Heat Wave - TR36
  (717, 71700, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 47),
  -- Yveltal - Taunt - TR37
  (717, 71700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 48),
  -- Yveltal - Hyper Voice - TR42
  (717, 71700, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 49),
  -- Yveltal - Dragon Claw - TR47
  (717, 71700, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 50),
  -- Yveltal - Dark Pulse - TR58
  (717, 71700, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 51),
  -- Yveltal - Focus Blast - TR64
  (717, 71700, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 52),
  -- Yveltal - Zen Headbutt - TR69
  (717, 71700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 53),
  -- Yveltal - Foul Play - TR81
  (717, 71700, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 54),
  -- Yveltal - Hurricane - TR89
  (717, 71700, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 55),
  -- Zygarde - Bind - Level 1
  (718, 71800, 20, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zygarde - Bite - Level 1
  (718, 71800, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zygarde - Dragon Breath - Level 1
  (718, 71800, 225, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zygarde - Bulldoze - Level 1
  (718, 71800, 523, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zygarde - Thousand Arrows - Level 1
  (718, 71800, 614, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Zygarde - Thousand Waves - Level 1
  (718, 71800, 615, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Zygarde - Core Enforcer - Level 1
  (718, 71800, 687, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Zygarde - Haze - Level 8
  (718, 71800, 114, 18, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Zygarde - Dig - Level 16
  (718, 71800, 91, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Zygarde - Safeguard - Level 24
  (718, 71800, 219, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Zygarde - Crunch - Level 32
  (718, 71800, 242, 18, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Zygarde - Dragon Pulse - Level 40
  (718, 71800, 406, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Zygarde - Land's Wrath - Level 48
  (718, 71800, 616, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Zygarde - Glare - Level 56
  (718, 71800, 137, 18, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Zygarde - Sandstorm - Level 64
  (718, 71800, 201, 18, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Zygarde - Coil - Level 72
  (718, 71800, 489, 18, NULL, 1, 72, NULL, NULL, NULL, 16),
  -- Zygarde - Earthquake - Level 80
  (718, 71800, 89, 18, NULL, 1, 80, NULL, NULL, NULL, 17),
  -- Zygarde - Outrage - Level 88
  (718, 71800, 200, 18, NULL, 1, 88, NULL, NULL, NULL, 18),
  -- Zygarde - Hyper Beam - TM08
  (718, 71800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Zygarde - Giga Impact - TM09
  (718, 71800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Zygarde - Dig - TM15
  (718, 71800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Zygarde - Safeguard - TM19
  (718, 71800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Zygarde - Rest - TM21
  (718, 71800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Zygarde - Rock Slide - TM22
  (718, 71800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Zygarde - Snore - TM24
  (718, 71800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Zygarde - Protect - TM25
  (718, 71800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Zygarde - Sandstorm - TM32
  (718, 71800, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 27),
  -- Zygarde - Sunny Day - TM34
  (718, 71800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Zygarde - Facade - TM39
  (718, 71800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Zygarde - Swift - TM40
  (718, 71800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 30),
  -- Zygarde - Brick Break - TM43
  (718, 71800, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Zygarde - Payback - TM57
  (718, 71800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 32),
  -- Zygarde - Round - TM76
  (718, 71800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Zygarde - Retaliate - TM79
  (718, 71800, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 34),
  -- Zygarde - Bulldoze - TM81
  (718, 71800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 35),
  -- Zygarde - Stomping Tantrum - TM98
  (718, 71800, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 36),
  -- Zygarde - Breaking Swipe - TM99
  (718, 71800, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 37),
  -- Zygarde - Body Slam - TR01
  (718, 71800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 38),
  -- Zygarde - Earthquake - TR10
  (718, 71800, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 39),
  -- Zygarde - Substitute - TR20
  (718, 71800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Zygarde - Reversal - TR21
  (718, 71800, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 41),
  -- Zygarde - Outrage - TR24
  (718, 71800, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 42),
  -- Zygarde - Endure - TR26
  (718, 71800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Zygarde - Sleep Talk - TR27
  (718, 71800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Zygarde - Iron Tail - TR31
  (718, 71800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 45),
  -- Zygarde - Crunch - TR32
  (718, 71800, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 46),
  -- Zygarde - Superpower - TR39
  (718, 71800, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 47),
  -- Zygarde - Hyper Voice - TR42
  (718, 71800, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 48),
  -- Zygarde - Dragon Dance - TR51
  (718, 71800, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 49),
  -- Zygarde - Dragon Pulse - TR62
  (718, 71800, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 50),
  -- Zygarde - Focus Blast - TR64
  (718, 71800, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 51),
  -- Zygarde - Earth Power - TR67
  (718, 71800, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 52),
  -- Zygarde - Zen Headbutt - TR69
  (718, 71800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 53),
  -- Zygarde - Stone Edge - TR75
  (718, 71800, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 54),
  -- Zygarde - Grass Knot - TR77
  (718, 71800, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 55),
  -- Zygarde - Sludge Wave - TR78
  (718, 71800, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 56),
  -- Zygarde - High Horsepower - TR94
  (718, 71800, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 57),
  -- Zygarde - Draco Meteor - Tutor
  (718, 71800, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 58),
  -- Diancie - Tackle - Level 1
  (719, 71900, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Diancie - Harden - Level 1
  (719, 71900, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Diancie - Guard Split - Level 7
  (719, 71900, 470, 18, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Diancie - Smack Down - Level 14
  (719, 71900, 479, 18, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Diancie - Flail - Level 21
  (719, 71900, 175, 18, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Diancie - Ancient Power - Level 28
  (719, 71900, 246, 18, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Diancie - Rock Polish - Level 35
  (719, 71900, 397, 18, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Diancie - Light Screen - Level 42
  (719, 71900, 113, 18, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Diancie - Rock Slide - Level 49
  (719, 71900, 157, 18, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Diancie - Skill Swap - Level 56
  (719, 71900, 285, 18, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Diancie - Power Gem - Level 63
  (719, 71900, 408, 18, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Diancie - Stealth Rock - Level 70
  (719, 71900, 446, 18, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Diancie - Moonblast - Level 77
  (719, 71900, 585, 18, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Diancie - Stone Edge - Level 84
  (719, 71900, 444, 18, NULL, 1, 84, NULL, NULL, NULL, 14),
  -- Diancie - Diamond Storm - Level 91
  (719, 71900, 591, 18, NULL, 1, 91, NULL, NULL, NULL, 15),
  -- Diancie - Hyper Beam - TM08
  (719, 71900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Diancie - Giga Impact - TM09
  (719, 71900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Diancie - Light Screen - TM17
  (719, 71900, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 18),
  -- Diancie - Reflect - TM18
  (719, 71900, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 19),
  -- Diancie - Safeguard - TM19
  (719, 71900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 20),
  -- Diancie - Rest - TM21
  (719, 71900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Diancie - Rock Slide - TM22
  (719, 71900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Diancie - Snore - TM24
  (719, 71900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Diancie - Protect - TM25
  (719, 71900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Diancie - Charm - TM29
  (719, 71900, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 25),
  -- Diancie - Sandstorm - TM32
  (719, 71900, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 26),
  -- Diancie - Sunny Day - TM34
  (719, 71900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Diancie - Hail - TM35
  (719, 71900, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 28),
  -- Diancie - Facade - TM39
  (719, 71900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Diancie - Helping Hand - TM41
  (719, 71900, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Diancie - Fake Tears - TM47
  (719, 71900, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 31),
  -- Diancie - Rock Tomb - TM48
  (719, 71900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Diancie - Sand Tomb - TM49
  (719, 71900, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 33),
  -- Diancie - Guard Swap - TM61
  (719, 71900, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 34),
  -- Diancie - Trick Room - TM70
  (719, 71900, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 35),
  -- Diancie - Wonder Room - TM71
  (719, 71900, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 36),
  -- Diancie - Round - TM76
  (719, 71900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Diancie - Draining Kiss - TM87
  (719, 71900, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 38),
  -- Diancie - Mystical Fire - TM92
  (719, 71900, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 39),
  -- Diancie - Psychic - TR11
  (719, 71900, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 40),
  -- Diancie - Metronome - TR14
  (719, 71900, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 41),
  -- Diancie - Amnesia - TR17
  (719, 71900, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 42),
  -- Diancie - Substitute - TR20
  (719, 71900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Diancie - Psyshock - TR25
  (719, 71900, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 44),
  -- Diancie - Endure - TR26
  (719, 71900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Diancie - Sleep Talk - TR27
  (719, 71900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Diancie - Baton Pass - TR29
  (719, 71900, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 47),
  -- Diancie - Encore - TR30
  (719, 71900, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 48),
  -- Diancie - Skill Swap - TR40
  (719, 71900, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 49),
  -- Diancie - Iron Defense - TR46
  (719, 71900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 50),
  -- Diancie - Calm Mind - TR49
  (719, 71900, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 51),
  -- Diancie - Gyro Ball - TR52
  (719, 71900, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 52),
  -- Diancie - Power Gem - TR63
  (719, 71900, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 53),
  -- Diancie - Earth Power - TR67
  (719, 71900, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 54),
  -- Diancie - Stone Edge - TR75
  (719, 71900, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 55),
  -- Diancie - Stealth Rock - TR76
  (719, 71900, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 56),
  -- Diancie - Stored Power - TR82
  (719, 71900, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 57),
  -- Diancie - Ally Switch - TR83
  (719, 71900, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 58),
  -- Diancie - Play Rough - TR90
  (719, 71900, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 59),
  -- Diancie - Dazzling Gleam - TR92
  (719, 71900, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 60),
  -- Diancie - Body Press - TR99
  (719, 71900, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 61),
  -- Volcanion - Water Gun - Level 1
  (721, 72100, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Volcanion - Fire Spin - Level 1
  (721, 72100, 83, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Volcanion - Leer - Level 6
  (721, 72100, 43, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Volcanion - Weather Ball - Level 12
  (721, 72100, 311, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Volcanion - Flame Charge - Level 18
  (721, 72100, 488, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Volcanion - Water Pulse - Level 24
  (721, 72100, 352, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Volcanion - Scary Face - Level 30
  (721, 72100, 184, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Volcanion - Incinerate - Level 36
  (721, 72100, 510, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Volcanion - Stomp - Level 42
  (721, 72100, 23, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Volcanion - Scald - Level 48
  (721, 72100, 503, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Volcanion - Take Down - Level 54
  (721, 72100, 36, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Volcanion - Mist - Level 60
  (721, 72100, 54, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Volcanion - Haze - Level 60
  (721, 72100, 114, 18, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Volcanion - Hydro Pump - Level 66
  (721, 72100, 56, 18, NULL, 1, 66, NULL, NULL, NULL, 14),
  -- Volcanion - Steam Eruption - Level 72
  (721, 72100, 592, 18, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Volcanion - Flare Blitz - Level 78
  (721, 72100, 394, 18, NULL, 1, 78, NULL, NULL, NULL, 16),
  -- Volcanion - Overheat - Level 84
  (721, 72100, 315, 18, NULL, 1, 84, NULL, NULL, NULL, 17),
  -- Volcanion - Explosion - Level 90
  (721, 72100, 153, 18, NULL, 1, 90, NULL, NULL, NULL, 18),
  -- Volcanion - Hyper Beam - TM08
  (721, 72100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Volcanion - Giga Impact - TM09
  (721, 72100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Volcanion - Solar Beam - TM11
  (721, 72100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 21),
  -- Volcanion - Fire Spin - TM13
  (721, 72100, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 22),
  -- Volcanion - Self-Destruct - TM20
  (721, 72100, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 23),
  -- Volcanion - Rest - TM21
  (721, 72100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Volcanion - Rock Slide - TM22
  (721, 72100, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 25),
  -- Volcanion - Snore - TM24
  (721, 72100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Volcanion - Protect - TM25
  (721, 72100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Volcanion - Scary Face - TM26
  (721, 72100, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 28),
  -- Volcanion - Sandstorm - TM32
  (721, 72100, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 29),
  -- Volcanion - Rain Dance - TM33
  (721, 72100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Volcanion - Sunny Day - TM34
  (721, 72100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Volcanion - Will-O-Wisp - TM38
  (721, 72100, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 32),
  -- Volcanion - Facade - TM39
  (721, 72100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Volcanion - Brick Break - TM43
  (721, 72100, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Volcanion - Weather Ball - TM46
  (721, 72100, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 35),
  -- Volcanion - Mud Shot - TM53
  (721, 72100, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 36),
  -- Volcanion - Fling - TM59
  (721, 72100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 37),
  -- Volcanion - Thunder Fang - TM66
  (721, 72100, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 38),
  -- Volcanion - Round - TM76
  (721, 72100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Volcanion - Bulldoze - TM81
  (721, 72100, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 40),
  -- Volcanion - Misty Terrain - TM89
  (721, 72100, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 41),
  -- Volcanion - Stomping Tantrum - TM98
  (721, 72100, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 42),
  -- Volcanion - Body Slam - TR01
  (721, 72100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Volcanion - Flamethrower - TR02
  (721, 72100, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 44),
  -- Volcanion - Hydro Pump - TR03
  (721, 72100, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 45),
  -- Volcanion - Earthquake - TR10
  (721, 72100, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 46),
  -- Volcanion - Focus Energy - TR13
  (721, 72100, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 47),
  -- Volcanion - Fire Blast - TR15
  (721, 72100, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 48),
  -- Volcanion - Substitute - TR20
  (721, 72100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Volcanion - Sludge Bomb - TR22
  (721, 72100, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 50),
  -- Volcanion - Endure - TR26
  (721, 72100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 51),
  -- Volcanion - Sleep Talk - TR27
  (721, 72100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 52),
  -- Volcanion - Heat Wave - TR36
  (721, 72100, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 53),
  -- Volcanion - Superpower - TR39
  (721, 72100, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 54),
  -- Volcanion - Overheat - TR43
  (721, 72100, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 55),
  -- Volcanion - Gyro Ball - TR52
  (721, 72100, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 56),
  -- Volcanion - Flare Blitz - TR55
  (721, 72100, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 57),
  -- Volcanion - Focus Blast - TR64
  (721, 72100, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 58),
  -- Volcanion - Earth Power - TR67
  (721, 72100, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 59),
  -- Volcanion - Flash Cannon - TR70
  (721, 72100, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 60),
  -- Volcanion - Stone Edge - TR75
  (721, 72100, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 61),
  -- Volcanion - Sludge Wave - TR78
  (721, 72100, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 62),
  -- Volcanion - Heavy Slam - TR79
  (721, 72100, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 63),
  -- Volcanion - Scald - TR84
  (721, 72100, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 64),
  -- Volcanion - Heat Crash - TR88
  (721, 72100, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 65),
  -- Volcanion - Liquidation - TR98
  (721, 72100, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 66),
  -- Volcanion - Body Press - TR99
  (721, 72100, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 67);

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
  -- Sliggoo - Counter - Egg
  (705, 70500, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Sliggoo - Life Dew - Egg
  (705, 70500, 791, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Goodra - Counter - Egg
  (706, 70600, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Goodra - Life Dew - Egg
  (706, 70600, 791, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Trevenant - Disable - Egg
  (709, 70900, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Trevenant - Grudge - Egg
  (709, 70900, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Trevenant - Sucker Punch - Egg
  (709, 70900, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Gourgeist - Disable - Egg
  (711, 71100, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Gourgeist - Curse - Egg
  (711, 71100, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Gourgeist - Destiny Bond - Egg
  (711, 71100, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Avalugg - Mist - Egg
  (713, 71300, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Avalugg - Mirror Coat - Egg
  (713, 71300, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Avalugg - Aurora Veil - Egg
  (713, 71300, 694, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Noivern - Dragon Rush - Egg
  (715, 71500, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Noivern - Defog - Egg
  (715, 71500, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 64);
