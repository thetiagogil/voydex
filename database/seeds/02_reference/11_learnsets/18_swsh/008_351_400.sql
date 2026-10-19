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
-- Sword / Shield learnsets for default forms, species 351-400.
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
  -- Duskull - Leer - Level 1
  (355, 35500, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Duskull - Astonish - Level 1
  (355, 35500, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Duskull - Disable - Level 4
  (355, 35500, 50, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Duskull - Shadow Sneak - Level 8
  (355, 35500, 425, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Duskull - Confuse Ray - Level 12
  (355, 35500, 109, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Duskull - Night Shade - Level 16
  (355, 35500, 101, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Duskull - Payback - Level 20
  (355, 35500, 371, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Duskull - Will-O-Wisp - Level 24
  (355, 35500, 261, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Duskull - Mean Look - Level 28
  (355, 35500, 212, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Duskull - Hex - Level 32
  (355, 35500, 506, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Duskull - Curse - Level 36
  (355, 35500, 174, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Duskull - Shadow Ball - Level 40
  (355, 35500, 247, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Duskull - Future Sight - Level 44
  (355, 35500, 248, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Duskull - Rest - TM21
  (355, 35500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 14),
  -- Duskull - Thief - TM23
  (355, 35500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 15),
  -- Duskull - Snore - TM24
  (355, 35500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Duskull - Protect - TM25
  (355, 35500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Duskull - Icy Wind - TM27
  (355, 35500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 18),
  -- Duskull - Attract - TM31
  (355, 35500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Duskull - Rain Dance - TM33
  (355, 35500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 20),
  -- Duskull - Sunny Day - TM34
  (355, 35500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 21),
  -- Duskull - Will-O-Wisp - TM38
  (355, 35500, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 22),
  -- Duskull - Facade - TM39
  (355, 35500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Duskull - Helping Hand - TM41
  (355, 35500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 24),
  -- Duskull - Revenge - TM42
  (355, 35500, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 25),
  -- Duskull - Imprison - TM44
  (355, 35500, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 26),
  -- Duskull - Payback - TM57
  (355, 35500, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 27),
  -- Duskull - Fling - TM59
  (355, 35500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 28),
  -- Duskull - Trick Room - TM70
  (355, 35500, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 29),
  -- Duskull - Wonder Room - TM71
  (355, 35500, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 30),
  -- Duskull - Round - TM76
  (355, 35500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Duskull - Hex - TM77
  (355, 35500, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 32),
  -- Duskull - Body Slam - TR01
  (355, 35500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 33),
  -- Duskull - Ice Beam - TR05
  (355, 35500, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 34),
  -- Duskull - Blizzard - TR06
  (355, 35500, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 35),
  -- Duskull - Psychic - TR11
  (355, 35500, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 36),
  -- Duskull - Substitute - TR20
  (355, 35500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Duskull - Endure - TR26
  (355, 35500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Duskull - Sleep Talk - TR27
  (355, 35500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Duskull - Shadow Ball - TR33
  (355, 35500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 40),
  -- Duskull - Future Sight - TR34
  (355, 35500, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 41),
  -- Duskull - Taunt - TR37
  (355, 35500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 42),
  -- Duskull - Trick - TR38
  (355, 35500, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 43),
  -- Duskull - Skill Swap - TR40
  (355, 35500, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 44),
  -- Duskull - Calm Mind - TR49
  (355, 35500, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 45),
  -- Duskull - Dark Pulse - TR58
  (355, 35500, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 46),
  -- Duskull - Ally Switch - TR83
  (355, 35500, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 47),
  -- Duskull - Haze - Egg
  (355, 35500, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Duskull - Pain Split - Egg
  (355, 35500, 220, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Duskull - Memento - Egg
  (355, 35500, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Duskull - Grudge - Egg
  (355, 35500, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Dusclops - Fire Punch - Level 1
  (356, 35600, 7, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dusclops - Ice Punch - Level 1
  (356, 35600, 8, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dusclops - Thunder Punch - Level 1
  (356, 35600, 9, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dusclops - Bind - Level 1
  (356, 35600, 20, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dusclops - Leer - Level 1
  (356, 35600, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dusclops - Disable - Level 1
  (356, 35600, 50, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dusclops - Astonish - Level 1
  (356, 35600, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dusclops - Shadow Punch - Level 1
  (356, 35600, 325, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Dusclops - Gravity - Level 1
  (356, 35600, 356, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Dusclops - Shadow Sneak - Level 1
  (356, 35600, 425, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Dusclops - Confuse Ray - Level 12
  (356, 35600, 109, 18, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Dusclops - Night Shade - Level 16
  (356, 35600, 101, 18, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Dusclops - Payback - Level 20
  (356, 35600, 371, 18, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Dusclops - Will-O-Wisp - Level 24
  (356, 35600, 261, 18, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Dusclops - Mean Look - Level 28
  (356, 35600, 212, 18, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Dusclops - Hex - Level 32
  (356, 35600, 506, 18, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Dusclops - Curse - Level 36
  (356, 35600, 174, 18, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Dusclops - Shadow Ball - Level 42
  (356, 35600, 247, 18, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Dusclops - Future Sight - Level 48
  (356, 35600, 248, 18, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Dusclops - Shadow Punch - Evolution
  (356, 35600, 325, 18, NULL, 7, NULL, NULL, NULL, NULL, 20),
  -- Dusclops - Mega Punch - TM00
  (356, 35600, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 21),
  -- Dusclops - Mega Kick - TM01
  (356, 35600, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 22),
  -- Dusclops - Fire Punch - TM03
  (356, 35600, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 23),
  -- Dusclops - Ice Punch - TM04
  (356, 35600, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 24),
  -- Dusclops - Thunder Punch - TM05
  (356, 35600, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 25),
  -- Dusclops - Hyper Beam - TM08
  (356, 35600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 26),
  -- Dusclops - Giga Impact - TM09
  (356, 35600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 27),
  -- Dusclops - Rest - TM21
  (356, 35600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 28),
  -- Dusclops - Rock Slide - TM22
  (356, 35600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 29),
  -- Dusclops - Thief - TM23
  (356, 35600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 30),
  -- Dusclops - Snore - TM24
  (356, 35600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 31),
  -- Dusclops - Protect - TM25
  (356, 35600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 32),
  -- Dusclops - Icy Wind - TM27
  (356, 35600, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 33),
  -- Dusclops - Attract - TM31
  (356, 35600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 34),
  -- Dusclops - Rain Dance - TM33
  (356, 35600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Dusclops - Sunny Day - TM34
  (356, 35600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Dusclops - Will-O-Wisp - TM38
  (356, 35600, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 37),
  -- Dusclops - Facade - TM39
  (356, 35600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Dusclops - Helping Hand - TM41
  (356, 35600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 39),
  -- Dusclops - Revenge - TM42
  (356, 35600, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 40),
  -- Dusclops - Brick Break - TM43
  (356, 35600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 41),
  -- Dusclops - Imprison - TM44
  (356, 35600, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 42),
  -- Dusclops - Rock Tomb - TM48
  (356, 35600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 43),
  -- Dusclops - Payback - TM57
  (356, 35600, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 44),
  -- Dusclops - Fling - TM59
  (356, 35600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 45),
  -- Dusclops - Trick Room - TM70
  (356, 35600, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 46),
  -- Dusclops - Wonder Room - TM71
  (356, 35600, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 47),
  -- Dusclops - Round - TM76
  (356, 35600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 48),
  -- Dusclops - Hex - TM77
  (356, 35600, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 49),
  -- Dusclops - Bulldoze - TM81
  (356, 35600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 50),
  -- Dusclops - Body Slam - TR01
  (356, 35600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 51),
  -- Dusclops - Ice Beam - TR05
  (356, 35600, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 52),
  -- Dusclops - Blizzard - TR06
  (356, 35600, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 53),
  -- Dusclops - Earthquake - TR10
  (356, 35600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 54),
  -- Dusclops - Psychic - TR11
  (356, 35600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 55),
  -- Dusclops - Metronome - TR14
  (356, 35600, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 56),
  -- Dusclops - Substitute - TR20
  (356, 35600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 57),
  -- Dusclops - Endure - TR26
  (356, 35600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 58),
  -- Dusclops - Sleep Talk - TR27
  (356, 35600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 59),
  -- Dusclops - Shadow Ball - TR33
  (356, 35600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 60),
  -- Dusclops - Future Sight - TR34
  (356, 35600, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 61),
  -- Dusclops - Taunt - TR37
  (356, 35600, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 62),
  -- Dusclops - Trick - TR38
  (356, 35600, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 63),
  -- Dusclops - Skill Swap - TR40
  (356, 35600, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 64),
  -- Dusclops - Calm Mind - TR49
  (356, 35600, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 65),
  -- Dusclops - Dark Pulse - TR58
  (356, 35600, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 66),
  -- Dusclops - Ally Switch - TR83
  (356, 35600, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 67),
  -- Absol - Leer - Level 1
  (359, 35900, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Absol - Quick Attack - Level 1
  (359, 35900, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Absol - Double Team - Level 5
  (359, 35900, 104, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Absol - Knock Off - Level 10
  (359, 35900, 282, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Absol - Detect - Level 15
  (359, 35900, 197, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Absol - Taunt - Level 20
  (359, 35900, 269, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Absol - Slash - Level 25
  (359, 35900, 163, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Absol - Night Slash - Level 30
  (359, 35900, 400, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Absol - Focus Energy - Level 35
  (359, 35900, 116, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Absol - Sucker Punch - Level 40
  (359, 35900, 389, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Absol - Swords Dance - Level 45
  (359, 35900, 14, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Absol - Future Sight - Level 50
  (359, 35900, 248, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Absol - Perish Song - Level 55
  (359, 35900, 195, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Absol - Hyper Beam - TM08
  (359, 35900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 14),
  -- Absol - Giga Impact - TM09
  (359, 35900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 15),
  -- Absol - Thunder Wave - TM14
  (359, 35900, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Absol - Rest - TM21
  (359, 35900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Absol - Rock Slide - TM22
  (359, 35900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 18),
  -- Absol - Thief - TM23
  (359, 35900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 19),
  -- Absol - Snore - TM24
  (359, 35900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Absol - Protect - TM25
  (359, 35900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Absol - Icy Wind - TM27
  (359, 35900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 22),
  -- Absol - Attract - TM31
  (359, 35900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Absol - Sandstorm - TM32
  (359, 35900, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 24),
  -- Absol - Rain Dance - TM33
  (359, 35900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Absol - Sunny Day - TM34
  (359, 35900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Absol - Hail - TM35
  (359, 35900, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 27),
  -- Absol - Will-O-Wisp - TM38
  (359, 35900, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 28),
  -- Absol - Facade - TM39
  (359, 35900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Absol - Swift - TM40
  (359, 35900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 30),
  -- Absol - Rock Tomb - TM48
  (359, 35900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 31),
  -- Absol - Bounce - TM52
  (359, 35900, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 32),
  -- Absol - Payback - TM57
  (359, 35900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 33),
  -- Absol - Assurance - TM58
  (359, 35900, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 34),
  -- Absol - Shadow Claw - TM65
  (359, 35900, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 35),
  -- Absol - Psycho Cut - TM69
  (359, 35900, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 36),
  -- Absol - Round - TM76
  (359, 35900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Absol - Hex - TM77
  (359, 35900, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 38),
  -- Absol - Retaliate - TM79
  (359, 35900, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 39),
  -- Absol - Snarl - TM85
  (359, 35900, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 40),
  -- Absol - False Swipe - TM94
  (359, 35900, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 41),
  -- Absol - Air Slash - TM95
  (359, 35900, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 42),
  -- Absol - Brutal Swing - TM97
  (359, 35900, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 43),
  -- Absol - Swords Dance - TR00
  (359, 35900, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 44),
  -- Absol - Body Slam - TR01
  (359, 35900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 45),
  -- Absol - Flamethrower - TR02
  (359, 35900, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 46),
  -- Absol - Ice Beam - TR05
  (359, 35900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 47),
  -- Absol - Blizzard - TR06
  (359, 35900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 48),
  -- Absol - Thunderbolt - TR08
  (359, 35900, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 49),
  -- Absol - Thunder - TR09
  (359, 35900, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 50),
  -- Absol - Focus Energy - TR13
  (359, 35900, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 51),
  -- Absol - Fire Blast - TR15
  (359, 35900, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 52),
  -- Absol - Substitute - TR20
  (359, 35900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 53),
  -- Absol - Endure - TR26
  (359, 35900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Absol - Sleep Talk - TR27
  (359, 35900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Absol - Megahorn - TR28
  (359, 35900, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 56),
  -- Absol - Baton Pass - TR29
  (359, 35900, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 57),
  -- Absol - Iron Tail - TR31
  (359, 35900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 58),
  -- Absol - Shadow Ball - TR33
  (359, 35900, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 59),
  -- Absol - Future Sight - TR34
  (359, 35900, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 60),
  -- Absol - Taunt - TR37
  (359, 35900, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 61),
  -- Absol - Superpower - TR39
  (359, 35900, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 62),
  -- Absol - Calm Mind - TR49
  (359, 35900, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 63),
  -- Absol - Close Combat - TR53
  (359, 35900, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 64),
  -- Absol - Dark Pulse - TR58
  (359, 35900, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 65),
  -- Absol - X-Scissor - TR60
  (359, 35900, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 66),
  -- Absol - Zen Headbutt - TR69
  (359, 35900, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 67),
  -- Absol - Stone Edge - TR75
  (359, 35900, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 68),
  -- Absol - Foul Play - TR81
  (359, 35900, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 69),
  -- Absol - Play Rough - TR90
  (359, 35900, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 70),
  -- Absol - Throat Chop - TR95
  (359, 35900, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 71),
  -- Absol - Double-Edge - Egg
  (359, 35900, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Absol - Bite - Egg
  (359, 35900, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Absol - Curse - Egg
  (359, 35900, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Absol - Mean Look - Egg
  (359, 35900, 212, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Absol - Magic Coat - Egg
  (359, 35900, 277, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Absol - Feint - Egg
  (359, 35900, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Wynaut - Counter - Level 1
  (360, 36000, 68, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wynaut - Amnesia - Level 1
  (360, 36000, 133, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wynaut - Splash - Level 1
  (360, 36000, 150, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wynaut - Destiny Bond - Level 1
  (360, 36000, 194, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wynaut - Charm - Level 1
  (360, 36000, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Wynaut - Safeguard - Level 1
  (360, 36000, 219, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Wynaut - Encore - Level 1
  (360, 36000, 227, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Wynaut - Mirror Coat - Level 1
  (360, 36000, 243, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Wynaut - Safeguard - TM19
  (360, 36000, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 9),
  -- Wynaut - Charm - TM29
  (360, 36000, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 10),
  -- Wynaut - Amnesia - TR17
  (360, 36000, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 11),
  -- Wynaut - Encore - TR30
  (360, 36000, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 12),
  -- Snorunt - Powder Snow - Level 1
  (361, 36100, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snorunt - Astonish - Level 1
  (361, 36100, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snorunt - Leer - Level 5
  (361, 36100, 43, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Snorunt - Double Team - Level 10
  (361, 36100, 104, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Snorunt - Ice Shard - Level 15
  (361, 36100, 420, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Snorunt - Protect - Level 20
  (361, 36100, 182, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Snorunt - Icy Wind - Level 25
  (361, 36100, 196, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Snorunt - Frost Breath - Level 30
  (361, 36100, 524, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Snorunt - Bite - Level 35
  (361, 36100, 44, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Snorunt - Ice Fang - Level 40
  (361, 36100, 423, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Snorunt - Hail - Level 45
  (361, 36100, 258, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Snorunt - Headbutt - Level 50
  (361, 36100, 29, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Snorunt - Crunch - Level 55
  (361, 36100, 242, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Snorunt - Blizzard - Level 60
  (361, 36100, 59, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Snorunt - Light Screen - TM17
  (361, 36100, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 15),
  -- Snorunt - Safeguard - TM19
  (361, 36100, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 16),
  -- Snorunt - Rest - TM21
  (361, 36100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Snorunt - Snore - TM24
  (361, 36100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Snorunt - Protect - TM25
  (361, 36100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Snorunt - Icy Wind - TM27
  (361, 36100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 20),
  -- Snorunt - Attract - TM31
  (361, 36100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Snorunt - Rain Dance - TM33
  (361, 36100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Snorunt - Hail - TM35
  (361, 36100, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 23),
  -- Snorunt - Facade - TM39
  (361, 36100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Snorunt - Weather Ball - TM46
  (361, 36100, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 25),
  -- Snorunt - Fake Tears - TM47
  (361, 36100, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 26),
  -- Snorunt - Avalanche - TM64
  (361, 36100, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 27),
  -- Snorunt - Ice Fang - TM67
  (361, 36100, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 28),
  -- Snorunt - Round - TM76
  (361, 36100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Snorunt - Hex - TM77
  (361, 36100, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 30),
  -- Snorunt - Body Slam - TR01
  (361, 36100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 31),
  -- Snorunt - Ice Beam - TR05
  (361, 36100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 32),
  -- Snorunt - Blizzard - TR06
  (361, 36100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 33),
  -- Snorunt - Substitute - TR20
  (361, 36100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 34),
  -- Snorunt - Spikes - TR23
  (361, 36100, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 35),
  -- Snorunt - Endure - TR26
  (361, 36100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Snorunt - Sleep Talk - TR27
  (361, 36100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Snorunt - Crunch - TR32
  (361, 36100, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 38),
  -- Snorunt - Shadow Ball - TR33
  (361, 36100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 39),
  -- Snorunt - Disable - Egg
  (361, 36100, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Snorunt - Rollout - Egg
  (361, 36100, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Snorunt - Block - Egg
  (361, 36100, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Snorunt - Switcheroo - Egg
  (361, 36100, 415, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Snorunt - Icicle Crash - Egg
  (361, 36100, 556, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Glalie - Leer - Level 1
  (362, 36200, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glalie - Double Team - Level 1
  (362, 36200, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glalie - Powder Snow - Level 1
  (362, 36200, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Glalie - Astonish - Level 1
  (362, 36200, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Glalie - Sheer Cold - Level 1
  (362, 36200, 329, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Glalie - Freeze-Dry - Level 1
  (362, 36200, 573, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Glalie - Ice Shard - Level 15
  (362, 36200, 420, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Glalie - Protect - Level 20
  (362, 36200, 182, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Glalie - Icy Wind - Level 25
  (362, 36200, 196, 18, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Glalie - Frost Breath - Level 30
  (362, 36200, 524, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Glalie - Bite - Level 35
  (362, 36200, 44, 18, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Glalie - Ice Fang - Level 40
  (362, 36200, 423, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Glalie - Hail - Level 47
  (362, 36200, 258, 18, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Glalie - Headbutt - Level 54
  (362, 36200, 29, 18, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Glalie - Crunch - Level 61
  (362, 36200, 242, 18, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Glalie - Blizzard - Level 68
  (362, 36200, 59, 18, NULL, 1, 68, NULL, NULL, NULL, 16),
  -- Glalie - Freeze-Dry - Evolution
  (362, 36200, 573, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Glalie - Hyper Beam - TM08
  (362, 36200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Glalie - Giga Impact - TM09
  (362, 36200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Glalie - Light Screen - TM17
  (362, 36200, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Glalie - Safeguard - TM19
  (362, 36200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 21),
  -- Glalie - Self-Destruct - TM20
  (362, 36200, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 22),
  -- Glalie - Rest - TM21
  (362, 36200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Glalie - Snore - TM24
  (362, 36200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Glalie - Protect - TM25
  (362, 36200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Glalie - Scary Face - TM26
  (362, 36200, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Glalie - Icy Wind - TM27
  (362, 36200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 27),
  -- Glalie - Attract - TM31
  (362, 36200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Glalie - Rain Dance - TM33
  (362, 36200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Glalie - Hail - TM35
  (362, 36200, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 30),
  -- Glalie - Facade - TM39
  (362, 36200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Glalie - Weather Ball - TM46
  (362, 36200, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 32),
  -- Glalie - Fake Tears - TM47
  (362, 36200, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 33),
  -- Glalie - Icicle Spear - TM51
  (362, 36200, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 34),
  -- Glalie - Payback - TM57
  (362, 36200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 35),
  -- Glalie - Avalanche - TM64
  (362, 36200, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 36),
  -- Glalie - Ice Fang - TM67
  (362, 36200, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 37),
  -- Glalie - Round - TM76
  (362, 36200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Glalie - Hex - TM77
  (362, 36200, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 39),
  -- Glalie - Bulldoze - TM81
  (362, 36200, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 40),
  -- Glalie - Body Slam - TR01
  (362, 36200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 41),
  -- Glalie - Ice Beam - TR05
  (362, 36200, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 42),
  -- Glalie - Blizzard - TR06
  (362, 36200, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 43),
  -- Glalie - Earthquake - TR10
  (362, 36200, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 44),
  -- Glalie - Substitute - TR20
  (362, 36200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Glalie - Spikes - TR23
  (362, 36200, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 46),
  -- Glalie - Endure - TR26
  (362, 36200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 47),
  -- Glalie - Sleep Talk - TR27
  (362, 36200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 48),
  -- Glalie - Crunch - TR32
  (362, 36200, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 49),
  -- Glalie - Shadow Ball - TR33
  (362, 36200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 50),
  -- Glalie - Taunt - TR37
  (362, 36200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 51),
  -- Glalie - Gyro Ball - TR52
  (362, 36200, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 52),
  -- Glalie - Dark Pulse - TR58
  (362, 36200, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 53),
  -- Glalie - Iron Head - TR74
  (362, 36200, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 54),
  -- Spheal - Defense Curl - Level 1
  (363, 36300, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spheal - Rollout - Level 1
  (363, 36300, 205, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spheal - Growl - Level 4
  (363, 36300, 45, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Spheal - Water Gun - Level 8
  (363, 36300, 55, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Spheal - Powder Snow - Level 12
  (363, 36300, 181, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Spheal - Rest - Level 16
  (363, 36300, 156, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Spheal - Snore - Level 20
  (363, 36300, 173, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Spheal - Brine - Level 24
  (363, 36300, 362, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Spheal - Aurora Beam - Level 28
  (363, 36300, 62, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Spheal - Encore - Level 33
  (363, 36300, 227, 18, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Spheal - Body Slam - Level 36
  (363, 36300, 34, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Spheal - Surf - Level 40
  (363, 36300, 57, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Spheal - Blizzard - Level 44
  (363, 36300, 59, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Spheal - Hail - Level 48
  (363, 36300, 258, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Spheal - Sheer Cold - Level 52
  (363, 36300, 329, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Spheal - Rest - TM21
  (363, 36300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Spheal - Rock Slide - TM22
  (363, 36300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 17),
  -- Spheal - Snore - TM24
  (363, 36300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Spheal - Protect - TM25
  (363, 36300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Spheal - Icy Wind - TM27
  (363, 36300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 20),
  -- Spheal - Attract - TM31
  (363, 36300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Spheal - Rain Dance - TM33
  (363, 36300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Spheal - Hail - TM35
  (363, 36300, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 23),
  -- Spheal - Whirlpool - TM36
  (363, 36300, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 24),
  -- Spheal - Facade - TM39
  (363, 36300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Spheal - Dive - TM45
  (363, 36300, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 26),
  -- Spheal - Rock Tomb - TM48
  (363, 36300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Spheal - Brine - TM55
  (363, 36300, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 28),
  -- Spheal - Round - TM76
  (363, 36300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Spheal - Bulldoze - TM81
  (363, 36300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 30),
  -- Spheal - Body Slam - TR01
  (363, 36300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 31),
  -- Spheal - Surf - TR04
  (363, 36300, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 32),
  -- Spheal - Ice Beam - TR05
  (363, 36300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 33),
  -- Spheal - Blizzard - TR06
  (363, 36300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 34),
  -- Spheal - Earthquake - TR10
  (363, 36300, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 35),
  -- Spheal - Waterfall - TR16
  (363, 36300, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 36),
  -- Spheal - Substitute - TR20
  (363, 36300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Spheal - Endure - TR26
  (363, 36300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Spheal - Sleep Talk - TR27
  (363, 36300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Spheal - Encore - TR30
  (363, 36300, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 40),
  -- Spheal - Iron Tail - TR31
  (363, 36300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 41),
  -- Spheal - Fissure - Egg
  (363, 36300, 90, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Spheal - Curse - Egg
  (363, 36300, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Spheal - Belly Drum - Egg
  (363, 36300, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Spheal - Stockpile - Egg
  (363, 36300, 254, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Spheal - Spit Up - Egg
  (363, 36300, 255, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Spheal - Swallow - Egg
  (363, 36300, 256, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Spheal - Yawn - Egg
  (363, 36300, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Spheal - Water Pulse - Egg
  (363, 36300, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spheal - Aqua Ring - Egg
  (363, 36300, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Sealeo - Growl - Level 1
  (364, 36400, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sealeo - Water Gun - Level 1
  (364, 36400, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sealeo - Defense Curl - Level 1
  (364, 36400, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sealeo - Rollout - Level 1
  (364, 36400, 205, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sealeo - Swagger - Level 1
  (364, 36400, 207, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sealeo - Powder Snow - Level 12
  (364, 36400, 181, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Sealeo - Rest - Level 16
  (364, 36400, 156, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Sealeo - Snore - Level 20
  (364, 36400, 173, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Sealeo - Brine - Level 24
  (364, 36400, 362, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Sealeo - Aurora Beam - Level 28
  (364, 36400, 62, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Sealeo - Encore - Level 35
  (364, 36400, 227, 18, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Sealeo - Body Slam - Level 40
  (364, 36400, 34, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Sealeo - Surf - Level 46
  (364, 36400, 57, 18, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Sealeo - Blizzard - Level 52
  (364, 36400, 59, 18, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Sealeo - Hail - Level 58
  (364, 36400, 258, 18, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Sealeo - Sheer Cold - Level 64
  (364, 36400, 329, 18, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Sealeo - Swagger - Evolution
  (364, 36400, 207, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Sealeo - Rest - TM21
  (364, 36400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Sealeo - Rock Slide - TM22
  (364, 36400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 19),
  -- Sealeo - Snore - TM24
  (364, 36400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Sealeo - Protect - TM25
  (364, 36400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Sealeo - Icy Wind - TM27
  (364, 36400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 22),
  -- Sealeo - Attract - TM31
  (364, 36400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Sealeo - Rain Dance - TM33
  (364, 36400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Sealeo - Hail - TM35
  (364, 36400, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 25),
  -- Sealeo - Whirlpool - TM36
  (364, 36400, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 26),
  -- Sealeo - Facade - TM39
  (364, 36400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Sealeo - Dive - TM45
  (364, 36400, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 28),
  -- Sealeo - Rock Tomb - TM48
  (364, 36400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 29),
  -- Sealeo - Icicle Spear - TM51
  (364, 36400, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 30),
  -- Sealeo - Brine - TM55
  (364, 36400, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 31),
  -- Sealeo - Round - TM76
  (364, 36400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Sealeo - Bulldoze - TM81
  (364, 36400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 33),
  -- Sealeo - Body Slam - TR01
  (364, 36400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 34),
  -- Sealeo - Surf - TR04
  (364, 36400, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 35),
  -- Sealeo - Ice Beam - TR05
  (364, 36400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 36),
  -- Sealeo - Blizzard - TR06
  (364, 36400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 37),
  -- Sealeo - Earthquake - TR10
  (364, 36400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 38),
  -- Sealeo - Waterfall - TR16
  (364, 36400, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 39),
  -- Sealeo - Substitute - TR20
  (364, 36400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Sealeo - Endure - TR26
  (364, 36400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Sealeo - Sleep Talk - TR27
  (364, 36400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Sealeo - Encore - TR30
  (364, 36400, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 43),
  -- Sealeo - Iron Tail - TR31
  (364, 36400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 44),
  -- Walrein - Growl - Level 1
  (365, 36500, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Walrein - Water Gun - Level 1
  (365, 36500, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Walrein - Defense Curl - Level 1
  (365, 36500, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Walrein - Rollout - Level 1
  (365, 36500, 205, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Walrein - Swagger - Level 1
  (365, 36500, 207, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Walrein - Crunch - Level 1
  (365, 36500, 242, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Walrein - Ice Fang - Level 1
  (365, 36500, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Walrein - Powder Snow - Level 12
  (365, 36500, 181, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Walrein - Rest - Level 16
  (365, 36500, 156, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Walrein - Snore - Level 20
  (365, 36500, 173, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Walrein - Brine - Level 24
  (365, 36500, 362, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Walrein - Aurora Beam - Level 28
  (365, 36500, 62, 18, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Walrein - Encore - Level 35
  (365, 36500, 227, 18, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Walrein - Body Slam - Level 40
  (365, 36500, 34, 18, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Walrein - Surf - Level 48
  (365, 36500, 57, 18, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Walrein - Blizzard - Level 56
  (365, 36500, 59, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Walrein - Hail - Level 64
  (365, 36500, 258, 18, NULL, 1, 64, NULL, NULL, NULL, 17),
  -- Walrein - Sheer Cold - Level 72
  (365, 36500, 329, 18, NULL, 1, 72, NULL, NULL, NULL, 18),
  -- Walrein - Hyper Beam - TM08
  (365, 36500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Walrein - Giga Impact - TM09
  (365, 36500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Walrein - Rest - TM21
  (365, 36500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Walrein - Rock Slide - TM22
  (365, 36500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Walrein - Snore - TM24
  (365, 36500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Walrein - Protect - TM25
  (365, 36500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Walrein - Icy Wind - TM27
  (365, 36500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 25),
  -- Walrein - Attract - TM31
  (365, 36500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Walrein - Rain Dance - TM33
  (365, 36500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Walrein - Hail - TM35
  (365, 36500, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 28),
  -- Walrein - Whirlpool - TM36
  (365, 36500, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 29),
  -- Walrein - Facade - TM39
  (365, 36500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Walrein - Dive - TM45
  (365, 36500, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 31),
  -- Walrein - Rock Tomb - TM48
  (365, 36500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Walrein - Icicle Spear - TM51
  (365, 36500, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 33),
  -- Walrein - Brine - TM55
  (365, 36500, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 34),
  -- Walrein - Avalanche - TM64
  (365, 36500, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 35),
  -- Walrein - Ice Fang - TM67
  (365, 36500, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 36),
  -- Walrein - Round - TM76
  (365, 36500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Walrein - Bulldoze - TM81
  (365, 36500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 38),
  -- Walrein - Stomping Tantrum - TM98
  (365, 36500, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 39),
  -- Walrein - Swords Dance - TR00
  (365, 36500, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 40),
  -- Walrein - Body Slam - TR01
  (365, 36500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 41),
  -- Walrein - Hydro Pump - TR03
  (365, 36500, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 42),
  -- Walrein - Surf - TR04
  (365, 36500, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 43),
  -- Walrein - Ice Beam - TR05
  (365, 36500, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 44),
  -- Walrein - Blizzard - TR06
  (365, 36500, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 45),
  -- Walrein - Earthquake - TR10
  (365, 36500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 46),
  -- Walrein - Waterfall - TR16
  (365, 36500, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 47),
  -- Walrein - Substitute - TR20
  (365, 36500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Walrein - Endure - TR26
  (365, 36500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Walrein - Sleep Talk - TR27
  (365, 36500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Walrein - Encore - TR30
  (365, 36500, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 51),
  -- Walrein - Iron Tail - TR31
  (365, 36500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 52),
  -- Walrein - Crunch - TR32
  (365, 36500, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 53),
  -- Walrein - Iron Head - TR74
  (365, 36500, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 54),
  -- Walrein - Heavy Slam - TR79
  (365, 36500, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 55),
  -- Walrein - Liquidation - TR98
  (365, 36500, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 56),
  -- Walrein - Body Press - TR99
  (365, 36500, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 57),
  -- Relicanth - Tackle - Level 1
  (369, 36900, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Relicanth - Harden - Level 1
  (369, 36900, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Relicanth - Water Gun - Level 5
  (369, 36900, 55, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Relicanth - Ancient Power - Level 10
  (369, 36900, 246, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Relicanth - Yawn - Level 15
  (369, 36900, 281, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Relicanth - Dive - Level 20
  (369, 36900, 291, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Relicanth - Take Down - Level 25
  (369, 36900, 36, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Relicanth - Aqua Tail - Level 30
  (369, 36900, 401, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Relicanth - Rest - Level 35
  (369, 36900, 156, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Relicanth - Flail - Level 40
  (369, 36900, 175, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Relicanth - Hydro Pump - Level 45
  (369, 36900, 56, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Relicanth - Double-Edge - Level 50
  (369, 36900, 38, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Relicanth - Head Smash - Level 55
  (369, 36900, 457, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Relicanth - Hyper Beam - TM08
  (369, 36900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 14),
  -- Relicanth - Giga Impact - TM09
  (369, 36900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 15),
  -- Relicanth - Safeguard - TM19
  (369, 36900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 16),
  -- Relicanth - Rest - TM21
  (369, 36900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Relicanth - Rock Slide - TM22
  (369, 36900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 18),
  -- Relicanth - Snore - TM24
  (369, 36900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Relicanth - Protect - TM25
  (369, 36900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Relicanth - Icy Wind - TM27
  (369, 36900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 21),
  -- Relicanth - Attract - TM31
  (369, 36900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Relicanth - Sandstorm - TM32
  (369, 36900, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 23),
  -- Relicanth - Rain Dance - TM33
  (369, 36900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Relicanth - Hail - TM35
  (369, 36900, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 25),
  -- Relicanth - Whirlpool - TM36
  (369, 36900, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 26),
  -- Relicanth - Facade - TM39
  (369, 36900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Relicanth - Dive - TM45
  (369, 36900, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 28),
  -- Relicanth - Rock Tomb - TM48
  (369, 36900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 29),
  -- Relicanth - Bounce - TM52
  (369, 36900, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 30),
  -- Relicanth - Mud Shot - TM53
  (369, 36900, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 31),
  -- Relicanth - Rock Blast - TM54
  (369, 36900, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 32),
  -- Relicanth - Brine - TM55
  (369, 36900, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 33),
  -- Relicanth - Round - TM76
  (369, 36900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Relicanth - Bulldoze - TM81
  (369, 36900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 35),
  -- Relicanth - Stomping Tantrum - TM98
  (369, 36900, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 36),
  -- Relicanth - Body Slam - TR01
  (369, 36900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 37),
  -- Relicanth - Hydro Pump - TR03
  (369, 36900, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 38),
  -- Relicanth - Surf - TR04
  (369, 36900, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 39),
  -- Relicanth - Ice Beam - TR05
  (369, 36900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 40),
  -- Relicanth - Blizzard - TR06
  (369, 36900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 41),
  -- Relicanth - Earthquake - TR10
  (369, 36900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 42),
  -- Relicanth - Waterfall - TR16
  (369, 36900, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 43),
  -- Relicanth - Amnesia - TR17
  (369, 36900, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 44),
  -- Relicanth - Substitute - TR20
  (369, 36900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Relicanth - Endure - TR26
  (369, 36900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Relicanth - Sleep Talk - TR27
  (369, 36900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Relicanth - Muddy Water - TR45
  (369, 36900, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 48),
  -- Relicanth - Iron Defense - TR46
  (369, 36900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 49),
  -- Relicanth - Calm Mind - TR49
  (369, 36900, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 50),
  -- Relicanth - Earth Power - TR67
  (369, 36900, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 51),
  -- Relicanth - Zen Headbutt - TR69
  (369, 36900, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 52),
  -- Relicanth - Stone Edge - TR75
  (369, 36900, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 53),
  -- Relicanth - Stealth Rock - TR76
  (369, 36900, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 54),
  -- Relicanth - Scald - TR84
  (369, 36900, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 55),
  -- Relicanth - Liquidation - TR98
  (369, 36900, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 56),
  -- Relicanth - Body Press - TR99
  (369, 36900, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 57),
  -- Relicanth - Skull Bash - Egg
  (369, 36900, 130, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Relicanth - Mud-Slap - Egg
  (369, 36900, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Bagon - Leer - Level 1
  (371, 37100, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bagon - Ember - Level 1
  (371, 37100, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bagon - Bite - Level 5
  (371, 37100, 44, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Bagon - Dragon Breath - Level 10
  (371, 37100, 225, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Bagon - Headbutt - Level 15
  (371, 37100, 29, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Bagon - Scary Face - Level 20
  (371, 37100, 184, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Bagon - Crunch - Level 25
  (371, 37100, 242, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Bagon - Dragon Claw - Level 31
  (371, 37100, 337, 18, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Bagon - Zen Headbutt - Level 35
  (371, 37100, 428, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Bagon - Focus Energy - Level 40
  (371, 37100, 116, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Bagon - Flamethrower - Level 45
  (371, 37100, 53, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Bagon - Outrage - Level 50
  (371, 37100, 200, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Bagon - Double-Edge - Level 55
  (371, 37100, 38, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Bagon - Rest - TM21
  (371, 37100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 14),
  -- Bagon - Rock Slide - TM22
  (371, 37100, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 15),
  -- Bagon - Snore - TM24
  (371, 37100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 16),
  -- Bagon - Protect - TM25
  (371, 37100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 17),
  -- Bagon - Scary Face - TM26
  (371, 37100, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 18),
  -- Bagon - Attract - TM31
  (371, 37100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 19),
  -- Bagon - Rain Dance - TM33
  (371, 37100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 20),
  -- Bagon - Sunny Day - TM34
  (371, 37100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 21),
  -- Bagon - Facade - TM39
  (371, 37100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Bagon - Brick Break - TM43
  (371, 37100, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 23),
  -- Bagon - Rock Tomb - TM48
  (371, 37100, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 24),
  -- Bagon - Shadow Claw - TM65
  (371, 37100, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 25),
  -- Bagon - Fire Fang - TM68
  (371, 37100, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 26),
  -- Bagon - Round - TM76
  (371, 37100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Bagon - Body Slam - TR01
  (371, 37100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 28),
  -- Bagon - Flamethrower - TR02
  (371, 37100, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 29),
  -- Bagon - Hydro Pump - TR03
  (371, 37100, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 30),
  -- Bagon - Focus Energy - TR13
  (371, 37100, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 31),
  -- Bagon - Fire Blast - TR15
  (371, 37100, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 32),
  -- Bagon - Substitute - TR20
  (371, 37100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 33),
  -- Bagon - Outrage - TR24
  (371, 37100, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 34),
  -- Bagon - Endure - TR26
  (371, 37100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Bagon - Sleep Talk - TR27
  (371, 37100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Bagon - Crunch - TR32
  (371, 37100, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 37),
  -- Bagon - Hyper Voice - TR42
  (371, 37100, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 38),
  -- Bagon - Iron Defense - TR46
  (371, 37100, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 39),
  -- Bagon - Dragon Claw - TR47
  (371, 37100, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 40),
  -- Bagon - Dragon Dance - TR51
  (371, 37100, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 41),
  -- Bagon - Dragon Pulse - TR62
  (371, 37100, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 42),
  -- Bagon - Zen Headbutt - TR69
  (371, 37100, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 43),
  -- Bagon - Thrash - Egg
  (371, 37100, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bagon - Defense Curl - Egg
  (371, 37100, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bagon - Twister - Egg
  (371, 37100, 239, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bagon - Dragon Rush - Egg
  (371, 37100, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bagon - Draco Meteor - Tutor
  (371, 37100, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 48),
  -- Shelgon - Leer - Level 1
  (372, 37200, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shelgon - Bite - Level 1
  (372, 37200, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shelgon - Ember - Level 1
  (372, 37200, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shelgon - Protect - Level 1
  (372, 37200, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Shelgon - Dragon Breath - Level 1
  (372, 37200, 225, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Shelgon - Headbutt - Level 15
  (372, 37200, 29, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Shelgon - Scary Face - Level 20
  (372, 37200, 184, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Shelgon - Crunch - Level 25
  (372, 37200, 242, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Shelgon - Dragon Claw - Level 33
  (372, 37200, 337, 18, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Shelgon - Zen Headbutt - Level 39
  (372, 37200, 428, 18, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Shelgon - Focus Energy - Level 46
  (372, 37200, 116, 18, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Shelgon - Flamethrower - Level 53
  (372, 37200, 53, 18, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Shelgon - Outrage - Level 60
  (372, 37200, 200, 18, NULL, 1, 60, NULL, NULL, NULL, 13),
  -- Shelgon - Double-Edge - Level 67
  (372, 37200, 38, 18, NULL, 1, 67, NULL, NULL, NULL, 14),
  -- Shelgon - Protect - Evolution
  (372, 37200, 182, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Shelgon - Rest - TM21
  (372, 37200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Shelgon - Rock Slide - TM22
  (372, 37200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 17),
  -- Shelgon - Snore - TM24
  (372, 37200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Shelgon - Protect - TM25
  (372, 37200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Shelgon - Scary Face - TM26
  (372, 37200, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 20),
  -- Shelgon - Attract - TM31
  (372, 37200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Shelgon - Rain Dance - TM33
  (372, 37200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Shelgon - Sunny Day - TM34
  (372, 37200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 23),
  -- Shelgon - Facade - TM39
  (372, 37200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Shelgon - Brick Break - TM43
  (372, 37200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 25),
  -- Shelgon - Rock Tomb - TM48
  (372, 37200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 26),
  -- Shelgon - Shadow Claw - TM65
  (372, 37200, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 27),
  -- Shelgon - Fire Fang - TM68
  (372, 37200, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 28),
  -- Shelgon - Round - TM76
  (372, 37200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Shelgon - Body Slam - TR01
  (372, 37200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 30),
  -- Shelgon - Flamethrower - TR02
  (372, 37200, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 31),
  -- Shelgon - Hydro Pump - TR03
  (372, 37200, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 32),
  -- Shelgon - Focus Energy - TR13
  (372, 37200, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 33),
  -- Shelgon - Fire Blast - TR15
  (372, 37200, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 34),
  -- Shelgon - Substitute - TR20
  (372, 37200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Shelgon - Outrage - TR24
  (372, 37200, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 36),
  -- Shelgon - Endure - TR26
  (372, 37200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Shelgon - Sleep Talk - TR27
  (372, 37200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Shelgon - Crunch - TR32
  (372, 37200, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 39),
  -- Shelgon - Hyper Voice - TR42
  (372, 37200, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 40),
  -- Shelgon - Iron Defense - TR46
  (372, 37200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 41),
  -- Shelgon - Dragon Claw - TR47
  (372, 37200, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 42),
  -- Shelgon - Dragon Dance - TR51
  (372, 37200, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 43),
  -- Shelgon - Dragon Pulse - TR62
  (372, 37200, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 44),
  -- Shelgon - Zen Headbutt - TR69
  (372, 37200, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 45),
  -- Shelgon - Draco Meteor - Tutor
  (372, 37200, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 46),
  -- Salamence - Fly - Level 1
  (373, 37300, 19, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Salamence - Leer - Level 1
  (373, 37300, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Salamence - Bite - Level 1
  (373, 37300, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Salamence - Ember - Level 1
  (373, 37300, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Salamence - Protect - Level 1
  (373, 37300, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Salamence - Dragon Breath - Level 1
  (373, 37300, 225, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Salamence - Dragon Tail - Level 1
  (373, 37300, 525, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Salamence - Headbutt - Level 15
  (373, 37300, 29, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Salamence - Scary Face - Level 20
  (373, 37300, 184, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Salamence - Crunch - Level 25
  (373, 37300, 242, 18, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Salamence - Dragon Claw - Level 33
  (373, 37300, 337, 18, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Salamence - Zen Headbutt - Level 39
  (373, 37300, 428, 18, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Salamence - Focus Energy - Level 46
  (373, 37300, 116, 18, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Salamence - Flamethrower - Level 55
  (373, 37300, 53, 18, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Salamence - Outrage - Level 64
  (373, 37300, 200, 18, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Salamence - Double-Edge - Level 73
  (373, 37300, 38, 18, NULL, 1, 73, NULL, NULL, NULL, 16),
  -- Salamence - Fly - Evolution
  (373, 37300, 19, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Salamence - Fly - TM06
  (373, 37300, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 18),
  -- Salamence - Hyper Beam - TM08
  (373, 37300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Salamence - Giga Impact - TM09
  (373, 37300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Salamence - Rest - TM21
  (373, 37300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Salamence - Rock Slide - TM22
  (373, 37300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Salamence - Snore - TM24
  (373, 37300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Salamence - Protect - TM25
  (373, 37300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Salamence - Scary Face - TM26
  (373, 37300, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Salamence - Steel Wing - TM30
  (373, 37300, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 26),
  -- Salamence - Attract - TM31
  (373, 37300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Salamence - Rain Dance - TM33
  (373, 37300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Salamence - Sunny Day - TM34
  (373, 37300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Salamence - Facade - TM39
  (373, 37300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Salamence - Swift - TM40
  (373, 37300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Salamence - Brick Break - TM43
  (373, 37300, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 32),
  -- Salamence - Rock Tomb - TM48
  (373, 37300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Salamence - Shadow Claw - TM65
  (373, 37300, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 34),
  -- Salamence - Thunder Fang - TM66
  (373, 37300, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 35),
  -- Salamence - Fire Fang - TM68
  (373, 37300, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 36),
  -- Salamence - Round - TM76
  (373, 37300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Salamence - Bulldoze - TM81
  (373, 37300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 38),
  -- Salamence - Air Slash - TM95
  (373, 37300, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 39),
  -- Salamence - Brutal Swing - TM97
  (373, 37300, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 40),
  -- Salamence - Breaking Swipe - TM99
  (373, 37300, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 41),
  -- Salamence - Body Slam - TR01
  (373, 37300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 42),
  -- Salamence - Flamethrower - TR02
  (373, 37300, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 43),
  -- Salamence - Hydro Pump - TR03
  (373, 37300, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 44),
  -- Salamence - Earthquake - TR10
  (373, 37300, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 45),
  -- Salamence - Focus Energy - TR13
  (373, 37300, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 46),
  -- Salamence - Fire Blast - TR15
  (373, 37300, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 47),
  -- Salamence - Substitute - TR20
  (373, 37300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Salamence - Outrage - TR24
  (373, 37300, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 49),
  -- Salamence - Endure - TR26
  (373, 37300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Salamence - Sleep Talk - TR27
  (373, 37300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Salamence - Iron Tail - TR31
  (373, 37300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 52),
  -- Salamence - Crunch - TR32
  (373, 37300, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 53),
  -- Salamence - Heat Wave - TR36
  (373, 37300, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 54),
  -- Salamence - Hyper Voice - TR42
  (373, 37300, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 55),
  -- Salamence - Iron Defense - TR46
  (373, 37300, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 56),
  -- Salamence - Dragon Claw - TR47
  (373, 37300, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 57),
  -- Salamence - Dragon Dance - TR51
  (373, 37300, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 58),
  -- Salamence - Dragon Pulse - TR62
  (373, 37300, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 59),
  -- Salamence - Zen Headbutt - TR69
  (373, 37300, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 60),
  -- Salamence - Stone Edge - TR75
  (373, 37300, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 61),
  -- Salamence - Hurricane - TR89
  (373, 37300, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 62),
  -- Salamence - Draco Meteor - Tutor
  (373, 37300, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 63),
  -- Beldum - Tackle - Level 1
  (374, 37400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beldum - Iron Defense - TR46
  (374, 37400, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 2),
  -- Beldum - Zen Headbutt - TR69
  (374, 37400, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 3),
  -- Beldum - Iron Head - TR74
  (374, 37400, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 4),
  -- Beldum - Steel Beam - Tutor
  (374, 37400, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 5),
  -- Metang - Tackle - Level 1
  (375, 37500, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metang - Confusion - Level 1
  (375, 37500, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Metang - Metal Claw - Level 1
  (375, 37500, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Metang - Bullet Punch - Level 1
  (375, 37500, 418, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Metang - Zen Headbutt - Level 6
  (375, 37500, 428, 18, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Metang - Magnet Rise - Level 12
  (375, 37500, 393, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Metang - Flash Cannon - Level 18
  (375, 37500, 430, 18, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Metang - Take Down - Level 26
  (375, 37500, 36, 18, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Metang - Psychic - Level 34
  (375, 37500, 94, 18, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Metang - Scary Face - Level 42
  (375, 37500, 184, 18, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Metang - Meteor Mash - Level 50
  (375, 37500, 309, 18, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Metang - Iron Defense - Level 58
  (375, 37500, 334, 18, NULL, 1, 58, NULL, NULL, NULL, 12),
  -- Metang - Agility - Level 66
  (375, 37500, 97, 18, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Metang - Hyper Beam - Level 74
  (375, 37500, 63, 18, NULL, 1, 74, NULL, NULL, NULL, 14),
  -- Metang - Confusion - Evolution
  (375, 37500, 93, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Metang - Metal Claw - Evolution
  (375, 37500, 232, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Metang - Ice Punch - TM04
  (375, 37500, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 17),
  -- Metang - Thunder Punch - TM05
  (375, 37500, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 18),
  -- Metang - Hyper Beam - TM08
  (375, 37500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Metang - Light Screen - TM17
  (375, 37500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Metang - Reflect - TM18
  (375, 37500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Metang - Self-Destruct - TM20
  (375, 37500, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 22),
  -- Metang - Rest - TM21
  (375, 37500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Metang - Rock Slide - TM22
  (375, 37500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Metang - Snore - TM24
  (375, 37500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Metang - Protect - TM25
  (375, 37500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Metang - Scary Face - TM26
  (375, 37500, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 27),
  -- Metang - Icy Wind - TM27
  (375, 37500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 28),
  -- Metang - Sandstorm - TM32
  (375, 37500, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 29),
  -- Metang - Rain Dance - TM33
  (375, 37500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Metang - Sunny Day - TM34
  (375, 37500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Metang - Facade - TM39
  (375, 37500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Metang - Swift - TM40
  (375, 37500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Metang - Brick Break - TM43
  (375, 37500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Metang - Rock Tomb - TM48
  (375, 37500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 35),
  -- Metang - Psycho Cut - TM69
  (375, 37500, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 36),
  -- Metang - Round - TM76
  (375, 37500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Metang - Bulldoze - TM81
  (375, 37500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 38),
  -- Metang - Body Slam - TR01
  (375, 37500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 39),
  -- Metang - Earthquake - TR10
  (375, 37500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 40),
  -- Metang - Psychic - TR11
  (375, 37500, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 41),
  -- Metang - Agility - TR12
  (375, 37500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 42),
  -- Metang - Substitute - TR20
  (375, 37500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 43),
  -- Metang - Sludge Bomb - TR22
  (375, 37500, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 44),
  -- Metang - Psyshock - TR25
  (375, 37500, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 45),
  -- Metang - Endure - TR26
  (375, 37500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Metang - Sleep Talk - TR27
  (375, 37500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Metang - Shadow Ball - TR33
  (375, 37500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 48),
  -- Metang - Trick - TR38
  (375, 37500, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 49),
  -- Metang - Cosmic Power - TR44
  (375, 37500, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 50),
  -- Metang - Iron Defense - TR46
  (375, 37500, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 51),
  -- Metang - Gyro Ball - TR52
  (375, 37500, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 52),
  -- Metang - Zen Headbutt - TR69
  (375, 37500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 53),
  -- Metang - Flash Cannon - TR70
  (375, 37500, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 54),
  -- Metang - Iron Head - TR74
  (375, 37500, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 55),
  -- Metang - Stealth Rock - TR76
  (375, 37500, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 56),
  -- Metang - Grass Knot - TR77
  (375, 37500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 57),
  -- Metang - Ally Switch - TR83
  (375, 37500, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 58),
  -- Metang - Steel Beam - Tutor
  (375, 37500, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 59),
  -- Metagross - Tackle - Level 1
  (376, 37600, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metagross - Confusion - Level 1
  (376, 37600, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Metagross - Metal Claw - Level 1
  (376, 37600, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Metagross - Hammer Arm - Level 1
  (376, 37600, 359, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Metagross - Bullet Punch - Level 1
  (376, 37600, 418, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Metagross - Zen Headbutt - Level 6
  (376, 37600, 428, 18, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Metagross - Magnet Rise - Level 12
  (376, 37600, 393, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Metagross - Flash Cannon - Level 16
  (376, 37600, 430, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Metagross - Take Down - Level 26
  (376, 37600, 36, 18, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Metagross - Psychic - Level 34
  (376, 37600, 94, 18, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Metagross - Scary Face - Level 42
  (376, 37600, 184, 18, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Metagross - Meteor Mash - Level 52
  (376, 37600, 309, 18, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Metagross - Iron Defense - Level 62
  (376, 37600, 334, 18, NULL, 1, 62, NULL, NULL, NULL, 13),
  -- Metagross - Agility - Level 72
  (376, 37600, 97, 18, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Metagross - Hyper Beam - Level 82
  (376, 37600, 63, 18, NULL, 1, 82, NULL, NULL, NULL, 15),
  -- Metagross - Hammer Arm - Evolution
  (376, 37600, 359, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Metagross - Ice Punch - TM04
  (376, 37600, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 17),
  -- Metagross - Thunder Punch - TM05
  (376, 37600, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 18),
  -- Metagross - Hyper Beam - TM08
  (376, 37600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Metagross - Giga Impact - TM09
  (376, 37600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Metagross - Light Screen - TM17
  (376, 37600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 21),
  -- Metagross - Reflect - TM18
  (376, 37600, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 22),
  -- Metagross - Self-Destruct - TM20
  (376, 37600, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 23),
  -- Metagross - Rest - TM21
  (376, 37600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Metagross - Rock Slide - TM22
  (376, 37600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 25),
  -- Metagross - Snore - TM24
  (376, 37600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Metagross - Protect - TM25
  (376, 37600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Metagross - Scary Face - TM26
  (376, 37600, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 28),
  -- Metagross - Icy Wind - TM27
  (376, 37600, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 29),
  -- Metagross - Sandstorm - TM32
  (376, 37600, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 30),
  -- Metagross - Rain Dance - TM33
  (376, 37600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Metagross - Sunny Day - TM34
  (376, 37600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Metagross - Facade - TM39
  (376, 37600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Metagross - Swift - TM40
  (376, 37600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 34),
  -- Metagross - Brick Break - TM43
  (376, 37600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 35),
  -- Metagross - Rock Tomb - TM48
  (376, 37600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 36),
  -- Metagross - Psycho Cut - TM69
  (376, 37600, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 37),
  -- Metagross - Round - TM76
  (376, 37600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Metagross - Bulldoze - TM81
  (376, 37600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 39),
  -- Metagross - Brutal Swing - TM97
  (376, 37600, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 40),
  -- Metagross - Stomping Tantrum - TM98
  (376, 37600, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 41),
  -- Metagross - Body Slam - TR01
  (376, 37600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 42),
  -- Metagross - Earthquake - TR10
  (376, 37600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 43),
  -- Metagross - Psychic - TR11
  (376, 37600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 44),
  -- Metagross - Agility - TR12
  (376, 37600, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 45),
  -- Metagross - Substitute - TR20
  (376, 37600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Metagross - Sludge Bomb - TR22
  (376, 37600, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 47),
  -- Metagross - Psyshock - TR25
  (376, 37600, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 48),
  -- Metagross - Endure - TR26
  (376, 37600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Metagross - Sleep Talk - TR27
  (376, 37600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Metagross - Shadow Ball - TR33
  (376, 37600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 51),
  -- Metagross - Trick - TR38
  (376, 37600, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 52),
  -- Metagross - Cosmic Power - TR44
  (376, 37600, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 53),
  -- Metagross - Iron Defense - TR46
  (376, 37600, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 54),
  -- Metagross - Gyro Ball - TR52
  (376, 37600, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 55),
  -- Metagross - Zen Headbutt - TR69
  (376, 37600, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 56),
  -- Metagross - Flash Cannon - TR70
  (376, 37600, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 57),
  -- Metagross - Iron Head - TR74
  (376, 37600, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 58),
  -- Metagross - Stealth Rock - TR76
  (376, 37600, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 59),
  -- Metagross - Grass Knot - TR77
  (376, 37600, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 60),
  -- Metagross - Ally Switch - TR83
  (376, 37600, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 61),
  -- Metagross - Body Press - TR99
  (376, 37600, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 62),
  -- Metagross - Steel Beam - Tutor
  (376, 37600, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 63),
  -- Regirock - Rock Throw - Level 1
  (377, 37700, 88, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regirock - Charge Beam - Level 1
  (377, 37700, 451, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regirock - Bulldoze - Level 6
  (377, 37700, 523, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Regirock - Ancient Power - Level 12
  (377, 37700, 246, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Regirock - Stomp - Level 18
  (377, 37700, 23, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Regirock - Rock Slide - Level 24
  (377, 37700, 157, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Regirock - Curse - Level 30
  (377, 37700, 174, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Regirock - Iron Defense - Level 36
  (377, 37700, 334, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Regirock - Hammer Arm - Level 42
  (377, 37700, 359, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Regirock - Stone Edge - Level 48
  (377, 37700, 444, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Regirock - Superpower - Level 54
  (377, 37700, 276, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Regirock - Lock-On - Level 60
  (377, 37700, 199, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Regirock - Zap Cannon - Level 66
  (377, 37700, 192, 18, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Regirock - Hyper Beam - Level 72
  (377, 37700, 63, 18, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Regirock - Explosion - Level 78
  (377, 37700, 153, 18, NULL, 1, 78, NULL, NULL, NULL, 15),
  -- Regirock - Mega Punch - TM00
  (377, 37700, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Regirock - Mega Kick - TM01
  (377, 37700, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Regirock - Fire Punch - TM03
  (377, 37700, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 18),
  -- Regirock - Ice Punch - TM04
  (377, 37700, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Regirock - Thunder Punch - TM05
  (377, 37700, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Regirock - Hyper Beam - TM08
  (377, 37700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Regirock - Giga Impact - TM09
  (377, 37700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Regirock - Thunder Wave - TM14
  (377, 37700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 23),
  -- Regirock - Dig - TM15
  (377, 37700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 24),
  -- Regirock - Safeguard - TM19
  (377, 37700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 25),
  -- Regirock - Self-Destruct - TM20
  (377, 37700, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Regirock - Rest - TM21
  (377, 37700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Regirock - Rock Slide - TM22
  (377, 37700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Regirock - Snore - TM24
  (377, 37700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Regirock - Protect - TM25
  (377, 37700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Regirock - Sandstorm - TM32
  (377, 37700, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 31),
  -- Regirock - Sunny Day - TM34
  (377, 37700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Regirock - Facade - TM39
  (377, 37700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Regirock - Brick Break - TM43
  (377, 37700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Regirock - Rock Tomb - TM48
  (377, 37700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 35),
  -- Regirock - Sand Tomb - TM49
  (377, 37700, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 36),
  -- Regirock - Rock Blast - TM54
  (377, 37700, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 37),
  -- Regirock - Fling - TM59
  (377, 37700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Regirock - Drain Punch - TM63
  (377, 37700, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 39),
  -- Regirock - Round - TM76
  (377, 37700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Regirock - Bulldoze - TM81
  (377, 37700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 41),
  -- Regirock - Stomping Tantrum - TM98
  (377, 37700, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 42),
  -- Regirock - Body Slam - TR01
  (377, 37700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Regirock - Thunderbolt - TR08
  (377, 37700, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 44),
  -- Regirock - Thunder - TR09
  (377, 37700, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 45),
  -- Regirock - Earthquake - TR10
  (377, 37700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 46),
  -- Regirock - Substitute - TR20
  (377, 37700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Regirock - Endure - TR26
  (377, 37700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 48),
  -- Regirock - Sleep Talk - TR27
  (377, 37700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 49),
  -- Regirock - Superpower - TR39
  (377, 37700, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 50),
  -- Regirock - Iron Defense - TR46
  (377, 37700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 51),
  -- Regirock - Focus Blast - TR64
  (377, 37700, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 52),
  -- Regirock - Earth Power - TR67
  (377, 37700, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 53),
  -- Regirock - Flash Cannon - TR70
  (377, 37700, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 54),
  -- Regirock - Iron Head - TR74
  (377, 37700, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 55),
  -- Regirock - Stone Edge - TR75
  (377, 37700, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 56),
  -- Regirock - Stealth Rock - TR76
  (377, 37700, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 57),
  -- Regirock - Heavy Slam - TR79
  (377, 37700, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 58),
  -- Regirock - Body Press - TR99
  (377, 37700, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 59),
  -- Regice - Icy Wind - Level 1
  (378, 37800, 196, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regice - Charge Beam - Level 1
  (378, 37800, 451, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regice - Bulldoze - Level 6
  (378, 37800, 523, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Regice - Ancient Power - Level 12
  (378, 37800, 246, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Regice - Stomp - Level 18
  (378, 37800, 23, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Regice - Ice Beam - Level 24
  (378, 37800, 58, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Regice - Curse - Level 30
  (378, 37800, 174, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Regice - Amnesia - Level 36
  (378, 37800, 133, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Regice - Hammer Arm - Level 42
  (378, 37800, 359, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Regice - Blizzard - Level 48
  (378, 37800, 59, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Regice - Superpower - Level 54
  (378, 37800, 276, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Regice - Lock-On - Level 60
  (378, 37800, 199, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Regice - Zap Cannon - Level 66
  (378, 37800, 192, 18, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Regice - Hyper Beam - Level 72
  (378, 37800, 63, 18, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Regice - Explosion - Level 78
  (378, 37800, 153, 18, NULL, 1, 78, NULL, NULL, NULL, 15),
  -- Regice - Mega Punch - TM00
  (378, 37800, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Regice - Mega Kick - TM01
  (378, 37800, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Regice - Ice Punch - TM04
  (378, 37800, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 18),
  -- Regice - Thunder Punch - TM05
  (378, 37800, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 19),
  -- Regice - Hyper Beam - TM08
  (378, 37800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Regice - Giga Impact - TM09
  (378, 37800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Regice - Thunder Wave - TM14
  (378, 37800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 22),
  -- Regice - Safeguard - TM19
  (378, 37800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 23),
  -- Regice - Self-Destruct - TM20
  (378, 37800, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 24),
  -- Regice - Rest - TM21
  (378, 37800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Regice - Rock Slide - TM22
  (378, 37800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Regice - Snore - TM24
  (378, 37800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Regice - Protect - TM25
  (378, 37800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Regice - Icy Wind - TM27
  (378, 37800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 29),
  -- Regice - Rain Dance - TM33
  (378, 37800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Regice - Hail - TM35
  (378, 37800, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 31),
  -- Regice - Facade - TM39
  (378, 37800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Regice - Brick Break - TM43
  (378, 37800, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 33),
  -- Regice - Rock Tomb - TM48
  (378, 37800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 34),
  -- Regice - Icicle Spear - TM51
  (378, 37800, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 35),
  -- Regice - Fling - TM59
  (378, 37800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Regice - Avalanche - TM64
  (378, 37800, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 37),
  -- Regice - Round - TM76
  (378, 37800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Regice - Bulldoze - TM81
  (378, 37800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 39),
  -- Regice - Stomping Tantrum - TM98
  (378, 37800, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 40),
  -- Regice - Body Slam - TR01
  (378, 37800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 41),
  -- Regice - Ice Beam - TR05
  (378, 37800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 42),
  -- Regice - Blizzard - TR06
  (378, 37800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 43),
  -- Regice - Thunderbolt - TR08
  (378, 37800, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 44),
  -- Regice - Thunder - TR09
  (378, 37800, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 45),
  -- Regice - Earthquake - TR10
  (378, 37800, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 46),
  -- Regice - Amnesia - TR17
  (378, 37800, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 47),
  -- Regice - Substitute - TR20
  (378, 37800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Regice - Endure - TR26
  (378, 37800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Regice - Sleep Talk - TR27
  (378, 37800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Regice - Superpower - TR39
  (378, 37800, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 51),
  -- Regice - Focus Blast - TR64
  (378, 37800, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 52),
  -- Regice - Flash Cannon - TR70
  (378, 37800, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 53),
  -- Regice - Iron Head - TR74
  (378, 37800, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 54),
  -- Regice - Heavy Slam - TR79
  (378, 37800, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 55),
  -- Registeel - Metal Claw - Level 1
  (379, 37900, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Registeel - Charge Beam - Level 1
  (379, 37900, 451, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Registeel - Bulldoze - Level 6
  (379, 37900, 523, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Registeel - Ancient Power - Level 12
  (379, 37900, 246, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Registeel - Stomp - Level 18
  (379, 37900, 23, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Registeel - Flash Cannon - Level 24
  (379, 37900, 430, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Registeel - Iron Head - Level 24
  (379, 37900, 442, 18, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Registeel - Curse - Level 30
  (379, 37900, 174, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Registeel - Amnesia - Level 36
  (379, 37900, 133, 18, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Registeel - Iron Defense - Level 36
  (379, 37900, 334, 18, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Registeel - Hammer Arm - Level 42
  (379, 37900, 359, 18, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Registeel - Heavy Slam - Level 48
  (379, 37900, 484, 18, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Registeel - Superpower - Level 54
  (379, 37900, 276, 18, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Registeel - Lock-On - Level 60
  (379, 37900, 199, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Registeel - Zap Cannon - Level 66
  (379, 37900, 192, 18, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Registeel - Hyper Beam - Level 72
  (379, 37900, 63, 18, NULL, 1, 72, NULL, NULL, NULL, 16),
  -- Registeel - Explosion - Level 78
  (379, 37900, 153, 18, NULL, 1, 78, NULL, NULL, NULL, 17),
  -- Registeel - Mega Punch - TM00
  (379, 37900, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 18),
  -- Registeel - Mega Kick - TM01
  (379, 37900, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 19),
  -- Registeel - Ice Punch - TM04
  (379, 37900, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 20),
  -- Registeel - Thunder Punch - TM05
  (379, 37900, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 21),
  -- Registeel - Hyper Beam - TM08
  (379, 37900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 22),
  -- Registeel - Giga Impact - TM09
  (379, 37900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 23),
  -- Registeel - Thunder Wave - TM14
  (379, 37900, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 24),
  -- Registeel - Safeguard - TM19
  (379, 37900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 25),
  -- Registeel - Self-Destruct - TM20
  (379, 37900, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Registeel - Rest - TM21
  (379, 37900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Registeel - Rock Slide - TM22
  (379, 37900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Registeel - Snore - TM24
  (379, 37900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Registeel - Protect - TM25
  (379, 37900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Registeel - Sandstorm - TM32
  (379, 37900, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 31),
  -- Registeel - Rain Dance - TM33
  (379, 37900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 32),
  -- Registeel - Sunny Day - TM34
  (379, 37900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 33),
  -- Registeel - Facade - TM39
  (379, 37900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Registeel - Brick Break - TM43
  (379, 37900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 35),
  -- Registeel - Rock Tomb - TM48
  (379, 37900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 36),
  -- Registeel - Sand Tomb - TM49
  (379, 37900, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 37),
  -- Registeel - Fling - TM59
  (379, 37900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Registeel - Shadow Claw - TM65
  (379, 37900, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 39),
  -- Registeel - Round - TM76
  (379, 37900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Registeel - Bulldoze - TM81
  (379, 37900, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 41),
  -- Registeel - Stomping Tantrum - TM98
  (379, 37900, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 42),
  -- Registeel - Body Slam - TR01
  (379, 37900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Registeel - Thunderbolt - TR08
  (379, 37900, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 44),
  -- Registeel - Thunder - TR09
  (379, 37900, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 45),
  -- Registeel - Earthquake - TR10
  (379, 37900, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 46),
  -- Registeel - Amnesia - TR17
  (379, 37900, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 47),
  -- Registeel - Substitute - TR20
  (379, 37900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Registeel - Endure - TR26
  (379, 37900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Registeel - Sleep Talk - TR27
  (379, 37900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Registeel - Superpower - TR39
  (379, 37900, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 51),
  -- Registeel - Iron Defense - TR46
  (379, 37900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 52),
  -- Registeel - Focus Blast - TR64
  (379, 37900, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 53),
  -- Registeel - Flash Cannon - TR70
  (379, 37900, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 54),
  -- Registeel - Iron Head - TR74
  (379, 37900, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 55),
  -- Registeel - Stealth Rock - TR76
  (379, 37900, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 56),
  -- Registeel - Heavy Slam - TR79
  (379, 37900, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 57),
  -- Registeel - Body Press - TR99
  (379, 37900, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 58),
  -- Registeel - Steel Beam - Tutor
  (379, 37900, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 59),
  -- Latias - Charm - Level 1
  (380, 38000, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Latias - Stored Power - Level 1
  (380, 38000, 500, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Latias - Helping Hand - Level 5
  (380, 38000, 270, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Latias - Recover - Level 10
  (380, 38000, 105, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Latias - Confusion - Level 15
  (380, 38000, 93, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Latias - Tailwind - Level 20
  (380, 38000, 366, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Latias - Dragon Breath - Level 25
  (380, 38000, 225, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Latias - Wish - Level 30
  (380, 38000, 273, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Latias - Mist Ball - Level 35
  (380, 38000, 296, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Latias - Zen Headbutt - Level 40
  (380, 38000, 428, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Latias - Dragon Pulse - Level 45
  (380, 38000, 406, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Latias - Heal Pulse - Level 50
  (380, 38000, 505, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Latias - Reflect Type - Level 55
  (380, 38000, 513, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Latias - Psychic - Level 60
  (380, 38000, 94, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Latias - Guard Split - Level 65
  (380, 38000, 470, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Latias - Healing Wish - Level 70
  (380, 38000, 361, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Latias - Psycho Shift - Level 75
  (380, 38000, 375, 18, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Latias - Fly - TM06
  (380, 38000, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 18),
  -- Latias - Hyper Beam - TM08
  (380, 38000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Latias - Giga Impact - TM09
  (380, 38000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Latias - Solar Beam - TM11
  (380, 38000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 21),
  -- Latias - Thunder Wave - TM14
  (380, 38000, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 22),
  -- Latias - Light Screen - TM17
  (380, 38000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 23),
  -- Latias - Reflect - TM18
  (380, 38000, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 24),
  -- Latias - Safeguard - TM19
  (380, 38000, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 25),
  -- Latias - Rest - TM21
  (380, 38000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Latias - Snore - TM24
  (380, 38000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Latias - Protect - TM25
  (380, 38000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Latias - Icy Wind - TM27
  (380, 38000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 29),
  -- Latias - Charm - TM29
  (380, 38000, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 30),
  -- Latias - Steel Wing - TM30
  (380, 38000, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 31),
  -- Latias - Attract - TM31
  (380, 38000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Latias - Sandstorm - TM32
  (380, 38000, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 33),
  -- Latias - Rain Dance - TM33
  (380, 38000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 34),
  -- Latias - Sunny Day - TM34
  (380, 38000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Latias - Whirlpool - TM36
  (380, 38000, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 36),
  -- Latias - Facade - TM39
  (380, 38000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 37),
  -- Latias - Swift - TM40
  (380, 38000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 38),
  -- Latias - Helping Hand - TM41
  (380, 38000, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 39),
  -- Latias - Dive - TM45
  (380, 38000, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 40),
  -- Latias - Shadow Claw - TM65
  (380, 38000, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 41),
  -- Latias - Psycho Cut - TM69
  (380, 38000, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 42),
  -- Latias - Magic Room - TM72
  (380, 38000, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 43),
  -- Latias - Round - TM76
  (380, 38000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 44),
  -- Latias - Retaliate - TM79
  (380, 38000, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 45),
  -- Latias - Bulldoze - TM81
  (380, 38000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 46),
  -- Latias - Mystical Fire - TM92
  (380, 38000, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 47),
  -- Latias - Air Slash - TM95
  (380, 38000, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 48),
  -- Latias - Breaking Swipe - TM99
  (380, 38000, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 49),
  -- Latias - Body Slam - TR01
  (380, 38000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 50),
  -- Latias - Surf - TR04
  (380, 38000, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 51),
  -- Latias - Ice Beam - TR05
  (380, 38000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 52),
  -- Latias - Thunderbolt - TR08
  (380, 38000, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 53),
  -- Latias - Thunder - TR09
  (380, 38000, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 54),
  -- Latias - Earthquake - TR10
  (380, 38000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 55),
  -- Latias - Psychic - TR11
  (380, 38000, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 56),
  -- Latias - Agility - TR12
  (380, 38000, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 57),
  -- Latias - Waterfall - TR16
  (380, 38000, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 58),
  -- Latias - Tri Attack - TR19
  (380, 38000, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 59),
  -- Latias - Substitute - TR20
  (380, 38000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 60),
  -- Latias - Outrage - TR24
  (380, 38000, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 61),
  -- Latias - Psyshock - TR25
  (380, 38000, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 62),
  -- Latias - Endure - TR26
  (380, 38000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 63),
  -- Latias - Sleep Talk - TR27
  (380, 38000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 64),
  -- Latias - Baton Pass - TR29
  (380, 38000, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 65),
  -- Latias - Shadow Ball - TR33
  (380, 38000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 66),
  -- Latias - Future Sight - TR34
  (380, 38000, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 67),
  -- Latias - Trick - TR38
  (380, 38000, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 68),
  -- Latias - Dragon Claw - TR47
  (380, 38000, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 69),
  -- Latias - Calm Mind - TR49
  (380, 38000, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 70),
  -- Latias - Dragon Dance - TR51
  (380, 38000, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 71),
  -- Latias - Aura Sphere - TR56
  (380, 38000, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 72),
  -- Latias - Dragon Pulse - TR62
  (380, 38000, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 73),
  -- Latias - Energy Ball - TR65
  (380, 38000, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 74),
  -- Latias - Zen Headbutt - TR69
  (380, 38000, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 75),
  -- Latias - Grass Knot - TR77
  (380, 38000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 76),
  -- Latias - Stored Power - TR82
  (380, 38000, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 77),
  -- Latias - Ally Switch - TR83
  (380, 38000, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 78),
  -- Latias - Draco Meteor - Tutor
  (380, 38000, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 79),
  -- Latios - Dragon Dance - Level 1
  (381, 38100, 349, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Latios - Stored Power - Level 1
  (381, 38100, 500, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Latios - Helping Hand - Level 5
  (381, 38100, 270, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Latios - Recover - Level 10
  (381, 38100, 105, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Latios - Confusion - Level 15
  (381, 38100, 93, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Latios - Tailwind - Level 20
  (381, 38100, 366, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Latios - Dragon Breath - Level 25
  (381, 38100, 225, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Latios - Ally Switch - Level 30
  (381, 38100, 502, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Latios - Luster Purge - Level 35
  (381, 38100, 295, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Latios - Zen Headbutt - Level 40
  (381, 38100, 428, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Latios - Dragon Pulse - Level 45
  (381, 38100, 406, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Latios - Heal Pulse - Level 50
  (381, 38100, 505, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Latios - Simple Beam - Level 55
  (381, 38100, 493, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Latios - Psychic - Level 60
  (381, 38100, 94, 18, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Latios - Power Split - Level 65
  (381, 38100, 471, 18, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Latios - Memento - Level 70
  (381, 38100, 262, 18, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Latios - Psycho Shift - Level 75
  (381, 38100, 375, 18, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Latios - Fly - TM06
  (381, 38100, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 18),
  -- Latios - Hyper Beam - TM08
  (381, 38100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Latios - Giga Impact - TM09
  (381, 38100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Latios - Solar Beam - TM11
  (381, 38100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 21),
  -- Latios - Thunder Wave - TM14
  (381, 38100, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 22),
  -- Latios - Light Screen - TM17
  (381, 38100, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 23),
  -- Latios - Reflect - TM18
  (381, 38100, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 24),
  -- Latios - Safeguard - TM19
  (381, 38100, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 25),
  -- Latios - Rest - TM21
  (381, 38100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Latios - Snore - TM24
  (381, 38100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Latios - Protect - TM25
  (381, 38100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Latios - Icy Wind - TM27
  (381, 38100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 29),
  -- Latios - Steel Wing - TM30
  (381, 38100, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 30),
  -- Latios - Attract - TM31
  (381, 38100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 31),
  -- Latios - Sandstorm - TM32
  (381, 38100, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 32),
  -- Latios - Rain Dance - TM33
  (381, 38100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 33),
  -- Latios - Sunny Day - TM34
  (381, 38100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 34),
  -- Latios - Whirlpool - TM36
  (381, 38100, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 35),
  -- Latios - Facade - TM39
  (381, 38100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Latios - Swift - TM40
  (381, 38100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 37),
  -- Latios - Helping Hand - TM41
  (381, 38100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 38),
  -- Latios - Dive - TM45
  (381, 38100, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 39),
  -- Latios - Shadow Claw - TM65
  (381, 38100, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 40),
  -- Latios - Psycho Cut - TM69
  (381, 38100, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 41),
  -- Latios - Wonder Room - TM71
  (381, 38100, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 42),
  -- Latios - Round - TM76
  (381, 38100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 43),
  -- Latios - Retaliate - TM79
  (381, 38100, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 44),
  -- Latios - Bulldoze - TM81
  (381, 38100, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 45),
  -- Latios - Mystical Fire - TM92
  (381, 38100, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 46),
  -- Latios - Air Slash - TM95
  (381, 38100, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 47),
  -- Latios - Breaking Swipe - TM99
  (381, 38100, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 48),
  -- Latios - Body Slam - TR01
  (381, 38100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 49),
  -- Latios - Surf - TR04
  (381, 38100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 50),
  -- Latios - Ice Beam - TR05
  (381, 38100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 51),
  -- Latios - Thunderbolt - TR08
  (381, 38100, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 52),
  -- Latios - Thunder - TR09
  (381, 38100, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 53),
  -- Latios - Earthquake - TR10
  (381, 38100, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 54),
  -- Latios - Psychic - TR11
  (381, 38100, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 55),
  -- Latios - Agility - TR12
  (381, 38100, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 56),
  -- Latios - Waterfall - TR16
  (381, 38100, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 57),
  -- Latios - Tri Attack - TR19
  (381, 38100, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 58),
  -- Latios - Substitute - TR20
  (381, 38100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 59),
  -- Latios - Outrage - TR24
  (381, 38100, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 60),
  -- Latios - Psyshock - TR25
  (381, 38100, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 61),
  -- Latios - Endure - TR26
  (381, 38100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 62),
  -- Latios - Sleep Talk - TR27
  (381, 38100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 63),
  -- Latios - Baton Pass - TR29
  (381, 38100, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 64),
  -- Latios - Shadow Ball - TR33
  (381, 38100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 65),
  -- Latios - Future Sight - TR34
  (381, 38100, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 66),
  -- Latios - Trick - TR38
  (381, 38100, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 67),
  -- Latios - Dragon Claw - TR47
  (381, 38100, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 68),
  -- Latios - Calm Mind - TR49
  (381, 38100, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 69),
  -- Latios - Dragon Dance - TR51
  (381, 38100, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 70),
  -- Latios - Aura Sphere - TR56
  (381, 38100, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 71),
  -- Latios - Dragon Pulse - TR62
  (381, 38100, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 72),
  -- Latios - Energy Ball - TR65
  (381, 38100, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 73),
  -- Latios - Zen Headbutt - TR69
  (381, 38100, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 74),
  -- Latios - Grass Knot - TR77
  (381, 38100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 75),
  -- Latios - Stored Power - TR82
  (381, 38100, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 76),
  -- Latios - Ally Switch - TR83
  (381, 38100, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 77),
  -- Latios - Draco Meteor - Tutor
  (381, 38100, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 78),
  -- Kyogre - Body Slam - Level 1
  (382, 38200, 34, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyogre - Scary Face - Level 1
  (382, 38200, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kyogre - Ancient Power - Level 1
  (382, 38200, 246, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kyogre - Water Pulse - Level 1
  (382, 38200, 352, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kyogre - Aqua Tail - Level 9
  (382, 38200, 401, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Kyogre - Calm Mind - Level 18
  (382, 38200, 347, 18, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Kyogre - Muddy Water - Level 27
  (382, 38200, 330, 18, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Kyogre - Ice Beam - Level 36
  (382, 38200, 58, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Kyogre - Sheer Cold - Level 45
  (382, 38200, 329, 18, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Kyogre - Aqua Ring - Level 54
  (382, 38200, 392, 18, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Kyogre - Origin Pulse - Level 63
  (382, 38200, 618, 18, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Kyogre - Hydro Pump - Level 72
  (382, 38200, 56, 18, NULL, 1, 72, NULL, NULL, NULL, 12),
  -- Kyogre - Double-Edge - Level 81
  (382, 38200, 38, 18, NULL, 1, 81, NULL, NULL, NULL, 13),
  -- Kyogre - Water Spout - Level 90
  (382, 38200, 323, 18, NULL, 1, 90, NULL, NULL, NULL, 14),
  -- Kyogre - Hyper Beam - TM08
  (382, 38200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Kyogre - Giga Impact - TM09
  (382, 38200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Kyogre - Thunder Wave - TM14
  (382, 38200, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 17),
  -- Kyogre - Safeguard - TM19
  (382, 38200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 18),
  -- Kyogre - Rest - TM21
  (382, 38200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Kyogre - Rock Slide - TM22
  (382, 38200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Kyogre - Snore - TM24
  (382, 38200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Kyogre - Protect - TM25
  (382, 38200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Kyogre - Scary Face - TM26
  (382, 38200, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 23),
  -- Kyogre - Icy Wind - TM27
  (382, 38200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 24),
  -- Kyogre - Rain Dance - TM33
  (382, 38200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Kyogre - Hail - TM35
  (382, 38200, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 26),
  -- Kyogre - Whirlpool - TM36
  (382, 38200, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 27),
  -- Kyogre - Facade - TM39
  (382, 38200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Kyogre - Brick Break - TM43
  (382, 38200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 29),
  -- Kyogre - Dive - TM45
  (382, 38200, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 30),
  -- Kyogre - Rock Tomb - TM48
  (382, 38200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 31),
  -- Kyogre - Brine - TM55
  (382, 38200, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 32),
  -- Kyogre - Avalanche - TM64
  (382, 38200, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 33),
  -- Kyogre - Round - TM76
  (382, 38200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Kyogre - Bulldoze - TM81
  (382, 38200, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 35),
  -- Kyogre - Body Slam - TR01
  (382, 38200, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 36),
  -- Kyogre - Hydro Pump - TR03
  (382, 38200, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 37),
  -- Kyogre - Surf - TR04
  (382, 38200, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 38),
  -- Kyogre - Ice Beam - TR05
  (382, 38200, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 39),
  -- Kyogre - Blizzard - TR06
  (382, 38200, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 40),
  -- Kyogre - Thunderbolt - TR08
  (382, 38200, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 41),
  -- Kyogre - Thunder - TR09
  (382, 38200, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 42),
  -- Kyogre - Earthquake - TR10
  (382, 38200, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 43),
  -- Kyogre - Waterfall - TR16
  (382, 38200, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 44),
  -- Kyogre - Substitute - TR20
  (382, 38200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Kyogre - Endure - TR26
  (382, 38200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Kyogre - Sleep Talk - TR27
  (382, 38200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Kyogre - Uproar - TR35
  (382, 38200, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 48),
  -- Kyogre - Muddy Water - TR45
  (382, 38200, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 49),
  -- Kyogre - Calm Mind - TR49
  (382, 38200, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 50),
  -- Kyogre - Iron Head - TR74
  (382, 38200, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 51),
  -- Kyogre - Heavy Slam - TR79
  (382, 38200, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 52),
  -- Kyogre - Scald - TR84
  (382, 38200, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 53),
  -- Kyogre - Liquidation - TR98
  (382, 38200, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 54),
  -- Groudon - Scary Face - Level 1
  (383, 38300, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Groudon - Ancient Power - Level 1
  (383, 38300, 246, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Groudon - Mud Shot - Level 1
  (383, 38300, 341, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Groudon - Lava Plume - Level 1
  (383, 38300, 436, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Groudon - Earth Power - Level 9
  (383, 38300, 414, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Groudon - Bulk Up - Level 18
  (383, 38300, 339, 18, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Groudon - Earthquake - Level 27
  (383, 38300, 89, 18, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Groudon - Hammer Arm - Level 36
  (383, 38300, 359, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Groudon - Fissure - Level 45
  (383, 38300, 90, 18, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Groudon - Rest - Level 54
  (383, 38300, 156, 18, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Groudon - Precipice Blades - Level 63
  (383, 38300, 619, 18, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Groudon - Fire Blast - Level 72
  (383, 38300, 126, 18, NULL, 1, 72, NULL, NULL, NULL, 12),
  -- Groudon - Solar Beam - Level 81
  (383, 38300, 76, 18, NULL, 1, 81, NULL, NULL, NULL, 13),
  -- Groudon - Eruption - Level 90
  (383, 38300, 284, 18, NULL, 1, 90, NULL, NULL, NULL, 14),
  -- Groudon - Mega Punch - TM00
  (383, 38300, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Groudon - Mega Kick - TM01
  (383, 38300, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Groudon - Fire Punch - TM03
  (383, 38300, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 17),
  -- Groudon - Thunder Punch - TM05
  (383, 38300, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 18),
  -- Groudon - Hyper Beam - TM08
  (383, 38300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Groudon - Giga Impact - TM09
  (383, 38300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Groudon - Solar Beam - TM11
  (383, 38300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 21),
  -- Groudon - Thunder Wave - TM14
  (383, 38300, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 22),
  -- Groudon - Dig - TM15
  (383, 38300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 23),
  -- Groudon - Safeguard - TM19
  (383, 38300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Groudon - Rest - TM21
  (383, 38300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Groudon - Rock Slide - TM22
  (383, 38300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Groudon - Snore - TM24
  (383, 38300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Groudon - Protect - TM25
  (383, 38300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Groudon - Scary Face - TM26
  (383, 38300, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 29),
  -- Groudon - Sandstorm - TM32
  (383, 38300, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 30),
  -- Groudon - Sunny Day - TM34
  (383, 38300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Groudon - Facade - TM39
  (383, 38300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Groudon - Brick Break - TM43
  (383, 38300, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 33),
  -- Groudon - Rock Tomb - TM48
  (383, 38300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 34),
  -- Groudon - Mud Shot - TM53
  (383, 38300, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 35),
  -- Groudon - Fling - TM59
  (383, 38300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Groudon - Shadow Claw - TM65
  (383, 38300, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 37),
  -- Groudon - Round - TM76
  (383, 38300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Groudon - Bulldoze - TM81
  (383, 38300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 39),
  -- Groudon - Brutal Swing - TM97
  (383, 38300, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 40),
  -- Groudon - Stomping Tantrum - TM98
  (383, 38300, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 41),
  -- Groudon - Swords Dance - TR00
  (383, 38300, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 42),
  -- Groudon - Body Slam - TR01
  (383, 38300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 43),
  -- Groudon - Flamethrower - TR02
  (383, 38300, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 44),
  -- Groudon - Thunderbolt - TR08
  (383, 38300, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 45),
  -- Groudon - Thunder - TR09
  (383, 38300, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 46),
  -- Groudon - Earthquake - TR10
  (383, 38300, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 47),
  -- Groudon - Fire Blast - TR15
  (383, 38300, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 48),
  -- Groudon - Substitute - TR20
  (383, 38300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Groudon - Endure - TR26
  (383, 38300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Groudon - Sleep Talk - TR27
  (383, 38300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Groudon - Iron Tail - TR31
  (383, 38300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 52),
  -- Groudon - Uproar - TR35
  (383, 38300, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 53),
  -- Groudon - Overheat - TR43
  (383, 38300, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 54),
  -- Groudon - Dragon Claw - TR47
  (383, 38300, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 55),
  -- Groudon - Bulk Up - TR48
  (383, 38300, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 56),
  -- Groudon - Dragon Pulse - TR62
  (383, 38300, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 57),
  -- Groudon - Focus Blast - TR64
  (383, 38300, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 58),
  -- Groudon - Earth Power - TR67
  (383, 38300, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 59),
  -- Groudon - Iron Head - TR74
  (383, 38300, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 60),
  -- Groudon - Stone Edge - TR75
  (383, 38300, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 61),
  -- Groudon - Stealth Rock - TR76
  (383, 38300, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 62),
  -- Groudon - Heavy Slam - TR79
  (383, 38300, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 63),
  -- Groudon - Heat Crash - TR88
  (383, 38300, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 64),
  -- Groudon - High Horsepower - TR94
  (383, 38300, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 65),
  -- Rayquaza - Scary Face - Level 1
  (384, 38400, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rayquaza - Twister - Level 1
  (384, 38400, 239, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rayquaza - Ancient Power - Level 1
  (384, 38400, 246, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rayquaza - Air Slash - Level 1
  (384, 38400, 403, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rayquaza - Dragon Ascent - Level 1
  (384, 38400, 620, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rayquaza - Crunch - Level 9
  (384, 38400, 242, 18, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Rayquaza - Dragon Dance - Level 18
  (384, 38400, 349, 18, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Rayquaza - Extreme Speed - Level 27
  (384, 38400, 245, 18, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Rayquaza - Dragon Pulse - Level 36
  (384, 38400, 406, 18, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Rayquaza - Hyper Voice - Level 45
  (384, 38400, 304, 18, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Rayquaza - Rest - Level 54
  (384, 38400, 156, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Rayquaza - Fly - Level 63
  (384, 38400, 19, 18, NULL, 1, 63, NULL, NULL, NULL, 12),
  -- Rayquaza - Hurricane - Level 72
  (384, 38400, 542, 18, NULL, 1, 72, NULL, NULL, NULL, 13),
  -- Rayquaza - Outrage - Level 81
  (384, 38400, 200, 18, NULL, 1, 81, NULL, NULL, NULL, 14),
  -- Rayquaza - Hyper Beam - Level 90
  (384, 38400, 63, 18, NULL, 1, 90, NULL, NULL, NULL, 15),
  -- Rayquaza - Fly - TM06
  (384, 38400, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 16),
  -- Rayquaza - Hyper Beam - TM08
  (384, 38400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Rayquaza - Giga Impact - TM09
  (384, 38400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Rayquaza - Solar Beam - TM11
  (384, 38400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 19),
  -- Rayquaza - Thunder Wave - TM14
  (384, 38400, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 20),
  -- Rayquaza - Rest - TM21
  (384, 38400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Rayquaza - Rock Slide - TM22
  (384, 38400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Rayquaza - Snore - TM24
  (384, 38400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Rayquaza - Protect - TM25
  (384, 38400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Rayquaza - Scary Face - TM26
  (384, 38400, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Rayquaza - Icy Wind - TM27
  (384, 38400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 26),
  -- Rayquaza - Sandstorm - TM32
  (384, 38400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 27),
  -- Rayquaza - Rain Dance - TM33
  (384, 38400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Rayquaza - Sunny Day - TM34
  (384, 38400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Rayquaza - Whirlpool - TM36
  (384, 38400, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 30),
  -- Rayquaza - Facade - TM39
  (384, 38400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Rayquaza - Swift - TM40
  (384, 38400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 32),
  -- Rayquaza - Brick Break - TM43
  (384, 38400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 33),
  -- Rayquaza - Dive - TM45
  (384, 38400, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 34),
  -- Rayquaza - Rock Tomb - TM48
  (384, 38400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 35),
  -- Rayquaza - Fling - TM59
  (384, 38400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Rayquaza - Avalanche - TM64
  (384, 38400, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 37),
  -- Rayquaza - Shadow Claw - TM65
  (384, 38400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 38),
  -- Rayquaza - Round - TM76
  (384, 38400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Rayquaza - Bulldoze - TM81
  (384, 38400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 40),
  -- Rayquaza - Air Slash - TM95
  (384, 38400, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 41),
  -- Rayquaza - Brutal Swing - TM97
  (384, 38400, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 42),
  -- Rayquaza - Breaking Swipe - TM99
  (384, 38400, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 43),
  -- Rayquaza - Swords Dance - TR00
  (384, 38400, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 44),
  -- Rayquaza - Body Slam - TR01
  (384, 38400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 45),
  -- Rayquaza - Flamethrower - TR02
  (384, 38400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 46),
  -- Rayquaza - Hydro Pump - TR03
  (384, 38400, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 47),
  -- Rayquaza - Surf - TR04
  (384, 38400, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 48),
  -- Rayquaza - Ice Beam - TR05
  (384, 38400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 49),
  -- Rayquaza - Blizzard - TR06
  (384, 38400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 50),
  -- Rayquaza - Thunderbolt - TR08
  (384, 38400, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 51),
  -- Rayquaza - Thunder - TR09
  (384, 38400, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 52),
  -- Rayquaza - Earthquake - TR10
  (384, 38400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 53),
  -- Rayquaza - Fire Blast - TR15
  (384, 38400, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 54),
  -- Rayquaza - Waterfall - TR16
  (384, 38400, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 55),
  -- Rayquaza - Substitute - TR20
  (384, 38400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 56),
  -- Rayquaza - Outrage - TR24
  (384, 38400, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 57),
  -- Rayquaza - Endure - TR26
  (384, 38400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 58),
  -- Rayquaza - Sleep Talk - TR27
  (384, 38400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 59),
  -- Rayquaza - Iron Tail - TR31
  (384, 38400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 60),
  -- Rayquaza - Crunch - TR32
  (384, 38400, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 61),
  -- Rayquaza - Uproar - TR35
  (384, 38400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 62),
  -- Rayquaza - Hyper Voice - TR42
  (384, 38400, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 63),
  -- Rayquaza - Overheat - TR43
  (384, 38400, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 64),
  -- Rayquaza - Cosmic Power - TR44
  (384, 38400, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 65),
  -- Rayquaza - Dragon Claw - TR47
  (384, 38400, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 66),
  -- Rayquaza - Bulk Up - TR48
  (384, 38400, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 67),
  -- Rayquaza - Dragon Dance - TR51
  (384, 38400, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 68),
  -- Rayquaza - Gyro Ball - TR52
  (384, 38400, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 69),
  -- Rayquaza - Dragon Pulse - TR62
  (384, 38400, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 70),
  -- Rayquaza - Focus Blast - TR64
  (384, 38400, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 71),
  -- Rayquaza - Energy Ball - TR65
  (384, 38400, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 72),
  -- Rayquaza - Earth Power - TR67
  (384, 38400, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 73),
  -- Rayquaza - Iron Head - TR74
  (384, 38400, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 74),
  -- Rayquaza - Stone Edge - TR75
  (384, 38400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 75),
  -- Rayquaza - Hurricane - TR89
  (384, 38400, 542, 18, NULL, 4, NULL, NULL, 18004089, NULL, 76),
  -- Rayquaza - Draco Meteor - Tutor
  (384, 38400, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 77),
  -- Jirachi - Confusion - Level 1
  (385, 38500, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jirachi - Wish - Level 1
  (385, 38500, 273, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jirachi - Swift - Level 7
  (385, 38500, 129, 18, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Jirachi - Helping Hand - Level 14
  (385, 38500, 270, 18, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Jirachi - Life Dew - Level 21
  (385, 38500, 791, 18, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Jirachi - Zen Headbutt - Level 28
  (385, 38500, 428, 18, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Jirachi - Gravity - Level 35
  (385, 38500, 356, 18, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Jirachi - Psychic - Level 42
  (385, 38500, 94, 18, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Jirachi - Meteor Mash - Level 49
  (385, 38500, 309, 18, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Jirachi - Healing Wish - Level 56
  (385, 38500, 361, 18, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Jirachi - Rest - Level 63
  (385, 38500, 156, 18, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Jirachi - Future Sight - Level 70
  (385, 38500, 248, 18, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Jirachi - Double-Edge - Level 77
  (385, 38500, 38, 18, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Jirachi - Cosmic Power - Level 84
  (385, 38500, 322, 18, NULL, 1, 84, NULL, NULL, NULL, 14),
  -- Jirachi - Last Resort - Level 91
  (385, 38500, 387, 18, NULL, 1, 91, NULL, NULL, NULL, 15),
  -- Jirachi - Doom Desire - Level 98
  (385, 38500, 353, 18, NULL, 1, 98, NULL, NULL, NULL, 16),
  -- Jirachi - Mega Punch - TM00
  (385, 38500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Jirachi - Mega Kick - TM01
  (385, 38500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Jirachi - Fire Punch - TM03
  (385, 38500, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 19),
  -- Jirachi - Ice Punch - TM04
  (385, 38500, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 20),
  -- Jirachi - Thunder Punch - TM05
  (385, 38500, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 21),
  -- Jirachi - Hyper Beam - TM08
  (385, 38500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 22),
  -- Jirachi - Giga Impact - TM09
  (385, 38500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 23),
  -- Jirachi - Thunder Wave - TM14
  (385, 38500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 24),
  -- Jirachi - Light Screen - TM17
  (385, 38500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 25),
  -- Jirachi - Reflect - TM18
  (385, 38500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 26),
  -- Jirachi - Safeguard - TM19
  (385, 38500, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 27),
  -- Jirachi - Rest - TM21
  (385, 38500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 28),
  -- Jirachi - Snore - TM24
  (385, 38500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Jirachi - Protect - TM25
  (385, 38500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Jirachi - Icy Wind - TM27
  (385, 38500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 31),
  -- Jirachi - Charm - TM29
  (385, 38500, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 32),
  -- Jirachi - Sandstorm - TM32
  (385, 38500, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 33),
  -- Jirachi - Rain Dance - TM33
  (385, 38500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 34),
  -- Jirachi - Sunny Day - TM34
  (385, 38500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Jirachi - Facade - TM39
  (385, 38500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Jirachi - Swift - TM40
  (385, 38500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 37),
  -- Jirachi - Helping Hand - TM41
  (385, 38500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 38),
  -- Jirachi - Imprison - TM44
  (385, 38500, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 39),
  -- Jirachi - U-turn - TM56
  (385, 38500, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 40),
  -- Jirachi - Fling - TM59
  (385, 38500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 41),
  -- Jirachi - Drain Punch - TM63
  (385, 38500, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 42),
  -- Jirachi - Trick Room - TM70
  (385, 38500, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 43),
  -- Jirachi - Magic Room - TM72
  (385, 38500, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 44),
  -- Jirachi - Round - TM76
  (385, 38500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Jirachi - Body Slam - TR01
  (385, 38500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 46),
  -- Jirachi - Thunderbolt - TR08
  (385, 38500, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 47),
  -- Jirachi - Thunder - TR09
  (385, 38500, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 48),
  -- Jirachi - Psychic - TR11
  (385, 38500, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 49),
  -- Jirachi - Metronome - TR14
  (385, 38500, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 50),
  -- Jirachi - Amnesia - TR17
  (385, 38500, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 51),
  -- Jirachi - Substitute - TR20
  (385, 38500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 52),
  -- Jirachi - Psyshock - TR25
  (385, 38500, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 53),
  -- Jirachi - Endure - TR26
  (385, 38500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Jirachi - Sleep Talk - TR27
  (385, 38500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Jirachi - Baton Pass - TR29
  (385, 38500, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 56),
  -- Jirachi - Encore - TR30
  (385, 38500, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 57),
  -- Jirachi - Shadow Ball - TR33
  (385, 38500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 58),
  -- Jirachi - Future Sight - TR34
  (385, 38500, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 59),
  -- Jirachi - Uproar - TR35
  (385, 38500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 60),
  -- Jirachi - Trick - TR38
  (385, 38500, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 61),
  -- Jirachi - Skill Swap - TR40
  (385, 38500, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 62),
  -- Jirachi - Cosmic Power - TR44
  (385, 38500, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 63),
  -- Jirachi - Iron Defense - TR46
  (385, 38500, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 64),
  -- Jirachi - Calm Mind - TR49
  (385, 38500, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 65),
  -- Jirachi - Aura Sphere - TR56
  (385, 38500, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 66),
  -- Jirachi - Energy Ball - TR65
  (385, 38500, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 67),
  -- Jirachi - Zen Headbutt - TR69
  (385, 38500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Jirachi - Flash Cannon - TR70
  (385, 38500, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 69),
  -- Jirachi - Iron Head - TR74
  (385, 38500, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 70),
  -- Jirachi - Stealth Rock - TR76
  (385, 38500, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 71),
  -- Jirachi - Grass Knot - TR77
  (385, 38500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 72),
  -- Jirachi - Stored Power - TR82
  (385, 38500, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 73),
  -- Jirachi - Ally Switch - TR83
  (385, 38500, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 74),
  -- Jirachi - Play Rough - TR90
  (385, 38500, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 75),
  -- Jirachi - Dazzling Gleam - TR92
  (385, 38500, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 76),
  -- Jirachi - Steel Beam - Tutor
  (385, 38500, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 77);

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
  -- Dusclops - Haze - Egg
  (356, 35600, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Dusclops - Pain Split - Egg
  (356, 35600, 220, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Dusclops - Memento - Egg
  (356, 35600, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Dusclops - Grudge - Egg
  (356, 35600, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Glalie - Disable - Egg
  (362, 36200, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Glalie - Rollout - Egg
  (362, 36200, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Glalie - Block - Egg
  (362, 36200, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Glalie - Switcheroo - Egg
  (362, 36200, 415, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Glalie - Icicle Crash - Egg
  (362, 36200, 556, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sealeo - Fissure - Egg
  (364, 36400, 90, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Sealeo - Curse - Egg
  (364, 36400, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Sealeo - Belly Drum - Egg
  (364, 36400, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Sealeo - Stockpile - Egg
  (364, 36400, 254, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Sealeo - Spit Up - Egg
  (364, 36400, 255, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Sealeo - Swallow - Egg
  (364, 36400, 256, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Sealeo - Yawn - Egg
  (364, 36400, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Sealeo - Water Pulse - Egg
  (364, 36400, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Sealeo - Aqua Ring - Egg
  (364, 36400, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Walrein - Fissure - Egg
  (365, 36500, 90, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Walrein - Curse - Egg
  (365, 36500, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Walrein - Belly Drum - Egg
  (365, 36500, 187, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Walrein - Stockpile - Egg
  (365, 36500, 254, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Walrein - Spit Up - Egg
  (365, 36500, 255, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Walrein - Swallow - Egg
  (365, 36500, 256, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Walrein - Yawn - Egg
  (365, 36500, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Walrein - Water Pulse - Egg
  (365, 36500, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Walrein - Aqua Ring - Egg
  (365, 36500, 392, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Shelgon - Thrash - Egg
  (372, 37200, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shelgon - Defense Curl - Egg
  (372, 37200, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Shelgon - Twister - Egg
  (372, 37200, 239, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shelgon - Dragon Rush - Egg
  (372, 37200, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Salamence - Thrash - Egg
  (373, 37300, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Salamence - Defense Curl - Egg
  (373, 37300, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Salamence - Twister - Egg
  (373, 37300, 239, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Salamence - Dragon Rush - Egg
  (373, 37300, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 67);
