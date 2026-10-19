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
-- Sword / Shield learnsets for default forms, species 051-100.
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
  -- Dugtrio - Scratch - Level 1
  (51, 5100, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dugtrio - Sand Attack - Level 1
  (51, 5100, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dugtrio - Growl - Level 1
  (51, 5100, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dugtrio - Tri Attack - Level 1
  (51, 5100, 161, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dugtrio - Astonish - Level 1
  (51, 5100, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dugtrio - Sand Tomb - Level 1
  (51, 5100, 328, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dugtrio - Night Slash - Level 1
  (51, 5100, 400, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dugtrio - Mud-Slap - Level 12
  (51, 5100, 189, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Dugtrio - Bulldoze - Level 16
  (51, 5100, 523, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Dugtrio - Sucker Punch - Level 20
  (51, 5100, 389, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Dugtrio - Slash - Level 24
  (51, 5100, 163, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Dugtrio - Sandstorm - Level 30
  (51, 5100, 201, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Dugtrio - Dig - Level 36
  (51, 5100, 91, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Dugtrio - Earth Power - Level 42
  (51, 5100, 414, 18, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Dugtrio - Earthquake - Level 48
  (51, 5100, 89, 18, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Dugtrio - Fissure - Level 54
  (51, 5100, 90, 18, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Dugtrio - Sand Tomb - Evolution
  (51, 5100, 328, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Dugtrio - Hyper Beam - TM08
  (51, 5100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Dugtrio - Giga Impact - TM09
  (51, 5100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Dugtrio - Dig - TM15
  (51, 5100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Dugtrio - Screech - TM16
  (51, 5100, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 21),
  -- Dugtrio - Rest - TM21
  (51, 5100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Dugtrio - Rock Slide - TM22
  (51, 5100, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Dugtrio - Thief - TM23
  (51, 5100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Dugtrio - Snore - TM24
  (51, 5100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Dugtrio - Protect - TM25
  (51, 5100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Dugtrio - Attract - TM31
  (51, 5100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Dugtrio - Sandstorm - TM32
  (51, 5100, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 28),
  -- Dugtrio - Sunny Day - TM34
  (51, 5100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Dugtrio - Beat Up - TM37
  (51, 5100, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 30),
  -- Dugtrio - Facade - TM39
  (51, 5100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Dugtrio - Rock Tomb - TM48
  (51, 5100, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Dugtrio - Sand Tomb - TM49
  (51, 5100, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 33),
  -- Dugtrio - Assurance - TM58
  (51, 5100, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 34),
  -- Dugtrio - Shadow Claw - TM65
  (51, 5100, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 35),
  -- Dugtrio - Round - TM76
  (51, 5100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Dugtrio - Bulldoze - TM81
  (51, 5100, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 37),
  -- Dugtrio - Stomping Tantrum - TM98
  (51, 5100, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 38),
  -- Dugtrio - Body Slam - TR01
  (51, 5100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 39),
  -- Dugtrio - Earthquake - TR10
  (51, 5100, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 40),
  -- Dugtrio - Agility - TR12
  (51, 5100, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 41),
  -- Dugtrio - Tri Attack - TR19
  (51, 5100, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 42),
  -- Dugtrio - Substitute - TR20
  (51, 5100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Dugtrio - Reversal - TR21
  (51, 5100, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 44),
  -- Dugtrio - Sludge Bomb - TR22
  (51, 5100, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 45),
  -- Dugtrio - Endure - TR26
  (51, 5100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Dugtrio - Sleep Talk - TR27
  (51, 5100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Dugtrio - Uproar - TR35
  (51, 5100, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 48),
  -- Dugtrio - Earth Power - TR67
  (51, 5100, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 49),
  -- Dugtrio - Stone Edge - TR75
  (51, 5100, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 50),
  -- Dugtrio - Stealth Rock - TR76
  (51, 5100, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 51),
  -- Dugtrio - Sludge Wave - TR78
  (51, 5100, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 52),
  -- Dugtrio - Ally Switch - TR83
  (51, 5100, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 53),
  -- Dugtrio - Work Up - TR85
  (51, 5100, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 54),
  -- Dugtrio - High Horsepower - TR94
  (51, 5100, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 55),
  -- Meowth - Growl - Level 1
  (52, 5200, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowth - Fake Out - Level 1
  (52, 5200, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowth - Feint - Level 4
  (52, 5200, 364, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Meowth - Scratch - Level 8
  (52, 5200, 10, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Meowth - Pay Day - Level 12
  (52, 5200, 6, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Meowth - Bite - Level 16
  (52, 5200, 44, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Meowth - Taunt - Level 20
  (52, 5200, 269, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Meowth - Assurance - Level 24
  (52, 5200, 372, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Meowth - Fury Swipes - Level 29
  (52, 5200, 154, 18, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Meowth - Screech - Level 32
  (52, 5200, 103, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Meowth - Slash - Level 36
  (52, 5200, 163, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Meowth - Nasty Plot - Level 40
  (52, 5200, 417, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Meowth - Play Rough - Level 44
  (52, 5200, 583, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Meowth - Pay Day - TM02
  (52, 5200, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 14),
  -- Meowth - Dig - TM15
  (52, 5200, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 15),
  -- Meowth - Screech - TM16
  (52, 5200, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 16),
  -- Meowth - Rest - TM21
  (52, 5200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Meowth - Thief - TM23
  (52, 5200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Meowth - Snore - TM24
  (52, 5200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Meowth - Protect - TM25
  (52, 5200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Meowth - Icy Wind - TM27
  (52, 5200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 21),
  -- Meowth - Charm - TM29
  (52, 5200, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 22),
  -- Meowth - Attract - TM31
  (52, 5200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Meowth - Rain Dance - TM33
  (52, 5200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Meowth - Sunny Day - TM34
  (52, 5200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Meowth - Facade - TM39
  (52, 5200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Meowth - Swift - TM40
  (52, 5200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Meowth - U-turn - TM56
  (52, 5200, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 28),
  -- Meowth - Payback - TM57
  (52, 5200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 29),
  -- Meowth - Assurance - TM58
  (52, 5200, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 30),
  -- Meowth - Shadow Claw - TM65
  (52, 5200, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 31),
  -- Meowth - Round - TM76
  (52, 5200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Meowth - Retaliate - TM79
  (52, 5200, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 33),
  -- Meowth - Body Slam - TR01
  (52, 5200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 34),
  -- Meowth - Thunderbolt - TR08
  (52, 5200, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 35),
  -- Meowth - Thunder - TR09
  (52, 5200, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 36),
  -- Meowth - Amnesia - TR17
  (52, 5200, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 37),
  -- Meowth - Substitute - TR20
  (52, 5200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Meowth - Endure - TR26
  (52, 5200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Meowth - Sleep Talk - TR27
  (52, 5200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Meowth - Iron Tail - TR31
  (52, 5200, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 41),
  -- Meowth - Shadow Ball - TR33
  (52, 5200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 42),
  -- Meowth - Uproar - TR35
  (52, 5200, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 43),
  -- Meowth - Taunt - TR37
  (52, 5200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 44),
  -- Meowth - Hyper Voice - TR42
  (52, 5200, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 45),
  -- Meowth - Dark Pulse - TR58
  (52, 5200, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 46),
  -- Meowth - Seed Bomb - TR59
  (52, 5200, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 47),
  -- Meowth - Nasty Plot - TR68
  (52, 5200, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 48),
  -- Meowth - Gunk Shot - TR73
  (52, 5200, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 49),
  -- Meowth - Foul Play - TR81
  (52, 5200, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 50),
  -- Meowth - Work Up - TR85
  (52, 5200, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 51),
  -- Meowth - Play Rough - TR90
  (52, 5200, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 52),
  -- Meowth - Throat Chop - TR95
  (52, 5200, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 53),
  -- Meowth - Tail Whip - Egg
  (52, 5200, 39, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Meowth - Hypnosis - Egg
  (52, 5200, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Meowth - Flail - Egg
  (52, 5200, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Meowth - Spite - Egg
  (52, 5200, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Meowth - Covet - Egg
  (52, 5200, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Meowth - Last Resort - Egg
  (52, 5200, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Persian - Scratch - Level 1
  (53, 5300, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Persian - Growl - Level 1
  (53, 5300, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Persian - Fake Out - Level 1
  (53, 5300, 252, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Persian - Feint - Level 1
  (53, 5300, 364, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Persian - Power Gem - Level 1
  (53, 5300, 408, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Persian - Switcheroo - Level 1
  (53, 5300, 415, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Persian - Pay Day - Level 12
  (53, 5300, 6, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Persian - Bite - Level 16
  (53, 5300, 44, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Persian - Taunt - Level 20
  (53, 5300, 269, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Persian - Assurance - Level 24
  (53, 5300, 372, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Persian - Fury Swipes - Level 31
  (53, 5300, 154, 18, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Persian - Screech - Level 36
  (53, 5300, 103, 18, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Persian - Slash - Level 42
  (53, 5300, 163, 18, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Persian - Nasty Plot - Level 48
  (53, 5300, 417, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Persian - Play Rough - Level 54
  (53, 5300, 583, 18, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Persian - Power Gem - Evolution
  (53, 5300, 408, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Persian - Pay Day - TM02
  (53, 5300, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 17),
  -- Persian - Hyper Beam - TM08
  (53, 5300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Persian - Giga Impact - TM09
  (53, 5300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Persian - Dig - TM15
  (53, 5300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Persian - Screech - TM16
  (53, 5300, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 21),
  -- Persian - Rest - TM21
  (53, 5300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Persian - Thief - TM23
  (53, 5300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Persian - Snore - TM24
  (53, 5300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Persian - Protect - TM25
  (53, 5300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Persian - Icy Wind - TM27
  (53, 5300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 26),
  -- Persian - Charm - TM29
  (53, 5300, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 27),
  -- Persian - Attract - TM31
  (53, 5300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Persian - Rain Dance - TM33
  (53, 5300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Persian - Sunny Day - TM34
  (53, 5300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Persian - Facade - TM39
  (53, 5300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Persian - Swift - TM40
  (53, 5300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 32),
  -- Persian - U-turn - TM56
  (53, 5300, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 33),
  -- Persian - Payback - TM57
  (53, 5300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 34),
  -- Persian - Assurance - TM58
  (53, 5300, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 35),
  -- Persian - Shadow Claw - TM65
  (53, 5300, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 36),
  -- Persian - Round - TM76
  (53, 5300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Persian - Retaliate - TM79
  (53, 5300, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 38),
  -- Persian - Body Slam - TR01
  (53, 5300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 39),
  -- Persian - Thunderbolt - TR08
  (53, 5300, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 40),
  -- Persian - Thunder - TR09
  (53, 5300, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 41),
  -- Persian - Amnesia - TR17
  (53, 5300, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 42),
  -- Persian - Substitute - TR20
  (53, 5300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Persian - Endure - TR26
  (53, 5300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Persian - Sleep Talk - TR27
  (53, 5300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Persian - Iron Tail - TR31
  (53, 5300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 46),
  -- Persian - Shadow Ball - TR33
  (53, 5300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 47),
  -- Persian - Uproar - TR35
  (53, 5300, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 48),
  -- Persian - Taunt - TR37
  (53, 5300, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 49),
  -- Persian - Hyper Voice - TR42
  (53, 5300, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 50),
  -- Persian - Dark Pulse - TR58
  (53, 5300, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 51),
  -- Persian - Seed Bomb - TR59
  (53, 5300, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 52),
  -- Persian - Power Gem - TR63
  (53, 5300, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 53),
  -- Persian - Nasty Plot - TR68
  (53, 5300, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 54),
  -- Persian - Gunk Shot - TR73
  (53, 5300, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 55),
  -- Persian - Foul Play - TR81
  (53, 5300, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 56),
  -- Persian - Work Up - TR85
  (53, 5300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 57),
  -- Persian - Play Rough - TR90
  (53, 5300, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 58),
  -- Persian - Throat Chop - TR95
  (53, 5300, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 59),
  -- Psyduck - Scratch - Level 1
  (54, 5400, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Psyduck - Tail Whip - Level 1
  (54, 5400, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Psyduck - Water Gun - Level 3
  (54, 5400, 55, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Psyduck - Confusion - Level 6
  (54, 5400, 93, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Psyduck - Fury Swipes - Level 9
  (54, 5400, 154, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Psyduck - Water Pulse - Level 12
  (54, 5400, 352, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Psyduck - Disable - Level 15
  (54, 5400, 50, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Psyduck - Zen Headbutt - Level 18
  (54, 5400, 428, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Psyduck - Screech - Level 21
  (54, 5400, 103, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Psyduck - Aqua Tail - Level 24
  (54, 5400, 401, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Psyduck - Soak - Level 27
  (54, 5400, 487, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Psyduck - Psych Up - Level 30
  (54, 5400, 244, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Psyduck - Amnesia - Level 34
  (54, 5400, 133, 18, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Psyduck - Hydro Pump - Level 36
  (54, 5400, 56, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Psyduck - Wonder Room - Level 39
  (54, 5400, 472, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Psyduck - Mega Punch - TM00
  (54, 5400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Psyduck - Mega Kick - TM01
  (54, 5400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Psyduck - Pay Day - TM02
  (54, 5400, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 18),
  -- Psyduck - Ice Punch - TM04
  (54, 5400, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Psyduck - Dig - TM15
  (54, 5400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Psyduck - Screech - TM16
  (54, 5400, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 21),
  -- Psyduck - Light Screen - TM17
  (54, 5400, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Psyduck - Rest - TM21
  (54, 5400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Psyduck - Snore - TM24
  (54, 5400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Psyduck - Protect - TM25
  (54, 5400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Psyduck - Icy Wind - TM27
  (54, 5400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 26),
  -- Psyduck - Attract - TM31
  (54, 5400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Psyduck - Rain Dance - TM33
  (54, 5400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Psyduck - Hail - TM35
  (54, 5400, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 29),
  -- Psyduck - Whirlpool - TM36
  (54, 5400, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 30),
  -- Psyduck - Facade - TM39
  (54, 5400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Psyduck - Swift - TM40
  (54, 5400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 32),
  -- Psyduck - Brick Break - TM43
  (54, 5400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 33),
  -- Psyduck - Dive - TM45
  (54, 5400, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 34),
  -- Psyduck - Brine - TM55
  (54, 5400, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 35),
  -- Psyduck - Fling - TM59
  (54, 5400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Psyduck - Shadow Claw - TM65
  (54, 5400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 37),
  -- Psyduck - Wonder Room - TM71
  (54, 5400, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 38),
  -- Psyduck - Round - TM76
  (54, 5400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Psyduck - Body Slam - TR01
  (54, 5400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 40),
  -- Psyduck - Hydro Pump - TR03
  (54, 5400, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 41),
  -- Psyduck - Surf - TR04
  (54, 5400, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 42),
  -- Psyduck - Ice Beam - TR05
  (54, 5400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 43),
  -- Psyduck - Blizzard - TR06
  (54, 5400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 44),
  -- Psyduck - Psychic - TR11
  (54, 5400, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 45),
  -- Psyduck - Waterfall - TR16
  (54, 5400, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 46),
  -- Psyduck - Amnesia - TR17
  (54, 5400, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 47),
  -- Psyduck - Substitute - TR20
  (54, 5400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Psyduck - Psyshock - TR25
  (54, 5400, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 49),
  -- Psyduck - Endure - TR26
  (54, 5400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Psyduck - Sleep Talk - TR27
  (54, 5400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Psyduck - Encore - TR30
  (54, 5400, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 52),
  -- Psyduck - Iron Tail - TR31
  (54, 5400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 53),
  -- Psyduck - Future Sight - TR34
  (54, 5400, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 54),
  -- Psyduck - Calm Mind - TR49
  (54, 5400, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 55),
  -- Psyduck - Zen Headbutt - TR69
  (54, 5400, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 56),
  -- Psyduck - Scald - TR84
  (54, 5400, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 57),
  -- Psyduck - Psybeam - Egg
  (54, 5400, 60, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Psyduck - Hypnosis - Egg
  (54, 5400, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Psyduck - Confuse Ray - Egg
  (54, 5400, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Psyduck - Cross Chop - Egg
  (54, 5400, 238, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Psyduck - Yawn - Egg
  (54, 5400, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Psyduck - Simple Beam - Egg
  (54, 5400, 493, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Psyduck - Clear Smog - Egg
  (54, 5400, 499, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Golduck - Scratch - Level 1
  (55, 5500, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golduck - Tail Whip - Level 1
  (55, 5500, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golduck - Water Gun - Level 1
  (55, 5500, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golduck - Confusion - Level 1
  (55, 5500, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golduck - Aqua Jet - Level 1
  (55, 5500, 453, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Golduck - Fury Swipes - Level 9
  (55, 5500, 154, 18, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Golduck - Water Pulse - Level 12
  (55, 5500, 352, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Golduck - Disable - Level 15
  (55, 5500, 50, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Golduck - Zen Headbutt - Level 18
  (55, 5500, 428, 18, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Golduck - Screech - Level 21
  (55, 5500, 103, 18, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Golduck - Aqua Tail - Level 24
  (55, 5500, 401, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Golduck - Soak - Level 27
  (55, 5500, 487, 18, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Golduck - Psych Up - Level 30
  (55, 5500, 244, 18, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Golduck - Amnesia - Level 36
  (55, 5500, 133, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Golduck - Hydro Pump - Level 40
  (55, 5500, 56, 18, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Golduck - Wonder Room - Level 45
  (55, 5500, 472, 18, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Golduck - Mega Punch - TM00
  (55, 5500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Golduck - Mega Kick - TM01
  (55, 5500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Golduck - Pay Day - TM02
  (55, 5500, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 19),
  -- Golduck - Ice Punch - TM04
  (55, 5500, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 20),
  -- Golduck - Hyper Beam - TM08
  (55, 5500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Golduck - Giga Impact - TM09
  (55, 5500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Golduck - Dig - TM15
  (55, 5500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 23),
  -- Golduck - Screech - TM16
  (55, 5500, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 24),
  -- Golduck - Light Screen - TM17
  (55, 5500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 25),
  -- Golduck - Rest - TM21
  (55, 5500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Golduck - Snore - TM24
  (55, 5500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Golduck - Protect - TM25
  (55, 5500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Golduck - Icy Wind - TM27
  (55, 5500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 29),
  -- Golduck - Attract - TM31
  (55, 5500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Golduck - Rain Dance - TM33
  (55, 5500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Golduck - Hail - TM35
  (55, 5500, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 32),
  -- Golduck - Whirlpool - TM36
  (55, 5500, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 33),
  -- Golduck - Facade - TM39
  (55, 5500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Golduck - Swift - TM40
  (55, 5500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 35),
  -- Golduck - Brick Break - TM43
  (55, 5500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 36),
  -- Golduck - Dive - TM45
  (55, 5500, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 37),
  -- Golduck - Brine - TM55
  (55, 5500, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 38),
  -- Golduck - Fling - TM59
  (55, 5500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 39),
  -- Golduck - Shadow Claw - TM65
  (55, 5500, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 40),
  -- Golduck - Wonder Room - TM71
  (55, 5500, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 41),
  -- Golduck - Low Sweep - TM75
  (55, 5500, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 42),
  -- Golduck - Round - TM76
  (55, 5500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 43),
  -- Golduck - Body Slam - TR01
  (55, 5500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 44),
  -- Golduck - Hydro Pump - TR03
  (55, 5500, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 45),
  -- Golduck - Surf - TR04
  (55, 5500, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 46),
  -- Golduck - Ice Beam - TR05
  (55, 5500, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 47),
  -- Golduck - Blizzard - TR06
  (55, 5500, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 48),
  -- Golduck - Low Kick - TR07
  (55, 5500, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 49),
  -- Golduck - Psychic - TR11
  (55, 5500, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 50),
  -- Golduck - Waterfall - TR16
  (55, 5500, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 51),
  -- Golduck - Amnesia - TR17
  (55, 5500, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 52),
  -- Golduck - Substitute - TR20
  (55, 5500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 53),
  -- Golduck - Psyshock - TR25
  (55, 5500, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 54),
  -- Golduck - Endure - TR26
  (55, 5500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 55),
  -- Golduck - Sleep Talk - TR27
  (55, 5500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 56),
  -- Golduck - Encore - TR30
  (55, 5500, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 57),
  -- Golduck - Iron Tail - TR31
  (55, 5500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 58),
  -- Golduck - Future Sight - TR34
  (55, 5500, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 59),
  -- Golduck - Muddy Water - TR45
  (55, 5500, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 60),
  -- Golduck - Calm Mind - TR49
  (55, 5500, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 61),
  -- Golduck - Focus Blast - TR64
  (55, 5500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 62),
  -- Golduck - Zen Headbutt - TR69
  (55, 5500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 63),
  -- Golduck - Scald - TR84
  (55, 5500, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 64),
  -- Golduck - Liquidation - TR98
  (55, 5500, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 65),
  -- Growlithe - Leer - Level 1
  (58, 5800, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Growlithe - Ember - Level 1
  (58, 5800, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Growlithe - Howl - Level 4
  (58, 5800, 336, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Growlithe - Bite - Level 8
  (58, 5800, 44, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Growlithe - Flame Wheel - Level 12
  (58, 5800, 172, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Growlithe - Helping Hand - Level 16
  (58, 5800, 270, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Growlithe - Agility - Level 20
  (58, 5800, 97, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Growlithe - Fire Fang - Level 24
  (58, 5800, 424, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Growlithe - Retaliate - Level 28
  (58, 5800, 514, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Growlithe - Crunch - Level 32
  (58, 5800, 242, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Growlithe - Take Down - Level 36
  (58, 5800, 36, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Growlithe - Flamethrower - Level 40
  (58, 5800, 53, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Growlithe - Roar - Level 44
  (58, 5800, 46, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Growlithe - Play Rough - Level 48
  (58, 5800, 583, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Growlithe - Reversal - Level 52
  (58, 5800, 179, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Growlithe - Flare Blitz - Level 56
  (58, 5800, 394, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Growlithe - Fire Spin - TM13
  (58, 5800, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 17),
  -- Growlithe - Dig - TM15
  (58, 5800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Growlithe - Safeguard - TM19
  (58, 5800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Growlithe - Rest - TM21
  (58, 5800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Growlithe - Thief - TM23
  (58, 5800, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Growlithe - Snore - TM24
  (58, 5800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Growlithe - Protect - TM25
  (58, 5800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Growlithe - Attract - TM31
  (58, 5800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Growlithe - Sunny Day - TM34
  (58, 5800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Growlithe - Will-O-Wisp - TM38
  (58, 5800, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 26),
  -- Growlithe - Facade - TM39
  (58, 5800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Growlithe - Swift - TM40
  (58, 5800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 28),
  -- Growlithe - Helping Hand - TM41
  (58, 5800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 29),
  -- Growlithe - Fire Fang - TM68
  (58, 5800, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 30),
  -- Growlithe - Round - TM76
  (58, 5800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Growlithe - Retaliate - TM79
  (58, 5800, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 32),
  -- Growlithe - Snarl - TM85
  (58, 5800, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 33),
  -- Growlithe - Body Slam - TR01
  (58, 5800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 34),
  -- Growlithe - Flamethrower - TR02
  (58, 5800, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 35),
  -- Growlithe - Agility - TR12
  (58, 5800, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 36),
  -- Growlithe - Fire Blast - TR15
  (58, 5800, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 37),
  -- Growlithe - Substitute - TR20
  (58, 5800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Growlithe - Reversal - TR21
  (58, 5800, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 39),
  -- Growlithe - Outrage - TR24
  (58, 5800, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 40),
  -- Growlithe - Endure - TR26
  (58, 5800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Growlithe - Sleep Talk - TR27
  (58, 5800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Growlithe - Iron Tail - TR31
  (58, 5800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 43),
  -- Growlithe - Crunch - TR32
  (58, 5800, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 44),
  -- Growlithe - Heat Wave - TR36
  (58, 5800, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 45),
  -- Growlithe - Overheat - TR43
  (58, 5800, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 46),
  -- Growlithe - Close Combat - TR53
  (58, 5800, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 47),
  -- Growlithe - Flare Blitz - TR55
  (58, 5800, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 48),
  -- Growlithe - Wild Charge - TR86
  (58, 5800, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 49),
  -- Growlithe - Play Rough - TR90
  (58, 5800, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 50),
  -- Growlithe - Psychic Fangs - TR97
  (58, 5800, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 51),
  -- Growlithe - Double Kick - Egg
  (58, 5800, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Growlithe - Thrash - Egg
  (58, 5800, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Growlithe - Double-Edge - Egg
  (58, 5800, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Growlithe - Morning Sun - Egg
  (58, 5800, 234, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Growlithe - Covet - Egg
  (58, 5800, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Arcanine - Take Down - Level 1
  (59, 5900, 36, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arcanine - Leer - Level 1
  (59, 5900, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arcanine - Bite - Level 1
  (59, 5900, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arcanine - Roar - Level 1
  (59, 5900, 46, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arcanine - Ember - Level 1
  (59, 5900, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Arcanine - Flamethrower - Level 1
  (59, 5900, 53, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Arcanine - Agility - Level 1
  (59, 5900, 97, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Arcanine - Flame Wheel - Level 1
  (59, 5900, 172, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Arcanine - Reversal - Level 1
  (59, 5900, 179, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Arcanine - Crunch - Level 1
  (59, 5900, 242, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Arcanine - Extreme Speed - Level 1
  (59, 5900, 245, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Arcanine - Helping Hand - Level 1
  (59, 5900, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Arcanine - Howl - Level 1
  (59, 5900, 336, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Arcanine - Flare Blitz - Level 1
  (59, 5900, 394, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Arcanine - Fire Fang - Level 1
  (59, 5900, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Arcanine - Retaliate - Level 1
  (59, 5900, 514, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Arcanine - Play Rough - Level 1
  (59, 5900, 583, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Arcanine - Burn Up - Level 1
  (59, 5900, 682, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Arcanine - Extreme Speed - Evolution
  (59, 5900, 245, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Arcanine - Hyper Beam - TM08
  (59, 5900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Arcanine - Giga Impact - TM09
  (59, 5900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Arcanine - Solar Beam - TM11
  (59, 5900, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Arcanine - Fire Spin - TM13
  (59, 5900, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 23),
  -- Arcanine - Dig - TM15
  (59, 5900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 24),
  -- Arcanine - Safeguard - TM19
  (59, 5900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 25),
  -- Arcanine - Rest - TM21
  (59, 5900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Arcanine - Thief - TM23
  (59, 5900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 27),
  -- Arcanine - Snore - TM24
  (59, 5900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Arcanine - Protect - TM25
  (59, 5900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Arcanine - Scary Face - TM26
  (59, 5900, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 30),
  -- Arcanine - Attract - TM31
  (59, 5900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 31),
  -- Arcanine - Sunny Day - TM34
  (59, 5900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Arcanine - Will-O-Wisp - TM38
  (59, 5900, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 33),
  -- Arcanine - Facade - TM39
  (59, 5900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Arcanine - Swift - TM40
  (59, 5900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 35),
  -- Arcanine - Helping Hand - TM41
  (59, 5900, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 36),
  -- Arcanine - Thunder Fang - TM66
  (59, 5900, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 37),
  -- Arcanine - Fire Fang - TM68
  (59, 5900, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 38),
  -- Arcanine - Round - TM76
  (59, 5900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Arcanine - Retaliate - TM79
  (59, 5900, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 40),
  -- Arcanine - Bulldoze - TM81
  (59, 5900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 41),
  -- Arcanine - Snarl - TM85
  (59, 5900, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 42),
  -- Arcanine - Body Slam - TR01
  (59, 5900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Arcanine - Flamethrower - TR02
  (59, 5900, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 44),
  -- Arcanine - Agility - TR12
  (59, 5900, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 45),
  -- Arcanine - Fire Blast - TR15
  (59, 5900, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 46),
  -- Arcanine - Substitute - TR20
  (59, 5900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Arcanine - Reversal - TR21
  (59, 5900, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 48),
  -- Arcanine - Outrage - TR24
  (59, 5900, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 49),
  -- Arcanine - Endure - TR26
  (59, 5900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Arcanine - Sleep Talk - TR27
  (59, 5900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Arcanine - Iron Tail - TR31
  (59, 5900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 52),
  -- Arcanine - Crunch - TR32
  (59, 5900, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 53),
  -- Arcanine - Heat Wave - TR36
  (59, 5900, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 54),
  -- Arcanine - Hyper Voice - TR42
  (59, 5900, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 55),
  -- Arcanine - Overheat - TR43
  (59, 5900, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 56),
  -- Arcanine - Close Combat - TR53
  (59, 5900, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 57),
  -- Arcanine - Flare Blitz - TR55
  (59, 5900, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 58),
  -- Arcanine - Dragon Pulse - TR62
  (59, 5900, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 59),
  -- Arcanine - Iron Head - TR74
  (59, 5900, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 60),
  -- Arcanine - Wild Charge - TR86
  (59, 5900, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 61),
  -- Arcanine - Play Rough - TR90
  (59, 5900, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 62),
  -- Arcanine - Psychic Fangs - TR97
  (59, 5900, 706, 18, NULL, 4, NULL, NULL, 18004097, NULL, 63),
  -- Poliwag - Water Gun - Level 1
  (60, 6000, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwag - Hypnosis - Level 1
  (60, 6000, 95, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwag - Pound - Level 6
  (60, 6000, 1, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Poliwag - Mud Shot - Level 12
  (60, 6000, 341, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Poliwag - Bubble Beam - Level 18
  (60, 6000, 61, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Poliwag - Rain Dance - Level 24
  (60, 6000, 240, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Poliwag - Body Slam - Level 30
  (60, 6000, 34, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Poliwag - Earth Power - Level 36
  (60, 6000, 414, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Poliwag - Hydro Pump - Level 42
  (60, 6000, 56, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Poliwag - Belly Drum - Level 48
  (60, 6000, 187, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Poliwag - Double-Edge - Level 54
  (60, 6000, 38, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Poliwag - Dig - TM15
  (60, 6000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 12),
  -- Poliwag - Rest - TM21
  (60, 6000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 13),
  -- Poliwag - Thief - TM23
  (60, 6000, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 14),
  -- Poliwag - Snore - TM24
  (60, 6000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 15),
  -- Poliwag - Protect - TM25
  (60, 6000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 16),
  -- Poliwag - Icy Wind - TM27
  (60, 6000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 17),
  -- Poliwag - Attract - TM31
  (60, 6000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 18),
  -- Poliwag - Rain Dance - TM33
  (60, 6000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 19),
  -- Poliwag - Hail - TM35
  (60, 6000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 20),
  -- Poliwag - Whirlpool - TM36
  (60, 6000, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 21),
  -- Poliwag - Facade - TM39
  (60, 6000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Poliwag - Helping Hand - TM41
  (60, 6000, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 23),
  -- Poliwag - Dive - TM45
  (60, 6000, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 24),
  -- Poliwag - Mud Shot - TM53
  (60, 6000, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 25),
  -- Poliwag - Round - TM76
  (60, 6000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 26),
  -- Poliwag - Bulldoze - TM81
  (60, 6000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 27),
  -- Poliwag - Body Slam - TR01
  (60, 6000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 28),
  -- Poliwag - Hydro Pump - TR03
  (60, 6000, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 29),
  -- Poliwag - Surf - TR04
  (60, 6000, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 30),
  -- Poliwag - Ice Beam - TR05
  (60, 6000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 31),
  -- Poliwag - Blizzard - TR06
  (60, 6000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 32),
  -- Poliwag - Psychic - TR11
  (60, 6000, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 33),
  -- Poliwag - Waterfall - TR16
  (60, 6000, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 34),
  -- Poliwag - Substitute - TR20
  (60, 6000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Poliwag - Endure - TR26
  (60, 6000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Poliwag - Sleep Talk - TR27
  (60, 6000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Poliwag - Encore - TR30
  (60, 6000, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 38),
  -- Poliwag - Muddy Water - TR45
  (60, 6000, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 39),
  -- Poliwag - Earth Power - TR67
  (60, 6000, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 40),
  -- Poliwag - Scald - TR84
  (60, 6000, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 41),
  -- Poliwag - Mist - Egg
  (60, 6000, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Poliwag - Haze - Egg
  (60, 6000, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Poliwag - Splash - Egg
  (60, 6000, 150, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Poliwag - Mind Reader - Egg
  (60, 6000, 170, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Poliwag - Endeavor - Egg
  (60, 6000, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Poliwag - Water Pulse - Egg
  (60, 6000, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Poliwhirl - Pound - Level 1
  (61, 6100, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwhirl - Water Gun - Level 1
  (61, 6100, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwhirl - Hypnosis - Level 1
  (61, 6100, 95, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwhirl - Mud Shot - Level 1
  (61, 6100, 341, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Poliwhirl - Bubble Beam - Level 18
  (61, 6100, 61, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Poliwhirl - Rain Dance - Level 24
  (61, 6100, 240, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Poliwhirl - Body Slam - Level 32
  (61, 6100, 34, 18, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Poliwhirl - Earth Power - Level 40
  (61, 6100, 414, 18, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Poliwhirl - Hydro Pump - Level 48
  (61, 6100, 56, 18, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Poliwhirl - Belly Drum - Level 56
  (61, 6100, 187, 18, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Poliwhirl - Double-Edge - Level 66
  (61, 6100, 38, 18, NULL, 1, 66, NULL, NULL, NULL, 11),
  -- Poliwhirl - Mega Punch - TM00
  (61, 6100, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 12),
  -- Poliwhirl - Mega Kick - TM01
  (61, 6100, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 13),
  -- Poliwhirl - Ice Punch - TM04
  (61, 6100, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 14),
  -- Poliwhirl - Dig - TM15
  (61, 6100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 15),
  -- Poliwhirl - Rest - TM21
  (61, 6100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Poliwhirl - Thief - TM23
  (61, 6100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 17),
  -- Poliwhirl - Snore - TM24
  (61, 6100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Poliwhirl - Protect - TM25
  (61, 6100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Poliwhirl - Icy Wind - TM27
  (61, 6100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 20),
  -- Poliwhirl - Attract - TM31
  (61, 6100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Poliwhirl - Rain Dance - TM33
  (61, 6100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Poliwhirl - Hail - TM35
  (61, 6100, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 23),
  -- Poliwhirl - Whirlpool - TM36
  (61, 6100, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 24),
  -- Poliwhirl - Facade - TM39
  (61, 6100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Poliwhirl - Helping Hand - TM41
  (61, 6100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 26),
  -- Poliwhirl - Brick Break - TM43
  (61, 6100, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 27),
  -- Poliwhirl - Dive - TM45
  (61, 6100, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 28),
  -- Poliwhirl - Mud Shot - TM53
  (61, 6100, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 29),
  -- Poliwhirl - Fling - TM59
  (61, 6100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 30),
  -- Poliwhirl - Round - TM76
  (61, 6100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Poliwhirl - Bulldoze - TM81
  (61, 6100, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 32),
  -- Poliwhirl - Body Slam - TR01
  (61, 6100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 33),
  -- Poliwhirl - Hydro Pump - TR03
  (61, 6100, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 34),
  -- Poliwhirl - Surf - TR04
  (61, 6100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 35),
  -- Poliwhirl - Ice Beam - TR05
  (61, 6100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 36),
  -- Poliwhirl - Blizzard - TR06
  (61, 6100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 37),
  -- Poliwhirl - Earthquake - TR10
  (61, 6100, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 38),
  -- Poliwhirl - Psychic - TR11
  (61, 6100, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 39),
  -- Poliwhirl - Metronome - TR14
  (61, 6100, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 40),
  -- Poliwhirl - Waterfall - TR16
  (61, 6100, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 41),
  -- Poliwhirl - Substitute - TR20
  (61, 6100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Poliwhirl - Endure - TR26
  (61, 6100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Poliwhirl - Sleep Talk - TR27
  (61, 6100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Poliwhirl - Encore - TR30
  (61, 6100, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 45),
  -- Poliwhirl - Muddy Water - TR45
  (61, 6100, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 46),
  -- Poliwhirl - Earth Power - TR67
  (61, 6100, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 47),
  -- Poliwhirl - Scald - TR84
  (61, 6100, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 48),
  -- Poliwrath - Pound - Level 1
  (62, 6200, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwrath - Body Slam - Level 1
  (62, 6200, 34, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwrath - Double-Edge - Level 1
  (62, 6200, 38, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwrath - Water Gun - Level 1
  (62, 6200, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Poliwrath - Hydro Pump - Level 1
  (62, 6200, 56, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Poliwrath - Bubble Beam - Level 1
  (62, 6200, 61, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Poliwrath - Submission - Level 1
  (62, 6200, 66, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Poliwrath - Hypnosis - Level 1
  (62, 6200, 95, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Poliwrath - Mind Reader - Level 1
  (62, 6200, 170, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Poliwrath - Belly Drum - Level 1
  (62, 6200, 187, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Poliwrath - Dynamic Punch - Level 1
  (62, 6200, 223, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Poliwrath - Rain Dance - Level 1
  (62, 6200, 240, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Poliwrath - Mud Shot - Level 1
  (62, 6200, 341, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Poliwrath - Earth Power - Level 1
  (62, 6200, 414, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Poliwrath - Circle Throw - Level 1
  (62, 6200, 509, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Poliwrath - Submission - Evolution
  (62, 6200, 66, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Poliwrath - Mega Punch - TM00
  (62, 6200, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Poliwrath - Mega Kick - TM01
  (62, 6200, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Poliwrath - Ice Punch - TM04
  (62, 6200, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Poliwrath - Hyper Beam - TM08
  (62, 6200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Poliwrath - Giga Impact - TM09
  (62, 6200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Poliwrath - Dig - TM15
  (62, 6200, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 22),
  -- Poliwrath - Rest - TM21
  (62, 6200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Poliwrath - Rock Slide - TM22
  (62, 6200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Poliwrath - Thief - TM23
  (62, 6200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 25),
  -- Poliwrath - Snore - TM24
  (62, 6200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Poliwrath - Protect - TM25
  (62, 6200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Poliwrath - Icy Wind - TM27
  (62, 6200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 28),
  -- Poliwrath - Attract - TM31
  (62, 6200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Poliwrath - Rain Dance - TM33
  (62, 6200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Poliwrath - Hail - TM35
  (62, 6200, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 31),
  -- Poliwrath - Whirlpool - TM36
  (62, 6200, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 32),
  -- Poliwrath - Facade - TM39
  (62, 6200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Poliwrath - Helping Hand - TM41
  (62, 6200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 34),
  -- Poliwrath - Brick Break - TM43
  (62, 6200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 35),
  -- Poliwrath - Dive - TM45
  (62, 6200, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 36),
  -- Poliwrath - Rock Tomb - TM48
  (62, 6200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 37),
  -- Poliwrath - Mud Shot - TM53
  (62, 6200, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 38),
  -- Poliwrath - Payback - TM57
  (62, 6200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 39),
  -- Poliwrath - Fling - TM59
  (62, 6200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Poliwrath - Drain Punch - TM63
  (62, 6200, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 41),
  -- Poliwrath - Low Sweep - TM75
  (62, 6200, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 42),
  -- Poliwrath - Round - TM76
  (62, 6200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 43),
  -- Poliwrath - Bulldoze - TM81
  (62, 6200, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 44),
  -- Poliwrath - Body Slam - TR01
  (62, 6200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 45),
  -- Poliwrath - Hydro Pump - TR03
  (62, 6200, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 46),
  -- Poliwrath - Surf - TR04
  (62, 6200, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 47),
  -- Poliwrath - Ice Beam - TR05
  (62, 6200, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 48),
  -- Poliwrath - Blizzard - TR06
  (62, 6200, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 49),
  -- Poliwrath - Earthquake - TR10
  (62, 6200, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 50),
  -- Poliwrath - Psychic - TR11
  (62, 6200, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 51),
  -- Poliwrath - Metronome - TR14
  (62, 6200, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 52),
  -- Poliwrath - Waterfall - TR16
  (62, 6200, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 53),
  -- Poliwrath - Substitute - TR20
  (62, 6200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 54),
  -- Poliwrath - Reversal - TR21
  (62, 6200, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 55),
  -- Poliwrath - Endure - TR26
  (62, 6200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 56),
  -- Poliwrath - Sleep Talk - TR27
  (62, 6200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 57),
  -- Poliwrath - Encore - TR30
  (62, 6200, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 58),
  -- Poliwrath - Superpower - TR39
  (62, 6200, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 59),
  -- Poliwrath - Muddy Water - TR45
  (62, 6200, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 60),
  -- Poliwrath - Bulk Up - TR48
  (62, 6200, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 61),
  -- Poliwrath - Close Combat - TR53
  (62, 6200, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 62),
  -- Poliwrath - Poison Jab - TR57
  (62, 6200, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 63),
  -- Poliwrath - Focus Blast - TR64
  (62, 6200, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 64),
  -- Poliwrath - Earth Power - TR67
  (62, 6200, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 65),
  -- Poliwrath - Scald - TR84
  (62, 6200, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 66),
  -- Poliwrath - Work Up - TR85
  (62, 6200, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 67),
  -- Poliwrath - Darkest Lariat - TR93
  (62, 6200, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 68),
  -- Poliwrath - High Horsepower - TR94
  (62, 6200, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 69),
  -- Poliwrath - Throat Chop - TR95
  (62, 6200, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 70),
  -- Poliwrath - Liquidation - TR98
  (62, 6200, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 71),
  -- Abra - Teleport - Level 1
  (63, 6300, 100, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abra - Mega Punch - TM00
  (63, 6300, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 2),
  -- Abra - Mega Kick - TM01
  (63, 6300, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 3),
  -- Abra - Fire Punch - TM03
  (63, 6300, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 4),
  -- Abra - Ice Punch - TM04
  (63, 6300, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 5),
  -- Abra - Thunder Punch - TM05
  (63, 6300, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 6),
  -- Abra - Thunder Wave - TM14
  (63, 6300, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 7),
  -- Abra - Light Screen - TM17
  (63, 6300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 8),
  -- Abra - Reflect - TM18
  (63, 6300, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 9),
  -- Abra - Safeguard - TM19
  (63, 6300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 10),
  -- Abra - Rest - TM21
  (63, 6300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 11),
  -- Abra - Thief - TM23
  (63, 6300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 12),
  -- Abra - Snore - TM24
  (63, 6300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 13),
  -- Abra - Protect - TM25
  (63, 6300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 14),
  -- Abra - Attract - TM31
  (63, 6300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 15),
  -- Abra - Rain Dance - TM33
  (63, 6300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 16),
  -- Abra - Sunny Day - TM34
  (63, 6300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 17),
  -- Abra - Facade - TM39
  (63, 6300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 18),
  -- Abra - Swift - TM40
  (63, 6300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 19),
  -- Abra - Fling - TM59
  (63, 6300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 20),
  -- Abra - Power Swap - TM60
  (63, 6300, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 21),
  -- Abra - Guard Swap - TM61
  (63, 6300, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 22),
  -- Abra - Speed Swap - TM62
  (63, 6300, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 23),
  -- Abra - Drain Punch - TM63
  (63, 6300, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 24),
  -- Abra - Trick Room - TM70
  (63, 6300, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 25),
  -- Abra - Wonder Room - TM71
  (63, 6300, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 26),
  -- Abra - Magic Room - TM72
  (63, 6300, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 27),
  -- Abra - Round - TM76
  (63, 6300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Abra - Psychic Terrain - TM91
  (63, 6300, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 29),
  -- Abra - Body Slam - TR01
  (63, 6300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 30),
  -- Abra - Psychic - TR11
  (63, 6300, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 31),
  -- Abra - Metronome - TR14
  (63, 6300, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 32),
  -- Abra - Tri Attack - TR19
  (63, 6300, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 33),
  -- Abra - Substitute - TR20
  (63, 6300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 34),
  -- Abra - Psyshock - TR25
  (63, 6300, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 35),
  -- Abra - Endure - TR26
  (63, 6300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Abra - Sleep Talk - TR27
  (63, 6300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Abra - Encore - TR30
  (63, 6300, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 38),
  -- Abra - Iron Tail - TR31
  (63, 6300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 39),
  -- Abra - Shadow Ball - TR33
  (63, 6300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 40),
  -- Abra - Taunt - TR37
  (63, 6300, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 41),
  -- Abra - Trick - TR38
  (63, 6300, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 42),
  -- Abra - Skill Swap - TR40
  (63, 6300, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 43),
  -- Abra - Calm Mind - TR49
  (63, 6300, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 44),
  -- Abra - Energy Ball - TR65
  (63, 6300, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 45),
  -- Abra - Zen Headbutt - TR69
  (63, 6300, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 46),
  -- Abra - Grass Knot - TR77
  (63, 6300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 47),
  -- Abra - Foul Play - TR81
  (63, 6300, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 48),
  -- Abra - Ally Switch - TR83
  (63, 6300, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 49),
  -- Abra - Dazzling Gleam - TR92
  (63, 6300, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 50),
  -- Abra - Confusion - Egg
  (63, 6300, 93, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Abra - Magic Coat - Egg
  (63, 6300, 277, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Abra - Guard Split - Egg
  (63, 6300, 470, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Kadabra - Disable - Level 1
  (64, 6400, 50, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kadabra - Confusion - Level 1
  (64, 6400, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kadabra - Teleport - Level 1
  (64, 6400, 100, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kadabra - Kinesis - Level 1
  (64, 6400, 134, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kadabra - Psybeam - Level 5
  (64, 6400, 60, 18, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Kadabra - Reflect - Level 10
  (64, 6400, 115, 18, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Kadabra - Ally Switch - Level 15
  (64, 6400, 502, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Kadabra - Psycho Cut - Level 20
  (64, 6400, 427, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Kadabra - Recover - Level 25
  (64, 6400, 105, 18, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Kadabra - Psyshock - Level 30
  (64, 6400, 473, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Kadabra - Psychic - Level 35
  (64, 6400, 94, 18, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Kadabra - Role Play - Level 40
  (64, 6400, 272, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Kadabra - Future Sight - Level 45
  (64, 6400, 248, 18, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Kadabra - Calm Mind - Level 50
  (64, 6400, 347, 18, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Kadabra - Confusion - Evolution
  (64, 6400, 93, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Kadabra - Mega Punch - TM00
  (64, 6400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Kadabra - Mega Kick - TM01
  (64, 6400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Kadabra - Fire Punch - TM03
  (64, 6400, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 18),
  -- Kadabra - Ice Punch - TM04
  (64, 6400, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Kadabra - Thunder Punch - TM05
  (64, 6400, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Kadabra - Thunder Wave - TM14
  (64, 6400, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 21),
  -- Kadabra - Light Screen - TM17
  (64, 6400, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Kadabra - Reflect - TM18
  (64, 6400, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 23),
  -- Kadabra - Safeguard - TM19
  (64, 6400, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Kadabra - Rest - TM21
  (64, 6400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Kadabra - Thief - TM23
  (64, 6400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 26),
  -- Kadabra - Snore - TM24
  (64, 6400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Kadabra - Protect - TM25
  (64, 6400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Kadabra - Attract - TM31
  (64, 6400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Kadabra - Rain Dance - TM33
  (64, 6400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Kadabra - Sunny Day - TM34
  (64, 6400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Kadabra - Facade - TM39
  (64, 6400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Kadabra - Swift - TM40
  (64, 6400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Kadabra - Fling - TM59
  (64, 6400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 34),
  -- Kadabra - Power Swap - TM60
  (64, 6400, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 35),
  -- Kadabra - Guard Swap - TM61
  (64, 6400, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 36),
  -- Kadabra - Speed Swap - TM62
  (64, 6400, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 37),
  -- Kadabra - Drain Punch - TM63
  (64, 6400, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 38),
  -- Kadabra - Psycho Cut - TM69
  (64, 6400, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 39),
  -- Kadabra - Trick Room - TM70
  (64, 6400, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 40),
  -- Kadabra - Wonder Room - TM71
  (64, 6400, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 41),
  -- Kadabra - Magic Room - TM72
  (64, 6400, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 42),
  -- Kadabra - Round - TM76
  (64, 6400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 43),
  -- Kadabra - Psychic Terrain - TM91
  (64, 6400, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 44),
  -- Kadabra - Body Slam - TR01
  (64, 6400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 45),
  -- Kadabra - Psychic - TR11
  (64, 6400, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 46),
  -- Kadabra - Metronome - TR14
  (64, 6400, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 47),
  -- Kadabra - Tri Attack - TR19
  (64, 6400, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 48),
  -- Kadabra - Substitute - TR20
  (64, 6400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Kadabra - Psyshock - TR25
  (64, 6400, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 50),
  -- Kadabra - Endure - TR26
  (64, 6400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 51),
  -- Kadabra - Sleep Talk - TR27
  (64, 6400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 52),
  -- Kadabra - Encore - TR30
  (64, 6400, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 53),
  -- Kadabra - Iron Tail - TR31
  (64, 6400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 54),
  -- Kadabra - Shadow Ball - TR33
  (64, 6400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 55),
  -- Kadabra - Future Sight - TR34
  (64, 6400, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 56),
  -- Kadabra - Taunt - TR37
  (64, 6400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 57),
  -- Kadabra - Trick - TR38
  (64, 6400, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 58),
  -- Kadabra - Skill Swap - TR40
  (64, 6400, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 59),
  -- Kadabra - Calm Mind - TR49
  (64, 6400, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 60),
  -- Kadabra - Energy Ball - TR65
  (64, 6400, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 61),
  -- Kadabra - Zen Headbutt - TR69
  (64, 6400, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 62),
  -- Kadabra - Grass Knot - TR77
  (64, 6400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 63),
  -- Kadabra - Foul Play - TR81
  (64, 6400, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 64),
  -- Kadabra - Ally Switch - TR83
  (64, 6400, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 65),
  -- Kadabra - Dazzling Gleam - TR92
  (64, 6400, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 66),
  -- Alakazam - Disable - Level 1
  (65, 6500, 50, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alakazam - Confusion - Level 1
  (65, 6500, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alakazam - Teleport - Level 1
  (65, 6500, 100, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alakazam - Kinesis - Level 1
  (65, 6500, 134, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alakazam - Psybeam - Level 5
  (65, 6500, 60, 18, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Alakazam - Reflect - Level 10
  (65, 6500, 115, 18, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Alakazam - Ally Switch - Level 15
  (65, 6500, 502, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Alakazam - Psycho Cut - Level 20
  (65, 6500, 427, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Alakazam - Recover - Level 25
  (65, 6500, 105, 18, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Alakazam - Psyshock - Level 30
  (65, 6500, 473, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Alakazam - Psychic - Level 35
  (65, 6500, 94, 18, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Alakazam - Role Play - Level 40
  (65, 6500, 272, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Alakazam - Future Sight - Level 45
  (65, 6500, 248, 18, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Alakazam - Calm Mind - Level 50
  (65, 6500, 347, 18, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Alakazam - Mega Punch - TM00
  (65, 6500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Alakazam - Mega Kick - TM01
  (65, 6500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Alakazam - Fire Punch - TM03
  (65, 6500, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 17),
  -- Alakazam - Ice Punch - TM04
  (65, 6500, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 18),
  -- Alakazam - Thunder Punch - TM05
  (65, 6500, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 19),
  -- Alakazam - Hyper Beam - TM08
  (65, 6500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Alakazam - Giga Impact - TM09
  (65, 6500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Alakazam - Thunder Wave - TM14
  (65, 6500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 22),
  -- Alakazam - Light Screen - TM17
  (65, 6500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 23),
  -- Alakazam - Reflect - TM18
  (65, 6500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 24),
  -- Alakazam - Safeguard - TM19
  (65, 6500, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 25),
  -- Alakazam - Rest - TM21
  (65, 6500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Alakazam - Thief - TM23
  (65, 6500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 27),
  -- Alakazam - Snore - TM24
  (65, 6500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Alakazam - Protect - TM25
  (65, 6500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Alakazam - Attract - TM31
  (65, 6500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Alakazam - Rain Dance - TM33
  (65, 6500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Alakazam - Sunny Day - TM34
  (65, 6500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Alakazam - Facade - TM39
  (65, 6500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Alakazam - Swift - TM40
  (65, 6500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 34),
  -- Alakazam - Imprison - TM44
  (65, 6500, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 35),
  -- Alakazam - Fling - TM59
  (65, 6500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Alakazam - Power Swap - TM60
  (65, 6500, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 37),
  -- Alakazam - Guard Swap - TM61
  (65, 6500, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 38),
  -- Alakazam - Speed Swap - TM62
  (65, 6500, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 39),
  -- Alakazam - Drain Punch - TM63
  (65, 6500, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 40),
  -- Alakazam - Psycho Cut - TM69
  (65, 6500, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 41),
  -- Alakazam - Trick Room - TM70
  (65, 6500, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 42),
  -- Alakazam - Wonder Room - TM71
  (65, 6500, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 43),
  -- Alakazam - Magic Room - TM72
  (65, 6500, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 44),
  -- Alakazam - Round - TM76
  (65, 6500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Alakazam - Psychic Terrain - TM91
  (65, 6500, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 46),
  -- Alakazam - Body Slam - TR01
  (65, 6500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 47),
  -- Alakazam - Psychic - TR11
  (65, 6500, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 48),
  -- Alakazam - Metronome - TR14
  (65, 6500, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 49),
  -- Alakazam - Tri Attack - TR19
  (65, 6500, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 50),
  -- Alakazam - Substitute - TR20
  (65, 6500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Alakazam - Psyshock - TR25
  (65, 6500, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 52),
  -- Alakazam - Endure - TR26
  (65, 6500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Alakazam - Sleep Talk - TR27
  (65, 6500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Alakazam - Encore - TR30
  (65, 6500, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 55),
  -- Alakazam - Iron Tail - TR31
  (65, 6500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 56),
  -- Alakazam - Shadow Ball - TR33
  (65, 6500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 57),
  -- Alakazam - Future Sight - TR34
  (65, 6500, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 58),
  -- Alakazam - Taunt - TR37
  (65, 6500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 59),
  -- Alakazam - Trick - TR38
  (65, 6500, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 60),
  -- Alakazam - Skill Swap - TR40
  (65, 6500, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 61),
  -- Alakazam - Calm Mind - TR49
  (65, 6500, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 62),
  -- Alakazam - Focus Blast - TR64
  (65, 6500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 63),
  -- Alakazam - Energy Ball - TR65
  (65, 6500, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 64),
  -- Alakazam - Nasty Plot - TR68
  (65, 6500, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 65),
  -- Alakazam - Zen Headbutt - TR69
  (65, 6500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 66),
  -- Alakazam - Grass Knot - TR77
  (65, 6500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 67),
  -- Alakazam - Foul Play - TR81
  (65, 6500, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 68),
  -- Alakazam - Stored Power - TR82
  (65, 6500, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 69),
  -- Alakazam - Ally Switch - TR83
  (65, 6500, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 70),
  -- Alakazam - Dazzling Gleam - TR92
  (65, 6500, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 71),
  -- Machop - Leer - Level 1
  (66, 6600, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machop - Low Kick - Level 1
  (66, 6600, 67, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machop - Focus Energy - Level 4
  (66, 6600, 116, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Machop - Revenge - Level 8
  (66, 6600, 279, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Machop - Low Sweep - Level 12
  (66, 6600, 490, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Machop - Knock Off - Level 16
  (66, 6600, 282, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Machop - Scary Face - Level 20
  (66, 6600, 184, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Machop - Vital Throw - Level 24
  (66, 6600, 233, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Machop - Strength - Level 29
  (66, 6600, 70, 18, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Machop - Dual Chop - Level 32
  (66, 6600, 530, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Machop - Bulk Up - Level 36
  (66, 6600, 339, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Machop - Seismic Toss - Level 40
  (66, 6600, 69, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Machop - Dynamic Punch - Level 44
  (66, 6600, 223, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Machop - Cross Chop - Level 48
  (66, 6600, 238, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Machop - Double-Edge - Level 52
  (66, 6600, 38, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Machop - Mega Punch - TM00
  (66, 6600, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Machop - Mega Kick - TM01
  (66, 6600, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Machop - Fire Punch - TM03
  (66, 6600, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 18),
  -- Machop - Ice Punch - TM04
  (66, 6600, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Machop - Thunder Punch - TM05
  (66, 6600, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Machop - Dig - TM15
  (66, 6600, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Machop - Light Screen - TM17
  (66, 6600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Machop - Rest - TM21
  (66, 6600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Machop - Rock Slide - TM22
  (66, 6600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Machop - Thief - TM23
  (66, 6600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 25),
  -- Machop - Snore - TM24
  (66, 6600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Machop - Protect - TM25
  (66, 6600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Machop - Scary Face - TM26
  (66, 6600, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 28),
  -- Machop - Attract - TM31
  (66, 6600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Machop - Rain Dance - TM33
  (66, 6600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Machop - Sunny Day - TM34
  (66, 6600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Machop - Facade - TM39
  (66, 6600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Machop - Helping Hand - TM41
  (66, 6600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Machop - Revenge - TM42
  (66, 6600, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 34),
  -- Machop - Brick Break - TM43
  (66, 6600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 35),
  -- Machop - Rock Tomb - TM48
  (66, 6600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 36),
  -- Machop - Payback - TM57
  (66, 6600, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 37),
  -- Machop - Fling - TM59
  (66, 6600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Machop - Low Sweep - TM75
  (66, 6600, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 39),
  -- Machop - Round - TM76
  (66, 6600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Machop - Retaliate - TM79
  (66, 6600, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 41),
  -- Machop - Bulldoze - TM81
  (66, 6600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 42),
  -- Machop - Body Slam - TR01
  (66, 6600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Machop - Flamethrower - TR02
  (66, 6600, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 44),
  -- Machop - Low Kick - TR07
  (66, 6600, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 45),
  -- Machop - Earthquake - TR10
  (66, 6600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 46),
  -- Machop - Focus Energy - TR13
  (66, 6600, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 47),
  -- Machop - Metronome - TR14
  (66, 6600, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 48),
  -- Machop - Fire Blast - TR15
  (66, 6600, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 49),
  -- Machop - Substitute - TR20
  (66, 6600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 50),
  -- Machop - Reversal - TR21
  (66, 6600, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 51),
  -- Machop - Endure - TR26
  (66, 6600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 52),
  -- Machop - Sleep Talk - TR27
  (66, 6600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 53),
  -- Machop - Encore - TR30
  (66, 6600, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 54),
  -- Machop - Superpower - TR39
  (66, 6600, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 55),
  -- Machop - Bulk Up - TR48
  (66, 6600, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 56),
  -- Machop - Close Combat - TR53
  (66, 6600, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 57),
  -- Machop - Poison Jab - TR57
  (66, 6600, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 58),
  -- Machop - Focus Blast - TR64
  (66, 6600, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 59),
  -- Machop - Heavy Slam - TR79
  (66, 6600, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 60),
  -- Machop - Work Up - TR85
  (66, 6600, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 61),
  -- Machop - Submission - Egg
  (66, 6600, 66, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Machop - Counter - Egg
  (66, 6600, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Machop - Tickle - Egg
  (66, 6600, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Machop - Bullet Punch - Egg
  (66, 6600, 418, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Machop - Quick Guard - Egg
  (66, 6600, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Machoke - Leer - Level 1
  (67, 6700, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machoke - Low Kick - Level 1
  (67, 6700, 67, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machoke - Focus Energy - Level 1
  (67, 6700, 116, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machoke - Revenge - Level 1
  (67, 6700, 279, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Machoke - Low Sweep - Level 12
  (67, 6700, 490, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Machoke - Knock Off - Level 16
  (67, 6700, 282, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Machoke - Scary Face - Level 20
  (67, 6700, 184, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Machoke - Vital Throw - Level 24
  (67, 6700, 233, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Machoke - Strength - Level 31
  (67, 6700, 70, 18, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Machoke - Dual Chop - Level 36
  (67, 6700, 530, 18, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Machoke - Bulk Up - Level 42
  (67, 6700, 339, 18, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Machoke - Seismic Toss - Level 48
  (67, 6700, 69, 18, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Machoke - Dynamic Punch - Level 54
  (67, 6700, 223, 18, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Machoke - Cross Chop - Level 60
  (67, 6700, 238, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Machoke - Double-Edge - Level 66
  (67, 6700, 38, 18, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Machoke - Mega Punch - TM00
  (67, 6700, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Machoke - Mega Kick - TM01
  (67, 6700, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Machoke - Fire Punch - TM03
  (67, 6700, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 18),
  -- Machoke - Ice Punch - TM04
  (67, 6700, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Machoke - Thunder Punch - TM05
  (67, 6700, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Machoke - Dig - TM15
  (67, 6700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Machoke - Light Screen - TM17
  (67, 6700, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Machoke - Rest - TM21
  (67, 6700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Machoke - Rock Slide - TM22
  (67, 6700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Machoke - Thief - TM23
  (67, 6700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 25),
  -- Machoke - Snore - TM24
  (67, 6700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Machoke - Protect - TM25
  (67, 6700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Machoke - Scary Face - TM26
  (67, 6700, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 28),
  -- Machoke - Attract - TM31
  (67, 6700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Machoke - Rain Dance - TM33
  (67, 6700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Machoke - Sunny Day - TM34
  (67, 6700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Machoke - Facade - TM39
  (67, 6700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Machoke - Helping Hand - TM41
  (67, 6700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Machoke - Revenge - TM42
  (67, 6700, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 34),
  -- Machoke - Brick Break - TM43
  (67, 6700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 35),
  -- Machoke - Rock Tomb - TM48
  (67, 6700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 36),
  -- Machoke - Payback - TM57
  (67, 6700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 37),
  -- Machoke - Fling - TM59
  (67, 6700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Machoke - Low Sweep - TM75
  (67, 6700, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 39),
  -- Machoke - Round - TM76
  (67, 6700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Machoke - Retaliate - TM79
  (67, 6700, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 41),
  -- Machoke - Bulldoze - TM81
  (67, 6700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 42),
  -- Machoke - Stomping Tantrum - TM98
  (67, 6700, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 43),
  -- Machoke - Body Slam - TR01
  (67, 6700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 44),
  -- Machoke - Flamethrower - TR02
  (67, 6700, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 45),
  -- Machoke - Low Kick - TR07
  (67, 6700, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 46),
  -- Machoke - Earthquake - TR10
  (67, 6700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 47),
  -- Machoke - Focus Energy - TR13
  (67, 6700, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 48),
  -- Machoke - Metronome - TR14
  (67, 6700, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 49),
  -- Machoke - Fire Blast - TR15
  (67, 6700, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 50),
  -- Machoke - Substitute - TR20
  (67, 6700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Machoke - Reversal - TR21
  (67, 6700, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 52),
  -- Machoke - Endure - TR26
  (67, 6700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Machoke - Sleep Talk - TR27
  (67, 6700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Machoke - Encore - TR30
  (67, 6700, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 55),
  -- Machoke - Superpower - TR39
  (67, 6700, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 56),
  -- Machoke - Bulk Up - TR48
  (67, 6700, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 57),
  -- Machoke - Close Combat - TR53
  (67, 6700, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 58),
  -- Machoke - Poison Jab - TR57
  (67, 6700, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 59),
  -- Machoke - Focus Blast - TR64
  (67, 6700, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 60),
  -- Machoke - Heavy Slam - TR79
  (67, 6700, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 61),
  -- Machoke - Work Up - TR85
  (67, 6700, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 62),
  -- Machamp - Leer - Level 1
  (68, 6800, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machamp - Low Kick - Level 1
  (68, 6800, 67, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machamp - Focus Energy - Level 1
  (68, 6800, 116, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machamp - Revenge - Level 1
  (68, 6800, 279, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Machamp - Wide Guard - Level 1
  (68, 6800, 469, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Machamp - Low Sweep - Level 12
  (68, 6800, 490, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Machamp - Knock Off - Level 16
  (68, 6800, 282, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Machamp - Scary Face - Level 20
  (68, 6800, 184, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Machamp - Vital Throw - Level 24
  (68, 6800, 233, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Machamp - Strength - Level 31
  (68, 6800, 70, 18, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Machamp - Dual Chop - Level 36
  (68, 6800, 530, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Machamp - Bulk Up - Level 42
  (68, 6800, 339, 18, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Machamp - Seismic Toss - Level 48
  (68, 6800, 69, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Machamp - Dynamic Punch - Level 54
  (68, 6800, 223, 18, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Machamp - Cross Chop - Level 60
  (68, 6800, 238, 18, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Machamp - Double-Edge - Level 66
  (68, 6800, 38, 18, NULL, 1, 66, NULL, NULL, NULL, 16),
  -- Machamp - Mega Punch - TM00
  (68, 6800, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Machamp - Mega Kick - TM01
  (68, 6800, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Machamp - Fire Punch - TM03
  (68, 6800, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 19),
  -- Machamp - Ice Punch - TM04
  (68, 6800, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 20),
  -- Machamp - Thunder Punch - TM05
  (68, 6800, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 21),
  -- Machamp - Hyper Beam - TM08
  (68, 6800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 22),
  -- Machamp - Giga Impact - TM09
  (68, 6800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 23),
  -- Machamp - Dig - TM15
  (68, 6800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 24),
  -- Machamp - Light Screen - TM17
  (68, 6800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 25),
  -- Machamp - Rest - TM21
  (68, 6800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Machamp - Rock Slide - TM22
  (68, 6800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 27),
  -- Machamp - Thief - TM23
  (68, 6800, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 28),
  -- Machamp - Snore - TM24
  (68, 6800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Machamp - Protect - TM25
  (68, 6800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Machamp - Scary Face - TM26
  (68, 6800, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Machamp - Attract - TM31
  (68, 6800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Machamp - Rain Dance - TM33
  (68, 6800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 33),
  -- Machamp - Sunny Day - TM34
  (68, 6800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 34),
  -- Machamp - Facade - TM39
  (68, 6800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 35),
  -- Machamp - Helping Hand - TM41
  (68, 6800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 36),
  -- Machamp - Revenge - TM42
  (68, 6800, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 37),
  -- Machamp - Brick Break - TM43
  (68, 6800, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 38),
  -- Machamp - Rock Tomb - TM48
  (68, 6800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 39),
  -- Machamp - Rock Blast - TM54
  (68, 6800, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 40),
  -- Machamp - Payback - TM57
  (68, 6800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 41),
  -- Machamp - Assurance - TM58
  (68, 6800, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 42),
  -- Machamp - Fling - TM59
  (68, 6800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 43),
  -- Machamp - Cross Poison - TM73
  (68, 6800, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 44),
  -- Machamp - Low Sweep - TM75
  (68, 6800, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 45),
  -- Machamp - Round - TM76
  (68, 6800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 46),
  -- Machamp - Retaliate - TM79
  (68, 6800, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 47),
  -- Machamp - Bulldoze - TM81
  (68, 6800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 48),
  -- Machamp - Stomping Tantrum - TM98
  (68, 6800, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 49),
  -- Machamp - Body Slam - TR01
  (68, 6800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 50),
  -- Machamp - Flamethrower - TR02
  (68, 6800, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 51),
  -- Machamp - Low Kick - TR07
  (68, 6800, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 52),
  -- Machamp - Earthquake - TR10
  (68, 6800, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 53),
  -- Machamp - Focus Energy - TR13
  (68, 6800, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 54),
  -- Machamp - Metronome - TR14
  (68, 6800, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 55),
  -- Machamp - Fire Blast - TR15
  (68, 6800, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 56),
  -- Machamp - Substitute - TR20
  (68, 6800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 57),
  -- Machamp - Reversal - TR21
  (68, 6800, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 58),
  -- Machamp - Endure - TR26
  (68, 6800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Machamp - Sleep Talk - TR27
  (68, 6800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Machamp - Encore - TR30
  (68, 6800, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 61),
  -- Machamp - Superpower - TR39
  (68, 6800, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 62),
  -- Machamp - Bulk Up - TR48
  (68, 6800, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 63),
  -- Machamp - Close Combat - TR53
  (68, 6800, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 64),
  -- Machamp - Poison Jab - TR57
  (68, 6800, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 65),
  -- Machamp - Focus Blast - TR64
  (68, 6800, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 66),
  -- Machamp - Stone Edge - TR75
  (68, 6800, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 67),
  -- Machamp - Heavy Slam - TR79
  (68, 6800, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 68),
  -- Machamp - Work Up - TR85
  (68, 6800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 69),
  -- Machamp - Darkest Lariat - TR93
  (68, 6800, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 70),
  -- Machamp - High Horsepower - TR94
  (68, 6800, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 71),
  -- Machamp - Throat Chop - TR95
  (68, 6800, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 72),
  -- Tentacool - Poison Sting - Level 1
  (72, 7200, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacool - Water Gun - Level 1
  (72, 7200, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tentacool - Acid - Level 4
  (72, 7200, 51, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Tentacool - Wrap - Level 8
  (72, 7200, 35, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Tentacool - Supersonic - Level 12
  (72, 7200, 48, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Tentacool - Water Pulse - Level 16
  (72, 7200, 352, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Tentacool - Screech - Level 20
  (72, 7200, 103, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Tentacool - Bubble Beam - Level 24
  (72, 7200, 61, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Tentacool - Hex - Level 28
  (72, 7200, 506, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Tentacool - Acid Armor - Level 32
  (72, 7200, 151, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Tentacool - Poison Jab - Level 36
  (72, 7200, 398, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Tentacool - Surf - Level 40
  (72, 7200, 57, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Tentacool - Sludge Wave - Level 44
  (72, 7200, 482, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Tentacool - Hydro Pump - Level 48
  (72, 7200, 56, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Tentacool - Screech - TM16
  (72, 7200, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 15),
  -- Tentacool - Safeguard - TM19
  (72, 7200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 16),
  -- Tentacool - Rest - TM21
  (72, 7200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Tentacool - Thief - TM23
  (72, 7200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Tentacool - Snore - TM24
  (72, 7200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Tentacool - Protect - TM25
  (72, 7200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Tentacool - Icy Wind - TM27
  (72, 7200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 21),
  -- Tentacool - Giga Drain - TM28
  (72, 7200, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 22),
  -- Tentacool - Attract - TM31
  (72, 7200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Tentacool - Rain Dance - TM33
  (72, 7200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Tentacool - Hail - TM35
  (72, 7200, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 25),
  -- Tentacool - Whirlpool - TM36
  (72, 7200, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 26),
  -- Tentacool - Facade - TM39
  (72, 7200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Tentacool - Dive - TM45
  (72, 7200, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 28),
  -- Tentacool - Brine - TM55
  (72, 7200, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 29),
  -- Tentacool - Payback - TM57
  (72, 7200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 30),
  -- Tentacool - Cross Poison - TM73
  (72, 7200, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 31),
  -- Tentacool - Venoshock - TM74
  (72, 7200, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 32),
  -- Tentacool - Round - TM76
  (72, 7200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Tentacool - Hex - TM77
  (72, 7200, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 34),
  -- Tentacool - Brutal Swing - TM97
  (72, 7200, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 35),
  -- Tentacool - Swords Dance - TR00
  (72, 7200, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 36),
  -- Tentacool - Hydro Pump - TR03
  (72, 7200, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 37),
  -- Tentacool - Surf - TR04
  (72, 7200, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 38),
  -- Tentacool - Ice Beam - TR05
  (72, 7200, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 39),
  -- Tentacool - Blizzard - TR06
  (72, 7200, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 40),
  -- Tentacool - Waterfall - TR16
  (72, 7200, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 41),
  -- Tentacool - Substitute - TR20
  (72, 7200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Tentacool - Sludge Bomb - TR22
  (72, 7200, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 43),
  -- Tentacool - Endure - TR26
  (72, 7200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Tentacool - Sleep Talk - TR27
  (72, 7200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Tentacool - Muddy Water - TR45
  (72, 7200, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 46),
  -- Tentacool - Toxic Spikes - TR54
  (72, 7200, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 47),
  -- Tentacool - Poison Jab - TR57
  (72, 7200, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 48),
  -- Tentacool - Sludge Wave - TR78
  (72, 7200, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 49),
  -- Tentacool - Scald - TR84
  (72, 7200, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 50),
  -- Tentacool - Dazzling Gleam - TR92
  (72, 7200, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 51),
  -- Tentacool - Aurora Beam - Egg
  (72, 7200, 62, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tentacool - Confuse Ray - Egg
  (72, 7200, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tentacool - Haze - Egg
  (72, 7200, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tentacool - Rapid Spin - Egg
  (72, 7200, 229, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Tentacool - Mirror Coat - Egg
  (72, 7200, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tentacool - Knock Off - Egg
  (72, 7200, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tentacool - Tickle - Egg
  (72, 7200, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Tentacool - Acupressure - Egg
  (72, 7200, 367, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Tentacool - Aqua Ring - Egg
  (72, 7200, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Tentacruel - Wrap - Level 1
  (73, 7300, 35, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacruel - Poison Sting - Level 1
  (73, 7300, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tentacruel - Acid - Level 1
  (73, 7300, 51, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tentacruel - Water Gun - Level 1
  (73, 7300, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tentacruel - Reflect Type - Level 1
  (73, 7300, 513, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tentacruel - Supersonic - Level 12
  (73, 7300, 48, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Tentacruel - Water Pulse - Level 16
  (73, 7300, 352, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Tentacruel - Screech - Level 20
  (73, 7300, 103, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Tentacruel - Bubble Beam - Level 24
  (73, 7300, 61, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Tentacruel - Hex - Level 28
  (73, 7300, 506, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Tentacruel - Acid Armor - Level 34
  (73, 7300, 151, 18, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Tentacruel - Poison Jab - Level 40
  (73, 7300, 398, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Tentacruel - Surf - Level 46
  (73, 7300, 57, 18, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Tentacruel - Sludge Wave - Level 52
  (73, 7300, 482, 18, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Tentacruel - Hydro Pump - Level 58
  (73, 7300, 56, 18, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Tentacruel - Hyper Beam - TM08
  (73, 7300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Tentacruel - Giga Impact - TM09
  (73, 7300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Tentacruel - Screech - TM16
  (73, 7300, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 18),
  -- Tentacruel - Safeguard - TM19
  (73, 7300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Tentacruel - Rest - TM21
  (73, 7300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Tentacruel - Thief - TM23
  (73, 7300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Tentacruel - Snore - TM24
  (73, 7300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Tentacruel - Protect - TM25
  (73, 7300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Tentacruel - Icy Wind - TM27
  (73, 7300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 24),
  -- Tentacruel - Giga Drain - TM28
  (73, 7300, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 25),
  -- Tentacruel - Attract - TM31
  (73, 7300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Tentacruel - Rain Dance - TM33
  (73, 7300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Tentacruel - Hail - TM35
  (73, 7300, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 28),
  -- Tentacruel - Whirlpool - TM36
  (73, 7300, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 29),
  -- Tentacruel - Facade - TM39
  (73, 7300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Tentacruel - Dive - TM45
  (73, 7300, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 31),
  -- Tentacruel - Brine - TM55
  (73, 7300, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 32),
  -- Tentacruel - Payback - TM57
  (73, 7300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 33),
  -- Tentacruel - Cross Poison - TM73
  (73, 7300, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 34),
  -- Tentacruel - Venoshock - TM74
  (73, 7300, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 35),
  -- Tentacruel - Round - TM76
  (73, 7300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Tentacruel - Hex - TM77
  (73, 7300, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 37),
  -- Tentacruel - Brutal Swing - TM97
  (73, 7300, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 38),
  -- Tentacruel - Swords Dance - TR00
  (73, 7300, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 39),
  -- Tentacruel - Hydro Pump - TR03
  (73, 7300, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 40),
  -- Tentacruel - Surf - TR04
  (73, 7300, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 41),
  -- Tentacruel - Ice Beam - TR05
  (73, 7300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 42),
  -- Tentacruel - Blizzard - TR06
  (73, 7300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 43),
  -- Tentacruel - Waterfall - TR16
  (73, 7300, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 44),
  -- Tentacruel - Substitute - TR20
  (73, 7300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Tentacruel - Sludge Bomb - TR22
  (73, 7300, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 46),
  -- Tentacruel - Endure - TR26
  (73, 7300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Tentacruel - Sleep Talk - TR27
  (73, 7300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Tentacruel - Muddy Water - TR45
  (73, 7300, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 49),
  -- Tentacruel - Toxic Spikes - TR54
  (73, 7300, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 50),
  -- Tentacruel - Poison Jab - TR57
  (73, 7300, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 51),
  -- Tentacruel - Sludge Wave - TR78
  (73, 7300, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 52),
  -- Tentacruel - Scald - TR84
  (73, 7300, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 53),
  -- Tentacruel - Venom Drench - TR91
  (73, 7300, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 54),
  -- Tentacruel - Dazzling Gleam - TR92
  (73, 7300, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 55),
  -- Ponyta - Tackle - Level 1
  (77, 7700, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ponyta - Growl - Level 1
  (77, 7700, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ponyta - Tail Whip - Level 5
  (77, 7700, 39, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Ponyta - Ember - Level 10
  (77, 7700, 52, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Ponyta - Flame Charge - Level 15
  (77, 7700, 488, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Ponyta - Agility - Level 20
  (77, 7700, 97, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Ponyta - Flame Wheel - Level 25
  (77, 7700, 172, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Ponyta - Stomp - Level 30
  (77, 7700, 23, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Ponyta - Fire Spin - Level 35
  (77, 7700, 83, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Ponyta - Take Down - Level 41
  (77, 7700, 36, 18, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Ponyta - Inferno - Level 45
  (77, 7700, 517, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Ponyta - Fire Blast - Level 50
  (77, 7700, 126, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Ponyta - Flare Blitz - Level 55
  (77, 7700, 394, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Ponyta - Solar Beam - TM11
  (77, 7700, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 14),
  -- Ponyta - Solar Blade - TM12
  (77, 7700, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 15),
  -- Ponyta - Fire Spin - TM13
  (77, 7700, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 16),
  -- Ponyta - Rest - TM21
  (77, 7700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Ponyta - Snore - TM24
  (77, 7700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Ponyta - Protect - TM25
  (77, 7700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Ponyta - Charm - TM29
  (77, 7700, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 20),
  -- Ponyta - Attract - TM31
  (77, 7700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Ponyta - Sunny Day - TM34
  (77, 7700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Ponyta - Will-O-Wisp - TM38
  (77, 7700, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 23),
  -- Ponyta - Facade - TM39
  (77, 7700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Ponyta - Swift - TM40
  (77, 7700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 25),
  -- Ponyta - Bounce - TM52
  (77, 7700, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 26),
  -- Ponyta - Round - TM76
  (77, 7700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Ponyta - Mystical Fire - TM92
  (77, 7700, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 28),
  -- Ponyta - Body Slam - TR01
  (77, 7700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 29),
  -- Ponyta - Flamethrower - TR02
  (77, 7700, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 30),
  -- Ponyta - Low Kick - TR07
  (77, 7700, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 31),
  -- Ponyta - Agility - TR12
  (77, 7700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 32),
  -- Ponyta - Fire Blast - TR15
  (77, 7700, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 33),
  -- Ponyta - Substitute - TR20
  (77, 7700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 34),
  -- Ponyta - Endure - TR26
  (77, 7700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Ponyta - Sleep Talk - TR27
  (77, 7700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Ponyta - Iron Tail - TR31
  (77, 7700, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 37),
  -- Ponyta - Heat Wave - TR36
  (77, 7700, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 38),
  -- Ponyta - Overheat - TR43
  (77, 7700, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 39),
  -- Ponyta - Flare Blitz - TR55
  (77, 7700, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 40),
  -- Ponyta - Ally Switch - TR83
  (77, 7700, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 41),
  -- Ponyta - Wild Charge - TR86
  (77, 7700, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 42),
  -- Ponyta - Play Rough - TR90
  (77, 7700, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 43),
  -- Ponyta - High Horsepower - TR94
  (77, 7700, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 44),
  -- Ponyta - Double Kick - Egg
  (77, 7700, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Ponyta - Horn Drill - Egg
  (77, 7700, 32, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Ponyta - Thrash - Egg
  (77, 7700, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ponyta - Double-Edge - Egg
  (77, 7700, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ponyta - Hypnosis - Egg
  (77, 7700, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Ponyta - Morning Sun - Egg
  (77, 7700, 234, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Rapidash - Tackle - Level 1
  (78, 7800, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rapidash - Tail Whip - Level 1
  (78, 7800, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rapidash - Growl - Level 1
  (78, 7800, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rapidash - Ember - Level 1
  (78, 7800, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rapidash - Quick Attack - Level 1
  (78, 7800, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rapidash - Megahorn - Level 1
  (78, 7800, 224, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rapidash - Poison Jab - Level 1
  (78, 7800, 398, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Rapidash - Smart Strike - Level 1
  (78, 7800, 684, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Rapidash - Flame Charge - Level 15
  (78, 7800, 488, 18, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Rapidash - Agility - Level 20
  (78, 7800, 97, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Rapidash - Flame Wheel - Level 25
  (78, 7800, 172, 18, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Rapidash - Stomp - Level 30
  (78, 7800, 23, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Rapidash - Fire Spin - Level 35
  (78, 7800, 83, 18, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Rapidash - Take Down - Level 43
  (78, 7800, 36, 18, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Rapidash - Inferno - Level 49
  (78, 7800, 517, 18, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Rapidash - Fire Blast - Level 56
  (78, 7800, 126, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Rapidash - Flare Blitz - Level 63
  (78, 7800, 394, 18, NULL, 1, 63, NULL, NULL, NULL, 17),
  -- Rapidash - Smart Strike - Evolution
  (78, 7800, 684, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Rapidash - Pay Day - TM02
  (78, 7800, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 19),
  -- Rapidash - Hyper Beam - TM08
  (78, 7800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Rapidash - Giga Impact - TM09
  (78, 7800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Rapidash - Solar Beam - TM11
  (78, 7800, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Rapidash - Solar Blade - TM12
  (78, 7800, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 23),
  -- Rapidash - Fire Spin - TM13
  (78, 7800, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 24),
  -- Rapidash - Rest - TM21
  (78, 7800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Rapidash - Snore - TM24
  (78, 7800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Rapidash - Protect - TM25
  (78, 7800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Rapidash - Charm - TM29
  (78, 7800, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 28),
  -- Rapidash - Attract - TM31
  (78, 7800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Rapidash - Sunny Day - TM34
  (78, 7800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Rapidash - Will-O-Wisp - TM38
  (78, 7800, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 31),
  -- Rapidash - Facade - TM39
  (78, 7800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Rapidash - Swift - TM40
  (78, 7800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Rapidash - Bounce - TM52
  (78, 7800, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 34),
  -- Rapidash - Round - TM76
  (78, 7800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Rapidash - Mystical Fire - TM92
  (78, 7800, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 36),
  -- Rapidash - Smart Strike - TM96
  (78, 7800, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 37),
  -- Rapidash - Swords Dance - TR00
  (78, 7800, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 38),
  -- Rapidash - Body Slam - TR01
  (78, 7800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 39),
  -- Rapidash - Flamethrower - TR02
  (78, 7800, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 40),
  -- Rapidash - Low Kick - TR07
  (78, 7800, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 41),
  -- Rapidash - Agility - TR12
  (78, 7800, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 42),
  -- Rapidash - Fire Blast - TR15
  (78, 7800, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 43),
  -- Rapidash - Substitute - TR20
  (78, 7800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Rapidash - Endure - TR26
  (78, 7800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Rapidash - Sleep Talk - TR27
  (78, 7800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Rapidash - Megahorn - TR28
  (78, 7800, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 47),
  -- Rapidash - Baton Pass - TR29
  (78, 7800, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 48),
  -- Rapidash - Iron Tail - TR31
  (78, 7800, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 49),
  -- Rapidash - Heat Wave - TR36
  (78, 7800, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 50),
  -- Rapidash - Overheat - TR43
  (78, 7800, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 51),
  -- Rapidash - Flare Blitz - TR55
  (78, 7800, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 52),
  -- Rapidash - Poison Jab - TR57
  (78, 7800, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 53),
  -- Rapidash - Ally Switch - TR83
  (78, 7800, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 54),
  -- Rapidash - Wild Charge - TR86
  (78, 7800, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 55),
  -- Rapidash - Drill Run - TR87
  (78, 7800, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 56),
  -- Rapidash - Play Rough - TR90
  (78, 7800, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 57),
  -- Rapidash - High Horsepower - TR94
  (78, 7800, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 58),
  -- Rapidash - Throat Chop - TR95
  (78, 7800, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 59),
  -- Slowpoke - Tackle - Level 1
  (79, 7900, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowpoke - Curse - Level 1
  (79, 7900, 174, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowpoke - Growl - Level 3
  (79, 7900, 45, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Slowpoke - Water Gun - Level 6
  (79, 7900, 55, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Slowpoke - Yawn - Level 9
  (79, 7900, 281, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Slowpoke - Confusion - Level 12
  (79, 7900, 93, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Slowpoke - Disable - Level 15
  (79, 7900, 50, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Slowpoke - Water Pulse - Level 18
  (79, 7900, 352, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Slowpoke - Headbutt - Level 21
  (79, 7900, 29, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Slowpoke - Zen Headbutt - Level 24
  (79, 7900, 428, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Slowpoke - Amnesia - Level 27
  (79, 7900, 133, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Slowpoke - Surf - Level 30
  (79, 7900, 57, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Slowpoke - Slack Off - Level 33
  (79, 7900, 303, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Slowpoke - Psychic - Level 36
  (79, 7900, 94, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Slowpoke - Psych Up - Level 39
  (79, 7900, 244, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Slowpoke - Rain Dance - Level 42
  (79, 7900, 240, 18, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Slowpoke - Heal Pulse - Level 45
  (79, 7900, 505, 18, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Slowpoke - Pay Day - TM02
  (79, 7900, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 18),
  -- Slowpoke - Thunder Wave - TM14
  (79, 7900, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 19),
  -- Slowpoke - Dig - TM15
  (79, 7900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Slowpoke - Light Screen - TM17
  (79, 7900, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 21),
  -- Slowpoke - Safeguard - TM19
  (79, 7900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Slowpoke - Rest - TM21
  (79, 7900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Slowpoke - Snore - TM24
  (79, 7900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Slowpoke - Protect - TM25
  (79, 7900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Slowpoke - Icy Wind - TM27
  (79, 7900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 26),
  -- Slowpoke - Attract - TM31
  (79, 7900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Slowpoke - Rain Dance - TM33
  (79, 7900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Slowpoke - Sunny Day - TM34
  (79, 7900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Slowpoke - Hail - TM35
  (79, 7900, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 30),
  -- Slowpoke - Whirlpool - TM36
  (79, 7900, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 31),
  -- Slowpoke - Facade - TM39
  (79, 7900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Slowpoke - Swift - TM40
  (79, 7900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Slowpoke - Imprison - TM44
  (79, 7900, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 34),
  -- Slowpoke - Dive - TM45
  (79, 7900, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 35),
  -- Slowpoke - Weather Ball - TM46
  (79, 7900, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 36),
  -- Slowpoke - Mud Shot - TM53
  (79, 7900, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 37),
  -- Slowpoke - Brine - TM55
  (79, 7900, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 38),
  -- Slowpoke - Trick Room - TM70
  (79, 7900, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 39),
  -- Slowpoke - Wonder Room - TM71
  (79, 7900, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 40),
  -- Slowpoke - Round - TM76
  (79, 7900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Slowpoke - Bulldoze - TM81
  (79, 7900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 42),
  -- Slowpoke - Psychic Terrain - TM91
  (79, 7900, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 43),
  -- Slowpoke - Body Slam - TR01
  (79, 7900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 44),
  -- Slowpoke - Flamethrower - TR02
  (79, 7900, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 45),
  -- Slowpoke - Hydro Pump - TR03
  (79, 7900, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 46),
  -- Slowpoke - Surf - TR04
  (79, 7900, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 47),
  -- Slowpoke - Ice Beam - TR05
  (79, 7900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 48),
  -- Slowpoke - Blizzard - TR06
  (79, 7900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 49),
  -- Slowpoke - Earthquake - TR10
  (79, 7900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 50),
  -- Slowpoke - Psychic - TR11
  (79, 7900, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 51),
  -- Slowpoke - Fire Blast - TR15
  (79, 7900, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 52),
  -- Slowpoke - Amnesia - TR17
  (79, 7900, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 53),
  -- Slowpoke - Tri Attack - TR19
  (79, 7900, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 54),
  -- Slowpoke - Substitute - TR20
  (79, 7900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 55),
  -- Slowpoke - Psyshock - TR25
  (79, 7900, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 56),
  -- Slowpoke - Endure - TR26
  (79, 7900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 57),
  -- Slowpoke - Sleep Talk - TR27
  (79, 7900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 58),
  -- Slowpoke - Iron Tail - TR31
  (79, 7900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 59),
  -- Slowpoke - Shadow Ball - TR33
  (79, 7900, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 60),
  -- Slowpoke - Future Sight - TR34
  (79, 7900, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 61),
  -- Slowpoke - Trick - TR38
  (79, 7900, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 62),
  -- Slowpoke - Skill Swap - TR40
  (79, 7900, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 63),
  -- Slowpoke - Calm Mind - TR49
  (79, 7900, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 64),
  -- Slowpoke - Zen Headbutt - TR69
  (79, 7900, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 65),
  -- Slowpoke - Grass Knot - TR77
  (79, 7900, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 66),
  -- Slowpoke - Stored Power - TR82
  (79, 7900, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 67),
  -- Slowpoke - Scald - TR84
  (79, 7900, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 68),
  -- Slowpoke - Liquidation - TR98
  (79, 7900, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 69),
  -- Slowpoke - Stomp - Egg
  (79, 7900, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Slowpoke - Belly Drum - Egg
  (79, 7900, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Slowpoke - Block - Egg
  (79, 7900, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Slowpoke - Belch - Egg
  (79, 7900, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Slowbro - Tackle - Level 1
  (80, 8000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowbro - Growl - Level 1
  (80, 8000, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowbro - Water Gun - Level 1
  (80, 8000, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowbro - Withdraw - Level 1
  (80, 8000, 110, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowbro - Curse - Level 1
  (80, 8000, 174, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Slowbro - Yawn - Level 9
  (80, 8000, 281, 18, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Slowbro - Confusion - Level 12
  (80, 8000, 93, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Slowbro - Disable - Level 15
  (80, 8000, 50, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Slowbro - Water Pulse - Level 18
  (80, 8000, 352, 18, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Slowbro - Headbutt - Level 21
  (80, 8000, 29, 18, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Slowbro - Zen Headbutt - Level 24
  (80, 8000, 428, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Slowbro - Amnesia - Level 27
  (80, 8000, 133, 18, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Slowbro - Surf - Level 30
  (80, 8000, 57, 18, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Slowbro - Slack Off - Level 33
  (80, 8000, 303, 18, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Slowbro - Psychic - Level 36
  (80, 8000, 94, 18, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Slowbro - Psych Up - Level 41
  (80, 8000, 244, 18, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Slowbro - Rain Dance - Level 46
  (80, 8000, 240, 18, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Slowbro - Heal Pulse - Level 51
  (80, 8000, 505, 18, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Slowbro - Mega Punch - TM00
  (80, 8000, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 19),
  -- Slowbro - Mega Kick - TM01
  (80, 8000, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 20),
  -- Slowbro - Pay Day - TM02
  (80, 8000, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 21),
  -- Slowbro - Ice Punch - TM04
  (80, 8000, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 22),
  -- Slowbro - Hyper Beam - TM08
  (80, 8000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Slowbro - Giga Impact - TM09
  (80, 8000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Slowbro - Thunder Wave - TM14
  (80, 8000, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 25),
  -- Slowbro - Dig - TM15
  (80, 8000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 26),
  -- Slowbro - Light Screen - TM17
  (80, 8000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 27),
  -- Slowbro - Safeguard - TM19
  (80, 8000, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 28),
  -- Slowbro - Rest - TM21
  (80, 8000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 29),
  -- Slowbro - Snore - TM24
  (80, 8000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 30),
  -- Slowbro - Protect - TM25
  (80, 8000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 31),
  -- Slowbro - Icy Wind - TM27
  (80, 8000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Slowbro - Attract - TM31
  (80, 8000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 33),
  -- Slowbro - Rain Dance - TM33
  (80, 8000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 34),
  -- Slowbro - Sunny Day - TM34
  (80, 8000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Slowbro - Hail - TM35
  (80, 8000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 36),
  -- Slowbro - Whirlpool - TM36
  (80, 8000, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 37),
  -- Slowbro - Facade - TM39
  (80, 8000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Slowbro - Swift - TM40
  (80, 8000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Slowbro - Brick Break - TM43
  (80, 8000, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 40),
  -- Slowbro - Imprison - TM44
  (80, 8000, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 41),
  -- Slowbro - Dive - TM45
  (80, 8000, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 42),
  -- Slowbro - Weather Ball - TM46
  (80, 8000, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 43),
  -- Slowbro - Mud Shot - TM53
  (80, 8000, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 44),
  -- Slowbro - Brine - TM55
  (80, 8000, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 45),
  -- Slowbro - Fling - TM59
  (80, 8000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 46),
  -- Slowbro - Drain Punch - TM63
  (80, 8000, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 47),
  -- Slowbro - Avalanche - TM64
  (80, 8000, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 48),
  -- Slowbro - Trick Room - TM70
  (80, 8000, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 49),
  -- Slowbro - Wonder Room - TM71
  (80, 8000, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 50),
  -- Slowbro - Round - TM76
  (80, 8000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 51),
  -- Slowbro - Bulldoze - TM81
  (80, 8000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 52),
  -- Slowbro - Razor Shell - TM83
  (80, 8000, 534, 18, NULL, 2, NULL, NULL, 18002083, NULL, 53),
  -- Slowbro - Psychic Terrain - TM91
  (80, 8000, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 54),
  -- Slowbro - Body Slam - TR01
  (80, 8000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 55),
  -- Slowbro - Flamethrower - TR02
  (80, 8000, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 56),
  -- Slowbro - Hydro Pump - TR03
  (80, 8000, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 57),
  -- Slowbro - Surf - TR04
  (80, 8000, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 58),
  -- Slowbro - Ice Beam - TR05
  (80, 8000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 59),
  -- Slowbro - Blizzard - TR06
  (80, 8000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 60),
  -- Slowbro - Earthquake - TR10
  (80, 8000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 61),
  -- Slowbro - Psychic - TR11
  (80, 8000, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 62),
  -- Slowbro - Fire Blast - TR15
  (80, 8000, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 63),
  -- Slowbro - Amnesia - TR17
  (80, 8000, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 64),
  -- Slowbro - Tri Attack - TR19
  (80, 8000, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 65),
  -- Slowbro - Substitute - TR20
  (80, 8000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 66),
  -- Slowbro - Psyshock - TR25
  (80, 8000, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 67),
  -- Slowbro - Endure - TR26
  (80, 8000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 68),
  -- Slowbro - Sleep Talk - TR27
  (80, 8000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 69),
  -- Slowbro - Iron Tail - TR31
  (80, 8000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 70),
  -- Slowbro - Shadow Ball - TR33
  (80, 8000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 71),
  -- Slowbro - Future Sight - TR34
  (80, 8000, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 72),
  -- Slowbro - Trick - TR38
  (80, 8000, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 73),
  -- Slowbro - Skill Swap - TR40
  (80, 8000, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 74),
  -- Slowbro - Muddy Water - TR45
  (80, 8000, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 75),
  -- Slowbro - Iron Defense - TR46
  (80, 8000, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 76),
  -- Slowbro - Calm Mind - TR49
  (80, 8000, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 77),
  -- Slowbro - Focus Blast - TR64
  (80, 8000, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 78),
  -- Slowbro - Nasty Plot - TR68
  (80, 8000, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 79),
  -- Slowbro - Zen Headbutt - TR69
  (80, 8000, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 80),
  -- Slowbro - Grass Knot - TR77
  (80, 8000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 81),
  -- Slowbro - Foul Play - TR81
  (80, 8000, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 82),
  -- Slowbro - Stored Power - TR82
  (80, 8000, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 83),
  -- Slowbro - Scald - TR84
  (80, 8000, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 84),
  -- Slowbro - Liquidation - TR98
  (80, 8000, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 85),
  -- Slowbro - Body Press - TR99
  (80, 8000, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 86),
  -- Magnemite - Tackle - Level 1
  (81, 8100, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnemite - Thunder Shock - Level 1
  (81, 8100, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magnemite - Supersonic - Level 4
  (81, 8100, 48, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Magnemite - Thunder Wave - Level 8
  (81, 8100, 86, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Magnemite - Electro Ball - Level 12
  (81, 8100, 486, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Magnemite - Gyro Ball - Level 16
  (81, 8100, 360, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Magnemite - Spark - Level 20
  (81, 8100, 209, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Magnemite - Screech - Level 24
  (81, 8100, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Magnemite - Magnet Rise - Level 28
  (81, 8100, 393, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Magnemite - Flash Cannon - Level 32
  (81, 8100, 430, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Magnemite - Discharge - Level 36
  (81, 8100, 435, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Magnemite - Metal Sound - Level 40
  (81, 8100, 319, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Magnemite - Light Screen - Level 44
  (81, 8100, 113, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Magnemite - Lock-On - Level 48
  (81, 8100, 199, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Magnemite - Zap Cannon - Level 52
  (81, 8100, 192, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Magnemite - Thunder Wave - TM14
  (81, 8100, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Magnemite - Screech - TM16
  (81, 8100, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 17),
  -- Magnemite - Light Screen - TM17
  (81, 8100, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 18),
  -- Magnemite - Reflect - TM18
  (81, 8100, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 19),
  -- Magnemite - Rest - TM21
  (81, 8100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Magnemite - Snore - TM24
  (81, 8100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Magnemite - Protect - TM25
  (81, 8100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Magnemite - Rain Dance - TM33
  (81, 8100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Magnemite - Sunny Day - TM34
  (81, 8100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Magnemite - Facade - TM39
  (81, 8100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Magnemite - Swift - TM40
  (81, 8100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 26),
  -- Magnemite - Round - TM76
  (81, 8100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Magnemite - Volt Switch - TM80
  (81, 8100, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 28),
  -- Magnemite - Electroweb - TM82
  (81, 8100, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 29),
  -- Magnemite - Thunderbolt - TR08
  (81, 8100, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 30),
  -- Magnemite - Thunder - TR09
  (81, 8100, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 31),
  -- Magnemite - Substitute - TR20
  (81, 8100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 32),
  -- Magnemite - Endure - TR26
  (81, 8100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 33),
  -- Magnemite - Sleep Talk - TR27
  (81, 8100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 34),
  -- Magnemite - Iron Defense - TR46
  (81, 8100, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 35),
  -- Magnemite - Gyro Ball - TR52
  (81, 8100, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 36),
  -- Magnemite - Flash Cannon - TR70
  (81, 8100, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 37),
  -- Magnemite - Electro Ball - TR80
  (81, 8100, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 38),
  -- Magnemite - Wild Charge - TR86
  (81, 8100, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 39),
  -- Magnemite - Steel Beam - Tutor
  (81, 8100, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 40),
  -- Magneton - Tackle - Level 1
  (82, 8200, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magneton - Supersonic - Level 1
  (82, 8200, 48, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magneton - Thunder Shock - Level 1
  (82, 8200, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magneton - Thunder Wave - Level 1
  (82, 8200, 86, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magneton - Tri Attack - Level 1
  (82, 8200, 161, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magneton - Electric Terrain - Level 1
  (82, 8200, 604, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Magneton - Electro Ball - Level 12
  (82, 8200, 486, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Magneton - Gyro Ball - Level 16
  (82, 8200, 360, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Magneton - Spark - Level 20
  (82, 8200, 209, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Magneton - Screech - Level 24
  (82, 8200, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Magneton - Magnet Rise - Level 28
  (82, 8200, 393, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Magneton - Flash Cannon - Level 34
  (82, 8200, 430, 18, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Magneton - Discharge - Level 40
  (82, 8200, 435, 18, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Magneton - Metal Sound - Level 46
  (82, 8200, 319, 18, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Magneton - Light Screen - Level 52
  (82, 8200, 113, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Magneton - Lock-On - Level 58
  (82, 8200, 199, 18, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Magneton - Zap Cannon - Level 64
  (82, 8200, 192, 18, NULL, 1, 64, NULL, NULL, NULL, 17),
  -- Magneton - Tri Attack - Evolution
  (82, 8200, 161, 18, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Magneton - Hyper Beam - TM08
  (82, 8200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Magneton - Giga Impact - TM09
  (82, 8200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Magneton - Thunder Wave - TM14
  (82, 8200, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 21),
  -- Magneton - Screech - TM16
  (82, 8200, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 22),
  -- Magneton - Light Screen - TM17
  (82, 8200, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 23),
  -- Magneton - Reflect - TM18
  (82, 8200, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 24),
  -- Magneton - Rest - TM21
  (82, 8200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Magneton - Snore - TM24
  (82, 8200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Magneton - Protect - TM25
  (82, 8200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Magneton - Rain Dance - TM33
  (82, 8200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Magneton - Sunny Day - TM34
  (82, 8200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Magneton - Facade - TM39
  (82, 8200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Magneton - Swift - TM40
  (82, 8200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Magneton - Round - TM76
  (82, 8200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Magneton - Volt Switch - TM80
  (82, 8200, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 33),
  -- Magneton - Electroweb - TM82
  (82, 8200, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 34),
  -- Magneton - Electric Terrain - TM90
  (82, 8200, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 35),
  -- Magneton - Thunderbolt - TR08
  (82, 8200, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 36),
  -- Magneton - Thunder - TR09
  (82, 8200, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 37),
  -- Magneton - Tri Attack - TR19
  (82, 8200, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 38),
  -- Magneton - Substitute - TR20
  (82, 8200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Magneton - Endure - TR26
  (82, 8200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Magneton - Sleep Talk - TR27
  (82, 8200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Magneton - Iron Defense - TR46
  (82, 8200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 42),
  -- Magneton - Gyro Ball - TR52
  (82, 8200, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 43),
  -- Magneton - Flash Cannon - TR70
  (82, 8200, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 44),
  -- Magneton - Electro Ball - TR80
  (82, 8200, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 45),
  -- Magneton - Wild Charge - TR86
  (82, 8200, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 46),
  -- Magneton - Steel Beam - Tutor
  (82, 8200, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 47),
  -- Farfetch'd - Sand Attack - Level 1
  (83, 8300, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Farfetch'd - Peck - Level 1
  (83, 8300, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Farfetch'd - Leer - Level 5
  (83, 8300, 43, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Farfetch'd - Fury Cutter - Level 10
  (83, 8300, 210, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Farfetch'd - Cut - Level 15
  (83, 8300, 15, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Farfetch'd - Aerial Ace - Level 20
  (83, 8300, 332, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Farfetch'd - Air Cutter - Level 25
  (83, 8300, 314, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Farfetch'd - Knock Off - Level 30
  (83, 8300, 282, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Farfetch'd - False Swipe - Level 35
  (83, 8300, 206, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Farfetch'd - Slash - Level 40
  (83, 8300, 163, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Farfetch'd - Swords Dance - Level 45
  (83, 8300, 14, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Farfetch'd - Air Slash - Level 50
  (83, 8300, 403, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Farfetch'd - Leaf Blade - Level 55
  (83, 8300, 348, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Farfetch'd - Agility - Level 60
  (83, 8300, 97, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Farfetch'd - Brave Bird - Level 65
  (83, 8300, 413, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Farfetch'd - Fly - TM06
  (83, 8300, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 16),
  -- Farfetch'd - Solar Blade - TM12
  (83, 8300, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 17),
  -- Farfetch'd - Rest - TM21
  (83, 8300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Farfetch'd - Thief - TM23
  (83, 8300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 19),
  -- Farfetch'd - Snore - TM24
  (83, 8300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Farfetch'd - Protect - TM25
  (83, 8300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Farfetch'd - Steel Wing - TM30
  (83, 8300, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 22),
  -- Farfetch'd - Attract - TM31
  (83, 8300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Farfetch'd - Sunny Day - TM34
  (83, 8300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Farfetch'd - Facade - TM39
  (83, 8300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Farfetch'd - Swift - TM40
  (83, 8300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 26),
  -- Farfetch'd - Helping Hand - TM41
  (83, 8300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 27),
  -- Farfetch'd - Revenge - TM42
  (83, 8300, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 28),
  -- Farfetch'd - U-turn - TM56
  (83, 8300, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 29),
  -- Farfetch'd - Round - TM76
  (83, 8300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 30),
  -- Farfetch'd - Acrobatics - TM78
  (83, 8300, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 31),
  -- Farfetch'd - Retaliate - TM79
  (83, 8300, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 32),
  -- Farfetch'd - False Swipe - TM94
  (83, 8300, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 33),
  -- Farfetch'd - Air Slash - TM95
  (83, 8300, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 34),
  -- Farfetch'd - Brutal Swing - TM97
  (83, 8300, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 35),
  -- Farfetch'd - Swords Dance - TR00
  (83, 8300, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 36),
  -- Farfetch'd - Body Slam - TR01
  (83, 8300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 37),
  -- Farfetch'd - Agility - TR12
  (83, 8300, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 38),
  -- Farfetch'd - Focus Energy - TR13
  (83, 8300, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 39),
  -- Farfetch'd - Substitute - TR20
  (83, 8300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Farfetch'd - Endure - TR26
  (83, 8300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Farfetch'd - Sleep Talk - TR27
  (83, 8300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Farfetch'd - Baton Pass - TR29
  (83, 8300, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 43),
  -- Farfetch'd - Iron Tail - TR31
  (83, 8300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 44),
  -- Farfetch'd - Uproar - TR35
  (83, 8300, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 45),
  -- Farfetch'd - Heat Wave - TR36
  (83, 8300, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 46),
  -- Farfetch'd - Leaf Blade - TR50
  (83, 8300, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 47),
  -- Farfetch'd - Close Combat - TR53
  (83, 8300, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 48),
  -- Farfetch'd - Poison Jab - TR57
  (83, 8300, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 49),
  -- Farfetch'd - Brave Bird - TR66
  (83, 8300, 413, 18, NULL, 4, NULL, NULL, 18004066, NULL, 50),
  -- Farfetch'd - Work Up - TR85
  (83, 8300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 51),
  -- Farfetch'd - Throat Chop - TR95
  (83, 8300, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 52),
  -- Farfetch'd - Gust - Egg
  (83, 8300, 16, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Farfetch'd - Quick Attack - Egg
  (83, 8300, 98, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Farfetch'd - Sky Attack - Egg
  (83, 8300, 143, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Farfetch'd - Curse - Egg
  (83, 8300, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Farfetch'd - Flail - Egg
  (83, 8300, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Farfetch'd - Feather Dance - Egg
  (83, 8300, 297, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Farfetch'd - Covet - Egg
  (83, 8300, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Farfetch'd - Roost - Egg
  (83, 8300, 355, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Farfetch'd - Feint - Egg
  (83, 8300, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Farfetch'd - Night Slash - Egg
  (83, 8300, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Farfetch'd - Simple Beam - Egg
  (83, 8300, 493, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Farfetch'd - Final Gambit - Egg
  (83, 8300, 515, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Farfetch'd - First Impression - Egg
  (83, 8300, 660, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Shellder - Tackle - Level 1
  (90, 9000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shellder - Water Gun - Level 1
  (90, 9000, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shellder - Withdraw - Level 4
  (90, 9000, 110, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Shellder - Ice Shard - Level 8
  (90, 9000, 420, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Shellder - Leer - Level 12
  (90, 9000, 43, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Shellder - Whirlpool - Level 16
  (90, 9000, 250, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Shellder - Supersonic - Level 20
  (90, 9000, 48, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Shellder - Aurora Beam - Level 24
  (90, 9000, 62, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Shellder - Protect - Level 28
  (90, 9000, 182, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Shellder - Razor Shell - Level 32
  (90, 9000, 534, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Shellder - Iron Defense - Level 36
  (90, 9000, 334, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Shellder - Ice Beam - Level 40
  (90, 9000, 58, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Shellder - Shell Smash - Level 44
  (90, 9000, 504, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Shellder - Hydro Pump - Level 48
  (90, 9000, 56, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Shellder - Screech - TM16
  (90, 9000, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 15),
  -- Shellder - Self-Destruct - TM20
  (90, 9000, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 16),
  -- Shellder - Rest - TM21
  (90, 9000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Shellder - Snore - TM24
  (90, 9000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Shellder - Protect - TM25
  (90, 9000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Shellder - Icy Wind - TM27
  (90, 9000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 20),
  -- Shellder - Attract - TM31
  (90, 9000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Shellder - Rain Dance - TM33
  (90, 9000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Shellder - Hail - TM35
  (90, 9000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 23),
  -- Shellder - Whirlpool - TM36
  (90, 9000, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 24),
  -- Shellder - Facade - TM39
  (90, 9000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Shellder - Swift - TM40
  (90, 9000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 26),
  -- Shellder - Dive - TM45
  (90, 9000, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 27),
  -- Shellder - Icicle Spear - TM51
  (90, 9000, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 28),
  -- Shellder - Mud Shot - TM53
  (90, 9000, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 29),
  -- Shellder - Rock Blast - TM54
  (90, 9000, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 30),
  -- Shellder - Brine - TM55
  (90, 9000, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 31),
  -- Shellder - Payback - TM57
  (90, 9000, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 32),
  -- Shellder - Avalanche - TM64
  (90, 9000, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 33),
  -- Shellder - Round - TM76
  (90, 9000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Shellder - Razor Shell - TM83
  (90, 9000, 534, 18, NULL, 2, NULL, NULL, 18002083, NULL, 35),
  -- Shellder - Hydro Pump - TR03
  (90, 9000, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 36),
  -- Shellder - Surf - TR04
  (90, 9000, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 37),
  -- Shellder - Ice Beam - TR05
  (90, 9000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 38),
  -- Shellder - Blizzard - TR06
  (90, 9000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 39),
  -- Shellder - Tri Attack - TR19
  (90, 9000, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 40),
  -- Shellder - Substitute - TR20
  (90, 9000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Shellder - Endure - TR26
  (90, 9000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Shellder - Sleep Talk - TR27
  (90, 9000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Shellder - Iron Defense - TR46
  (90, 9000, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 44),
  -- Shellder - Liquidation - TR98
  (90, 9000, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 45),
  -- Shellder - Bubble Beam - Egg
  (90, 9000, 61, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shellder - Water Pulse - Egg
  (90, 9000, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shellder - Aqua Ring - Egg
  (90, 9000, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Shellder - Life Dew - Egg
  (90, 9000, 791, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cloyster - Tackle - Level 1
  (91, 9100, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cloyster - Leer - Level 1
  (91, 9100, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cloyster - Supersonic - Level 1
  (91, 9100, 48, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cloyster - Water Gun - Level 1
  (91, 9100, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cloyster - Hydro Pump - Level 1
  (91, 9100, 56, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cloyster - Ice Beam - Level 1
  (91, 9100, 58, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Cloyster - Aurora Beam - Level 1
  (91, 9100, 62, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Cloyster - Withdraw - Level 1
  (91, 9100, 110, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Cloyster - Protect - Level 1
  (91, 9100, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Cloyster - Spikes - Level 1
  (91, 9100, 191, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Cloyster - Whirlpool - Level 1
  (91, 9100, 250, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Cloyster - Icicle Spear - Level 1
  (91, 9100, 333, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Cloyster - Iron Defense - Level 1
  (91, 9100, 334, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Cloyster - Toxic Spikes - Level 1
  (91, 9100, 390, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Cloyster - Ice Shard - Level 1
  (91, 9100, 420, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Cloyster - Shell Smash - Level 1
  (91, 9100, 504, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Cloyster - Razor Shell - Level 1
  (91, 9100, 534, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Cloyster - Icicle Crash - Level 1
  (91, 9100, 556, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Cloyster - Icicle Spear - Evolution
  (91, 9100, 333, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Cloyster - Pin Missile - TM07
  (91, 9100, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 20),
  -- Cloyster - Hyper Beam - TM08
  (91, 9100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Cloyster - Giga Impact - TM09
  (91, 9100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Cloyster - Screech - TM16
  (91, 9100, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 23),
  -- Cloyster - Light Screen - TM17
  (91, 9100, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 24),
  -- Cloyster - Self-Destruct - TM20
  (91, 9100, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 25),
  -- Cloyster - Rest - TM21
  (91, 9100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Cloyster - Snore - TM24
  (91, 9100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Cloyster - Protect - TM25
  (91, 9100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Cloyster - Icy Wind - TM27
  (91, 9100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 29),
  -- Cloyster - Attract - TM31
  (91, 9100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Cloyster - Rain Dance - TM33
  (91, 9100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Cloyster - Hail - TM35
  (91, 9100, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 32),
  -- Cloyster - Whirlpool - TM36
  (91, 9100, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 33),
  -- Cloyster - Facade - TM39
  (91, 9100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Cloyster - Swift - TM40
  (91, 9100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 35),
  -- Cloyster - Dive - TM45
  (91, 9100, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 36),
  -- Cloyster - Weather Ball - TM46
  (91, 9100, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 37),
  -- Cloyster - Icicle Spear - TM51
  (91, 9100, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 38),
  -- Cloyster - Mud Shot - TM53
  (91, 9100, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 39),
  -- Cloyster - Rock Blast - TM54
  (91, 9100, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 40),
  -- Cloyster - Brine - TM55
  (91, 9100, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 41),
  -- Cloyster - Payback - TM57
  (91, 9100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 42),
  -- Cloyster - Avalanche - TM64
  (91, 9100, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 43),
  -- Cloyster - Round - TM76
  (91, 9100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 44),
  -- Cloyster - Razor Shell - TM83
  (91, 9100, 534, 18, NULL, 2, NULL, NULL, 18002083, NULL, 45),
  -- Cloyster - Smart Strike - TM96
  (91, 9100, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 46),
  -- Cloyster - Hydro Pump - TR03
  (91, 9100, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 47),
  -- Cloyster - Surf - TR04
  (91, 9100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 48),
  -- Cloyster - Ice Beam - TR05
  (91, 9100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 49),
  -- Cloyster - Blizzard - TR06
  (91, 9100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 50),
  -- Cloyster - Tri Attack - TR19
  (91, 9100, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 51),
  -- Cloyster - Substitute - TR20
  (91, 9100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 52),
  -- Cloyster - Spikes - TR23
  (91, 9100, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 53),
  -- Cloyster - Endure - TR26
  (91, 9100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Cloyster - Sleep Talk - TR27
  (91, 9100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Cloyster - Iron Defense - TR46
  (91, 9100, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 56),
  -- Cloyster - Toxic Spikes - TR54
  (91, 9100, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 57),
  -- Cloyster - Poison Jab - TR57
  (91, 9100, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 58),
  -- Cloyster - Liquidation - TR98
  (91, 9100, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 59),
  -- Gastly - Confuse Ray - Level 1
  (92, 9200, 109, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastly - Lick - Level 1
  (92, 9200, 122, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gastly - Hypnosis - Level 4
  (92, 9200, 95, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Gastly - Mean Look - Level 8
  (92, 9200, 212, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Gastly - Payback - Level 12
  (92, 9200, 371, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gastly - Spite - Level 16
  (92, 9200, 180, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gastly - Curse - Level 20
  (92, 9200, 174, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Gastly - Hex - Level 24
  (92, 9200, 506, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Gastly - Night Shade - Level 28
  (92, 9200, 101, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Gastly - Sucker Punch - Level 32
  (92, 9200, 389, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Gastly - Dark Pulse - Level 36
  (92, 9200, 399, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Gastly - Shadow Ball - Level 40
  (92, 9200, 247, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Gastly - Destiny Bond - Level 44
  (92, 9200, 194, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Gastly - Dream Eater - Level 48
  (92, 9200, 138, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Gastly - Fire Punch - TM03
  (92, 9200, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 15),
  -- Gastly - Ice Punch - TM04
  (92, 9200, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 16),
  -- Gastly - Thunder Punch - TM05
  (92, 9200, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 17),
  -- Gastly - Self-Destruct - TM20
  (92, 9200, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 18),
  -- Gastly - Rest - TM21
  (92, 9200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Gastly - Thief - TM23
  (92, 9200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 20),
  -- Gastly - Snore - TM24
  (92, 9200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Gastly - Protect - TM25
  (92, 9200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Gastly - Scary Face - TM26
  (92, 9200, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 23),
  -- Gastly - Icy Wind - TM27
  (92, 9200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 24),
  -- Gastly - Giga Drain - TM28
  (92, 9200, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 25),
  -- Gastly - Attract - TM31
  (92, 9200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Gastly - Rain Dance - TM33
  (92, 9200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Gastly - Sunny Day - TM34
  (92, 9200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Gastly - Will-O-Wisp - TM38
  (92, 9200, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 29),
  -- Gastly - Facade - TM39
  (92, 9200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Gastly - Payback - TM57
  (92, 9200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Gastly - Trick Room - TM70
  (92, 9200, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 32),
  -- Gastly - Wonder Room - TM71
  (92, 9200, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 33),
  -- Gastly - Venoshock - TM74
  (92, 9200, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 34),
  -- Gastly - Round - TM76
  (92, 9200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Gastly - Hex - TM77
  (92, 9200, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 36),
  -- Gastly - Thunderbolt - TR08
  (92, 9200, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 37),
  -- Gastly - Psychic - TR11
  (92, 9200, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 38),
  -- Gastly - Substitute - TR20
  (92, 9200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Gastly - Sludge Bomb - TR22
  (92, 9200, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 40),
  -- Gastly - Endure - TR26
  (92, 9200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Gastly - Sleep Talk - TR27
  (92, 9200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Gastly - Shadow Ball - TR33
  (92, 9200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 43),
  -- Gastly - Uproar - TR35
  (92, 9200, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 44),
  -- Gastly - Taunt - TR37
  (92, 9200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 45),
  -- Gastly - Trick - TR38
  (92, 9200, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 46),
  -- Gastly - Skill Swap - TR40
  (92, 9200, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 47),
  -- Gastly - Poison Jab - TR57
  (92, 9200, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 48),
  -- Gastly - Dark Pulse - TR58
  (92, 9200, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 49),
  -- Gastly - Energy Ball - TR65
  (92, 9200, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 50),
  -- Gastly - Sludge Wave - TR78
  (92, 9200, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 51),
  -- Gastly - Foul Play - TR81
  (92, 9200, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 52),
  -- Gastly - Ally Switch - TR83
  (92, 9200, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 53),
  -- Gastly - Dazzling Gleam - TR92
  (92, 9200, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 54),
  -- Gastly - Disable - Egg
  (92, 9200, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Gastly - Toxic - Egg
  (92, 9200, 92, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gastly - Haze - Egg
  (92, 9200, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gastly - Smog - Egg
  (92, 9200, 123, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gastly - Perish Song - Egg
  (92, 9200, 195, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Gastly - Grudge - Egg
  (92, 9200, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gastly - Astonish - Egg
  (92, 9200, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gastly - Clear Smog - Egg
  (92, 9200, 499, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Gastly - Reflect Type - Egg
  (92, 9200, 513, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Haunter - Hypnosis - Level 1
  (93, 9300, 95, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Haunter - Confuse Ray - Level 1
  (93, 9300, 109, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Haunter - Lick - Level 1
  (93, 9300, 122, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Haunter - Mean Look - Level 1
  (93, 9300, 212, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Haunter - Shadow Punch - Level 1
  (93, 9300, 325, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Haunter - Payback - Level 12
  (93, 9300, 371, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Haunter - Spite - Level 16
  (93, 9300, 180, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Haunter - Curse - Level 20
  (93, 9300, 174, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Haunter - Hex - Level 24
  (93, 9300, 506, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Haunter - Night Shade - Level 30
  (93, 9300, 101, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Haunter - Sucker Punch - Level 36
  (93, 9300, 389, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Haunter - Dark Pulse - Level 42
  (93, 9300, 399, 18, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Haunter - Shadow Ball - Level 48
  (93, 9300, 247, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Haunter - Destiny Bond - Level 54
  (93, 9300, 194, 18, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Haunter - Dream Eater - Level 60
  (93, 9300, 138, 18, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Haunter - Shadow Punch - Evolution
  (93, 9300, 325, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Haunter - Fire Punch - TM03
  (93, 9300, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 17),
  -- Haunter - Ice Punch - TM04
  (93, 9300, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 18),
  -- Haunter - Thunder Punch - TM05
  (93, 9300, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 19),
  -- Haunter - Self-Destruct - TM20
  (93, 9300, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 20),
  -- Haunter - Rest - TM21
  (93, 9300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Haunter - Thief - TM23
  (93, 9300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 22),
  -- Haunter - Snore - TM24
  (93, 9300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Haunter - Protect - TM25
  (93, 9300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Haunter - Scary Face - TM26
  (93, 9300, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Haunter - Icy Wind - TM27
  (93, 9300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 26),
  -- Haunter - Giga Drain - TM28
  (93, 9300, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 27),
  -- Haunter - Attract - TM31
  (93, 9300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Haunter - Rain Dance - TM33
  (93, 9300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Haunter - Sunny Day - TM34
  (93, 9300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Haunter - Will-O-Wisp - TM38
  (93, 9300, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 31),
  -- Haunter - Facade - TM39
  (93, 9300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Haunter - Payback - TM57
  (93, 9300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 33),
  -- Haunter - Fling - TM59
  (93, 9300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 34),
  -- Haunter - Shadow Claw - TM65
  (93, 9300, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 35),
  -- Haunter - Trick Room - TM70
  (93, 9300, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 36),
  -- Haunter - Wonder Room - TM71
  (93, 9300, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 37),
  -- Haunter - Venoshock - TM74
  (93, 9300, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 38),
  -- Haunter - Round - TM76
  (93, 9300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Haunter - Hex - TM77
  (93, 9300, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 40),
  -- Haunter - Thunderbolt - TR08
  (93, 9300, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 41),
  -- Haunter - Psychic - TR11
  (93, 9300, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 42),
  -- Haunter - Substitute - TR20
  (93, 9300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Haunter - Sludge Bomb - TR22
  (93, 9300, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 44),
  -- Haunter - Endure - TR26
  (93, 9300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Haunter - Sleep Talk - TR27
  (93, 9300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Haunter - Encore - TR30
  (93, 9300, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 47),
  -- Haunter - Shadow Ball - TR33
  (93, 9300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 48),
  -- Haunter - Uproar - TR35
  (93, 9300, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 49),
  -- Haunter - Taunt - TR37
  (93, 9300, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 50),
  -- Haunter - Trick - TR38
  (93, 9300, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 51),
  -- Haunter - Skill Swap - TR40
  (93, 9300, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 52),
  -- Haunter - Poison Jab - TR57
  (93, 9300, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 53),
  -- Haunter - Dark Pulse - TR58
  (93, 9300, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 54),
  -- Haunter - Energy Ball - TR65
  (93, 9300, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 55),
  -- Haunter - Sludge Wave - TR78
  (93, 9300, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 56),
  -- Haunter - Foul Play - TR81
  (93, 9300, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 57),
  -- Haunter - Ally Switch - TR83
  (93, 9300, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 58),
  -- Haunter - Dazzling Gleam - TR92
  (93, 9300, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 59),
  -- Gengar - Hypnosis - Level 1
  (94, 9400, 95, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gengar - Confuse Ray - Level 1
  (94, 9400, 109, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gengar - Lick - Level 1
  (94, 9400, 122, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gengar - Perish Song - Level 1
  (94, 9400, 195, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gengar - Mean Look - Level 1
  (94, 9400, 212, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gengar - Shadow Punch - Level 1
  (94, 9400, 325, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gengar - Reflect Type - Level 1
  (94, 9400, 513, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Gengar - Payback - Level 12
  (94, 9400, 371, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Gengar - Spite - Level 16
  (94, 9400, 180, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gengar - Curse - Level 20
  (94, 9400, 174, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Gengar - Hex - Level 24
  (94, 9400, 506, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Gengar - Night Shade - Level 30
  (94, 9400, 101, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Gengar - Sucker Punch - Level 36
  (94, 9400, 389, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Gengar - Dark Pulse - Level 42
  (94, 9400, 399, 18, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Gengar - Shadow Ball - Level 48
  (94, 9400, 247, 18, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Gengar - Destiny Bond - Level 54
  (94, 9400, 194, 18, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Gengar - Dream Eater - Level 60
  (94, 9400, 138, 18, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Gengar - Mega Punch - TM00
  (94, 9400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 18),
  -- Gengar - Mega Kick - TM01
  (94, 9400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 19),
  -- Gengar - Fire Punch - TM03
  (94, 9400, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 20),
  -- Gengar - Ice Punch - TM04
  (94, 9400, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 21),
  -- Gengar - Thunder Punch - TM05
  (94, 9400, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 22),
  -- Gengar - Hyper Beam - TM08
  (94, 9400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Gengar - Giga Impact - TM09
  (94, 9400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Gengar - Self-Destruct - TM20
  (94, 9400, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 25),
  -- Gengar - Rest - TM21
  (94, 9400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Gengar - Thief - TM23
  (94, 9400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 27),
  -- Gengar - Snore - TM24
  (94, 9400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Gengar - Protect - TM25
  (94, 9400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Gengar - Scary Face - TM26
  (94, 9400, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 30),
  -- Gengar - Icy Wind - TM27
  (94, 9400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 31),
  -- Gengar - Giga Drain - TM28
  (94, 9400, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 32),
  -- Gengar - Attract - TM31
  (94, 9400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 33),
  -- Gengar - Rain Dance - TM33
  (94, 9400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 34),
  -- Gengar - Sunny Day - TM34
  (94, 9400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Gengar - Will-O-Wisp - TM38
  (94, 9400, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 36),
  -- Gengar - Facade - TM39
  (94, 9400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 37),
  -- Gengar - Brick Break - TM43
  (94, 9400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 38),
  -- Gengar - Imprison - TM44
  (94, 9400, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 39),
  -- Gengar - Payback - TM57
  (94, 9400, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 40),
  -- Gengar - Fling - TM59
  (94, 9400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 41),
  -- Gengar - Drain Punch - TM63
  (94, 9400, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 42),
  -- Gengar - Shadow Claw - TM65
  (94, 9400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 43),
  -- Gengar - Trick Room - TM70
  (94, 9400, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 44),
  -- Gengar - Wonder Room - TM71
  (94, 9400, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 45),
  -- Gengar - Venoshock - TM74
  (94, 9400, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 46),
  -- Gengar - Round - TM76
  (94, 9400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Gengar - Hex - TM77
  (94, 9400, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 48),
  -- Gengar - Phantom Force - TM86
  (94, 9400, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 49),
  -- Gengar - Body Slam - TR01
  (94, 9400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 50),
  -- Gengar - Thunderbolt - TR08
  (94, 9400, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 51),
  -- Gengar - Thunder - TR09
  (94, 9400, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 52),
  -- Gengar - Psychic - TR11
  (94, 9400, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 53),
  -- Gengar - Metronome - TR14
  (94, 9400, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 54),
  -- Gengar - Substitute - TR20
  (94, 9400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 55),
  -- Gengar - Sludge Bomb - TR22
  (94, 9400, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 56),
  -- Gengar - Endure - TR26
  (94, 9400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 57),
  -- Gengar - Sleep Talk - TR27
  (94, 9400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 58),
  -- Gengar - Encore - TR30
  (94, 9400, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 59),
  -- Gengar - Shadow Ball - TR33
  (94, 9400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 60),
  -- Gengar - Uproar - TR35
  (94, 9400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 61),
  -- Gengar - Taunt - TR37
  (94, 9400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 62),
  -- Gengar - Trick - TR38
  (94, 9400, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 63),
  -- Gengar - Skill Swap - TR40
  (94, 9400, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 64),
  -- Gengar - Poison Jab - TR57
  (94, 9400, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 65),
  -- Gengar - Dark Pulse - TR58
  (94, 9400, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 66),
  -- Gengar - Focus Blast - TR64
  (94, 9400, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 67),
  -- Gengar - Energy Ball - TR65
  (94, 9400, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 68),
  -- Gengar - Nasty Plot - TR68
  (94, 9400, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 69),
  -- Gengar - Sludge Wave - TR78
  (94, 9400, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 70),
  -- Gengar - Foul Play - TR81
  (94, 9400, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 71),
  -- Gengar - Ally Switch - TR83
  (94, 9400, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 72),
  -- Gengar - Dazzling Gleam - TR92
  (94, 9400, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 73),
  -- Onix - Bind - Level 1
  (95, 9500, 20, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Onix - Tackle - Level 1
  (95, 9500, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Onix - Rock Throw - Level 1
  (95, 9500, 88, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Onix - Harden - Level 1
  (95, 9500, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Onix - Smack Down - Level 4
  (95, 9500, 479, 18, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Onix - Rock Polish - Level 8
  (95, 9500, 397, 18, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Onix - Dragon Breath - Level 12
  (95, 9500, 225, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Onix - Curse - Level 16
  (95, 9500, 174, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Onix - Rock Slide - Level 20
  (95, 9500, 157, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Onix - Screech - Level 24
  (95, 9500, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Onix - Sand Tomb - Level 28
  (95, 9500, 328, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Onix - Stealth Rock - Level 32
  (95, 9500, 446, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Onix - Slam - Level 36
  (95, 9500, 21, 18, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Onix - Sandstorm - Level 40
  (95, 9500, 201, 18, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Onix - Dig - Level 44
  (95, 9500, 91, 18, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Onix - Iron Tail - Level 48
  (95, 9500, 231, 18, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Onix - Stone Edge - Level 52
  (95, 9500, 444, 18, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Onix - Double-Edge - Level 56
  (95, 9500, 38, 18, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Onix - Dig - TM15
  (95, 9500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 19),
  -- Onix - Screech - TM16
  (95, 9500, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 20),
  -- Onix - Self-Destruct - TM20
  (95, 9500, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 21),
  -- Onix - Rest - TM21
  (95, 9500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Onix - Rock Slide - TM22
  (95, 9500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Onix - Snore - TM24
  (95, 9500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Onix - Protect - TM25
  (95, 9500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Onix - Scary Face - TM26
  (95, 9500, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Onix - Attract - TM31
  (95, 9500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Onix - Sandstorm - TM32
  (95, 9500, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 28),
  -- Onix - Sunny Day - TM34
  (95, 9500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Onix - Facade - TM39
  (95, 9500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Onix - Rock Tomb - TM48
  (95, 9500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 31),
  -- Onix - Sand Tomb - TM49
  (95, 9500, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 32),
  -- Onix - Rock Blast - TM54
  (95, 9500, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 33),
  -- Onix - Payback - TM57
  (95, 9500, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 34),
  -- Onix - Round - TM76
  (95, 9500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Onix - Bulldoze - TM81
  (95, 9500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 36),
  -- Onix - Brutal Swing - TM97
  (95, 9500, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 37),
  -- Onix - Stomping Tantrum - TM98
  (95, 9500, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 38),
  -- Onix - Breaking Swipe - TM99
  (95, 9500, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 39),
  -- Onix - Body Slam - TR01
  (95, 9500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 40),
  -- Onix - Earthquake - TR10
  (95, 9500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 41),
  -- Onix - Substitute - TR20
  (95, 9500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Onix - Endure - TR26
  (95, 9500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Onix - Sleep Talk - TR27
  (95, 9500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Onix - Iron Tail - TR31
  (95, 9500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 45),
  -- Onix - Taunt - TR37
  (95, 9500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 46),
  -- Onix - Dragon Dance - TR51
  (95, 9500, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 47),
  -- Onix - Gyro Ball - TR52
  (95, 9500, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 48),
  -- Onix - Dragon Pulse - TR62
  (95, 9500, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 49),
  -- Onix - Earth Power - TR67
  (95, 9500, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 50),
  -- Onix - Flash Cannon - TR70
  (95, 9500, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 51),
  -- Onix - Iron Head - TR74
  (95, 9500, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 52),
  -- Onix - Stone Edge - TR75
  (95, 9500, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 53),
  -- Onix - Stealth Rock - TR76
  (95, 9500, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 54),
  -- Onix - Heavy Slam - TR79
  (95, 9500, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 55),
  -- Onix - Drill Run - TR87
  (95, 9500, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 56),
  -- Onix - High Horsepower - TR94
  (95, 9500, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 57),
  -- Onix - Body Press - TR99
  (95, 9500, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 58),
  -- Onix - Defense Curl - Egg
  (95, 9500, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Onix - Flail - Egg
  (95, 9500, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Onix - Rollout - Egg
  (95, 9500, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Onix - Block - Egg
  (95, 9500, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Onix - Head Smash - Egg
  (95, 9500, 457, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Onix - Wide Guard - Egg
  (95, 9500, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Onix - Dragon Tail - Egg
  (95, 9500, 525, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Krabby - Leer - Level 1
  (98, 9800, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krabby - Water Gun - Level 1
  (98, 9800, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Krabby - Harden - Level 4
  (98, 9800, 106, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Krabby - Metal Claw - Level 8
  (98, 9800, 232, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Krabby - Mud Shot - Level 12
  (98, 9800, 341, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Krabby - Protect - Level 16
  (98, 9800, 182, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Krabby - Bubble Beam - Level 20
  (98, 9800, 61, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Krabby - Stomp - Level 24
  (98, 9800, 23, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Krabby - Flail - Level 29
  (98, 9800, 175, 18, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Krabby - Razor Shell - Level 32
  (98, 9800, 534, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Krabby - Slam - Level 36
  (98, 9800, 21, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Krabby - Swords Dance - Level 40
  (98, 9800, 14, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Krabby - Crabhammer - Level 44
  (98, 9800, 152, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Krabby - Guillotine - Level 48
  (98, 9800, 12, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Krabby - Dig - TM15
  (98, 9800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 15),
  -- Krabby - Rest - TM21
  (98, 9800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Krabby - Rock Slide - TM22
  (98, 9800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 17),
  -- Krabby - Thief - TM23
  (98, 9800, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Krabby - Snore - TM24
  (98, 9800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Krabby - Protect - TM25
  (98, 9800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Krabby - Icy Wind - TM27
  (98, 9800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 21),
  -- Krabby - Attract - TM31
  (98, 9800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Krabby - Rain Dance - TM33
  (98, 9800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Krabby - Hail - TM35
  (98, 9800, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 24),
  -- Krabby - Whirlpool - TM36
  (98, 9800, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 25),
  -- Krabby - Facade - TM39
  (98, 9800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Krabby - Brick Break - TM43
  (98, 9800, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 27),
  -- Krabby - Dive - TM45
  (98, 9800, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 28),
  -- Krabby - Rock Tomb - TM48
  (98, 9800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 29),
  -- Krabby - Mud Shot - TM53
  (98, 9800, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 30),
  -- Krabby - Brine - TM55
  (98, 9800, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 31),
  -- Krabby - Fling - TM59
  (98, 9800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 32),
  -- Krabby - Round - TM76
  (98, 9800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Krabby - Razor Shell - TM83
  (98, 9800, 534, 18, NULL, 2, NULL, NULL, 18002083, NULL, 34),
  -- Krabby - False Swipe - TM94
  (98, 9800, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 35),
  -- Krabby - Swords Dance - TR00
  (98, 9800, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 36),
  -- Krabby - Body Slam - TR01
  (98, 9800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 37),
  -- Krabby - Surf - TR04
  (98, 9800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 38),
  -- Krabby - Ice Beam - TR05
  (98, 9800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 39),
  -- Krabby - Blizzard - TR06
  (98, 9800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 40),
  -- Krabby - Agility - TR12
  (98, 9800, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 41),
  -- Krabby - Amnesia - TR17
  (98, 9800, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 42),
  -- Krabby - Substitute - TR20
  (98, 9800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Krabby - Endure - TR26
  (98, 9800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Krabby - Sleep Talk - TR27
  (98, 9800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Krabby - Superpower - TR39
  (98, 9800, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 46),
  -- Krabby - Iron Defense - TR46
  (98, 9800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 47),
  -- Krabby - X-Scissor - TR60
  (98, 9800, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 48),
  -- Krabby - Ally Switch - TR83
  (98, 9800, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 49),
  -- Krabby - Scald - TR84
  (98, 9800, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 50),
  -- Krabby - Liquidation - TR98
  (98, 9800, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 51),
  -- Krabby - Slash - Egg
  (98, 9800, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Krabby - Ancient Power - Egg
  (98, 9800, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Krabby - Knock Off - Egg
  (98, 9800, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Krabby - Hammer Arm - Egg
  (98, 9800, 359, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Krabby - Night Slash - Egg
  (98, 9800, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Kingler - Leer - Level 1
  (99, 9900, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kingler - Water Gun - Level 1
  (99, 9900, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kingler - Harden - Level 1
  (99, 9900, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kingler - Metal Claw - Level 1
  (99, 9900, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kingler - Hammer Arm - Level 1
  (99, 9900, 359, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kingler - Wide Guard - Level 1
  (99, 9900, 469, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Kingler - Mud Shot - Level 12
  (99, 9900, 341, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Kingler - Protect - Level 16
  (99, 9900, 182, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Kingler - Bubble Beam - Level 20
  (99, 9900, 61, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Kingler - Stomp - Level 24
  (99, 9900, 23, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Kingler - Flail - Level 31
  (99, 9900, 175, 18, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Kingler - Razor Shell - Level 36
  (99, 9900, 534, 18, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Kingler - Slam - Level 42
  (99, 9900, 21, 18, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Kingler - Swords Dance - Level 48
  (99, 9900, 14, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Kingler - Crabhammer - Level 54
  (99, 9900, 152, 18, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Kingler - Guillotine - Level 60
  (99, 9900, 12, 18, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Kingler - Hyper Beam - TM08
  (99, 9900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Kingler - Giga Impact - TM09
  (99, 9900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Kingler - Dig - TM15
  (99, 9900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 19),
  -- Kingler - Rest - TM21
  (99, 9900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Kingler - Rock Slide - TM22
  (99, 9900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Kingler - Thief - TM23
  (99, 9900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 22),
  -- Kingler - Snore - TM24
  (99, 9900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Kingler - Protect - TM25
  (99, 9900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Kingler - Icy Wind - TM27
  (99, 9900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 25),
  -- Kingler - Attract - TM31
  (99, 9900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Kingler - Rain Dance - TM33
  (99, 9900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Kingler - Hail - TM35
  (99, 9900, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 28),
  -- Kingler - Whirlpool - TM36
  (99, 9900, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 29),
  -- Kingler - Facade - TM39
  (99, 9900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Kingler - Brick Break - TM43
  (99, 9900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Kingler - Dive - TM45
  (99, 9900, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 32),
  -- Kingler - Rock Tomb - TM48
  (99, 9900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Kingler - Mud Shot - TM53
  (99, 9900, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 34),
  -- Kingler - Brine - TM55
  (99, 9900, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 35),
  -- Kingler - Fling - TM59
  (99, 9900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Kingler - Round - TM76
  (99, 9900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Kingler - Razor Shell - TM83
  (99, 9900, 534, 18, NULL, 2, NULL, NULL, 18002083, NULL, 38),
  -- Kingler - False Swipe - TM94
  (99, 9900, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 39),
  -- Kingler - Brutal Swing - TM97
  (99, 9900, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 40),
  -- Kingler - Stomping Tantrum - TM98
  (99, 9900, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 41),
  -- Kingler - Swords Dance - TR00
  (99, 9900, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 42),
  -- Kingler - Body Slam - TR01
  (99, 9900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Kingler - Hydro Pump - TR03
  (99, 9900, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 44),
  -- Kingler - Surf - TR04
  (99, 9900, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 45),
  -- Kingler - Ice Beam - TR05
  (99, 9900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 46),
  -- Kingler - Blizzard - TR06
  (99, 9900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 47),
  -- Kingler - Agility - TR12
  (99, 9900, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 48),
  -- Kingler - Amnesia - TR17
  (99, 9900, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 49),
  -- Kingler - Substitute - TR20
  (99, 9900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 50),
  -- Kingler - Endure - TR26
  (99, 9900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 51),
  -- Kingler - Sleep Talk - TR27
  (99, 9900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 52),
  -- Kingler - Superpower - TR39
  (99, 9900, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 53),
  -- Kingler - Iron Defense - TR46
  (99, 9900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 54),
  -- Kingler - X-Scissor - TR60
  (99, 9900, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 55),
  -- Kingler - Ally Switch - TR83
  (99, 9900, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 56),
  -- Kingler - Scald - TR84
  (99, 9900, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 57),
  -- Kingler - High Horsepower - TR94
  (99, 9900, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 58),
  -- Kingler - Liquidation - TR98
  (99, 9900, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 59);

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
  -- Dugtrio - Headbutt - Egg
  (51, 5100, 29, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Dugtrio - Ancient Power - Egg
  (51, 5100, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Dugtrio - Memento - Egg
  (51, 5100, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Dugtrio - Hone Claws - Egg
  (51, 5100, 468, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Dugtrio - Final Gambit - Egg
  (51, 5100, 515, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Persian - Tail Whip - Egg
  (53, 5300, 39, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Persian - Hypnosis - Egg
  (53, 5300, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Persian - Flail - Egg
  (53, 5300, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Persian - Spite - Egg
  (53, 5300, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Persian - Covet - Egg
  (53, 5300, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Persian - Last Resort - Egg
  (53, 5300, 387, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Golduck - Psybeam - Egg
  (55, 5500, 60, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Golduck - Hypnosis - Egg
  (55, 5500, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Golduck - Confuse Ray - Egg
  (55, 5500, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Golduck - Cross Chop - Egg
  (55, 5500, 238, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Golduck - Yawn - Egg
  (55, 5500, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Golduck - Simple Beam - Egg
  (55, 5500, 493, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Golduck - Clear Smog - Egg
  (55, 5500, 499, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Arcanine - Double Kick - Egg
  (59, 5900, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Arcanine - Thrash - Egg
  (59, 5900, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Arcanine - Double-Edge - Egg
  (59, 5900, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Arcanine - Morning Sun - Egg
  (59, 5900, 234, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Arcanine - Covet - Egg
  (59, 5900, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Poliwhirl - Mist - Egg
  (61, 6100, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Poliwhirl - Haze - Egg
  (61, 6100, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Poliwhirl - Splash - Egg
  (61, 6100, 150, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Poliwhirl - Mind Reader - Egg
  (61, 6100, 170, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Poliwhirl - Endeavor - Egg
  (61, 6100, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Poliwhirl - Water Pulse - Egg
  (61, 6100, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Poliwrath - Mist - Egg
  (62, 6200, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Poliwrath - Haze - Egg
  (62, 6200, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Poliwrath - Splash - Egg
  (62, 6200, 150, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Poliwrath - Mind Reader - Egg
  (62, 6200, 170, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Poliwrath - Endeavor - Egg
  (62, 6200, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Poliwrath - Water Pulse - Egg
  (62, 6200, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Kadabra - Confusion - Egg
  (64, 6400, 93, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Kadabra - Magic Coat - Egg
  (64, 6400, 277, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Kadabra - Guard Split - Egg
  (64, 6400, 470, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Alakazam - Confusion - Egg
  (65, 6500, 93, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Alakazam - Magic Coat - Egg
  (65, 6500, 277, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Alakazam - Guard Split - Egg
  (65, 6500, 470, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Machoke - Submission - Egg
  (67, 6700, 66, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Machoke - Counter - Egg
  (67, 6700, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Machoke - Tickle - Egg
  (67, 6700, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Machoke - Bullet Punch - Egg
  (67, 6700, 418, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Machoke - Quick Guard - Egg
  (67, 6700, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Machamp - Submission - Egg
  (68, 6800, 66, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Machamp - Counter - Egg
  (68, 6800, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Machamp - Tickle - Egg
  (68, 6800, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Machamp - Bullet Punch - Egg
  (68, 6800, 418, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Machamp - Quick Guard - Egg
  (68, 6800, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Tentacruel - Aurora Beam - Egg
  (73, 7300, 62, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tentacruel - Confuse Ray - Egg
  (73, 7300, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tentacruel - Haze - Egg
  (73, 7300, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Tentacruel - Rapid Spin - Egg
  (73, 7300, 229, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Tentacruel - Mirror Coat - Egg
  (73, 7300, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Tentacruel - Knock Off - Egg
  (73, 7300, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Tentacruel - Tickle - Egg
  (73, 7300, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Tentacruel - Acupressure - Egg
  (73, 7300, 367, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Tentacruel - Aqua Ring - Egg
  (73, 7300, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Rapidash - Double Kick - Egg
  (78, 7800, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Rapidash - Horn Drill - Egg
  (78, 7800, 32, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Rapidash - Thrash - Egg
  (78, 7800, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Rapidash - Double-Edge - Egg
  (78, 7800, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Rapidash - Hypnosis - Egg
  (78, 7800, 95, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Rapidash - Morning Sun - Egg
  (78, 7800, 234, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Slowbro - Stomp - Egg
  (80, 8000, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Slowbro - Belly Drum - Egg
  (80, 8000, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Slowbro - Block - Egg
  (80, 8000, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Slowbro - Belch - Egg
  (80, 8000, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 90),
  -- Cloyster - Bubble Beam - Egg
  (91, 9100, 61, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Cloyster - Water Pulse - Egg
  (91, 9100, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Cloyster - Aqua Ring - Egg
  (91, 9100, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Cloyster - Life Dew - Egg
  (91, 9100, 791, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Haunter - Disable - Egg
  (93, 9300, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Haunter - Toxic - Egg
  (93, 9300, 92, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Haunter - Haze - Egg
  (93, 9300, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Haunter - Smog - Egg
  (93, 9300, 123, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Haunter - Perish Song - Egg
  (93, 9300, 195, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Haunter - Grudge - Egg
  (93, 9300, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Haunter - Astonish - Egg
  (93, 9300, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Haunter - Clear Smog - Egg
  (93, 9300, 499, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Haunter - Reflect Type - Egg
  (93, 9300, 513, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Gengar - Disable - Egg
  (94, 9400, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Gengar - Toxic - Egg
  (94, 9400, 92, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Gengar - Haze - Egg
  (94, 9400, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Gengar - Smog - Egg
  (94, 9400, 123, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Gengar - Perish Song - Egg
  (94, 9400, 195, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Gengar - Grudge - Egg
  (94, 9400, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Gengar - Astonish - Egg
  (94, 9400, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Gengar - Clear Smog - Egg
  (94, 9400, 499, 18, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Gengar - Reflect Type - Egg
  (94, 9400, 513, 18, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Kingler - Slash - Egg
  (99, 9900, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Kingler - Ancient Power - Egg
  (99, 9900, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Kingler - Knock Off - Egg
  (99, 9900, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Kingler - Hammer Arm - Egg
  (99, 9900, 359, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Kingler - Night Slash - Egg
  (99, 9900, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 64);
