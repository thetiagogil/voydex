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
-- Sword / Shield learnsets for default forms, species 551-600.
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
  -- Sandile - Leer - Level 1
  (551, 55100, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandile - Power Trip - Level 1
  (551, 55100, 681, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandile - Sand Attack - Level 3
  (551, 55100, 28, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Sandile - Hone Claws - Level 6
  (551, 55100, 468, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Sandile - Sand Tomb - Level 9
  (551, 55100, 328, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Sandile - Scary Face - Level 12
  (551, 55100, 184, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Sandile - Bite - Level 15
  (551, 55100, 44, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Sandile - Torment - Level 18
  (551, 55100, 259, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Sandile - Dig - Level 21
  (551, 55100, 91, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Sandile - Swagger - Level 24
  (551, 55100, 207, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Sandile - Crunch - Level 27
  (551, 55100, 242, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Sandile - Sandstorm - Level 30
  (551, 55100, 201, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Sandile - Foul Play - Level 33
  (551, 55100, 492, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Sandile - Earthquake - Level 36
  (551, 55100, 89, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Sandile - Thrash - Level 39
  (551, 55100, 37, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Sandile - Dig - TM15
  (551, 55100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 16),
  -- Sandile - Rest - TM21
  (551, 55100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Sandile - Rock Slide - TM22
  (551, 55100, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 18),
  -- Sandile - Thief - TM23
  (551, 55100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 19),
  -- Sandile - Snore - TM24
  (551, 55100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Sandile - Protect - TM25
  (551, 55100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Sandile - Scary Face - TM26
  (551, 55100, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 22),
  -- Sandile - Attract - TM31
  (551, 55100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Sandile - Sandstorm - TM32
  (551, 55100, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 24),
  -- Sandile - Beat Up - TM37
  (551, 55100, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 25),
  -- Sandile - Facade - TM39
  (551, 55100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Sandile - Rock Tomb - TM48
  (551, 55100, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Sandile - Sand Tomb - TM49
  (551, 55100, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 28),
  -- Sandile - Payback - TM57
  (551, 55100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 29),
  -- Sandile - Assurance - TM58
  (551, 55100, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 30),
  -- Sandile - Thunder Fang - TM66
  (551, 55100, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 31),
  -- Sandile - Fire Fang - TM68
  (551, 55100, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 32),
  -- Sandile - Round - TM76
  (551, 55100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Sandile - Retaliate - TM79
  (551, 55100, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 34),
  -- Sandile - Bulldoze - TM81
  (551, 55100, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 35),
  -- Sandile - Snarl - TM85
  (551, 55100, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 36),
  -- Sandile - Earthquake - TR10
  (551, 55100, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 37),
  -- Sandile - Focus Energy - TR13
  (551, 55100, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 38),
  -- Sandile - Substitute - TR20
  (551, 55100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Sandile - Sludge Bomb - TR22
  (551, 55100, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 40),
  -- Sandile - Endure - TR26
  (551, 55100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Sandile - Sleep Talk - TR27
  (551, 55100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Sandile - Iron Tail - TR31
  (551, 55100, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 43),
  -- Sandile - Crunch - TR32
  (551, 55100, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 44),
  -- Sandile - Uproar - TR35
  (551, 55100, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 45),
  -- Sandile - Taunt - TR37
  (551, 55100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 46),
  -- Sandile - Dark Pulse - TR58
  (551, 55100, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 47),
  -- Sandile - Earth Power - TR67
  (551, 55100, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 48),
  -- Sandile - Stone Edge - TR75
  (551, 55100, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 49),
  -- Sandile - Stealth Rock - TR76
  (551, 55100, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 50),
  -- Sandile - Foul Play - TR81
  (551, 55100, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 51),
  -- Sandile - Double-Edge - Egg
  (551, 55100, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Sandile - Counter - Egg
  (551, 55100, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sandile - Spite - Egg
  (551, 55100, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sandile - Aqua Tail - Egg
  (551, 55100, 401, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Krokorok - Sand Attack - Level 1
  (552, 55200, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krokorok - Leer - Level 1
  (552, 55200, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Krokorok - Hone Claws - Level 1
  (552, 55200, 468, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Krokorok - Power Trip - Level 1
  (552, 55200, 681, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Krokorok - Sand Tomb - Level 9
  (552, 55200, 328, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Krokorok - Scary Face - Level 12
  (552, 55200, 184, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Krokorok - Bite - Level 15
  (552, 55200, 44, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Krokorok - Torment - Level 18
  (552, 55200, 259, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Krokorok - Dig - Level 21
  (552, 55200, 91, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Krokorok - Swagger - Level 24
  (552, 55200, 207, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Krokorok - Crunch - Level 27
  (552, 55200, 242, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Krokorok - Sandstorm - Level 32
  (552, 55200, 201, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Krokorok - Foul Play - Level 35
  (552, 55200, 492, 18, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Krokorok - Earthquake - Level 42
  (552, 55200, 89, 18, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Krokorok - Thrash - Level 47
  (552, 55200, 37, 18, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Krokorok - Mega Punch - TM00
  (552, 55200, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Krokorok - Mega Kick - TM01
  (552, 55200, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Krokorok - Dig - TM15
  (552, 55200, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Krokorok - Rest - TM21
  (552, 55200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Krokorok - Rock Slide - TM22
  (552, 55200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Krokorok - Thief - TM23
  (552, 55200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Krokorok - Snore - TM24
  (552, 55200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Krokorok - Protect - TM25
  (552, 55200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Krokorok - Scary Face - TM26
  (552, 55200, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 24),
  -- Krokorok - Attract - TM31
  (552, 55200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Krokorok - Sandstorm - TM32
  (552, 55200, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 26),
  -- Krokorok - Beat Up - TM37
  (552, 55200, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 27),
  -- Krokorok - Facade - TM39
  (552, 55200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Krokorok - Revenge - TM42
  (552, 55200, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 29),
  -- Krokorok - Brick Break - TM43
  (552, 55200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 30),
  -- Krokorok - Rock Tomb - TM48
  (552, 55200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 31),
  -- Krokorok - Sand Tomb - TM49
  (552, 55200, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 32),
  -- Krokorok - Payback - TM57
  (552, 55200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 33),
  -- Krokorok - Assurance - TM58
  (552, 55200, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 34),
  -- Krokorok - Fling - TM59
  (552, 55200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Krokorok - Shadow Claw - TM65
  (552, 55200, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 36),
  -- Krokorok - Thunder Fang - TM66
  (552, 55200, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 37),
  -- Krokorok - Fire Fang - TM68
  (552, 55200, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 38),
  -- Krokorok - Low Sweep - TM75
  (552, 55200, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 39),
  -- Krokorok - Round - TM76
  (552, 55200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Krokorok - Retaliate - TM79
  (552, 55200, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 41),
  -- Krokorok - Bulldoze - TM81
  (552, 55200, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 42),
  -- Krokorok - Snarl - TM85
  (552, 55200, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 43),
  -- Krokorok - Brutal Swing - TM97
  (552, 55200, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 44),
  -- Krokorok - Stomping Tantrum - TM98
  (552, 55200, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 45),
  -- Krokorok - Low Kick - TR07
  (552, 55200, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 46),
  -- Krokorok - Earthquake - TR10
  (552, 55200, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 47),
  -- Krokorok - Focus Energy - TR13
  (552, 55200, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 48),
  -- Krokorok - Substitute - TR20
  (552, 55200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Krokorok - Sludge Bomb - TR22
  (552, 55200, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 50),
  -- Krokorok - Endure - TR26
  (552, 55200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 51),
  -- Krokorok - Sleep Talk - TR27
  (552, 55200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 52),
  -- Krokorok - Iron Tail - TR31
  (552, 55200, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 53),
  -- Krokorok - Crunch - TR32
  (552, 55200, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 54),
  -- Krokorok - Uproar - TR35
  (552, 55200, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 55),
  -- Krokorok - Taunt - TR37
  (552, 55200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 56),
  -- Krokorok - Dark Pulse - TR58
  (552, 55200, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 57),
  -- Krokorok - Earth Power - TR67
  (552, 55200, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 58),
  -- Krokorok - Stone Edge - TR75
  (552, 55200, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 59),
  -- Krokorok - Stealth Rock - TR76
  (552, 55200, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 60),
  -- Krokorok - Grass Knot - TR77
  (552, 55200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 61),
  -- Krokorok - Foul Play - TR81
  (552, 55200, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 62),
  -- Krookodile - Sand Attack - Level 1
  (553, 55300, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krookodile - Leer - Level 1
  (553, 55300, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Krookodile - Hone Claws - Level 1
  (553, 55300, 468, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Krookodile - Power Trip - Level 1
  (553, 55300, 681, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Krookodile - Sand Tomb - Level 9
  (553, 55300, 328, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Krookodile - Scary Face - Level 12
  (553, 55300, 184, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Krookodile - Bite - Level 15
  (553, 55300, 44, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Krookodile - Torment - Level 18
  (553, 55300, 259, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Krookodile - Dig - Level 21
  (553, 55300, 91, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Krookodile - Swagger - Level 24
  (553, 55300, 207, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Krookodile - Crunch - Level 27
  (553, 55300, 242, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Krookodile - Sandstorm - Level 32
  (553, 55300, 201, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Krookodile - Foul Play - Level 35
  (553, 55300, 492, 18, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Krookodile - Earthquake - Level 44
  (553, 55300, 89, 18, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Krookodile - Thrash - Level 51
  (553, 55300, 37, 18, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Krookodile - Outrage - Level 58
  (553, 55300, 200, 18, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Krookodile - Mega Punch - TM00
  (553, 55300, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Krookodile - Mega Kick - TM01
  (553, 55300, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Krookodile - Hyper Beam - TM08
  (553, 55300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Krookodile - Giga Impact - TM09
  (553, 55300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Krookodile - Dig - TM15
  (553, 55300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Krookodile - Rest - TM21
  (553, 55300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Krookodile - Rock Slide - TM22
  (553, 55300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Krookodile - Thief - TM23
  (553, 55300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Krookodile - Snore - TM24
  (553, 55300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Krookodile - Protect - TM25
  (553, 55300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Krookodile - Scary Face - TM26
  (553, 55300, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 27),
  -- Krookodile - Attract - TM31
  (553, 55300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Krookodile - Sandstorm - TM32
  (553, 55300, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 29),
  -- Krookodile - Beat Up - TM37
  (553, 55300, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 30),
  -- Krookodile - Facade - TM39
  (553, 55300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Krookodile - Revenge - TM42
  (553, 55300, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 32),
  -- Krookodile - Brick Break - TM43
  (553, 55300, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 33),
  -- Krookodile - Rock Tomb - TM48
  (553, 55300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 34),
  -- Krookodile - Sand Tomb - TM49
  (553, 55300, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 35),
  -- Krookodile - Payback - TM57
  (553, 55300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 36),
  -- Krookodile - Assurance - TM58
  (553, 55300, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 37),
  -- Krookodile - Fling - TM59
  (553, 55300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Krookodile - Shadow Claw - TM65
  (553, 55300, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 39),
  -- Krookodile - Thunder Fang - TM66
  (553, 55300, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 40),
  -- Krookodile - Fire Fang - TM68
  (553, 55300, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 41),
  -- Krookodile - Low Sweep - TM75
  (553, 55300, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 42),
  -- Krookodile - Round - TM76
  (553, 55300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 43),
  -- Krookodile - Retaliate - TM79
  (553, 55300, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 44),
  -- Krookodile - Bulldoze - TM81
  (553, 55300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 45),
  -- Krookodile - Snarl - TM85
  (553, 55300, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 46),
  -- Krookodile - Brutal Swing - TM97
  (553, 55300, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 47),
  -- Krookodile - Stomping Tantrum - TM98
  (553, 55300, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 48),
  -- Krookodile - Body Slam - TR01
  (553, 55300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 49),
  -- Krookodile - Low Kick - TR07
  (553, 55300, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 50),
  -- Krookodile - Earthquake - TR10
  (553, 55300, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 51),
  -- Krookodile - Focus Energy - TR13
  (553, 55300, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 52),
  -- Krookodile - Substitute - TR20
  (553, 55300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 53),
  -- Krookodile - Sludge Bomb - TR22
  (553, 55300, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 54),
  -- Krookodile - Outrage - TR24
  (553, 55300, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 55),
  -- Krookodile - Endure - TR26
  (553, 55300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 56),
  -- Krookodile - Sleep Talk - TR27
  (553, 55300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 57),
  -- Krookodile - Iron Tail - TR31
  (553, 55300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 58),
  -- Krookodile - Crunch - TR32
  (553, 55300, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 59),
  -- Krookodile - Uproar - TR35
  (553, 55300, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 60),
  -- Krookodile - Taunt - TR37
  (553, 55300, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 61),
  -- Krookodile - Superpower - TR39
  (553, 55300, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 62),
  -- Krookodile - Dragon Claw - TR47
  (553, 55300, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 63),
  -- Krookodile - Bulk Up - TR48
  (553, 55300, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 64),
  -- Krookodile - Close Combat - TR53
  (553, 55300, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 65),
  -- Krookodile - Dark Pulse - TR58
  (553, 55300, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 66),
  -- Krookodile - Dragon Pulse - TR62
  (553, 55300, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 67),
  -- Krookodile - Focus Blast - TR64
  (553, 55300, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 68),
  -- Krookodile - Earth Power - TR67
  (553, 55300, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 69),
  -- Krookodile - Stone Edge - TR75
  (553, 55300, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 70),
  -- Krookodile - Stealth Rock - TR76
  (553, 55300, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 71),
  -- Krookodile - Grass Knot - TR77
  (553, 55300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 72),
  -- Krookodile - Foul Play - TR81
  (553, 55300, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 73),
  -- Krookodile - Darkest Lariat - TR93
  (553, 55300, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 74),
  -- Krookodile - High Horsepower - TR94
  (553, 55300, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 75),
  -- Krookodile - Throat Chop - TR95
  (553, 55300, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 76),
  -- Darumaka - Tackle - Level 1
  (554, 55400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Darumaka - Ember - Level 1
  (554, 55400, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Darumaka - Taunt - Level 4
  (554, 55400, 269, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Darumaka - Bite - Level 8
  (554, 55400, 44, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Darumaka - Incinerate - Level 12
  (554, 55400, 510, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Darumaka - Work Up - Level 16
  (554, 55400, 526, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Darumaka - Fire Fang - Level 20
  (554, 55400, 424, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Darumaka - Headbutt - Level 24
  (554, 55400, 29, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Darumaka - Fire Punch - Level 28
  (554, 55400, 7, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Darumaka - Uproar - Level 32
  (554, 55400, 253, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Darumaka - Belly Drum - Level 36
  (554, 55400, 187, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Darumaka - Flare Blitz - Level 40
  (554, 55400, 394, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Darumaka - Thrash - Level 44
  (554, 55400, 37, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Darumaka - Superpower - Level 48
  (554, 55400, 276, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Darumaka - Mega Punch - TM00
  (554, 55400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Darumaka - Mega Kick - TM01
  (554, 55400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Darumaka - Fire Punch - TM03
  (554, 55400, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 17),
  -- Darumaka - Solar Beam - TM11
  (554, 55400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 18),
  -- Darumaka - Fire Spin - TM13
  (554, 55400, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 19),
  -- Darumaka - Dig - TM15
  (554, 55400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Darumaka - Rest - TM21
  (554, 55400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Darumaka - Rock Slide - TM22
  (554, 55400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Darumaka - Thief - TM23
  (554, 55400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Darumaka - Snore - TM24
  (554, 55400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Darumaka - Protect - TM25
  (554, 55400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Darumaka - Attract - TM31
  (554, 55400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Darumaka - Sunny Day - TM34
  (554, 55400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Darumaka - Will-O-Wisp - TM38
  (554, 55400, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 28),
  -- Darumaka - Facade - TM39
  (554, 55400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Darumaka - Brick Break - TM43
  (554, 55400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 30),
  -- Darumaka - Rock Tomb - TM48
  (554, 55400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 31),
  -- Darumaka - U-turn - TM56
  (554, 55400, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 32),
  -- Darumaka - Fling - TM59
  (554, 55400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 33),
  -- Darumaka - Fire Fang - TM68
  (554, 55400, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 34),
  -- Darumaka - Round - TM76
  (554, 55400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Darumaka - Flamethrower - TR02
  (554, 55400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 36),
  -- Darumaka - Focus Energy - TR13
  (554, 55400, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 37),
  -- Darumaka - Fire Blast - TR15
  (554, 55400, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 38),
  -- Darumaka - Substitute - TR20
  (554, 55400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Darumaka - Endure - TR26
  (554, 55400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 40),
  -- Darumaka - Sleep Talk - TR27
  (554, 55400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 41),
  -- Darumaka - Encore - TR30
  (554, 55400, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 42),
  -- Darumaka - Uproar - TR35
  (554, 55400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 43),
  -- Darumaka - Heat Wave - TR36
  (554, 55400, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 44),
  -- Darumaka - Taunt - TR37
  (554, 55400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 45),
  -- Darumaka - Superpower - TR39
  (554, 55400, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 46),
  -- Darumaka - Overheat - TR43
  (554, 55400, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 47),
  -- Darumaka - Gyro Ball - TR52
  (554, 55400, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 48),
  -- Darumaka - Flare Blitz - TR55
  (554, 55400, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 49),
  -- Darumaka - Zen Headbutt - TR69
  (554, 55400, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 50),
  -- Darumaka - Grass Knot - TR77
  (554, 55400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 51),
  -- Darumaka - Work Up - TR85
  (554, 55400, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 52),
  -- Darumaka - Take Down - Egg
  (554, 55400, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Darumaka - Flame Wheel - Egg
  (554, 55400, 172, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Darumaka - Focus Punch - Egg
  (554, 55400, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Darumaka - Yawn - Egg
  (554, 55400, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Darumaka - Extrasensory - Egg
  (554, 55400, 326, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Darumaka - Hammer Arm - Egg
  (554, 55400, 359, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Darmanitan - Tackle - Level 1
  (555, 55500, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Darmanitan - Bite - Level 1
  (555, 55500, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Darmanitan - Ember - Level 1
  (555, 55500, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Darmanitan - Taunt - Level 1
  (555, 55500, 269, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Darmanitan - Hammer Arm - Level 1
  (555, 55500, 359, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Darmanitan - Incinerate - Level 12
  (555, 55500, 510, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Darmanitan - Work Up - Level 16
  (555, 55500, 526, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Darmanitan - Fire Fang - Level 20
  (555, 55500, 424, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Darmanitan - Headbutt - Level 24
  (555, 55500, 29, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Darmanitan - Fire Punch - Level 28
  (555, 55500, 7, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Darmanitan - Uproar - Level 32
  (555, 55500, 253, 18, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Darmanitan - Belly Drum - Level 38
  (555, 55500, 187, 18, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Darmanitan - Flare Blitz - Level 44
  (555, 55500, 394, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Darmanitan - Thrash - Level 50
  (555, 55500, 37, 18, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Darmanitan - Superpower - Level 56
  (555, 55500, 276, 18, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Darmanitan - Hammer Arm - Evolution
  (555, 55500, 359, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Darmanitan - Mega Punch - TM00
  (555, 55500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Darmanitan - Mega Kick - TM01
  (555, 55500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Darmanitan - Fire Punch - TM03
  (555, 55500, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 19),
  -- Darmanitan - Hyper Beam - TM08
  (555, 55500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Darmanitan - Giga Impact - TM09
  (555, 55500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Darmanitan - Solar Beam - TM11
  (555, 55500, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Darmanitan - Fire Spin - TM13
  (555, 55500, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 23),
  -- Darmanitan - Dig - TM15
  (555, 55500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 24),
  -- Darmanitan - Rest - TM21
  (555, 55500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Darmanitan - Rock Slide - TM22
  (555, 55500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Darmanitan - Thief - TM23
  (555, 55500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 27),
  -- Darmanitan - Snore - TM24
  (555, 55500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Darmanitan - Protect - TM25
  (555, 55500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Darmanitan - Attract - TM31
  (555, 55500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Darmanitan - Sunny Day - TM34
  (555, 55500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Darmanitan - Will-O-Wisp - TM38
  (555, 55500, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 32),
  -- Darmanitan - Facade - TM39
  (555, 55500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Darmanitan - Brick Break - TM43
  (555, 55500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Darmanitan - Rock Tomb - TM48
  (555, 55500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 35),
  -- Darmanitan - U-turn - TM56
  (555, 55500, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 36),
  -- Darmanitan - Payback - TM57
  (555, 55500, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 37),
  -- Darmanitan - Fling - TM59
  (555, 55500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Darmanitan - Power Swap - TM60
  (555, 55500, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 39),
  -- Darmanitan - Guard Swap - TM61
  (555, 55500, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 40),
  -- Darmanitan - Fire Fang - TM68
  (555, 55500, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 41),
  -- Darmanitan - Round - TM76
  (555, 55500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 42),
  -- Darmanitan - Bulldoze - TM81
  (555, 55500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 43),
  -- Darmanitan - Mystical Fire - TM92
  (555, 55500, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 44),
  -- Darmanitan - Body Slam - TR01
  (555, 55500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 45),
  -- Darmanitan - Flamethrower - TR02
  (555, 55500, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 46),
  -- Darmanitan - Earthquake - TR10
  (555, 55500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 47),
  -- Darmanitan - Psychic - TR11
  (555, 55500, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 48),
  -- Darmanitan - Focus Energy - TR13
  (555, 55500, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 49),
  -- Darmanitan - Fire Blast - TR15
  (555, 55500, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 50),
  -- Darmanitan - Substitute - TR20
  (555, 55500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Darmanitan - Reversal - TR21
  (555, 55500, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 52),
  -- Darmanitan - Endure - TR26
  (555, 55500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Darmanitan - Sleep Talk - TR27
  (555, 55500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Darmanitan - Encore - TR30
  (555, 55500, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 55),
  -- Darmanitan - Future Sight - TR34
  (555, 55500, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 56),
  -- Darmanitan - Uproar - TR35
  (555, 55500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 57),
  -- Darmanitan - Heat Wave - TR36
  (555, 55500, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 58),
  -- Darmanitan - Taunt - TR37
  (555, 55500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 59),
  -- Darmanitan - Trick - TR38
  (555, 55500, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 60),
  -- Darmanitan - Superpower - TR39
  (555, 55500, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 61),
  -- Darmanitan - Overheat - TR43
  (555, 55500, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 62),
  -- Darmanitan - Iron Defense - TR46
  (555, 55500, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 63),
  -- Darmanitan - Bulk Up - TR48
  (555, 55500, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 64),
  -- Darmanitan - Gyro Ball - TR52
  (555, 55500, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 65),
  -- Darmanitan - Flare Blitz - TR55
  (555, 55500, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 66),
  -- Darmanitan - Focus Blast - TR64
  (555, 55500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 67),
  -- Darmanitan - Zen Headbutt - TR69
  (555, 55500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 68),
  -- Darmanitan - Iron Head - TR74
  (555, 55500, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 69),
  -- Darmanitan - Stone Edge - TR75
  (555, 55500, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 70),
  -- Darmanitan - Grass Knot - TR77
  (555, 55500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 71),
  -- Darmanitan - Work Up - TR85
  (555, 55500, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 72),
  -- Darmanitan - Body Press - TR99
  (555, 55500, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 73),
  -- Maractus - Peck - Level 1
  (556, 55600, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Maractus - Absorb - Level 1
  (556, 55600, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Maractus - Ingrain - Level 1
  (556, 55600, 275, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Maractus - After You - Level 1
  (556, 55600, 495, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Maractus - Spiky Shield - Level 1
  (556, 55600, 596, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Maractus - Growth - Level 4
  (556, 55600, 74, 18, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Maractus - Mega Drain - Level 8
  (556, 55600, 72, 18, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Maractus - Leech Seed - Level 12
  (556, 55600, 73, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Maractus - Sucker Punch - Level 16
  (556, 55600, 389, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Maractus - Pin Missile - Level 20
  (556, 55600, 42, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Maractus - Giga Drain - Level 24
  (556, 55600, 202, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Maractus - Sweet Scent - Level 28
  (556, 55600, 230, 18, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Maractus - Synthesis - Level 32
  (556, 55600, 235, 18, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Maractus - Petal Blizzard - Level 36
  (556, 55600, 572, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Maractus - Cotton Spore - Level 40
  (556, 55600, 178, 18, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Maractus - Sunny Day - Level 44
  (556, 55600, 241, 18, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Maractus - Solar Beam - Level 48
  (556, 55600, 76, 18, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Maractus - Acupressure - Level 52
  (556, 55600, 367, 18, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Maractus - Petal Dance - Level 56
  (556, 55600, 80, 18, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Maractus - Cotton Guard - Level 60
  (556, 55600, 538, 18, NULL, 1, 60, NULL, NULL, NULL, 20),
  -- Maractus - Pin Missile - TM07
  (556, 55600, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 21),
  -- Maractus - Solar Beam - TM11
  (556, 55600, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Maractus - Screech - TM16
  (556, 55600, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 23),
  -- Maractus - Safeguard - TM19
  (556, 55600, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Maractus - Rest - TM21
  (556, 55600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Maractus - Snore - TM24
  (556, 55600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Maractus - Protect - TM25
  (556, 55600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Maractus - Giga Drain - TM28
  (556, 55600, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 28),
  -- Maractus - Attract - TM31
  (556, 55600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Maractus - Rain Dance - TM33
  (556, 55600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Maractus - Sunny Day - TM34
  (556, 55600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Maractus - Facade - TM39
  (556, 55600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Maractus - Helping Hand - TM41
  (556, 55600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Maractus - Weather Ball - TM46
  (556, 55600, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 34),
  -- Maractus - Bullet Seed - TM50
  (556, 55600, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 35),
  -- Maractus - Bounce - TM52
  (556, 55600, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 36),
  -- Maractus - Assurance - TM58
  (556, 55600, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 37),
  -- Maractus - Drain Punch - TM63
  (556, 55600, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 38),
  -- Maractus - Round - TM76
  (556, 55600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Maractus - Grassy Terrain - TM88
  (556, 55600, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 40),
  -- Maractus - Substitute - TR20
  (556, 55600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Maractus - Spikes - TR23
  (556, 55600, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 42),
  -- Maractus - Endure - TR26
  (556, 55600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Maractus - Sleep Talk - TR27
  (556, 55600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Maractus - Uproar - TR35
  (556, 55600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 45),
  -- Maractus - Hyper Voice - TR42
  (556, 55600, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 46),
  -- Maractus - Poison Jab - TR57
  (556, 55600, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 47),
  -- Maractus - Seed Bomb - TR59
  (556, 55600, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 48),
  -- Maractus - Energy Ball - TR65
  (556, 55600, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 49),
  -- Maractus - Leaf Storm - TR71
  (556, 55600, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 50),
  -- Maractus - Grass Knot - TR77
  (556, 55600, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 51),
  -- Maractus - Throat Chop - TR95
  (556, 55600, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 52),
  -- Maractus - Worry Seed - Egg
  (556, 55600, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Maractus - Wood Hammer - Egg
  (556, 55600, 452, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Dwebble - Sand Attack - Level 1
  (557, 55700, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dwebble - Fury Cutter - Level 1
  (557, 55700, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dwebble - Withdraw - Level 4
  (557, 55700, 110, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Dwebble - Smack Down - Level 8
  (557, 55700, 479, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Dwebble - Bug Bite - Level 12
  (557, 55700, 450, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Dwebble - Flail - Level 16
  (557, 55700, 175, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Dwebble - Slash - Level 20
  (557, 55700, 163, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Dwebble - Rock Slide - Level 24
  (557, 55700, 157, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Dwebble - Stealth Rock - Level 28
  (557, 55700, 446, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Dwebble - Rock Blast - Level 32
  (557, 55700, 350, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Dwebble - X-Scissor - Level 36
  (557, 55700, 404, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Dwebble - Rock Polish - Level 40
  (557, 55700, 397, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Dwebble - Shell Smash - Level 44
  (557, 55700, 504, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Dwebble - Rock Wrecker - Level 48
  (557, 55700, 439, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Dwebble - Solar Beam - TM11
  (557, 55700, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 15),
  -- Dwebble - Dig - TM15
  (557, 55700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 16),
  -- Dwebble - Rest - TM21
  (557, 55700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Dwebble - Rock Slide - TM22
  (557, 55700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 18),
  -- Dwebble - Snore - TM24
  (557, 55700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Dwebble - Protect - TM25
  (557, 55700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Dwebble - Attract - TM31
  (557, 55700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Dwebble - Sandstorm - TM32
  (557, 55700, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 22),
  -- Dwebble - Facade - TM39
  (557, 55700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Dwebble - Rock Tomb - TM48
  (557, 55700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 24),
  -- Dwebble - Sand Tomb - TM49
  (557, 55700, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 25),
  -- Dwebble - Rock Blast - TM54
  (557, 55700, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 26),
  -- Dwebble - Shadow Claw - TM65
  (557, 55700, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 27),
  -- Dwebble - Round - TM76
  (557, 55700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Dwebble - Bulldoze - TM81
  (557, 55700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 29),
  -- Dwebble - Swords Dance - TR00
  (557, 55700, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 30),
  -- Dwebble - Earthquake - TR10
  (557, 55700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 31),
  -- Dwebble - Substitute - TR20
  (557, 55700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 32),
  -- Dwebble - Spikes - TR23
  (557, 55700, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 33),
  -- Dwebble - Endure - TR26
  (557, 55700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 34),
  -- Dwebble - Sleep Talk - TR27
  (557, 55700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 35),
  -- Dwebble - Iron Defense - TR46
  (557, 55700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 36),
  -- Dwebble - Poison Jab - TR57
  (557, 55700, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 37),
  -- Dwebble - X-Scissor - TR60
  (557, 55700, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 38),
  -- Dwebble - Stone Edge - TR75
  (557, 55700, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 39),
  -- Dwebble - Stealth Rock - TR76
  (557, 55700, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 40),
  -- Dwebble - Counter - Egg
  (557, 55700, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Dwebble - Curse - Egg
  (557, 55700, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Dwebble - Knock Off - Egg
  (557, 55700, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Dwebble - Block - Egg
  (557, 55700, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Dwebble - Night Slash - Egg
  (557, 55700, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Dwebble - Wide Guard - Egg
  (557, 55700, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Crustle - Sand Attack - Level 1
  (558, 55800, 28, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crustle - Withdraw - Level 1
  (558, 55800, 110, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crustle - Fury Cutter - Level 1
  (558, 55800, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crustle - Smack Down - Level 1
  (558, 55800, 479, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Crustle - Bug Bite - Level 12
  (558, 55800, 450, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Crustle - Flail - Level 16
  (558, 55800, 175, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Crustle - Slash - Level 20
  (558, 55800, 163, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Crustle - Rock Slide - Level 24
  (558, 55800, 157, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Crustle - Stealth Rock - Level 28
  (558, 55800, 446, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Crustle - Rock Blast - Level 32
  (558, 55800, 350, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Crustle - X-Scissor - Level 38
  (558, 55800, 404, 18, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Crustle - Rock Polish - Level 44
  (558, 55800, 397, 18, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Crustle - Shell Smash - Level 50
  (558, 55800, 504, 18, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Crustle - Rock Wrecker - Level 56
  (558, 55800, 439, 18, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Crustle - Hyper Beam - TM08
  (558, 55800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Crustle - Giga Impact - TM09
  (558, 55800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Crustle - Solar Beam - TM11
  (558, 55800, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Crustle - Solar Blade - TM12
  (558, 55800, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 18),
  -- Crustle - Dig - TM15
  (558, 55800, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 19),
  -- Crustle - Rest - TM21
  (558, 55800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Crustle - Rock Slide - TM22
  (558, 55800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Crustle - Snore - TM24
  (558, 55800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Crustle - Protect - TM25
  (558, 55800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Crustle - Attract - TM31
  (558, 55800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Crustle - Sandstorm - TM32
  (558, 55800, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 25),
  -- Crustle - Facade - TM39
  (558, 55800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Crustle - Rock Tomb - TM48
  (558, 55800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 27),
  -- Crustle - Sand Tomb - TM49
  (558, 55800, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 28),
  -- Crustle - Rock Blast - TM54
  (558, 55800, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 29),
  -- Crustle - Shadow Claw - TM65
  (558, 55800, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 30),
  -- Crustle - Round - TM76
  (558, 55800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Crustle - Bulldoze - TM81
  (558, 55800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 32),
  -- Crustle - Stomping Tantrum - TM98
  (558, 55800, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 33),
  -- Crustle - Swords Dance - TR00
  (558, 55800, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 34),
  -- Crustle - Earthquake - TR10
  (558, 55800, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 35),
  -- Crustle - Substitute - TR20
  (558, 55800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Crustle - Spikes - TR23
  (558, 55800, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 37),
  -- Crustle - Endure - TR26
  (558, 55800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Crustle - Sleep Talk - TR27
  (558, 55800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Crustle - Iron Defense - TR46
  (558, 55800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 40),
  -- Crustle - Poison Jab - TR57
  (558, 55800, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 41),
  -- Crustle - X-Scissor - TR60
  (558, 55800, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 42),
  -- Crustle - Stone Edge - TR75
  (558, 55800, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 43),
  -- Crustle - Stealth Rock - TR76
  (558, 55800, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 44),
  -- Crustle - Heavy Slam - TR79
  (558, 55800, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 45),
  -- Crustle - Body Press - TR99
  (558, 55800, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 46),
  -- Scraggy - Leer - Level 1
  (559, 55900, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scraggy - Low Kick - Level 1
  (559, 55900, 67, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scraggy - Payback - Level 4
  (559, 55900, 371, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Scraggy - Headbutt - Level 8
  (559, 55900, 29, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Scraggy - Sand Attack - Level 12
  (559, 55900, 28, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Scraggy - Facade - Level 16
  (559, 55900, 263, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Scraggy - Protect - Level 20
  (559, 55900, 182, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Scraggy - Beat Up - Level 24
  (559, 55900, 251, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Scraggy - Scary Face - Level 28
  (559, 55900, 184, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Scraggy - Brick Break - Level 32
  (559, 55900, 280, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Scraggy - Swagger - Level 36
  (559, 55900, 207, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Scraggy - Crunch - Level 40
  (559, 55900, 242, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Scraggy - High Jump Kick - Level 44
  (559, 55900, 136, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Scraggy - Focus Punch - Level 48
  (559, 55900, 264, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Scraggy - Head Smash - Level 52
  (559, 55900, 457, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Scraggy - Mega Punch - TM00
  (559, 55900, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Scraggy - Mega Kick - TM01
  (559, 55900, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Scraggy - Fire Punch - TM03
  (559, 55900, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 18),
  -- Scraggy - Ice Punch - TM04
  (559, 55900, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Scraggy - Thunder Punch - TM05
  (559, 55900, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Scraggy - Dig - TM15
  (559, 55900, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Scraggy - Rest - TM21
  (559, 55900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Scraggy - Rock Slide - TM22
  (559, 55900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Scraggy - Thief - TM23
  (559, 55900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Scraggy - Snore - TM24
  (559, 55900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Scraggy - Protect - TM25
  (559, 55900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Scraggy - Scary Face - TM26
  (559, 55900, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 27),
  -- Scraggy - Attract - TM31
  (559, 55900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Scraggy - Rain Dance - TM33
  (559, 55900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Scraggy - Sunny Day - TM34
  (559, 55900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Scraggy - Beat Up - TM37
  (559, 55900, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 31),
  -- Scraggy - Facade - TM39
  (559, 55900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Scraggy - Revenge - TM42
  (559, 55900, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 33),
  -- Scraggy - Brick Break - TM43
  (559, 55900, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Scraggy - Fake Tears - TM47
  (559, 55900, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 35),
  -- Scraggy - Rock Tomb - TM48
  (559, 55900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 36),
  -- Scraggy - Payback - TM57
  (559, 55900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 37),
  -- Scraggy - Assurance - TM58
  (559, 55900, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 38),
  -- Scraggy - Fling - TM59
  (559, 55900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 39),
  -- Scraggy - Drain Punch - TM63
  (559, 55900, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 40),
  -- Scraggy - Low Sweep - TM75
  (559, 55900, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 41),
  -- Scraggy - Round - TM76
  (559, 55900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 42),
  -- Scraggy - Retaliate - TM79
  (559, 55900, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 43),
  -- Scraggy - Snarl - TM85
  (559, 55900, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 44),
  -- Scraggy - Low Kick - TR07
  (559, 55900, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 45),
  -- Scraggy - Amnesia - TR17
  (559, 55900, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 46),
  -- Scraggy - Substitute - TR20
  (559, 55900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Scraggy - Sludge Bomb - TR22
  (559, 55900, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 48),
  -- Scraggy - Endure - TR26
  (559, 55900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Scraggy - Sleep Talk - TR27
  (559, 55900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Scraggy - Iron Tail - TR31
  (559, 55900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 51),
  -- Scraggy - Crunch - TR32
  (559, 55900, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 52),
  -- Scraggy - Taunt - TR37
  (559, 55900, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 53),
  -- Scraggy - Iron Defense - TR46
  (559, 55900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 54),
  -- Scraggy - Dragon Claw - TR47
  (559, 55900, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 55),
  -- Scraggy - Bulk Up - TR48
  (559, 55900, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 56),
  -- Scraggy - Dragon Dance - TR51
  (559, 55900, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 57),
  -- Scraggy - Poison Jab - TR57
  (559, 55900, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 58),
  -- Scraggy - Dark Pulse - TR58
  (559, 55900, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 59),
  -- Scraggy - Dragon Pulse - TR62
  (559, 55900, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 60),
  -- Scraggy - Focus Blast - TR64
  (559, 55900, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 61),
  -- Scraggy - Zen Headbutt - TR69
  (559, 55900, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 62),
  -- Scraggy - Iron Head - TR74
  (559, 55900, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 63),
  -- Scraggy - Stone Edge - TR75
  (559, 55900, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 64),
  -- Scraggy - Grass Knot - TR77
  (559, 55900, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 65),
  -- Scraggy - Foul Play - TR81
  (559, 55900, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 66),
  -- Scraggy - Work Up - TR85
  (559, 55900, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 67),
  -- Scraggy - Counter - Egg
  (559, 55900, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Scraggy - Detect - Egg
  (559, 55900, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Scraggy - Fake Out - Egg
  (559, 55900, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Scraggy - Acid Spray - Egg
  (559, 55900, 491, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Scraggy - Quick Guard - Egg
  (559, 55900, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Scraggy - Power-Up Punch - Egg
  (559, 55900, 612, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Scrafty - Headbutt - Level 1
  (560, 56000, 29, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scrafty - Leer - Level 1
  (560, 56000, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scrafty - Low Kick - Level 1
  (560, 56000, 67, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Scrafty - Payback - Level 1
  (560, 56000, 371, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Scrafty - Sand Attack - Level 12
  (560, 56000, 28, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Scrafty - Facade - Level 16
  (560, 56000, 263, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Scrafty - Protect - Level 20
  (560, 56000, 182, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Scrafty - Beat Up - Level 24
  (560, 56000, 251, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Scrafty - Scary Face - Level 28
  (560, 56000, 184, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Scrafty - Brick Break - Level 32
  (560, 56000, 280, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Scrafty - Swagger - Level 36
  (560, 56000, 207, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Scrafty - Crunch - Level 42
  (560, 56000, 242, 18, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Scrafty - High Jump Kick - Level 48
  (560, 56000, 136, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Scrafty - Focus Punch - Level 54
  (560, 56000, 264, 18, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Scrafty - Head Smash - Level 60
  (560, 56000, 457, 18, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Scrafty - Mega Punch - TM00
  (560, 56000, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Scrafty - Mega Kick - TM01
  (560, 56000, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Scrafty - Fire Punch - TM03
  (560, 56000, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 18),
  -- Scrafty - Ice Punch - TM04
  (560, 56000, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Scrafty - Thunder Punch - TM05
  (560, 56000, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Scrafty - Hyper Beam - TM08
  (560, 56000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Scrafty - Giga Impact - TM09
  (560, 56000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Scrafty - Dig - TM15
  (560, 56000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 23),
  -- Scrafty - Rest - TM21
  (560, 56000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Scrafty - Rock Slide - TM22
  (560, 56000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 25),
  -- Scrafty - Thief - TM23
  (560, 56000, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 26),
  -- Scrafty - Snore - TM24
  (560, 56000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Scrafty - Protect - TM25
  (560, 56000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Scrafty - Scary Face - TM26
  (560, 56000, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 29),
  -- Scrafty - Attract - TM31
  (560, 56000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Scrafty - Rain Dance - TM33
  (560, 56000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Scrafty - Sunny Day - TM34
  (560, 56000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Scrafty - Beat Up - TM37
  (560, 56000, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 33),
  -- Scrafty - Facade - TM39
  (560, 56000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Scrafty - Revenge - TM42
  (560, 56000, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 35),
  -- Scrafty - Brick Break - TM43
  (560, 56000, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 36),
  -- Scrafty - Fake Tears - TM47
  (560, 56000, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 37),
  -- Scrafty - Rock Tomb - TM48
  (560, 56000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 38),
  -- Scrafty - Payback - TM57
  (560, 56000, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 39),
  -- Scrafty - Assurance - TM58
  (560, 56000, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 40),
  -- Scrafty - Fling - TM59
  (560, 56000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 41),
  -- Scrafty - Drain Punch - TM63
  (560, 56000, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 42),
  -- Scrafty - Low Sweep - TM75
  (560, 56000, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 43),
  -- Scrafty - Round - TM76
  (560, 56000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 44),
  -- Scrafty - Retaliate - TM79
  (560, 56000, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 45),
  -- Scrafty - Snarl - TM85
  (560, 56000, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 46),
  -- Scrafty - Low Kick - TR07
  (560, 56000, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 47),
  -- Scrafty - Amnesia - TR17
  (560, 56000, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 48),
  -- Scrafty - Substitute - TR20
  (560, 56000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Scrafty - Sludge Bomb - TR22
  (560, 56000, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 50),
  -- Scrafty - Outrage - TR24
  (560, 56000, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 51),
  -- Scrafty - Endure - TR26
  (560, 56000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 52),
  -- Scrafty - Sleep Talk - TR27
  (560, 56000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 53),
  -- Scrafty - Iron Tail - TR31
  (560, 56000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 54),
  -- Scrafty - Crunch - TR32
  (560, 56000, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 55),
  -- Scrafty - Taunt - TR37
  (560, 56000, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 56),
  -- Scrafty - Iron Defense - TR46
  (560, 56000, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 57),
  -- Scrafty - Dragon Claw - TR47
  (560, 56000, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 58),
  -- Scrafty - Bulk Up - TR48
  (560, 56000, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 59),
  -- Scrafty - Dragon Dance - TR51
  (560, 56000, 349, 18, NULL, 4, NULL, NULL, 18004051, NULL, 60),
  -- Scrafty - Close Combat - TR53
  (560, 56000, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 61),
  -- Scrafty - Poison Jab - TR57
  (560, 56000, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 62),
  -- Scrafty - Dark Pulse - TR58
  (560, 56000, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 63),
  -- Scrafty - Dragon Pulse - TR62
  (560, 56000, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 64),
  -- Scrafty - Focus Blast - TR64
  (560, 56000, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 65),
  -- Scrafty - Zen Headbutt - TR69
  (560, 56000, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 66),
  -- Scrafty - Iron Head - TR74
  (560, 56000, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 67),
  -- Scrafty - Stone Edge - TR75
  (560, 56000, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 68),
  -- Scrafty - Grass Knot - TR77
  (560, 56000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 69),
  -- Scrafty - Foul Play - TR81
  (560, 56000, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 70),
  -- Scrafty - Work Up - TR85
  (560, 56000, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 71),
  -- Scrafty - Throat Chop - TR95
  (560, 56000, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 72),
  -- Sigilyph - Gust - Level 1
  (561, 56100, 16, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sigilyph - Confusion - Level 1
  (561, 56100, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sigilyph - Gravity - Level 5
  (561, 56100, 356, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Sigilyph - Hypnosis - Level 10
  (561, 56100, 95, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Sigilyph - Air Cutter - Level 15
  (561, 56100, 314, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Sigilyph - Psybeam - Level 20
  (561, 56100, 60, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Sigilyph - Whirlwind - Level 25
  (561, 56100, 18, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Sigilyph - Cosmic Power - Level 30
  (561, 56100, 322, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Sigilyph - Air Slash - Level 35
  (561, 56100, 403, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Sigilyph - Psychic - Level 40
  (561, 56100, 94, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Sigilyph - Tailwind - Level 45
  (561, 56100, 366, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Sigilyph - Light Screen - Level 50
  (561, 56100, 113, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Sigilyph - Reflect - Level 50
  (561, 56100, 115, 18, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Sigilyph - Sky Attack - Level 55
  (561, 56100, 143, 18, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Sigilyph - Skill Swap - Level 60
  (561, 56100, 285, 18, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Sigilyph - Fly - TM06
  (561, 56100, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 16),
  -- Sigilyph - Hyper Beam - TM08
  (561, 56100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Sigilyph - Giga Impact - TM09
  (561, 56100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Sigilyph - Solar Beam - TM11
  (561, 56100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 19),
  -- Sigilyph - Thunder Wave - TM14
  (561, 56100, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 20),
  -- Sigilyph - Light Screen - TM17
  (561, 56100, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 21),
  -- Sigilyph - Reflect - TM18
  (561, 56100, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 22),
  -- Sigilyph - Safeguard - TM19
  (561, 56100, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 23),
  -- Sigilyph - Rest - TM21
  (561, 56100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Sigilyph - Thief - TM23
  (561, 56100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 25),
  -- Sigilyph - Snore - TM24
  (561, 56100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Sigilyph - Protect - TM25
  (561, 56100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Sigilyph - Icy Wind - TM27
  (561, 56100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 28),
  -- Sigilyph - Steel Wing - TM30
  (561, 56100, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 29),
  -- Sigilyph - Attract - TM31
  (561, 56100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Sigilyph - Rain Dance - TM33
  (561, 56100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Sigilyph - Facade - TM39
  (561, 56100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Sigilyph - Swift - TM40
  (561, 56100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Sigilyph - Imprison - TM44
  (561, 56100, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 34),
  -- Sigilyph - Power Swap - TM60
  (561, 56100, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 35),
  -- Sigilyph - Speed Swap - TM62
  (561, 56100, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 36),
  -- Sigilyph - Psycho Cut - TM69
  (561, 56100, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 37),
  -- Sigilyph - Trick Room - TM70
  (561, 56100, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 38),
  -- Sigilyph - Magic Room - TM72
  (561, 56100, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 39),
  -- Sigilyph - Round - TM76
  (561, 56100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Sigilyph - Air Slash - TM95
  (561, 56100, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 41),
  -- Sigilyph - Ice Beam - TR05
  (561, 56100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 42),
  -- Sigilyph - Psychic - TR11
  (561, 56100, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 43),
  -- Sigilyph - Substitute - TR20
  (561, 56100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Sigilyph - Psyshock - TR25
  (561, 56100, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 45),
  -- Sigilyph - Endure - TR26
  (561, 56100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Sigilyph - Sleep Talk - TR27
  (561, 56100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Sigilyph - Shadow Ball - TR33
  (561, 56100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 48),
  -- Sigilyph - Future Sight - TR34
  (561, 56100, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 49),
  -- Sigilyph - Heat Wave - TR36
  (561, 56100, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 50),
  -- Sigilyph - Trick - TR38
  (561, 56100, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 51),
  -- Sigilyph - Skill Swap - TR40
  (561, 56100, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 52),
  -- Sigilyph - Cosmic Power - TR44
  (561, 56100, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 53),
  -- Sigilyph - Calm Mind - TR49
  (561, 56100, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 54),
  -- Sigilyph - Dark Pulse - TR58
  (561, 56100, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 55),
  -- Sigilyph - Energy Ball - TR65
  (561, 56100, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 56),
  -- Sigilyph - Zen Headbutt - TR69
  (561, 56100, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 57),
  -- Sigilyph - Flash Cannon - TR70
  (561, 56100, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 58),
  -- Sigilyph - Stored Power - TR82
  (561, 56100, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 59),
  -- Sigilyph - Dazzling Gleam - TR92
  (561, 56100, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 60),
  -- Sigilyph - Ancient Power - Egg
  (561, 56100, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sigilyph - Roost - Egg
  (561, 56100, 355, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sigilyph - Psycho Shift - Egg
  (561, 56100, 375, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Yamask - Protect - Level 1
  (562, 56200, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yamask - Astonish - Level 1
  (562, 56200, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yamask - Haze - Level 4
  (562, 56200, 114, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Yamask - Night Shade - Level 8
  (562, 56200, 101, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Yamask - Disable - Level 12
  (562, 56200, 50, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Yamask - Will-O-Wisp - Level 16
  (562, 56200, 261, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Yamask - Crafty Shield - Level 20
  (562, 56200, 578, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Yamask - Hex - Level 24
  (562, 56200, 506, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Yamask - Mean Look - Level 28
  (562, 56200, 212, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Yamask - Grudge - Level 32
  (562, 56200, 288, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Yamask - Curse - Level 36
  (562, 56200, 174, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Yamask - Shadow Ball - Level 40
  (562, 56200, 247, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Yamask - Dark Pulse - Level 44
  (562, 56200, 399, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Yamask - Guard Split - Level 48
  (562, 56200, 470, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Yamask - Power Split - Level 48
  (562, 56200, 471, 18, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Yamask - Destiny Bond - Level 52
  (562, 56200, 194, 18, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Yamask - Safeguard - TM19
  (562, 56200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Yamask - Rest - TM21
  (562, 56200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Yamask - Thief - TM23
  (562, 56200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 19),
  -- Yamask - Snore - TM24
  (562, 56200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Yamask - Protect - TM25
  (562, 56200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Yamask - Attract - TM31
  (562, 56200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Yamask - Rain Dance - TM33
  (562, 56200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Yamask - Will-O-Wisp - TM38
  (562, 56200, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 24),
  -- Yamask - Facade - TM39
  (562, 56200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Yamask - Imprison - TM44
  (562, 56200, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 26),
  -- Yamask - Fake Tears - TM47
  (562, 56200, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 27),
  -- Yamask - Payback - TM57
  (562, 56200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 28),
  -- Yamask - Trick Room - TM70
  (562, 56200, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 29),
  -- Yamask - Wonder Room - TM71
  (562, 56200, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 30),
  -- Yamask - Round - TM76
  (562, 56200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Yamask - Hex - TM77
  (562, 56200, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 32),
  -- Yamask - Psychic - TR11
  (562, 56200, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 33),
  -- Yamask - Substitute - TR20
  (562, 56200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 34),
  -- Yamask - Endure - TR26
  (562, 56200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Yamask - Sleep Talk - TR27
  (562, 56200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Yamask - Shadow Ball - TR33
  (562, 56200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 37),
  -- Yamask - Trick - TR38
  (562, 56200, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 38),
  -- Yamask - Skill Swap - TR40
  (562, 56200, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 39),
  -- Yamask - Iron Defense - TR46
  (562, 56200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 40),
  -- Yamask - Calm Mind - TR49
  (562, 56200, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 41),
  -- Yamask - Toxic Spikes - TR54
  (562, 56200, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 42),
  -- Yamask - Dark Pulse - TR58
  (562, 56200, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 43),
  -- Yamask - Energy Ball - TR65
  (562, 56200, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 44),
  -- Yamask - Nasty Plot - TR68
  (562, 56200, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 45),
  -- Yamask - Zen Headbutt - TR69
  (562, 56200, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 46),
  -- Yamask - Ally Switch - TR83
  (562, 56200, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 47),
  -- Yamask - Memento - Egg
  (562, 56200, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cofagrigus - Night Shade - Level 1
  (563, 56300, 101, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cofagrigus - Haze - Level 1
  (563, 56300, 114, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cofagrigus - Protect - Level 1
  (563, 56300, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cofagrigus - Scary Face - Level 1
  (563, 56300, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cofagrigus - Astonish - Level 1
  (563, 56300, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cofagrigus - Shadow Claw - Level 1
  (563, 56300, 421, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Cofagrigus - Disable - Level 12
  (563, 56300, 50, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Cofagrigus - Will-O-Wisp - Level 16
  (563, 56300, 261, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Cofagrigus - Crafty Shield - Level 20
  (563, 56300, 578, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Cofagrigus - Hex - Level 24
  (563, 56300, 506, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Cofagrigus - Mean Look - Level 28
  (563, 56300, 212, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Cofagrigus - Grudge - Level 32
  (563, 56300, 288, 18, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Cofagrigus - Curse - Level 38
  (563, 56300, 174, 18, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Cofagrigus - Shadow Ball - Level 44
  (563, 56300, 247, 18, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Cofagrigus - Dark Pulse - Level 50
  (563, 56300, 399, 18, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Cofagrigus - Guard Split - Level 56
  (563, 56300, 470, 18, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Cofagrigus - Power Split - Level 56
  (563, 56300, 471, 18, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Cofagrigus - Destiny Bond - Level 62
  (563, 56300, 194, 18, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Cofagrigus - Shadow Claw - Evolution
  (563, 56300, 421, 18, NULL, 7, NULL, NULL, NULL, NULL, 19),
  -- Cofagrigus - Hyper Beam - TM08
  (563, 56300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Cofagrigus - Giga Impact - TM09
  (563, 56300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Cofagrigus - Safeguard - TM19
  (563, 56300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Cofagrigus - Rest - TM21
  (563, 56300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Cofagrigus - Thief - TM23
  (563, 56300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Cofagrigus - Snore - TM24
  (563, 56300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Cofagrigus - Protect - TM25
  (563, 56300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Cofagrigus - Scary Face - TM26
  (563, 56300, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 27),
  -- Cofagrigus - Attract - TM31
  (563, 56300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Cofagrigus - Rain Dance - TM33
  (563, 56300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Cofagrigus - Will-O-Wisp - TM38
  (563, 56300, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 30),
  -- Cofagrigus - Facade - TM39
  (563, 56300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Cofagrigus - Revenge - TM42
  (563, 56300, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 32),
  -- Cofagrigus - Imprison - TM44
  (563, 56300, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 33),
  -- Cofagrigus - Fake Tears - TM47
  (563, 56300, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 34),
  -- Cofagrigus - Payback - TM57
  (563, 56300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 35),
  -- Cofagrigus - Power Swap - TM60
  (563, 56300, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 36),
  -- Cofagrigus - Guard Swap - TM61
  (563, 56300, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 37),
  -- Cofagrigus - Shadow Claw - TM65
  (563, 56300, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 38),
  -- Cofagrigus - Trick Room - TM70
  (563, 56300, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 39),
  -- Cofagrigus - Wonder Room - TM71
  (563, 56300, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 40),
  -- Cofagrigus - Round - TM76
  (563, 56300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Cofagrigus - Hex - TM77
  (563, 56300, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 42),
  -- Cofagrigus - Phantom Force - TM86
  (563, 56300, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 43),
  -- Cofagrigus - Psychic - TR11
  (563, 56300, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 44),
  -- Cofagrigus - Substitute - TR20
  (563, 56300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 45),
  -- Cofagrigus - Endure - TR26
  (563, 56300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Cofagrigus - Sleep Talk - TR27
  (563, 56300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Cofagrigus - Shadow Ball - TR33
  (563, 56300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 48),
  -- Cofagrigus - Trick - TR38
  (563, 56300, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 49),
  -- Cofagrigus - Skill Swap - TR40
  (563, 56300, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 50),
  -- Cofagrigus - Iron Defense - TR46
  (563, 56300, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 51),
  -- Cofagrigus - Calm Mind - TR49
  (563, 56300, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 52),
  -- Cofagrigus - Toxic Spikes - TR54
  (563, 56300, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 53),
  -- Cofagrigus - Dark Pulse - TR58
  (563, 56300, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 54),
  -- Cofagrigus - Energy Ball - TR65
  (563, 56300, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 55),
  -- Cofagrigus - Nasty Plot - TR68
  (563, 56300, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 56),
  -- Cofagrigus - Zen Headbutt - TR69
  (563, 56300, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 57),
  -- Cofagrigus - Grass Knot - TR77
  (563, 56300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 58),
  -- Cofagrigus - Ally Switch - TR83
  (563, 56300, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 59),
  -- Cofagrigus - Body Press - TR99
  (563, 56300, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 60),
  -- Tirtouga - Water Gun - Level 1
  (564, 56400, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tirtouga - Withdraw - Level 1
  (564, 56400, 110, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tirtouga - Protect - Level 3
  (564, 56400, 182, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Tirtouga - Aqua Jet - Level 6
  (564, 56400, 453, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Tirtouga - Smack Down - Level 9
  (564, 56400, 479, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Tirtouga - Ancient Power - Level 12
  (564, 56400, 246, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Tirtouga - Bite - Level 15
  (564, 56400, 44, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Tirtouga - Wide Guard - Level 18
  (564, 56400, 469, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Tirtouga - Brine - Level 21
  (564, 56400, 362, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Tirtouga - Rock Slide - Level 24
  (564, 56400, 157, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Tirtouga - Crunch - Level 27
  (564, 56400, 242, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Tirtouga - Curse - Level 30
  (564, 56400, 174, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Tirtouga - Iron Defense - Level 33
  (564, 56400, 334, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Tirtouga - Aqua Tail - Level 36
  (564, 56400, 401, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Tirtouga - Rain Dance - Level 39
  (564, 56400, 240, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Tirtouga - Hydro Pump - Level 42
  (564, 56400, 56, 18, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Tirtouga - Shell Smash - Level 45
  (564, 56400, 504, 18, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Tirtouga - Dig - TM15
  (564, 56400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Tirtouga - Rest - TM21
  (564, 56400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Tirtouga - Rock Slide - TM22
  (564, 56400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Tirtouga - Snore - TM24
  (564, 56400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Tirtouga - Protect - TM25
  (564, 56400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Tirtouga - Icy Wind - TM27
  (564, 56400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 23),
  -- Tirtouga - Attract - TM31
  (564, 56400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Tirtouga - Sandstorm - TM32
  (564, 56400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 25),
  -- Tirtouga - Rain Dance - TM33
  (564, 56400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Tirtouga - Whirlpool - TM36
  (564, 56400, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 27),
  -- Tirtouga - Facade - TM39
  (564, 56400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Tirtouga - Dive - TM45
  (564, 56400, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 29),
  -- Tirtouga - Rock Tomb - TM48
  (564, 56400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Tirtouga - Mud Shot - TM53
  (564, 56400, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 31),
  -- Tirtouga - Rock Blast - TM54
  (564, 56400, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 32),
  -- Tirtouga - Brine - TM55
  (564, 56400, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 33),
  -- Tirtouga - Guard Swap - TM61
  (564, 56400, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 34),
  -- Tirtouga - Round - TM76
  (564, 56400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Tirtouga - Bulldoze - TM81
  (564, 56400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 36),
  -- Tirtouga - Body Slam - TR01
  (564, 56400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 37),
  -- Tirtouga - Hydro Pump - TR03
  (564, 56400, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 38),
  -- Tirtouga - Surf - TR04
  (564, 56400, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 39),
  -- Tirtouga - Ice Beam - TR05
  (564, 56400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 40),
  -- Tirtouga - Blizzard - TR06
  (564, 56400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 41),
  -- Tirtouga - Earthquake - TR10
  (564, 56400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 42),
  -- Tirtouga - Waterfall - TR16
  (564, 56400, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 43),
  -- Tirtouga - Substitute - TR20
  (564, 56400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Tirtouga - Endure - TR26
  (564, 56400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Tirtouga - Sleep Talk - TR27
  (564, 56400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Tirtouga - Iron Tail - TR31
  (564, 56400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 47),
  -- Tirtouga - Crunch - TR32
  (564, 56400, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 48),
  -- Tirtouga - Muddy Water - TR45
  (564, 56400, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 49),
  -- Tirtouga - Iron Defense - TR46
  (564, 56400, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 50),
  -- Tirtouga - Earth Power - TR67
  (564, 56400, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 51),
  -- Tirtouga - Zen Headbutt - TR69
  (564, 56400, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 52),
  -- Tirtouga - Stone Edge - TR75
  (564, 56400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 53),
  -- Tirtouga - Stealth Rock - TR76
  (564, 56400, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 54),
  -- Tirtouga - Scald - TR84
  (564, 56400, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 55),
  -- Tirtouga - Liquidation - TR98
  (564, 56400, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 56),
  -- Tirtouga - Slam - Egg
  (564, 56400, 21, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tirtouga - Rock Throw - Egg
  (564, 56400, 88, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Tirtouga - Rollout - Egg
  (564, 56400, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Tirtouga - Knock Off - Egg
  (564, 56400, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Tirtouga - Block - Egg
  (564, 56400, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Tirtouga - Water Pulse - Egg
  (564, 56400, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Carracosta - Water Gun - Level 1
  (565, 56500, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carracosta - Withdraw - Level 1
  (565, 56500, 110, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carracosta - Protect - Level 1
  (565, 56500, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Carracosta - Aqua Jet - Level 1
  (565, 56500, 453, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Carracosta - Smack Down - Level 9
  (565, 56500, 479, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Carracosta - Ancient Power - Level 12
  (565, 56500, 246, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Carracosta - Bite - Level 15
  (565, 56500, 44, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Carracosta - Wide Guard - Level 18
  (565, 56500, 469, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Carracosta - Brine - Level 21
  (565, 56500, 362, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Carracosta - Rock Slide - Level 24
  (565, 56500, 157, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Carracosta - Crunch - Level 27
  (565, 56500, 242, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Carracosta - Curse - Level 30
  (565, 56500, 174, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Carracosta - Iron Defense - Level 33
  (565, 56500, 334, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Carracosta - Aqua Tail - Level 36
  (565, 56500, 401, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Carracosta - Rain Dance - Level 41
  (565, 56500, 240, 18, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Carracosta - Hydro Pump - Level 46
  (565, 56500, 56, 18, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Carracosta - Shell Smash - Level 51
  (565, 56500, 504, 18, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Carracosta - Hyper Beam - TM08
  (565, 56500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Carracosta - Giga Impact - TM09
  (565, 56500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Carracosta - Dig - TM15
  (565, 56500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Carracosta - Rest - TM21
  (565, 56500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Carracosta - Rock Slide - TM22
  (565, 56500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Carracosta - Snore - TM24
  (565, 56500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Carracosta - Protect - TM25
  (565, 56500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Carracosta - Icy Wind - TM27
  (565, 56500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 25),
  -- Carracosta - Attract - TM31
  (565, 56500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Carracosta - Sandstorm - TM32
  (565, 56500, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 27),
  -- Carracosta - Rain Dance - TM33
  (565, 56500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Carracosta - Whirlpool - TM36
  (565, 56500, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 29),
  -- Carracosta - Facade - TM39
  (565, 56500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Carracosta - Dive - TM45
  (565, 56500, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 31),
  -- Carracosta - Rock Tomb - TM48
  (565, 56500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Carracosta - Mud Shot - TM53
  (565, 56500, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 33),
  -- Carracosta - Rock Blast - TM54
  (565, 56500, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 34),
  -- Carracosta - Brine - TM55
  (565, 56500, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 35),
  -- Carracosta - Guard Swap - TM61
  (565, 56500, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 36),
  -- Carracosta - Round - TM76
  (565, 56500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Carracosta - Bulldoze - TM81
  (565, 56500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 38),
  -- Carracosta - Razor Shell - TM83
  (565, 56500, 534, 18, NULL, 2, NULL, NULL, 18002083, NULL, 39),
  -- Carracosta - Body Slam - TR01
  (565, 56500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 40),
  -- Carracosta - Hydro Pump - TR03
  (565, 56500, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 41),
  -- Carracosta - Surf - TR04
  (565, 56500, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 42),
  -- Carracosta - Ice Beam - TR05
  (565, 56500, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 43),
  -- Carracosta - Blizzard - TR06
  (565, 56500, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 44),
  -- Carracosta - Low Kick - TR07
  (565, 56500, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 45),
  -- Carracosta - Earthquake - TR10
  (565, 56500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 46),
  -- Carracosta - Waterfall - TR16
  (565, 56500, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 47),
  -- Carracosta - Substitute - TR20
  (565, 56500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Carracosta - Endure - TR26
  (565, 56500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Carracosta - Sleep Talk - TR27
  (565, 56500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Carracosta - Iron Tail - TR31
  (565, 56500, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 51),
  -- Carracosta - Crunch - TR32
  (565, 56500, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 52),
  -- Carracosta - Superpower - TR39
  (565, 56500, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 53),
  -- Carracosta - Muddy Water - TR45
  (565, 56500, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 54),
  -- Carracosta - Iron Defense - TR46
  (565, 56500, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 55),
  -- Carracosta - Focus Blast - TR64
  (565, 56500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 56),
  -- Carracosta - Earth Power - TR67
  (565, 56500, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 57),
  -- Carracosta - Zen Headbutt - TR69
  (565, 56500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 58),
  -- Carracosta - Iron Head - TR74
  (565, 56500, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 59),
  -- Carracosta - Stone Edge - TR75
  (565, 56500, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 60),
  -- Carracosta - Stealth Rock - TR76
  (565, 56500, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 61),
  -- Carracosta - Scald - TR84
  (565, 56500, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 62),
  -- Carracosta - Liquidation - TR98
  (565, 56500, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 63),
  -- Archen - Leer - Level 1
  (566, 56600, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Archen - Quick Attack - Level 1
  (566, 56600, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Archen - Rock Throw - Level 3
  (566, 56600, 88, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Archen - Wing Attack - Level 6
  (566, 56600, 17, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Archen - Dragon Breath - Level 9
  (566, 56600, 225, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Archen - Ancient Power - Level 12
  (566, 56600, 246, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Archen - Pluck - Level 15
  (566, 56600, 365, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Archen - Quick Guard - Level 18
  (566, 56600, 501, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Archen - U-turn - Level 21
  (566, 56600, 369, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Archen - Rock Slide - Level 24
  (566, 56600, 157, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Archen - Scary Face - Level 27
  (566, 56600, 184, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Archen - Crunch - Level 30
  (566, 56600, 242, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Archen - Agility - Level 33
  (566, 56600, 97, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Archen - Tailwind - Level 36
  (566, 56600, 366, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Archen - Dragon Claw - Level 39
  (566, 56600, 337, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Archen - Thrash - Level 42
  (566, 56600, 37, 18, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Archen - Endeavor - Level 45
  (566, 56600, 283, 18, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Archen - Dig - TM15
  (566, 56600, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 18),
  -- Archen - Rest - TM21
  (566, 56600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Archen - Rock Slide - TM22
  (566, 56600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Archen - Snore - TM24
  (566, 56600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Archen - Protect - TM25
  (566, 56600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Archen - Scary Face - TM26
  (566, 56600, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 23),
  -- Archen - Steel Wing - TM30
  (566, 56600, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 24),
  -- Archen - Attract - TM31
  (566, 56600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Archen - Sandstorm - TM32
  (566, 56600, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 26),
  -- Archen - Facade - TM39
  (566, 56600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Archen - Swift - TM40
  (566, 56600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 28),
  -- Archen - Rock Tomb - TM48
  (566, 56600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 29),
  -- Archen - Bounce - TM52
  (566, 56600, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 30),
  -- Archen - Rock Blast - TM54
  (566, 56600, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 31),
  -- Archen - U-turn - TM56
  (566, 56600, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 32),
  -- Archen - Assurance - TM58
  (566, 56600, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 33),
  -- Archen - Shadow Claw - TM65
  (566, 56600, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 34),
  -- Archen - Round - TM76
  (566, 56600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Archen - Acrobatics - TM78
  (566, 56600, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 36),
  -- Archen - Bulldoze - TM81
  (566, 56600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 37),
  -- Archen - Earthquake - TR10
  (566, 56600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 38),
  -- Archen - Agility - TR12
  (566, 56600, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 39),
  -- Archen - Substitute - TR20
  (566, 56600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Archen - Endure - TR26
  (566, 56600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Archen - Sleep Talk - TR27
  (566, 56600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Archen - Iron Tail - TR31
  (566, 56600, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 43),
  -- Archen - Crunch - TR32
  (566, 56600, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 44),
  -- Archen - Uproar - TR35
  (566, 56600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 45),
  -- Archen - Heat Wave - TR36
  (566, 56600, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 46),
  -- Archen - Taunt - TR37
  (566, 56600, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Archen - Iron Defense - TR46
  (566, 56600, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 48),
  -- Archen - Dragon Claw - TR47
  (566, 56600, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 49),
  -- Archen - Dragon Pulse - TR62
  (566, 56600, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 50),
  -- Archen - Earth Power - TR67
  (566, 56600, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 51),
  -- Archen - Zen Headbutt - TR69
  (566, 56600, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 52),
  -- Archen - Stone Edge - TR75
  (566, 56600, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 53),
  -- Archen - Stealth Rock - TR76
  (566, 56600, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 54),
  -- Archen - Ally Switch - TR83
  (566, 56600, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 55),
  -- Archen - Bite - Egg
  (566, 56600, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Archen - Double Team - Egg
  (566, 56600, 104, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Archen - Knock Off - Egg
  (566, 56600, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Archen - Switcheroo - Egg
  (566, 56600, 415, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Archen - Defog - Egg
  (566, 56600, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Archen - Head Smash - Egg
  (566, 56600, 457, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Archeops - Wing Attack - Level 1
  (567, 56700, 17, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Archeops - Leer - Level 1
  (567, 56700, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Archeops - Rock Throw - Level 1
  (567, 56700, 88, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Archeops - Quick Attack - Level 1
  (567, 56700, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Archeops - Dragon Breath - Level 9
  (567, 56700, 225, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Archeops - Ancient Power - Level 12
  (567, 56700, 246, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Archeops - Pluck - Level 15
  (567, 56700, 365, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Archeops - Quick Guard - Level 18
  (567, 56700, 501, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Archeops - U-turn - Level 21
  (567, 56700, 369, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Archeops - Rock Slide - Level 24
  (567, 56700, 157, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Archeops - Scary Face - Level 27
  (567, 56700, 184, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Archeops - Crunch - Level 30
  (567, 56700, 242, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Archeops - Agility - Level 33
  (567, 56700, 97, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Archeops - Tailwind - Level 36
  (567, 56700, 366, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Archeops - Dragon Claw - Level 41
  (567, 56700, 337, 18, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Archeops - Thrash - Level 46
  (567, 56700, 37, 18, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Archeops - Endeavor - Level 51
  (567, 56700, 283, 18, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Archeops - Fly - TM06
  (567, 56700, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 18),
  -- Archeops - Hyper Beam - TM08
  (567, 56700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Archeops - Giga Impact - TM09
  (567, 56700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Archeops - Dig - TM15
  (567, 56700, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Archeops - Rest - TM21
  (567, 56700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Archeops - Rock Slide - TM22
  (567, 56700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 23),
  -- Archeops - Snore - TM24
  (567, 56700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Archeops - Protect - TM25
  (567, 56700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Archeops - Scary Face - TM26
  (567, 56700, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Archeops - Steel Wing - TM30
  (567, 56700, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 27),
  -- Archeops - Attract - TM31
  (567, 56700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Archeops - Sandstorm - TM32
  (567, 56700, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 29),
  -- Archeops - Facade - TM39
  (567, 56700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Archeops - Swift - TM40
  (567, 56700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Archeops - Rock Tomb - TM48
  (567, 56700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Archeops - Bounce - TM52
  (567, 56700, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 33),
  -- Archeops - Rock Blast - TM54
  (567, 56700, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 34),
  -- Archeops - U-turn - TM56
  (567, 56700, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 35),
  -- Archeops - Assurance - TM58
  (567, 56700, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 36),
  -- Archeops - Shadow Claw - TM65
  (567, 56700, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 37),
  -- Archeops - Round - TM76
  (567, 56700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Archeops - Acrobatics - TM78
  (567, 56700, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 39),
  -- Archeops - Bulldoze - TM81
  (567, 56700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 40),
  -- Archeops - Air Slash - TM95
  (567, 56700, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 41),
  -- Archeops - Earthquake - TR10
  (567, 56700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 42),
  -- Archeops - Agility - TR12
  (567, 56700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 43),
  -- Archeops - Substitute - TR20
  (567, 56700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Archeops - Outrage - TR24
  (567, 56700, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 45),
  -- Archeops - Endure - TR26
  (567, 56700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Archeops - Sleep Talk - TR27
  (567, 56700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Archeops - Iron Tail - TR31
  (567, 56700, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 48),
  -- Archeops - Crunch - TR32
  (567, 56700, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 49),
  -- Archeops - Uproar - TR35
  (567, 56700, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 50),
  -- Archeops - Heat Wave - TR36
  (567, 56700, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 51),
  -- Archeops - Taunt - TR37
  (567, 56700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 52),
  -- Archeops - Iron Defense - TR46
  (567, 56700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 53),
  -- Archeops - Dragon Claw - TR47
  (567, 56700, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 54),
  -- Archeops - Dragon Pulse - TR62
  (567, 56700, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 55),
  -- Archeops - Focus Blast - TR64
  (567, 56700, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 56),
  -- Archeops - Earth Power - TR67
  (567, 56700, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 57),
  -- Archeops - Zen Headbutt - TR69
  (567, 56700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 58),
  -- Archeops - Stone Edge - TR75
  (567, 56700, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 59),
  -- Archeops - Stealth Rock - TR76
  (567, 56700, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 60),
  -- Archeops - Ally Switch - TR83
  (567, 56700, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 61),
  -- Trubbish - Pound - Level 1
  (568, 56800, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Trubbish - Poison Gas - Level 1
  (568, 56800, 139, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Trubbish - Recycle - Level 3
  (568, 56800, 278, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Trubbish - Acid Spray - Level 6
  (568, 56800, 491, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Trubbish - Amnesia - Level 9
  (568, 56800, 133, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Trubbish - Clear Smog - Level 12
  (568, 56800, 499, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Trubbish - Toxic Spikes - Level 15
  (568, 56800, 390, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Trubbish - Sludge - Level 18
  (568, 56800, 124, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Trubbish - Stockpile - Level 21
  (568, 56800, 254, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Trubbish - Swallow - Level 21
  (568, 56800, 256, 18, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Trubbish - Take Down - Level 24
  (568, 56800, 36, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Trubbish - Sludge Bomb - Level 27
  (568, 56800, 188, 18, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Trubbish - Toxic - Level 30
  (568, 56800, 92, 18, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Trubbish - Belch - Level 33
  (568, 56800, 562, 18, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Trubbish - Pain Split - Level 37
  (568, 56800, 220, 18, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Trubbish - Gunk Shot - Level 39
  (568, 56800, 441, 18, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Trubbish - Explosion - Level 42
  (568, 56800, 153, 18, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Trubbish - Self-Destruct - TM20
  (568, 56800, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 18),
  -- Trubbish - Rest - TM21
  (568, 56800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Trubbish - Thief - TM23
  (568, 56800, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 20),
  -- Trubbish - Snore - TM24
  (568, 56800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Trubbish - Protect - TM25
  (568, 56800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Trubbish - Giga Drain - TM28
  (568, 56800, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 23),
  -- Trubbish - Attract - TM31
  (568, 56800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Trubbish - Rain Dance - TM33
  (568, 56800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Trubbish - Sunny Day - TM34
  (568, 56800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 26),
  -- Trubbish - Facade - TM39
  (568, 56800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Trubbish - Rock Blast - TM54
  (568, 56800, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 28),
  -- Trubbish - Payback - TM57
  (568, 56800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 29),
  -- Trubbish - Drain Punch - TM63
  (568, 56800, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 30),
  -- Trubbish - Venoshock - TM74
  (568, 56800, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 31),
  -- Trubbish - Round - TM76
  (568, 56800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Trubbish - Amnesia - TR17
  (568, 56800, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 33),
  -- Trubbish - Substitute - TR20
  (568, 56800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 34),
  -- Trubbish - Sludge Bomb - TR22
  (568, 56800, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 35),
  -- Trubbish - Spikes - TR23
  (568, 56800, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 36),
  -- Trubbish - Endure - TR26
  (568, 56800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Trubbish - Sleep Talk - TR27
  (568, 56800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Trubbish - Toxic Spikes - TR54
  (568, 56800, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 39),
  -- Trubbish - Dark Pulse - TR58
  (568, 56800, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 40),
  -- Trubbish - Seed Bomb - TR59
  (568, 56800, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 41),
  -- Trubbish - Gunk Shot - TR73
  (568, 56800, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 42),
  -- Trubbish - Sludge Wave - TR78
  (568, 56800, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 43),
  -- Trubbish - Venom Drench - TR91
  (568, 56800, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 44),
  -- Trubbish - Sand Attack - Egg
  (568, 56800, 28, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Trubbish - Haze - Egg
  (568, 56800, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Trubbish - Curse - Egg
  (568, 56800, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Trubbish - Rollout - Egg
  (568, 56800, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Trubbish - Autotomize - Egg
  (568, 56800, 475, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Garbodor - Pound - Level 1
  (569, 56900, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Garbodor - Take Down - Level 1
  (569, 56900, 36, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Garbodor - Poison Gas - Level 1
  (569, 56900, 139, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Garbodor - Metal Claw - Level 1
  (569, 56900, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Garbodor - Recycle - Level 1
  (569, 56900, 278, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Garbodor - Acid Spray - Level 1
  (569, 56900, 491, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Garbodor - Amnesia - Level 9
  (569, 56900, 133, 18, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Garbodor - Clear Smog - Level 12
  (569, 56900, 499, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Garbodor - Toxic Spikes - Level 15
  (569, 56900, 390, 18, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Garbodor - Sludge - Level 18
  (569, 56900, 124, 18, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Garbodor - Stockpile - Level 21
  (569, 56900, 254, 18, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Garbodor - Swallow - Level 21
  (569, 56900, 256, 18, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Garbodor - Body Slam - Level 24
  (569, 56900, 34, 18, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Garbodor - Sludge Bomb - Level 27
  (569, 56900, 188, 18, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Garbodor - Toxic - Level 30
  (569, 56900, 92, 18, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Garbodor - Belch - Level 33
  (569, 56900, 562, 18, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Garbodor - Pain Split - Level 39
  (569, 56900, 220, 18, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Garbodor - Gunk Shot - Level 43
  (569, 56900, 441, 18, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Garbodor - Explosion - Level 48
  (569, 56900, 153, 18, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Garbodor - Hyper Beam - TM08
  (569, 56900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Garbodor - Giga Impact - TM09
  (569, 56900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Garbodor - Solar Beam - TM11
  (569, 56900, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Garbodor - Screech - TM16
  (569, 56900, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 23),
  -- Garbodor - Self-Destruct - TM20
  (569, 56900, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 24),
  -- Garbodor - Rest - TM21
  (569, 56900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Garbodor - Thief - TM23
  (569, 56900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 26),
  -- Garbodor - Snore - TM24
  (569, 56900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Garbodor - Protect - TM25
  (569, 56900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Garbodor - Giga Drain - TM28
  (569, 56900, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 29),
  -- Garbodor - Attract - TM31
  (569, 56900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Garbodor - Rain Dance - TM33
  (569, 56900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Garbodor - Sunny Day - TM34
  (569, 56900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Garbodor - Facade - TM39
  (569, 56900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Garbodor - Rock Blast - TM54
  (569, 56900, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 34),
  -- Garbodor - Payback - TM57
  (569, 56900, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 35),
  -- Garbodor - Fling - TM59
  (569, 56900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Garbodor - Drain Punch - TM63
  (569, 56900, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 37),
  -- Garbodor - Cross Poison - TM73
  (569, 56900, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 38),
  -- Garbodor - Venoshock - TM74
  (569, 56900, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 39),
  -- Garbodor - Round - TM76
  (569, 56900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Garbodor - Stomping Tantrum - TM98
  (569, 56900, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 41),
  -- Garbodor - Body Slam - TR01
  (569, 56900, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 42),
  -- Garbodor - Thunderbolt - TR08
  (569, 56900, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 43),
  -- Garbodor - Psychic - TR11
  (569, 56900, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 44),
  -- Garbodor - Amnesia - TR17
  (569, 56900, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 45),
  -- Garbodor - Substitute - TR20
  (569, 56900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 46),
  -- Garbodor - Sludge Bomb - TR22
  (569, 56900, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 47),
  -- Garbodor - Spikes - TR23
  (569, 56900, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 48),
  -- Garbodor - Endure - TR26
  (569, 56900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Garbodor - Sleep Talk - TR27
  (569, 56900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Garbodor - Toxic Spikes - TR54
  (569, 56900, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 51),
  -- Garbodor - Dark Pulse - TR58
  (569, 56900, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 52),
  -- Garbodor - Seed Bomb - TR59
  (569, 56900, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 53),
  -- Garbodor - Focus Blast - TR64
  (569, 56900, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 54),
  -- Garbodor - Gunk Shot - TR73
  (569, 56900, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 55),
  -- Garbodor - Sludge Wave - TR78
  (569, 56900, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 56),
  -- Garbodor - Venom Drench - TR91
  (569, 56900, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 57),
  -- Garbodor - Body Press - TR99
  (569, 56900, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 58),
  -- Zorua - Scratch - Level 1
  (570, 57000, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zorua - Leer - Level 1
  (570, 57000, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zorua - Torment - Level 4
  (570, 57000, 259, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Zorua - Hone Claws - Level 8
  (570, 57000, 468, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Zorua - Fury Swipes - Level 12
  (570, 57000, 154, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Zorua - Scary Face - Level 16
  (570, 57000, 184, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Zorua - Taunt - Level 20
  (570, 57000, 269, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Zorua - Knock Off - Level 24
  (570, 57000, 282, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Zorua - Fake Tears - Level 28
  (570, 57000, 313, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Zorua - Agility - Level 32
  (570, 57000, 97, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Zorua - Imprison - Level 36
  (570, 57000, 286, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Zorua - Night Daze - Level 40
  (570, 57000, 539, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Zorua - Nasty Plot - Level 44
  (570, 57000, 417, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Zorua - Foul Play - Level 48
  (570, 57000, 492, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Zorua - Dig - TM15
  (570, 57000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 15),
  -- Zorua - Rest - TM21
  (570, 57000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Zorua - Thief - TM23
  (570, 57000, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 17),
  -- Zorua - Snore - TM24
  (570, 57000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Zorua - Protect - TM25
  (570, 57000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Zorua - Scary Face - TM26
  (570, 57000, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 20),
  -- Zorua - Attract - TM31
  (570, 57000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Zorua - Rain Dance - TM33
  (570, 57000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Zorua - Sunny Day - TM34
  (570, 57000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 23),
  -- Zorua - Facade - TM39
  (570, 57000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Zorua - Swift - TM40
  (570, 57000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 25),
  -- Zorua - Revenge - TM42
  (570, 57000, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 26),
  -- Zorua - Imprison - TM44
  (570, 57000, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 27),
  -- Zorua - Fake Tears - TM47
  (570, 57000, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 28),
  -- Zorua - Bounce - TM52
  (570, 57000, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 29),
  -- Zorua - U-turn - TM56
  (570, 57000, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 30),
  -- Zorua - Payback - TM57
  (570, 57000, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Zorua - Assurance - TM58
  (570, 57000, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 32),
  -- Zorua - Fling - TM59
  (570, 57000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 33),
  -- Zorua - Round - TM76
  (570, 57000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Zorua - Hex - TM77
  (570, 57000, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 35),
  -- Zorua - Retaliate - TM79
  (570, 57000, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 36),
  -- Zorua - Snarl - TM85
  (570, 57000, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 37),
  -- Zorua - Swords Dance - TR00
  (570, 57000, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 38),
  -- Zorua - Agility - TR12
  (570, 57000, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 39),
  -- Zorua - Substitute - TR20
  (570, 57000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Zorua - Sludge Bomb - TR22
  (570, 57000, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 41),
  -- Zorua - Endure - TR26
  (570, 57000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Zorua - Sleep Talk - TR27
  (570, 57000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Zorua - Shadow Ball - TR33
  (570, 57000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 44),
  -- Zorua - Uproar - TR35
  (570, 57000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 45),
  -- Zorua - Taunt - TR37
  (570, 57000, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 46),
  -- Zorua - Trick - TR38
  (570, 57000, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 47),
  -- Zorua - Hyper Voice - TR42
  (570, 57000, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 48),
  -- Zorua - Calm Mind - TR49
  (570, 57000, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 49),
  -- Zorua - Dark Pulse - TR58
  (570, 57000, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 50),
  -- Zorua - Nasty Plot - TR68
  (570, 57000, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 51),
  -- Zorua - Grass Knot - TR77
  (570, 57000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 52),
  -- Zorua - Foul Play - TR81
  (570, 57000, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 53),
  -- Zorua - Counter - Egg
  (570, 57000, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Zorua - Detect - Egg
  (570, 57000, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Zorua - Memento - Egg
  (570, 57000, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Zorua - Extrasensory - Egg
  (570, 57000, 326, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Zorua - Copycat - Egg
  (570, 57000, 383, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Zorua - Sucker Punch - Egg
  (570, 57000, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Zoroark - Scratch - Level 1
  (571, 57100, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zoroark - Leer - Level 1
  (571, 57100, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zoroark - Torment - Level 1
  (571, 57100, 259, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zoroark - U-turn - Level 1
  (571, 57100, 369, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zoroark - Night Slash - Level 1
  (571, 57100, 400, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Zoroark - Hone Claws - Level 1
  (571, 57100, 468, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Zoroark - Fury Swipes - Level 12
  (571, 57100, 154, 18, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Zoroark - Scary Face - Level 16
  (571, 57100, 184, 18, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Zoroark - Taunt - Level 20
  (571, 57100, 269, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Zoroark - Knock Off - Level 24
  (571, 57100, 282, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Zoroark - Fake Tears - Level 28
  (571, 57100, 313, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Zoroark - Agility - Level 34
  (571, 57100, 97, 18, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Zoroark - Imprison - Level 40
  (571, 57100, 286, 18, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Zoroark - Night Daze - Level 46
  (571, 57100, 539, 18, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Zoroark - Nasty Plot - Level 52
  (571, 57100, 417, 18, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Zoroark - Foul Play - Level 58
  (571, 57100, 492, 18, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Zoroark - Night Slash - Evolution
  (571, 57100, 400, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Zoroark - Mega Punch - TM00
  (571, 57100, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 18),
  -- Zoroark - Mega Kick - TM01
  (571, 57100, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 19),
  -- Zoroark - Hyper Beam - TM08
  (571, 57100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Zoroark - Giga Impact - TM09
  (571, 57100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Zoroark - Dig - TM15
  (571, 57100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 22),
  -- Zoroark - Rest - TM21
  (571, 57100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Zoroark - Thief - TM23
  (571, 57100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Zoroark - Snore - TM24
  (571, 57100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Zoroark - Protect - TM25
  (571, 57100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Zoroark - Scary Face - TM26
  (571, 57100, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 27),
  -- Zoroark - Attract - TM31
  (571, 57100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Zoroark - Rain Dance - TM33
  (571, 57100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Zoroark - Sunny Day - TM34
  (571, 57100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Zoroark - Facade - TM39
  (571, 57100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Zoroark - Swift - TM40
  (571, 57100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 32),
  -- Zoroark - Revenge - TM42
  (571, 57100, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 33),
  -- Zoroark - Imprison - TM44
  (571, 57100, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 34),
  -- Zoroark - Fake Tears - TM47
  (571, 57100, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 35),
  -- Zoroark - Bounce - TM52
  (571, 57100, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 36),
  -- Zoroark - U-turn - TM56
  (571, 57100, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 37),
  -- Zoroark - Payback - TM57
  (571, 57100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 38),
  -- Zoroark - Assurance - TM58
  (571, 57100, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 39),
  -- Zoroark - Fling - TM59
  (571, 57100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Zoroark - Shadow Claw - TM65
  (571, 57100, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 41),
  -- Zoroark - Low Sweep - TM75
  (571, 57100, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 42),
  -- Zoroark - Round - TM76
  (571, 57100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 43),
  -- Zoroark - Hex - TM77
  (571, 57100, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 44),
  -- Zoroark - Retaliate - TM79
  (571, 57100, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 45),
  -- Zoroark - Snarl - TM85
  (571, 57100, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 46),
  -- Zoroark - Swords Dance - TR00
  (571, 57100, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 47),
  -- Zoroark - Flamethrower - TR02
  (571, 57100, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 48),
  -- Zoroark - Low Kick - TR07
  (571, 57100, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 49),
  -- Zoroark - Agility - TR12
  (571, 57100, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 50),
  -- Zoroark - Substitute - TR20
  (571, 57100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Zoroark - Sludge Bomb - TR22
  (571, 57100, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 52),
  -- Zoroark - Endure - TR26
  (571, 57100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Zoroark - Sleep Talk - TR27
  (571, 57100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Zoroark - Encore - TR30
  (571, 57100, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 55),
  -- Zoroark - Shadow Ball - TR33
  (571, 57100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 56),
  -- Zoroark - Uproar - TR35
  (571, 57100, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 57),
  -- Zoroark - Taunt - TR37
  (571, 57100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 58),
  -- Zoroark - Trick - TR38
  (571, 57100, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 59),
  -- Zoroark - Hyper Voice - TR42
  (571, 57100, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 60),
  -- Zoroark - Calm Mind - TR49
  (571, 57100, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 61),
  -- Zoroark - Dark Pulse - TR58
  (571, 57100, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 62),
  -- Zoroark - Focus Blast - TR64
  (571, 57100, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 63),
  -- Zoroark - Nasty Plot - TR68
  (571, 57100, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 64),
  -- Zoroark - Grass Knot - TR77
  (571, 57100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 65),
  -- Zoroark - Foul Play - TR81
  (571, 57100, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 66),
  -- Zoroark - Throat Chop - TR95
  (571, 57100, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 67),
  -- Minccino - Pound - Level 1
  (572, 57200, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Minccino - Baby-Doll Eyes - Level 1
  (572, 57200, 608, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Minccino - Helping Hand - Level 4
  (572, 57200, 270, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Minccino - Echoed Voice - Level 8
  (572, 57200, 497, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Minccino - Sing - Level 12
  (572, 57200, 47, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Minccino - Charm - Level 16
  (572, 57200, 204, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Minccino - Swift - Level 20
  (572, 57200, 129, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Minccino - Encore - Level 24
  (572, 57200, 227, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Minccino - After You - Level 28
  (572, 57200, 495, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Minccino - Tail Slap - Level 32
  (572, 57200, 541, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Minccino - Tickle - Level 36
  (572, 57200, 321, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Minccino - Slam - Level 40
  (572, 57200, 21, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Minccino - Hyper Voice - Level 44
  (572, 57200, 304, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Minccino - Last Resort - Level 48
  (572, 57200, 387, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Minccino - Thunder Wave - TM14
  (572, 57200, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 15),
  -- Minccino - Dig - TM15
  (572, 57200, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 16),
  -- Minccino - Safeguard - TM19
  (572, 57200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Minccino - Rest - TM21
  (572, 57200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Minccino - Thief - TM23
  (572, 57200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 19),
  -- Minccino - Snore - TM24
  (572, 57200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Minccino - Protect - TM25
  (572, 57200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Minccino - Charm - TM29
  (572, 57200, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 22),
  -- Minccino - Attract - TM31
  (572, 57200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 23),
  -- Minccino - Rain Dance - TM33
  (572, 57200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Minccino - Sunny Day - TM34
  (572, 57200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Minccino - Facade - TM39
  (572, 57200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Minccino - Swift - TM40
  (572, 57200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Minccino - Helping Hand - TM41
  (572, 57200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Minccino - Fake Tears - TM47
  (572, 57200, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 29),
  -- Minccino - U-turn - TM56
  (572, 57200, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 30),
  -- Minccino - Fling - TM59
  (572, 57200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 31),
  -- Minccino - Round - TM76
  (572, 57200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Minccino - Retaliate - TM79
  (572, 57200, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 33),
  -- Minccino - Tail Slap - TM84
  (572, 57200, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 34),
  -- Minccino - Thunderbolt - TR08
  (572, 57200, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 35),
  -- Minccino - Substitute - TR20
  (572, 57200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 36),
  -- Minccino - Endure - TR26
  (572, 57200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 37),
  -- Minccino - Sleep Talk - TR27
  (572, 57200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 38),
  -- Minccino - Encore - TR30
  (572, 57200, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 39),
  -- Minccino - Iron Tail - TR31
  (572, 57200, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 40),
  -- Minccino - Uproar - TR35
  (572, 57200, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 41),
  -- Minccino - Hyper Voice - TR42
  (572, 57200, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 42),
  -- Minccino - Calm Mind - TR49
  (572, 57200, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 43),
  -- Minccino - Seed Bomb - TR59
  (572, 57200, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 44),
  -- Minccino - Gunk Shot - TR73
  (572, 57200, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 45),
  -- Minccino - Grass Knot - TR77
  (572, 57200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 46),
  -- Minccino - Work Up - TR85
  (572, 57200, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 47),
  -- Minccino - Play Rough - TR90
  (572, 57200, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 48),
  -- Minccino - Dazzling Gleam - TR92
  (572, 57200, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 49),
  -- Minccino - Tail Whip - Egg
  (572, 57200, 39, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Minccino - Flail - Egg
  (572, 57200, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Minccino - Knock Off - Egg
  (572, 57200, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Minccino - Aqua Tail - Egg
  (572, 57200, 401, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cinccino - Pound - Level 1
  (573, 57300, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cinccino - Slam - Level 1
  (573, 57300, 21, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cinccino - Sing - Level 1
  (573, 57300, 47, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cinccino - Swift - Level 1
  (573, 57300, 129, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cinccino - Charm - Level 1
  (573, 57300, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cinccino - Encore - Level 1
  (573, 57300, 227, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Cinccino - Helping Hand - Level 1
  (573, 57300, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Cinccino - Hyper Voice - Level 1
  (573, 57300, 304, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Cinccino - Tickle - Level 1
  (573, 57300, 321, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Cinccino - Bullet Seed - Level 1
  (573, 57300, 331, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Cinccino - Rock Blast - Level 1
  (573, 57300, 350, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Cinccino - Last Resort - Level 1
  (573, 57300, 387, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Cinccino - After You - Level 1
  (573, 57300, 495, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Cinccino - Echoed Voice - Level 1
  (573, 57300, 497, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Cinccino - Tail Slap - Level 1
  (573, 57300, 541, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Cinccino - Baby-Doll Eyes - Level 1
  (573, 57300, 608, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Cinccino - Hyper Beam - TM08
  (573, 57300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Cinccino - Giga Impact - TM09
  (573, 57300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Cinccino - Thunder Wave - TM14
  (573, 57300, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 19),
  -- Cinccino - Dig - TM15
  (573, 57300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Cinccino - Light Screen - TM17
  (573, 57300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 21),
  -- Cinccino - Safeguard - TM19
  (573, 57300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Cinccino - Rest - TM21
  (573, 57300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Cinccino - Thief - TM23
  (573, 57300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Cinccino - Snore - TM24
  (573, 57300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Cinccino - Protect - TM25
  (573, 57300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Cinccino - Charm - TM29
  (573, 57300, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 27),
  -- Cinccino - Attract - TM31
  (573, 57300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Cinccino - Rain Dance - TM33
  (573, 57300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Cinccino - Sunny Day - TM34
  (573, 57300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Cinccino - Facade - TM39
  (573, 57300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Cinccino - Swift - TM40
  (573, 57300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 32),
  -- Cinccino - Helping Hand - TM41
  (573, 57300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Cinccino - Fake Tears - TM47
  (573, 57300, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 34),
  -- Cinccino - Bullet Seed - TM50
  (573, 57300, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 35),
  -- Cinccino - Rock Blast - TM54
  (573, 57300, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 36),
  -- Cinccino - U-turn - TM56
  (573, 57300, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 37),
  -- Cinccino - Fling - TM59
  (573, 57300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Cinccino - Round - TM76
  (573, 57300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 39),
  -- Cinccino - Retaliate - TM79
  (573, 57300, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 40),
  -- Cinccino - Tail Slap - TM84
  (573, 57300, 541, 18, NULL, 2, NULL, NULL, 18002084, NULL, 41),
  -- Cinccino - Thunderbolt - TR08
  (573, 57300, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 42),
  -- Cinccino - Thunder - TR09
  (573, 57300, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 43),
  -- Cinccino - Substitute - TR20
  (573, 57300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Cinccino - Endure - TR26
  (573, 57300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 45),
  -- Cinccino - Sleep Talk - TR27
  (573, 57300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 46),
  -- Cinccino - Encore - TR30
  (573, 57300, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 47),
  -- Cinccino - Iron Tail - TR31
  (573, 57300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 48),
  -- Cinccino - Uproar - TR35
  (573, 57300, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 49),
  -- Cinccino - Hyper Voice - TR42
  (573, 57300, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 50),
  -- Cinccino - Calm Mind - TR49
  (573, 57300, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 51),
  -- Cinccino - Seed Bomb - TR59
  (573, 57300, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 52),
  -- Cinccino - Focus Blast - TR64
  (573, 57300, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 53),
  -- Cinccino - Gunk Shot - TR73
  (573, 57300, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 54),
  -- Cinccino - Grass Knot - TR77
  (573, 57300, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 55),
  -- Cinccino - Work Up - TR85
  (573, 57300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 56),
  -- Cinccino - Play Rough - TR90
  (573, 57300, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 57),
  -- Cinccino - Dazzling Gleam - TR92
  (573, 57300, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 58),
  -- Gothita - Pound - Level 1
  (574, 57400, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gothita - Confusion - Level 1
  (574, 57400, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gothita - Play Nice - Level 4
  (574, 57400, 589, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Gothita - Tickle - Level 8
  (574, 57400, 321, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Gothita - Psybeam - Level 12
  (574, 57400, 60, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gothita - Charm - Level 16
  (574, 57400, 204, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gothita - Psyshock - Level 20
  (574, 57400, 473, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Gothita - Hypnosis - Level 24
  (574, 57400, 95, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Gothita - Fake Tears - Level 28
  (574, 57400, 313, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Gothita - Psych Up - Level 33
  (574, 57400, 244, 18, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Gothita - Psychic - Level 36
  (574, 57400, 94, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Gothita - Flatter - Level 40
  (574, 57400, 260, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Gothita - Future Sight - Level 44
  (574, 57400, 248, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Gothita - Magic Room - Level 48
  (574, 57400, 478, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Gothita - Thunder Wave - TM14
  (574, 57400, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 15),
  -- Gothita - Light Screen - TM17
  (574, 57400, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Gothita - Reflect - TM18
  (574, 57400, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 17),
  -- Gothita - Safeguard - TM19
  (574, 57400, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 18),
  -- Gothita - Rest - TM21
  (574, 57400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Gothita - Rock Slide - TM22
  (574, 57400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Gothita - Thief - TM23
  (574, 57400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Gothita - Snore - TM24
  (574, 57400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Gothita - Protect - TM25
  (574, 57400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Gothita - Charm - TM29
  (574, 57400, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 24),
  -- Gothita - Attract - TM31
  (574, 57400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Gothita - Rain Dance - TM33
  (574, 57400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Gothita - Facade - TM39
  (574, 57400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Gothita - Helping Hand - TM41
  (574, 57400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Gothita - Fake Tears - TM47
  (574, 57400, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 29),
  -- Gothita - Rock Tomb - TM48
  (574, 57400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Gothita - Payback - TM57
  (574, 57400, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Gothita - Fling - TM59
  (574, 57400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 32),
  -- Gothita - Guard Swap - TM61
  (574, 57400, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 33),
  -- Gothita - Trick Room - TM70
  (574, 57400, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 34),
  -- Gothita - Magic Room - TM72
  (574, 57400, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 35),
  -- Gothita - Round - TM76
  (574, 57400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Gothita - Thunderbolt - TR08
  (574, 57400, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 37),
  -- Gothita - Psychic - TR11
  (574, 57400, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 38),
  -- Gothita - Substitute - TR20
  (574, 57400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Gothita - Psyshock - TR25
  (574, 57400, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 40),
  -- Gothita - Endure - TR26
  (574, 57400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Gothita - Sleep Talk - TR27
  (574, 57400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Gothita - Shadow Ball - TR33
  (574, 57400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 43),
  -- Gothita - Future Sight - TR34
  (574, 57400, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 44),
  -- Gothita - Uproar - TR35
  (574, 57400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 45),
  -- Gothita - Taunt - TR37
  (574, 57400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 46),
  -- Gothita - Trick - TR38
  (574, 57400, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 47),
  -- Gothita - Skill Swap - TR40
  (574, 57400, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 48),
  -- Gothita - Calm Mind - TR49
  (574, 57400, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 49),
  -- Gothita - Dark Pulse - TR58
  (574, 57400, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 50),
  -- Gothita - Energy Ball - TR65
  (574, 57400, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 51),
  -- Gothita - Nasty Plot - TR68
  (574, 57400, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 52),
  -- Gothita - Zen Headbutt - TR69
  (574, 57400, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 53),
  -- Gothita - Grass Knot - TR77
  (574, 57400, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 54),
  -- Gothita - Foul Play - TR81
  (574, 57400, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 55),
  -- Gothita - Stored Power - TR82
  (574, 57400, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 56),
  -- Gothita - Ally Switch - TR83
  (574, 57400, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 57),
  -- Gothita - Mean Look - Egg
  (574, 57400, 212, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gothita - Mirror Coat - Egg
  (574, 57400, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Gothita - Fake Out - Egg
  (574, 57400, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gothita - Torment - Egg
  (574, 57400, 259, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gothita - Heal Pulse - Egg
  (574, 57400, 505, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Gothorita - Pound - Level 1
  (575, 57500, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gothorita - Confusion - Level 1
  (575, 57500, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gothorita - Tickle - Level 1
  (575, 57500, 321, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gothorita - Play Nice - Level 1
  (575, 57500, 589, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gothorita - Psybeam - Level 12
  (575, 57500, 60, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gothorita - Charm - Level 16
  (575, 57500, 204, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gothorita - Psyshock - Level 20
  (575, 57500, 473, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Gothorita - Hypnosis - Level 24
  (575, 57500, 95, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Gothorita - Fake Tears - Level 28
  (575, 57500, 313, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Gothorita - Psych Up - Level 35
  (575, 57500, 244, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Gothorita - Psychic - Level 40
  (575, 57500, 94, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Gothorita - Flatter - Level 46
  (575, 57500, 260, 18, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Gothorita - Future Sight - Level 52
  (575, 57500, 248, 18, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Gothorita - Magic Room - Level 58
  (575, 57500, 478, 18, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Gothorita - Thunder Wave - TM14
  (575, 57500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 15),
  -- Gothorita - Light Screen - TM17
  (575, 57500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Gothorita - Reflect - TM18
  (575, 57500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 17),
  -- Gothorita - Safeguard - TM19
  (575, 57500, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 18),
  -- Gothorita - Rest - TM21
  (575, 57500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Gothorita - Rock Slide - TM22
  (575, 57500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 20),
  -- Gothorita - Thief - TM23
  (575, 57500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 21),
  -- Gothorita - Snore - TM24
  (575, 57500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Gothorita - Protect - TM25
  (575, 57500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Gothorita - Charm - TM29
  (575, 57500, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 24),
  -- Gothorita - Attract - TM31
  (575, 57500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Gothorita - Rain Dance - TM33
  (575, 57500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Gothorita - Facade - TM39
  (575, 57500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Gothorita - Helping Hand - TM41
  (575, 57500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Gothorita - Fake Tears - TM47
  (575, 57500, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 29),
  -- Gothorita - Rock Tomb - TM48
  (575, 57500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Gothorita - Payback - TM57
  (575, 57500, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Gothorita - Fling - TM59
  (575, 57500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 32),
  -- Gothorita - Guard Swap - TM61
  (575, 57500, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 33),
  -- Gothorita - Trick Room - TM70
  (575, 57500, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 34),
  -- Gothorita - Magic Room - TM72
  (575, 57500, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 35),
  -- Gothorita - Round - TM76
  (575, 57500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 36),
  -- Gothorita - Thunderbolt - TR08
  (575, 57500, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 37),
  -- Gothorita - Psychic - TR11
  (575, 57500, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 38),
  -- Gothorita - Substitute - TR20
  (575, 57500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Gothorita - Psyshock - TR25
  (575, 57500, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 40),
  -- Gothorita - Endure - TR26
  (575, 57500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Gothorita - Sleep Talk - TR27
  (575, 57500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Gothorita - Shadow Ball - TR33
  (575, 57500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 43),
  -- Gothorita - Future Sight - TR34
  (575, 57500, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 44),
  -- Gothorita - Uproar - TR35
  (575, 57500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 45),
  -- Gothorita - Taunt - TR37
  (575, 57500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 46),
  -- Gothorita - Trick - TR38
  (575, 57500, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 47),
  -- Gothorita - Skill Swap - TR40
  (575, 57500, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 48),
  -- Gothorita - Calm Mind - TR49
  (575, 57500, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 49),
  -- Gothorita - Dark Pulse - TR58
  (575, 57500, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 50),
  -- Gothorita - Energy Ball - TR65
  (575, 57500, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 51),
  -- Gothorita - Nasty Plot - TR68
  (575, 57500, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 52),
  -- Gothorita - Zen Headbutt - TR69
  (575, 57500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 53),
  -- Gothorita - Grass Knot - TR77
  (575, 57500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 54),
  -- Gothorita - Foul Play - TR81
  (575, 57500, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 55),
  -- Gothorita - Stored Power - TR82
  (575, 57500, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 56),
  -- Gothorita - Ally Switch - TR83
  (575, 57500, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 57),
  -- Gothitelle - Pound - Level 1
  (576, 57600, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gothitelle - Confusion - Level 1
  (576, 57600, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gothitelle - Tickle - Level 1
  (576, 57600, 321, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gothitelle - Play Nice - Level 1
  (576, 57600, 589, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gothitelle - Psybeam - Level 12
  (576, 57600, 60, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gothitelle - Charm - Level 16
  (576, 57600, 204, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gothitelle - Psyshock - Level 20
  (576, 57600, 473, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Gothitelle - Hypnosis - Level 24
  (576, 57600, 95, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Gothitelle - Fake Tears - Level 28
  (576, 57600, 313, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Gothitelle - Psych Up - Level 35
  (576, 57600, 244, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Gothitelle - Psychic - Level 40
  (576, 57600, 94, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Gothitelle - Flatter - Level 48
  (576, 57600, 260, 18, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Gothitelle - Future Sight - Level 56
  (576, 57600, 248, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Gothitelle - Magic Room - Level 64
  (576, 57600, 478, 18, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Gothitelle - Hyper Beam - TM08
  (576, 57600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Gothitelle - Giga Impact - TM09
  (576, 57600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Gothitelle - Thunder Wave - TM14
  (576, 57600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 17),
  -- Gothitelle - Light Screen - TM17
  (576, 57600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 18),
  -- Gothitelle - Reflect - TM18
  (576, 57600, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 19),
  -- Gothitelle - Safeguard - TM19
  (576, 57600, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 20),
  -- Gothitelle - Rest - TM21
  (576, 57600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Gothitelle - Rock Slide - TM22
  (576, 57600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Gothitelle - Thief - TM23
  (576, 57600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Gothitelle - Snore - TM24
  (576, 57600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Gothitelle - Protect - TM25
  (576, 57600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Gothitelle - Charm - TM29
  (576, 57600, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 26),
  -- Gothitelle - Attract - TM31
  (576, 57600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Gothitelle - Rain Dance - TM33
  (576, 57600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Gothitelle - Facade - TM39
  (576, 57600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Gothitelle - Helping Hand - TM41
  (576, 57600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 30),
  -- Gothitelle - Brick Break - TM43
  (576, 57600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Gothitelle - Imprison - TM44
  (576, 57600, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 32),
  -- Gothitelle - Fake Tears - TM47
  (576, 57600, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 33),
  -- Gothitelle - Rock Tomb - TM48
  (576, 57600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 34),
  -- Gothitelle - Payback - TM57
  (576, 57600, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 35),
  -- Gothitelle - Fling - TM59
  (576, 57600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Gothitelle - Guard Swap - TM61
  (576, 57600, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 37),
  -- Gothitelle - Trick Room - TM70
  (576, 57600, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 38),
  -- Gothitelle - Magic Room - TM72
  (576, 57600, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 39),
  -- Gothitelle - Low Sweep - TM75
  (576, 57600, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 40),
  -- Gothitelle - Round - TM76
  (576, 57600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Gothitelle - Thunderbolt - TR08
  (576, 57600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 42),
  -- Gothitelle - Psychic - TR11
  (576, 57600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 43),
  -- Gothitelle - Substitute - TR20
  (576, 57600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Gothitelle - Psyshock - TR25
  (576, 57600, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 45),
  -- Gothitelle - Endure - TR26
  (576, 57600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Gothitelle - Sleep Talk - TR27
  (576, 57600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Gothitelle - Shadow Ball - TR33
  (576, 57600, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 48),
  -- Gothitelle - Future Sight - TR34
  (576, 57600, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 49),
  -- Gothitelle - Uproar - TR35
  (576, 57600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 50),
  -- Gothitelle - Taunt - TR37
  (576, 57600, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 51),
  -- Gothitelle - Trick - TR38
  (576, 57600, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 52),
  -- Gothitelle - Skill Swap - TR40
  (576, 57600, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 53),
  -- Gothitelle - Cosmic Power - TR44
  (576, 57600, 322, 18, NULL, 4, NULL, NULL, 18004044, NULL, 54),
  -- Gothitelle - Calm Mind - TR49
  (576, 57600, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 55),
  -- Gothitelle - Dark Pulse - TR58
  (576, 57600, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 56),
  -- Gothitelle - Energy Ball - TR65
  (576, 57600, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 57),
  -- Gothitelle - Nasty Plot - TR68
  (576, 57600, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 58),
  -- Gothitelle - Zen Headbutt - TR69
  (576, 57600, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 59),
  -- Gothitelle - Grass Knot - TR77
  (576, 57600, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 60),
  -- Gothitelle - Foul Play - TR81
  (576, 57600, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 61),
  -- Gothitelle - Stored Power - TR82
  (576, 57600, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 62),
  -- Gothitelle - Ally Switch - TR83
  (576, 57600, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 63),
  -- Solosis - Confusion - Level 1
  (577, 57700, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Solosis - Protect - Level 1
  (577, 57700, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Solosis - Recover - Level 4
  (577, 57700, 105, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Solosis - Endeavor - Level 8
  (577, 57700, 283, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Solosis - Psybeam - Level 12
  (577, 57700, 60, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Solosis - Charm - Level 16
  (577, 57700, 204, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Solosis - Psyshock - Level 20
  (577, 57700, 473, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Solosis - Light Screen - Level 24
  (577, 57700, 113, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Solosis - Reflect - Level 24
  (577, 57700, 115, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Solosis - Ally Switch - Level 28
  (577, 57700, 502, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Solosis - Pain Split - Level 33
  (577, 57700, 220, 18, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Solosis - Psychic - Level 36
  (577, 57700, 94, 18, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Solosis - Skill Swap - Level 40
  (577, 57700, 285, 18, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Solosis - Future Sight - Level 44
  (577, 57700, 248, 18, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Solosis - Wonder Room - Level 48
  (577, 57700, 472, 18, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Solosis - Thunder Wave - TM14
  (577, 57700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Solosis - Light Screen - TM17
  (577, 57700, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 17),
  -- Solosis - Reflect - TM18
  (577, 57700, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 18),
  -- Solosis - Safeguard - TM19
  (577, 57700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Solosis - Rest - TM21
  (577, 57700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Solosis - Rock Slide - TM22
  (577, 57700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Solosis - Snore - TM24
  (577, 57700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Solosis - Protect - TM25
  (577, 57700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Solosis - Charm - TM29
  (577, 57700, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 24),
  -- Solosis - Attract - TM31
  (577, 57700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Solosis - Rain Dance - TM33
  (577, 57700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Solosis - Facade - TM39
  (577, 57700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Solosis - Helping Hand - TM41
  (577, 57700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Solosis - Imprison - TM44
  (577, 57700, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 29),
  -- Solosis - Rock Tomb - TM48
  (577, 57700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Solosis - Power Swap - TM60
  (577, 57700, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 31),
  -- Solosis - Guard Swap - TM61
  (577, 57700, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 32),
  -- Solosis - Trick Room - TM70
  (577, 57700, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 33),
  -- Solosis - Wonder Room - TM71
  (577, 57700, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 34),
  -- Solosis - Round - TM76
  (577, 57700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Solosis - Psychic Terrain - TM91
  (577, 57700, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 36),
  -- Solosis - Thunder - TR09
  (577, 57700, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 37),
  -- Solosis - Psychic - TR11
  (577, 57700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 38),
  -- Solosis - Substitute - TR20
  (577, 57700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Solosis - Psyshock - TR25
  (577, 57700, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 40),
  -- Solosis - Endure - TR26
  (577, 57700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Solosis - Sleep Talk - TR27
  (577, 57700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Solosis - Encore - TR30
  (577, 57700, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 43),
  -- Solosis - Shadow Ball - TR33
  (577, 57700, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 44),
  -- Solosis - Future Sight - TR34
  (577, 57700, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 45),
  -- Solosis - Trick - TR38
  (577, 57700, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 46),
  -- Solosis - Skill Swap - TR40
  (577, 57700, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 47),
  -- Solosis - Iron Defense - TR46
  (577, 57700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 48),
  -- Solosis - Calm Mind - TR49
  (577, 57700, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 49),
  -- Solosis - Gyro Ball - TR52
  (577, 57700, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 50),
  -- Solosis - Energy Ball - TR65
  (577, 57700, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 51),
  -- Solosis - Zen Headbutt - TR69
  (577, 57700, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 52),
  -- Solosis - Flash Cannon - TR70
  (577, 57700, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 53),
  -- Solosis - Stored Power - TR82
  (577, 57700, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 54),
  -- Solosis - Ally Switch - TR83
  (577, 57700, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 55),
  -- Solosis - Confuse Ray - Egg
  (577, 57700, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Solosis - Acid Armor - Egg
  (577, 57700, 151, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Solosis - Astonish - Egg
  (577, 57700, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Duosion - Confusion - Level 1
  (578, 57800, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Duosion - Recover - Level 1
  (578, 57800, 105, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Duosion - Protect - Level 1
  (578, 57800, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Duosion - Endeavor - Level 1
  (578, 57800, 283, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Duosion - Psybeam - Level 12
  (578, 57800, 60, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Duosion - Charm - Level 16
  (578, 57800, 204, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Duosion - Psyshock - Level 20
  (578, 57800, 473, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Duosion - Light Screen - Level 24
  (578, 57800, 113, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Duosion - Reflect - Level 24
  (578, 57800, 115, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Duosion - Ally Switch - Level 28
  (578, 57800, 502, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Duosion - Pain Split - Level 35
  (578, 57800, 220, 18, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Duosion - Psychic - Level 40
  (578, 57800, 94, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Duosion - Skill Swap - Level 46
  (578, 57800, 285, 18, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Duosion - Future Sight - Level 52
  (578, 57800, 248, 18, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Duosion - Wonder Room - Level 58
  (578, 57800, 472, 18, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Duosion - Thunder Wave - TM14
  (578, 57800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Duosion - Light Screen - TM17
  (578, 57800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 17),
  -- Duosion - Reflect - TM18
  (578, 57800, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 18),
  -- Duosion - Safeguard - TM19
  (578, 57800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Duosion - Rest - TM21
  (578, 57800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Duosion - Rock Slide - TM22
  (578, 57800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 21),
  -- Duosion - Snore - TM24
  (578, 57800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Duosion - Protect - TM25
  (578, 57800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Duosion - Charm - TM29
  (578, 57800, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 24),
  -- Duosion - Attract - TM31
  (578, 57800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Duosion - Rain Dance - TM33
  (578, 57800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Duosion - Facade - TM39
  (578, 57800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Duosion - Helping Hand - TM41
  (578, 57800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 28),
  -- Duosion - Imprison - TM44
  (578, 57800, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 29),
  -- Duosion - Rock Tomb - TM48
  (578, 57800, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Duosion - Power Swap - TM60
  (578, 57800, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 31),
  -- Duosion - Guard Swap - TM61
  (578, 57800, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 32),
  -- Duosion - Trick Room - TM70
  (578, 57800, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 33),
  -- Duosion - Wonder Room - TM71
  (578, 57800, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 34),
  -- Duosion - Round - TM76
  (578, 57800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Duosion - Psychic Terrain - TM91
  (578, 57800, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 36),
  -- Duosion - Thunder - TR09
  (578, 57800, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 37),
  -- Duosion - Psychic - TR11
  (578, 57800, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 38),
  -- Duosion - Substitute - TR20
  (578, 57800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Duosion - Psyshock - TR25
  (578, 57800, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 40),
  -- Duosion - Endure - TR26
  (578, 57800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Duosion - Sleep Talk - TR27
  (578, 57800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Duosion - Encore - TR30
  (578, 57800, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 43),
  -- Duosion - Shadow Ball - TR33
  (578, 57800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 44),
  -- Duosion - Future Sight - TR34
  (578, 57800, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 45),
  -- Duosion - Trick - TR38
  (578, 57800, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 46),
  -- Duosion - Skill Swap - TR40
  (578, 57800, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 47),
  -- Duosion - Iron Defense - TR46
  (578, 57800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 48),
  -- Duosion - Calm Mind - TR49
  (578, 57800, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 49),
  -- Duosion - Gyro Ball - TR52
  (578, 57800, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 50),
  -- Duosion - Energy Ball - TR65
  (578, 57800, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 51),
  -- Duosion - Zen Headbutt - TR69
  (578, 57800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 52),
  -- Duosion - Flash Cannon - TR70
  (578, 57800, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 53),
  -- Duosion - Stored Power - TR82
  (578, 57800, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 54),
  -- Duosion - Ally Switch - TR83
  (578, 57800, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 55),
  -- Reuniclus - Confusion - Level 1
  (579, 57900, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Reuniclus - Recover - Level 1
  (579, 57900, 105, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Reuniclus - Protect - Level 1
  (579, 57900, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Reuniclus - Endeavor - Level 1
  (579, 57900, 283, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Reuniclus - Hammer Arm - Level 1
  (579, 57900, 359, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Reuniclus - Psybeam - Level 12
  (579, 57900, 60, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Reuniclus - Charm - Level 16
  (579, 57900, 204, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Reuniclus - Psyshock - Level 20
  (579, 57900, 473, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Reuniclus - Light Screen - Level 24
  (579, 57900, 113, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Reuniclus - Reflect - Level 24
  (579, 57900, 115, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Reuniclus - Ally Switch - Level 28
  (579, 57900, 502, 18, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Reuniclus - Pain Split - Level 35
  (579, 57900, 220, 18, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Reuniclus - Psychic - Level 40
  (579, 57900, 94, 18, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Reuniclus - Skill Swap - Level 48
  (579, 57900, 285, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Reuniclus - Future Sight - Level 56
  (579, 57900, 248, 18, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Reuniclus - Wonder Room - Level 64
  (579, 57900, 472, 18, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Reuniclus - Hammer Arm - Evolution
  (579, 57900, 359, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Reuniclus - Mega Punch - TM00
  (579, 57900, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 18),
  -- Reuniclus - Fire Punch - TM03
  (579, 57900, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 19),
  -- Reuniclus - Ice Punch - TM04
  (579, 57900, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 20),
  -- Reuniclus - Thunder Punch - TM05
  (579, 57900, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 21),
  -- Reuniclus - Hyper Beam - TM08
  (579, 57900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 22),
  -- Reuniclus - Giga Impact - TM09
  (579, 57900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 23),
  -- Reuniclus - Thunder Wave - TM14
  (579, 57900, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 24),
  -- Reuniclus - Light Screen - TM17
  (579, 57900, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 25),
  -- Reuniclus - Reflect - TM18
  (579, 57900, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 26),
  -- Reuniclus - Safeguard - TM19
  (579, 57900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 27),
  -- Reuniclus - Rest - TM21
  (579, 57900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 28),
  -- Reuniclus - Rock Slide - TM22
  (579, 57900, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 29),
  -- Reuniclus - Snore - TM24
  (579, 57900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 30),
  -- Reuniclus - Protect - TM25
  (579, 57900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 31),
  -- Reuniclus - Charm - TM29
  (579, 57900, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 32),
  -- Reuniclus - Attract - TM31
  (579, 57900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 33),
  -- Reuniclus - Rain Dance - TM33
  (579, 57900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 34),
  -- Reuniclus - Facade - TM39
  (579, 57900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 35),
  -- Reuniclus - Helping Hand - TM41
  (579, 57900, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 36),
  -- Reuniclus - Imprison - TM44
  (579, 57900, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 37),
  -- Reuniclus - Rock Tomb - TM48
  (579, 57900, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 38),
  -- Reuniclus - Fling - TM59
  (579, 57900, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 39),
  -- Reuniclus - Power Swap - TM60
  (579, 57900, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 40),
  -- Reuniclus - Guard Swap - TM61
  (579, 57900, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 41),
  -- Reuniclus - Drain Punch - TM63
  (579, 57900, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 42),
  -- Reuniclus - Trick Room - TM70
  (579, 57900, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 43),
  -- Reuniclus - Wonder Room - TM71
  (579, 57900, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 44),
  -- Reuniclus - Round - TM76
  (579, 57900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Reuniclus - Psychic Terrain - TM91
  (579, 57900, 678, 18, NULL, 2, NULL, NULL, 18002091, NULL, 46),
  -- Reuniclus - Thunder - TR09
  (579, 57900, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 47),
  -- Reuniclus - Psychic - TR11
  (579, 57900, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 48),
  -- Reuniclus - Substitute - TR20
  (579, 57900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Reuniclus - Psyshock - TR25
  (579, 57900, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 50),
  -- Reuniclus - Endure - TR26
  (579, 57900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 51),
  -- Reuniclus - Sleep Talk - TR27
  (579, 57900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 52),
  -- Reuniclus - Encore - TR30
  (579, 57900, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 53),
  -- Reuniclus - Shadow Ball - TR33
  (579, 57900, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 54),
  -- Reuniclus - Future Sight - TR34
  (579, 57900, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 55),
  -- Reuniclus - Trick - TR38
  (579, 57900, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 56),
  -- Reuniclus - Superpower - TR39
  (579, 57900, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 57),
  -- Reuniclus - Skill Swap - TR40
  (579, 57900, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 58),
  -- Reuniclus - Iron Defense - TR46
  (579, 57900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 59),
  -- Reuniclus - Calm Mind - TR49
  (579, 57900, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 60),
  -- Reuniclus - Gyro Ball - TR52
  (579, 57900, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 61),
  -- Reuniclus - Focus Blast - TR64
  (579, 57900, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 62),
  -- Reuniclus - Energy Ball - TR65
  (579, 57900, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 63),
  -- Reuniclus - Zen Headbutt - TR69
  (579, 57900, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 64),
  -- Reuniclus - Flash Cannon - TR70
  (579, 57900, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 65),
  -- Reuniclus - Grass Knot - TR77
  (579, 57900, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 66),
  -- Reuniclus - Stored Power - TR82
  (579, 57900, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 67),
  -- Reuniclus - Ally Switch - TR83
  (579, 57900, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 68),
  -- Vanillite - Harden - Level 1
  (582, 58200, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vanillite - Astonish - Level 1
  (582, 58200, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vanillite - Taunt - Level 4
  (582, 58200, 269, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Vanillite - Mist - Level 8
  (582, 58200, 54, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Vanillite - Icy Wind - Level 12
  (582, 58200, 196, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Vanillite - Avalanche - Level 16
  (582, 58200, 419, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Vanillite - Hail - Level 20
  (582, 58200, 258, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Vanillite - Icicle Spear - Level 24
  (582, 58200, 333, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Vanillite - Uproar - Level 28
  (582, 58200, 253, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Vanillite - Acid Armor - Level 32
  (582, 58200, 151, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Vanillite - Mirror Coat - Level 36
  (582, 58200, 243, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Vanillite - Ice Beam - Level 40
  (582, 58200, 58, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Vanillite - Blizzard - Level 44
  (582, 58200, 59, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Vanillite - Sheer Cold - Level 48
  (582, 58200, 329, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Vanillite - Light Screen - TM17
  (582, 58200, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 15),
  -- Vanillite - Self-Destruct - TM20
  (582, 58200, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 16),
  -- Vanillite - Rest - TM21
  (582, 58200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Vanillite - Snore - TM24
  (582, 58200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Vanillite - Protect - TM25
  (582, 58200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Vanillite - Icy Wind - TM27
  (582, 58200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 20),
  -- Vanillite - Attract - TM31
  (582, 58200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Vanillite - Rain Dance - TM33
  (582, 58200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Vanillite - Hail - TM35
  (582, 58200, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 23),
  -- Vanillite - Facade - TM39
  (582, 58200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Vanillite - Imprison - TM44
  (582, 58200, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 25),
  -- Vanillite - Icicle Spear - TM51
  (582, 58200, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 26),
  -- Vanillite - Avalanche - TM64
  (582, 58200, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 27),
  -- Vanillite - Round - TM76
  (582, 58200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Vanillite - Ice Beam - TR05
  (582, 58200, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 29),
  -- Vanillite - Blizzard - TR06
  (582, 58200, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 30),
  -- Vanillite - Substitute - TR20
  (582, 58200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 31),
  -- Vanillite - Endure - TR26
  (582, 58200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 32),
  -- Vanillite - Sleep Talk - TR27
  (582, 58200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 33),
  -- Vanillite - Uproar - TR35
  (582, 58200, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 34),
  -- Vanillite - Taunt - TR37
  (582, 58200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 35),
  -- Vanillite - Hyper Voice - TR42
  (582, 58200, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 36),
  -- Vanillite - Iron Defense - TR46
  (582, 58200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 37),
  -- Vanillite - Flash Cannon - TR70
  (582, 58200, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 38),
  -- Vanillite - Ally Switch - TR83
  (582, 58200, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 39),
  -- Vanillite - Explosion - Egg
  (582, 58200, 153, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Vanillite - Magnet Rise - Egg
  (582, 58200, 393, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Vanillite - Ice Shard - Egg
  (582, 58200, 420, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Vanillite - Autotomize - Egg
  (582, 58200, 475, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Vanillite - Icicle Crash - Egg
  (582, 58200, 556, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Vanillite - Aurora Veil - Egg
  (582, 58200, 694, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Vanillish - Mist - Level 1
  (583, 58300, 54, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vanillish - Harden - Level 1
  (583, 58300, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vanillish - Taunt - Level 1
  (583, 58300, 269, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vanillish - Astonish - Level 1
  (583, 58300, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vanillish - Icy Wind - Level 12
  (583, 58300, 196, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Vanillish - Avalanche - Level 16
  (583, 58300, 419, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Vanillish - Hail - Level 20
  (583, 58300, 258, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Vanillish - Icicle Spear - Level 24
  (583, 58300, 333, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Vanillish - Uproar - Level 28
  (583, 58300, 253, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Vanillish - Acid Armor - Level 32
  (583, 58300, 151, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Vanillish - Mirror Coat - Level 38
  (583, 58300, 243, 18, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Vanillish - Ice Beam - Level 44
  (583, 58300, 58, 18, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Vanillish - Blizzard - Level 50
  (583, 58300, 59, 18, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Vanillish - Sheer Cold - Level 56
  (583, 58300, 329, 18, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Vanillish - Light Screen - TM17
  (583, 58300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 15),
  -- Vanillish - Self-Destruct - TM20
  (583, 58300, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 16),
  -- Vanillish - Rest - TM21
  (583, 58300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Vanillish - Snore - TM24
  (583, 58300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Vanillish - Protect - TM25
  (583, 58300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Vanillish - Icy Wind - TM27
  (583, 58300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 20),
  -- Vanillish - Attract - TM31
  (583, 58300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Vanillish - Rain Dance - TM33
  (583, 58300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Vanillish - Hail - TM35
  (583, 58300, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 23),
  -- Vanillish - Facade - TM39
  (583, 58300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Vanillish - Imprison - TM44
  (583, 58300, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 25),
  -- Vanillish - Icicle Spear - TM51
  (583, 58300, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 26),
  -- Vanillish - Avalanche - TM64
  (583, 58300, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 27),
  -- Vanillish - Round - TM76
  (583, 58300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Vanillish - Ice Beam - TR05
  (583, 58300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 29),
  -- Vanillish - Blizzard - TR06
  (583, 58300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 30),
  -- Vanillish - Substitute - TR20
  (583, 58300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 31),
  -- Vanillish - Endure - TR26
  (583, 58300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 32),
  -- Vanillish - Sleep Talk - TR27
  (583, 58300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 33),
  -- Vanillish - Uproar - TR35
  (583, 58300, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 34),
  -- Vanillish - Taunt - TR37
  (583, 58300, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 35),
  -- Vanillish - Hyper Voice - TR42
  (583, 58300, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 36),
  -- Vanillish - Iron Defense - TR46
  (583, 58300, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 37),
  -- Vanillish - Flash Cannon - TR70
  (583, 58300, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 38),
  -- Vanillish - Ally Switch - TR83
  (583, 58300, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 39),
  -- Vanilluxe - Mist - Level 1
  (584, 58400, 54, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vanilluxe - Harden - Level 1
  (584, 58400, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vanilluxe - Taunt - Level 1
  (584, 58400, 269, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vanilluxe - Astonish - Level 1
  (584, 58400, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vanilluxe - Weather Ball - Level 1
  (584, 58400, 311, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vanilluxe - Icicle Crash - Level 1
  (584, 58400, 556, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Vanilluxe - Freeze-Dry - Level 1
  (584, 58400, 573, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Vanilluxe - Icy Wind - Level 12
  (584, 58400, 196, 18, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Vanilluxe - Avalanche - Level 16
  (584, 58400, 419, 18, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Vanilluxe - Hail - Level 20
  (584, 58400, 258, 18, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Vanilluxe - Icicle Spear - Level 24
  (584, 58400, 333, 18, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Vanilluxe - Uproar - Level 28
  (584, 58400, 253, 18, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Vanilluxe - Acid Armor - Level 32
  (584, 58400, 151, 18, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Vanilluxe - Mirror Coat - Level 38
  (584, 58400, 243, 18, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Vanilluxe - Ice Beam - Level 44
  (584, 58400, 58, 18, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Vanilluxe - Blizzard - Level 52
  (584, 58400, 59, 18, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Vanilluxe - Sheer Cold - Level 60
  (584, 58400, 329, 18, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Vanilluxe - Hyper Beam - TM08
  (584, 58400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Vanilluxe - Giga Impact - TM09
  (584, 58400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Vanilluxe - Light Screen - TM17
  (584, 58400, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Vanilluxe - Self-Destruct - TM20
  (584, 58400, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 21),
  -- Vanilluxe - Rest - TM21
  (584, 58400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Vanilluxe - Snore - TM24
  (584, 58400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Vanilluxe - Protect - TM25
  (584, 58400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Vanilluxe - Icy Wind - TM27
  (584, 58400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 25),
  -- Vanilluxe - Attract - TM31
  (584, 58400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Vanilluxe - Rain Dance - TM33
  (584, 58400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Vanilluxe - Hail - TM35
  (584, 58400, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 28),
  -- Vanilluxe - Beat Up - TM37
  (584, 58400, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 29),
  -- Vanilluxe - Facade - TM39
  (584, 58400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Vanilluxe - Imprison - TM44
  (584, 58400, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 31),
  -- Vanilluxe - Weather Ball - TM46
  (584, 58400, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 32),
  -- Vanilluxe - Icicle Spear - TM51
  (584, 58400, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 33),
  -- Vanilluxe - Avalanche - TM64
  (584, 58400, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 34),
  -- Vanilluxe - Round - TM76
  (584, 58400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Vanilluxe - Ice Beam - TR05
  (584, 58400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 36),
  -- Vanilluxe - Blizzard - TR06
  (584, 58400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 37),
  -- Vanilluxe - Substitute - TR20
  (584, 58400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Vanilluxe - Endure - TR26
  (584, 58400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Vanilluxe - Sleep Talk - TR27
  (584, 58400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Vanilluxe - Uproar - TR35
  (584, 58400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 41),
  -- Vanilluxe - Taunt - TR37
  (584, 58400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 42),
  -- Vanilluxe - Hyper Voice - TR42
  (584, 58400, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 43),
  -- Vanilluxe - Iron Defense - TR46
  (584, 58400, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 44),
  -- Vanilluxe - Flash Cannon - TR70
  (584, 58400, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 45),
  -- Vanilluxe - Ally Switch - TR83
  (584, 58400, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 46),
  -- Emolga - Tail Whip - Level 1
  (587, 58700, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Emolga - Nuzzle - Level 1
  (587, 58700, 609, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Emolga - Double Team - Level 5
  (587, 58700, 104, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Emolga - Quick Attack - Level 10
  (587, 58700, 98, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Emolga - Thunder Shock - Level 15
  (587, 58700, 84, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Emolga - Charge - Level 20
  (587, 58700, 268, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Emolga - Acrobatics - Level 25
  (587, 58700, 512, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Emolga - Spark - Level 30
  (587, 58700, 209, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Emolga - Encore - Level 35
  (587, 58700, 227, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Emolga - Volt Switch - Level 40
  (587, 58700, 521, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Emolga - Light Screen - Level 45
  (587, 58700, 113, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Emolga - Discharge - Level 50
  (587, 58700, 435, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Emolga - Agility - Level 55
  (587, 58700, 97, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Emolga - Solar Beam - TM11
  (587, 58700, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 14),
  -- Emolga - Thunder Wave - TM14
  (587, 58700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 15),
  -- Emolga - Light Screen - TM17
  (587, 58700, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 16),
  -- Emolga - Rest - TM21
  (587, 58700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Emolga - Snore - TM24
  (587, 58700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Emolga - Protect - TM25
  (587, 58700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Emolga - Charm - TM29
  (587, 58700, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 20),
  -- Emolga - Attract - TM31
  (587, 58700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Emolga - Rain Dance - TM33
  (587, 58700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Emolga - Facade - TM39
  (587, 58700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Emolga - Swift - TM40
  (587, 58700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 24),
  -- Emolga - Helping Hand - TM41
  (587, 58700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 25),
  -- Emolga - U-turn - TM56
  (587, 58700, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 26),
  -- Emolga - Fling - TM59
  (587, 58700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 27),
  -- Emolga - Speed Swap - TM62
  (587, 58700, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 28),
  -- Emolga - Round - TM76
  (587, 58700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Emolga - Acrobatics - TM78
  (587, 58700, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 30),
  -- Emolga - Volt Switch - TM80
  (587, 58700, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 31),
  -- Emolga - Electroweb - TM82
  (587, 58700, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 32),
  -- Emolga - Eerie Impulse - TM93
  (587, 58700, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 33),
  -- Emolga - Air Slash - TM95
  (587, 58700, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 34),
  -- Emolga - Thunderbolt - TR08
  (587, 58700, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 35),
  -- Emolga - Thunder - TR09
  (587, 58700, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 36),
  -- Emolga - Agility - TR12
  (587, 58700, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 37),
  -- Emolga - Substitute - TR20
  (587, 58700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 38),
  -- Emolga - Endure - TR26
  (587, 58700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 39),
  -- Emolga - Sleep Talk - TR27
  (587, 58700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 40),
  -- Emolga - Baton Pass - TR29
  (587, 58700, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 41),
  -- Emolga - Encore - TR30
  (587, 58700, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 42),
  -- Emolga - Iron Tail - TR31
  (587, 58700, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 43),
  -- Emolga - Taunt - TR37
  (587, 58700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 44),
  -- Emolga - Energy Ball - TR65
  (587, 58700, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 45),
  -- Emolga - Electro Ball - TR80
  (587, 58700, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 46),
  -- Emolga - Wild Charge - TR86
  (587, 58700, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 47),
  -- Emolga - Astonish - Egg
  (587, 58700, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Emolga - Tickle - Egg
  (587, 58700, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Emolga - Covet - Egg
  (587, 58700, 343, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Emolga - Shock Wave - Egg
  (587, 58700, 351, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Emolga - Roost - Egg
  (587, 58700, 355, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Emolga - Defog - Egg
  (587, 58700, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Karrablast - Leer - Level 1
  (588, 58800, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Karrablast - Peck - Level 1
  (588, 58800, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Karrablast - Fury Cutter - Level 4
  (588, 58800, 210, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Karrablast - Endure - Level 8
  (588, 58800, 203, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Karrablast - False Swipe - Level 12
  (588, 58800, 206, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Karrablast - Acid Spray - Level 16
  (588, 58800, 491, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Karrablast - Headbutt - Level 20
  (588, 58800, 29, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Karrablast - Flail - Level 24
  (588, 58800, 175, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Karrablast - Scary Face - Level 28
  (588, 58800, 184, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Karrablast - X-Scissor - Level 32
  (588, 58800, 404, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Karrablast - Swords Dance - Level 36
  (588, 58800, 14, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Karrablast - Take Down - Level 40
  (588, 58800, 36, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Karrablast - Bug Buzz - Level 44
  (588, 58800, 405, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Karrablast - Double-Edge - Level 48
  (588, 58800, 38, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Karrablast - Screech - TM16
  (588, 58800, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 15),
  -- Karrablast - Rest - TM21
  (588, 58800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Karrablast - Snore - TM24
  (588, 58800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Karrablast - Protect - TM25
  (588, 58800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Karrablast - Scary Face - TM26
  (588, 58800, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 19),
  -- Karrablast - Giga Drain - TM28
  (588, 58800, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 20),
  -- Karrablast - Attract - TM31
  (588, 58800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Karrablast - Rain Dance - TM33
  (588, 58800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Karrablast - Facade - TM39
  (588, 58800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Karrablast - Round - TM76
  (588, 58800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 24),
  -- Karrablast - False Swipe - TM94
  (588, 58800, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 25),
  -- Karrablast - Swords Dance - TR00
  (588, 58800, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 26),
  -- Karrablast - Substitute - TR20
  (588, 58800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 27),
  -- Karrablast - Endure - TR26
  (588, 58800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 28),
  -- Karrablast - Sleep Talk - TR27
  (588, 58800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 29),
  -- Karrablast - Megahorn - TR28
  (588, 58800, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 30),
  -- Karrablast - Encore - TR30
  (588, 58800, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 31),
  -- Karrablast - Iron Defense - TR46
  (588, 58800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 32),
  -- Karrablast - Poison Jab - TR57
  (588, 58800, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 33),
  -- Karrablast - X-Scissor - TR60
  (588, 58800, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 34),
  -- Karrablast - Bug Buzz - TR61
  (588, 58800, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 35),
  -- Karrablast - Energy Ball - TR65
  (588, 58800, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 36),
  -- Karrablast - Drill Run - TR87
  (588, 58800, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 37),
  -- Karrablast - Counter - Egg
  (588, 58800, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Karrablast - Slash - Egg
  (588, 58800, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Karrablast - Knock Off - Egg
  (588, 58800, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Karrablast - Night Slash - Egg
  (588, 58800, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Karrablast - Bug Bite - Egg
  (588, 58800, 450, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Escavalier - Take Down - Level 1
  (589, 58900, 36, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Escavalier - Double-Edge - Level 1
  (589, 58900, 38, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Escavalier - Leer - Level 1
  (589, 58900, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Escavalier - Peck - Level 1
  (589, 58900, 64, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Escavalier - Flail - Level 1
  (589, 58900, 175, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Escavalier - Scary Face - Level 1
  (589, 58900, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Escavalier - Endure - Level 1
  (589, 58900, 203, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Escavalier - Fury Cutter - Level 1
  (589, 58900, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Escavalier - Quick Guard - Level 1
  (589, 58900, 501, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Escavalier - Fell Stinger - Level 1
  (589, 58900, 565, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Escavalier - False Swipe - Level 12
  (589, 58900, 206, 18, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Escavalier - Acid Spray - Level 16
  (589, 58900, 491, 18, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Escavalier - Headbutt - Level 20
  (589, 58900, 29, 18, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Escavalier - Reversal - Level 24
  (589, 58900, 179, 18, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Escavalier - Iron Defense - Level 28
  (589, 58900, 334, 18, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Escavalier - X-Scissor - Level 32
  (589, 58900, 404, 18, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Escavalier - Swords Dance - Level 36
  (589, 58900, 14, 18, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Escavalier - Iron Head - Level 40
  (589, 58900, 442, 18, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Escavalier - Bug Buzz - Level 44
  (589, 58900, 405, 18, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Escavalier - Giga Impact - Level 48
  (589, 58900, 416, 18, NULL, 1, 48, NULL, NULL, NULL, 20),
  -- Escavalier - Metal Burst - Level 52
  (589, 58900, 368, 18, NULL, 1, 52, NULL, NULL, NULL, 21),
  -- Escavalier - Hyper Beam - TM08
  (589, 58900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 22),
  -- Escavalier - Giga Impact - TM09
  (589, 58900, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 23),
  -- Escavalier - Screech - TM16
  (589, 58900, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 24),
  -- Escavalier - Rest - TM21
  (589, 58900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Escavalier - Snore - TM24
  (589, 58900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Escavalier - Protect - TM25
  (589, 58900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Escavalier - Scary Face - TM26
  (589, 58900, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 28),
  -- Escavalier - Giga Drain - TM28
  (589, 58900, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 29),
  -- Escavalier - Attract - TM31
  (589, 58900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Escavalier - Rain Dance - TM33
  (589, 58900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Escavalier - Facade - TM39
  (589, 58900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Escavalier - Revenge - TM42
  (589, 58900, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 33),
  -- Escavalier - Round - TM76
  (589, 58900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Escavalier - Razor Shell - TM83
  (589, 58900, 534, 18, NULL, 2, NULL, NULL, 18002083, NULL, 35),
  -- Escavalier - False Swipe - TM94
  (589, 58900, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 36),
  -- Escavalier - Smart Strike - TM96
  (589, 58900, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 37),
  -- Escavalier - Brutal Swing - TM97
  (589, 58900, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 38),
  -- Escavalier - Swords Dance - TR00
  (589, 58900, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 39),
  -- Escavalier - Agility - TR12
  (589, 58900, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 40),
  -- Escavalier - Substitute - TR20
  (589, 58900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Escavalier - Reversal - TR21
  (589, 58900, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 42),
  -- Escavalier - Endure - TR26
  (589, 58900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Escavalier - Sleep Talk - TR27
  (589, 58900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Escavalier - Megahorn - TR28
  (589, 58900, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 45),
  -- Escavalier - Encore - TR30
  (589, 58900, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 46),
  -- Escavalier - Taunt - TR37
  (589, 58900, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Escavalier - Iron Defense - TR46
  (589, 58900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 48),
  -- Escavalier - Close Combat - TR53
  (589, 58900, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 49),
  -- Escavalier - Poison Jab - TR57
  (589, 58900, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 50),
  -- Escavalier - X-Scissor - TR60
  (589, 58900, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 51),
  -- Escavalier - Bug Buzz - TR61
  (589, 58900, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 52),
  -- Escavalier - Focus Blast - TR64
  (589, 58900, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 53),
  -- Escavalier - Energy Ball - TR65
  (589, 58900, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 54),
  -- Escavalier - Iron Head - TR74
  (589, 58900, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 55),
  -- Escavalier - Drill Run - TR87
  (589, 58900, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 56),
  -- Escavalier - Steel Beam - Tutor
  (589, 58900, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 57),
  -- Foongus - Absorb - Level 1
  (590, 59000, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Foongus - Astonish - Level 1
  (590, 59000, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Foongus - Growth - Level 4
  (590, 59000, 74, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Foongus - Stun Spore - Level 8
  (590, 59000, 78, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Foongus - Mega Drain - Level 12
  (590, 59000, 72, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Foongus - Synthesis - Level 16
  (590, 59000, 235, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Foongus - Clear Smog - Level 20
  (590, 59000, 499, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Foongus - Sweet Scent - Level 24
  (590, 59000, 230, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Foongus - Giga Drain - Level 28
  (590, 59000, 202, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Foongus - Ingrain - Level 32
  (590, 59000, 275, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Foongus - Toxic - Level 36
  (590, 59000, 92, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Foongus - Rage Powder - Level 40
  (590, 59000, 476, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Foongus - Solar Beam - Level 44
  (590, 59000, 76, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Foongus - Spore - Level 48
  (590, 59000, 147, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Foongus - Solar Beam - TM11
  (590, 59000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 15),
  -- Foongus - Rest - TM21
  (590, 59000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Foongus - Snore - TM24
  (590, 59000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Foongus - Protect - TM25
  (590, 59000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Foongus - Giga Drain - TM28
  (590, 59000, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 19),
  -- Foongus - Attract - TM31
  (590, 59000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Foongus - Rain Dance - TM33
  (590, 59000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Foongus - Sunny Day - TM34
  (590, 59000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Foongus - Facade - TM39
  (590, 59000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Foongus - Payback - TM57
  (590, 59000, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 24),
  -- Foongus - Venoshock - TM74
  (590, 59000, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 25),
  -- Foongus - Round - TM76
  (590, 59000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 26),
  -- Foongus - Body Slam - TR01
  (590, 59000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 27),
  -- Foongus - Substitute - TR20
  (590, 59000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 28),
  -- Foongus - Sludge Bomb - TR22
  (590, 59000, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 29),
  -- Foongus - Endure - TR26
  (590, 59000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 30),
  -- Foongus - Sleep Talk - TR27
  (590, 59000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 31),
  -- Foongus - Seed Bomb - TR59
  (590, 59000, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 32),
  -- Foongus - Energy Ball - TR65
  (590, 59000, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 33),
  -- Foongus - Grass Knot - TR77
  (590, 59000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 34),
  -- Foongus - Foul Play - TR81
  (590, 59000, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 35),
  -- Foongus - Pollen Puff - TR96
  (590, 59000, 676, 18, NULL, 4, NULL, NULL, 18004096, NULL, 36),
  -- Foongus - Poison Powder - Egg
  (590, 59000, 77, 18, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Foongus - Defense Curl - Egg
  (590, 59000, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Foongus - Rollout - Egg
  (590, 59000, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Foongus - Worry Seed - Egg
  (590, 59000, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Amoonguss - Absorb - Level 1
  (591, 59100, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Amoonguss - Growth - Level 1
  (591, 59100, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Amoonguss - Stun Spore - Level 1
  (591, 59100, 78, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Amoonguss - Astonish - Level 1
  (591, 59100, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Amoonguss - Mega Drain - Level 12
  (591, 59100, 72, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Amoonguss - Synthesis - Level 16
  (591, 59100, 235, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Amoonguss - Clear Smog - Level 20
  (591, 59100, 499, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Amoonguss - Sweet Scent - Level 24
  (591, 59100, 230, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Amoonguss - Giga Drain - Level 28
  (591, 59100, 202, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Amoonguss - Ingrain - Level 32
  (591, 59100, 275, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Amoonguss - Toxic - Level 36
  (591, 59100, 92, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Amoonguss - Rage Powder - Level 42
  (591, 59100, 476, 18, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Amoonguss - Solar Beam - Level 48
  (591, 59100, 76, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Amoonguss - Spore - Level 54
  (591, 59100, 147, 18, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Amoonguss - Hyper Beam - TM08
  (591, 59100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Amoonguss - Giga Impact - TM09
  (591, 59100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Amoonguss - Solar Beam - TM11
  (591, 59100, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Amoonguss - Rest - TM21
  (591, 59100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Amoonguss - Snore - TM24
  (591, 59100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Amoonguss - Protect - TM25
  (591, 59100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Amoonguss - Giga Drain - TM28
  (591, 59100, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 21),
  -- Amoonguss - Attract - TM31
  (591, 59100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 22),
  -- Amoonguss - Rain Dance - TM33
  (591, 59100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 23),
  -- Amoonguss - Sunny Day - TM34
  (591, 59100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 24),
  -- Amoonguss - Facade - TM39
  (591, 59100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 25),
  -- Amoonguss - Payback - TM57
  (591, 59100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 26),
  -- Amoonguss - Venoshock - TM74
  (591, 59100, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 27),
  -- Amoonguss - Round - TM76
  (591, 59100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Amoonguss - Hex - TM77
  (591, 59100, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 29),
  -- Amoonguss - Grassy Terrain - TM88
  (591, 59100, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 30),
  -- Amoonguss - Stomping Tantrum - TM98
  (591, 59100, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 31),
  -- Amoonguss - Body Slam - TR01
  (591, 59100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 32),
  -- Amoonguss - Substitute - TR20
  (591, 59100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 33),
  -- Amoonguss - Sludge Bomb - TR22
  (591, 59100, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 34),
  -- Amoonguss - Endure - TR26
  (591, 59100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 35),
  -- Amoonguss - Sleep Talk - TR27
  (591, 59100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 36),
  -- Amoonguss - Seed Bomb - TR59
  (591, 59100, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 37),
  -- Amoonguss - Energy Ball - TR65
  (591, 59100, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 38),
  -- Amoonguss - Grass Knot - TR77
  (591, 59100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 39),
  -- Amoonguss - Foul Play - TR81
  (591, 59100, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 40),
  -- Amoonguss - Pollen Puff - TR96
  (591, 59100, 676, 18, NULL, 4, NULL, NULL, 18004096, NULL, 41),
  -- Frillish - Water Gun - Level 1
  (592, 59200, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Frillish - Absorb - Level 1
  (592, 59200, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Frillish - Poison Sting - Level 4
  (592, 59200, 40, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Frillish - Night Shade - Level 8
  (592, 59200, 101, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Frillish - Water Pulse - Level 12
  (592, 59200, 352, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Frillish - Rain Dance - Level 16
  (592, 59200, 240, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Frillish - Hex - Level 20
  (592, 59200, 506, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Frillish - Brine - Level 24
  (592, 59200, 362, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Frillish - Recover - Level 28
  (592, 59200, 105, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Frillish - Shadow Ball - Level 32
  (592, 59200, 247, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Frillish - Whirlpool - Level 36
  (592, 59200, 250, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Frillish - Hydro Pump - Level 41
  (592, 59200, 56, 18, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Frillish - Destiny Bond - Level 44
  (592, 59200, 194, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Frillish - Water Spout - Level 48
  (592, 59200, 323, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Frillish - Safeguard - TM19
  (592, 59200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 15),
  -- Frillish - Rest - TM21
  (592, 59200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 16),
  -- Frillish - Snore - TM24
  (592, 59200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Frillish - Protect - TM25
  (592, 59200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Frillish - Icy Wind - TM27
  (592, 59200, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 19),
  -- Frillish - Giga Drain - TM28
  (592, 59200, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 20),
  -- Frillish - Attract - TM31
  (592, 59200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Frillish - Rain Dance - TM33
  (592, 59200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 22),
  -- Frillish - Hail - TM35
  (592, 59200, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 23),
  -- Frillish - Whirlpool - TM36
  (592, 59200, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 24),
  -- Frillish - Will-O-Wisp - TM38
  (592, 59200, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 25),
  -- Frillish - Facade - TM39
  (592, 59200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Frillish - Imprison - TM44
  (592, 59200, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 27),
  -- Frillish - Dive - TM45
  (592, 59200, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 28),
  -- Frillish - Brine - TM55
  (592, 59200, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 29),
  -- Frillish - Trick Room - TM70
  (592, 59200, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 30),
  -- Frillish - Round - TM76
  (592, 59200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Frillish - Hex - TM77
  (592, 59200, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 32),
  -- Frillish - Hydro Pump - TR03
  (592, 59200, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 33),
  -- Frillish - Surf - TR04
  (592, 59200, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 34),
  -- Frillish - Ice Beam - TR05
  (592, 59200, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 35),
  -- Frillish - Blizzard - TR06
  (592, 59200, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 36),
  -- Frillish - Psychic - TR11
  (592, 59200, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 37),
  -- Frillish - Waterfall - TR16
  (592, 59200, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 38),
  -- Frillish - Substitute - TR20
  (592, 59200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 39),
  -- Frillish - Sludge Bomb - TR22
  (592, 59200, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 40),
  -- Frillish - Endure - TR26
  (592, 59200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Frillish - Sleep Talk - TR27
  (592, 59200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Frillish - Shadow Ball - TR33
  (592, 59200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 43),
  -- Frillish - Taunt - TR37
  (592, 59200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 44),
  -- Frillish - Trick - TR38
  (592, 59200, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 45),
  -- Frillish - Dark Pulse - TR58
  (592, 59200, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 46),
  -- Frillish - Energy Ball - TR65
  (592, 59200, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 47),
  -- Frillish - Sludge Wave - TR78
  (592, 59200, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 48),
  -- Frillish - Scald - TR84
  (592, 59200, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 49),
  -- Frillish - Dazzling Gleam - TR92
  (592, 59200, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 50),
  -- Frillish - Mist - Egg
  (592, 59200, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Frillish - Bubble Beam - Egg
  (592, 59200, 61, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Frillish - Confuse Ray - Egg
  (592, 59200, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Frillish - Acid Armor - Egg
  (592, 59200, 151, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Frillish - Pain Split - Egg
  (592, 59200, 220, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Frillish - Strength Sap - Egg
  (592, 59200, 668, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Jellicent - Poison Sting - Level 1
  (593, 59300, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jellicent - Water Gun - Level 1
  (593, 59300, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jellicent - Absorb - Level 1
  (593, 59300, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jellicent - Night Shade - Level 1
  (593, 59300, 101, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jellicent - Acid Armor - Level 1
  (593, 59300, 151, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Jellicent - Water Pulse - Level 12
  (593, 59300, 352, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Jellicent - Rain Dance - Level 16
  (593, 59300, 240, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Jellicent - Hex - Level 20
  (593, 59300, 506, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Jellicent - Brine - Level 24
  (593, 59300, 362, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Jellicent - Recover - Level 28
  (593, 59300, 105, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Jellicent - Shadow Ball - Level 32
  (593, 59300, 247, 18, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Jellicent - Whirlpool - Level 36
  (593, 59300, 250, 18, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Jellicent - Hydro Pump - Level 43
  (593, 59300, 56, 18, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Jellicent - Destiny Bond - Level 48
  (593, 59300, 194, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Jellicent - Water Spout - Level 54
  (593, 59300, 323, 18, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Jellicent - Hyper Beam - TM08
  (593, 59300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Jellicent - Giga Impact - TM09
  (593, 59300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Jellicent - Safeguard - TM19
  (593, 59300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 18),
  -- Jellicent - Rest - TM21
  (593, 59300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Jellicent - Snore - TM24
  (593, 59300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Jellicent - Protect - TM25
  (593, 59300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Jellicent - Icy Wind - TM27
  (593, 59300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 22),
  -- Jellicent - Giga Drain - TM28
  (593, 59300, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 23),
  -- Jellicent - Attract - TM31
  (593, 59300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Jellicent - Rain Dance - TM33
  (593, 59300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Jellicent - Hail - TM35
  (593, 59300, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 26),
  -- Jellicent - Whirlpool - TM36
  (593, 59300, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 27),
  -- Jellicent - Will-O-Wisp - TM38
  (593, 59300, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 28),
  -- Jellicent - Facade - TM39
  (593, 59300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Jellicent - Imprison - TM44
  (593, 59300, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 30),
  -- Jellicent - Dive - TM45
  (593, 59300, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 31),
  -- Jellicent - Brine - TM55
  (593, 59300, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 32),
  -- Jellicent - Trick Room - TM70
  (593, 59300, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 33),
  -- Jellicent - Round - TM76
  (593, 59300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Jellicent - Hex - TM77
  (593, 59300, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 35),
  -- Jellicent - Hydro Pump - TR03
  (593, 59300, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 36),
  -- Jellicent - Surf - TR04
  (593, 59300, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 37),
  -- Jellicent - Ice Beam - TR05
  (593, 59300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 38),
  -- Jellicent - Blizzard - TR06
  (593, 59300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 39),
  -- Jellicent - Psychic - TR11
  (593, 59300, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 40),
  -- Jellicent - Waterfall - TR16
  (593, 59300, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 41),
  -- Jellicent - Substitute - TR20
  (593, 59300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Jellicent - Sludge Bomb - TR22
  (593, 59300, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 43),
  -- Jellicent - Endure - TR26
  (593, 59300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Jellicent - Sleep Talk - TR27
  (593, 59300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Jellicent - Shadow Ball - TR33
  (593, 59300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 46),
  -- Jellicent - Taunt - TR37
  (593, 59300, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 47),
  -- Jellicent - Trick - TR38
  (593, 59300, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 48),
  -- Jellicent - Muddy Water - TR45
  (593, 59300, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 49),
  -- Jellicent - Dark Pulse - TR58
  (593, 59300, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 50),
  -- Jellicent - Energy Ball - TR65
  (593, 59300, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 51),
  -- Jellicent - Sludge Wave - TR78
  (593, 59300, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 52),
  -- Jellicent - Scald - TR84
  (593, 59300, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 53),
  -- Jellicent - Dazzling Gleam - TR92
  (593, 59300, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 54),
  -- Joltik - Absorb - Level 1
  (595, 59500, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Joltik - Fury Cutter - Level 1
  (595, 59500, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Joltik - Electroweb - Level 4
  (595, 59500, 527, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Joltik - Bug Bite - Level 8
  (595, 59500, 450, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Joltik - String Shot - Level 12
  (595, 59500, 81, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Joltik - Thunder Wave - Level 16
  (595, 59500, 86, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Joltik - Electro Ball - Level 20
  (595, 59500, 486, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Joltik - Agility - Level 24
  (595, 59500, 97, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Joltik - Sucker Punch - Level 28
  (595, 59500, 389, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Joltik - Slash - Level 32
  (595, 59500, 163, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Joltik - Discharge - Level 37
  (595, 59500, 435, 18, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Joltik - Screech - Level 40
  (595, 59500, 103, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Joltik - Gastro Acid - Level 44
  (595, 59500, 380, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Joltik - Bug Buzz - Level 48
  (595, 59500, 405, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Joltik - Pin Missile - TM07
  (595, 59500, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 15),
  -- Joltik - Thunder Wave - TM14
  (595, 59500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Joltik - Screech - TM16
  (595, 59500, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 17),
  -- Joltik - Light Screen - TM17
  (595, 59500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 18),
  -- Joltik - Rest - TM21
  (595, 59500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Joltik - Thief - TM23
  (595, 59500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 20),
  -- Joltik - Snore - TM24
  (595, 59500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Joltik - Protect - TM25
  (595, 59500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Joltik - Giga Drain - TM28
  (595, 59500, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 23),
  -- Joltik - Attract - TM31
  (595, 59500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Joltik - Rain Dance - TM33
  (595, 59500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Joltik - Facade - TM39
  (595, 59500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Joltik - Swift - TM40
  (595, 59500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Joltik - Bounce - TM52
  (595, 59500, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 28),
  -- Joltik - Speed Swap - TM62
  (595, 59500, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 29),
  -- Joltik - Cross Poison - TM73
  (595, 59500, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 30),
  -- Joltik - Round - TM76
  (595, 59500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Joltik - Volt Switch - TM80
  (595, 59500, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 32),
  -- Joltik - Electroweb - TM82
  (595, 59500, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 33),
  -- Joltik - Thunderbolt - TR08
  (595, 59500, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 34),
  -- Joltik - Agility - TR12
  (595, 59500, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 35),
  -- Joltik - Leech Life - TR18
  (595, 59500, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 36),
  -- Joltik - Substitute - TR20
  (595, 59500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 37),
  -- Joltik - Endure - TR26
  (595, 59500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 38),
  -- Joltik - Sleep Talk - TR27
  (595, 59500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 39),
  -- Joltik - Poison Jab - TR57
  (595, 59500, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 40),
  -- Joltik - X-Scissor - TR60
  (595, 59500, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 41),
  -- Joltik - Bug Buzz - TR61
  (595, 59500, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 42),
  -- Joltik - Energy Ball - TR65
  (595, 59500, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 43),
  -- Joltik - Electro Ball - TR80
  (595, 59500, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 44),
  -- Joltik - Wild Charge - TR86
  (595, 59500, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 45),
  -- Joltik - Poison Sting - Egg
  (595, 59500, 40, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Joltik - Double Team - Egg
  (595, 59500, 104, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Joltik - Struggle Bug - Egg
  (595, 59500, 522, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Joltik - Infestation - Egg
  (595, 59500, 611, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Joltik - Lunge - Egg
  (595, 59500, 679, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Galvantula - Absorb - Level 1
  (596, 59600, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Galvantula - Fury Cutter - Level 1
  (596, 59600, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Galvantula - Bug Bite - Level 1
  (596, 59600, 450, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Galvantula - Electroweb - Level 1
  (596, 59600, 527, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Galvantula - Sticky Web - Level 1
  (596, 59600, 564, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Galvantula - String Shot - Level 12
  (596, 59600, 81, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Galvantula - Thunder Wave - Level 16
  (596, 59600, 86, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Galvantula - Electro Ball - Level 20
  (596, 59600, 486, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Galvantula - Agility - Level 24
  (596, 59600, 97, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Galvantula - Sucker Punch - Level 28
  (596, 59600, 389, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Galvantula - Slash - Level 32
  (596, 59600, 163, 18, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Galvantula - Discharge - Level 39
  (596, 59600, 435, 18, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Galvantula - Screech - Level 44
  (596, 59600, 103, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Galvantula - Gastro Acid - Level 50
  (596, 59600, 380, 18, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Galvantula - Bug Buzz - Level 56
  (596, 59600, 405, 18, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Galvantula - Sticky Web - Evolution
  (596, 59600, 564, 18, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Galvantula - Pin Missile - TM07
  (596, 59600, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 17),
  -- Galvantula - Hyper Beam - TM08
  (596, 59600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Galvantula - Giga Impact - TM09
  (596, 59600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Galvantula - Thunder Wave - TM14
  (596, 59600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 20),
  -- Galvantula - Screech - TM16
  (596, 59600, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 21),
  -- Galvantula - Light Screen - TM17
  (596, 59600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 22),
  -- Galvantula - Rest - TM21
  (596, 59600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Galvantula - Thief - TM23
  (596, 59600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Galvantula - Snore - TM24
  (596, 59600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Galvantula - Protect - TM25
  (596, 59600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Galvantula - Giga Drain - TM28
  (596, 59600, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 27),
  -- Galvantula - Attract - TM31
  (596, 59600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 28),
  -- Galvantula - Rain Dance - TM33
  (596, 59600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Galvantula - Facade - TM39
  (596, 59600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Galvantula - Swift - TM40
  (596, 59600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Galvantula - Bounce - TM52
  (596, 59600, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 32),
  -- Galvantula - Speed Swap - TM62
  (596, 59600, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 33),
  -- Galvantula - Cross Poison - TM73
  (596, 59600, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 34),
  -- Galvantula - Round - TM76
  (596, 59600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 35),
  -- Galvantula - Volt Switch - TM80
  (596, 59600, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 36),
  -- Galvantula - Electroweb - TM82
  (596, 59600, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 37),
  -- Galvantula - Thunderbolt - TR08
  (596, 59600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 38),
  -- Galvantula - Thunder - TR09
  (596, 59600, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 39),
  -- Galvantula - Agility - TR12
  (596, 59600, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 40),
  -- Galvantula - Leech Life - TR18
  (596, 59600, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 41),
  -- Galvantula - Substitute - TR20
  (596, 59600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Galvantula - Endure - TR26
  (596, 59600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Galvantula - Sleep Talk - TR27
  (596, 59600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Galvantula - Poison Jab - TR57
  (596, 59600, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 45),
  -- Galvantula - X-Scissor - TR60
  (596, 59600, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 46),
  -- Galvantula - Bug Buzz - TR61
  (596, 59600, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 47),
  -- Galvantula - Energy Ball - TR65
  (596, 59600, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 48),
  -- Galvantula - Electro Ball - TR80
  (596, 59600, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 49),
  -- Galvantula - Wild Charge - TR86
  (596, 59600, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 50),
  -- Galvantula - Throat Chop - TR95
  (596, 59600, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 51),
  -- Ferroseed - Tackle - Level 1
  (597, 59700, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ferroseed - Harden - Level 1
  (597, 59700, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ferroseed - Metal Claw - Level 5
  (597, 59700, 232, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Ferroseed - Pin Missile - Level 10
  (597, 59700, 42, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Ferroseed - Ingrain - Level 15
  (597, 59700, 275, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Ferroseed - Flash Cannon - Level 20
  (597, 59700, 430, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Ferroseed - Iron Head - Level 25
  (597, 59700, 442, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Ferroseed - Self-Destruct - Level 30
  (597, 59700, 120, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Ferroseed - Iron Defense - Level 35
  (597, 59700, 334, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Ferroseed - Curse - Level 41
  (597, 59700, 174, 18, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Ferroseed - Gyro Ball - Level 45
  (597, 59700, 360, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Ferroseed - Explosion - Level 50
  (597, 59700, 153, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Ferroseed - Pin Missile - TM07
  (597, 59700, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 13),
  -- Ferroseed - Solar Beam - TM11
  (597, 59700, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 14),
  -- Ferroseed - Thunder Wave - TM14
  (597, 59700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 15),
  -- Ferroseed - Self-Destruct - TM20
  (597, 59700, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 16),
  -- Ferroseed - Rest - TM21
  (597, 59700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Ferroseed - Snore - TM24
  (597, 59700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 18),
  -- Ferroseed - Protect - TM25
  (597, 59700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 19),
  -- Ferroseed - Giga Drain - TM28
  (597, 59700, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 20),
  -- Ferroseed - Attract - TM31
  (597, 59700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 21),
  -- Ferroseed - Sunny Day - TM34
  (597, 59700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Ferroseed - Facade - TM39
  (597, 59700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 23),
  -- Ferroseed - Revenge - TM42
  (597, 59700, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 24),
  -- Ferroseed - Bullet Seed - TM50
  (597, 59700, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 25),
  -- Ferroseed - Payback - TM57
  (597, 59700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 26),
  -- Ferroseed - Assurance - TM58
  (597, 59700, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 27),
  -- Ferroseed - Round - TM76
  (597, 59700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 28),
  -- Ferroseed - Thunderbolt - TR08
  (597, 59700, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 29),
  -- Ferroseed - Substitute - TR20
  (597, 59700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 30),
  -- Ferroseed - Spikes - TR23
  (597, 59700, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 31),
  -- Ferroseed - Endure - TR26
  (597, 59700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 32),
  -- Ferroseed - Sleep Talk - TR27
  (597, 59700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 33),
  -- Ferroseed - Iron Defense - TR46
  (597, 59700, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 34),
  -- Ferroseed - Gyro Ball - TR52
  (597, 59700, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 35),
  -- Ferroseed - Poison Jab - TR57
  (597, 59700, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 36),
  -- Ferroseed - Seed Bomb - TR59
  (597, 59700, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 37),
  -- Ferroseed - Energy Ball - TR65
  (597, 59700, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 38),
  -- Ferroseed - Flash Cannon - TR70
  (597, 59700, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 39),
  -- Ferroseed - Iron Head - TR74
  (597, 59700, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 40),
  -- Ferroseed - Stealth Rock - TR76
  (597, 59700, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 41),
  -- Ferroseed - Leech Seed - Egg
  (597, 59700, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Ferroseed - Toxic - Egg
  (597, 59700, 92, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Ferroseed - Knock Off - Egg
  (597, 59700, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Ferroseed - Gravity - Egg
  (597, 59700, 356, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Ferroseed - Acid Spray - Egg
  (597, 59700, 491, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Ferroseed - Steel Beam - Tutor
  (597, 59700, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 47),
  -- Ferrothorn - Tackle - Level 1
  (598, 59800, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ferrothorn - Pin Missile - Level 1
  (598, 59800, 42, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ferrothorn - Harden - Level 1
  (598, 59800, 106, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ferrothorn - Metal Claw - Level 1
  (598, 59800, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ferrothorn - Power Whip - Level 1
  (598, 59800, 438, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ferrothorn - Ingrain - Level 15
  (598, 59800, 275, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Ferrothorn - Flash Cannon - Level 20
  (598, 59800, 430, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Ferrothorn - Iron Head - Level 25
  (598, 59800, 442, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Ferrothorn - Self-Destruct - Level 30
  (598, 59800, 120, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Ferrothorn - Iron Defense - Level 35
  (598, 59800, 334, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Ferrothorn - Curse - Level 43
  (598, 59800, 174, 18, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Ferrothorn - Gyro Ball - Level 49
  (598, 59800, 360, 18, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Ferrothorn - Explosion - Level 56
  (598, 59800, 153, 18, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Ferrothorn - Power Whip - Evolution
  (598, 59800, 438, 18, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Ferrothorn - Pin Missile - TM07
  (598, 59800, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 15),
  -- Ferrothorn - Hyper Beam - TM08
  (598, 59800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Ferrothorn - Giga Impact - TM09
  (598, 59800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Ferrothorn - Solar Beam - TM11
  (598, 59800, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 18),
  -- Ferrothorn - Thunder Wave - TM14
  (598, 59800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 19),
  -- Ferrothorn - Self-Destruct - TM20
  (598, 59800, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 20),
  -- Ferrothorn - Rest - TM21
  (598, 59800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Ferrothorn - Snore - TM24
  (598, 59800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 22),
  -- Ferrothorn - Protect - TM25
  (598, 59800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 23),
  -- Ferrothorn - Giga Drain - TM28
  (598, 59800, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 24),
  -- Ferrothorn - Attract - TM31
  (598, 59800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 25),
  -- Ferrothorn - Sandstorm - TM32
  (598, 59800, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 26),
  -- Ferrothorn - Sunny Day - TM34
  (598, 59800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Ferrothorn - Facade - TM39
  (598, 59800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Ferrothorn - Revenge - TM42
  (598, 59800, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 29),
  -- Ferrothorn - Bullet Seed - TM50
  (598, 59800, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 30),
  -- Ferrothorn - Payback - TM57
  (598, 59800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Ferrothorn - Assurance - TM58
  (598, 59800, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 32),
  -- Ferrothorn - Shadow Claw - TM65
  (598, 59800, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 33),
  -- Ferrothorn - Round - TM76
  (598, 59800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Ferrothorn - Bulldoze - TM81
  (598, 59800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 35),
  -- Ferrothorn - Brutal Swing - TM97
  (598, 59800, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 36),
  -- Ferrothorn - Swords Dance - TR00
  (598, 59800, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 37),
  -- Ferrothorn - Thunderbolt - TR08
  (598, 59800, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 38),
  -- Ferrothorn - Thunder - TR09
  (598, 59800, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 39),
  -- Ferrothorn - Substitute - TR20
  (598, 59800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Ferrothorn - Spikes - TR23
  (598, 59800, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 41),
  -- Ferrothorn - Endure - TR26
  (598, 59800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Ferrothorn - Sleep Talk - TR27
  (598, 59800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Ferrothorn - Iron Defense - TR46
  (598, 59800, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 44),
  -- Ferrothorn - Gyro Ball - TR52
  (598, 59800, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 45),
  -- Ferrothorn - Poison Jab - TR57
  (598, 59800, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 46),
  -- Ferrothorn - Seed Bomb - TR59
  (598, 59800, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 47),
  -- Ferrothorn - Energy Ball - TR65
  (598, 59800, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 48),
  -- Ferrothorn - Flash Cannon - TR70
  (598, 59800, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 49),
  -- Ferrothorn - Power Whip - TR72
  (598, 59800, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 50),
  -- Ferrothorn - Iron Head - TR74
  (598, 59800, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 51),
  -- Ferrothorn - Stealth Rock - TR76
  (598, 59800, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 52),
  -- Ferrothorn - Grass Knot - TR77
  (598, 59800, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 53),
  -- Ferrothorn - Heavy Slam - TR79
  (598, 59800, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 54),
  -- Ferrothorn - Body Press - TR99
  (598, 59800, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 55),
  -- Ferrothorn - Steel Beam - Tutor
  (598, 59800, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 56),
  -- Klink - Vise Grip - Level 1
  (599, 59900, 11, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Klink - Thunder Shock - Level 1
  (599, 59900, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Klink - Bind - Level 4
  (599, 59900, 20, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Klink - Charge - Level 8
  (599, 59900, 268, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Klink - Charge Beam - Level 12
  (599, 59900, 451, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Klink - Metal Sound - Level 16
  (599, 59900, 319, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Klink - Autotomize - Level 20
  (599, 59900, 475, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Klink - Discharge - Level 24
  (599, 59900, 435, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Klink - Screech - Level 28
  (599, 59900, 103, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Klink - Gear Grind - Level 32
  (599, 59900, 544, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Klink - Lock-On - Level 36
  (599, 59900, 199, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Klink - Shift Gear - Level 40
  (599, 59900, 508, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Klink - Zap Cannon - Level 44
  (599, 59900, 192, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Klink - Hyper Beam - Level 48
  (599, 59900, 63, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Klink - Hyper Beam - TM08
  (599, 59900, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Klink - Thunder Wave - TM14
  (599, 59900, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Klink - Screech - TM16
  (599, 59900, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 17),
  -- Klink - Rest - TM21
  (599, 59900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Klink - Snore - TM24
  (599, 59900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Klink - Protect - TM25
  (599, 59900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Klink - Sandstorm - TM32
  (599, 59900, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 21),
  -- Klink - Facade - TM39
  (599, 59900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Klink - Assurance - TM58
  (599, 59900, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 23),
  -- Klink - Round - TM76
  (599, 59900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 24),
  -- Klink - Volt Switch - TM80
  (599, 59900, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 25),
  -- Klink - Thunderbolt - TR08
  (599, 59900, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 26),
  -- Klink - Substitute - TR20
  (599, 59900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 27),
  -- Klink - Endure - TR26
  (599, 59900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 28),
  -- Klink - Sleep Talk - TR27
  (599, 59900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 29),
  -- Klink - Uproar - TR35
  (599, 59900, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 30),
  -- Klink - Iron Defense - TR46
  (599, 59900, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 31),
  -- Klink - Power Gem - TR63
  (599, 59900, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 32),
  -- Klink - Flash Cannon - TR70
  (599, 59900, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 33),
  -- Klink - Wild Charge - TR86
  (599, 59900, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 34),
  -- Klink - Steel Beam - Tutor
  (599, 59900, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 35),
  -- Klang - Vise Grip - Level 1
  (600, 60000, 11, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Klang - Bind - Level 1
  (600, 60000, 20, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Klang - Thunder Shock - Level 1
  (600, 60000, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Klang - Charge - Level 1
  (600, 60000, 268, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Klang - Charge Beam - Level 12
  (600, 60000, 451, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Klang - Metal Sound - Level 16
  (600, 60000, 319, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Klang - Autotomize - Level 20
  (600, 60000, 475, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Klang - Discharge - Level 24
  (600, 60000, 435, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Klang - Screech - Level 28
  (600, 60000, 103, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Klang - Gear Grind - Level 32
  (600, 60000, 544, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Klang - Lock-On - Level 36
  (600, 60000, 199, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Klang - Shift Gear - Level 42
  (600, 60000, 508, 18, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Klang - Zap Cannon - Level 48
  (600, 60000, 192, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Klang - Hyper Beam - Level 54
  (600, 60000, 63, 18, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Klang - Hyper Beam - TM08
  (600, 60000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Klang - Thunder Wave - TM14
  (600, 60000, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Klang - Screech - TM16
  (600, 60000, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 17),
  -- Klang - Rest - TM21
  (600, 60000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Klang - Snore - TM24
  (600, 60000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Klang - Protect - TM25
  (600, 60000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Klang - Sandstorm - TM32
  (600, 60000, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 21),
  -- Klang - Facade - TM39
  (600, 60000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 22),
  -- Klang - Assurance - TM58
  (600, 60000, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 23),
  -- Klang - Round - TM76
  (600, 60000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 24),
  -- Klang - Volt Switch - TM80
  (600, 60000, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 25),
  -- Klang - Thunderbolt - TR08
  (600, 60000, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 26),
  -- Klang - Substitute - TR20
  (600, 60000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 27),
  -- Klang - Endure - TR26
  (600, 60000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 28),
  -- Klang - Sleep Talk - TR27
  (600, 60000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 29),
  -- Klang - Uproar - TR35
  (600, 60000, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 30),
  -- Klang - Iron Defense - TR46
  (600, 60000, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 31),
  -- Klang - Power Gem - TR63
  (600, 60000, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 32),
  -- Klang - Flash Cannon - TR70
  (600, 60000, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 33),
  -- Klang - Ally Switch - TR83
  (600, 60000, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 34),
  -- Klang - Wild Charge - TR86
  (600, 60000, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 35),
  -- Klang - Steel Beam - Tutor
  (600, 60000, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 36);

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
  -- Krokorok - Double-Edge - Egg
  (552, 55200, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Krokorok - Counter - Egg
  (552, 55200, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Krokorok - Spite - Egg
  (552, 55200, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Krokorok - Aqua Tail - Egg
  (552, 55200, 401, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Krookodile - Double-Edge - Egg
  (553, 55300, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Krookodile - Counter - Egg
  (553, 55300, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Krookodile - Spite - Egg
  (553, 55300, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Krookodile - Aqua Tail - Egg
  (553, 55300, 401, 18, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Darmanitan - Take Down - Egg
  (555, 55500, 36, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Darmanitan - Flame Wheel - Egg
  (555, 55500, 172, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Darmanitan - Focus Punch - Egg
  (555, 55500, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Darmanitan - Yawn - Egg
  (555, 55500, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Darmanitan - Extrasensory - Egg
  (555, 55500, 326, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Darmanitan - Hammer Arm - Egg
  (555, 55500, 359, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Crustle - Counter - Egg
  (558, 55800, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Crustle - Curse - Egg
  (558, 55800, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Crustle - Knock Off - Egg
  (558, 55800, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Crustle - Block - Egg
  (558, 55800, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Crustle - Night Slash - Egg
  (558, 55800, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Crustle - Wide Guard - Egg
  (558, 55800, 469, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Scrafty - Counter - Egg
  (560, 56000, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Scrafty - Detect - Egg
  (560, 56000, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Scrafty - Fake Out - Egg
  (560, 56000, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Scrafty - Acid Spray - Egg
  (560, 56000, 491, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Scrafty - Quick Guard - Egg
  (560, 56000, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Scrafty - Power-Up Punch - Egg
  (560, 56000, 612, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Cofagrigus - Memento - Egg
  (563, 56300, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Carracosta - Slam - Egg
  (565, 56500, 21, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Carracosta - Rock Throw - Egg
  (565, 56500, 88, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Carracosta - Rollout - Egg
  (565, 56500, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Carracosta - Knock Off - Egg
  (565, 56500, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Carracosta - Block - Egg
  (565, 56500, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Carracosta - Water Pulse - Egg
  (565, 56500, 352, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Archeops - Bite - Egg
  (567, 56700, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Archeops - Double Team - Egg
  (567, 56700, 104, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Archeops - Knock Off - Egg
  (567, 56700, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Archeops - Switcheroo - Egg
  (567, 56700, 415, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Archeops - Defog - Egg
  (567, 56700, 432, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Archeops - Head Smash - Egg
  (567, 56700, 457, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Garbodor - Sand Attack - Egg
  (569, 56900, 28, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Garbodor - Haze - Egg
  (569, 56900, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Garbodor - Curse - Egg
  (569, 56900, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Garbodor - Rollout - Egg
  (569, 56900, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Garbodor - Autotomize - Egg
  (569, 56900, 475, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Zoroark - Counter - Egg
  (571, 57100, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Zoroark - Detect - Egg
  (571, 57100, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Zoroark - Memento - Egg
  (571, 57100, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Zoroark - Extrasensory - Egg
  (571, 57100, 326, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Zoroark - Copycat - Egg
  (571, 57100, 383, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Zoroark - Sucker Punch - Egg
  (571, 57100, 389, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Cinccino - Tail Whip - Egg
  (573, 57300, 39, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Cinccino - Flail - Egg
  (573, 57300, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Cinccino - Knock Off - Egg
  (573, 57300, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Cinccino - Aqua Tail - Egg
  (573, 57300, 401, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Gothorita - Mean Look - Egg
  (575, 57500, 212, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gothorita - Mirror Coat - Egg
  (575, 57500, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Gothorita - Fake Out - Egg
  (575, 57500, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gothorita - Torment - Egg
  (575, 57500, 259, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gothorita - Heal Pulse - Egg
  (575, 57500, 505, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Gothitelle - Mean Look - Egg
  (576, 57600, 212, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Gothitelle - Mirror Coat - Egg
  (576, 57600, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Gothitelle - Fake Out - Egg
  (576, 57600, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Gothitelle - Torment - Egg
  (576, 57600, 259, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Gothitelle - Heal Pulse - Egg
  (576, 57600, 505, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Duosion - Confuse Ray - Egg
  (578, 57800, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Duosion - Acid Armor - Egg
  (578, 57800, 151, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Duosion - Astonish - Egg
  (578, 57800, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Reuniclus - Confuse Ray - Egg
  (579, 57900, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Reuniclus - Acid Armor - Egg
  (579, 57900, 151, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Reuniclus - Astonish - Egg
  (579, 57900, 310, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Vanillish - Explosion - Egg
  (583, 58300, 153, 18, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Vanillish - Magnet Rise - Egg
  (583, 58300, 393, 18, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Vanillish - Ice Shard - Egg
  (583, 58300, 420, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Vanillish - Autotomize - Egg
  (583, 58300, 475, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Vanillish - Icicle Crash - Egg
  (583, 58300, 556, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Vanillish - Aurora Veil - Egg
  (583, 58300, 694, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Vanilluxe - Explosion - Egg
  (584, 58400, 153, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Vanilluxe - Magnet Rise - Egg
  (584, 58400, 393, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Vanilluxe - Ice Shard - Egg
  (584, 58400, 420, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Vanilluxe - Autotomize - Egg
  (584, 58400, 475, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Vanilluxe - Icicle Crash - Egg
  (584, 58400, 556, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Vanilluxe - Aurora Veil - Egg
  (584, 58400, 694, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Escavalier - Counter - Egg
  (589, 58900, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Escavalier - Slash - Egg
  (589, 58900, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Escavalier - Knock Off - Egg
  (589, 58900, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Escavalier - Night Slash - Egg
  (589, 58900, 400, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Escavalier - Bug Bite - Egg
  (589, 58900, 450, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Amoonguss - Poison Powder - Egg
  (591, 59100, 77, 18, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Amoonguss - Defense Curl - Egg
  (591, 59100, 111, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Amoonguss - Rollout - Egg
  (591, 59100, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Amoonguss - Worry Seed - Egg
  (591, 59100, 388, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Jellicent - Mist - Egg
  (593, 59300, 54, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Jellicent - Bubble Beam - Egg
  (593, 59300, 61, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Jellicent - Confuse Ray - Egg
  (593, 59300, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Jellicent - Acid Armor - Egg
  (593, 59300, 151, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Jellicent - Pain Split - Egg
  (593, 59300, 220, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Jellicent - Strength Sap - Egg
  (593, 59300, 668, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Galvantula - Poison Sting - Egg
  (596, 59600, 40, 18, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Galvantula - Double Team - Egg
  (596, 59600, 104, 18, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Galvantula - Struggle Bug - Egg
  (596, 59600, 522, 18, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Galvantula - Infestation - Egg
  (596, 59600, 611, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Galvantula - Lunge - Egg
  (596, 59600, 679, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Ferrothorn - Leech Seed - Egg
  (598, 59800, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Ferrothorn - Toxic - Egg
  (598, 59800, 92, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Ferrothorn - Knock Off - Egg
  (598, 59800, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Ferrothorn - Gravity - Egg
  (598, 59800, 356, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Ferrothorn - Acid Spray - Egg
  (598, 59800, 491, 18, NULL, 5, NULL, NULL, NULL, NULL, 61);
