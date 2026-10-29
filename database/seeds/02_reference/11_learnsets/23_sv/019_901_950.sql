-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Scarlet / Violet learnset pages.
-- Scope note: base Scarlet / Violet rows include level-up, base TM001-TM171, and egg moves for Pokémon compatible with this version-group scope.
-- DLC note: Teal Mask and Indigo Disk TM additions remain seeded as separate additive content-scope deltas.
-- Correction: legendary and mythical rows and every form's Scarlet / Violet
-- TMs are checked against each game's own data (PKHeX learnset and personal
-- tables); see docs/database/reference-data.md.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Scarlet / Violet learnsets for species 901-950.
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
  -- Ursaluna - Scratch - Level 1
  (901, 90100, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ursaluna - Leer - Level 1
  (901, 90100, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ursaluna - Lick - Level 1
  (901, 90100, 122, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ursaluna - Fake Tears - Level 1
  (901, 90100, 313, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ursaluna - Covet - Level 1
  (901, 90100, 343, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ursaluna - Headlong Rush - Level 1
  (901, 90100, 838, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Ursaluna - Fury Swipes - Level 8
  (901, 90100, 154, 23, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Ursaluna - Payback - Level 13
  (901, 90100, 371, 23, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Ursaluna - Harden - Level 17
  (901, 90100, 106, 23, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Ursaluna - Sweet Scent - Level 17
  (901, 90100, 230, 23, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Ursaluna - Slash - Level 22
  (901, 90100, 163, 23, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Ursaluna - Play Nice - Level 25
  (901, 90100, 589, 23, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Ursaluna - Play Rough - Level 29
  (901, 90100, 583, 23, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Ursaluna - Scary Face - Level 35
  (901, 90100, 184, 23, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Ursaluna - Rest - Level 41
  (901, 90100, 156, 23, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Ursaluna - Snore - Level 41
  (901, 90100, 173, 23, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Ursaluna - Earth Power - Level 48
  (901, 90100, 414, 23, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Ursaluna - High Horsepower - Level 48
  (901, 90100, 667, 23, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Ursaluna - Thrash - Level 56
  (901, 90100, 37, 23, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Ursaluna - Moonblast - Level 56
  (901, 90100, 585, 23, NULL, 1, 56, NULL, NULL, NULL, 20),
  -- Ursaluna - Hammer Arm - Level 64
  (901, 90100, 359, 23, NULL, 1, 64, NULL, NULL, NULL, 21),
  -- Ursaluna - Blood Moon - Level 70
  (901, 90100, 901, 23, NULL, 1, 70, NULL, NULL, NULL, 22),
  -- Ursaluna - Take Down - TM001
  (901, 90100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 23),
  -- Ursaluna - Charm - TM002
  (901, 90100, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 24),
  -- Ursaluna - Fake Tears - TM003
  (901, 90100, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 25),
  -- Ursaluna - Scary Face - TM006
  (901, 90100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 26),
  -- Ursaluna - Protect - TM007
  (901, 90100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 27),
  -- Ursaluna - Low Kick - TM012
  (901, 90100, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 28),
  -- Ursaluna - Thief - TM018
  (901, 90100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 29),
  -- Ursaluna - Trailblaze - TM020
  (901, 90100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 30),
  -- Ursaluna - Facade - TM025
  (901, 90100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 31),
  -- Ursaluna - Aerial Ace - TM027
  (901, 90100, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 32),
  -- Ursaluna - Bulldoze - TM028
  (901, 90100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 33),
  -- Ursaluna - Metal Claw - TM031
  (901, 90100, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 34),
  -- Ursaluna - Swift - TM032
  (901, 90100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 35),
  -- Ursaluna - Rock Tomb - TM036
  (901, 90100, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 36),
  -- Ursaluna - Fling - TM043
  (901, 90100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 37),
  -- Ursaluna - Avalanche - TM046
  (901, 90100, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 38),
  -- Ursaluna - Endure - TM047
  (901, 90100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 39),
  -- Ursaluna - Sunny Day - TM049
  (901, 90100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 40),
  -- Ursaluna - Rain Dance - TM050
  (901, 90100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 41),
  -- Ursaluna - Dig - TM055
  (901, 90100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 42),
  -- Ursaluna - Brick Break - TM058
  (901, 90100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 43),
  -- Ursaluna - Shadow Claw - TM061
  (901, 90100, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 44),
  -- Ursaluna - Bulk Up - TM064
  (901, 90100, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 45),
  -- Ursaluna - Body Slam - TM066
  (901, 90100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 46),
  -- Ursaluna - Fire Punch - TM067
  (901, 90100, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 47),
  -- Ursaluna - Thunder Punch - TM068
  (901, 90100, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 48),
  -- Ursaluna - Ice Punch - TM069
  (901, 90100, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 49),
  -- Ursaluna - Sleep Talk - TM070
  (901, 90100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 50),
  -- Ursaluna - Seed Bomb - TM071
  (901, 90100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 51),
  -- Ursaluna - Drain Punch - TM073
  (901, 90100, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 52),
  -- Ursaluna - Metronome - TM080
  (901, 90100, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 53),
  -- Ursaluna - Stomping Tantrum - TM084
  (901, 90100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 54),
  -- Ursaluna - Rest - TM085
  (901, 90100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 55),
  -- Ursaluna - Rock Slide - TM086
  (901, 90100, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 56),
  -- Ursaluna - Taunt - TM087
  (901, 90100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 57),
  -- Ursaluna - Swords Dance - TM088
  (901, 90100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 58),
  -- Ursaluna - Body Press - TM089
  (901, 90100, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 59),
  -- Ursaluna - Gunk Shot - TM102
  (901, 90100, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 60),
  -- Ursaluna - Substitute - TM103
  (901, 90100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 61),
  -- Ursaluna - Crunch - TM108
  (901, 90100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 62),
  -- Ursaluna - Hyper Voice - TM117
  (901, 90100, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 63),
  -- Ursaluna - Heavy Slam - TM121
  (901, 90100, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 64),
  -- Ursaluna - Play Rough - TM127
  (901, 90100, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 65),
  -- Ursaluna - Helping Hand - TM130
  (901, 90100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 66),
  -- Ursaluna - Earth Power - TM133
  (901, 90100, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 67),
  -- Ursaluna - Earthquake - TM149
  (901, 90100, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 68),
  -- Ursaluna - Stone Edge - TM150
  (901, 90100, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 69),
  -- Ursaluna - Giga Impact - TM152
  (901, 90100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 70),
  -- Ursaluna - Hyper Beam - TM163
  (901, 90100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 71),
  -- Ursaluna - Close Combat - TM167
  (901, 90100, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 72),
  -- Ursaluna - Tera Blast - TM171
  (901, 90100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 73),
  -- Ursaluna - Double-Edge - Egg
  (901, 90100, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Ursaluna - Counter - Egg
  (901, 90100, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Ursaluna - Seismic Toss - Egg
  (901, 90100, 69, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Ursaluna - Belly Drum - Egg
  (901, 90100, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Ursaluna - Fury Cutter - Egg
  (901, 90100, 210, 23, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Ursaluna - Metal Claw - Egg
  (901, 90100, 232, 23, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Ursaluna - Cross Chop - Egg
  (901, 90100, 238, 23, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Ursaluna - Crunch - Egg
  (901, 90100, 242, 23, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Ursaluna - Yawn - Egg
  (901, 90100, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Ursaluna - Fake Tears - Egg
  (901, 90100, 313, 23, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Ursaluna - Close Combat - Egg
  (901, 90100, 370, 23, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Ursaluna - Night Slash - Egg
  (901, 90100, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Ursaluna - Headlong Rush - Evolution
  (901, 90100, 838, 23, NULL, 7, NULL, NULL, NULL, NULL, 86),
  -- Ursaluna - Moonlight - Reminder
  (901, 90100, 236, 23, NULL, 9, NULL, NULL, NULL, NULL, 87),
  -- Ursaluna (Bloodmoon) - Scratch - Level 1
  (901, 90101, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ursaluna (Bloodmoon) - Leer - Level 1
  (901, 90101, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ursaluna (Bloodmoon) - Lick - Level 1
  (901, 90101, 122, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ursaluna (Bloodmoon) - Fake Tears - Level 1
  (901, 90101, 313, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ursaluna (Bloodmoon) - Covet - Level 1
  (901, 90101, 343, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ursaluna (Bloodmoon) - Headlong Rush - Level 1
  (901, 90101, 838, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Ursaluna (Bloodmoon) - Fury Swipes - Level 8
  (901, 90101, 154, 23, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Ursaluna (Bloodmoon) - Payback - Level 13
  (901, 90101, 371, 23, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Ursaluna (Bloodmoon) - Harden - Level 17
  (901, 90101, 106, 23, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Ursaluna (Bloodmoon) - Sweet Scent - Level 17
  (901, 90101, 230, 23, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Ursaluna (Bloodmoon) - Slash - Level 22
  (901, 90101, 163, 23, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Ursaluna (Bloodmoon) - Play Nice - Level 25
  (901, 90101, 589, 23, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Ursaluna (Bloodmoon) - Play Rough - Level 29
  (901, 90101, 583, 23, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Ursaluna (Bloodmoon) - Scary Face - Level 35
  (901, 90101, 184, 23, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Ursaluna (Bloodmoon) - Rest - Level 41
  (901, 90101, 156, 23, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Ursaluna (Bloodmoon) - Snore - Level 41
  (901, 90101, 173, 23, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Ursaluna (Bloodmoon) - Earth Power - Level 48
  (901, 90101, 414, 23, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Ursaluna (Bloodmoon) - High Horsepower - Level 48
  (901, 90101, 667, 23, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Ursaluna (Bloodmoon) - Thrash - Level 56
  (901, 90101, 37, 23, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Ursaluna (Bloodmoon) - Moonblast - Level 56
  (901, 90101, 585, 23, NULL, 1, 56, NULL, NULL, NULL, 20),
  -- Ursaluna (Bloodmoon) - Hammer Arm - Level 64
  (901, 90101, 359, 23, NULL, 1, 64, NULL, NULL, NULL, 21),
  -- Ursaluna (Bloodmoon) - Blood Moon - Level 70
  (901, 90101, 901, 23, NULL, 1, 70, NULL, NULL, NULL, 22),
  -- Ursaluna (Bloodmoon) - Take Down - TM001
  (901, 90101, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 23),
  -- Ursaluna (Bloodmoon) - Scary Face - TM006
  (901, 90101, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 24),
  -- Ursaluna (Bloodmoon) - Protect - TM007
  (901, 90101, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 25),
  -- Ursaluna (Bloodmoon) - Low Kick - TM012
  (901, 90101, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 26),
  -- Ursaluna (Bloodmoon) - Thief - TM018
  (901, 90101, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 27),
  -- Ursaluna (Bloodmoon) - Trailblaze - TM020
  (901, 90101, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 28),
  -- Ursaluna (Bloodmoon) - Facade - TM025
  (901, 90101, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 29),
  -- Ursaluna (Bloodmoon) - Bulldoze - TM028
  (901, 90101, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 30),
  -- Ursaluna (Bloodmoon) - Snarl - TM030
  (901, 90101, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 31),
  -- Ursaluna (Bloodmoon) - Metal Claw - TM031
  (901, 90101, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 32),
  -- Ursaluna (Bloodmoon) - Swift - TM032
  (901, 90101, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 33),
  -- Ursaluna (Bloodmoon) - Mud Shot - TM035
  (901, 90101, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 34),
  -- Ursaluna (Bloodmoon) - Rock Tomb - TM036
  (901, 90101, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 35),
  -- Ursaluna (Bloodmoon) - Fling - TM043
  (901, 90101, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 36),
  -- Ursaluna (Bloodmoon) - Avalanche - TM046
  (901, 90101, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 37),
  -- Ursaluna (Bloodmoon) - Endure - TM047
  (901, 90101, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 38),
  -- Ursaluna (Bloodmoon) - Sunny Day - TM049
  (901, 90101, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 39),
  -- Ursaluna (Bloodmoon) - Rain Dance - TM050
  (901, 90101, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 40),
  -- Ursaluna (Bloodmoon) - Dig - TM055
  (901, 90101, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 41),
  -- Ursaluna (Bloodmoon) - Brick Break - TM058
  (901, 90101, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 42),
  -- Ursaluna (Bloodmoon) - Shadow Claw - TM061
  (901, 90101, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 43),
  -- Ursaluna (Bloodmoon) - Body Slam - TM066
  (901, 90101, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 44),
  -- Ursaluna (Bloodmoon) - Fire Punch - TM067
  (901, 90101, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 45),
  -- Ursaluna (Bloodmoon) - Thunder Punch - TM068
  (901, 90101, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 46),
  -- Ursaluna (Bloodmoon) - Ice Punch - TM069
  (901, 90101, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 47),
  -- Ursaluna (Bloodmoon) - Sleep Talk - TM070
  (901, 90101, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 48),
  -- Ursaluna (Bloodmoon) - Seed Bomb - TM071
  (901, 90101, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 49),
  -- Ursaluna (Bloodmoon) - Stomping Tantrum - TM084
  (901, 90101, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 50),
  -- Ursaluna (Bloodmoon) - Rest - TM085
  (901, 90101, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 51),
  -- Ursaluna (Bloodmoon) - Rock Slide - TM086
  (901, 90101, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 52),
  -- Ursaluna (Bloodmoon) - Taunt - TM087
  (901, 90101, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 53),
  -- Ursaluna (Bloodmoon) - Swords Dance - TM088
  (901, 90101, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 54),
  -- Ursaluna (Bloodmoon) - Body Press - TM089
  (901, 90101, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 55),
  -- Ursaluna (Bloodmoon) - Gunk Shot - TM102
  (901, 90101, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 56),
  -- Ursaluna (Bloodmoon) - Substitute - TM103
  (901, 90101, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 57),
  -- Ursaluna (Bloodmoon) - Crunch - TM108
  (901, 90101, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 58),
  -- Ursaluna (Bloodmoon) - Hyper Voice - TM117
  (901, 90101, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 59),
  -- Ursaluna (Bloodmoon) - Heavy Slam - TM121
  (901, 90101, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 60),
  -- Ursaluna (Bloodmoon) - Calm Mind - TM129
  (901, 90101, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 61),
  -- Ursaluna (Bloodmoon) - Helping Hand - TM130
  (901, 90101, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 62),
  -- Ursaluna (Bloodmoon) - Earth Power - TM133
  (901, 90101, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 63),
  -- Ursaluna (Bloodmoon) - Earthquake - TM149
  (901, 90101, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 64),
  -- Ursaluna (Bloodmoon) - Stone Edge - TM150
  (901, 90101, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 65),
  -- Ursaluna (Bloodmoon) - Giga Impact - TM152
  (901, 90101, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 66),
  -- Ursaluna (Bloodmoon) - Focus Blast - TM158
  (901, 90101, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 67),
  -- Ursaluna (Bloodmoon) - Hyper Beam - TM163
  (901, 90101, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 68),
  -- Ursaluna (Bloodmoon) - Tera Blast - TM171
  (901, 90101, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 69),
  -- Ursaluna (Bloodmoon) - Double-Edge - Egg
  (901, 90101, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Ursaluna (Bloodmoon) - Counter - Egg
  (901, 90101, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Ursaluna (Bloodmoon) - Seismic Toss - Egg
  (901, 90101, 69, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Ursaluna (Bloodmoon) - Belly Drum - Egg
  (901, 90101, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Ursaluna (Bloodmoon) - Fury Cutter - Egg
  (901, 90101, 210, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Ursaluna (Bloodmoon) - Metal Claw - Egg
  (901, 90101, 232, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Ursaluna (Bloodmoon) - Cross Chop - Egg
  (901, 90101, 238, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Ursaluna (Bloodmoon) - Crunch - Egg
  (901, 90101, 242, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Ursaluna (Bloodmoon) - Yawn - Egg
  (901, 90101, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Ursaluna (Bloodmoon) - Fake Tears - Egg
  (901, 90101, 313, 23, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Ursaluna (Bloodmoon) - Close Combat - Egg
  (901, 90101, 370, 23, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Ursaluna (Bloodmoon) - Night Slash - Egg
  (901, 90101, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Ursaluna (Bloodmoon) - Headlong Rush - Evolution
  (901, 90101, 838, 23, NULL, 7, NULL, NULL, NULL, NULL, 82),
  -- Ursaluna (Bloodmoon) - Moonlight - Reminder
  (901, 90101, 236, 23, NULL, 9, NULL, NULL, NULL, NULL, 83),
  -- Basculegion - Tail Whip - Level 1
  (902, 90200, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Basculegion - Water Gun - Level 1
  (902, 90200, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Basculegion - Shadow Ball - Level 1
  (902, 90200, 247, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Basculegion - Phantom Force - Level 1
  (902, 90200, 566, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Basculegion - Tackle - Level 4
  (902, 90200, 33, 23, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Basculegion - Flail - Level 8
  (902, 90200, 175, 23, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Basculegion - Aqua Jet - Level 12
  (902, 90200, 453, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Basculegion - Bite - Level 16
  (902, 90200, 44, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Basculegion - Scary Face - Level 20
  (902, 90200, 184, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Basculegion - Headbutt - Level 24
  (902, 90200, 29, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Basculegion - Soak - Level 28
  (902, 90200, 487, 23, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Basculegion - Crunch - Level 32
  (902, 90200, 242, 23, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Basculegion - Take Down - Level 36
  (902, 90200, 36, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Basculegion - Uproar - Level 40
  (902, 90200, 253, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Basculegion - Wave Crash - Level 44
  (902, 90200, 834, 23, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Basculegion - Thrash - Level 48
  (902, 90200, 37, 23, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Basculegion - Double-Edge - Level 52
  (902, 90200, 38, 23, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Basculegion - Head Smash - Level 56
  (902, 90200, 457, 23, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Basculegion - Take Down - TM001
  (902, 90200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Basculegion - Agility - TM004
  (902, 90200, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 20),
  -- Basculegion - Scary Face - TM006
  (902, 90200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 21),
  -- Basculegion - Protect - TM007
  (902, 90200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Basculegion - Ice Fang - TM010
  (902, 90200, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 23),
  -- Basculegion - Water Pulse - TM011
  (902, 90200, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 24),
  -- Basculegion - Confuse Ray - TM017
  (902, 90200, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 25),
  -- Basculegion - Chilling Water - TM022
  (902, 90200, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 26),
  -- Basculegion - Facade - TM025
  (902, 90200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Basculegion - Hex - TM029
  (902, 90200, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 28),
  -- Basculegion - Swift - TM032
  (902, 90200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Basculegion - Icy Wind - TM034
  (902, 90200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 30),
  -- Basculegion - Mud Shot - TM035
  (902, 90200, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 31),
  -- Basculegion - Night Shade - TM042
  (902, 90200, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 32),
  -- Basculegion - Endure - TM047
  (902, 90200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 33),
  -- Basculegion - Rain Dance - TM050
  (902, 90200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Basculegion - Snowscape - TM052
  (902, 90200, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 35),
  -- Basculegion - Zen Headbutt - TM059
  (902, 90200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 36),
  -- Basculegion - Psychic Fangs - TM063
  (902, 90200, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 37),
  -- Basculegion - Sleep Talk - TM070
  (902, 90200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Basculegion - Waterfall - TM077
  (902, 90200, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 39),
  -- Basculegion - Rest - TM085
  (902, 90200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Basculegion - Substitute - TM103
  (902, 90200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Basculegion - Crunch - TM108
  (902, 90200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 42),
  -- Basculegion - Liquidation - TM110
  (902, 90200, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 43),
  -- Basculegion - Shadow Ball - TM114
  (902, 90200, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 44),
  -- Basculegion - Surf - TM123
  (902, 90200, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 45),
  -- Basculegion - Ice Beam - TM135
  (902, 90200, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 46),
  -- Basculegion - Hydro Pump - TM142
  (902, 90200, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 47),
  -- Basculegion - Blizzard - TM143
  (902, 90200, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 48),
  -- Basculegion - Phantom Force - TM151
  (902, 90200, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 49),
  -- Basculegion - Giga Impact - TM152
  (902, 90200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Basculegion - Outrage - TM156
  (902, 90200, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 51),
  -- Basculegion - Hyper Beam - TM163
  (902, 90200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Basculegion - Tera Blast - TM171
  (902, 90200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Basculegion - Endeavor - Egg
  (902, 90200, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Basculegion - Last Respects - Egg
  (902, 90200, 854, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Basculegion (Female) - Tail Whip - Level 1
  (902, 90201, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Basculegion (Female) - Water Gun - Level 1
  (902, 90201, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Basculegion (Female) - Shadow Ball - Level 1
  (902, 90201, 247, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Basculegion (Female) - Phantom Force - Level 1
  (902, 90201, 566, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Basculegion (Female) - Tackle - Level 4
  (902, 90201, 33, 23, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Basculegion (Female) - Flail - Level 8
  (902, 90201, 175, 23, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Basculegion (Female) - Aqua Jet - Level 12
  (902, 90201, 453, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Basculegion (Female) - Bite - Level 16
  (902, 90201, 44, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Basculegion (Female) - Scary Face - Level 20
  (902, 90201, 184, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Basculegion (Female) - Headbutt - Level 24
  (902, 90201, 29, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Basculegion (Female) - Soak - Level 28
  (902, 90201, 487, 23, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Basculegion (Female) - Crunch - Level 32
  (902, 90201, 242, 23, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Basculegion (Female) - Take Down - Level 36
  (902, 90201, 36, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Basculegion (Female) - Uproar - Level 40
  (902, 90201, 253, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Basculegion (Female) - Wave Crash - Level 44
  (902, 90201, 834, 23, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Basculegion (Female) - Thrash - Level 48
  (902, 90201, 37, 23, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Basculegion (Female) - Double-Edge - Level 52
  (902, 90201, 38, 23, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Basculegion (Female) - Head Smash - Level 56
  (902, 90201, 457, 23, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Basculegion (Female) - Take Down - TM001
  (902, 90201, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Basculegion (Female) - Agility - TM004
  (902, 90201, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 20),
  -- Basculegion (Female) - Scary Face - TM006
  (902, 90201, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 21),
  -- Basculegion (Female) - Protect - TM007
  (902, 90201, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Basculegion (Female) - Ice Fang - TM010
  (902, 90201, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 23),
  -- Basculegion (Female) - Water Pulse - TM011
  (902, 90201, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 24),
  -- Basculegion (Female) - Confuse Ray - TM017
  (902, 90201, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 25),
  -- Basculegion (Female) - Chilling Water - TM022
  (902, 90201, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 26),
  -- Basculegion (Female) - Facade - TM025
  (902, 90201, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Basculegion (Female) - Hex - TM029
  (902, 90201, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 28),
  -- Basculegion (Female) - Swift - TM032
  (902, 90201, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Basculegion (Female) - Icy Wind - TM034
  (902, 90201, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 30),
  -- Basculegion (Female) - Mud Shot - TM035
  (902, 90201, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 31),
  -- Basculegion (Female) - Night Shade - TM042
  (902, 90201, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 32),
  -- Basculegion (Female) - Endure - TM047
  (902, 90201, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 33),
  -- Basculegion (Female) - Rain Dance - TM050
  (902, 90201, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Basculegion (Female) - Snowscape - TM052
  (902, 90201, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 35),
  -- Basculegion (Female) - Zen Headbutt - TM059
  (902, 90201, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 36),
  -- Basculegion (Female) - Psychic Fangs - TM063
  (902, 90201, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 37),
  -- Basculegion (Female) - Sleep Talk - TM070
  (902, 90201, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Basculegion (Female) - Waterfall - TM077
  (902, 90201, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 39),
  -- Basculegion (Female) - Rest - TM085
  (902, 90201, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Basculegion (Female) - Substitute - TM103
  (902, 90201, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Basculegion (Female) - Crunch - TM108
  (902, 90201, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 42),
  -- Basculegion (Female) - Liquidation - TM110
  (902, 90201, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 43),
  -- Basculegion (Female) - Shadow Ball - TM114
  (902, 90201, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 44),
  -- Basculegion (Female) - Surf - TM123
  (902, 90201, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 45),
  -- Basculegion (Female) - Ice Beam - TM135
  (902, 90201, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 46),
  -- Basculegion (Female) - Hydro Pump - TM142
  (902, 90201, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 47),
  -- Basculegion (Female) - Blizzard - TM143
  (902, 90201, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 48),
  -- Basculegion (Female) - Phantom Force - TM151
  (902, 90201, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 49),
  -- Basculegion (Female) - Giga Impact - TM152
  (902, 90201, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Basculegion (Female) - Outrage - TM156
  (902, 90201, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 51),
  -- Basculegion (Female) - Hyper Beam - TM163
  (902, 90201, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Basculegion (Female) - Tera Blast - TM171
  (902, 90201, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Basculegion (Female) - Endeavor - Egg
  (902, 90201, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Basculegion (Female) - Last Respects - Egg
  (902, 90201, 854, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sneasler - Scratch - Level 1
  (903, 90300, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sneasler - Leer - Level 1
  (903, 90300, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sneasler - Rock Smash - Level 1
  (903, 90300, 249, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sneasler - Fling - Level 1
  (903, 90300, 374, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sneasler - Taunt - Level 6
  (903, 90300, 269, 23, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Sneasler - Quick Attack - Level 12
  (903, 90300, 98, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Sneasler - Metal Claw - Level 18
  (903, 90300, 232, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Sneasler - Poison Jab - Level 24
  (903, 90300, 398, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Sneasler - Brick Break - Level 30
  (903, 90300, 280, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Sneasler - Hone Claws - Level 36
  (903, 90300, 468, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Sneasler - Slash - Level 42
  (903, 90300, 163, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Sneasler - Agility - Level 48
  (903, 90300, 97, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Sneasler - Screech - Level 54
  (903, 90300, 103, 23, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Sneasler - Close Combat - Level 60
  (903, 90300, 370, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Sneasler - Take Down - TM001
  (903, 90300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Sneasler - Agility - TM004
  (903, 90300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Sneasler - Protect - TM007
  (903, 90300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Sneasler - Low Kick - TM012
  (903, 90300, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Sneasler - Acid Spray - TM013
  (903, 90300, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 19),
  -- Sneasler - Acrobatics - TM014
  (903, 90300, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Sneasler - Thief - TM018
  (903, 90300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Sneasler - Trailblaze - TM020
  (903, 90300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Sneasler - Facade - TM025
  (903, 90300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Sneasler - Poison Tail - TM026
  (903, 90300, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 24),
  -- Sneasler - Aerial Ace - TM027
  (903, 90300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Sneasler - Metal Claw - TM031
  (903, 90300, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 26),
  -- Sneasler - Swift - TM032
  (903, 90300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Sneasler - Rock Tomb - TM036
  (903, 90300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Sneasler - Low Sweep - TM039
  (903, 90300, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 29),
  -- Sneasler - Fling - TM043
  (903, 90300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Sneasler - Venoshock - TM045
  (903, 90300, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 31),
  -- Sneasler - Endure - TM047
  (903, 90300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Sneasler - Sunny Day - TM049
  (903, 90300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Sneasler - Rain Dance - TM050
  (903, 90300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Sneasler - Dig - TM055
  (903, 90300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Sneasler - False Swipe - TM057
  (903, 90300, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 36),
  -- Sneasler - Brick Break - TM058
  (903, 90300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 37),
  -- Sneasler - U-turn - TM060
  (903, 90300, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 38),
  -- Sneasler - Shadow Claw - TM061
  (903, 90300, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 39),
  -- Sneasler - Bulk Up - TM064
  (903, 90300, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 40),
  -- Sneasler - Fire Punch - TM067
  (903, 90300, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 41),
  -- Sneasler - Sleep Talk - TM070
  (903, 90300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Sneasler - Grass Knot - TM081
  (903, 90300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 43),
  -- Sneasler - Poison Jab - TM083
  (903, 90300, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 44),
  -- Sneasler - Rest - TM085
  (903, 90300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 45),
  -- Sneasler - Rock Slide - TM086
  (903, 90300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 46),
  -- Sneasler - Taunt - TM087
  (903, 90300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 47),
  -- Sneasler - Swords Dance - TM088
  (903, 90300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 48),
  -- Sneasler - Toxic Spikes - TM091
  (903, 90300, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 49),
  -- Sneasler - Gunk Shot - TM102
  (903, 90300, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 50),
  -- Sneasler - Substitute - TM103
  (903, 90300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 51),
  -- Sneasler - X-Scissor - TM105
  (903, 90300, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 52),
  -- Sneasler - Shadow Ball - TM114
  (903, 90300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 53),
  -- Sneasler - Calm Mind - TM129
  (903, 90300, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 54),
  -- Sneasler - Reversal - TM134
  (903, 90300, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 55),
  -- Sneasler - Nasty Plot - TM140
  (903, 90300, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 56),
  -- Sneasler - Sludge Bomb - TM148
  (903, 90300, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 57),
  -- Sneasler - Giga Impact - TM152
  (903, 90300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 58),
  -- Sneasler - Focus Blast - TM158
  (903, 90300, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 59),
  -- Sneasler - Hyper Beam - TM163
  (903, 90300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 60),
  -- Sneasler - Close Combat - TM167
  (903, 90300, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 61),
  -- Sneasler - Tera Blast - TM171
  (903, 90300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Sneasler - Counter - Egg
  (903, 90300, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sneasler - Fake Out - Egg
  (903, 90300, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Sneasler - Feint - Egg
  (903, 90300, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sneasler - Night Slash - Egg
  (903, 90300, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sneasler - Switcheroo - Egg
  (903, 90300, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Sneasler - Double Hit - Egg
  (903, 90300, 458, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Sneasler - Quick Guard - Egg
  (903, 90300, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Sneasler - Dire Claw - Evolution
  (903, 90300, 827, 23, NULL, 7, NULL, NULL, NULL, NULL, 70),
  -- Overqwil - Tackle - Level 1
  (904, 90400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Overqwil - Poison Sting - Level 1
  (904, 90400, 40, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Overqwil - Harden - Level 4
  (904, 90400, 106, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Overqwil - Bite - Level 8
  (904, 90400, 44, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Overqwil - Fell Stinger - Level 12
  (904, 90400, 565, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Overqwil - Minimize - Level 16
  (904, 90400, 107, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Overqwil - Spikes - Level 20
  (904, 90400, 191, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Overqwil - Brine - Level 24
  (904, 90400, 362, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Overqwil - Barb Barrage - Level 28
  (904, 90400, 839, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Overqwil - Pin Missile - Level 32
  (904, 90400, 42, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Overqwil - Toxic Spikes - Level 36
  (904, 90400, 390, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Overqwil - Stockpile - Level 40
  (904, 90400, 254, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Overqwil - Spit Up - Level 40
  (904, 90400, 255, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Overqwil - Toxic - Level 44
  (904, 90400, 92, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Overqwil - Crunch - Level 48
  (904, 90400, 242, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Overqwil - Acupressure - Level 52
  (904, 90400, 367, 23, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Overqwil - Destiny Bond - Level 56
  (904, 90400, 194, 23, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Overqwil - Take Down - TM001
  (904, 90400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Overqwil - Agility - TM004
  (904, 90400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Overqwil - Scary Face - TM006
  (904, 90400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Overqwil - Protect - TM007
  (904, 90400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Overqwil - Water Pulse - TM011
  (904, 90400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 22),
  -- Overqwil - Acid Spray - TM013
  (904, 90400, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 23),
  -- Overqwil - Chilling Water - TM022
  (904, 90400, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Overqwil - Facade - TM025
  (904, 90400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Overqwil - Poison Tail - TM026
  (904, 90400, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 26),
  -- Overqwil - Hex - TM029
  (904, 90400, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 27),
  -- Overqwil - Swift - TM032
  (904, 90400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Overqwil - Icy Wind - TM034
  (904, 90400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 29),
  -- Overqwil - Mud Shot - TM035
  (904, 90400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 30),
  -- Overqwil - Venoshock - TM045
  (904, 90400, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 31),
  -- Overqwil - Endure - TM047
  (904, 90400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Overqwil - Rain Dance - TM050
  (904, 90400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Overqwil - Smart Strike - TM053
  (904, 90400, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 34),
  -- Overqwil - Sleep Talk - TM070
  (904, 90400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Overqwil - Waterfall - TM077
  (904, 90400, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 36),
  -- Overqwil - Poison Jab - TM083
  (904, 90400, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 37),
  -- Overqwil - Rest - TM085
  (904, 90400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Overqwil - Taunt - TM087
  (904, 90400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Overqwil - Swords Dance - TM088
  (904, 90400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 40),
  -- Overqwil - Spikes - TM090
  (904, 90400, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 41),
  -- Overqwil - Toxic Spikes - TM091
  (904, 90400, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 42),
  -- Overqwil - Dark Pulse - TM094
  (904, 90400, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 43),
  -- Overqwil - Gunk Shot - TM102
  (904, 90400, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 44),
  -- Overqwil - Substitute - TM103
  (904, 90400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Overqwil - Crunch - TM108
  (904, 90400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 46),
  -- Overqwil - Liquidation - TM110
  (904, 90400, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 47),
  -- Overqwil - Shadow Ball - TM114
  (904, 90400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 48),
  -- Overqwil - Surf - TM123
  (904, 90400, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 49),
  -- Overqwil - Reversal - TM134
  (904, 90400, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 50),
  -- Overqwil - Ice Beam - TM135
  (904, 90400, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 51),
  -- Overqwil - Hydro Pump - TM142
  (904, 90400, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 52),
  -- Overqwil - Blizzard - TM143
  (904, 90400, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 53),
  -- Overqwil - Sludge Bomb - TM148
  (904, 90400, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 54),
  -- Overqwil - Giga Impact - TM152
  (904, 90400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 55),
  -- Overqwil - Hyper Beam - TM163
  (904, 90400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 56),
  -- Overqwil - Tera Blast - TM171
  (904, 90400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Overqwil - Supersonic - Egg
  (904, 90400, 48, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Overqwil - Bubble Beam - Egg
  (904, 90400, 61, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Overqwil - Haze - Egg
  (904, 90400, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Overqwil - Self-Destruct - Egg
  (904, 90400, 120, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Overqwil - Flail - Egg
  (904, 90400, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Overqwil - Astonish - Egg
  (904, 90400, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Overqwil - Water Pulse - Egg
  (904, 90400, 352, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Overqwil - Aqua Tail - Egg
  (904, 90400, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Overqwil - Aqua Jet - Egg
  (904, 90400, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Overqwil - Acid Spray - Egg
  (904, 90400, 491, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Enamorus - Astonish - Level 1
  (905, 90500, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Enamorus - Fairy Wind - Level 1
  (905, 90500, 584, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Enamorus - Torment - Level 5
  (905, 90500, 259, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Enamorus - Flatter - Level 10
  (905, 90500, 260, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Enamorus - Twister - Level 15
  (905, 90500, 239, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Enamorus - Draining Kiss - Level 20
  (905, 90500, 577, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Enamorus - Iron Defense - Level 25
  (905, 90500, 334, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Enamorus - Imprison - Level 30
  (905, 90500, 286, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Enamorus - Mystical Fire - Level 35
  (905, 90500, 595, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Enamorus - Dazzling Gleam - Level 40
  (905, 90500, 605, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Enamorus - Extrasensory - Level 45
  (905, 90500, 326, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Enamorus - Uproar - Level 50
  (905, 90500, 253, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Enamorus - Superpower - Level 55
  (905, 90500, 276, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Enamorus - Healing Wish - Level 60
  (905, 90500, 361, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Enamorus - Moonblast - Level 65
  (905, 90500, 585, 23, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Enamorus - Outrage - Level 70
  (905, 90500, 200, 23, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Enamorus - Springtide Storm - Level 75
  (905, 90500, 831, 23, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Enamorus - Take Down - TM001
  (905, 90500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Enamorus - Agility - TM004
  (905, 90500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Enamorus - Scary Face - TM006
  (905, 90500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Enamorus - Protect - TM007
  (905, 90500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Enamorus - Disarming Voice - TM019
  (905, 90500, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 22),
  -- Enamorus - Facade - TM025
  (905, 90500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Enamorus - Draining Kiss - TM037
  (905, 90500, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 24),
  -- Enamorus - Endure - TM047
  (905, 90500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Enamorus - Sunny Day - TM049
  (905, 90500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Enamorus - Rain Dance - TM050
  (905, 90500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Enamorus - Zen Headbutt - TM059
  (905, 90500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Enamorus - Body Slam - TM066
  (905, 90500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Enamorus - Sleep Talk - TM070
  (905, 90500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Enamorus - Dazzling Gleam - TM079
  (905, 90500, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 31),
  -- Enamorus - Grass Knot - TM081
  (905, 90500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 32),
  -- Enamorus - Rest - TM085
  (905, 90500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Enamorus - Taunt - TM087
  (905, 90500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 34),
  -- Enamorus - Imprison - TM092
  (905, 90500, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 35),
  -- Enamorus - Fly - TM097
  (905, 90500, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 36),
  -- Enamorus - Iron Head - TM099
  (905, 90500, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 37),
  -- Enamorus - Substitute - TM103
  (905, 90500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Enamorus - Iron Defense - TM104
  (905, 90500, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 39),
  -- Enamorus - Tailwind - TM113
  (905, 90500, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 40),
  -- Enamorus - Psychic - TM120
  (905, 90500, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 41),
  -- Enamorus - Play Rough - TM127
  (905, 90500, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 42),
  -- Enamorus - Calm Mind - TM129
  (905, 90500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 43),
  -- Enamorus - Earth Power - TM133
  (905, 90500, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 44),
  -- Enamorus - Grassy Terrain - TM137
  (905, 90500, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 45),
  -- Enamorus - Misty Terrain - TM139
  (905, 90500, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 46),
  -- Enamorus - Sludge Bomb - TM148
  (905, 90500, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 47),
  -- Enamorus - Giga Impact - TM152
  (905, 90500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 48),
  -- Enamorus - Outrage - TM156
  (905, 90500, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 49),
  -- Enamorus - Focus Blast - TM158
  (905, 90500, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 50),
  -- Enamorus - Hyper Beam - TM163
  (905, 90500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Enamorus - Tera Blast - TM171
  (905, 90500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Enamorus (Therian) - Astonish - Level 1
  (905, 90501, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Enamorus (Therian) - Fairy Wind - Level 1
  (905, 90501, 584, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Enamorus (Therian) - Torment - Level 5
  (905, 90501, 259, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Enamorus (Therian) - Flatter - Level 10
  (905, 90501, 260, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Enamorus (Therian) - Twister - Level 15
  (905, 90501, 239, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Enamorus (Therian) - Draining Kiss - Level 20
  (905, 90501, 577, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Enamorus (Therian) - Iron Defense - Level 25
  (905, 90501, 334, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Enamorus (Therian) - Imprison - Level 30
  (905, 90501, 286, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Enamorus (Therian) - Mystical Fire - Level 35
  (905, 90501, 595, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Enamorus (Therian) - Dazzling Gleam - Level 40
  (905, 90501, 605, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Enamorus (Therian) - Extrasensory - Level 45
  (905, 90501, 326, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Enamorus (Therian) - Uproar - Level 50
  (905, 90501, 253, 23, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Enamorus (Therian) - Superpower - Level 55
  (905, 90501, 276, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Enamorus (Therian) - Healing Wish - Level 60
  (905, 90501, 361, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Enamorus (Therian) - Moonblast - Level 65
  (905, 90501, 585, 23, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Enamorus (Therian) - Outrage - Level 70
  (905, 90501, 200, 23, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Enamorus (Therian) - Springtide Storm - Level 75
  (905, 90501, 831, 23, NULL, 1, 75, NULL, NULL, NULL, 17),
  -- Enamorus (Therian) - Take Down - TM001
  (905, 90501, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Enamorus (Therian) - Agility - TM004
  (905, 90501, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Enamorus (Therian) - Scary Face - TM006
  (905, 90501, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Enamorus (Therian) - Protect - TM007
  (905, 90501, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Enamorus (Therian) - Disarming Voice - TM019
  (905, 90501, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 22),
  -- Enamorus (Therian) - Facade - TM025
  (905, 90501, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Enamorus (Therian) - Draining Kiss - TM037
  (905, 90501, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 24),
  -- Enamorus (Therian) - Endure - TM047
  (905, 90501, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Enamorus (Therian) - Sunny Day - TM049
  (905, 90501, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Enamorus (Therian) - Rain Dance - TM050
  (905, 90501, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Enamorus (Therian) - Zen Headbutt - TM059
  (905, 90501, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Enamorus (Therian) - Body Slam - TM066
  (905, 90501, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Enamorus (Therian) - Sleep Talk - TM070
  (905, 90501, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Enamorus (Therian) - Dazzling Gleam - TM079
  (905, 90501, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 31),
  -- Enamorus (Therian) - Grass Knot - TM081
  (905, 90501, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 32),
  -- Enamorus (Therian) - Rest - TM085
  (905, 90501, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Enamorus (Therian) - Taunt - TM087
  (905, 90501, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 34),
  -- Enamorus (Therian) - Imprison - TM092
  (905, 90501, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 35),
  -- Enamorus (Therian) - Fly - TM097
  (905, 90501, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 36),
  -- Enamorus (Therian) - Iron Head - TM099
  (905, 90501, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 37),
  -- Enamorus (Therian) - Substitute - TM103
  (905, 90501, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Enamorus (Therian) - Iron Defense - TM104
  (905, 90501, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 39),
  -- Enamorus (Therian) - Tailwind - TM113
  (905, 90501, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 40),
  -- Enamorus (Therian) - Psychic - TM120
  (905, 90501, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 41),
  -- Enamorus (Therian) - Play Rough - TM127
  (905, 90501, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 42),
  -- Enamorus (Therian) - Calm Mind - TM129
  (905, 90501, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 43),
  -- Enamorus (Therian) - Earth Power - TM133
  (905, 90501, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 44),
  -- Enamorus (Therian) - Grassy Terrain - TM137
  (905, 90501, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 45),
  -- Enamorus (Therian) - Misty Terrain - TM139
  (905, 90501, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 46),
  -- Enamorus (Therian) - Sludge Bomb - TM148
  (905, 90501, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 47),
  -- Enamorus (Therian) - Giga Impact - TM152
  (905, 90501, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 48),
  -- Enamorus (Therian) - Outrage - TM156
  (905, 90501, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 49),
  -- Enamorus (Therian) - Focus Blast - TM158
  (905, 90501, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 50),
  -- Enamorus (Therian) - Hyper Beam - TM163
  (905, 90501, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Enamorus (Therian) - Tera Blast - TM171
  (905, 90501, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Sprigatito - Scratch - Level 1
  (906, 90600, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sprigatito - Tail Whip - Level 1
  (906, 90600, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sprigatito - Leafage - Level 1
  (906, 90600, 670, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sprigatito - Bite - Level 7
  (906, 90600, 44, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Sprigatito - Hone Claws - Level 10
  (906, 90600, 468, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Sprigatito - Magical Leaf - Level 13
  (906, 90600, 345, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Sprigatito - Quick Attack - Level 15
  (906, 90600, 98, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Sprigatito - Seed Bomb - Level 17
  (906, 90600, 402, 23, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Sprigatito - U-turn - Level 21
  (906, 90600, 369, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Sprigatito - Worry Seed - Level 25
  (906, 90600, 388, 23, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Sprigatito - Slash - Level 28
  (906, 90600, 163, 23, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Sprigatito - Energy Ball - Level 32
  (906, 90600, 412, 23, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Sprigatito - Play Rough - Level 36
  (906, 90600, 583, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Sprigatito - Take Down - TM001
  (906, 90600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Sprigatito - Charm - TM002
  (906, 90600, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Sprigatito - Fake Tears - TM003
  (906, 90600, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 16),
  -- Sprigatito - Agility - TM004
  (906, 90600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Sprigatito - Mud-Slap - TM005
  (906, 90600, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Sprigatito - Protect - TM007
  (906, 90600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Sprigatito - Acrobatics - TM014
  (906, 90600, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Sprigatito - Disarming Voice - TM019
  (906, 90600, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 21),
  -- Sprigatito - Trailblaze - TM020
  (906, 90600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Sprigatito - Facade - TM025
  (906, 90600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Sprigatito - Swift - TM032
  (906, 90600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Sprigatito - Magical Leaf - TM033
  (906, 90600, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 25),
  -- Sprigatito - Endure - TM047
  (906, 90600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Sprigatito - Bullet Seed - TM056
  (906, 90600, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 27),
  -- Sprigatito - U-turn - TM060
  (906, 90600, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 28),
  -- Sprigatito - Shadow Claw - TM061
  (906, 90600, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 29),
  -- Sprigatito - Sleep Talk - TM070
  (906, 90600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Sprigatito - Seed Bomb - TM071
  (906, 90600, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 31),
  -- Sprigatito - Grass Knot - TM081
  (906, 90600, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 32),
  -- Sprigatito - Rest - TM085
  (906, 90600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Sprigatito - Taunt - TM087
  (906, 90600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 34),
  -- Sprigatito - Substitute - TM103
  (906, 90600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Sprigatito - Giga Drain - TM111
  (906, 90600, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 36),
  -- Sprigatito - Energy Ball - TM119
  (906, 90600, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 37),
  -- Sprigatito - Play Rough - TM127
  (906, 90600, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 38),
  -- Sprigatito - Helping Hand - TM130
  (906, 90600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 39),
  -- Sprigatito - Grassy Terrain - TM137
  (906, 90600, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 40),
  -- Sprigatito - Nasty Plot - TM140
  (906, 90600, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 41),
  -- Sprigatito - Grass Pledge - TM146
  (906, 90600, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 42),
  -- Sprigatito - Leaf Storm - TM159
  (906, 90600, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 43),
  -- Sprigatito - Solar Beam - TM168
  (906, 90600, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 44),
  -- Sprigatito - Tera Blast - TM171
  (906, 90600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Sprigatito - Leech Seed - Egg
  (906, 90600, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Sprigatito - Copycat - Egg
  (906, 90600, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Sprigatito - Sucker Punch - Egg
  (906, 90600, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Sprigatito - Ally Switch - Egg
  (906, 90600, 502, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Sprigatito - Petal Blizzard - Egg
  (906, 90600, 572, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Floragato - Scratch - Level 1
  (907, 90700, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Floragato - Tail Whip - Level 1
  (907, 90700, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Floragato - Leafage - Level 1
  (907, 90700, 670, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Floragato - Bite - Level 7
  (907, 90700, 44, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Floragato - Hone Claws - Level 10
  (907, 90700, 468, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Floragato - Magical Leaf - Level 13
  (907, 90700, 345, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Floragato - Quick Attack - Level 15
  (907, 90700, 98, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Floragato - Seed Bomb - Level 20
  (907, 90700, 402, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Floragato - U-turn - Level 24
  (907, 90700, 369, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Floragato - Worry Seed - Level 28
  (907, 90700, 388, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Floragato - Slash - Level 33
  (907, 90700, 163, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Floragato - Energy Ball - Level 38
  (907, 90700, 412, 23, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Floragato - Play Rough - Level 42
  (907, 90700, 583, 23, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Floragato - Leaf Storm - Level 46
  (907, 90700, 437, 23, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Floragato - Take Down - TM001
  (907, 90700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Floragato - Charm - TM002
  (907, 90700, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Floragato - Fake Tears - TM003
  (907, 90700, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 17),
  -- Floragato - Agility - TM004
  (907, 90700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Floragato - Mud-Slap - TM005
  (907, 90700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Floragato - Protect - TM007
  (907, 90700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Floragato - Low Kick - TM012
  (907, 90700, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Floragato - Acrobatics - TM014
  (907, 90700, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 22),
  -- Floragato - Disarming Voice - TM019
  (907, 90700, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 23),
  -- Floragato - Trailblaze - TM020
  (907, 90700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Floragato - Facade - TM025
  (907, 90700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Floragato - Aerial Ace - TM027
  (907, 90700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Floragato - Swift - TM032
  (907, 90700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Floragato - Magical Leaf - TM033
  (907, 90700, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 28),
  -- Floragato - Low Sweep - TM039
  (907, 90700, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 29),
  -- Floragato - Fling - TM043
  (907, 90700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Floragato - Endure - TM047
  (907, 90700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Floragato - Bullet Seed - TM056
  (907, 90700, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 32),
  -- Floragato - U-turn - TM060
  (907, 90700, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Floragato - Shadow Claw - TM061
  (907, 90700, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 34),
  -- Floragato - Thunder Punch - TM068
  (907, 90700, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 35),
  -- Floragato - Sleep Talk - TM070
  (907, 90700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Floragato - Seed Bomb - TM071
  (907, 90700, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 37),
  -- Floragato - Grass Knot - TM081
  (907, 90700, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 38),
  -- Floragato - Rest - TM085
  (907, 90700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Floragato - Taunt - TM087
  (907, 90700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 40),
  -- Floragato - Substitute - TM103
  (907, 90700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Floragato - Giga Drain - TM111
  (907, 90700, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 42),
  -- Floragato - Energy Ball - TM119
  (907, 90700, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 43),
  -- Floragato - Play Rough - TM127
  (907, 90700, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 44),
  -- Floragato - Helping Hand - TM130
  (907, 90700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 45),
  -- Floragato - Grassy Terrain - TM137
  (907, 90700, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 46),
  -- Floragato - Nasty Plot - TM140
  (907, 90700, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 47),
  -- Floragato - Grass Pledge - TM146
  (907, 90700, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 48),
  -- Floragato - Leaf Storm - TM159
  (907, 90700, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 49),
  -- Floragato - Solar Beam - TM168
  (907, 90700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 50),
  -- Floragato - Tera Blast - TM171
  (907, 90700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Floragato - Leech Seed - Egg
  (907, 90700, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Floragato - Copycat - Egg
  (907, 90700, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Floragato - Sucker Punch - Egg
  (907, 90700, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Floragato - Ally Switch - Egg
  (907, 90700, 502, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Floragato - Petal Blizzard - Egg
  (907, 90700, 572, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Meowscarada - Scratch - Level 1
  (908, 90800, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowscarada - Tail Whip - Level 1
  (908, 90800, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowscarada - Leafage - Level 1
  (908, 90800, 670, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meowscarada - Bite - Level 7
  (908, 90800, 44, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Meowscarada - Hone Claws - Level 10
  (908, 90800, 468, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Meowscarada - Magical Leaf - Level 13
  (908, 90800, 345, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Meowscarada - Quick Attack - Level 15
  (908, 90800, 98, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Meowscarada - Seed Bomb - Level 20
  (908, 90800, 402, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Meowscarada - U-turn - Level 24
  (908, 90800, 369, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Meowscarada - Worry Seed - Level 29
  (908, 90800, 388, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Meowscarada - Slash - Level 33
  (908, 90800, 163, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Meowscarada - Night Slash - Level 38
  (908, 90800, 400, 23, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Meowscarada - Energy Ball - Level 42
  (908, 90800, 412, 23, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Meowscarada - Play Rough - Level 47
  (908, 90800, 583, 23, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Meowscarada - Knock Off - Level 52
  (908, 90800, 282, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Meowscarada - Grassy Terrain - Level 58
  (908, 90800, 580, 23, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Meowscarada - Leaf Storm - Level 64
  (908, 90800, 437, 23, NULL, 1, 64, NULL, NULL, NULL, 17),
  -- Meowscarada - Take Down - TM001
  (908, 90800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Meowscarada - Charm - TM002
  (908, 90800, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 19),
  -- Meowscarada - Fake Tears - TM003
  (908, 90800, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 20),
  -- Meowscarada - Agility - TM004
  (908, 90800, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 21),
  -- Meowscarada - Mud-Slap - TM005
  (908, 90800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 22),
  -- Meowscarada - Protect - TM007
  (908, 90800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 23),
  -- Meowscarada - Low Kick - TM012
  (908, 90800, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 24),
  -- Meowscarada - Acrobatics - TM014
  (908, 90800, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 25),
  -- Meowscarada - Thief - TM018
  (908, 90800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 26),
  -- Meowscarada - Disarming Voice - TM019
  (908, 90800, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 27),
  -- Meowscarada - Trailblaze - TM020
  (908, 90800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 28),
  -- Meowscarada - Chilling Water - TM022
  (908, 90800, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 29),
  -- Meowscarada - Facade - TM025
  (908, 90800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 30),
  -- Meowscarada - Aerial Ace - TM027
  (908, 90800, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 31),
  -- Meowscarada - Swift - TM032
  (908, 90800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 32),
  -- Meowscarada - Magical Leaf - TM033
  (908, 90800, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 33),
  -- Meowscarada - Low Sweep - TM039
  (908, 90800, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 34),
  -- Meowscarada - Fling - TM043
  (908, 90800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 35),
  -- Meowscarada - Endure - TM047
  (908, 90800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 36),
  -- Meowscarada - Bullet Seed - TM056
  (908, 90800, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 37),
  -- Meowscarada - Brick Break - TM058
  (908, 90800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 38),
  -- Meowscarada - U-turn - TM060
  (908, 90800, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 39),
  -- Meowscarada - Shadow Claw - TM061
  (908, 90800, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 40),
  -- Meowscarada - Foul Play - TM062
  (908, 90800, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 41),
  -- Meowscarada - Thunder Punch - TM068
  (908, 90800, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 42),
  -- Meowscarada - Sleep Talk - TM070
  (908, 90800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Meowscarada - Seed Bomb - TM071
  (908, 90800, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 44),
  -- Meowscarada - Grass Knot - TM081
  (908, 90800, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 45),
  -- Meowscarada - Rest - TM085
  (908, 90800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Meowscarada - Taunt - TM087
  (908, 90800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 47),
  -- Meowscarada - Spikes - TM090
  (908, 90800, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 48),
  -- Meowscarada - Toxic Spikes - TM091
  (908, 90800, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 49),
  -- Meowscarada - Dark Pulse - TM094
  (908, 90800, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 50),
  -- Meowscarada - Skill Swap - TM098
  (908, 90800, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 51),
  -- Meowscarada - Power Gem - TM101
  (908, 90800, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 52),
  -- Meowscarada - Substitute - TM103
  (908, 90800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 53),
  -- Meowscarada - Trick - TM109
  (908, 90800, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 54),
  -- Meowscarada - Giga Drain - TM111
  (908, 90800, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 55),
  -- Meowscarada - Aura Sphere - TM112
  (908, 90800, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 56),
  -- Meowscarada - Shadow Ball - TM114
  (908, 90800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 57),
  -- Meowscarada - Energy Ball - TM119
  (908, 90800, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 58),
  -- Meowscarada - Play Rough - TM127
  (908, 90800, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 59),
  -- Meowscarada - Helping Hand - TM130
  (908, 90800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 60),
  -- Meowscarada - Pollen Puff - TM131
  (908, 90800, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 61),
  -- Meowscarada - Grassy Terrain - TM137
  (908, 90800, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 62),
  -- Meowscarada - Nasty Plot - TM140
  (908, 90800, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 63),
  -- Meowscarada - Grass Pledge - TM146
  (908, 90800, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 64),
  -- Meowscarada - Giga Impact - TM152
  (908, 90800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 65),
  -- Meowscarada - Frenzy Plant - TM155
  (908, 90800, 338, 23, NULL, 2, NULL, NULL, 23002155, NULL, 66),
  -- Meowscarada - Leaf Storm - TM159
  (908, 90800, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 67),
  -- Meowscarada - Trick Room - TM161
  (908, 90800, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 68),
  -- Meowscarada - Hyper Beam - TM163
  (908, 90800, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 69),
  -- Meowscarada - Solar Beam - TM168
  (908, 90800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 70),
  -- Meowscarada - Tera Blast - TM171
  (908, 90800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 71),
  -- Meowscarada - Leech Seed - Egg
  (908, 90800, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Meowscarada - Copycat - Egg
  (908, 90800, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Meowscarada - Sucker Punch - Egg
  (908, 90800, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Meowscarada - Ally Switch - Egg
  (908, 90800, 502, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Meowscarada - Petal Blizzard - Egg
  (908, 90800, 572, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Meowscarada - Flower Trick - Evolution
  (908, 90800, 870, 23, NULL, 7, NULL, NULL, NULL, NULL, 77),
  -- Meowscarada - Double Team - Reminder
  (908, 90800, 104, 23, NULL, 9, NULL, NULL, NULL, NULL, 78),
  -- Meowscarada - Trick - Reminder
  (908, 90800, 271, 23, NULL, 9, NULL, NULL, NULL, NULL, 79),
  -- Fuecoco - Tackle - Level 1
  (909, 90900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fuecoco - Leer - Level 1
  (909, 90900, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fuecoco - Ember - Level 1
  (909, 90900, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Fuecoco - Round - Level 7
  (909, 90900, 496, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Fuecoco - Bite - Level 12
  (909, 90900, 44, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Fuecoco - Incinerate - Level 15
  (909, 90900, 510, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Fuecoco - Yawn - Level 17
  (909, 90900, 281, 23, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Fuecoco - Snarl - Level 21
  (909, 90900, 555, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Fuecoco - Roar - Level 25
  (909, 90900, 46, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Fuecoco - Flamethrower - Level 28
  (909, 90900, 53, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Fuecoco - Hyper Voice - Level 32
  (909, 90900, 304, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Fuecoco - Fire Blast - Level 36
  (909, 90900, 126, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Fuecoco - Take Down - TM001
  (909, 90900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Fuecoco - Mud-Slap - TM005
  (909, 90900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 14),
  -- Fuecoco - Protect - TM007
  (909, 90900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Fuecoco - Fire Fang - TM008
  (909, 90900, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 16),
  -- Fuecoco - Thunder Fang - TM009
  (909, 90900, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 17),
  -- Fuecoco - Disarming Voice - TM019
  (909, 90900, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 18),
  -- Fuecoco - Fire Spin - TM024
  (909, 90900, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 19),
  -- Fuecoco - Facade - TM025
  (909, 90900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Fuecoco - Snarl - TM030
  (909, 90900, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 21),
  -- Fuecoco - Flame Charge - TM038
  (909, 90900, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 22),
  -- Fuecoco - Endure - TM047
  (909, 90900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Fuecoco - Sunny Day - TM049
  (909, 90900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Fuecoco - Dig - TM055
  (909, 90900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 25),
  -- Fuecoco - Zen Headbutt - TM059
  (909, 90900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 26),
  -- Fuecoco - Body Slam - TM066
  (909, 90900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Fuecoco - Sleep Talk - TM070
  (909, 90900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Fuecoco - Seed Bomb - TM071
  (909, 90900, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 29),
  -- Fuecoco - Stomping Tantrum - TM084
  (909, 90900, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 30),
  -- Fuecoco - Rest - TM085
  (909, 90900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Fuecoco - Substitute - TM103
  (909, 90900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Fuecoco - Will-O-Wisp - TM107
  (909, 90900, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 33),
  -- Fuecoco - Crunch - TM108
  (909, 90900, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 34),
  -- Fuecoco - Hyper Voice - TM117
  (909, 90900, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 35),
  -- Fuecoco - Heat Wave - TM118
  (909, 90900, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 36),
  -- Fuecoco - Encore - TM122
  (909, 90900, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 37),
  -- Fuecoco - Flamethrower - TM125
  (909, 90900, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 38),
  -- Fuecoco - Helping Hand - TM130
  (909, 90900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 39),
  -- Fuecoco - Fire Blast - TM141
  (909, 90900, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 40),
  -- Fuecoco - Fire Pledge - TM144
  (909, 90900, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 41),
  -- Fuecoco - Outrage - TM156
  (909, 90900, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 42),
  -- Fuecoco - Overheat - TM157
  (909, 90900, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 43),
  -- Fuecoco - Flare Blitz - TM165
  (909, 90900, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 44),
  -- Fuecoco - Tera Blast - TM171
  (909, 90900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Fuecoco - Curse - Egg
  (909, 90900, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Fuecoco - Encore - Egg
  (909, 90900, 227, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Fuecoco - Slack Off - Egg
  (909, 90900, 303, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Fuecoco - Belch - Egg
  (909, 90900, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Crocalor - Tackle - Level 1
  (910, 91000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crocalor - Leer - Level 1
  (910, 91000, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crocalor - Ember - Level 1
  (910, 91000, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crocalor - Lick - Level 7
  (910, 91000, 122, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Crocalor - Round - Level 10
  (910, 91000, 496, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Crocalor - Bite - Level 12
  (910, 91000, 44, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Crocalor - Yawn - Level 15
  (910, 91000, 281, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Crocalor - Incinerate - Level 17
  (910, 91000, 510, 23, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Crocalor - Snarl - Level 24
  (910, 91000, 555, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Crocalor - Roar - Level 28
  (910, 91000, 46, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Crocalor - Flamethrower - Level 32
  (910, 91000, 53, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Crocalor - Hyper Voice - Level 38
  (910, 91000, 304, 23, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Crocalor - Will-O-Wisp - Level 42
  (910, 91000, 261, 23, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Crocalor - Fire Blast - Level 47
  (910, 91000, 126, 23, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Crocalor - Take Down - TM001
  (910, 91000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Crocalor - Mud-Slap - TM005
  (910, 91000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Crocalor - Protect - TM007
  (910, 91000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Crocalor - Fire Fang - TM008
  (910, 91000, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 18),
  -- Crocalor - Thunder Fang - TM009
  (910, 91000, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 19),
  -- Crocalor - Disarming Voice - TM019
  (910, 91000, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 20),
  -- Crocalor - Fire Spin - TM024
  (910, 91000, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 21),
  -- Crocalor - Facade - TM025
  (910, 91000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Crocalor - Snarl - TM030
  (910, 91000, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 23),
  -- Crocalor - Flame Charge - TM038
  (910, 91000, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 24),
  -- Crocalor - Endure - TM047
  (910, 91000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Crocalor - Sunny Day - TM049
  (910, 91000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Crocalor - Dig - TM055
  (910, 91000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Crocalor - Zen Headbutt - TM059
  (910, 91000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Crocalor - Body Slam - TM066
  (910, 91000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Crocalor - Sleep Talk - TM070
  (910, 91000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Crocalor - Seed Bomb - TM071
  (910, 91000, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 31),
  -- Crocalor - Stomping Tantrum - TM084
  (910, 91000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 32),
  -- Crocalor - Rest - TM085
  (910, 91000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Crocalor - Substitute - TM103
  (910, 91000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Crocalor - Will-O-Wisp - TM107
  (910, 91000, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 35),
  -- Crocalor - Crunch - TM108
  (910, 91000, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 36),
  -- Crocalor - Hyper Voice - TM117
  (910, 91000, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 37),
  -- Crocalor - Heat Wave - TM118
  (910, 91000, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 38),
  -- Crocalor - Encore - TM122
  (910, 91000, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 39),
  -- Crocalor - Flamethrower - TM125
  (910, 91000, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 40),
  -- Crocalor - Helping Hand - TM130
  (910, 91000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Crocalor - Fire Blast - TM141
  (910, 91000, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 42),
  -- Crocalor - Fire Pledge - TM144
  (910, 91000, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 43),
  -- Crocalor - Outrage - TM156
  (910, 91000, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 44),
  -- Crocalor - Overheat - TM157
  (910, 91000, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 45),
  -- Crocalor - Flare Blitz - TM165
  (910, 91000, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 46),
  -- Crocalor - Tera Blast - TM171
  (910, 91000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 47),
  -- Crocalor - Curse - Egg
  (910, 91000, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Crocalor - Encore - Egg
  (910, 91000, 227, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Crocalor - Slack Off - Egg
  (910, 91000, 303, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Crocalor - Belch - Egg
  (910, 91000, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Skeledirge - Tackle - Level 1
  (911, 91100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skeledirge - Leer - Level 1
  (911, 91100, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skeledirge - Ember - Level 1
  (911, 91100, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skeledirge - Lick - Level 7
  (911, 91100, 122, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Skeledirge - Round - Level 10
  (911, 91100, 496, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Skeledirge - Scary Face - Level 12
  (911, 91100, 184, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Skeledirge - Bite - Level 15
  (911, 91100, 44, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Skeledirge - Incinerate - Level 17
  (911, 91100, 510, 23, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Skeledirge - Snarl - Level 24
  (911, 91100, 555, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Skeledirge - Roar - Level 28
  (911, 91100, 46, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Skeledirge - Flamethrower - Level 32
  (911, 91100, 53, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Skeledirge - Shadow Ball - Level 38
  (911, 91100, 247, 23, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Skeledirge - Hyper Voice - Level 42
  (911, 91100, 304, 23, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Skeledirge - Will-O-Wisp - Level 47
  (911, 91100, 261, 23, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Skeledirge - Hex - Level 47
  (911, 91100, 506, 23, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Skeledirge - Fire Blast - Level 58
  (911, 91100, 126, 23, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Skeledirge - Overheat - Level 64
  (911, 91100, 315, 23, NULL, 1, 64, NULL, NULL, NULL, 17),
  -- Skeledirge - Take Down - TM001
  (911, 91100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Skeledirge - Mud-Slap - TM005
  (911, 91100, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Skeledirge - Scary Face - TM006
  (911, 91100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Skeledirge - Protect - TM007
  (911, 91100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Skeledirge - Fire Fang - TM008
  (911, 91100, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 22),
  -- Skeledirge - Thunder Fang - TM009
  (911, 91100, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 23),
  -- Skeledirge - Disarming Voice - TM019
  (911, 91100, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 24),
  -- Skeledirge - Fire Spin - TM024
  (911, 91100, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 25),
  -- Skeledirge - Facade - TM025
  (911, 91100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Skeledirge - Hex - TM029
  (911, 91100, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 27),
  -- Skeledirge - Snarl - TM030
  (911, 91100, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 28),
  -- Skeledirge - Flame Charge - TM038
  (911, 91100, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 29),
  -- Skeledirge - Night Shade - TM042
  (911, 91100, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 30),
  -- Skeledirge - Endure - TM047
  (911, 91100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Skeledirge - Sunny Day - TM049
  (911, 91100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Skeledirge - Dig - TM055
  (911, 91100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Skeledirge - Zen Headbutt - TM059
  (911, 91100, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Skeledirge - Shadow Claw - TM061
  (911, 91100, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 35),
  -- Skeledirge - Body Slam - TM066
  (911, 91100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Skeledirge - Sleep Talk - TM070
  (911, 91100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Skeledirge - Seed Bomb - TM071
  (911, 91100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 38),
  -- Skeledirge - Stomping Tantrum - TM084
  (911, 91100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 39),
  -- Skeledirge - Rest - TM085
  (911, 91100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Skeledirge - Imprison - TM092
  (911, 91100, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 41),
  -- Skeledirge - Substitute - TM103
  (911, 91100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Skeledirge - Will-O-Wisp - TM107
  (911, 91100, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 43),
  -- Skeledirge - Crunch - TM108
  (911, 91100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 44),
  -- Skeledirge - Shadow Ball - TM114
  (911, 91100, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Skeledirge - Hyper Voice - TM117
  (911, 91100, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 46),
  -- Skeledirge - Heat Wave - TM118
  (911, 91100, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 47),
  -- Skeledirge - Encore - TM122
  (911, 91100, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 48),
  -- Skeledirge - Flamethrower - TM125
  (911, 91100, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 49),
  -- Skeledirge - Helping Hand - TM130
  (911, 91100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 50),
  -- Skeledirge - Earth Power - TM133
  (911, 91100, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 51),
  -- Skeledirge - Fire Blast - TM141
  (911, 91100, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 52),
  -- Skeledirge - Fire Pledge - TM144
  (911, 91100, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 53),
  -- Skeledirge - Earthquake - TM149
  (911, 91100, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 54),
  -- Skeledirge - Giga Impact - TM152
  (911, 91100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 55),
  -- Skeledirge - Blast Burn - TM153
  (911, 91100, 307, 23, NULL, 2, NULL, NULL, 23002153, NULL, 56),
  -- Skeledirge - Outrage - TM156
  (911, 91100, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 57),
  -- Skeledirge - Overheat - TM157
  (911, 91100, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 58),
  -- Skeledirge - Hyper Beam - TM163
  (911, 91100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 59),
  -- Skeledirge - Flare Blitz - TM165
  (911, 91100, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 60),
  -- Skeledirge - Solar Beam - TM168
  (911, 91100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 61),
  -- Skeledirge - Tera Blast - TM171
  (911, 91100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Skeledirge - Curse - Egg
  (911, 91100, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Skeledirge - Encore - Egg
  (911, 91100, 227, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Skeledirge - Slack Off - Egg
  (911, 91100, 303, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Skeledirge - Belch - Egg
  (911, 91100, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Skeledirge - Torch Song - Evolution
  (911, 91100, 871, 23, NULL, 7, NULL, NULL, NULL, NULL, 67),
  -- Skeledirge - Sing - Reminder
  (911, 91100, 47, 23, NULL, 9, NULL, NULL, NULL, NULL, 68),
  -- Skeledirge - Yawn - Reminder
  (911, 91100, 281, 23, NULL, 9, NULL, NULL, NULL, NULL, 69),
  -- Quaxly - Pound - Level 1
  (912, 91200, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quaxly - Growl - Level 1
  (912, 91200, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Quaxly - Water Gun - Level 1
  (912, 91200, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Quaxly - Work Up - Level 7
  (912, 91200, 526, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Quaxly - Wing Attack - Level 10
  (912, 91200, 17, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Quaxly - Aqua Jet - Level 13
  (912, 91200, 453, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Quaxly - Double Hit - Level 17
  (912, 91200, 458, 23, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Quaxly - Aqua Cutter - Level 21
  (912, 91200, 895, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Quaxly - Air Slash - Level 24
  (912, 91200, 403, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Quaxly - Focus Energy - Level 28
  (912, 91200, 116, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Quaxly - Acrobatics - Level 31
  (912, 91200, 512, 23, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Quaxly - Liquidation - Level 35
  (912, 91200, 710, 23, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Quaxly - Take Down - TM001
  (912, 91200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Quaxly - Protect - TM007
  (912, 91200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Quaxly - Low Kick - TM012
  (912, 91200, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 15),
  -- Quaxly - Acrobatics - TM014
  (912, 91200, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 16),
  -- Quaxly - Disarming Voice - TM019
  (912, 91200, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 17),
  -- Quaxly - Chilling Water - TM022
  (912, 91200, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 18),
  -- Quaxly - Facade - TM025
  (912, 91200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Quaxly - Aerial Ace - TM027
  (912, 91200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 20),
  -- Quaxly - Swift - TM032
  (912, 91200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Quaxly - Air Cutter - TM040
  (912, 91200, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 22),
  -- Quaxly - Endure - TM047
  (912, 91200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Quaxly - Rain Dance - TM050
  (912, 91200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 24),
  -- Quaxly - Air Slash - TM065
  (912, 91200, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 25),
  -- Quaxly - Sleep Talk - TM070
  (912, 91200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Quaxly - Rest - TM085
  (912, 91200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 27),
  -- Quaxly - Substitute - TM103
  (912, 91200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 28),
  -- Quaxly - Liquidation - TM110
  (912, 91200, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 29),
  -- Quaxly - Encore - TM122
  (912, 91200, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 30),
  -- Quaxly - Surf - TM123
  (912, 91200, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 31),
  -- Quaxly - Helping Hand - TM130
  (912, 91200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 32),
  -- Quaxly - Baton Pass - TM132
  (912, 91200, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 33),
  -- Quaxly - Misty Terrain - TM139
  (912, 91200, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 34),
  -- Quaxly - Hydro Pump - TM142
  (912, 91200, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 35),
  -- Quaxly - Water Pledge - TM145
  (912, 91200, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 36),
  -- Quaxly - Brave Bird - TM164
  (912, 91200, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 37),
  -- Quaxly - Tera Blast - TM171
  (912, 91200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 38),
  -- Quaxly - Detect - Egg
  (912, 91200, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Quaxly - Rapid Spin - Egg
  (912, 91200, 229, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Quaxly - Roost - Egg
  (912, 91200, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Quaxly - Last Resort - Egg
  (912, 91200, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Quaxwell - Pound - Level 1
  (913, 91300, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quaxwell - Growl - Level 1
  (913, 91300, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Quaxwell - Water Gun - Level 1
  (913, 91300, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Quaxwell - Double Hit - Level 1
  (913, 91300, 458, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Quaxwell - Work Up - Level 7
  (913, 91300, 526, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Quaxwell - Wing Attack - Level 10
  (913, 91300, 17, 23, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Quaxwell - Aqua Jet - Level 13
  (913, 91300, 453, 23, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Quaxwell - Water Pulse - Level 17
  (913, 91300, 352, 23, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Quaxwell - Low Sweep - Level 19
  (913, 91300, 490, 23, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Quaxwell - Aqua Cutter - Level 23
  (913, 91300, 895, 23, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Quaxwell - Air Slash - Level 27
  (913, 91300, 403, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Quaxwell - Focus Energy - Level 32
  (913, 91300, 116, 23, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Quaxwell - Acrobatics - Level 38
  (913, 91300, 512, 23, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Quaxwell - Liquidation - Level 43
  (913, 91300, 710, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Quaxwell - Feather Dance - Level 48
  (913, 91300, 297, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Quaxwell - Take Down - TM001
  (913, 91300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Quaxwell - Protect - TM007
  (913, 91300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Quaxwell - Water Pulse - TM011
  (913, 91300, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Quaxwell - Low Kick - TM012
  (913, 91300, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Quaxwell - Acrobatics - TM014
  (913, 91300, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Quaxwell - Disarming Voice - TM019
  (913, 91300, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 21),
  -- Quaxwell - Chilling Water - TM022
  (913, 91300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Quaxwell - Facade - TM025
  (913, 91300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Quaxwell - Aerial Ace - TM027
  (913, 91300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Quaxwell - Swift - TM032
  (913, 91300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Quaxwell - Low Sweep - TM039
  (913, 91300, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 26),
  -- Quaxwell - Air Cutter - TM040
  (913, 91300, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 27),
  -- Quaxwell - Endure - TM047
  (913, 91300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Quaxwell - Rain Dance - TM050
  (913, 91300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Quaxwell - Air Slash - TM065
  (913, 91300, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 30),
  -- Quaxwell - Sleep Talk - TM070
  (913, 91300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Quaxwell - Rest - TM085
  (913, 91300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Quaxwell - Substitute - TM103
  (913, 91300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Quaxwell - Liquidation - TM110
  (913, 91300, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 34),
  -- Quaxwell - Encore - TM122
  (913, 91300, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 35),
  -- Quaxwell - Surf - TM123
  (913, 91300, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 36),
  -- Quaxwell - Helping Hand - TM130
  (913, 91300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 37),
  -- Quaxwell - Baton Pass - TM132
  (913, 91300, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 38),
  -- Quaxwell - Misty Terrain - TM139
  (913, 91300, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 39),
  -- Quaxwell - Hydro Pump - TM142
  (913, 91300, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 40),
  -- Quaxwell - Water Pledge - TM145
  (913, 91300, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 41),
  -- Quaxwell - Brave Bird - TM164
  (913, 91300, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 42),
  -- Quaxwell - Tera Blast - TM171
  (913, 91300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Quaxwell - Detect - Egg
  (913, 91300, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Quaxwell - Rapid Spin - Egg
  (913, 91300, 229, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Quaxwell - Roost - Egg
  (913, 91300, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Quaxwell - Last Resort - Egg
  (913, 91300, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Quaquaval - Pound - Level 1
  (914, 91400, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quaquaval - Growl - Level 1
  (914, 91400, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Quaquaval - Water Gun - Level 1
  (914, 91400, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Quaquaval - Double Hit - Level 1
  (914, 91400, 458, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Quaquaval - Work Up - Level 7
  (914, 91400, 526, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Quaquaval - Wing Attack - Level 10
  (914, 91400, 17, 23, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Quaquaval - Aqua Jet - Level 13
  (914, 91400, 453, 23, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Quaquaval - Water Pulse - Level 17
  (914, 91400, 352, 23, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Quaquaval - Low Sweep - Level 17
  (914, 91400, 490, 23, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Quaquaval - Aqua Cutter - Level 21
  (914, 91400, 895, 23, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Quaquaval - Air Slash - Level 27
  (914, 91400, 403, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Quaquaval - Focus Energy - Level 32
  (914, 91400, 116, 23, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Quaquaval - Mega Kick - Level 38
  (914, 91400, 25, 23, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Quaquaval - Acrobatics - Level 43
  (914, 91400, 512, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Quaquaval - Liquidation - Level 47
  (914, 91400, 710, 23, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Quaquaval - Feather Dance - Level 52
  (914, 91400, 297, 23, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Quaquaval - Close Combat - Level 58
  (914, 91400, 370, 23, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Quaquaval - Wave Crash - Level 64
  (914, 91400, 834, 23, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Quaquaval - Take Down - TM001
  (914, 91400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Quaquaval - Agility - TM004
  (914, 91400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 20),
  -- Quaquaval - Protect - TM007
  (914, 91400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Quaquaval - Water Pulse - TM011
  (914, 91400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 22),
  -- Quaquaval - Low Kick - TM012
  (914, 91400, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 23),
  -- Quaquaval - Acrobatics - TM014
  (914, 91400, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 24),
  -- Quaquaval - Disarming Voice - TM019
  (914, 91400, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 25),
  -- Quaquaval - Chilling Water - TM022
  (914, 91400, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 26),
  -- Quaquaval - Facade - TM025
  (914, 91400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Quaquaval - Aerial Ace - TM027
  (914, 91400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 28),
  -- Quaquaval - Swift - TM032
  (914, 91400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Quaquaval - Icy Wind - TM034
  (914, 91400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 30),
  -- Quaquaval - Low Sweep - TM039
  (914, 91400, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 31),
  -- Quaquaval - Air Cutter - TM040
  (914, 91400, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 32),
  -- Quaquaval - Fling - TM043
  (914, 91400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 33),
  -- Quaquaval - Endure - TM047
  (914, 91400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Quaquaval - Rain Dance - TM050
  (914, 91400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 35),
  -- Quaquaval - Brick Break - TM058
  (914, 91400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Quaquaval - U-turn - TM060
  (914, 91400, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 37),
  -- Quaquaval - Bulk Up - TM064
  (914, 91400, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 38),
  -- Quaquaval - Air Slash - TM065
  (914, 91400, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 39),
  -- Quaquaval - Sleep Talk - TM070
  (914, 91400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Quaquaval - Rest - TM085
  (914, 91400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Quaquaval - Taunt - TM087
  (914, 91400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 42),
  -- Quaquaval - Swords Dance - TM088
  (914, 91400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 43),
  -- Quaquaval - Substitute - TM103
  (914, 91400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Quaquaval - Liquidation - TM110
  (914, 91400, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 45),
  -- Quaquaval - Encore - TM122
  (914, 91400, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 46),
  -- Quaquaval - Surf - TM123
  (914, 91400, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 47),
  -- Quaquaval - Ice Spinner - TM124
  (914, 91400, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 48),
  -- Quaquaval - Helping Hand - TM130
  (914, 91400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 49),
  -- Quaquaval - Baton Pass - TM132
  (914, 91400, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 50),
  -- Quaquaval - Reversal - TM134
  (914, 91400, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 51),
  -- Quaquaval - Misty Terrain - TM139
  (914, 91400, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 52),
  -- Quaquaval - Hydro Pump - TM142
  (914, 91400, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 53),
  -- Quaquaval - Water Pledge - TM145
  (914, 91400, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 54),
  -- Quaquaval - Giga Impact - TM152
  (914, 91400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 55),
  -- Quaquaval - Hydro Cannon - TM154
  (914, 91400, 308, 23, NULL, 2, NULL, NULL, 23002154, NULL, 56),
  -- Quaquaval - Hurricane - TM160
  (914, 91400, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 57),
  -- Quaquaval - Hyper Beam - TM163
  (914, 91400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 58),
  -- Quaquaval - Brave Bird - TM164
  (914, 91400, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 59),
  -- Quaquaval - Close Combat - TM167
  (914, 91400, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 60),
  -- Quaquaval - Tera Blast - TM171
  (914, 91400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 61),
  -- Quaquaval - Detect - Egg
  (914, 91400, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Quaquaval - Rapid Spin - Egg
  (914, 91400, 229, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Quaquaval - Roost - Egg
  (914, 91400, 355, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Quaquaval - Last Resort - Egg
  (914, 91400, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Quaquaval - Aqua Step - Evolution
  (914, 91400, 872, 23, NULL, 7, NULL, NULL, NULL, NULL, 66),
  -- Quaquaval - Counter - Reminder
  (914, 91400, 68, 23, NULL, 9, NULL, NULL, NULL, NULL, 67),
  -- Lechonk - Tackle - Level 1
  (915, 91500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lechonk - Tail Whip - Level 1
  (915, 91500, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lechonk - Disarming Voice - Level 5
  (915, 91500, 574, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Lechonk - Echoed Voice - Level 8
  (915, 91500, 497, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Lechonk - Mud Shot - Level 12
  (915, 91500, 341, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Lechonk - Covet - Level 15
  (915, 91500, 343, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Lechonk - Dig - Level 17
  (915, 91500, 91, 23, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Lechonk - Headbutt - Level 21
  (915, 91500, 29, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Lechonk - Yawn - Level 24
  (915, 91500, 281, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Lechonk - Take Down - Level 27
  (915, 91500, 36, 23, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Lechonk - Work Up - Level 30
  (915, 91500, 526, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Lechonk - Uproar - Level 32
  (915, 91500, 253, 23, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Lechonk - Double-Edge - Level 35
  (915, 91500, 38, 23, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Lechonk - Take Down - TM001
  (915, 91500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Lechonk - Mud-Slap - TM005
  (915, 91500, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Lechonk - Protect - TM007
  (915, 91500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Lechonk - Thief - TM018
  (915, 91500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Lechonk - Disarming Voice - TM019
  (915, 91500, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 18),
  -- Lechonk - Trailblaze - TM020
  (915, 91500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Lechonk - Chilling Water - TM022
  (915, 91500, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Lechonk - Facade - TM025
  (915, 91500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Lechonk - Bulldoze - TM028
  (915, 91500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Lechonk - Mud Shot - TM035
  (915, 91500, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Lechonk - Endure - TM047
  (915, 91500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Lechonk - Sunny Day - TM049
  (915, 91500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Lechonk - Rain Dance - TM050
  (915, 91500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Lechonk - Dig - TM055
  (915, 91500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Lechonk - Bullet Seed - TM056
  (915, 91500, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 28),
  -- Lechonk - Zen Headbutt - TM059
  (915, 91500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Lechonk - Body Slam - TM066
  (915, 91500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Lechonk - Sleep Talk - TM070
  (915, 91500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Lechonk - Seed Bomb - TM071
  (915, 91500, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 32),
  -- Lechonk - Rest - TM085
  (915, 91500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Lechonk - Iron Head - TM099
  (915, 91500, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 34),
  -- Lechonk - Substitute - TM103
  (915, 91500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Lechonk - Hyper Voice - TM117
  (915, 91500, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 36),
  -- Lechonk - Play Rough - TM127
  (915, 91500, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 37),
  -- Lechonk - Helping Hand - TM130
  (915, 91500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Lechonk - Tera Blast - TM171
  (915, 91500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 39),
  -- Lechonk - Stockpile - Egg
  (915, 91500, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Lechonk - Spit Up - Egg
  (915, 91500, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Lechonk - Swallow - Egg
  (915, 91500, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Lechonk - Endeavor - Egg
  (915, 91500, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Lechonk - Stuff Cheeks - Egg
  (915, 91500, 747, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Oinkologne - Tackle - Level 1
  (916, 91600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oinkologne - Tail Whip - Level 1
  (916, 91600, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Oinkologne - Disarming Voice - Level 3
  (916, 91600, 574, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Oinkologne - Disarming Voice - Level 5
  (916, 91600, 574, 23, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Oinkologne - Echoed Voice - Level 6
  (916, 91600, 497, 23, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Oinkologne - Echoed Voice - Level 8
  (916, 91600, 497, 23, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Oinkologne - Mud Shot - Level 9
  (916, 91600, 341, 23, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Oinkologne - Mud Shot - Level 12
  (916, 91600, 341, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Oinkologne - Covet - Level 12
  (916, 91600, 343, 23, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Oinkologne - Dig - Level 15
  (916, 91600, 91, 23, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Oinkologne - Covet - Level 15
  (916, 91600, 343, 23, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Oinkologne - Headbutt - Level 17
  (916, 91600, 29, 23, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Oinkologne - Dig - Level 17
  (916, 91600, 91, 23, NULL, 1, 17, NULL, NULL, NULL, 13),
  -- Oinkologne - Headbutt - Level 23
  (916, 91600, 29, 23, NULL, 1, 23, NULL, NULL, NULL, 14),
  -- Oinkologne - Yawn - Level 23
  (916, 91600, 281, 23, NULL, 1, 23, NULL, NULL, NULL, 15),
  -- Oinkologne - Take Down - Level 26
  (916, 91600, 36, 23, NULL, 1, 26, NULL, NULL, NULL, 16),
  -- Oinkologne - Yawn - Level 27
  (916, 91600, 281, 23, NULL, 1, 27, NULL, NULL, NULL, 17),
  -- Oinkologne - Take Down - Level 28
  (916, 91600, 36, 23, NULL, 1, 28, NULL, NULL, NULL, 18),
  -- Oinkologne - Work Up - Level 30
  (916, 91600, 526, 23, NULL, 1, 30, NULL, NULL, NULL, 19),
  -- Oinkologne - Uproar - Level 34
  (916, 91600, 253, 23, NULL, 1, 34, NULL, NULL, NULL, 20),
  -- Oinkologne - Work Up - Level 34
  (916, 91600, 526, 23, NULL, 1, 34, NULL, NULL, NULL, 21),
  -- Oinkologne - Uproar - Level 38
  (916, 91600, 253, 23, NULL, 1, 38, NULL, NULL, NULL, 22),
  -- Oinkologne - Double-Edge - Level 39
  (916, 91600, 38, 23, NULL, 1, 39, NULL, NULL, NULL, 23),
  -- Oinkologne - Double-Edge - Level 42
  (916, 91600, 38, 23, NULL, 1, 42, NULL, NULL, NULL, 24),
  -- Oinkologne - Earth Power - Level 45
  (916, 91600, 414, 23, NULL, 1, 45, NULL, NULL, NULL, 25),
  -- Oinkologne - Earth Power - Level 48
  (916, 91600, 414, 23, NULL, 1, 48, NULL, NULL, NULL, 26),
  -- Oinkologne - Belch - Level 51
  (916, 91600, 562, 23, NULL, 1, 51, NULL, NULL, NULL, 27),
  -- Oinkologne - Belch - Level 54
  (916, 91600, 562, 23, NULL, 1, 54, NULL, NULL, NULL, 28),
  -- Oinkologne - Take Down - TM001
  (916, 91600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 29),
  -- Oinkologne - Mud-Slap - TM005
  (916, 91600, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 30),
  -- Oinkologne - Protect - TM007
  (916, 91600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 31),
  -- Oinkologne - Thief - TM018
  (916, 91600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 32),
  -- Oinkologne - Disarming Voice - TM019
  (916, 91600, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 33),
  -- Oinkologne - Trailblaze - TM020
  (916, 91600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 34),
  -- Oinkologne - Chilling Water - TM022
  (916, 91600, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 35),
  -- Oinkologne - Facade - TM025
  (916, 91600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 36),
  -- Oinkologne - Bulldoze - TM028
  (916, 91600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 37),
  -- Oinkologne - Mud Shot - TM035
  (916, 91600, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 38),
  -- Oinkologne - Endure - TM047
  (916, 91600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 39),
  -- Oinkologne - Sunny Day - TM049
  (916, 91600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 40),
  -- Oinkologne - Rain Dance - TM050
  (916, 91600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 41),
  -- Oinkologne - Dig - TM055
  (916, 91600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 42),
  -- Oinkologne - Bullet Seed - TM056
  (916, 91600, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 43),
  -- Oinkologne - Zen Headbutt - TM059
  (916, 91600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 44),
  -- Oinkologne - Body Slam - TM066
  (916, 91600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 45),
  -- Oinkologne - Sleep Talk - TM070
  (916, 91600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 46),
  -- Oinkologne - Seed Bomb - TM071
  (916, 91600, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 47),
  -- Oinkologne - Stomping Tantrum - TM084
  (916, 91600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 48),
  -- Oinkologne - Rest - TM085
  (916, 91600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 49),
  -- Oinkologne - Body Press - TM089
  (916, 91600, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 50),
  -- Oinkologne - Iron Head - TM099
  (916, 91600, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 51),
  -- Oinkologne - Substitute - TM103
  (916, 91600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 52),
  -- Oinkologne - Hyper Voice - TM117
  (916, 91600, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 53),
  -- Oinkologne - Energy Ball - TM119
  (916, 91600, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 54),
  -- Oinkologne - Play Rough - TM127
  (916, 91600, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 55),
  -- Oinkologne - Helping Hand - TM130
  (916, 91600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 56),
  -- Oinkologne - Earth Power - TM133
  (916, 91600, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 57),
  -- Oinkologne - Giga Impact - TM152
  (916, 91600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 58),
  -- Oinkologne - Hyper Beam - TM163
  (916, 91600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 59),
  -- Oinkologne - Tera Blast - TM171
  (916, 91600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 60),
  -- Oinkologne - Stockpile - Egg
  (916, 91600, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Oinkologne - Spit Up - Egg
  (916, 91600, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Oinkologne - Swallow - Egg
  (916, 91600, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Oinkologne - Endeavor - Egg
  (916, 91600, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Oinkologne - Stuff Cheeks - Egg
  (916, 91600, 747, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Oinkologne (Female) - Tackle - Level 1
  (916, 91601, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oinkologne (Female) - Tail Whip - Level 1
  (916, 91601, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Oinkologne (Female) - Disarming Voice - Level 3
  (916, 91601, 574, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Oinkologne (Female) - Disarming Voice - Level 5
  (916, 91601, 574, 23, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Oinkologne (Female) - Echoed Voice - Level 6
  (916, 91601, 497, 23, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Oinkologne (Female) - Echoed Voice - Level 8
  (916, 91601, 497, 23, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Oinkologne (Female) - Mud Shot - Level 9
  (916, 91601, 341, 23, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Oinkologne (Female) - Mud Shot - Level 12
  (916, 91601, 341, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Oinkologne (Female) - Covet - Level 12
  (916, 91601, 343, 23, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Oinkologne (Female) - Dig - Level 15
  (916, 91601, 91, 23, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Oinkologne (Female) - Covet - Level 15
  (916, 91601, 343, 23, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Oinkologne (Female) - Headbutt - Level 17
  (916, 91601, 29, 23, NULL, 1, 17, NULL, NULL, NULL, 12),
  -- Oinkologne (Female) - Dig - Level 17
  (916, 91601, 91, 23, NULL, 1, 17, NULL, NULL, NULL, 13),
  -- Oinkologne (Female) - Headbutt - Level 23
  (916, 91601, 29, 23, NULL, 1, 23, NULL, NULL, NULL, 14),
  -- Oinkologne (Female) - Yawn - Level 23
  (916, 91601, 281, 23, NULL, 1, 23, NULL, NULL, NULL, 15),
  -- Oinkologne (Female) - Take Down - Level 26
  (916, 91601, 36, 23, NULL, 1, 26, NULL, NULL, NULL, 16),
  -- Oinkologne (Female) - Yawn - Level 27
  (916, 91601, 281, 23, NULL, 1, 27, NULL, NULL, NULL, 17),
  -- Oinkologne (Female) - Take Down - Level 28
  (916, 91601, 36, 23, NULL, 1, 28, NULL, NULL, NULL, 18),
  -- Oinkologne (Female) - Work Up - Level 30
  (916, 91601, 526, 23, NULL, 1, 30, NULL, NULL, NULL, 19),
  -- Oinkologne (Female) - Uproar - Level 34
  (916, 91601, 253, 23, NULL, 1, 34, NULL, NULL, NULL, 20),
  -- Oinkologne (Female) - Work Up - Level 34
  (916, 91601, 526, 23, NULL, 1, 34, NULL, NULL, NULL, 21),
  -- Oinkologne (Female) - Uproar - Level 38
  (916, 91601, 253, 23, NULL, 1, 38, NULL, NULL, NULL, 22),
  -- Oinkologne (Female) - Double-Edge - Level 39
  (916, 91601, 38, 23, NULL, 1, 39, NULL, NULL, NULL, 23),
  -- Oinkologne (Female) - Double-Edge - Level 42
  (916, 91601, 38, 23, NULL, 1, 42, NULL, NULL, NULL, 24),
  -- Oinkologne (Female) - Earth Power - Level 45
  (916, 91601, 414, 23, NULL, 1, 45, NULL, NULL, NULL, 25),
  -- Oinkologne (Female) - Earth Power - Level 48
  (916, 91601, 414, 23, NULL, 1, 48, NULL, NULL, NULL, 26),
  -- Oinkologne (Female) - Belch - Level 51
  (916, 91601, 562, 23, NULL, 1, 51, NULL, NULL, NULL, 27),
  -- Oinkologne (Female) - Belch - Level 54
  (916, 91601, 562, 23, NULL, 1, 54, NULL, NULL, NULL, 28),
  -- Oinkologne (Female) - Take Down - TM001
  (916, 91601, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 29),
  -- Oinkologne (Female) - Mud-Slap - TM005
  (916, 91601, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 30),
  -- Oinkologne (Female) - Protect - TM007
  (916, 91601, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 31),
  -- Oinkologne (Female) - Thief - TM018
  (916, 91601, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 32),
  -- Oinkologne (Female) - Disarming Voice - TM019
  (916, 91601, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 33),
  -- Oinkologne (Female) - Trailblaze - TM020
  (916, 91601, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 34),
  -- Oinkologne (Female) - Chilling Water - TM022
  (916, 91601, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 35),
  -- Oinkologne (Female) - Facade - TM025
  (916, 91601, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 36),
  -- Oinkologne (Female) - Bulldoze - TM028
  (916, 91601, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 37),
  -- Oinkologne (Female) - Mud Shot - TM035
  (916, 91601, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 38),
  -- Oinkologne (Female) - Endure - TM047
  (916, 91601, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 39),
  -- Oinkologne (Female) - Sunny Day - TM049
  (916, 91601, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 40),
  -- Oinkologne (Female) - Rain Dance - TM050
  (916, 91601, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 41),
  -- Oinkologne (Female) - Dig - TM055
  (916, 91601, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 42),
  -- Oinkologne (Female) - Bullet Seed - TM056
  (916, 91601, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 43),
  -- Oinkologne (Female) - Zen Headbutt - TM059
  (916, 91601, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 44),
  -- Oinkologne (Female) - Body Slam - TM066
  (916, 91601, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 45),
  -- Oinkologne (Female) - Sleep Talk - TM070
  (916, 91601, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 46),
  -- Oinkologne (Female) - Seed Bomb - TM071
  (916, 91601, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 47),
  -- Oinkologne (Female) - Stomping Tantrum - TM084
  (916, 91601, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 48),
  -- Oinkologne (Female) - Rest - TM085
  (916, 91601, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 49),
  -- Oinkologne (Female) - Body Press - TM089
  (916, 91601, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 50),
  -- Oinkologne (Female) - Iron Head - TM099
  (916, 91601, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 51),
  -- Oinkologne (Female) - Substitute - TM103
  (916, 91601, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 52),
  -- Oinkologne (Female) - Hyper Voice - TM117
  (916, 91601, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 53),
  -- Oinkologne (Female) - Energy Ball - TM119
  (916, 91601, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 54),
  -- Oinkologne (Female) - Play Rough - TM127
  (916, 91601, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 55),
  -- Oinkologne (Female) - Helping Hand - TM130
  (916, 91601, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 56),
  -- Oinkologne (Female) - Earth Power - TM133
  (916, 91601, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 57),
  -- Oinkologne (Female) - Giga Impact - TM152
  (916, 91601, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 58),
  -- Oinkologne (Female) - Hyper Beam - TM163
  (916, 91601, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 59),
  -- Oinkologne (Female) - Tera Blast - TM171
  (916, 91601, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 60),
  -- Oinkologne (Female) - Stockpile - Egg
  (916, 91601, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Oinkologne (Female) - Spit Up - Egg
  (916, 91601, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Oinkologne (Female) - Swallow - Egg
  (916, 91601, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Oinkologne (Female) - Endeavor - Egg
  (916, 91601, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Oinkologne (Female) - Stuff Cheeks - Egg
  (916, 91601, 747, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Tarountula - Tackle - Level 1
  (917, 91700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tarountula - String Shot - Level 1
  (917, 91700, 81, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tarountula - Struggle Bug - Level 5
  (917, 91700, 522, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tarountula - Assurance - Level 8
  (917, 91700, 372, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Tarountula - Feint - Level 11
  (917, 91700, 364, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Tarountula - Bug Bite - Level 14
  (917, 91700, 450, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Tarountula - Block - Level 18
  (917, 91700, 335, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Tarountula - Counter - Level 22
  (917, 91700, 68, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Tarountula - Headbutt - Level 25
  (917, 91700, 29, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Tarountula - Sticky Web - Level 29
  (917, 91700, 564, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Tarountula - Gastro Acid - Level 33
  (917, 91700, 380, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Tarountula - Circle Throw - Level 36
  (917, 91700, 509, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Tarountula - Throat Chop - Level 40
  (917, 91700, 675, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Tarountula - Skitter Smack - Level 44
  (917, 91700, 806, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Tarountula - Take Down - TM001
  (917, 91700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Tarountula - Protect - TM007
  (917, 91700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Tarountula - Struggle Bug - TM015
  (917, 91700, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 17),
  -- Tarountula - Thief - TM018
  (917, 91700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Tarountula - Trailblaze - TM020
  (917, 91700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Tarountula - Pounce - TM021
  (917, 91700, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 20),
  -- Tarountula - Facade - TM025
  (917, 91700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Tarountula - Endure - TM047
  (917, 91700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Tarountula - Sunny Day - TM049
  (917, 91700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Tarountula - Rain Dance - TM050
  (917, 91700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 24),
  -- Tarountula - Bullet Seed - TM056
  (917, 91700, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 25),
  -- Tarountula - False Swipe - TM057
  (917, 91700, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 26),
  -- Tarountula - Shadow Claw - TM061
  (917, 91700, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 27),
  -- Tarountula - Body Slam - TM066
  (917, 91700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Tarountula - Sleep Talk - TM070
  (917, 91700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Tarountula - Grass Knot - TM081
  (917, 91700, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 30),
  -- Tarountula - Poison Jab - TM083
  (917, 91700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 31),
  -- Tarountula - Rest - TM085
  (917, 91700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Tarountula - Spikes - TM090
  (917, 91700, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 33),
  -- Tarountula - Toxic Spikes - TM091
  (917, 91700, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 34),
  -- Tarountula - Leech Life - TM095
  (917, 91700, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 35),
  -- Tarountula - Substitute - TM103
  (917, 91700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Tarountula - X-Scissor - TM105
  (917, 91700, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 37),
  -- Tarountula - Giga Drain - TM111
  (917, 91700, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 38),
  -- Tarountula - Bug Buzz - TM162
  (917, 91700, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 39),
  -- Tarountula - Tera Blast - TM171
  (917, 91700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 40),
  -- Tarountula - Memento - Egg
  (917, 91700, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Tarountula - Sucker Punch - Egg
  (917, 91700, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Tarountula - First Impression - Egg
  (917, 91700, 660, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Tarountula - Lunge - Egg
  (917, 91700, 679, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Spidops - Tackle - Level 1
  (918, 91800, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spidops - String Shot - Level 1
  (918, 91800, 81, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spidops - Struggle Bug - Level 5
  (918, 91800, 522, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Spidops - Assurance - Level 8
  (918, 91800, 372, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Spidops - Feint - Level 11
  (918, 91800, 364, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Spidops - Bug Bite - Level 14
  (918, 91800, 450, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Spidops - Block - Level 19
  (918, 91800, 335, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Spidops - Counter - Level 24
  (918, 91800, 68, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Spidops - Headbutt - Level 28
  (918, 91800, 29, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Spidops - Sticky Web - Level 33
  (918, 91800, 564, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Spidops - Gastro Acid - Level 37
  (918, 91800, 380, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Spidops - Circle Throw - Level 41
  (918, 91800, 509, 23, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Spidops - Throat Chop - Level 45
  (918, 91800, 675, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Spidops - Skitter Smack - Level 49
  (918, 91800, 806, 23, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Spidops - Take Down - TM001
  (918, 91800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Spidops - Scary Face - TM006
  (918, 91800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Spidops - Protect - TM007
  (918, 91800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Spidops - Low Kick - TM012
  (918, 91800, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Spidops - Struggle Bug - TM015
  (918, 91800, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 19),
  -- Spidops - Thief - TM018
  (918, 91800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Spidops - Trailblaze - TM020
  (918, 91800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Spidops - Pounce - TM021
  (918, 91800, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 22),
  -- Spidops - Facade - TM025
  (918, 91800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Spidops - Aerial Ace - TM027
  (918, 91800, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Spidops - Rock Tomb - TM036
  (918, 91800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Spidops - Fling - TM043
  (918, 91800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Spidops - Endure - TM047
  (918, 91800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Spidops - Sunny Day - TM049
  (918, 91800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Spidops - Rain Dance - TM050
  (918, 91800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Spidops - Bullet Seed - TM056
  (918, 91800, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 30),
  -- Spidops - False Swipe - TM057
  (918, 91800, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 31),
  -- Spidops - Brick Break - TM058
  (918, 91800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Spidops - U-turn - TM060
  (918, 91800, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Spidops - Shadow Claw - TM061
  (918, 91800, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 34),
  -- Spidops - Body Slam - TM066
  (918, 91800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Spidops - Sleep Talk - TM070
  (918, 91800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Spidops - Grass Knot - TM081
  (918, 91800, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 37),
  -- Spidops - Poison Jab - TM083
  (918, 91800, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 38),
  -- Spidops - Rest - TM085
  (918, 91800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Spidops - Taunt - TM087
  (918, 91800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 40),
  -- Spidops - Spikes - TM090
  (918, 91800, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 41),
  -- Spidops - Toxic Spikes - TM091
  (918, 91800, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 42),
  -- Spidops - Leech Life - TM095
  (918, 91800, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 43),
  -- Spidops - Substitute - TM103
  (918, 91800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Spidops - X-Scissor - TM105
  (918, 91800, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 45),
  -- Spidops - Giga Drain - TM111
  (918, 91800, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 46),
  -- Spidops - Reversal - TM134
  (918, 91800, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 47),
  -- Spidops - Giga Impact - TM152
  (918, 91800, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 48),
  -- Spidops - Bug Buzz - TM162
  (918, 91800, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 49),
  -- Spidops - Tera Blast - TM171
  (918, 91800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Spidops - Memento - Egg
  (918, 91800, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spidops - Sucker Punch - Egg
  (918, 91800, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Spidops - First Impression - Egg
  (918, 91800, 660, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Spidops - Lunge - Egg
  (918, 91800, 679, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Spidops - Silk Trap - Evolution
  (918, 91800, 852, 23, NULL, 7, NULL, NULL, NULL, NULL, 55),
  -- Nymble - Tackle - Level 1
  (919, 91900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nymble - Leer - Level 1
  (919, 91900, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nymble - Struggle Bug - Level 4
  (919, 91900, 522, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Nymble - Astonish - Level 6
  (919, 91900, 310, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Nymble - Assurance - Level 9
  (919, 91900, 372, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Nymble - Double Kick - Level 11
  (919, 91900, 24, 23, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Nymble - Screech - Level 14
  (919, 91900, 103, 23, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Nymble - Endure - Level 18
  (919, 91900, 203, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Nymble - Bug Bite - Level 22
  (919, 91900, 450, 23, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Nymble - Feint - Level 26
  (919, 91900, 364, 23, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Nymble - Agility - Level 30
  (919, 91900, 97, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Nymble - Sucker Punch - Level 38
  (919, 91900, 389, 23, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Nymble - First Impression - Level 41
  (919, 91900, 660, 23, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Nymble - Take Down - TM001
  (919, 91900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Nymble - Agility - TM004
  (919, 91900, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Nymble - Protect - TM007
  (919, 91900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Nymble - Struggle Bug - TM015
  (919, 91900, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 17),
  -- Nymble - Thief - TM018
  (919, 91900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Nymble - Trailblaze - TM020
  (919, 91900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Nymble - Pounce - TM021
  (919, 91900, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 20),
  -- Nymble - Facade - TM025
  (919, 91900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Nymble - Endure - TM047
  (919, 91900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Nymble - Sunny Day - TM049
  (919, 91900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Nymble - Rain Dance - TM050
  (919, 91900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 24),
  -- Nymble - U-turn - TM060
  (919, 91900, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 25),
  -- Nymble - Sleep Talk - TM070
  (919, 91900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Nymble - Rest - TM085
  (919, 91900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 27),
  -- Nymble - Leech Life - TM095
  (919, 91900, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 28),
  -- Nymble - Substitute - TM103
  (919, 91900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 29),
  -- Nymble - X-Scissor - TM105
  (919, 91900, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 30),
  -- Nymble - Bug Buzz - TM162
  (919, 91900, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 31),
  -- Nymble - Tera Blast - TM171
  (919, 91900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 32),
  -- Nymble - Counter - Egg
  (919, 91900, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Nymble - Skitter Smack - Egg
  (919, 91900, 806, 23, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Lokix - Tackle - Level 1
  (920, 92000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lokix - Leer - Level 1
  (920, 92000, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lokix - Low Kick - Level 1
  (920, 92000, 67, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lokix - Detect - Level 1
  (920, 92000, 197, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lokix - Struggle Bug - Level 4
  (920, 92000, 522, 23, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Lokix - Astonish - Level 6
  (920, 92000, 310, 23, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Lokix - Assurance - Level 9
  (920, 92000, 372, 23, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Lokix - Double Kick - Level 11
  (920, 92000, 24, 23, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Lokix - Screech - Level 14
  (920, 92000, 103, 23, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Lokix - Endure - Level 18
  (920, 92000, 203, 23, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Lokix - Bug Bite - Level 22
  (920, 92000, 450, 23, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Lokix - Feint - Level 28
  (920, 92000, 364, 23, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Lokix - Agility - Level 32
  (920, 92000, 97, 23, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Lokix - Throat Chop - Level 36
  (920, 92000, 675, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Lokix - Sucker Punch - Level 40
  (920, 92000, 389, 23, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Lokix - First Impression - Level 44
  (920, 92000, 660, 23, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Lokix - Bounce - Level 48
  (920, 92000, 340, 23, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Lokix - Axe Kick - Level 53
  (920, 92000, 853, 23, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Lokix - Take Down - TM001
  (920, 92000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Lokix - Agility - TM004
  (920, 92000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 20),
  -- Lokix - Scary Face - TM006
  (920, 92000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 21),
  -- Lokix - Protect - TM007
  (920, 92000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Lokix - Low Kick - TM012
  (920, 92000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 23),
  -- Lokix - Struggle Bug - TM015
  (920, 92000, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 24),
  -- Lokix - Thief - TM018
  (920, 92000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Lokix - Trailblaze - TM020
  (920, 92000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 26),
  -- Lokix - Pounce - TM021
  (920, 92000, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 27),
  -- Lokix - Facade - TM025
  (920, 92000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 28),
  -- Lokix - Aerial Ace - TM027
  (920, 92000, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 29),
  -- Lokix - Low Sweep - TM039
  (920, 92000, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 30),
  -- Lokix - Fling - TM043
  (920, 92000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Lokix - Endure - TM047
  (920, 92000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Lokix - Sunny Day - TM049
  (920, 92000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Lokix - Rain Dance - TM050
  (920, 92000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Lokix - Brick Break - TM058
  (920, 92000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Lokix - U-turn - TM060
  (920, 92000, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 36),
  -- Lokix - Sleep Talk - TM070
  (920, 92000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Lokix - Rest - TM085
  (920, 92000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Lokix - Taunt - TM087
  (920, 92000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Lokix - Swords Dance - TM088
  (920, 92000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 40),
  -- Lokix - Dark Pulse - TM094
  (920, 92000, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 41),
  -- Lokix - Leech Life - TM095
  (920, 92000, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 42),
  -- Lokix - Substitute - TM103
  (920, 92000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Lokix - X-Scissor - TM105
  (920, 92000, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 44),
  -- Lokix - Reversal - TM134
  (920, 92000, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 45),
  -- Lokix - Giga Impact - TM152
  (920, 92000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Lokix - Bug Buzz - TM162
  (920, 92000, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 47),
  -- Lokix - Tera Blast - TM171
  (920, 92000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Lokix - Counter - Egg
  (920, 92000, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lokix - Skitter Smack - Egg
  (920, 92000, 806, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lokix - Lunge - Evolution
  (920, 92000, 679, 23, NULL, 7, NULL, NULL, NULL, NULL, 51),
  -- Pawmi - Scratch - Level 1
  (921, 92100, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pawmi - Growl - Level 1
  (921, 92100, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pawmi - Thunder Shock - Level 3
  (921, 92100, 84, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Pawmi - Quick Attack - Level 6
  (921, 92100, 98, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Pawmi - Charge - Level 8
  (921, 92100, 268, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Pawmi - Nuzzle - Level 12
  (921, 92100, 609, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Pawmi - Dig - Level 15
  (921, 92100, 91, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Pawmi - Bite - Level 19
  (921, 92100, 44, 23, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Pawmi - Spark - Level 23
  (921, 92100, 209, 23, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Pawmi - Thunder Wave - Level 27
  (921, 92100, 86, 23, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Pawmi - Entrainment - Level 31
  (921, 92100, 494, 23, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Pawmi - Slam - Level 35
  (921, 92100, 21, 23, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Pawmi - Discharge - Level 38
  (921, 92100, 435, 23, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Pawmi - Agility - Level 40
  (921, 92100, 97, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Pawmi - Wild Charge - Level 44
  (921, 92100, 528, 23, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Pawmi - Take Down - TM001
  (921, 92100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Pawmi - Charm - TM002
  (921, 92100, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Pawmi - Agility - TM004
  (921, 92100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Pawmi - Protect - TM007
  (921, 92100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Pawmi - Thunder Fang - TM009
  (921, 92100, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 20),
  -- Pawmi - Thief - TM018
  (921, 92100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Pawmi - Charge Beam - TM023
  (921, 92100, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 22),
  -- Pawmi - Facade - TM025
  (921, 92100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Pawmi - Metal Claw - TM031
  (921, 92100, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 24),
  -- Pawmi - Swift - TM032
  (921, 92100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Pawmi - Fling - TM043
  (921, 92100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Pawmi - Endure - TM047
  (921, 92100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Pawmi - Volt Switch - TM048
  (921, 92100, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 28),
  -- Pawmi - Sunny Day - TM049
  (921, 92100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Pawmi - Rain Dance - TM050
  (921, 92100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Pawmi - Dig - TM055
  (921, 92100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Pawmi - Sleep Talk - TM070
  (921, 92100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Pawmi - Electro Ball - TM072
  (921, 92100, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 33),
  -- Pawmi - Thunder Wave - TM082
  (921, 92100, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 34),
  -- Pawmi - Rest - TM085
  (921, 92100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Pawmi - Eerie Impulse - TM096
  (921, 92100, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 36),
  -- Pawmi - Substitute - TM103
  (921, 92100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Pawmi - Crunch - TM108
  (921, 92100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 38),
  -- Pawmi - Encore - TM122
  (921, 92100, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 39),
  -- Pawmi - Thunderbolt - TM126
  (921, 92100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 40),
  -- Pawmi - Play Rough - TM127
  (921, 92100, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 41),
  -- Pawmi - Helping Hand - TM130
  (921, 92100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Pawmi - Baton Pass - TM132
  (921, 92100, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 43),
  -- Pawmi - Electric Terrain - TM136
  (921, 92100, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 44),
  -- Pawmi - Wild Charge - TM147
  (921, 92100, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 45),
  -- Pawmi - Thunder - TM166
  (921, 92100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 46),
  -- Pawmi - Tera Blast - TM171
  (921, 92100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 47),
  -- Pawmi - Mach Punch - Egg
  (921, 92100, 183, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Pawmi - Sweet Kiss - Egg
  (921, 92100, 186, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Pawmi - Fake Out - Egg
  (921, 92100, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Pawmi - Wish - Egg
  (921, 92100, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pawmo - Scratch - Level 1
  (922, 92200, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pawmo - Growl - Level 1
  (922, 92200, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pawmo - Thunder Shock - Level 3
  (922, 92200, 84, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Pawmo - Quick Attack - Level 6
  (922, 92200, 98, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Pawmo - Charge - Level 8
  (922, 92200, 268, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Pawmo - Nuzzle - Level 12
  (922, 92200, 609, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Pawmo - Dig - Level 15
  (922, 92200, 91, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Pawmo - Bite - Level 19
  (922, 92200, 44, 23, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Pawmo - Spark - Level 23
  (922, 92200, 209, 23, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Pawmo - Thunder Wave - Level 27
  (922, 92200, 86, 23, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Pawmo - Slam - Level 32
  (922, 92200, 21, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Pawmo - Entrainment - Level 38
  (922, 92200, 494, 23, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Pawmo - Discharge - Level 42
  (922, 92200, 435, 23, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Pawmo - Agility - Level 46
  (922, 92200, 97, 23, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Pawmo - Wild Charge - Level 52
  (922, 92200, 528, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Pawmo - Take Down - TM001
  (922, 92200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Pawmo - Charm - TM002
  (922, 92200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Pawmo - Agility - TM004
  (922, 92200, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Pawmo - Protect - TM007
  (922, 92200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Pawmo - Thunder Fang - TM009
  (922, 92200, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 20),
  -- Pawmo - Low Kick - TM012
  (922, 92200, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Pawmo - Thief - TM018
  (922, 92200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Pawmo - Charge Beam - TM023
  (922, 92200, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 23),
  -- Pawmo - Facade - TM025
  (922, 92200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Pawmo - Metal Claw - TM031
  (922, 92200, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 25),
  -- Pawmo - Swift - TM032
  (922, 92200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Pawmo - Low Sweep - TM039
  (922, 92200, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 27),
  -- Pawmo - Fling - TM043
  (922, 92200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Pawmo - Endure - TM047
  (922, 92200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Pawmo - Volt Switch - TM048
  (922, 92200, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 30),
  -- Pawmo - Sunny Day - TM049
  (922, 92200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Pawmo - Rain Dance - TM050
  (922, 92200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Pawmo - Dig - TM055
  (922, 92200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Pawmo - Thunder Punch - TM068
  (922, 92200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 34),
  -- Pawmo - Sleep Talk - TM070
  (922, 92200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Pawmo - Electro Ball - TM072
  (922, 92200, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 36),
  -- Pawmo - Thunder Wave - TM082
  (922, 92200, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 37),
  -- Pawmo - Rest - TM085
  (922, 92200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Pawmo - Eerie Impulse - TM096
  (922, 92200, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 39),
  -- Pawmo - Substitute - TM103
  (922, 92200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Pawmo - Crunch - TM108
  (922, 92200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 41),
  -- Pawmo - Encore - TM122
  (922, 92200, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 42),
  -- Pawmo - Thunderbolt - TM126
  (922, 92200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 43),
  -- Pawmo - Play Rough - TM127
  (922, 92200, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 44),
  -- Pawmo - Helping Hand - TM130
  (922, 92200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 45),
  -- Pawmo - Baton Pass - TM132
  (922, 92200, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 46),
  -- Pawmo - Electric Terrain - TM136
  (922, 92200, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 47),
  -- Pawmo - Wild Charge - TM147
  (922, 92200, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 48),
  -- Pawmo - Thunder - TM166
  (922, 92200, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 49),
  -- Pawmo - Tera Blast - TM171
  (922, 92200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Pawmo - Mach Punch - Egg
  (922, 92200, 183, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pawmo - Sweet Kiss - Egg
  (922, 92200, 186, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pawmo - Fake Out - Egg
  (922, 92200, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pawmo - Wish - Egg
  (922, 92200, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pawmo - Arm Thrust - Evolution
  (922, 92200, 292, 23, NULL, 7, NULL, NULL, NULL, NULL, 55),
  -- Pawmot - Scratch - Level 1
  (923, 92300, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pawmot - Growl - Level 1
  (923, 92300, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pawmot - Wild Charge - Level 1
  (923, 92300, 528, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pawmot - Thunder Shock - Level 3
  (923, 92300, 84, 23, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Pawmot - Quick Attack - Level 6
  (923, 92300, 98, 23, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Pawmot - Charge - Level 8
  (923, 92300, 268, 23, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Pawmot - Nuzzle - Level 12
  (923, 92300, 609, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Pawmot - Dig - Level 15
  (923, 92300, 91, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Pawmot - Bite - Level 19
  (923, 92300, 44, 23, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Pawmot - Spark - Level 23
  (923, 92300, 209, 23, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Pawmot - Arm Thrust - Level 25
  (923, 92300, 292, 23, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Pawmot - Thunder Wave - Level 29
  (923, 92300, 86, 23, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Pawmot - Slam - Level 33
  (923, 92300, 21, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Pawmot - Entrainment - Level 39
  (923, 92300, 494, 23, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Pawmot - Close Combat - Level 44
  (923, 92300, 370, 23, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Pawmot - Discharge - Level 49
  (923, 92300, 435, 23, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Pawmot - Agility - Level 54
  (923, 92300, 97, 23, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Pawmot - Double Shock - Level 60
  (923, 92300, 892, 23, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Pawmot - Take Down - TM001
  (923, 92300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Pawmot - Charm - TM002
  (923, 92300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 20),
  -- Pawmot - Agility - TM004
  (923, 92300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 21),
  -- Pawmot - Protect - TM007
  (923, 92300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Pawmot - Thunder Fang - TM009
  (923, 92300, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 23),
  -- Pawmot - Low Kick - TM012
  (923, 92300, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 24),
  -- Pawmot - Thief - TM018
  (923, 92300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Pawmot - Charge Beam - TM023
  (923, 92300, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 26),
  -- Pawmot - Facade - TM025
  (923, 92300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Pawmot - Metal Claw - TM031
  (923, 92300, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 28),
  -- Pawmot - Swift - TM032
  (923, 92300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Pawmot - Rock Tomb - TM036
  (923, 92300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 30),
  -- Pawmot - Low Sweep - TM039
  (923, 92300, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 31),
  -- Pawmot - Fling - TM043
  (923, 92300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 32),
  -- Pawmot - Endure - TM047
  (923, 92300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 33),
  -- Pawmot - Volt Switch - TM048
  (923, 92300, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 34),
  -- Pawmot - Sunny Day - TM049
  (923, 92300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 35),
  -- Pawmot - Rain Dance - TM050
  (923, 92300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 36),
  -- Pawmot - Dig - TM055
  (923, 92300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 37),
  -- Pawmot - Brick Break - TM058
  (923, 92300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 38),
  -- Pawmot - Bulk Up - TM064
  (923, 92300, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 39),
  -- Pawmot - Fire Punch - TM067
  (923, 92300, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 40),
  -- Pawmot - Thunder Punch - TM068
  (923, 92300, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 41),
  -- Pawmot - Ice Punch - TM069
  (923, 92300, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 42),
  -- Pawmot - Sleep Talk - TM070
  (923, 92300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Pawmot - Seed Bomb - TM071
  (923, 92300, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 44),
  -- Pawmot - Electro Ball - TM072
  (923, 92300, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 45),
  -- Pawmot - Metronome - TM080
  (923, 92300, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 46),
  -- Pawmot - Grass Knot - TM081
  (923, 92300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 47),
  -- Pawmot - Thunder Wave - TM082
  (923, 92300, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 48),
  -- Pawmot - Rest - TM085
  (923, 92300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 49),
  -- Pawmot - Body Press - TM089
  (923, 92300, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 50),
  -- Pawmot - Eerie Impulse - TM096
  (923, 92300, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 51),
  -- Pawmot - Substitute - TM103
  (923, 92300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 52),
  -- Pawmot - Crunch - TM108
  (923, 92300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 53),
  -- Pawmot - Encore - TM122
  (923, 92300, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 54),
  -- Pawmot - Thunderbolt - TM126
  (923, 92300, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 55),
  -- Pawmot - Play Rough - TM127
  (923, 92300, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 56),
  -- Pawmot - Helping Hand - TM130
  (923, 92300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 57),
  -- Pawmot - Baton Pass - TM132
  (923, 92300, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 58),
  -- Pawmot - Electric Terrain - TM136
  (923, 92300, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 59),
  -- Pawmot - Wild Charge - TM147
  (923, 92300, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 60),
  -- Pawmot - Giga Impact - TM152
  (923, 92300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 61),
  -- Pawmot - Focus Blast - TM158
  (923, 92300, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 62),
  -- Pawmot - Hyper Beam - TM163
  (923, 92300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 63),
  -- Pawmot - Thunder - TM166
  (923, 92300, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 64),
  -- Pawmot - Close Combat - TM167
  (923, 92300, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 65),
  -- Pawmot - Tera Blast - TM171
  (923, 92300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 66),
  -- Pawmot - Mach Punch - Egg
  (923, 92300, 183, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Pawmot - Sweet Kiss - Egg
  (923, 92300, 186, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Pawmot - Fake Out - Egg
  (923, 92300, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Pawmot - Wish - Egg
  (923, 92300, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Pawmot - Revival Blessing - Evolution
  (923, 92300, 863, 23, NULL, 7, NULL, NULL, NULL, NULL, 71),
  -- Tandemaus - Pound - Level 1
  (924, 92400, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tandemaus - Baby-Doll Eyes - Level 1
  (924, 92400, 608, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tandemaus - Echoed Voice - Level 5
  (924, 92400, 497, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tandemaus - Helping Hand - Level 8
  (924, 92400, 270, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Tandemaus - Super Fang - Level 11
  (924, 92400, 162, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Tandemaus - Double Hit - Level 14
  (924, 92400, 458, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Tandemaus - Bullet Seed - Level 18
  (924, 92400, 331, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Tandemaus - Encore - Level 22
  (924, 92400, 227, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Tandemaus - Play Rough - Level 26
  (924, 92400, 583, 23, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Tandemaus - Hyper Voice - Level 30
  (924, 92400, 304, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Tandemaus - Charm - Level 33
  (924, 92400, 204, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Tandemaus - Beat Up - Level 37
  (924, 92400, 251, 23, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Tandemaus - Copycat - Level 41
  (924, 92400, 383, 23, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Tandemaus - Population Bomb - Level 46
  (924, 92400, 860, 23, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Tandemaus - Take Down - TM001
  (924, 92400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Tandemaus - Charm - TM002
  (924, 92400, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Tandemaus - Fake Tears - TM003
  (924, 92400, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 17),
  -- Tandemaus - Agility - TM004
  (924, 92400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Tandemaus - Mud-Slap - TM005
  (924, 92400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Tandemaus - Protect - TM007
  (924, 92400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Tandemaus - Water Pulse - TM011
  (924, 92400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 21),
  -- Tandemaus - Low Kick - TM012
  (924, 92400, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 22),
  -- Tandemaus - Thief - TM018
  (924, 92400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Tandemaus - Facade - TM025
  (924, 92400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Tandemaus - Aerial Ace - TM027
  (924, 92400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Tandemaus - Swift - TM032
  (924, 92400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Tandemaus - Mud Shot - TM035
  (924, 92400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Tandemaus - Low Sweep - TM039
  (924, 92400, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 28),
  -- Tandemaus - Endure - TM047
  (924, 92400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Tandemaus - Sunny Day - TM049
  (924, 92400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Tandemaus - Rain Dance - TM050
  (924, 92400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Tandemaus - Dig - TM055
  (924, 92400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Tandemaus - Bullet Seed - TM056
  (924, 92400, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 33),
  -- Tandemaus - U-turn - TM060
  (924, 92400, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 34),
  -- Tandemaus - Shadow Claw - TM061
  (924, 92400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 35),
  -- Tandemaus - Sleep Talk - TM070
  (924, 92400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Tandemaus - Seed Bomb - TM071
  (924, 92400, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 37),
  -- Tandemaus - Grass Knot - TM081
  (924, 92400, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 38),
  -- Tandemaus - Thunder Wave - TM082
  (924, 92400, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 39),
  -- Tandemaus - Rest - TM085
  (924, 92400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Tandemaus - Taunt - TM087
  (924, 92400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Tandemaus - Substitute - TM103
  (924, 92400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Tandemaus - Crunch - TM108
  (924, 92400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 43),
  -- Tandemaus - Hyper Voice - TM117
  (924, 92400, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 44),
  -- Tandemaus - Encore - TM122
  (924, 92400, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 45),
  -- Tandemaus - Play Rough - TM127
  (924, 92400, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 46),
  -- Tandemaus - Helping Hand - TM130
  (924, 92400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Tandemaus - Baton Pass - TM132
  (924, 92400, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 48),
  -- Tandemaus - Tera Blast - TM171
  (924, 92400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Tandemaus - Bite - Egg
  (924, 92400, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tandemaus - Baton Pass - Egg
  (924, 92400, 226, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tandemaus - Tickle - Egg
  (924, 92400, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tandemaus - Feint - Egg
  (924, 92400, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tandemaus - Switcheroo - Egg
  (924, 92400, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tandemaus - After You - Egg
  (924, 92400, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Maushold - Pound - Level 1
  (925, 92500, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Maushold - Follow Me - Level 1
  (925, 92500, 266, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Maushold - Baby-Doll Eyes - Level 1
  (925, 92500, 608, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Maushold - Tidy Up - Level 1
  (925, 92500, 882, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Maushold - Echoed Voice - Level 5
  (925, 92500, 497, 23, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Maushold - Helping Hand - Level 8
  (925, 92500, 270, 23, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Maushold - Super Fang - Level 11
  (925, 92500, 162, 23, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Maushold - Double Hit - Level 14
  (925, 92500, 458, 23, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Maushold - Bullet Seed - Level 18
  (925, 92500, 331, 23, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Maushold - Encore - Level 22
  (925, 92500, 227, 23, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Maushold - Play Rough - Level 29
  (925, 92500, 583, 23, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Maushold - Hyper Voice - Level 33
  (925, 92500, 304, 23, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Maushold - Charm - Level 37
  (925, 92500, 204, 23, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Maushold - Beat Up - Level 41
  (925, 92500, 251, 23, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Maushold - Copycat - Level 46
  (925, 92500, 383, 23, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Maushold - Population Bomb - Level 53
  (925, 92500, 860, 23, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Maushold - Take Down - TM001
  (925, 92500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Maushold - Charm - TM002
  (925, 92500, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 18),
  -- Maushold - Fake Tears - TM003
  (925, 92500, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 19),
  -- Maushold - Agility - TM004
  (925, 92500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 20),
  -- Maushold - Mud-Slap - TM005
  (925, 92500, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 21),
  -- Maushold - Protect - TM007
  (925, 92500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Maushold - Water Pulse - TM011
  (925, 92500, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 23),
  -- Maushold - Low Kick - TM012
  (925, 92500, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 24),
  -- Maushold - Thief - TM018
  (925, 92500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Maushold - Trailblaze - TM020
  (925, 92500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 26),
  -- Maushold - Chilling Water - TM022
  (925, 92500, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 27),
  -- Maushold - Facade - TM025
  (925, 92500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 28),
  -- Maushold - Aerial Ace - TM027
  (925, 92500, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 29),
  -- Maushold - Swift - TM032
  (925, 92500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 30),
  -- Maushold - Mud Shot - TM035
  (925, 92500, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 31),
  -- Maushold - Low Sweep - TM039
  (925, 92500, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 32),
  -- Maushold - Endure - TM047
  (925, 92500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 33),
  -- Maushold - Sunny Day - TM049
  (925, 92500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 34),
  -- Maushold - Rain Dance - TM050
  (925, 92500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 35),
  -- Maushold - Dig - TM055
  (925, 92500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 36),
  -- Maushold - Bullet Seed - TM056
  (925, 92500, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 37),
  -- Maushold - U-turn - TM060
  (925, 92500, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 38),
  -- Maushold - Shadow Claw - TM061
  (925, 92500, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 39),
  -- Maushold - Sleep Talk - TM070
  (925, 92500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Maushold - Seed Bomb - TM071
  (925, 92500, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 41),
  -- Maushold - Grass Knot - TM081
  (925, 92500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 42),
  -- Maushold - Thunder Wave - TM082
  (925, 92500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 43),
  -- Maushold - Rest - TM085
  (925, 92500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Maushold - Taunt - TM087
  (925, 92500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 45),
  -- Maushold - Substitute - TM103
  (925, 92500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Maushold - Crunch - TM108
  (925, 92500, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 47),
  -- Maushold - Hyper Voice - TM117
  (925, 92500, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 48),
  -- Maushold - Encore - TM122
  (925, 92500, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 49),
  -- Maushold - Play Rough - TM127
  (925, 92500, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 50),
  -- Maushold - Helping Hand - TM130
  (925, 92500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 51),
  -- Maushold - Baton Pass - TM132
  (925, 92500, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 52),
  -- Maushold - Giga Impact - TM152
  (925, 92500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Maushold - Hyper Beam - TM163
  (925, 92500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Maushold - Tera Blast - TM171
  (925, 92500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Maushold - Bite - Egg
  (925, 92500, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Maushold - Baton Pass - Egg
  (925, 92500, 226, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Maushold - Tickle - Egg
  (925, 92500, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Maushold - Feint - Egg
  (925, 92500, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Maushold - Switcheroo - Egg
  (925, 92500, 415, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Maushold - After You - Egg
  (925, 92500, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Fidough - Tackle - Level 1
  (926, 92600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fidough - Growl - Level 1
  (926, 92600, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fidough - Lick - Level 3
  (926, 92600, 122, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Fidough - Tail Whip - Level 6
  (926, 92600, 39, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Fidough - Covet - Level 8
  (926, 92600, 343, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Fidough - Bite - Level 11
  (926, 92600, 44, 23, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Fidough - Baby-Doll Eyes - Level 15
  (926, 92600, 608, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Fidough - Play Rough - Level 18
  (926, 92600, 583, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Fidough - Work Up - Level 22
  (926, 92600, 526, 23, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Fidough - Baton Pass - Level 26
  (926, 92600, 226, 23, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Fidough - Roar - Level 30
  (926, 92600, 46, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Fidough - Double-Edge - Level 33
  (926, 92600, 38, 23, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Fidough - Charm - Level 36
  (926, 92600, 204, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Fidough - Crunch - Level 40
  (926, 92600, 242, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Fidough - Last Resort - Level 45
  (926, 92600, 387, 23, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Fidough - Take Down - TM001
  (926, 92600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Fidough - Charm - TM002
  (926, 92600, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Fidough - Agility - TM004
  (926, 92600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Fidough - Mud-Slap - TM005
  (926, 92600, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Fidough - Protect - TM007
  (926, 92600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Fidough - Fire Fang - TM008
  (926, 92600, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 21),
  -- Fidough - Thunder Fang - TM009
  (926, 92600, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 22),
  -- Fidough - Ice Fang - TM010
  (926, 92600, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 23),
  -- Fidough - Trailblaze - TM020
  (926, 92600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Fidough - Facade - TM025
  (926, 92600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Fidough - Snarl - TM030
  (926, 92600, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 26),
  -- Fidough - Mud Shot - TM035
  (926, 92600, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Fidough - Endure - TM047
  (926, 92600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Fidough - Sunny Day - TM049
  (926, 92600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Fidough - Rain Dance - TM050
  (926, 92600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Fidough - Dig - TM055
  (926, 92600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Fidough - Psychic Fangs - TM063
  (926, 92600, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 32),
  -- Fidough - Body Slam - TM066
  (926, 92600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Fidough - Sleep Talk - TM070
  (926, 92600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Fidough - Dazzling Gleam - TM079
  (926, 92600, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 35),
  -- Fidough - Stomping Tantrum - TM084
  (926, 92600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 36),
  -- Fidough - Rest - TM085
  (926, 92600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Fidough - Substitute - TM103
  (926, 92600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Fidough - Crunch - TM108
  (926, 92600, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 39),
  -- Fidough - Play Rough - TM127
  (926, 92600, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 40),
  -- Fidough - Helping Hand - TM130
  (926, 92600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Fidough - Baton Pass - TM132
  (926, 92600, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 42),
  -- Fidough - Misty Terrain - TM139
  (926, 92600, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 43),
  -- Fidough - Tera Blast - TM171
  (926, 92600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Fidough - Sweet Scent - Egg
  (926, 92600, 230, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Fidough - Wish - Egg
  (926, 92600, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Fidough - Yawn - Egg
  (926, 92600, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Fidough - Howl - Egg
  (926, 92600, 336, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Fidough - Copycat - Egg
  (926, 92600, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Dachsbun - Tackle - Level 1
  (927, 92700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dachsbun - Growl - Level 1
  (927, 92700, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dachsbun - Lick - Level 3
  (927, 92700, 122, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Dachsbun - Tail Whip - Level 6
  (927, 92700, 39, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Dachsbun - Covet - Level 8
  (927, 92700, 343, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Dachsbun - Bite - Level 11
  (927, 92700, 44, 23, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Dachsbun - Baby-Doll Eyes - Level 15
  (927, 92700, 608, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Dachsbun - Play Rough - Level 18
  (927, 92700, 583, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Dachsbun - Work Up - Level 22
  (927, 92700, 526, 23, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Dachsbun - Baton Pass - Level 29
  (927, 92700, 226, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Dachsbun - Roar - Level 33
  (927, 92700, 46, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Dachsbun - Double-Edge - Level 38
  (927, 92700, 38, 23, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Dachsbun - Charm - Level 42
  (927, 92700, 204, 23, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Dachsbun - Crunch - Level 47
  (927, 92700, 242, 23, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Dachsbun - Last Resort - Level 53
  (927, 92700, 387, 23, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Dachsbun - Take Down - TM001
  (927, 92700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Dachsbun - Charm - TM002
  (927, 92700, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Dachsbun - Agility - TM004
  (927, 92700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Dachsbun - Mud-Slap - TM005
  (927, 92700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Dachsbun - Scary Face - TM006
  (927, 92700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Dachsbun - Protect - TM007
  (927, 92700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Dachsbun - Fire Fang - TM008
  (927, 92700, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 22),
  -- Dachsbun - Thunder Fang - TM009
  (927, 92700, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 23),
  -- Dachsbun - Ice Fang - TM010
  (927, 92700, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 24),
  -- Dachsbun - Trailblaze - TM020
  (927, 92700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 25),
  -- Dachsbun - Facade - TM025
  (927, 92700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Dachsbun - Snarl - TM030
  (927, 92700, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Dachsbun - Mud Shot - TM035
  (927, 92700, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 28),
  -- Dachsbun - Draining Kiss - TM037
  (927, 92700, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 29),
  -- Dachsbun - Endure - TM047
  (927, 92700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Dachsbun - Sunny Day - TM049
  (927, 92700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Dachsbun - Rain Dance - TM050
  (927, 92700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Dachsbun - Dig - TM055
  (927, 92700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Dachsbun - Psychic Fangs - TM063
  (927, 92700, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 34),
  -- Dachsbun - Body Slam - TM066
  (927, 92700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Dachsbun - Sleep Talk - TM070
  (927, 92700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Dachsbun - Dazzling Gleam - TM079
  (927, 92700, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 37),
  -- Dachsbun - Stomping Tantrum - TM084
  (927, 92700, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 38),
  -- Dachsbun - Rest - TM085
  (927, 92700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Dachsbun - Body Press - TM089
  (927, 92700, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 40),
  -- Dachsbun - Substitute - TM103
  (927, 92700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Dachsbun - Crunch - TM108
  (927, 92700, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 42),
  -- Dachsbun - Play Rough - TM127
  (927, 92700, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 43),
  -- Dachsbun - Helping Hand - TM130
  (927, 92700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Dachsbun - Baton Pass - TM132
  (927, 92700, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 45),
  -- Dachsbun - Misty Terrain - TM139
  (927, 92700, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 46),
  -- Dachsbun - Giga Impact - TM152
  (927, 92700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 47),
  -- Dachsbun - Hyper Beam - TM163
  (927, 92700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Dachsbun - Tera Blast - TM171
  (927, 92700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Dachsbun - Sweet Scent - Egg
  (927, 92700, 230, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Dachsbun - Wish - Egg
  (927, 92700, 273, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Dachsbun - Yawn - Egg
  (927, 92700, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Dachsbun - Howl - Egg
  (927, 92700, 336, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Dachsbun - Copycat - Egg
  (927, 92700, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Smoliv - Tackle - Level 1
  (928, 92800, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Smoliv - Sweet Scent - Level 1
  (928, 92800, 230, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Smoliv - Absorb - Level 5
  (928, 92800, 71, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Smoliv - Growth - Level 7
  (928, 92800, 74, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Smoliv - Razor Leaf - Level 10
  (928, 92800, 75, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Smoliv - Helping Hand - Level 13
  (928, 92800, 270, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Smoliv - Flail - Level 16
  (928, 92800, 175, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Smoliv - Mega Drain - Level 20
  (928, 92800, 72, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Smoliv - Grassy Terrain - Level 23
  (928, 92800, 580, 23, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Smoliv - Seed Bomb - Level 27
  (928, 92800, 402, 23, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Smoliv - Energy Ball - Level 30
  (928, 92800, 412, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Smoliv - Leech Seed - Level 34
  (928, 92800, 73, 23, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Smoliv - Terrain Pulse - Level 38
  (928, 92800, 805, 23, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Smoliv - Charm - TM002
  (928, 92800, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 14),
  -- Smoliv - Protect - TM007
  (928, 92800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Smoliv - Trailblaze - TM020
  (928, 92800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 16),
  -- Smoliv - Facade - TM025
  (928, 92800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Smoliv - Swift - TM032
  (928, 92800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 18),
  -- Smoliv - Magical Leaf - TM033
  (928, 92800, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 19),
  -- Smoliv - Endure - TM047
  (928, 92800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 20),
  -- Smoliv - Sunny Day - TM049
  (928, 92800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 21),
  -- Smoliv - Bullet Seed - TM056
  (928, 92800, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 22),
  -- Smoliv - Sleep Talk - TM070
  (928, 92800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 23),
  -- Smoliv - Seed Bomb - TM071
  (928, 92800, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 24),
  -- Smoliv - Grass Knot - TM081
  (928, 92800, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 25),
  -- Smoliv - Rest - TM085
  (928, 92800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 26),
  -- Smoliv - Substitute - TM103
  (928, 92800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 27),
  -- Smoliv - Giga Drain - TM111
  (928, 92800, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 28),
  -- Smoliv - Energy Ball - TM119
  (928, 92800, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 29),
  -- Smoliv - Helping Hand - TM130
  (928, 92800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 30),
  -- Smoliv - Earth Power - TM133
  (928, 92800, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 31),
  -- Smoliv - Grassy Terrain - TM137
  (928, 92800, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 32),
  -- Smoliv - Leaf Storm - TM159
  (928, 92800, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 33),
  -- Smoliv - Solar Beam - TM168
  (928, 92800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 34),
  -- Smoliv - Tera Blast - TM171
  (928, 92800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 35),
  -- Smoliv - Synthesis - Egg
  (928, 92800, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Smoliv - Memento - Egg
  (928, 92800, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Smoliv - Weather Ball - Egg
  (928, 92800, 311, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Smoliv - Strength Sap - Egg
  (928, 92800, 668, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Dolliv - Tackle - Level 1
  (929, 92900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dolliv - Sweet Scent - Level 1
  (929, 92900, 230, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dolliv - Absorb - Level 5
  (929, 92900, 71, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Dolliv - Growth - Level 7
  (929, 92900, 74, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Dolliv - Razor Leaf - Level 10
  (929, 92900, 75, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Dolliv - Helping Hand - Level 13
  (929, 92900, 270, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Dolliv - Flail - Level 16
  (929, 92900, 175, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Dolliv - Mega Drain - Level 20
  (929, 92900, 72, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Dolliv - Grassy Terrain - Level 23
  (929, 92900, 580, 23, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Dolliv - Seed Bomb - Level 29
  (929, 92900, 402, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Dolliv - Energy Ball - Level 34
  (929, 92900, 412, 23, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Dolliv - Leech Seed - Level 37
  (929, 92900, 73, 23, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Dolliv - Terrain Pulse - Level 42
  (929, 92900, 805, 23, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Dolliv - Charm - TM002
  (929, 92900, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 14),
  -- Dolliv - Protect - TM007
  (929, 92900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Dolliv - Trailblaze - TM020
  (929, 92900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 16),
  -- Dolliv - Facade - TM025
  (929, 92900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Dolliv - Swift - TM032
  (929, 92900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 18),
  -- Dolliv - Magical Leaf - TM033
  (929, 92900, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 19),
  -- Dolliv - Endure - TM047
  (929, 92900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 20),
  -- Dolliv - Sunny Day - TM049
  (929, 92900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 21),
  -- Dolliv - Bullet Seed - TM056
  (929, 92900, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 22),
  -- Dolliv - Sleep Talk - TM070
  (929, 92900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 23),
  -- Dolliv - Seed Bomb - TM071
  (929, 92900, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 24),
  -- Dolliv - Grass Knot - TM081
  (929, 92900, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 25),
  -- Dolliv - Rest - TM085
  (929, 92900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 26),
  -- Dolliv - Substitute - TM103
  (929, 92900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 27),
  -- Dolliv - Giga Drain - TM111
  (929, 92900, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 28),
  -- Dolliv - Energy Ball - TM119
  (929, 92900, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 29),
  -- Dolliv - Helping Hand - TM130
  (929, 92900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 30),
  -- Dolliv - Earth Power - TM133
  (929, 92900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 31),
  -- Dolliv - Grassy Terrain - TM137
  (929, 92900, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 32),
  -- Dolliv - Leaf Storm - TM159
  (929, 92900, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 33),
  -- Dolliv - Solar Beam - TM168
  (929, 92900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 34),
  -- Dolliv - Tera Blast - TM171
  (929, 92900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 35),
  -- Dolliv - Synthesis - Egg
  (929, 92900, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Dolliv - Memento - Egg
  (929, 92900, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Dolliv - Weather Ball - Egg
  (929, 92900, 311, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Dolliv - Strength Sap - Egg
  (929, 92900, 668, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Arboliva - Tackle - Level 1
  (930, 93000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arboliva - Safeguard - Level 1
  (930, 93000, 219, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arboliva - Sweet Scent - Level 1
  (930, 93000, 230, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arboliva - Mirror Coat - Level 1
  (930, 93000, 243, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arboliva - Absorb - Level 5
  (930, 93000, 71, 23, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Arboliva - Growth - Level 7
  (930, 93000, 74, 23, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Arboliva - Razor Leaf - Level 10
  (930, 93000, 75, 23, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Arboliva - Helping Hand - Level 13
  (930, 93000, 270, 23, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Arboliva - Flail - Level 16
  (930, 93000, 175, 23, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Arboliva - Mega Drain - Level 20
  (930, 93000, 72, 23, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Arboliva - Grassy Terrain - Level 23
  (930, 93000, 580, 23, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Arboliva - Seed Bomb - Level 29
  (930, 93000, 402, 23, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Arboliva - Energy Ball - Level 34
  (930, 93000, 412, 23, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Arboliva - Leech Seed - Level 39
  (930, 93000, 73, 23, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Arboliva - Terrain Pulse - Level 46
  (930, 93000, 805, 23, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Arboliva - Petal Blizzard - Level 52
  (930, 93000, 572, 23, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Arboliva - Petal Dance - Level 58
  (930, 93000, 80, 23, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Arboliva - Charm - TM002
  (930, 93000, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 18),
  -- Arboliva - Protect - TM007
  (930, 93000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Arboliva - Trailblaze - TM020
  (930, 93000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Arboliva - Facade - TM025
  (930, 93000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Arboliva - Swift - TM032
  (930, 93000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Arboliva - Magical Leaf - TM033
  (930, 93000, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 23),
  -- Arboliva - Fling - TM043
  (930, 93000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 24),
  -- Arboliva - Endure - TM047
  (930, 93000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Arboliva - Sunny Day - TM049
  (930, 93000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Arboliva - Bullet Seed - TM056
  (930, 93000, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 27),
  -- Arboliva - Sleep Talk - TM070
  (930, 93000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Arboliva - Seed Bomb - TM071
  (930, 93000, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 29),
  -- Arboliva - Reflect - TM074
  (930, 93000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 30),
  -- Arboliva - Light Screen - TM075
  (930, 93000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 31),
  -- Arboliva - Dazzling Gleam - TM079
  (930, 93000, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 32),
  -- Arboliva - Metronome - TM080
  (930, 93000, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 33),
  -- Arboliva - Grass Knot - TM081
  (930, 93000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 34),
  -- Arboliva - Rest - TM085
  (930, 93000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Arboliva - Substitute - TM103
  (930, 93000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Arboliva - Giga Drain - TM111
  (930, 93000, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 37),
  -- Arboliva - Hyper Voice - TM117
  (930, 93000, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 38),
  -- Arboliva - Energy Ball - TM119
  (930, 93000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 39),
  -- Arboliva - Encore - TM122
  (930, 93000, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 40),
  -- Arboliva - Helping Hand - TM130
  (930, 93000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Arboliva - Pollen Puff - TM131
  (930, 93000, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 42),
  -- Arboliva - Earth Power - TM133
  (930, 93000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 43),
  -- Arboliva - Grassy Terrain - TM137
  (930, 93000, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 44),
  -- Arboliva - Giga Impact - TM152
  (930, 93000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 45),
  -- Arboliva - Leaf Storm - TM159
  (930, 93000, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 46),
  -- Arboliva - Hyper Beam - TM163
  (930, 93000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 47),
  -- Arboliva - Solar Beam - TM168
  (930, 93000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 48),
  -- Arboliva - Tera Blast - TM171
  (930, 93000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Arboliva - Synthesis - Egg
  (930, 93000, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Arboliva - Memento - Egg
  (930, 93000, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Arboliva - Weather Ball - Egg
  (930, 93000, 311, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Arboliva - Strength Sap - Egg
  (930, 93000, 668, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Squawkabilly - Growl - Level 1
  (931, 93100, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Squawkabilly - Peck - Level 1
  (931, 93100, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Squawkabilly - Mimic - Level 1
  (931, 93100, 102, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Squawkabilly - Quick Attack - Level 6
  (931, 93100, 98, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Squawkabilly - Torment - Level 10
  (931, 93100, 259, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Squawkabilly - Aerial Ace - Level 13
  (931, 93100, 332, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Squawkabilly - Fury Attack - Level 17
  (931, 93100, 31, 23, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Squawkabilly - Taunt - Level 20
  (931, 93100, 269, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Squawkabilly - Uproar - Level 24
  (931, 93100, 253, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Squawkabilly - Copycat - Level 27
  (931, 93100, 383, 23, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Squawkabilly - Fly - Level 30
  (931, 93100, 19, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Squawkabilly - Facade - Level 34
  (931, 93100, 263, 23, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Squawkabilly - Swagger - Level 38
  (931, 93100, 207, 23, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Squawkabilly - Brave Bird - Level 42
  (931, 93100, 413, 23, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Squawkabilly - Roost - Level 47
  (931, 93100, 355, 23, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Squawkabilly - Reversal - Level 52
  (931, 93100, 179, 23, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Squawkabilly - Take Down - TM001
  (931, 93100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Squawkabilly - Fake Tears - TM003
  (931, 93100, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 18),
  -- Squawkabilly - Scary Face - TM006
  (931, 93100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Squawkabilly - Protect - TM007
  (931, 93100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Squawkabilly - Thief - TM018
  (931, 93100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Squawkabilly - Pounce - TM021
  (931, 93100, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 22),
  -- Squawkabilly - Facade - TM025
  (931, 93100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Squawkabilly - Aerial Ace - TM027
  (931, 93100, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Squawkabilly - Air Cutter - TM040
  (931, 93100, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 25),
  -- Squawkabilly - Endure - TM047
  (931, 93100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Squawkabilly - Sunny Day - TM049
  (931, 93100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Squawkabilly - U-turn - TM060
  (931, 93100, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 28),
  -- Squawkabilly - Foul Play - TM062
  (931, 93100, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 29),
  -- Squawkabilly - Air Slash - TM065
  (931, 93100, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 30),
  -- Squawkabilly - Sleep Talk - TM070
  (931, 93100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Squawkabilly - Rest - TM085
  (931, 93100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Squawkabilly - Taunt - TM087
  (931, 93100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 33),
  -- Squawkabilly - Fly - TM097
  (931, 93100, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 34),
  -- Squawkabilly - Substitute - TM103
  (931, 93100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Squawkabilly - Tailwind - TM113
  (931, 93100, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 36),
  -- Squawkabilly - Hyper Voice - TM117
  (931, 93100, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 37),
  -- Squawkabilly - Heat Wave - TM118
  (931, 93100, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 38),
  -- Squawkabilly - Helping Hand - TM130
  (931, 93100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 39),
  -- Squawkabilly - Reversal - TM134
  (931, 93100, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 40),
  -- Squawkabilly - Giga Impact - TM152
  (931, 93100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 41),
  -- Squawkabilly - Hurricane - TM160
  (931, 93100, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 42),
  -- Squawkabilly - Hyper Beam - TM163
  (931, 93100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 43),
  -- Squawkabilly - Brave Bird - TM164
  (931, 93100, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 44),
  -- Squawkabilly - Tera Blast - TM171
  (931, 93100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Squawkabilly - Double-Edge - Egg
  (931, 93100, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Squawkabilly - Flatter - Egg
  (931, 93100, 260, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Squawkabilly - Final Gambit - Egg
  (931, 93100, 515, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Squawkabilly - Parting Shot - Egg
  (931, 93100, 575, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Nacli - Tackle - Level 1
  (932, 93200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nacli - Harden - Level 1
  (932, 93200, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nacli - Rock Throw - Level 5
  (932, 93200, 88, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Nacli - Mud Shot - Level 7
  (932, 93200, 341, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Nacli - Smack Down - Level 10
  (932, 93200, 479, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Nacli - Rock Polish - Level 13
  (932, 93200, 397, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Nacli - Headbutt - Level 16
  (932, 93200, 29, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Nacli - Iron Defense - Level 20
  (932, 93200, 334, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Nacli - Recover - Level 25
  (932, 93200, 105, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Nacli - Rock Slide - Level 30
  (932, 93200, 157, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Nacli - Stealth Rock - Level 33
  (932, 93200, 446, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Nacli - Heavy Slam - Level 35
  (932, 93200, 484, 23, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Nacli - Earthquake - Level 40
  (932, 93200, 89, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Nacli - Stone Edge - Level 45
  (932, 93200, 444, 23, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Nacli - Take Down - TM001
  (932, 93200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Nacli - Protect - TM007
  (932, 93200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Nacli - Facade - TM025
  (932, 93200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Nacli - Bulldoze - TM028
  (932, 93200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 18),
  -- Nacli - Mud Shot - TM035
  (932, 93200, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 19),
  -- Nacli - Endure - TM047
  (932, 93200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 20),
  -- Nacli - Sunny Day - TM049
  (932, 93200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 21),
  -- Nacli - Rain Dance - TM050
  (932, 93200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 22),
  -- Nacli - Sandstorm - TM051
  (932, 93200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 23),
  -- Nacli - Dig - TM055
  (932, 93200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 24),
  -- Nacli - Zen Headbutt - TM059
  (932, 93200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 25),
  -- Nacli - Body Slam - TM066
  (932, 93200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 26),
  -- Nacli - Sleep Talk - TM070
  (932, 93200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Nacli - Stomping Tantrum - TM084
  (932, 93200, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 28),
  -- Nacli - Rest - TM085
  (932, 93200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Nacli - Rock Slide - TM086
  (932, 93200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 30),
  -- Nacli - Flash Cannon - TM093
  (932, 93200, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 31),
  -- Nacli - Iron Head - TM099
  (932, 93200, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 32),
  -- Nacli - Power Gem - TM101
  (932, 93200, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 33),
  -- Nacli - Substitute - TM103
  (932, 93200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Nacli - Iron Defense - TM104
  (932, 93200, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 35),
  -- Nacli - Stealth Rock - TM116
  (932, 93200, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 36),
  -- Nacli - Heavy Slam - TM121
  (932, 93200, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 37),
  -- Nacli - Helping Hand - TM130
  (932, 93200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Nacli - Earth Power - TM133
  (932, 93200, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 39),
  -- Nacli - Earthquake - TM149
  (932, 93200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 40),
  -- Nacli - Stone Edge - TM150
  (932, 93200, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 41),
  -- Nacli - Tera Blast - TM171
  (932, 93200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Nacli - Fissure - Egg
  (932, 93200, 90, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Nacli - Curse - Egg
  (932, 93200, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Nacli - Ancient Power - Egg
  (932, 93200, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Nacli - Power Gem - Egg
  (932, 93200, 408, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Naclstack - Tackle - Level 1
  (933, 93300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Naclstack - Harden - Level 1
  (933, 93300, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Naclstack - Rock Throw - Level 5
  (933, 93300, 88, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Naclstack - Mud Shot - Level 7
  (933, 93300, 341, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Naclstack - Smack Down - Level 10
  (933, 93300, 479, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Naclstack - Rock Polish - Level 13
  (933, 93300, 397, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Naclstack - Headbutt - Level 16
  (933, 93300, 29, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Naclstack - Iron Defense - Level 20
  (933, 93300, 334, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Naclstack - Recover - Level 30
  (933, 93300, 105, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Naclstack - Rock Slide - Level 34
  (933, 93300, 157, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Naclstack - Stealth Rock - Level 38
  (933, 93300, 446, 23, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Naclstack - Heavy Slam - Level 41
  (933, 93300, 484, 23, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Naclstack - Earthquake - Level 45
  (933, 93300, 89, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Naclstack - Stone Edge - Level 51
  (933, 93300, 444, 23, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Naclstack - Take Down - TM001
  (933, 93300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Naclstack - Protect - TM007
  (933, 93300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Naclstack - Facade - TM025
  (933, 93300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Naclstack - Bulldoze - TM028
  (933, 93300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 18),
  -- Naclstack - Mud Shot - TM035
  (933, 93300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 19),
  -- Naclstack - Endure - TM047
  (933, 93300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 20),
  -- Naclstack - Sunny Day - TM049
  (933, 93300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 21),
  -- Naclstack - Rain Dance - TM050
  (933, 93300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 22),
  -- Naclstack - Sandstorm - TM051
  (933, 93300, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 23),
  -- Naclstack - Dig - TM055
  (933, 93300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 24),
  -- Naclstack - Zen Headbutt - TM059
  (933, 93300, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 25),
  -- Naclstack - Body Slam - TM066
  (933, 93300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 26),
  -- Naclstack - Sleep Talk - TM070
  (933, 93300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Naclstack - Stomping Tantrum - TM084
  (933, 93300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 28),
  -- Naclstack - Rest - TM085
  (933, 93300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Naclstack - Rock Slide - TM086
  (933, 93300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 30),
  -- Naclstack - Body Press - TM089
  (933, 93300, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 31),
  -- Naclstack - Flash Cannon - TM093
  (933, 93300, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 32),
  -- Naclstack - Iron Head - TM099
  (933, 93300, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 33),
  -- Naclstack - Power Gem - TM101
  (933, 93300, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 34),
  -- Naclstack - Substitute - TM103
  (933, 93300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Naclstack - Iron Defense - TM104
  (933, 93300, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 36),
  -- Naclstack - Stealth Rock - TM116
  (933, 93300, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 37),
  -- Naclstack - Heavy Slam - TM121
  (933, 93300, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 38),
  -- Naclstack - Helping Hand - TM130
  (933, 93300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 39),
  -- Naclstack - Earth Power - TM133
  (933, 93300, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 40),
  -- Naclstack - Earthquake - TM149
  (933, 93300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 41),
  -- Naclstack - Stone Edge - TM150
  (933, 93300, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 42),
  -- Naclstack - Giga Impact - TM152
  (933, 93300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 43),
  -- Naclstack - Hyper Beam - TM163
  (933, 93300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 44),
  -- Naclstack - Tera Blast - TM171
  (933, 93300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Naclstack - Fissure - Egg
  (933, 93300, 90, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Naclstack - Curse - Egg
  (933, 93300, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Naclstack - Ancient Power - Egg
  (933, 93300, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Naclstack - Power Gem - Egg
  (933, 93300, 408, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Naclstack - Salt Cure - Evolution
  (933, 93300, 864, 23, NULL, 7, NULL, NULL, NULL, NULL, 50),
  -- Garganacl - Tackle - Level 1
  (934, 93400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Garganacl - Harden - Level 1
  (934, 93400, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Garganacl - Block - Level 1
  (934, 93400, 335, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Garganacl - Rock Blast - Level 1
  (934, 93400, 350, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Garganacl - Wide Guard - Level 1
  (934, 93400, 469, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Garganacl - Rock Throw - Level 5
  (934, 93400, 88, 23, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Garganacl - Mud Shot - Level 7
  (934, 93400, 341, 23, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Garganacl - Rock Tomb - Level 10
  (934, 93400, 317, 23, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Garganacl - Rock Polish - Level 13
  (934, 93400, 397, 23, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Garganacl - Headbutt - Level 16
  (934, 93400, 29, 23, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Garganacl - Salt Cure - Level 24
  (934, 93400, 864, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Garganacl - Recover - Level 30
  (934, 93400, 105, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Garganacl - Rock Slide - Level 34
  (934, 93400, 157, 23, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Garganacl - Stealth Rock - Level 40
  (934, 93400, 446, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Garganacl - Heavy Slam - Level 44
  (934, 93400, 484, 23, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Garganacl - Earthquake - Level 49
  (934, 93400, 89, 23, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Garganacl - Stone Edge - Level 54
  (934, 93400, 444, 23, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Garganacl - Explosion - Level 60
  (934, 93400, 153, 23, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Garganacl - Take Down - TM001
  (934, 93400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Garganacl - Protect - TM007
  (934, 93400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Garganacl - Facade - TM025
  (934, 93400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Garganacl - Bulldoze - TM028
  (934, 93400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Garganacl - Mud Shot - TM035
  (934, 93400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Garganacl - Rock Tomb - TM036
  (934, 93400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Garganacl - Fling - TM043
  (934, 93400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Garganacl - Avalanche - TM046
  (934, 93400, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 26),
  -- Garganacl - Endure - TM047
  (934, 93400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Garganacl - Sunny Day - TM049
  (934, 93400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Garganacl - Rain Dance - TM050
  (934, 93400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Garganacl - Sandstorm - TM051
  (934, 93400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Garganacl - Dig - TM055
  (934, 93400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Garganacl - Brick Break - TM058
  (934, 93400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Garganacl - Zen Headbutt - TM059
  (934, 93400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 33),
  -- Garganacl - Body Slam - TM066
  (934, 93400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Garganacl - Fire Punch - TM067
  (934, 93400, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 35),
  -- Garganacl - Thunder Punch - TM068
  (934, 93400, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 36),
  -- Garganacl - Ice Punch - TM069
  (934, 93400, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 37),
  -- Garganacl - Sleep Talk - TM070
  (934, 93400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Garganacl - Rock Blast - TM076
  (934, 93400, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 39),
  -- Garganacl - Stomping Tantrum - TM084
  (934, 93400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 40),
  -- Garganacl - Rest - TM085
  (934, 93400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Garganacl - Rock Slide - TM086
  (934, 93400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Garganacl - Body Press - TM089
  (934, 93400, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 43),
  -- Garganacl - Flash Cannon - TM093
  (934, 93400, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 44),
  -- Garganacl - Iron Head - TM099
  (934, 93400, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 45),
  -- Garganacl - Power Gem - TM101
  (934, 93400, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 46),
  -- Garganacl - Substitute - TM103
  (934, 93400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Garganacl - Iron Defense - TM104
  (934, 93400, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 48),
  -- Garganacl - Stealth Rock - TM116
  (934, 93400, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 49),
  -- Garganacl - Heavy Slam - TM121
  (934, 93400, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 50),
  -- Garganacl - Helping Hand - TM130
  (934, 93400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 51),
  -- Garganacl - Earth Power - TM133
  (934, 93400, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 52),
  -- Garganacl - Earthquake - TM149
  (934, 93400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 53),
  -- Garganacl - Stone Edge - TM150
  (934, 93400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 54),
  -- Garganacl - Giga Impact - TM152
  (934, 93400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 55),
  -- Garganacl - Hyper Beam - TM163
  (934, 93400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 56),
  -- Garganacl - Tera Blast - TM171
  (934, 93400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Garganacl - Fissure - Egg
  (934, 93400, 90, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Garganacl - Curse - Egg
  (934, 93400, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Garganacl - Ancient Power - Egg
  (934, 93400, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Garganacl - Power Gem - Egg
  (934, 93400, 408, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Garganacl - Hammer Arm - Evolution
  (934, 93400, 359, 23, NULL, 7, NULL, NULL, NULL, NULL, 62),
  -- Charcadet - Leer - Level 1
  (935, 93500, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charcadet - Ember - Level 1
  (935, 93500, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charcadet - Astonish - Level 1
  (935, 93500, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Charcadet - Clear Smog - Level 8
  (935, 93500, 499, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Charcadet - Fire Spin - Level 12
  (935, 93500, 83, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Charcadet - Will-O-Wisp - Level 16
  (935, 93500, 261, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Charcadet - Night Shade - Level 20
  (935, 93500, 101, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Charcadet - Flame Charge - Level 24
  (935, 93500, 488, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Charcadet - Incinerate - Level 28
  (935, 93500, 510, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Charcadet - Lava Plume - Level 32
  (935, 93500, 436, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Charcadet - Take Down - TM001
  (935, 93500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 11),
  -- Charcadet - Protect - TM007
  (935, 93500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 12),
  -- Charcadet - Confuse Ray - TM017
  (935, 93500, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 13),
  -- Charcadet - Fire Spin - TM024
  (935, 93500, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 14),
  -- Charcadet - Facade - TM025
  (935, 93500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 15),
  -- Charcadet - Flame Charge - TM038
  (935, 93500, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 16),
  -- Charcadet - Night Shade - TM042
  (935, 93500, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 17),
  -- Charcadet - Endure - TM047
  (935, 93500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 18),
  -- Charcadet - Sunny Day - TM049
  (935, 93500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 19),
  -- Charcadet - Sleep Talk - TM070
  (935, 93500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 20),
  -- Charcadet - Rest - TM085
  (935, 93500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 21),
  -- Charcadet - Substitute - TM103
  (935, 93500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 22),
  -- Charcadet - Will-O-Wisp - TM107
  (935, 93500, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 23),
  -- Charcadet - Heat Wave - TM118
  (935, 93500, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 24),
  -- Charcadet - Flamethrower - TM125
  (935, 93500, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 25),
  -- Charcadet - Helping Hand - TM130
  (935, 93500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 26),
  -- Charcadet - Fire Blast - TM141
  (935, 93500, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 27),
  -- Charcadet - Overheat - TM157
  (935, 93500, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 28),
  -- Charcadet - Flare Blitz - TM165
  (935, 93500, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 29),
  -- Charcadet - Tera Blast - TM171
  (935, 93500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 30),
  -- Charcadet - Disable - Egg
  (935, 93500, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Charcadet - Spite - Egg
  (935, 93500, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Charcadet - Destiny Bond - Egg
  (935, 93500, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Armarouge - Leer - Level 1
  (936, 93600, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Armarouge - Ember - Level 1
  (936, 93600, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Armarouge - Astonish - Level 1
  (936, 93600, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Armarouge - Wide Guard - Level 1
  (936, 93600, 469, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Armarouge - Mystical Fire - Level 1
  (936, 93600, 595, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Armarouge - Clear Smog - Level 8
  (936, 93600, 499, 23, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Armarouge - Fire Spin - Level 12
  (936, 93600, 83, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Armarouge - Will-O-Wisp - Level 16
  (936, 93600, 261, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Armarouge - Night Shade - Level 20
  (936, 93600, 101, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Armarouge - Flame Charge - Level 24
  (936, 93600, 488, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Armarouge - Incinerate - Level 28
  (936, 93600, 510, 23, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Armarouge - Lava Plume - Level 32
  (936, 93600, 436, 23, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Armarouge - Calm Mind - Level 37
  (936, 93600, 347, 23, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Armarouge - Ally Switch - Level 42
  (936, 93600, 502, 23, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Armarouge - Flamethrower - Level 48
  (936, 93600, 53, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Armarouge - Expanding Force - Level 56
  (936, 93600, 797, 23, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Armarouge - Armor Cannon - Level 62
  (936, 93600, 890, 23, NULL, 1, 62, NULL, NULL, NULL, 17),
  -- Armarouge - Take Down - TM001
  (936, 93600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Armarouge - Protect - TM007
  (936, 93600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Armarouge - Acid Spray - TM013
  (936, 93600, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 20),
  -- Armarouge - Psybeam - TM016
  (936, 93600, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 21),
  -- Armarouge - Confuse Ray - TM017
  (936, 93600, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Armarouge - Fire Spin - TM024
  (936, 93600, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 23),
  -- Armarouge - Facade - TM025
  (936, 93600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Armarouge - Flame Charge - TM038
  (936, 93600, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 25),
  -- Armarouge - Stored Power - TM041
  (936, 93600, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 26),
  -- Armarouge - Night Shade - TM042
  (936, 93600, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 27),
  -- Armarouge - Fling - TM043
  (936, 93600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Armarouge - Endure - TM047
  (936, 93600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Armarouge - Sunny Day - TM049
  (936, 93600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Armarouge - Psyshock - TM054
  (936, 93600, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 31),
  -- Armarouge - Sleep Talk - TM070
  (936, 93600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Armarouge - Reflect - TM074
  (936, 93600, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 33),
  -- Armarouge - Light Screen - TM075
  (936, 93600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 34),
  -- Armarouge - Rest - TM085
  (936, 93600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Armarouge - Taunt - TM087
  (936, 93600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 36),
  -- Armarouge - Flash Cannon - TM093
  (936, 93600, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 37),
  -- Armarouge - Dark Pulse - TM094
  (936, 93600, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 38),
  -- Armarouge - Substitute - TM103
  (936, 93600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Armarouge - Iron Defense - TM104
  (936, 93600, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 40),
  -- Armarouge - Will-O-Wisp - TM107
  (936, 93600, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 41),
  -- Armarouge - Trick - TM109
  (936, 93600, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 42),
  -- Armarouge - Aura Sphere - TM112
  (936, 93600, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 43),
  -- Armarouge - Shadow Ball - TM114
  (936, 93600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 44),
  -- Armarouge - Dragon Pulse - TM115
  (936, 93600, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 45),
  -- Armarouge - Heat Wave - TM118
  (936, 93600, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 46),
  -- Armarouge - Energy Ball - TM119
  (936, 93600, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 47),
  -- Armarouge - Psychic - TM120
  (936, 93600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 48),
  -- Armarouge - Flamethrower - TM125
  (936, 93600, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 49),
  -- Armarouge - Calm Mind - TM129
  (936, 93600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 50),
  -- Armarouge - Helping Hand - TM130
  (936, 93600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 51),
  -- Armarouge - Psychic Terrain - TM138
  (936, 93600, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 52),
  -- Armarouge - Fire Blast - TM141
  (936, 93600, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 53),
  -- Armarouge - Overheat - TM157
  (936, 93600, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 54),
  -- Armarouge - Focus Blast - TM158
  (936, 93600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 55),
  -- Armarouge - Trick Room - TM161
  (936, 93600, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 56),
  -- Armarouge - Flare Blitz - TM165
  (936, 93600, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 57),
  -- Armarouge - Solar Beam - TM168
  (936, 93600, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 58),
  -- Armarouge - Tera Blast - TM171
  (936, 93600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Armarouge - Disable - Egg
  (936, 93600, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Armarouge - Spite - Egg
  (936, 93600, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Armarouge - Destiny Bond - Egg
  (936, 93600, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Armarouge - Psyshock - Evolution
  (936, 93600, 473, 23, NULL, 7, NULL, NULL, NULL, NULL, 63),
  -- Ceruledge - Leer - Level 1
  (937, 93700, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ceruledge - Ember - Level 1
  (937, 93700, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ceruledge - Astonish - Level 1
  (937, 93700, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ceruledge - Clear Smog - Level 8
  (937, 93700, 499, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Ceruledge - Fire Spin - Level 12
  (937, 93700, 83, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Ceruledge - Will-O-Wisp - Level 16
  (937, 93700, 261, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Ceruledge - Night Shade - Level 20
  (937, 93700, 101, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Ceruledge - Flame Charge - Level 24
  (937, 93700, 488, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Ceruledge - Incinerate - Level 28
  (937, 93700, 510, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Ceruledge - Lava Plume - Level 32
  (937, 93700, 436, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Ceruledge - Swords Dance - Level 37
  (937, 93700, 14, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Ceruledge - Ally Switch - Level 42
  (937, 93700, 502, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Ceruledge - Bitter Blade - Level 48
  (937, 93700, 891, 23, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Ceruledge - Psycho Cut - Level 56
  (937, 93700, 427, 23, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Ceruledge - Flare Blitz - Level 62
  (937, 93700, 394, 23, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Ceruledge - Take Down - TM001
  (937, 93700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Ceruledge - Protect - TM007
  (937, 93700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Ceruledge - Confuse Ray - TM017
  (937, 93700, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 18),
  -- Ceruledge - Fire Spin - TM024
  (937, 93700, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 19),
  -- Ceruledge - Facade - TM025
  (937, 93700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Ceruledge - Hex - TM029
  (937, 93700, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 21),
  -- Ceruledge - Flame Charge - TM038
  (937, 93700, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 22),
  -- Ceruledge - Stored Power - TM041
  (937, 93700, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 23),
  -- Ceruledge - Night Shade - TM042
  (937, 93700, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 24),
  -- Ceruledge - Fling - TM043
  (937, 93700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Ceruledge - Endure - TM047
  (937, 93700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Ceruledge - Sunny Day - TM049
  (937, 93700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Ceruledge - False Swipe - TM057
  (937, 93700, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 28),
  -- Ceruledge - Brick Break - TM058
  (937, 93700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 29),
  -- Ceruledge - Shadow Claw - TM061
  (937, 93700, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 30),
  -- Ceruledge - Bulk Up - TM064
  (937, 93700, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 31),
  -- Ceruledge - Sleep Talk - TM070
  (937, 93700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Ceruledge - Reflect - TM074
  (937, 93700, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 33),
  -- Ceruledge - Light Screen - TM075
  (937, 93700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 34),
  -- Ceruledge - Dragon Claw - TM078
  (937, 93700, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 35),
  -- Ceruledge - Poison Jab - TM083
  (937, 93700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 36),
  -- Ceruledge - Rest - TM085
  (937, 93700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Ceruledge - Taunt - TM087
  (937, 93700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Ceruledge - Swords Dance - TM088
  (937, 93700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 39),
  -- Ceruledge - Iron Head - TM099
  (937, 93700, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 40),
  -- Ceruledge - Substitute - TM103
  (937, 93700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Ceruledge - Iron Defense - TM104
  (937, 93700, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 42),
  -- Ceruledge - X-Scissor - TM105
  (937, 93700, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 43),
  -- Ceruledge - Will-O-Wisp - TM107
  (937, 93700, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 44),
  -- Ceruledge - Shadow Ball - TM114
  (937, 93700, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Ceruledge - Heat Wave - TM118
  (937, 93700, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 46),
  -- Ceruledge - Flamethrower - TM125
  (937, 93700, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 47),
  -- Ceruledge - Helping Hand - TM130
  (937, 93700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Ceruledge - Fire Blast - TM141
  (937, 93700, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 49),
  -- Ceruledge - Phantom Force - TM151
  (937, 93700, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 50),
  -- Ceruledge - Overheat - TM157
  (937, 93700, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 51),
  -- Ceruledge - Flare Blitz - TM165
  (937, 93700, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 52),
  -- Ceruledge - Close Combat - TM167
  (937, 93700, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 53),
  -- Ceruledge - Tera Blast - TM171
  (937, 93700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Ceruledge - Disable - Egg
  (937, 93700, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Ceruledge - Spite - Egg
  (937, 93700, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Ceruledge - Destiny Bond - Egg
  (937, 93700, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Ceruledge - Shadow Claw - Evolution
  (937, 93700, 421, 23, NULL, 7, NULL, NULL, NULL, NULL, 58),
  -- Ceruledge - Night Slash - Reminder
  (937, 93700, 400, 23, NULL, 9, NULL, NULL, NULL, NULL, 59),
  -- Ceruledge - Shadow Sneak - Reminder
  (937, 93700, 425, 23, NULL, 9, NULL, NULL, NULL, NULL, 60),
  -- Ceruledge - Quick Guard - Reminder
  (937, 93700, 501, 23, NULL, 9, NULL, NULL, NULL, NULL, 61),
  -- Ceruledge - Solar Blade - Reminder
  (937, 93700, 669, 23, NULL, 9, NULL, NULL, NULL, NULL, 62),
  -- Tadbulb - Tackle - Level 1
  (938, 93800, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tadbulb - Mud-Slap - Level 1
  (938, 93800, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tadbulb - Thunder Shock - Level 7
  (938, 93800, 84, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Tadbulb - Water Gun - Level 11
  (938, 93800, 55, 23, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Tadbulb - Charge - Level 17
  (938, 93800, 268, 23, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Tadbulb - Spark - Level 21
  (938, 93800, 209, 23, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Tadbulb - Mud Shot - Level 24
  (938, 93800, 341, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Tadbulb - Flail - Level 25
  (938, 93800, 175, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Tadbulb - Discharge - Level 32
  (938, 93800, 435, 23, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Tadbulb - Weather Ball - Level 36
  (938, 93800, 311, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Tadbulb - Electric Terrain - Level 40
  (938, 93800, 604, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Tadbulb - Sucker Punch - Level 45
  (938, 93800, 389, 23, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Tadbulb - Zap Cannon - Level 50
  (938, 93800, 192, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Tadbulb - Mud-Slap - TM005
  (938, 93800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 14),
  -- Tadbulb - Protect - TM007
  (938, 93800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Tadbulb - Water Pulse - TM011
  (938, 93800, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 16),
  -- Tadbulb - Acid Spray - TM013
  (938, 93800, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 17),
  -- Tadbulb - Confuse Ray - TM017
  (938, 93800, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 18),
  -- Tadbulb - Chilling Water - TM022
  (938, 93800, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Tadbulb - Charge Beam - TM023
  (938, 93800, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Tadbulb - Swift - TM032
  (938, 93800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Tadbulb - Mud Shot - TM035
  (938, 93800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 22),
  -- Tadbulb - Endure - TM047
  (938, 93800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Tadbulb - Volt Switch - TM048
  (938, 93800, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 24),
  -- Tadbulb - Rain Dance - TM050
  (938, 93800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Tadbulb - Sleep Talk - TM070
  (938, 93800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Tadbulb - Electro Ball - TM072
  (938, 93800, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 27),
  -- Tadbulb - Reflect - TM074
  (938, 93800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 28),
  -- Tadbulb - Light Screen - TM075
  (938, 93800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 29),
  -- Tadbulb - Thunder Wave - TM082
  (938, 93800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 30),
  -- Tadbulb - Rest - TM085
  (938, 93800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Tadbulb - Eerie Impulse - TM096
  (938, 93800, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 32),
  -- Tadbulb - Substitute - TM103
  (938, 93800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Tadbulb - Hyper Voice - TM117
  (938, 93800, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 34),
  -- Tadbulb - Thunderbolt - TM126
  (938, 93800, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 35),
  -- Tadbulb - Electric Terrain - TM136
  (938, 93800, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 36),
  -- Tadbulb - Wild Charge - TM147
  (938, 93800, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 37),
  -- Tadbulb - Thunder - TM166
  (938, 93800, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 38),
  -- Tadbulb - Tera Blast - TM171
  (938, 93800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 39),
  -- Tadbulb - Muddy Water - Egg
  (938, 93800, 330, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Tadbulb - Soak - Egg
  (938, 93800, 487, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Tadbulb - Parabolic Charge - Egg
  (938, 93800, 570, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Bellibolt - Tackle - Level 1
  (939, 93900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bellibolt - Mud-Slap - Level 1
  (939, 93900, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bellibolt - Slack Off - Level 1
  (939, 93900, 303, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bellibolt - Thunder Shock - Level 7
  (939, 93900, 84, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Bellibolt - Water Gun - Level 11
  (939, 93900, 55, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Bellibolt - Charge - Level 17
  (939, 93900, 268, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Bellibolt - Spark - Level 21
  (939, 93900, 209, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Bellibolt - Mud Shot - Level 24
  (939, 93900, 341, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Bellibolt - Flail - Level 25
  (939, 93900, 175, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Bellibolt - Discharge - Level 32
  (939, 93900, 435, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Bellibolt - Weather Ball - Level 36
  (939, 93900, 311, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Bellibolt - Electric Terrain - Level 40
  (939, 93900, 604, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Bellibolt - Sucker Punch - Level 45
  (939, 93900, 389, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Bellibolt - Zap Cannon - Level 50
  (939, 93900, 192, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Bellibolt - Mud-Slap - TM005
  (939, 93900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Bellibolt - Protect - TM007
  (939, 93900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Bellibolt - Water Pulse - TM011
  (939, 93900, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Bellibolt - Acid Spray - TM013
  (939, 93900, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 18),
  -- Bellibolt - Confuse Ray - TM017
  (939, 93900, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 19),
  -- Bellibolt - Chilling Water - TM022
  (939, 93900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Bellibolt - Charge Beam - TM023
  (939, 93900, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 21),
  -- Bellibolt - Swift - TM032
  (939, 93900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Bellibolt - Mud Shot - TM035
  (939, 93900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Bellibolt - Endure - TM047
  (939, 93900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Bellibolt - Volt Switch - TM048
  (939, 93900, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 25),
  -- Bellibolt - Rain Dance - TM050
  (939, 93900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Bellibolt - Sleep Talk - TM070
  (939, 93900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Bellibolt - Electro Ball - TM072
  (939, 93900, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 28),
  -- Bellibolt - Reflect - TM074
  (939, 93900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 29),
  -- Bellibolt - Light Screen - TM075
  (939, 93900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 30),
  -- Bellibolt - Thunder Wave - TM082
  (939, 93900, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 31),
  -- Bellibolt - Rest - TM085
  (939, 93900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Bellibolt - Eerie Impulse - TM096
  (939, 93900, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 33),
  -- Bellibolt - Substitute - TM103
  (939, 93900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Bellibolt - Hyper Voice - TM117
  (939, 93900, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 35),
  -- Bellibolt - Thunderbolt - TM126
  (939, 93900, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 36),
  -- Bellibolt - Electric Terrain - TM136
  (939, 93900, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 37),
  -- Bellibolt - Wild Charge - TM147
  (939, 93900, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 38),
  -- Bellibolt - Giga Impact - TM152
  (939, 93900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 39),
  -- Bellibolt - Hyper Beam - TM163
  (939, 93900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 40),
  -- Bellibolt - Thunder - TM166
  (939, 93900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 41),
  -- Bellibolt - Tera Blast - TM171
  (939, 93900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Bellibolt - Muddy Water - Egg
  (939, 93900, 330, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bellibolt - Soak - Egg
  (939, 93900, 487, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bellibolt - Parabolic Charge - Egg
  (939, 93900, 570, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Wattrel - Growl - Level 1
  (940, 94000, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wattrel - Peck - Level 1
  (940, 94000, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wattrel - Thunder Shock - Level 4
  (940, 94000, 84, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Wattrel - Quick Attack - Level 7
  (940, 94000, 98, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Wattrel - Pluck - Level 11
  (940, 94000, 365, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Wattrel - Spark - Level 15
  (940, 94000, 209, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Wattrel - Uproar - Level 19
  (940, 94000, 253, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Wattrel - Roost - Level 23
  (940, 94000, 355, 23, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Wattrel - Dual Wingbeat - Level 27
  (940, 94000, 814, 23, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Wattrel - Agility - Level 32
  (940, 94000, 97, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Wattrel - Volt Switch - Level 37
  (940, 94000, 521, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Wattrel - Discharge - Level 43
  (940, 94000, 435, 23, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Wattrel - Take Down - TM001
  (940, 94000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Wattrel - Agility - TM004
  (940, 94000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 14),
  -- Wattrel - Protect - TM007
  (940, 94000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Wattrel - Acrobatics - TM014
  (940, 94000, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 16),
  -- Wattrel - Charge Beam - TM023
  (940, 94000, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 17),
  -- Wattrel - Facade - TM025
  (940, 94000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Wattrel - Aerial Ace - TM027
  (940, 94000, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 19),
  -- Wattrel - Swift - TM032
  (940, 94000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Wattrel - Air Cutter - TM040
  (940, 94000, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 21),
  -- Wattrel - Endure - TM047
  (940, 94000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Wattrel - Volt Switch - TM048
  (940, 94000, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 23),
  -- Wattrel - U-turn - TM060
  (940, 94000, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 24),
  -- Wattrel - Air Slash - TM065
  (940, 94000, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 25),
  -- Wattrel - Sleep Talk - TM070
  (940, 94000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Wattrel - Electro Ball - TM072
  (940, 94000, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 27),
  -- Wattrel - Thunder Wave - TM082
  (940, 94000, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 28),
  -- Wattrel - Rest - TM085
  (940, 94000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Wattrel - Eerie Impulse - TM096
  (940, 94000, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 30),
  -- Wattrel - Fly - TM097
  (940, 94000, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 31),
  -- Wattrel - Substitute - TM103
  (940, 94000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Wattrel - Tailwind - TM113
  (940, 94000, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 33),
  -- Wattrel - Thunderbolt - TM126
  (940, 94000, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 34),
  -- Wattrel - Electric Terrain - TM136
  (940, 94000, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 35),
  -- Wattrel - Wild Charge - TM147
  (940, 94000, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 36),
  -- Wattrel - Hurricane - TM160
  (940, 94000, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 37),
  -- Wattrel - Brave Bird - TM164
  (940, 94000, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 38),
  -- Wattrel - Thunder - TM166
  (940, 94000, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 39),
  -- Wattrel - Tera Blast - TM171
  (940, 94000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 40),
  -- Wattrel - Stockpile - Egg
  (940, 94000, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Wattrel - Spit Up - Egg
  (940, 94000, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Wattrel - Swallow - Egg
  (940, 94000, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Wattrel - Endeavor - Egg
  (940, 94000, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Wattrel - Feather Dance - Egg
  (940, 94000, 297, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Wattrel - Weather Ball - Egg
  (940, 94000, 311, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Kilowattrel - Growl - Level 1
  (941, 94100, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kilowattrel - Peck - Level 1
  (941, 94100, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kilowattrel - Thunder Shock - Level 4
  (941, 94100, 84, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Kilowattrel - Quick Attack - Level 7
  (941, 94100, 98, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Kilowattrel - Pluck - Level 11
  (941, 94100, 365, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Kilowattrel - Spark - Level 15
  (941, 94100, 209, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Kilowattrel - Uproar - Level 19
  (941, 94100, 253, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Kilowattrel - Roost - Level 24
  (941, 94100, 355, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Kilowattrel - Dual Wingbeat - Level 30
  (941, 94100, 814, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Kilowattrel - Agility - Level 36
  (941, 94100, 97, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Kilowattrel - Volt Switch - Level 43
  (941, 94100, 521, 23, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Kilowattrel - Discharge - Level 48
  (941, 94100, 435, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Kilowattrel - Hurricane - Level 55
  (941, 94100, 542, 23, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Kilowattrel - Take Down - TM001
  (941, 94100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Kilowattrel - Agility - TM004
  (941, 94100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Kilowattrel - Scary Face - TM006
  (941, 94100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Kilowattrel - Protect - TM007
  (941, 94100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Kilowattrel - Acrobatics - TM014
  (941, 94100, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 18),
  -- Kilowattrel - Charge Beam - TM023
  (941, 94100, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 19),
  -- Kilowattrel - Facade - TM025
  (941, 94100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Kilowattrel - Aerial Ace - TM027
  (941, 94100, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Kilowattrel - Swift - TM032
  (941, 94100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Kilowattrel - Air Cutter - TM040
  (941, 94100, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 23),
  -- Kilowattrel - Endure - TM047
  (941, 94100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Kilowattrel - Volt Switch - TM048
  (941, 94100, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 25),
  -- Kilowattrel - U-turn - TM060
  (941, 94100, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 26),
  -- Kilowattrel - Air Slash - TM065
  (941, 94100, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 27),
  -- Kilowattrel - Sleep Talk - TM070
  (941, 94100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Kilowattrel - Electro Ball - TM072
  (941, 94100, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 29),
  -- Kilowattrel - Thunder Wave - TM082
  (941, 94100, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 30),
  -- Kilowattrel - Rest - TM085
  (941, 94100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Kilowattrel - Eerie Impulse - TM096
  (941, 94100, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 32),
  -- Kilowattrel - Fly - TM097
  (941, 94100, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 33),
  -- Kilowattrel - Substitute - TM103
  (941, 94100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Kilowattrel - Tailwind - TM113
  (941, 94100, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 35),
  -- Kilowattrel - Thunderbolt - TM126
  (941, 94100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 36),
  -- Kilowattrel - Electric Terrain - TM136
  (941, 94100, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 37),
  -- Kilowattrel - Wild Charge - TM147
  (941, 94100, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 38),
  -- Kilowattrel - Giga Impact - TM152
  (941, 94100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 39),
  -- Kilowattrel - Hurricane - TM160
  (941, 94100, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 40),
  -- Kilowattrel - Hyper Beam - TM163
  (941, 94100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 41),
  -- Kilowattrel - Brave Bird - TM164
  (941, 94100, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 42),
  -- Kilowattrel - Thunder - TM166
  (941, 94100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 43),
  -- Kilowattrel - Tera Blast - TM171
  (941, 94100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Kilowattrel - Stockpile - Egg
  (941, 94100, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Kilowattrel - Spit Up - Egg
  (941, 94100, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Kilowattrel - Swallow - Egg
  (941, 94100, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Kilowattrel - Endeavor - Egg
  (941, 94100, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Kilowattrel - Feather Dance - Egg
  (941, 94100, 297, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Kilowattrel - Weather Ball - Egg
  (941, 94100, 311, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Kilowattrel - Electro Ball - Evolution
  (941, 94100, 486, 23, NULL, 7, NULL, NULL, NULL, NULL, 51),
  -- Maschiff - Tackle - Level 1
  (942, 94200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Maschiff - Leer - Level 1
  (942, 94200, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Maschiff - Scary Face - Level 1
  (942, 94200, 184, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Maschiff - Lick - Level 4
  (942, 94200, 122, 23, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Maschiff - Snarl - Level 7
  (942, 94200, 555, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Maschiff - Hone Claws - Level 10
  (942, 94200, 468, 23, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Maschiff - Bite - Level 14
  (942, 94200, 44, 23, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Maschiff - Roar - Level 18
  (942, 94200, 46, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Maschiff - Headbutt - Level 22
  (942, 94200, 29, 23, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Maschiff - Payback - Level 26
  (942, 94200, 371, 23, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Maschiff - Crunch - Level 31
  (942, 94200, 242, 23, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Maschiff - Swagger - Level 35
  (942, 94200, 207, 23, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Maschiff - Reversal - Level 39
  (942, 94200, 179, 23, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Maschiff - Jaw Lock - Level 43
  (942, 94200, 746, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Maschiff - Double-Edge - Level 49
  (942, 94200, 38, 23, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Maschiff - Take Down - TM001
  (942, 94200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Maschiff - Charm - TM002
  (942, 94200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Maschiff - Fake Tears - TM003
  (942, 94200, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 18),
  -- Maschiff - Scary Face - TM006
  (942, 94200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Maschiff - Protect - TM007
  (942, 94200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Maschiff - Fire Fang - TM008
  (942, 94200, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 21),
  -- Maschiff - Thunder Fang - TM009
  (942, 94200, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 22),
  -- Maschiff - Ice Fang - TM010
  (942, 94200, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 23),
  -- Maschiff - Thief - TM018
  (942, 94200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 24),
  -- Maschiff - Trailblaze - TM020
  (942, 94200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 25),
  -- Maschiff - Facade - TM025
  (942, 94200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Maschiff - Snarl - TM030
  (942, 94200, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Maschiff - Endure - TM047
  (942, 94200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Maschiff - Sunny Day - TM049
  (942, 94200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Maschiff - Rain Dance - TM050
  (942, 94200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Maschiff - Dig - TM055
  (942, 94200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Maschiff - Psychic Fangs - TM063
  (942, 94200, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 32),
  -- Maschiff - Body Slam - TM066
  (942, 94200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Maschiff - Sleep Talk - TM070
  (942, 94200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Maschiff - Rest - TM085
  (942, 94200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Maschiff - Taunt - TM087
  (942, 94200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 36),
  -- Maschiff - Dark Pulse - TM094
  (942, 94200, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 37),
  -- Maschiff - Substitute - TM103
  (942, 94200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Maschiff - Crunch - TM108
  (942, 94200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 39),
  -- Maschiff - Play Rough - TM127
  (942, 94200, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 40),
  -- Maschiff - Helping Hand - TM130
  (942, 94200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Maschiff - Reversal - TM134
  (942, 94200, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 42),
  -- Maschiff - Tera Blast - TM171
  (942, 94200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Maschiff - Destiny Bond - Egg
  (942, 94200, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Maschiff - Endeavor - Egg
  (942, 94200, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Maschiff - Retaliate - Egg
  (942, 94200, 514, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Maschiff - Play Rough - Egg
  (942, 94200, 583, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mabosstiff - Tackle - Level 1
  (943, 94300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mabosstiff - Leer - Level 1
  (943, 94300, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mabosstiff - Scary Face - Level 1
  (943, 94300, 184, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mabosstiff - Lick - Level 4
  (943, 94300, 122, 23, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Mabosstiff - Snarl - Level 7
  (943, 94300, 555, 23, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Mabosstiff - Hone Claws - Level 10
  (943, 94300, 468, 23, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Mabosstiff - Bite - Level 14
  (943, 94300, 44, 23, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Mabosstiff - Roar - Level 18
  (943, 94300, 46, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Mabosstiff - Headbutt - Level 22
  (943, 94300, 29, 23, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Mabosstiff - Payback - Level 26
  (943, 94300, 371, 23, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Mabosstiff - Crunch - Level 34
  (943, 94300, 242, 23, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Mabosstiff - Swagger - Level 39
  (943, 94300, 207, 23, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Mabosstiff - Reversal - Level 43
  (943, 94300, 179, 23, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Mabosstiff - Jaw Lock - Level 48
  (943, 94300, 746, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Mabosstiff - Double-Edge - Level 55
  (943, 94300, 38, 23, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Mabosstiff - Outrage - Level 60
  (943, 94300, 200, 23, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Mabosstiff - Take Down - TM001
  (943, 94300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Mabosstiff - Charm - TM002
  (943, 94300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 18),
  -- Mabosstiff - Fake Tears - TM003
  (943, 94300, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 19),
  -- Mabosstiff - Scary Face - TM006
  (943, 94300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Mabosstiff - Protect - TM007
  (943, 94300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Mabosstiff - Fire Fang - TM008
  (943, 94300, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 22),
  -- Mabosstiff - Thunder Fang - TM009
  (943, 94300, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 23),
  -- Mabosstiff - Ice Fang - TM010
  (943, 94300, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 24),
  -- Mabosstiff - Thief - TM018
  (943, 94300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Mabosstiff - Trailblaze - TM020
  (943, 94300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 26),
  -- Mabosstiff - Facade - TM025
  (943, 94300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Mabosstiff - Snarl - TM030
  (943, 94300, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 28),
  -- Mabosstiff - Endure - TM047
  (943, 94300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Mabosstiff - Sunny Day - TM049
  (943, 94300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Mabosstiff - Rain Dance - TM050
  (943, 94300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Mabosstiff - Dig - TM055
  (943, 94300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Mabosstiff - Psychic Fangs - TM063
  (943, 94300, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 33),
  -- Mabosstiff - Body Slam - TM066
  (943, 94300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Mabosstiff - Sleep Talk - TM070
  (943, 94300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Mabosstiff - Rest - TM085
  (943, 94300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Mabosstiff - Taunt - TM087
  (943, 94300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Mabosstiff - Dark Pulse - TM094
  (943, 94300, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 38),
  -- Mabosstiff - Substitute - TM103
  (943, 94300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Mabosstiff - Crunch - TM108
  (943, 94300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 40),
  -- Mabosstiff - Hyper Voice - TM117
  (943, 94300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 41),
  -- Mabosstiff - Play Rough - TM127
  (943, 94300, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 42),
  -- Mabosstiff - Helping Hand - TM130
  (943, 94300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 43),
  -- Mabosstiff - Reversal - TM134
  (943, 94300, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 44),
  -- Mabosstiff - Wild Charge - TM147
  (943, 94300, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 45),
  -- Mabosstiff - Giga Impact - TM152
  (943, 94300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Mabosstiff - Outrage - TM156
  (943, 94300, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 47),
  -- Mabosstiff - Hyper Beam - TM163
  (943, 94300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Mabosstiff - Tera Blast - TM171
  (943, 94300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Mabosstiff - Destiny Bond - Egg
  (943, 94300, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Mabosstiff - Endeavor - Egg
  (943, 94300, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Mabosstiff - Retaliate - Egg
  (943, 94300, 514, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mabosstiff - Play Rough - Egg
  (943, 94300, 583, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mabosstiff - Comeuppance - Evolution
  (943, 94300, 894, 23, NULL, 7, NULL, NULL, NULL, NULL, 54),
  -- Shroodle - Scratch - Level 1
  (944, 94400, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shroodle - Leer - Level 1
  (944, 94400, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shroodle - Acid Spray - Level 5
  (944, 94400, 491, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Shroodle - Bite - Level 8
  (944, 94400, 44, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Shroodle - Fury Swipes - Level 8
  (944, 94400, 154, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Shroodle - Switcheroo - Level 11
  (944, 94400, 415, 23, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Shroodle - Poison Fang - Level 14
  (944, 94400, 305, 23, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Shroodle - Flatter - Level 18
  (944, 94400, 260, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Shroodle - Slash - Level 21
  (944, 94400, 163, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Shroodle - U-turn - Level 25
  (944, 94400, 369, 23, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Shroodle - Poison Jab - Level 29
  (944, 94400, 398, 23, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Shroodle - Taunt - Level 33
  (944, 94400, 269, 23, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Shroodle - Substitute - Level 36
  (944, 94400, 164, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Shroodle - Knock Off - Level 40
  (944, 94400, 282, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Shroodle - Gunk Shot - Level 45
  (944, 94400, 441, 23, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Shroodle - Take Down - TM001
  (944, 94400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Shroodle - Mud-Slap - TM005
  (944, 94400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Shroodle - Protect - TM007
  (944, 94400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Shroodle - Acid Spray - TM013
  (944, 94400, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 19),
  -- Shroodle - Acrobatics - TM014
  (944, 94400, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Shroodle - Thief - TM018
  (944, 94400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Shroodle - Trailblaze - TM020
  (944, 94400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Shroodle - Pounce - TM021
  (944, 94400, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 23),
  -- Shroodle - Facade - TM025
  (944, 94400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Shroodle - Mud Shot - TM035
  (944, 94400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 25),
  -- Shroodle - Fling - TM043
  (944, 94400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Shroodle - Venoshock - TM045
  (944, 94400, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 27),
  -- Shroodle - Endure - TM047
  (944, 94400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Shroodle - Sunny Day - TM049
  (944, 94400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Shroodle - Rain Dance - TM050
  (944, 94400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Shroodle - Dig - TM055
  (944, 94400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Shroodle - U-turn - TM060
  (944, 94400, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 32),
  -- Shroodle - Foul Play - TM062
  (944, 94400, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 33),
  -- Shroodle - Sleep Talk - TM070
  (944, 94400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Shroodle - Metronome - TM080
  (944, 94400, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 35),
  -- Shroodle - Poison Jab - TM083
  (944, 94400, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 36),
  -- Shroodle - Rest - TM085
  (944, 94400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Shroodle - Taunt - TM087
  (944, 94400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Shroodle - Swords Dance - TM088
  (944, 94400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 39),
  -- Shroodle - Gunk Shot - TM102
  (944, 94400, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 40),
  -- Shroodle - Substitute - TM103
  (944, 94400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Shroodle - Encore - TM122
  (944, 94400, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 42),
  -- Shroodle - Helping Hand - TM130
  (944, 94400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 43),
  -- Shroodle - Baton Pass - TM132
  (944, 94400, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 44),
  -- Shroodle - Nasty Plot - TM140
  (944, 94400, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 45),
  -- Shroodle - Sludge Bomb - TM148
  (944, 94400, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 46),
  -- Shroodle - Tera Blast - TM171
  (944, 94400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 47),
  -- Shroodle - Toxic - Egg
  (944, 94400, 92, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Shroodle - Super Fang - Egg
  (944, 94400, 162, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Shroodle - Swagger - Egg
  (944, 94400, 207, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Shroodle - Copycat - Egg
  (944, 94400, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Shroodle - Cross Poison - Egg
  (944, 94400, 440, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Shroodle - Parting Shot - Egg
  (944, 94400, 575, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Grafaiai - Scratch - Level 1
  (945, 94500, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grafaiai - Leer - Level 1
  (945, 94500, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grafaiai - Acid Spray - Level 5
  (945, 94500, 491, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Grafaiai - Fury Swipes - Level 8
  (945, 94500, 154, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Grafaiai - Switcheroo - Level 11
  (945, 94500, 415, 23, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Grafaiai - Poison Fang - Level 14
  (945, 94500, 305, 23, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Grafaiai - Flatter - Level 18
  (945, 94500, 260, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Grafaiai - Slash - Level 21
  (945, 94500, 163, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Grafaiai - U-turn - Level 25
  (945, 94500, 369, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Grafaiai - Poison Jab - Level 33
  (945, 94500, 398, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Grafaiai - Taunt - Level 37
  (945, 94500, 269, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Grafaiai - Substitute - Level 40
  (945, 94500, 164, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Grafaiai - Knock Off - Level 45
  (945, 94500, 282, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Grafaiai - Gunk Shot - Level 51
  (945, 94500, 441, 23, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Grafaiai - Take Down - TM001
  (945, 94500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Grafaiai - Mud-Slap - TM005
  (945, 94500, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Grafaiai - Scary Face - TM006
  (945, 94500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Grafaiai - Protect - TM007
  (945, 94500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Grafaiai - Low Kick - TM012
  (945, 94500, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Grafaiai - Acid Spray - TM013
  (945, 94500, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 20),
  -- Grafaiai - Acrobatics - TM014
  (945, 94500, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Grafaiai - Thief - TM018
  (945, 94500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Grafaiai - Trailblaze - TM020
  (945, 94500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Grafaiai - Pounce - TM021
  (945, 94500, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 24),
  -- Grafaiai - Facade - TM025
  (945, 94500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Grafaiai - Poison Tail - TM026
  (945, 94500, 342, 23, NULL, 2, NULL, NULL, 23002026, NULL, 26),
  -- Grafaiai - Mud Shot - TM035
  (945, 94500, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Grafaiai - Low Sweep - TM039
  (945, 94500, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 28),
  -- Grafaiai - Fling - TM043
  (945, 94500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Grafaiai - Venoshock - TM045
  (945, 94500, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 30),
  -- Grafaiai - Endure - TM047
  (945, 94500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Grafaiai - Sunny Day - TM049
  (945, 94500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Grafaiai - Rain Dance - TM050
  (945, 94500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Grafaiai - Dig - TM055
  (945, 94500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Grafaiai - U-turn - TM060
  (945, 94500, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 35),
  -- Grafaiai - Shadow Claw - TM061
  (945, 94500, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 36),
  -- Grafaiai - Foul Play - TM062
  (945, 94500, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 37),
  -- Grafaiai - Sleep Talk - TM070
  (945, 94500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Grafaiai - Metronome - TM080
  (945, 94500, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 39),
  -- Grafaiai - Poison Jab - TM083
  (945, 94500, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 40),
  -- Grafaiai - Rest - TM085
  (945, 94500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Grafaiai - Taunt - TM087
  (945, 94500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 42),
  -- Grafaiai - Swords Dance - TM088
  (945, 94500, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 43),
  -- Grafaiai - Gunk Shot - TM102
  (945, 94500, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 44),
  -- Grafaiai - Substitute - TM103
  (945, 94500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Grafaiai - X-Scissor - TM105
  (945, 94500, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 46),
  -- Grafaiai - Encore - TM122
  (945, 94500, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 47),
  -- Grafaiai - Helping Hand - TM130
  (945, 94500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Grafaiai - Baton Pass - TM132
  (945, 94500, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 49),
  -- Grafaiai - Nasty Plot - TM140
  (945, 94500, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 50),
  -- Grafaiai - Sludge Bomb - TM148
  (945, 94500, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 51),
  -- Grafaiai - Giga Impact - TM152
  (945, 94500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 52),
  -- Grafaiai - Tera Blast - TM171
  (945, 94500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Grafaiai - Toxic - Egg
  (945, 94500, 92, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Grafaiai - Super Fang - Egg
  (945, 94500, 162, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Grafaiai - Swagger - Egg
  (945, 94500, 207, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Grafaiai - Copycat - Egg
  (945, 94500, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Grafaiai - Cross Poison - Egg
  (945, 94500, 440, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Grafaiai - Parting Shot - Egg
  (945, 94500, 575, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Grafaiai - Doodle - Evolution
  (945, 94500, 867, 23, NULL, 7, NULL, NULL, NULL, NULL, 60),
  -- Bramblin - Defense Curl - Level 1
  (946, 94600, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bramblin - Rollout - Level 1
  (946, 94600, 205, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bramblin - Astonish - Level 1
  (946, 94600, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bramblin - Absorb - Level 5
  (946, 94600, 71, 23, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Bramblin - Rapid Spin - Level 9
  (946, 94600, 229, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Bramblin - Bullet Seed - Level 13
  (946, 94600, 331, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Bramblin - Infestation - Level 17
  (946, 94600, 611, 23, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Bramblin - Hex - Level 21
  (946, 94600, 506, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Bramblin - Mega Drain - Level 25
  (946, 94600, 72, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Bramblin - Disable - Level 29
  (946, 94600, 50, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Bramblin - Phantom Force - Level 35
  (946, 94600, 566, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Bramblin - Giga Drain - Level 40
  (946, 94600, 202, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Bramblin - Curse - Level 45
  (946, 94600, 174, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Bramblin - Pain Split - Level 50
  (946, 94600, 220, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Bramblin - Power Whip - Level 55
  (946, 94600, 438, 23, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Bramblin - Scary Face - TM006
  (946, 94600, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Bramblin - Protect - TM007
  (946, 94600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Bramblin - Confuse Ray - TM017
  (946, 94600, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 18),
  -- Bramblin - Thief - TM018
  (946, 94600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Bramblin - Trailblaze - TM020
  (946, 94600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Bramblin - Pounce - TM021
  (946, 94600, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 21),
  -- Bramblin - Facade - TM025
  (946, 94600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Bramblin - Hex - TM029
  (946, 94600, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 23),
  -- Bramblin - Night Shade - TM042
  (946, 94600, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 24),
  -- Bramblin - Endure - TM047
  (946, 94600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Bramblin - Bullet Seed - TM056
  (946, 94600, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 26),
  -- Bramblin - Sleep Talk - TM070
  (946, 94600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Bramblin - Seed Bomb - TM071
  (946, 94600, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 28),
  -- Bramblin - Grass Knot - TM081
  (946, 94600, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 29),
  -- Bramblin - Rest - TM085
  (946, 94600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Bramblin - Spikes - TM090
  (946, 94600, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 31),
  -- Bramblin - Substitute - TM103
  (946, 94600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Bramblin - Giga Drain - TM111
  (946, 94600, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 33),
  -- Bramblin - Shadow Ball - TM114
  (946, 94600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 34),
  -- Bramblin - Energy Ball - TM119
  (946, 94600, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 35),
  -- Bramblin - Grassy Terrain - TM137
  (946, 94600, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 36),
  -- Bramblin - Phantom Force - TM151
  (946, 94600, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 37),
  -- Bramblin - Leaf Storm - TM159
  (946, 94600, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 38),
  -- Bramblin - Solar Beam - TM168
  (946, 94600, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 39),
  -- Bramblin - Tera Blast - TM171
  (946, 94600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 40),
  -- Bramblin - Leech Seed - Egg
  (946, 94600, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Bramblin - Beat Up - Egg
  (946, 94600, 251, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Bramblin - Block - Egg
  (946, 94600, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bramblin - Shadow Sneak - Egg
  (946, 94600, 425, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bramblin - Strength Sap - Egg
  (946, 94600, 668, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Brambleghast - Defense Curl - Level 1
  (947, 94700, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Brambleghast - Rollout - Level 1
  (947, 94700, 205, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Brambleghast - Astonish - Level 1
  (947, 94700, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Brambleghast - Absorb - Level 5
  (947, 94700, 71, 23, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Brambleghast - Rapid Spin - Level 9
  (947, 94700, 229, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Brambleghast - Bullet Seed - Level 13
  (947, 94700, 331, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Brambleghast - Infestation - Level 17
  (947, 94700, 611, 23, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Brambleghast - Hex - Level 21
  (947, 94700, 506, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Brambleghast - Mega Drain - Level 25
  (947, 94700, 72, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Brambleghast - Disable - Level 29
  (947, 94700, 50, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Brambleghast - Phantom Force - Level 35
  (947, 94700, 566, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Brambleghast - Giga Drain - Level 40
  (947, 94700, 202, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Brambleghast - Curse - Level 45
  (947, 94700, 174, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Brambleghast - Pain Split - Level 50
  (947, 94700, 220, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Brambleghast - Power Whip - Level 55
  (947, 94700, 438, 23, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Brambleghast - Scary Face - TM006
  (947, 94700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Brambleghast - Protect - TM007
  (947, 94700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Brambleghast - Confuse Ray - TM017
  (947, 94700, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 18),
  -- Brambleghast - Thief - TM018
  (947, 94700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Brambleghast - Trailblaze - TM020
  (947, 94700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Brambleghast - Pounce - TM021
  (947, 94700, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 21),
  -- Brambleghast - Facade - TM025
  (947, 94700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Brambleghast - Hex - TM029
  (947, 94700, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 23),
  -- Brambleghast - Night Shade - TM042
  (947, 94700, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 24),
  -- Brambleghast - Endure - TM047
  (947, 94700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Brambleghast - Bullet Seed - TM056
  (947, 94700, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 26),
  -- Brambleghast - Sleep Talk - TM070
  (947, 94700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Brambleghast - Seed Bomb - TM071
  (947, 94700, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 28),
  -- Brambleghast - Grass Knot - TM081
  (947, 94700, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 29),
  -- Brambleghast - Rest - TM085
  (947, 94700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Brambleghast - Spikes - TM090
  (947, 94700, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 31),
  -- Brambleghast - Substitute - TM103
  (947, 94700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Brambleghast - Giga Drain - TM111
  (947, 94700, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 33),
  -- Brambleghast - Shadow Ball - TM114
  (947, 94700, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 34),
  -- Brambleghast - Energy Ball - TM119
  (947, 94700, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 35),
  -- Brambleghast - Grassy Terrain - TM137
  (947, 94700, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 36),
  -- Brambleghast - Phantom Force - TM151
  (947, 94700, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 37),
  -- Brambleghast - Giga Impact - TM152
  (947, 94700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 38),
  -- Brambleghast - Leaf Storm - TM159
  (947, 94700, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 39),
  -- Brambleghast - Hyper Beam - TM163
  (947, 94700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 40),
  -- Brambleghast - Solar Beam - TM168
  (947, 94700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 41),
  -- Brambleghast - Tera Blast - TM171
  (947, 94700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Brambleghast - Leech Seed - Egg
  (947, 94700, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Brambleghast - Beat Up - Egg
  (947, 94700, 251, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Brambleghast - Block - Egg
  (947, 94700, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Brambleghast - Shadow Sneak - Egg
  (947, 94700, 425, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Brambleghast - Strength Sap - Egg
  (947, 94700, 668, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Toedscool - Wrap - Level 1
  (948, 94800, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toedscool - Mud-Slap - Level 1
  (948, 94800, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toedscool - Absorb - Level 4
  (948, 94800, 71, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Toedscool - Poison Powder - Level 8
  (948, 94800, 77, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Toedscool - Stun Spore - Level 8
  (948, 94800, 78, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Toedscool - Supersonic - Level 12
  (948, 94800, 48, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Toedscool - Tackle - Level 15
  (948, 94800, 33, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Toedscool - Mega Drain - Level 16
  (948, 94800, 72, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Toedscool - Screech - Level 20
  (948, 94800, 103, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Toedscool - Mud Shot - Level 24
  (948, 94800, 341, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Toedscool - Hex - Level 28
  (948, 94800, 506, 23, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Toedscool - Seed Bomb - Level 32
  (948, 94800, 402, 23, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Toedscool - Spore - Level 36
  (948, 94800, 147, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Toedscool - Growth - Level 40
  (948, 94800, 74, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Toedscool - Giga Drain - Level 44
  (948, 94800, 202, 23, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Toedscool - Earth Power - Level 48
  (948, 94800, 414, 23, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Toedscool - Power Whip - Level 52
  (948, 94800, 438, 23, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Toedscool - Mud-Slap - TM005
  (948, 94800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Toedscool - Scary Face - TM006
  (948, 94800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Toedscool - Protect - TM007
  (948, 94800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Toedscool - Acid Spray - TM013
  (948, 94800, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 21),
  -- Toedscool - Confuse Ray - TM017
  (948, 94800, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Toedscool - Trailblaze - TM020
  (948, 94800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Toedscool - Hex - TM029
  (948, 94800, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 24),
  -- Toedscool - Swift - TM032
  (948, 94800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Toedscool - Magical Leaf - TM033
  (948, 94800, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 26),
  -- Toedscool - Mud Shot - TM035
  (948, 94800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Toedscool - Venoshock - TM045
  (948, 94800, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 28),
  -- Toedscool - Endure - TM047
  (948, 94800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Toedscool - Rain Dance - TM050
  (948, 94800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Toedscool - Bullet Seed - TM056
  (948, 94800, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 31),
  -- Toedscool - Foul Play - TM062
  (948, 94800, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 32),
  -- Toedscool - Sleep Talk - TM070
  (948, 94800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Toedscool - Seed Bomb - TM071
  (948, 94800, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 34),
  -- Toedscool - Reflect - TM074
  (948, 94800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 35),
  -- Toedscool - Light Screen - TM075
  (948, 94800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 36),
  -- Toedscool - Dazzling Gleam - TM079
  (948, 94800, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 37),
  -- Toedscool - Grass Knot - TM081
  (948, 94800, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 38),
  -- Toedscool - Rest - TM085
  (948, 94800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Toedscool - Taunt - TM087
  (948, 94800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 40),
  -- Toedscool - Spikes - TM090
  (948, 94800, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 41),
  -- Toedscool - Toxic Spikes - TM091
  (948, 94800, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 42),
  -- Toedscool - Flash Cannon - TM093
  (948, 94800, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 43),
  -- Toedscool - Substitute - TM103
  (948, 94800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Toedscool - Giga Drain - TM111
  (948, 94800, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 45),
  -- Toedscool - Energy Ball - TM119
  (948, 94800, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 46),
  -- Toedscool - Earth Power - TM133
  (948, 94800, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 47),
  -- Toedscool - Grassy Terrain - TM137
  (948, 94800, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 48),
  -- Toedscool - Sludge Bomb - TM148
  (948, 94800, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 49),
  -- Toedscool - Leaf Storm - TM159
  (948, 94800, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 50),
  -- Toedscool - Trick Room - TM161
  (948, 94800, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 51),
  -- Toedscool - Solar Beam - TM168
  (948, 94800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 52),
  -- Toedscool - Tera Blast - TM171
  (948, 94800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Toedscool - Leech Seed - Egg
  (948, 94800, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Toedscool - Toxic - Egg
  (948, 94800, 92, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Toedscool - Rapid Spin - Egg
  (948, 94800, 229, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Toedscool - Mirror Coat - Egg
  (948, 94800, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Toedscool - Knock Off - Egg
  (948, 94800, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Toedscool - Tickle - Egg
  (948, 94800, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Toedscool - Acupressure - Egg
  (948, 94800, 367, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Toedscool - Rage Powder - Egg
  (948, 94800, 476, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Toedscruel - Wrap - Level 1
  (949, 94900, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toedscruel - Mud-Slap - Level 1
  (949, 94900, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toedscruel - Reflect Type - Level 1
  (949, 94900, 513, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toedscruel - Absorb - Level 4
  (949, 94900, 71, 23, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Toedscruel - Poison Powder - Level 8
  (949, 94900, 77, 23, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Toedscruel - Stun Spore - Level 8
  (949, 94900, 78, 23, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Toedscruel - Supersonic - Level 12
  (949, 94900, 48, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Toedscruel - Tackle - Level 15
  (949, 94900, 33, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Toedscruel - Mega Drain - Level 16
  (949, 94900, 72, 23, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Toedscruel - Screech - Level 20
  (949, 94900, 103, 23, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Toedscruel - Mud Shot - Level 24
  (949, 94900, 341, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Toedscruel - Hex - Level 28
  (949, 94900, 506, 23, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Toedscruel - Seed Bomb - Level 34
  (949, 94900, 402, 23, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Toedscruel - Spore - Level 40
  (949, 94900, 147, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Toedscruel - Growth - Level 44
  (949, 94900, 74, 23, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Toedscruel - Giga Drain - Level 48
  (949, 94900, 202, 23, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Toedscruel - Earth Power - Level 54
  (949, 94900, 414, 23, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Toedscruel - Power Whip - Level 58
  (949, 94900, 438, 23, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Toedscruel - Mud-Slap - TM005
  (949, 94900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Toedscruel - Scary Face - TM006
  (949, 94900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Toedscruel - Protect - TM007
  (949, 94900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Toedscruel - Acid Spray - TM013
  (949, 94900, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 22),
  -- Toedscruel - Confuse Ray - TM017
  (949, 94900, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 23),
  -- Toedscruel - Trailblaze - TM020
  (949, 94900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Toedscruel - Hex - TM029
  (949, 94900, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 25),
  -- Toedscruel - Swift - TM032
  (949, 94900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Toedscruel - Magical Leaf - TM033
  (949, 94900, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 27),
  -- Toedscruel - Mud Shot - TM035
  (949, 94900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 28),
  -- Toedscruel - Venoshock - TM045
  (949, 94900, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 29),
  -- Toedscruel - Endure - TM047
  (949, 94900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Toedscruel - Rain Dance - TM050
  (949, 94900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Toedscruel - Bullet Seed - TM056
  (949, 94900, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 32),
  -- Toedscruel - Foul Play - TM062
  (949, 94900, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 33),
  -- Toedscruel - Sleep Talk - TM070
  (949, 94900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Toedscruel - Seed Bomb - TM071
  (949, 94900, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 35),
  -- Toedscruel - Reflect - TM074
  (949, 94900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 36),
  -- Toedscruel - Light Screen - TM075
  (949, 94900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 37),
  -- Toedscruel - Dazzling Gleam - TM079
  (949, 94900, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 38),
  -- Toedscruel - Grass Knot - TM081
  (949, 94900, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 39),
  -- Toedscruel - Rest - TM085
  (949, 94900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Toedscruel - Taunt - TM087
  (949, 94900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Toedscruel - Spikes - TM090
  (949, 94900, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 42),
  -- Toedscruel - Toxic Spikes - TM091
  (949, 94900, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 43),
  -- Toedscruel - Flash Cannon - TM093
  (949, 94900, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 44),
  -- Toedscruel - Substitute - TM103
  (949, 94900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Toedscruel - Giga Drain - TM111
  (949, 94900, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 46),
  -- Toedscruel - Energy Ball - TM119
  (949, 94900, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 47),
  -- Toedscruel - Earth Power - TM133
  (949, 94900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 48),
  -- Toedscruel - Grassy Terrain - TM137
  (949, 94900, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 49),
  -- Toedscruel - Sludge Bomb - TM148
  (949, 94900, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 50),
  -- Toedscruel - Giga Impact - TM152
  (949, 94900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Toedscruel - Leaf Storm - TM159
  (949, 94900, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 52),
  -- Toedscruel - Trick Room - TM161
  (949, 94900, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 53),
  -- Toedscruel - Hyper Beam - TM163
  (949, 94900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 54),
  -- Toedscruel - Solar Beam - TM168
  (949, 94900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 55),
  -- Toedscruel - Tera Blast - TM171
  (949, 94900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Toedscruel - Leech Seed - Egg
  (949, 94900, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Toedscruel - Toxic - Egg
  (949, 94900, 92, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Toedscruel - Rapid Spin - Egg
  (949, 94900, 229, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Toedscruel - Mirror Coat - Egg
  (949, 94900, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Toedscruel - Knock Off - Egg
  (949, 94900, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Toedscruel - Tickle - Egg
  (949, 94900, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Toedscruel - Acupressure - Egg
  (949, 94900, 367, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Toedscruel - Rage Powder - Egg
  (949, 94900, 476, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Klawf - Vise Grip - Level 1
  (950, 95000, 11, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Klawf - Rock Throw - Level 1
  (950, 95000, 88, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Klawf - Harden - Level 6
  (950, 95000, 106, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Klawf - Rock Smash - Level 9
  (950, 95000, 249, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Klawf - Rock Tomb - Level 13
  (950, 95000, 317, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Klawf - Metal Claw - Level 17
  (950, 95000, 232, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Klawf - Protect - Level 21
  (950, 95000, 182, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Klawf - Rock Blast - Level 24
  (950, 95000, 350, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Klawf - X-Scissor - Level 29
  (950, 95000, 404, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Klawf - Swords Dance - Level 33
  (950, 95000, 14, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Klawf - Flail - Level 37
  (950, 95000, 175, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Klawf - Rock Slide - Level 42
  (950, 95000, 157, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Klawf - High Horsepower - Level 47
  (950, 95000, 667, 23, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Klawf - Iron Defense - Level 51
  (950, 95000, 334, 23, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Klawf - Guillotine - Level 56
  (950, 95000, 12, 23, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Klawf - Take Down - TM001
  (950, 95000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Klawf - Mud-Slap - TM005
  (950, 95000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Klawf - Scary Face - TM006
  (950, 95000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Klawf - Protect - TM007
  (950, 95000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Klawf - Thief - TM018
  (950, 95000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Klawf - Trailblaze - TM020
  (950, 95000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Klawf - Facade - TM025
  (950, 95000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Klawf - Bulldoze - TM028
  (950, 95000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Klawf - Metal Claw - TM031
  (950, 95000, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 24),
  -- Klawf - Mud Shot - TM035
  (950, 95000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 25),
  -- Klawf - Rock Tomb - TM036
  (950, 95000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Klawf - Fling - TM043
  (950, 95000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Klawf - Endure - TM047
  (950, 95000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Klawf - Sunny Day - TM049
  (950, 95000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Klawf - Rain Dance - TM050
  (950, 95000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Klawf - Sandstorm - TM051
  (950, 95000, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 31),
  -- Klawf - Dig - TM055
  (950, 95000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Klawf - Brick Break - TM058
  (950, 95000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Klawf - Shadow Claw - TM061
  (950, 95000, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 34),
  -- Klawf - Body Slam - TM066
  (950, 95000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Klawf - Sleep Talk - TM070
  (950, 95000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Klawf - Rock Blast - TM076
  (950, 95000, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 37),
  -- Klawf - Stomping Tantrum - TM084
  (950, 95000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 38),
  -- Klawf - Rest - TM085
  (950, 95000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Klawf - Rock Slide - TM086
  (950, 95000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 40),
  -- Klawf - Swords Dance - TM088
  (950, 95000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 41),
  -- Klawf - Power Gem - TM101
  (950, 95000, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 42),
  -- Klawf - Substitute - TM103
  (950, 95000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Klawf - Iron Defense - TM104
  (950, 95000, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 44),
  -- Klawf - X-Scissor - TM105
  (950, 95000, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 45),
  -- Klawf - Stealth Rock - TM116
  (950, 95000, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 46),
  -- Klawf - Helping Hand - TM130
  (950, 95000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Klawf - Earth Power - TM133
  (950, 95000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 48),
  -- Klawf - Reversal - TM134
  (950, 95000, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 49),
  -- Klawf - Stone Edge - TM150
  (950, 95000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 50),
  -- Klawf - Giga Impact - TM152
  (950, 95000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Klawf - Hyper Beam - TM163
  (950, 95000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Klawf - Tera Blast - TM171
  (950, 95000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Klawf - Crabhammer - Egg
  (950, 95000, 152, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Klawf - Ancient Power - Egg
  (950, 95000, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Klawf - Knock Off - Egg
  (950, 95000, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Klawf - Endeavor - Egg
  (950, 95000, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 57);
