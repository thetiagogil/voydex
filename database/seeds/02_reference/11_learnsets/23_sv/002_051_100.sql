-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Scarlet / Violet learnset pages.
-- Scope note: base Scarlet / Violet rows include level-up, base TM001-TM171, and egg moves for Pokémon compatible with this version-group scope.
-- DLC note: Teal Mask and Indigo Disk TM additions remain seeded as separate additive content-scope deltas.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Scarlet / Violet learnsets for species 051-100.
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
  (51, 5100, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dugtrio - Sand Attack - Level 1
  (51, 5100, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dugtrio - Growl - Level 1
  (51, 5100, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dugtrio - Tri Attack - Level 1
  (51, 5100, 161, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dugtrio - Astonish - Level 1
  (51, 5100, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dugtrio - Night Slash - Level 1
  (51, 5100, 400, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dugtrio - Mud-Slap - Level 12
  (51, 5100, 189, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Dugtrio - Bulldoze - Level 16
  (51, 5100, 523, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Dugtrio - Sucker Punch - Level 20
  (51, 5100, 389, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Dugtrio - Slash - Level 24
  (51, 5100, 163, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Dugtrio - Sandstorm - Level 30
  (51, 5100, 201, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Dugtrio - Dig - Level 36
  (51, 5100, 91, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Dugtrio - Earth Power - Level 42
  (51, 5100, 414, 23, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Dugtrio - Earthquake - Level 48
  (51, 5100, 89, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Dugtrio - Fissure - Level 54
  (51, 5100, 90, 23, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Dugtrio - Take Down - TM001
  (51, 5100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Dugtrio - Charm - TM002
  (51, 5100, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Dugtrio - Agility - TM004
  (51, 5100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Dugtrio - Mud-Slap - TM005
  (51, 5100, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Dugtrio - Protect - TM007
  (51, 5100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Dugtrio - Thief - TM018
  (51, 5100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Dugtrio - Facade - TM025
  (51, 5100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Dugtrio - Bulldoze - TM028
  (51, 5100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Dugtrio - Mud Shot - TM035
  (51, 5100, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Dugtrio - Rock Tomb - TM036
  (51, 5100, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Dugtrio - Endure - TM047
  (51, 5100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Dugtrio - Sunny Day - TM049
  (51, 5100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Dugtrio - Sandstorm - TM051
  (51, 5100, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 28),
  -- Dugtrio - Dig - TM055
  (51, 5100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 29),
  -- Dugtrio - Shadow Claw - TM061
  (51, 5100, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 30),
  -- Dugtrio - Foul Play - TM062
  (51, 5100, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 31),
  -- Dugtrio - Body Slam - TM066
  (51, 5100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Dugtrio - Sleep Talk - TM070
  (51, 5100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Dugtrio - Rock Blast - TM076
  (51, 5100, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 34),
  -- Dugtrio - Stomping Tantrum - TM084
  (51, 5100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 35),
  -- Dugtrio - Rest - TM085
  (51, 5100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Dugtrio - Rock Slide - TM086
  (51, 5100, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Dugtrio - Swords Dance - TM088
  (51, 5100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 38),
  -- Dugtrio - Substitute - TM103
  (51, 5100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Dugtrio - Stealth Rock - TM116
  (51, 5100, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 40),
  -- Dugtrio - Helping Hand - TM130
  (51, 5100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Dugtrio - Earth Power - TM133
  (51, 5100, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 42),
  -- Dugtrio - Reversal - TM134
  (51, 5100, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 43),
  -- Dugtrio - Sludge Bomb - TM148
  (51, 5100, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 44),
  -- Dugtrio - Earthquake - TM149
  (51, 5100, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 45),
  -- Dugtrio - Stone Edge - TM150
  (51, 5100, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 46),
  -- Dugtrio - Giga Impact - TM152
  (51, 5100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 47),
  -- Dugtrio - Hyper Beam - TM163
  (51, 5100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Dugtrio - Tera Blast - TM171
  (51, 5100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Dugtrio - Headbutt - Egg
  (51, 5100, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Dugtrio - Ancient Power - Egg
  (51, 5100, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Dugtrio - Memento - Egg
  (51, 5100, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Dugtrio - Hone Claws - Egg
  (51, 5100, 468, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Dugtrio - Final Gambit - Egg
  (51, 5100, 515, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Dugtrio - Sand Tomb - Evolution
  (51, 5100, 328, 23, NULL, 7, NULL, NULL, NULL, NULL, 55),
  -- Dugtrio (Alolan Dugtrio) - Sand Attack - Level 1
  (51, 5101, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dugtrio (Alolan Dugtrio) - Growl - Level 1
  (51, 5101, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dugtrio (Alolan Dugtrio) - Tri Attack - Level 1
  (51, 5101, 161, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dugtrio (Alolan Dugtrio) - Metal Claw - Level 1
  (51, 5101, 232, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dugtrio (Alolan Dugtrio) - Astonish - Level 1
  (51, 5101, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dugtrio (Alolan Dugtrio) - Night Slash - Level 1
  (51, 5101, 400, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dugtrio (Alolan Dugtrio) - Mud-Slap - Level 12
  (51, 5101, 189, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Dugtrio (Alolan Dugtrio) - Bulldoze - Level 16
  (51, 5101, 523, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Dugtrio (Alolan Dugtrio) - Sucker Punch - Level 20
  (51, 5101, 389, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Dugtrio (Alolan Dugtrio) - Iron Head - Level 24
  (51, 5101, 442, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Dugtrio (Alolan Dugtrio) - Sandstorm - Level 30
  (51, 5101, 201, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Dugtrio (Alolan Dugtrio) - Dig - Level 36
  (51, 5101, 91, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Dugtrio (Alolan Dugtrio) - Earth Power - Level 42
  (51, 5101, 414, 23, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Dugtrio (Alolan Dugtrio) - Earthquake - Level 48
  (51, 5101, 89, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Dugtrio (Alolan Dugtrio) - Fissure - Level 54
  (51, 5101, 90, 23, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Dugtrio (Alolan Dugtrio) - Take Down - TM001
  (51, 5101, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Dugtrio (Alolan Dugtrio) - Charm - TM002
  (51, 5101, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Dugtrio (Alolan Dugtrio) - Agility - TM004
  (51, 5101, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Dugtrio (Alolan Dugtrio) - Mud-Slap - TM005
  (51, 5101, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Dugtrio (Alolan Dugtrio) - Scary Face - TM006
  (51, 5101, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Dugtrio (Alolan Dugtrio) - Protect - TM007
  (51, 5101, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Dugtrio (Alolan Dugtrio) - Thief - TM018
  (51, 5101, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Dugtrio (Alolan Dugtrio) - Facade - TM025
  (51, 5101, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Dugtrio (Alolan Dugtrio) - Bulldoze - TM028
  (51, 5101, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Dugtrio (Alolan Dugtrio) - Metal Claw - TM031
  (51, 5101, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 25),
  -- Dugtrio (Alolan Dugtrio) - Mud Shot - TM035
  (51, 5101, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 26),
  -- Dugtrio (Alolan Dugtrio) - Rock Tomb - TM036
  (51, 5101, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Dugtrio (Alolan Dugtrio) - Endure - TM047
  (51, 5101, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Dugtrio (Alolan Dugtrio) - Sunny Day - TM049
  (51, 5101, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Dugtrio (Alolan Dugtrio) - Sandstorm - TM051
  (51, 5101, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Dugtrio (Alolan Dugtrio) - Dig - TM055
  (51, 5101, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Dugtrio (Alolan Dugtrio) - Shadow Claw - TM061
  (51, 5101, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 32),
  -- Dugtrio (Alolan Dugtrio) - Foul Play - TM062
  (51, 5101, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 33),
  -- Dugtrio (Alolan Dugtrio) - Body Slam - TM066
  (51, 5101, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Dugtrio (Alolan Dugtrio) - Sleep Talk - TM070
  (51, 5101, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Dugtrio (Alolan Dugtrio) - Rock Blast - TM076
  (51, 5101, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 36),
  -- Dugtrio (Alolan Dugtrio) - Stomping Tantrum - TM084
  (51, 5101, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 37),
  -- Dugtrio (Alolan Dugtrio) - Rest - TM085
  (51, 5101, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Dugtrio (Alolan Dugtrio) - Rock Slide - TM086
  (51, 5101, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 39),
  -- Dugtrio (Alolan Dugtrio) - Swords Dance - TM088
  (51, 5101, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 40),
  -- Dugtrio (Alolan Dugtrio) - Flash Cannon - TM093
  (51, 5101, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 41),
  -- Dugtrio (Alolan Dugtrio) - Iron Head - TM099
  (51, 5101, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 42),
  -- Dugtrio (Alolan Dugtrio) - Substitute - TM103
  (51, 5101, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Dugtrio (Alolan Dugtrio) - Iron Defense - TM104
  (51, 5101, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 44),
  -- Dugtrio (Alolan Dugtrio) - Stealth Rock - TM116
  (51, 5101, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 45),
  -- Dugtrio (Alolan Dugtrio) - Helping Hand - TM130
  (51, 5101, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Dugtrio (Alolan Dugtrio) - Earth Power - TM133
  (51, 5101, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 47),
  -- Dugtrio (Alolan Dugtrio) - Reversal - TM134
  (51, 5101, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 48),
  -- Dugtrio (Alolan Dugtrio) - Sludge Bomb - TM148
  (51, 5101, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 49),
  -- Dugtrio (Alolan Dugtrio) - Earthquake - TM149
  (51, 5101, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 50),
  -- Dugtrio (Alolan Dugtrio) - Stone Edge - TM150
  (51, 5101, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 51),
  -- Dugtrio (Alolan Dugtrio) - Giga Impact - TM152
  (51, 5101, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 52),
  -- Dugtrio (Alolan Dugtrio) - Hyper Beam - TM163
  (51, 5101, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 53),
  -- Dugtrio (Alolan Dugtrio) - Steel Beam - TM170
  (51, 5101, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 54),
  -- Dugtrio (Alolan Dugtrio) - Tera Blast - TM171
  (51, 5101, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Dugtrio (Alolan Dugtrio) - Headbutt - Egg
  (51, 5101, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Dugtrio (Alolan Dugtrio) - Thrash - Egg
  (51, 5101, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Dugtrio (Alolan Dugtrio) - Ancient Power - Egg
  (51, 5101, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Dugtrio (Alolan Dugtrio) - Memento - Egg
  (51, 5101, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Dugtrio (Alolan Dugtrio) - Metal Sound - Egg
  (51, 5101, 319, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Dugtrio (Alolan Dugtrio) - Hone Claws - Egg
  (51, 5101, 468, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Dugtrio (Alolan Dugtrio) - Final Gambit - Egg
  (51, 5101, 515, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Dugtrio (Alolan Dugtrio) - Sand Tomb - Evolution
  (51, 5101, 328, 23, NULL, 7, NULL, NULL, NULL, NULL, 63),
  -- Meowth - Growl - Level 1
  (52, 5200, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowth - Fake Out - Level 1
  (52, 5200, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowth - Feint - Level 4
  (52, 5200, 364, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Meowth - Scratch - Level 8
  (52, 5200, 10, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Meowth - Pay Day - Level 12
  (52, 5200, 6, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Meowth - Bite - Level 16
  (52, 5200, 44, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Meowth - Taunt - Level 20
  (52, 5200, 269, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Meowth - Assurance - Level 24
  (52, 5200, 372, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Meowth - Fury Swipes - Level 29
  (52, 5200, 154, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Meowth - Screech - Level 32
  (52, 5200, 103, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Meowth - Slash - Level 36
  (52, 5200, 163, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Meowth - Nasty Plot - Level 40
  (52, 5200, 417, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Meowth - Play Rough - Level 44
  (52, 5200, 583, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Meowth - Take Down - TM001
  (52, 5200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Meowth - Charm - TM002
  (52, 5200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Meowth - Fake Tears - TM003
  (52, 5200, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 16),
  -- Meowth - Agility - TM004
  (52, 5200, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Meowth - Protect - TM007
  (52, 5200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Meowth - Thief - TM018
  (52, 5200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Meowth - Trailblaze - TM020
  (52, 5200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Meowth - Chilling Water - TM022
  (52, 5200, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Meowth - Facade - TM025
  (52, 5200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Meowth - Aerial Ace - TM027
  (52, 5200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Meowth - Snarl - TM030
  (52, 5200, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 24),
  -- Meowth - Metal Claw - TM031
  (52, 5200, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 25),
  -- Meowth - Swift - TM032
  (52, 5200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Meowth - Icy Wind - TM034
  (52, 5200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Meowth - Endure - TM047
  (52, 5200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Meowth - Sunny Day - TM049
  (52, 5200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Meowth - Rain Dance - TM050
  (52, 5200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Meowth - Dig - TM055
  (52, 5200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Meowth - False Swipe - TM057
  (52, 5200, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 32),
  -- Meowth - U-turn - TM060
  (52, 5200, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Meowth - Shadow Claw - TM061
  (52, 5200, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 34),
  -- Meowth - Foul Play - TM062
  (52, 5200, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 35),
  -- Meowth - Body Slam - TM066
  (52, 5200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Meowth - Sleep Talk - TM070
  (52, 5200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Meowth - Seed Bomb - TM071
  (52, 5200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 38),
  -- Meowth - Thunder Wave - TM082
  (52, 5200, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 39),
  -- Meowth - Rest - TM085
  (52, 5200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Meowth - Taunt - TM087
  (52, 5200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Meowth - Dark Pulse - TM094
  (52, 5200, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 42),
  -- Meowth - Power Gem - TM101
  (52, 5200, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 43),
  -- Meowth - Gunk Shot - TM102
  (52, 5200, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 44),
  -- Meowth - Substitute - TM103
  (52, 5200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Meowth - Shadow Ball - TM114
  (52, 5200, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 46),
  -- Meowth - Hyper Voice - TM117
  (52, 5200, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 47),
  -- Meowth - Thunderbolt - TM126
  (52, 5200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 48),
  -- Meowth - Play Rough - TM127
  (52, 5200, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 49),
  -- Meowth - Amnesia - TM128
  (52, 5200, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 50),
  -- Meowth - Helping Hand - TM130
  (52, 5200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 51),
  -- Meowth - Nasty Plot - TM140
  (52, 5200, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 52),
  -- Meowth - Thunder - TM166
  (52, 5200, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 53),
  -- Meowth - Tera Blast - TM171
  (52, 5200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Meowth - Tail Whip - Egg
  (52, 5200, 39, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Meowth - Hypnosis - Egg
  (52, 5200, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Meowth - Flail - Egg
  (52, 5200, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Meowth - Spite - Egg
  (52, 5200, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Meowth - Covet - Egg
  (52, 5200, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Meowth - Last Resort - Egg
  (52, 5200, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Meowth (Alolan Meowth) - Growl - Level 1
  (52, 5201, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowth (Alolan Meowth) - Fake Out - Level 1
  (52, 5201, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowth (Alolan Meowth) - Feint - Level 4
  (52, 5201, 364, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Meowth (Alolan Meowth) - Scratch - Level 8
  (52, 5201, 10, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Meowth (Alolan Meowth) - Pay Day - Level 12
  (52, 5201, 6, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Meowth (Alolan Meowth) - Bite - Level 16
  (52, 5201, 44, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Meowth (Alolan Meowth) - Taunt - Level 20
  (52, 5201, 269, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Meowth (Alolan Meowth) - Assurance - Level 24
  (52, 5201, 372, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Meowth (Alolan Meowth) - Fury Swipes - Level 29
  (52, 5201, 154, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Meowth (Alolan Meowth) - Screech - Level 32
  (52, 5201, 103, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Meowth (Alolan Meowth) - Night Slash - Level 36
  (52, 5201, 400, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Meowth (Alolan Meowth) - Nasty Plot - Level 40
  (52, 5201, 417, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Meowth (Alolan Meowth) - Play Rough - Level 44
  (52, 5201, 583, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Meowth (Alolan Meowth) - Take Down - TM001
  (52, 5201, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Meowth (Alolan Meowth) - Charm - TM002
  (52, 5201, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Meowth (Alolan Meowth) - Fake Tears - TM003
  (52, 5201, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 16),
  -- Meowth (Alolan Meowth) - Agility - TM004
  (52, 5201, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Meowth (Alolan Meowth) - Protect - TM007
  (52, 5201, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Meowth (Alolan Meowth) - Confuse Ray - TM017
  (52, 5201, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 19),
  -- Meowth (Alolan Meowth) - Thief - TM018
  (52, 5201, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Meowth (Alolan Meowth) - Trailblaze - TM020
  (52, 5201, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Meowth (Alolan Meowth) - Chilling Water - TM022
  (52, 5201, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Meowth (Alolan Meowth) - Facade - TM025
  (52, 5201, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Meowth (Alolan Meowth) - Aerial Ace - TM027
  (52, 5201, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Meowth (Alolan Meowth) - Snarl - TM030
  (52, 5201, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 25),
  -- Meowth (Alolan Meowth) - Metal Claw - TM031
  (52, 5201, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 26),
  -- Meowth (Alolan Meowth) - Swift - TM032
  (52, 5201, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Meowth (Alolan Meowth) - Icy Wind - TM034
  (52, 5201, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 28),
  -- Meowth (Alolan Meowth) - Endure - TM047
  (52, 5201, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Meowth (Alolan Meowth) - Sunny Day - TM049
  (52, 5201, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Meowth (Alolan Meowth) - Rain Dance - TM050
  (52, 5201, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Meowth (Alolan Meowth) - Dig - TM055
  (52, 5201, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Meowth (Alolan Meowth) - U-turn - TM060
  (52, 5201, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 33),
  -- Meowth (Alolan Meowth) - Shadow Claw - TM061
  (52, 5201, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 34),
  -- Meowth (Alolan Meowth) - Foul Play - TM062
  (52, 5201, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 35),
  -- Meowth (Alolan Meowth) - Body Slam - TM066
  (52, 5201, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Meowth (Alolan Meowth) - Sleep Talk - TM070
  (52, 5201, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Meowth (Alolan Meowth) - Seed Bomb - TM071
  (52, 5201, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 38),
  -- Meowth (Alolan Meowth) - Thunder Wave - TM082
  (52, 5201, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 39),
  -- Meowth (Alolan Meowth) - Rest - TM085
  (52, 5201, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Meowth (Alolan Meowth) - Taunt - TM087
  (52, 5201, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Meowth (Alolan Meowth) - Dark Pulse - TM094
  (52, 5201, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 42),
  -- Meowth (Alolan Meowth) - Power Gem - TM101
  (52, 5201, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 43),
  -- Meowth (Alolan Meowth) - Gunk Shot - TM102
  (52, 5201, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 44),
  -- Meowth (Alolan Meowth) - Substitute - TM103
  (52, 5201, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Meowth (Alolan Meowth) - Shadow Ball - TM114
  (52, 5201, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 46),
  -- Meowth (Alolan Meowth) - Hyper Voice - TM117
  (52, 5201, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 47),
  -- Meowth (Alolan Meowth) - Thunderbolt - TM126
  (52, 5201, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 48),
  -- Meowth (Alolan Meowth) - Play Rough - TM127
  (52, 5201, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 49),
  -- Meowth (Alolan Meowth) - Amnesia - TM128
  (52, 5201, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 50),
  -- Meowth (Alolan Meowth) - Helping Hand - TM130
  (52, 5201, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 51),
  -- Meowth (Alolan Meowth) - Nasty Plot - TM140
  (52, 5201, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 52),
  -- Meowth (Alolan Meowth) - Thunder - TM166
  (52, 5201, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 53),
  -- Meowth (Alolan Meowth) - Tera Blast - TM171
  (52, 5201, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 54),
  -- Meowth (Alolan Meowth) - Hypnosis - Egg
  (52, 5201, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Meowth (Alolan Meowth) - Flail - Egg
  (52, 5201, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Meowth (Alolan Meowth) - Spite - Egg
  (52, 5201, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Meowth (Alolan Meowth) - Flatter - Egg
  (52, 5201, 260, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Meowth (Alolan Meowth) - Covet - Egg
  (52, 5201, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Meowth (Alolan Meowth) - Parting Shot - Egg
  (52, 5201, 575, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Meowth (Galarian Meowth) - Growl - Level 1
  (52, 5202, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowth (Galarian Meowth) - Fake Out - Level 1
  (52, 5202, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowth (Galarian Meowth) - Hone Claws - Level 4
  (52, 5202, 468, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Meowth (Galarian Meowth) - Scratch - Level 8
  (52, 5202, 10, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Meowth (Galarian Meowth) - Pay Day - Level 12
  (52, 5202, 6, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Meowth (Galarian Meowth) - Metal Claw - Level 16
  (52, 5202, 232, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Meowth (Galarian Meowth) - Taunt - Level 20
  (52, 5202, 269, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Meowth (Galarian Meowth) - Swagger - Level 24
  (52, 5202, 207, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Meowth (Galarian Meowth) - Fury Swipes - Level 29
  (52, 5202, 154, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Meowth (Galarian Meowth) - Screech - Level 32
  (52, 5202, 103, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Meowth (Galarian Meowth) - Slash - Level 36
  (52, 5202, 163, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Meowth (Galarian Meowth) - Metal Sound - Level 40
  (52, 5202, 319, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Meowth (Galarian Meowth) - Thrash - Level 44
  (52, 5202, 37, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Meowth (Galarian Meowth) - Take Down - TM001
  (52, 5202, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Meowth (Galarian Meowth) - Charm - TM002
  (52, 5202, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Meowth (Galarian Meowth) - Fake Tears - TM003
  (52, 5202, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 16),
  -- Meowth (Galarian Meowth) - Protect - TM007
  (52, 5202, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Meowth (Galarian Meowth) - Thief - TM018
  (52, 5202, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Meowth (Galarian Meowth) - Trailblaze - TM020
  (52, 5202, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Meowth (Galarian Meowth) - Facade - TM025
  (52, 5202, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Meowth (Galarian Meowth) - Aerial Ace - TM027
  (52, 5202, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Meowth (Galarian Meowth) - Metal Claw - TM031
  (52, 5202, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 22),
  -- Meowth (Galarian Meowth) - Fling - TM043
  (52, 5202, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 23),
  -- Meowth (Galarian Meowth) - Endure - TM047
  (52, 5202, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Meowth (Galarian Meowth) - Sunny Day - TM049
  (52, 5202, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Meowth (Galarian Meowth) - Rain Dance - TM050
  (52, 5202, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Meowth (Galarian Meowth) - Dig - TM055
  (52, 5202, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Meowth (Galarian Meowth) - False Swipe - TM057
  (52, 5202, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 28),
  -- Meowth (Galarian Meowth) - Brick Break - TM058
  (52, 5202, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 29),
  -- Meowth (Galarian Meowth) - U-turn - TM060
  (52, 5202, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 30),
  -- Meowth (Galarian Meowth) - Shadow Claw - TM061
  (52, 5202, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 31),
  -- Meowth (Galarian Meowth) - Foul Play - TM062
  (52, 5202, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 32),
  -- Meowth (Galarian Meowth) - Body Slam - TM066
  (52, 5202, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Meowth (Galarian Meowth) - Sleep Talk - TM070
  (52, 5202, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Meowth (Galarian Meowth) - Seed Bomb - TM071
  (52, 5202, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 35),
  -- Meowth (Galarian Meowth) - Metronome - TM080
  (52, 5202, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 36),
  -- Meowth (Galarian Meowth) - Rest - TM085
  (52, 5202, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Meowth (Galarian Meowth) - Taunt - TM087
  (52, 5202, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Meowth (Galarian Meowth) - Swords Dance - TM088
  (52, 5202, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 39),
  -- Meowth (Galarian Meowth) - Flash Cannon - TM093
  (52, 5202, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 40),
  -- Meowth (Galarian Meowth) - Dark Pulse - TM094
  (52, 5202, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 41),
  -- Meowth (Galarian Meowth) - Iron Head - TM099
  (52, 5202, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 42),
  -- Meowth (Galarian Meowth) - Gunk Shot - TM102
  (52, 5202, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 43),
  -- Meowth (Galarian Meowth) - Substitute - TM103
  (52, 5202, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Meowth (Galarian Meowth) - Iron Defense - TM104
  (52, 5202, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 45),
  -- Meowth (Galarian Meowth) - X-Scissor - TM105
  (52, 5202, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 46),
  -- Meowth (Galarian Meowth) - Crunch - TM108
  (52, 5202, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 47),
  -- Meowth (Galarian Meowth) - Shadow Ball - TM114
  (52, 5202, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 48),
  -- Meowth (Galarian Meowth) - Stealth Rock - TM116
  (52, 5202, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 49),
  -- Meowth (Galarian Meowth) - Hyper Voice - TM117
  (52, 5202, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 50),
  -- Meowth (Galarian Meowth) - Thunderbolt - TM126
  (52, 5202, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 51),
  -- Meowth (Galarian Meowth) - Play Rough - TM127
  (52, 5202, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 52),
  -- Meowth (Galarian Meowth) - Amnesia - TM128
  (52, 5202, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 53),
  -- Meowth (Galarian Meowth) - Helping Hand - TM130
  (52, 5202, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 54),
  -- Meowth (Galarian Meowth) - Nasty Plot - TM140
  (52, 5202, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 55),
  -- Meowth (Galarian Meowth) - Thunder - TM166
  (52, 5202, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 56),
  -- Meowth (Galarian Meowth) - Steel Beam - TM170
  (52, 5202, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 57),
  -- Meowth (Galarian Meowth) - Tera Blast - TM171
  (52, 5202, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 58),
  -- Meowth (Galarian Meowth) - Double-Edge - Egg
  (52, 5202, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Meowth (Galarian Meowth) - Curse - Egg
  (52, 5202, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Meowth (Galarian Meowth) - Flail - Egg
  (52, 5202, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Meowth (Galarian Meowth) - Spite - Egg
  (52, 5202, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Meowth (Galarian Meowth) - Covet - Egg
  (52, 5202, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Meowth (Galarian Meowth) - Night Slash - Egg
  (52, 5202, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Persian - Scratch - Level 1
  (53, 5300, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Persian - Growl - Level 1
  (53, 5300, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Persian - Fake Out - Level 1
  (53, 5300, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Persian - Feint - Level 1
  (53, 5300, 364, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Persian - Switcheroo - Level 1
  (53, 5300, 415, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Persian - Pay Day - Level 12
  (53, 5300, 6, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Persian - Bite - Level 16
  (53, 5300, 44, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Persian - Taunt - Level 20
  (53, 5300, 269, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Persian - Assurance - Level 24
  (53, 5300, 372, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Persian - Fury Swipes - Level 31
  (53, 5300, 154, 23, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Persian - Screech - Level 36
  (53, 5300, 103, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Persian - Slash - Level 42
  (53, 5300, 163, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Persian - Nasty Plot - Level 48
  (53, 5300, 417, 23, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Persian - Play Rough - Level 54
  (53, 5300, 583, 23, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Persian - Take Down - TM001
  (53, 5300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Persian - Charm - TM002
  (53, 5300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Persian - Fake Tears - TM003
  (53, 5300, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 17),
  -- Persian - Agility - TM004
  (53, 5300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Persian - Protect - TM007
  (53, 5300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Persian - Thief - TM018
  (53, 5300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Persian - Trailblaze - TM020
  (53, 5300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Persian - Chilling Water - TM022
  (53, 5300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Persian - Facade - TM025
  (53, 5300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Persian - Aerial Ace - TM027
  (53, 5300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Persian - Snarl - TM030
  (53, 5300, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 25),
  -- Persian - Metal Claw - TM031
  (53, 5300, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 26),
  -- Persian - Swift - TM032
  (53, 5300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Persian - Icy Wind - TM034
  (53, 5300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 28),
  -- Persian - Endure - TM047
  (53, 5300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Persian - Sunny Day - TM049
  (53, 5300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Persian - Rain Dance - TM050
  (53, 5300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Persian - Dig - TM055
  (53, 5300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Persian - False Swipe - TM057
  (53, 5300, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 33),
  -- Persian - U-turn - TM060
  (53, 5300, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 34),
  -- Persian - Shadow Claw - TM061
  (53, 5300, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 35),
  -- Persian - Foul Play - TM062
  (53, 5300, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 36),
  -- Persian - Body Slam - TM066
  (53, 5300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 37),
  -- Persian - Sleep Talk - TM070
  (53, 5300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Persian - Seed Bomb - TM071
  (53, 5300, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 39),
  -- Persian - Thunder Wave - TM082
  (53, 5300, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 40),
  -- Persian - Rest - TM085
  (53, 5300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Persian - Taunt - TM087
  (53, 5300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 42),
  -- Persian - Dark Pulse - TM094
  (53, 5300, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 43),
  -- Persian - Power Gem - TM101
  (53, 5300, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 44),
  -- Persian - Gunk Shot - TM102
  (53, 5300, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 45),
  -- Persian - Substitute - TM103
  (53, 5300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Persian - Shadow Ball - TM114
  (53, 5300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 47),
  -- Persian - Hyper Voice - TM117
  (53, 5300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 48),
  -- Persian - Thunderbolt - TM126
  (53, 5300, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 49),
  -- Persian - Play Rough - TM127
  (53, 5300, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 50),
  -- Persian - Amnesia - TM128
  (53, 5300, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 51),
  -- Persian - Helping Hand - TM130
  (53, 5300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 52),
  -- Persian - Nasty Plot - TM140
  (53, 5300, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 53),
  -- Persian - Giga Impact - TM152
  (53, 5300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 54),
  -- Persian - Hyper Beam - TM163
  (53, 5300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Persian - Thunder - TM166
  (53, 5300, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 56),
  -- Persian - Tera Blast - TM171
  (53, 5300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Persian - Tail Whip - Egg
  (53, 5300, 39, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Persian - Hypnosis - Egg
  (53, 5300, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Persian - Flail - Egg
  (53, 5300, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Persian - Spite - Egg
  (53, 5300, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Persian - Covet - Egg
  (53, 5300, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Persian - Last Resort - Egg
  (53, 5300, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Persian - Power Gem - Evolution
  (53, 5300, 408, 23, NULL, 7, NULL, NULL, NULL, NULL, 64),
  -- Persian (Alolan Persian) - Scratch - Level 1
  (53, 5301, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Persian (Alolan Persian) - Growl - Level 1
  (53, 5301, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Persian (Alolan Persian) - Fake Out - Level 1
  (53, 5301, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Persian (Alolan Persian) - Feint - Level 1
  (53, 5301, 364, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Persian (Alolan Persian) - Switcheroo - Level 1
  (53, 5301, 415, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Persian (Alolan Persian) - Quash - Level 1
  (53, 5301, 511, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Persian (Alolan Persian) - Pay Day - Level 12
  (53, 5301, 6, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Persian (Alolan Persian) - Bite - Level 16
  (53, 5301, 44, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Persian (Alolan Persian) - Taunt - Level 20
  (53, 5301, 269, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Persian (Alolan Persian) - Assurance - Level 24
  (53, 5301, 372, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Persian (Alolan Persian) - Fury Swipes - Level 31
  (53, 5301, 154, 23, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Persian (Alolan Persian) - Screech - Level 36
  (53, 5301, 103, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Persian (Alolan Persian) - Night Slash - Level 42
  (53, 5301, 400, 23, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Persian (Alolan Persian) - Nasty Plot - Level 48
  (53, 5301, 417, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Persian (Alolan Persian) - Play Rough - Level 54
  (53, 5301, 583, 23, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Persian (Alolan Persian) - Take Down - TM001
  (53, 5301, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Persian (Alolan Persian) - Charm - TM002
  (53, 5301, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Persian (Alolan Persian) - Fake Tears - TM003
  (53, 5301, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 18),
  -- Persian (Alolan Persian) - Agility - TM004
  (53, 5301, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Persian (Alolan Persian) - Protect - TM007
  (53, 5301, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Persian (Alolan Persian) - Confuse Ray - TM017
  (53, 5301, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 21),
  -- Persian (Alolan Persian) - Thief - TM018
  (53, 5301, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Persian (Alolan Persian) - Trailblaze - TM020
  (53, 5301, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Persian (Alolan Persian) - Chilling Water - TM022
  (53, 5301, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Persian (Alolan Persian) - Facade - TM025
  (53, 5301, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Persian (Alolan Persian) - Aerial Ace - TM027
  (53, 5301, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Persian (Alolan Persian) - Snarl - TM030
  (53, 5301, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Persian (Alolan Persian) - Metal Claw - TM031
  (53, 5301, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 28),
  -- Persian (Alolan Persian) - Swift - TM032
  (53, 5301, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Persian (Alolan Persian) - Icy Wind - TM034
  (53, 5301, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 30),
  -- Persian (Alolan Persian) - Endure - TM047
  (53, 5301, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Persian (Alolan Persian) - Sunny Day - TM049
  (53, 5301, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Persian (Alolan Persian) - Rain Dance - TM050
  (53, 5301, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Persian (Alolan Persian) - Dig - TM055
  (53, 5301, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Persian (Alolan Persian) - U-turn - TM060
  (53, 5301, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 35),
  -- Persian (Alolan Persian) - Shadow Claw - TM061
  (53, 5301, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 36),
  -- Persian (Alolan Persian) - Foul Play - TM062
  (53, 5301, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 37),
  -- Persian (Alolan Persian) - Body Slam - TM066
  (53, 5301, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Persian (Alolan Persian) - Sleep Talk - TM070
  (53, 5301, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Persian (Alolan Persian) - Seed Bomb - TM071
  (53, 5301, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 40),
  -- Persian (Alolan Persian) - Thunder Wave - TM082
  (53, 5301, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 41),
  -- Persian (Alolan Persian) - Rest - TM085
  (53, 5301, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Persian (Alolan Persian) - Taunt - TM087
  (53, 5301, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 43),
  -- Persian (Alolan Persian) - Dark Pulse - TM094
  (53, 5301, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 44),
  -- Persian (Alolan Persian) - Power Gem - TM101
  (53, 5301, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 45),
  -- Persian (Alolan Persian) - Gunk Shot - TM102
  (53, 5301, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 46),
  -- Persian (Alolan Persian) - Substitute - TM103
  (53, 5301, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Persian (Alolan Persian) - Shadow Ball - TM114
  (53, 5301, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 48),
  -- Persian (Alolan Persian) - Hyper Voice - TM117
  (53, 5301, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 49),
  -- Persian (Alolan Persian) - Thunderbolt - TM126
  (53, 5301, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 50),
  -- Persian (Alolan Persian) - Play Rough - TM127
  (53, 5301, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 51),
  -- Persian (Alolan Persian) - Amnesia - TM128
  (53, 5301, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 52),
  -- Persian (Alolan Persian) - Helping Hand - TM130
  (53, 5301, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 53),
  -- Persian (Alolan Persian) - Nasty Plot - TM140
  (53, 5301, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 54),
  -- Persian (Alolan Persian) - Giga Impact - TM152
  (53, 5301, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 55),
  -- Persian (Alolan Persian) - Hyper Beam - TM163
  (53, 5301, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 56),
  -- Persian (Alolan Persian) - Thunder - TM166
  (53, 5301, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 57),
  -- Persian (Alolan Persian) - Tera Blast - TM171
  (53, 5301, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 58),
  -- Persian (Alolan Persian) - Hypnosis - Egg
  (53, 5301, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Persian (Alolan Persian) - Flail - Egg
  (53, 5301, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Persian (Alolan Persian) - Spite - Egg
  (53, 5301, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Persian (Alolan Persian) - Flatter - Egg
  (53, 5301, 260, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Persian (Alolan Persian) - Covet - Egg
  (53, 5301, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Persian (Alolan Persian) - Parting Shot - Egg
  (53, 5301, 575, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Persian (Alolan Persian) - Power Gem - Evolution
  (53, 5301, 408, 23, NULL, 7, NULL, NULL, NULL, NULL, 65),
  -- Psyduck - Scratch - Level 1
  (54, 5400, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Psyduck - Tail Whip - Level 1
  (54, 5400, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Psyduck - Water Gun - Level 3
  (54, 5400, 55, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Psyduck - Confusion - Level 6
  (54, 5400, 93, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Psyduck - Fury Swipes - Level 9
  (54, 5400, 154, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Psyduck - Water Pulse - Level 12
  (54, 5400, 352, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Psyduck - Disable - Level 15
  (54, 5400, 50, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Psyduck - Zen Headbutt - Level 18
  (54, 5400, 428, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Psyduck - Screech - Level 21
  (54, 5400, 103, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Psyduck - Aqua Tail - Level 24
  (54, 5400, 401, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Psyduck - Soak - Level 27
  (54, 5400, 487, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Psyduck - Psych Up - Level 30
  (54, 5400, 244, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Psyduck - Amnesia - Level 34
  (54, 5400, 133, 23, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Psyduck - Wonder Room - Level 39
  (54, 5400, 472, 23, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Psyduck - Take Down - TM001
  (54, 5400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Psyduck - Protect - TM007
  (54, 5400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Psyduck - Water Pulse - TM011
  (54, 5400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Psyduck - Low Kick - TM012
  (54, 5400, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Psyduck - Psybeam - TM016
  (54, 5400, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 19),
  -- Psyduck - Confuse Ray - TM017
  (54, 5400, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 20),
  -- Psyduck - Thief - TM018
  (54, 5400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Psyduck - Trailblaze - TM020
  (54, 5400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Psyduck - Chilling Water - TM022
  (54, 5400, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 23),
  -- Psyduck - Facade - TM025
  (54, 5400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Psyduck - Swift - TM032
  (54, 5400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Psyduck - Icy Wind - TM034
  (54, 5400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Psyduck - Mud Shot - TM035
  (54, 5400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Psyduck - Low Sweep - TM039
  (54, 5400, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 28),
  -- Psyduck - Fling - TM043
  (54, 5400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Psyduck - Endure - TM047
  (54, 5400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Psyduck - Rain Dance - TM050
  (54, 5400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Psyduck - Psyshock - TM054
  (54, 5400, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 32),
  -- Psyduck - Dig - TM055
  (54, 5400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Psyduck - Brick Break - TM058
  (54, 5400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Psyduck - Zen Headbutt - TM059
  (54, 5400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 35),
  -- Psyduck - Shadow Claw - TM061
  (54, 5400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 36),
  -- Psyduck - Body Slam - TM066
  (54, 5400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 37),
  -- Psyduck - Ice Punch - TM069
  (54, 5400, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 38),
  -- Psyduck - Sleep Talk - TM070
  (54, 5400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Psyduck - Light Screen - TM075
  (54, 5400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 40),
  -- Psyduck - Waterfall - TM077
  (54, 5400, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 41),
  -- Psyduck - Metronome - TM080
  (54, 5400, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 42),
  -- Psyduck - Rest - TM085
  (54, 5400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 43),
  -- Psyduck - Taunt - TM087
  (54, 5400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 44),
  -- Psyduck - Skill Swap - TM098
  (54, 5400, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 45),
  -- Psyduck - Substitute - TM103
  (54, 5400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Psyduck - Liquidation - TM110
  (54, 5400, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 47),
  -- Psyduck - Psychic - TM120
  (54, 5400, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 48),
  -- Psyduck - Encore - TM122
  (54, 5400, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 49),
  -- Psyduck - Surf - TM123
  (54, 5400, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 50),
  -- Psyduck - Amnesia - TM128
  (54, 5400, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 51),
  -- Psyduck - Calm Mind - TM129
  (54, 5400, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 52),
  -- Psyduck - Helping Hand - TM130
  (54, 5400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 53),
  -- Psyduck - Ice Beam - TM135
  (54, 5400, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 54),
  -- Psyduck - Nasty Plot - TM140
  (54, 5400, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 55),
  -- Psyduck - Hydro Pump - TM142
  (54, 5400, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 56),
  -- Psyduck - Blizzard - TM143
  (54, 5400, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 57),
  -- Psyduck - Tera Blast - TM171
  (54, 5400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 58),
  -- Psyduck - Psybeam - Egg
  (54, 5400, 60, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Psyduck - Hypnosis - Egg
  (54, 5400, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Psyduck - Confuse Ray - Egg
  (54, 5400, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Psyduck - Cross Chop - Egg
  (54, 5400, 238, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Psyduck - Yawn - Egg
  (54, 5400, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Psyduck - Simple Beam - Egg
  (54, 5400, 493, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Psyduck - Clear Smog - Egg
  (54, 5400, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Golduck - Scratch - Level 1
  (55, 5500, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golduck - Tail Whip - Level 1
  (55, 5500, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golduck - Water Gun - Level 1
  (55, 5500, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golduck - Confusion - Level 1
  (55, 5500, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golduck - Aqua Jet - Level 1
  (55, 5500, 453, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Golduck - Fury Swipes - Level 9
  (55, 5500, 154, 23, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Golduck - Water Pulse - Level 12
  (55, 5500, 352, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Golduck - Disable - Level 15
  (55, 5500, 50, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Golduck - Zen Headbutt - Level 18
  (55, 5500, 428, 23, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Golduck - Screech - Level 21
  (55, 5500, 103, 23, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Golduck - Aqua Tail - Level 24
  (55, 5500, 401, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Golduck - Soak - Level 27
  (55, 5500, 487, 23, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Golduck - Psych Up - Level 30
  (55, 5500, 244, 23, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Golduck - Amnesia - Level 36
  (55, 5500, 133, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Golduck - Hydro Pump - Level 40
  (55, 5500, 56, 23, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Golduck - Wonder Room - Level 45
  (55, 5500, 472, 23, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Golduck - Take Down - TM001
  (55, 5500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Golduck - Protect - TM007
  (55, 5500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Golduck - Water Pulse - TM011
  (55, 5500, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 19),
  -- Golduck - Low Kick - TM012
  (55, 5500, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Golduck - Psybeam - TM016
  (55, 5500, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 21),
  -- Golduck - Confuse Ray - TM017
  (55, 5500, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Golduck - Thief - TM018
  (55, 5500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Golduck - Trailblaze - TM020
  (55, 5500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Golduck - Chilling Water - TM022
  (55, 5500, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 25),
  -- Golduck - Facade - TM025
  (55, 5500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Golduck - Swift - TM032
  (55, 5500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Golduck - Icy Wind - TM034
  (55, 5500, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 28),
  -- Golduck - Mud Shot - TM035
  (55, 5500, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 29),
  -- Golduck - Low Sweep - TM039
  (55, 5500, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 30),
  -- Golduck - Fling - TM043
  (55, 5500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Golduck - Endure - TM047
  (55, 5500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Golduck - Rain Dance - TM050
  (55, 5500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Golduck - Psyshock - TM054
  (55, 5500, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 34),
  -- Golduck - Dig - TM055
  (55, 5500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Golduck - Brick Break - TM058
  (55, 5500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Golduck - Zen Headbutt - TM059
  (55, 5500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 37),
  -- Golduck - Shadow Claw - TM061
  (55, 5500, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 38),
  -- Golduck - Body Slam - TM066
  (55, 5500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Golduck - Ice Punch - TM069
  (55, 5500, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 40),
  -- Golduck - Sleep Talk - TM070
  (55, 5500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Golduck - Light Screen - TM075
  (55, 5500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 42),
  -- Golduck - Waterfall - TM077
  (55, 5500, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 43),
  -- Golduck - Metronome - TM080
  (55, 5500, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 44),
  -- Golduck - Grass Knot - TM081
  (55, 5500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 45),
  -- Golduck - Rest - TM085
  (55, 5500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Golduck - Taunt - TM087
  (55, 5500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 47),
  -- Golduck - Skill Swap - TM098
  (55, 5500, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 48),
  -- Golduck - Power Gem - TM101
  (55, 5500, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 49),
  -- Golduck - Substitute - TM103
  (55, 5500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Golduck - Liquidation - TM110
  (55, 5500, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 51),
  -- Golduck - Psychic - TM120
  (55, 5500, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 52),
  -- Golduck - Encore - TM122
  (55, 5500, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 53),
  -- Golduck - Surf - TM123
  (55, 5500, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 54),
  -- Golduck - Amnesia - TM128
  (55, 5500, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 55),
  -- Golduck - Calm Mind - TM129
  (55, 5500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 56),
  -- Golduck - Helping Hand - TM130
  (55, 5500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 57),
  -- Golduck - Ice Beam - TM135
  (55, 5500, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 58),
  -- Golduck - Nasty Plot - TM140
  (55, 5500, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 59),
  -- Golduck - Hydro Pump - TM142
  (55, 5500, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 60),
  -- Golduck - Blizzard - TM143
  (55, 5500, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 61),
  -- Golduck - Giga Impact - TM152
  (55, 5500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 62),
  -- Golduck - Focus Blast - TM158
  (55, 5500, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 63),
  -- Golduck - Hyper Beam - TM163
  (55, 5500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 64),
  -- Golduck - Tera Blast - TM171
  (55, 5500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 65),
  -- Golduck - Psybeam - Egg
  (55, 5500, 60, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Golduck - Hypnosis - Egg
  (55, 5500, 95, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Golduck - Confuse Ray - Egg
  (55, 5500, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Golduck - Cross Chop - Egg
  (55, 5500, 238, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Golduck - Yawn - Egg
  (55, 5500, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Golduck - Simple Beam - Egg
  (55, 5500, 493, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Golduck - Clear Smog - Egg
  (55, 5500, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Mankey - Scratch - Level 1
  (56, 5600, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mankey - Leer - Level 1
  (56, 5600, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mankey - Focus Energy - Level 1
  (56, 5600, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mankey - Covet - Level 1
  (56, 5600, 343, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mankey - Fury Swipes - Level 5
  (56, 5600, 154, 23, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Mankey - Low Kick - Level 8
  (56, 5600, 67, 23, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Mankey - Seismic Toss - Level 12
  (56, 5600, 69, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Mankey - Swagger - Level 17
  (56, 5600, 207, 23, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Mankey - Cross Chop - Level 22
  (56, 5600, 238, 23, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Mankey - Assurance - Level 26
  (56, 5600, 372, 23, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Mankey - Thrash - Level 29
  (56, 5600, 37, 23, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Mankey - Close Combat - Level 33
  (56, 5600, 370, 23, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Mankey - Screech - Level 36
  (56, 5600, 103, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Mankey - Stomping Tantrum - Level 40
  (56, 5600, 707, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Mankey - Outrage - Level 44
  (56, 5600, 200, 23, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Mankey - Final Gambit - Level 48
  (56, 5600, 515, 23, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Mankey - Take Down - TM001
  (56, 5600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Mankey - Scary Face - TM006
  (56, 5600, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Mankey - Protect - TM007
  (56, 5600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Mankey - Low Kick - TM012
  (56, 5600, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Mankey - Acrobatics - TM014
  (56, 5600, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Mankey - Thief - TM018
  (56, 5600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Mankey - Facade - TM025
  (56, 5600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Mankey - Bulldoze - TM028
  (56, 5600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Mankey - Swift - TM032
  (56, 5600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Mankey - Rock Tomb - TM036
  (56, 5600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Mankey - Low Sweep - TM039
  (56, 5600, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 27),
  -- Mankey - Fling - TM043
  (56, 5600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Mankey - Endure - TM047
  (56, 5600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Mankey - Sunny Day - TM049
  (56, 5600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Mankey - Rain Dance - TM050
  (56, 5600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Mankey - Dig - TM055
  (56, 5600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Mankey - Brick Break - TM058
  (56, 5600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Mankey - U-turn - TM060
  (56, 5600, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 34),
  -- Mankey - Shadow Claw - TM061
  (56, 5600, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 35),
  -- Mankey - Bulk Up - TM064
  (56, 5600, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 36),
  -- Mankey - Body Slam - TM066
  (56, 5600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 37),
  -- Mankey - Fire Punch - TM067
  (56, 5600, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 38),
  -- Mankey - Thunder Punch - TM068
  (56, 5600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 39),
  -- Mankey - Ice Punch - TM069
  (56, 5600, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 40),
  -- Mankey - Sleep Talk - TM070
  (56, 5600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Mankey - Seed Bomb - TM071
  (56, 5600, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 42),
  -- Mankey - Drain Punch - TM073
  (56, 5600, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 43),
  -- Mankey - Metronome - TM080
  (56, 5600, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 44),
  -- Mankey - Poison Jab - TM083
  (56, 5600, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 45),
  -- Mankey - Stomping Tantrum - TM084
  (56, 5600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 46),
  -- Mankey - Rest - TM085
  (56, 5600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 47),
  -- Mankey - Rock Slide - TM086
  (56, 5600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 48),
  -- Mankey - Taunt - TM087
  (56, 5600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 49),
  -- Mankey - Gunk Shot - TM102
  (56, 5600, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 50),
  -- Mankey - Substitute - TM103
  (56, 5600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 51),
  -- Mankey - Encore - TM122
  (56, 5600, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 52),
  -- Mankey - Thunderbolt - TM126
  (56, 5600, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 53),
  -- Mankey - Helping Hand - TM130
  (56, 5600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 54),
  -- Mankey - Reversal - TM134
  (56, 5600, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 55),
  -- Mankey - Earthquake - TM149
  (56, 5600, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 56),
  -- Mankey - Stone Edge - TM150
  (56, 5600, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 57),
  -- Mankey - Outrage - TM156
  (56, 5600, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 58),
  -- Mankey - Overheat - TM157
  (56, 5600, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 59),
  -- Mankey - Focus Blast - TM158
  (56, 5600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 60),
  -- Mankey - Close Combat - TM167
  (56, 5600, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 61),
  -- Mankey - Tera Blast - TM171
  (56, 5600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Mankey - Counter - Egg
  (56, 5600, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Mankey - Curse - Egg
  (56, 5600, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Mankey - Spite - Egg
  (56, 5600, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Mankey - Encore - Egg
  (56, 5600, 227, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Mankey - Beat Up - Egg
  (56, 5600, 251, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mankey - Night Slash - Egg
  (56, 5600, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Primeape - Scratch - Level 1
  (57, 5700, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Primeape - Leer - Level 1
  (57, 5700, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Primeape - Focus Energy - Level 1
  (57, 5700, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Primeape - Fling - Level 1
  (57, 5700, 374, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Primeape - Fury Swipes - Level 5
  (57, 5700, 154, 23, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Primeape - Low Kick - Level 8
  (57, 5700, 67, 23, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Primeape - Seismic Toss - Level 15
  (57, 5700, 69, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Primeape - Swagger - Level 17
  (57, 5700, 207, 23, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Primeape - Cross Chop - Level 22
  (57, 5700, 238, 23, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Primeape - Assurance - Level 26
  (57, 5700, 372, 23, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Primeape - Thrash - Level 30
  (57, 5700, 37, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Primeape - Rage Fist - Level 35
  (57, 5700, 889, 23, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Primeape - Close Combat - Level 39
  (57, 5700, 370, 23, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Primeape - Screech - Level 44
  (57, 5700, 103, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Primeape - Stomping Tantrum - Level 48
  (57, 5700, 707, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Primeape - Outrage - Level 53
  (57, 5700, 200, 23, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Primeape - Final Gambit - Level 57
  (57, 5700, 515, 23, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Primeape - Take Down - TM001
  (57, 5700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Primeape - Scary Face - TM006
  (57, 5700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Primeape - Protect - TM007
  (57, 5700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Primeape - Low Kick - TM012
  (57, 5700, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Primeape - Acrobatics - TM014
  (57, 5700, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 22),
  -- Primeape - Thief - TM018
  (57, 5700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Primeape - Facade - TM025
  (57, 5700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Primeape - Bulldoze - TM028
  (57, 5700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Primeape - Swift - TM032
  (57, 5700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Primeape - Rock Tomb - TM036
  (57, 5700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Primeape - Low Sweep - TM039
  (57, 5700, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 28),
  -- Primeape - Fling - TM043
  (57, 5700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Primeape - Endure - TM047
  (57, 5700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Primeape - Sunny Day - TM049
  (57, 5700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Primeape - Rain Dance - TM050
  (57, 5700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Primeape - Dig - TM055
  (57, 5700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Primeape - Brick Break - TM058
  (57, 5700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Primeape - U-turn - TM060
  (57, 5700, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 35),
  -- Primeape - Shadow Claw - TM061
  (57, 5700, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 36),
  -- Primeape - Bulk Up - TM064
  (57, 5700, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 37),
  -- Primeape - Body Slam - TM066
  (57, 5700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Primeape - Fire Punch - TM067
  (57, 5700, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 39),
  -- Primeape - Thunder Punch - TM068
  (57, 5700, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Primeape - Ice Punch - TM069
  (57, 5700, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 41),
  -- Primeape - Sleep Talk - TM070
  (57, 5700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Primeape - Seed Bomb - TM071
  (57, 5700, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 43),
  -- Primeape - Drain Punch - TM073
  (57, 5700, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 44),
  -- Primeape - Metronome - TM080
  (57, 5700, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 45),
  -- Primeape - Poison Jab - TM083
  (57, 5700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 46),
  -- Primeape - Stomping Tantrum - TM084
  (57, 5700, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 47),
  -- Primeape - Rest - TM085
  (57, 5700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 48),
  -- Primeape - Rock Slide - TM086
  (57, 5700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 49),
  -- Primeape - Taunt - TM087
  (57, 5700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 50),
  -- Primeape - Gunk Shot - TM102
  (57, 5700, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 51),
  -- Primeape - Substitute - TM103
  (57, 5700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 52),
  -- Primeape - Stealth Rock - TM116
  (57, 5700, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 53),
  -- Primeape - Encore - TM122
  (57, 5700, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 54),
  -- Primeape - Thunderbolt - TM126
  (57, 5700, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 55),
  -- Primeape - Helping Hand - TM130
  (57, 5700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 56),
  -- Primeape - Reversal - TM134
  (57, 5700, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 57),
  -- Primeape - Earthquake - TM149
  (57, 5700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 58),
  -- Primeape - Stone Edge - TM150
  (57, 5700, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 59),
  -- Primeape - Giga Impact - TM152
  (57, 5700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 60),
  -- Primeape - Outrage - TM156
  (57, 5700, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 61),
  -- Primeape - Overheat - TM157
  (57, 5700, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 62),
  -- Primeape - Focus Blast - TM158
  (57, 5700, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 63),
  -- Primeape - Hyper Beam - TM163
  (57, 5700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 64),
  -- Primeape - Thunder - TM166
  (57, 5700, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 65),
  -- Primeape - Close Combat - TM167
  (57, 5700, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 66),
  -- Primeape - Tera Blast - TM171
  (57, 5700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 67),
  -- Primeape - Counter - Egg
  (57, 5700, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Primeape - Curse - Egg
  (57, 5700, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Primeape - Spite - Egg
  (57, 5700, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Primeape - Encore - Egg
  (57, 5700, 227, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Primeape - Beat Up - Egg
  (57, 5700, 251, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Primeape - Night Slash - Egg
  (57, 5700, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Growlithe - Leer - Level 1
  (58, 5800, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Growlithe - Ember - Level 1
  (58, 5800, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Growlithe - Howl - Level 4
  (58, 5800, 336, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Growlithe - Bite - Level 8
  (58, 5800, 44, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Growlithe - Flame Wheel - Level 12
  (58, 5800, 172, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Growlithe - Helping Hand - Level 16
  (58, 5800, 270, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Growlithe - Agility - Level 20
  (58, 5800, 97, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Growlithe - Fire Fang - Level 24
  (58, 5800, 424, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Growlithe - Retaliate - Level 28
  (58, 5800, 514, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Growlithe - Crunch - Level 32
  (58, 5800, 242, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Growlithe - Take Down - Level 36
  (58, 5800, 36, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Growlithe - Flamethrower - Level 40
  (58, 5800, 53, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Growlithe - Roar - Level 44
  (58, 5800, 46, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Growlithe - Play Rough - Level 48
  (58, 5800, 583, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Growlithe - Reversal - Level 52
  (58, 5800, 179, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Growlithe - Flare Blitz - Level 56
  (58, 5800, 394, 23, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Growlithe - Take Down - TM001
  (58, 5800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Growlithe - Charm - TM002
  (58, 5800, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 18),
  -- Growlithe - Agility - TM004
  (58, 5800, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Growlithe - Scary Face - TM006
  (58, 5800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Growlithe - Protect - TM007
  (58, 5800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Growlithe - Fire Fang - TM008
  (58, 5800, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 22),
  -- Growlithe - Thunder Fang - TM009
  (58, 5800, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 23),
  -- Growlithe - Thief - TM018
  (58, 5800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 24),
  -- Growlithe - Fire Spin - TM024
  (58, 5800, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 25),
  -- Growlithe - Facade - TM025
  (58, 5800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Growlithe - Snarl - TM030
  (58, 5800, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Growlithe - Swift - TM032
  (58, 5800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Growlithe - Flame Charge - TM038
  (58, 5800, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 29),
  -- Growlithe - Endure - TM047
  (58, 5800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Growlithe - Sunny Day - TM049
  (58, 5800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Growlithe - Dig - TM055
  (58, 5800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Growlithe - Psychic Fangs - TM063
  (58, 5800, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 33),
  -- Growlithe - Body Slam - TM066
  (58, 5800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 34),
  -- Growlithe - Sleep Talk - TM070
  (58, 5800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Growlithe - Rest - TM085
  (58, 5800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Growlithe - Substitute - TM103
  (58, 5800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Growlithe - Will-O-Wisp - TM107
  (58, 5800, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 38),
  -- Growlithe - Crunch - TM108
  (58, 5800, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 39),
  -- Growlithe - Heat Wave - TM118
  (58, 5800, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 40),
  -- Growlithe - Flamethrower - TM125
  (58, 5800, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 41),
  -- Growlithe - Play Rough - TM127
  (58, 5800, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 42),
  -- Growlithe - Helping Hand - TM130
  (58, 5800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 43),
  -- Growlithe - Reversal - TM134
  (58, 5800, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 44),
  -- Growlithe - Fire Blast - TM141
  (58, 5800, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 45),
  -- Growlithe - Wild Charge - TM147
  (58, 5800, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 46),
  -- Growlithe - Outrage - TM156
  (58, 5800, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 47),
  -- Growlithe - Overheat - TM157
  (58, 5800, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 48),
  -- Growlithe - Flare Blitz - TM165
  (58, 5800, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 49),
  -- Growlithe - Close Combat - TM167
  (58, 5800, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 50),
  -- Growlithe - Tera Blast - TM171
  (58, 5800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Growlithe - Double Kick - Egg
  (58, 5800, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Growlithe - Thrash - Egg
  (58, 5800, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Growlithe - Double-Edge - Egg
  (58, 5800, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Growlithe - Morning Sun - Egg
  (58, 5800, 234, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Growlithe - Covet - Egg
  (58, 5800, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Growlithe - Raging Fury - Egg
  (58, 5800, 833, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Growlithe (Hisuian Growlithe) - Leer - Level 1
  (58, 5801, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Growlithe (Hisuian Growlithe) - Ember - Level 1
  (58, 5801, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Growlithe (Hisuian Growlithe) - Howl - Level 4
  (58, 5801, 336, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Growlithe (Hisuian Growlithe) - Bite - Level 8
  (58, 5801, 44, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Growlithe (Hisuian Growlithe) - Flame Wheel - Level 12
  (58, 5801, 172, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Growlithe (Hisuian Growlithe) - Helping Hand - Level 16
  (58, 5801, 270, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Growlithe (Hisuian Growlithe) - Fire Fang - Level 24
  (58, 5801, 424, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Growlithe (Hisuian Growlithe) - Retaliate - Level 28
  (58, 5801, 514, 23, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Growlithe (Hisuian Growlithe) - Crunch - Level 32
  (58, 5801, 242, 23, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Growlithe (Hisuian Growlithe) - Take Down - Level 36
  (58, 5801, 36, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Growlithe (Hisuian Growlithe) - Flamethrower - Level 40
  (58, 5801, 53, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Growlithe (Hisuian Growlithe) - Roar - Level 44
  (58, 5801, 46, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Growlithe (Hisuian Growlithe) - Rock Slide - Level 48
  (58, 5801, 157, 23, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Growlithe (Hisuian Growlithe) - Reversal - Level 52
  (58, 5801, 179, 23, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Growlithe (Hisuian Growlithe) - Flare Blitz - Level 56
  (58, 5801, 394, 23, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Growlithe (Hisuian Growlithe) - Take Down - TM001
  (58, 5801, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Growlithe (Hisuian Growlithe) - Agility - TM004
  (58, 5801, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Growlithe (Hisuian Growlithe) - Scary Face - TM006
  (58, 5801, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Growlithe (Hisuian Growlithe) - Protect - TM007
  (58, 5801, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Growlithe (Hisuian Growlithe) - Fire Fang - TM008
  (58, 5801, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 20),
  -- Growlithe (Hisuian Growlithe) - Thunder Fang - TM009
  (58, 5801, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 21),
  -- Growlithe (Hisuian Growlithe) - Fire Spin - TM024
  (58, 5801, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 22),
  -- Growlithe (Hisuian Growlithe) - Facade - TM025
  (58, 5801, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Growlithe (Hisuian Growlithe) - Rock Tomb - TM036
  (58, 5801, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Growlithe (Hisuian Growlithe) - Flame Charge - TM038
  (58, 5801, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 25),
  -- Growlithe (Hisuian Growlithe) - Endure - TM047
  (58, 5801, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Growlithe (Hisuian Growlithe) - Sunny Day - TM049
  (58, 5801, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Growlithe (Hisuian Growlithe) - Sandstorm - TM051
  (58, 5801, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 28),
  -- Growlithe (Hisuian Growlithe) - Smart Strike - TM053
  (58, 5801, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 29),
  -- Growlithe (Hisuian Growlithe) - Dig - TM055
  (58, 5801, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Growlithe (Hisuian Growlithe) - Psychic Fangs - TM063
  (58, 5801, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 31),
  -- Growlithe (Hisuian Growlithe) - Body Slam - TM066
  (58, 5801, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Growlithe (Hisuian Growlithe) - Sleep Talk - TM070
  (58, 5801, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Growlithe (Hisuian Growlithe) - Rock Blast - TM076
  (58, 5801, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 34),
  -- Growlithe (Hisuian Growlithe) - Rest - TM085
  (58, 5801, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Growlithe (Hisuian Growlithe) - Rock Slide - TM086
  (58, 5801, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 36),
  -- Growlithe (Hisuian Growlithe) - Power Gem - TM101
  (58, 5801, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 37),
  -- Growlithe (Hisuian Growlithe) - Substitute - TM103
  (58, 5801, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Growlithe (Hisuian Growlithe) - Will-O-Wisp - TM107
  (58, 5801, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 39),
  -- Growlithe (Hisuian Growlithe) - Crunch - TM108
  (58, 5801, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 40),
  -- Growlithe (Hisuian Growlithe) - Stealth Rock - TM116
  (58, 5801, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 41),
  -- Growlithe (Hisuian Growlithe) - Heat Wave - TM118
  (58, 5801, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 42),
  -- Growlithe (Hisuian Growlithe) - Flamethrower - TM125
  (58, 5801, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 43),
  -- Growlithe (Hisuian Growlithe) - Helping Hand - TM130
  (58, 5801, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Growlithe (Hisuian Growlithe) - Reversal - TM134
  (58, 5801, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 45),
  -- Growlithe (Hisuian Growlithe) - Fire Blast - TM141
  (58, 5801, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 46),
  -- Growlithe (Hisuian Growlithe) - Wild Charge - TM147
  (58, 5801, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 47),
  -- Growlithe (Hisuian Growlithe) - Stone Edge - TM150
  (58, 5801, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 48),
  -- Growlithe (Hisuian Growlithe) - Outrage - TM156
  (58, 5801, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 49),
  -- Growlithe (Hisuian Growlithe) - Overheat - TM157
  (58, 5801, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 50),
  -- Growlithe (Hisuian Growlithe) - Flare Blitz - TM165
  (58, 5801, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 51),
  -- Growlithe (Hisuian Growlithe) - Close Combat - TM167
  (58, 5801, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 52),
  -- Growlithe (Hisuian Growlithe) - Tera Blast - TM171
  (58, 5801, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Growlithe (Hisuian Growlithe) - Double Kick - Egg
  (58, 5801, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Growlithe (Hisuian Growlithe) - Thrash - Egg
  (58, 5801, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Growlithe (Hisuian Growlithe) - Double-Edge - Egg
  (58, 5801, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Growlithe (Hisuian Growlithe) - Morning Sun - Egg
  (58, 5801, 234, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Growlithe (Hisuian Growlithe) - Covet - Egg
  (58, 5801, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Growlithe (Hisuian Growlithe) - Head Smash - Egg
  (58, 5801, 457, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Arcanine - Take Down - Level 1
  (59, 5900, 36, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arcanine - Leer - Level 1
  (59, 5900, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arcanine - Bite - Level 1
  (59, 5900, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arcanine - Roar - Level 1
  (59, 5900, 46, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arcanine - Ember - Level 1
  (59, 5900, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Arcanine - Agility - Level 1
  (59, 5900, 97, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Arcanine - Flame Wheel - Level 1
  (59, 5900, 172, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Arcanine - Reversal - Level 1
  (59, 5900, 179, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Arcanine - Crunch - Level 1
  (59, 5900, 242, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Arcanine - Helping Hand - Level 1
  (59, 5900, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Arcanine - Howl - Level 1
  (59, 5900, 336, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Arcanine - Flare Blitz - Level 1
  (59, 5900, 394, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Arcanine - Fire Fang - Level 1
  (59, 5900, 424, 23, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Arcanine - Retaliate - Level 1
  (59, 5900, 514, 23, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Arcanine - Play Rough - Level 1
  (59, 5900, 583, 23, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Arcanine - Flamethrower - Level 5
  (59, 5900, 53, 23, NULL, 1, 5, NULL, NULL, NULL, 16),
  -- Arcanine - Take Down - TM001
  (59, 5900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Arcanine - Charm - TM002
  (59, 5900, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 18),
  -- Arcanine - Agility - TM004
  (59, 5900, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Arcanine - Scary Face - TM006
  (59, 5900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Arcanine - Protect - TM007
  (59, 5900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Arcanine - Fire Fang - TM008
  (59, 5900, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 22),
  -- Arcanine - Thunder Fang - TM009
  (59, 5900, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 23),
  -- Arcanine - Thief - TM018
  (59, 5900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 24),
  -- Arcanine - Fire Spin - TM024
  (59, 5900, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 25),
  -- Arcanine - Facade - TM025
  (59, 5900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Arcanine - Aerial Ace - TM027
  (59, 5900, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 27),
  -- Arcanine - Bulldoze - TM028
  (59, 5900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 28),
  -- Arcanine - Snarl - TM030
  (59, 5900, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 29),
  -- Arcanine - Swift - TM032
  (59, 5900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 30),
  -- Arcanine - Flame Charge - TM038
  (59, 5900, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 31),
  -- Arcanine - Endure - TM047
  (59, 5900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Arcanine - Sunny Day - TM049
  (59, 5900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Arcanine - Dig - TM055
  (59, 5900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Arcanine - Psychic Fangs - TM063
  (59, 5900, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 35),
  -- Arcanine - Body Slam - TM066
  (59, 5900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Arcanine - Sleep Talk - TM070
  (59, 5900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Arcanine - Rest - TM085
  (59, 5900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Arcanine - Iron Head - TM099
  (59, 5900, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 39),
  -- Arcanine - Substitute - TM103
  (59, 5900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Arcanine - Will-O-Wisp - TM107
  (59, 5900, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 41),
  -- Arcanine - Crunch - TM108
  (59, 5900, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 42),
  -- Arcanine - Dragon Pulse - TM115
  (59, 5900, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 43),
  -- Arcanine - Hyper Voice - TM117
  (59, 5900, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 44),
  -- Arcanine - Heat Wave - TM118
  (59, 5900, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 45),
  -- Arcanine - Flamethrower - TM125
  (59, 5900, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 46),
  -- Arcanine - Play Rough - TM127
  (59, 5900, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 47),
  -- Arcanine - Helping Hand - TM130
  (59, 5900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Arcanine - Reversal - TM134
  (59, 5900, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 49),
  -- Arcanine - Fire Blast - TM141
  (59, 5900, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 50),
  -- Arcanine - Wild Charge - TM147
  (59, 5900, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 51),
  -- Arcanine - Giga Impact - TM152
  (59, 5900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 52),
  -- Arcanine - Outrage - TM156
  (59, 5900, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 53),
  -- Arcanine - Overheat - TM157
  (59, 5900, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 54),
  -- Arcanine - Hyper Beam - TM163
  (59, 5900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Arcanine - Flare Blitz - TM165
  (59, 5900, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 56),
  -- Arcanine - Close Combat - TM167
  (59, 5900, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 57),
  -- Arcanine - Solar Beam - TM168
  (59, 5900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 58),
  -- Arcanine - Tera Blast - TM171
  (59, 5900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Arcanine - Double Kick - Egg
  (59, 5900, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Arcanine - Thrash - Egg
  (59, 5900, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Arcanine - Double-Edge - Egg
  (59, 5900, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Arcanine - Morning Sun - Egg
  (59, 5900, 234, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Arcanine - Covet - Egg
  (59, 5900, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Arcanine - Raging Fury - Egg
  (59, 5900, 833, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Arcanine - Extreme Speed - Evolution
  (59, 5900, 245, 23, NULL, 7, NULL, NULL, NULL, NULL, 66),
  -- Arcanine (Hisuian Arcanine) - Take Down - Level 1
  (59, 5901, 36, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arcanine (Hisuian Arcanine) - Leer - Level 1
  (59, 5901, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arcanine (Hisuian Arcanine) - Bite - Level 1
  (59, 5901, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arcanine (Hisuian Arcanine) - Roar - Level 1
  (59, 5901, 46, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arcanine (Hisuian Arcanine) - Ember - Level 1
  (59, 5901, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Arcanine (Hisuian Arcanine) - Rock Throw - Level 1
  (59, 5901, 88, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Arcanine (Hisuian Arcanine) - Agility - Level 1
  (59, 5901, 97, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Arcanine (Hisuian Arcanine) - Rock Slide - Level 1
  (59, 5901, 157, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Arcanine (Hisuian Arcanine) - Flame Wheel - Level 1
  (59, 5901, 172, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Arcanine (Hisuian Arcanine) - Reversal - Level 1
  (59, 5901, 179, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Arcanine (Hisuian Arcanine) - Crunch - Level 1
  (59, 5901, 242, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Arcanine (Hisuian Arcanine) - Helping Hand - Level 1
  (59, 5901, 270, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Arcanine (Hisuian Arcanine) - Howl - Level 1
  (59, 5901, 336, 23, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Arcanine (Hisuian Arcanine) - Flare Blitz - Level 1
  (59, 5901, 394, 23, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Arcanine (Hisuian Arcanine) - Fire Fang - Level 1
  (59, 5901, 424, 23, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Arcanine (Hisuian Arcanine) - Retaliate - Level 1
  (59, 5901, 514, 23, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Arcanine (Hisuian Arcanine) - Flamethrower - Level 5
  (59, 5901, 53, 23, NULL, 1, 5, NULL, NULL, NULL, 17),
  -- Arcanine (Hisuian Arcanine) - Raging Fury - Level 64
  (59, 5901, 833, 23, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Arcanine (Hisuian Arcanine) - Take Down - TM001
  (59, 5901, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Arcanine (Hisuian Arcanine) - Agility - TM004
  (59, 5901, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 20),
  -- Arcanine (Hisuian Arcanine) - Scary Face - TM006
  (59, 5901, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 21),
  -- Arcanine (Hisuian Arcanine) - Protect - TM007
  (59, 5901, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Arcanine (Hisuian Arcanine) - Fire Fang - TM008
  (59, 5901, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 23),
  -- Arcanine (Hisuian Arcanine) - Thunder Fang - TM009
  (59, 5901, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 24),
  -- Arcanine (Hisuian Arcanine) - Thief - TM018
  (59, 5901, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Arcanine (Hisuian Arcanine) - Fire Spin - TM024
  (59, 5901, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 26),
  -- Arcanine (Hisuian Arcanine) - Facade - TM025
  (59, 5901, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Arcanine (Hisuian Arcanine) - Aerial Ace - TM027
  (59, 5901, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 28),
  -- Arcanine (Hisuian Arcanine) - Bulldoze - TM028
  (59, 5901, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 29),
  -- Arcanine (Hisuian Arcanine) - Snarl - TM030
  (59, 5901, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 30),
  -- Arcanine (Hisuian Arcanine) - Rock Tomb - TM036
  (59, 5901, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 31),
  -- Arcanine (Hisuian Arcanine) - Flame Charge - TM038
  (59, 5901, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 32),
  -- Arcanine (Hisuian Arcanine) - Endure - TM047
  (59, 5901, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 33),
  -- Arcanine (Hisuian Arcanine) - Sunny Day - TM049
  (59, 5901, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 34),
  -- Arcanine (Hisuian Arcanine) - Sandstorm - TM051
  (59, 5901, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 35),
  -- Arcanine (Hisuian Arcanine) - Smart Strike - TM053
  (59, 5901, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 36),
  -- Arcanine (Hisuian Arcanine) - Dig - TM055
  (59, 5901, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 37),
  -- Arcanine (Hisuian Arcanine) - Psychic Fangs - TM063
  (59, 5901, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 38),
  -- Arcanine (Hisuian Arcanine) - Body Slam - TM066
  (59, 5901, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Arcanine (Hisuian Arcanine) - Sleep Talk - TM070
  (59, 5901, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Arcanine (Hisuian Arcanine) - Rock Blast - TM076
  (59, 5901, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 41),
  -- Arcanine (Hisuian Arcanine) - Rest - TM085
  (59, 5901, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Arcanine (Hisuian Arcanine) - Rock Slide - TM086
  (59, 5901, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 43),
  -- Arcanine (Hisuian Arcanine) - Iron Head - TM099
  (59, 5901, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 44),
  -- Arcanine (Hisuian Arcanine) - Power Gem - TM101
  (59, 5901, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 45),
  -- Arcanine (Hisuian Arcanine) - Substitute - TM103
  (59, 5901, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Arcanine (Hisuian Arcanine) - Will-O-Wisp - TM107
  (59, 5901, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 47),
  -- Arcanine (Hisuian Arcanine) - Crunch - TM108
  (59, 5901, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 48),
  -- Arcanine (Hisuian Arcanine) - Dragon Pulse - TM115
  (59, 5901, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 49),
  -- Arcanine (Hisuian Arcanine) - Stealth Rock - TM116
  (59, 5901, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 50),
  -- Arcanine (Hisuian Arcanine) - Hyper Voice - TM117
  (59, 5901, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 51),
  -- Arcanine (Hisuian Arcanine) - Heat Wave - TM118
  (59, 5901, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 52),
  -- Arcanine (Hisuian Arcanine) - Flamethrower - TM125
  (59, 5901, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 53),
  -- Arcanine (Hisuian Arcanine) - Helping Hand - TM130
  (59, 5901, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 54),
  -- Arcanine (Hisuian Arcanine) - Reversal - TM134
  (59, 5901, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 55),
  -- Arcanine (Hisuian Arcanine) - Fire Blast - TM141
  (59, 5901, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 56),
  -- Arcanine (Hisuian Arcanine) - Wild Charge - TM147
  (59, 5901, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 57),
  -- Arcanine (Hisuian Arcanine) - Stone Edge - TM150
  (59, 5901, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 58),
  -- Arcanine (Hisuian Arcanine) - Giga Impact - TM152
  (59, 5901, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 59),
  -- Arcanine (Hisuian Arcanine) - Outrage - TM156
  (59, 5901, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 60),
  -- Arcanine (Hisuian Arcanine) - Overheat - TM157
  (59, 5901, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 61),
  -- Arcanine (Hisuian Arcanine) - Hyper Beam - TM163
  (59, 5901, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 62),
  -- Arcanine (Hisuian Arcanine) - Flare Blitz - TM165
  (59, 5901, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 63),
  -- Arcanine (Hisuian Arcanine) - Close Combat - TM167
  (59, 5901, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 64),
  -- Arcanine (Hisuian Arcanine) - Solar Beam - TM168
  (59, 5901, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 65),
  -- Arcanine (Hisuian Arcanine) - Tera Blast - TM171
  (59, 5901, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 66),
  -- Arcanine (Hisuian Arcanine) - Double Kick - Egg
  (59, 5901, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Arcanine (Hisuian Arcanine) - Thrash - Egg
  (59, 5901, 37, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Arcanine (Hisuian Arcanine) - Double-Edge - Egg
  (59, 5901, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Arcanine (Hisuian Arcanine) - Morning Sun - Egg
  (59, 5901, 234, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Arcanine (Hisuian Arcanine) - Covet - Egg
  (59, 5901, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Arcanine (Hisuian Arcanine) - Head Smash - Egg
  (59, 5901, 457, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Arcanine (Hisuian Arcanine) - Extreme Speed - Evolution
  (59, 5901, 245, 23, NULL, 7, NULL, NULL, NULL, NULL, 73),
  -- Poliwag - Water Gun - Level 1
  (60, 6000, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwag - Hypnosis - Level 1
  (60, 6000, 95, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwag - Pound - Level 6
  (60, 6000, 1, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Poliwag - Mud Shot - Level 12
  (60, 6000, 341, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Poliwag - Bubble Beam - Level 18
  (60, 6000, 61, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Poliwag - Rain Dance - Level 24
  (60, 6000, 240, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Poliwag - Body Slam - Level 30
  (60, 6000, 34, 23, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Poliwag - Earth Power - Level 36
  (60, 6000, 414, 23, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Poliwag - Hydro Pump - Level 42
  (60, 6000, 56, 23, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Poliwag - Belly Drum - Level 48
  (60, 6000, 187, 23, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Poliwag - Double-Edge - Level 54
  (60, 6000, 38, 23, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Poliwag - Take Down - TM001
  (60, 6000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Poliwag - Mud-Slap - TM005
  (60, 6000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 13),
  -- Poliwag - Protect - TM007
  (60, 6000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Poliwag - Water Pulse - TM011
  (60, 6000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 15),
  -- Poliwag - Low Kick - TM012
  (60, 6000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 16),
  -- Poliwag - Thief - TM018
  (60, 6000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Poliwag - Chilling Water - TM022
  (60, 6000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 18),
  -- Poliwag - Facade - TM025
  (60, 6000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Poliwag - Bulldoze - TM028
  (60, 6000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Poliwag - Swift - TM032
  (60, 6000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Poliwag - Icy Wind - TM034
  (60, 6000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 22),
  -- Poliwag - Mud Shot - TM035
  (60, 6000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Poliwag - Endure - TM047
  (60, 6000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Poliwag - Rain Dance - TM050
  (60, 6000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Poliwag - Dig - TM055
  (60, 6000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 26),
  -- Poliwag - Body Slam - TM066
  (60, 6000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Poliwag - Sleep Talk - TM070
  (60, 6000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Poliwag - Waterfall - TM077
  (60, 6000, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 29),
  -- Poliwag - Rest - TM085
  (60, 6000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Poliwag - Substitute - TM103
  (60, 6000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 31),
  -- Poliwag - Liquidation - TM110
  (60, 6000, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 32),
  -- Poliwag - Psychic - TM120
  (60, 6000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 33),
  -- Poliwag - Encore - TM122
  (60, 6000, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 34),
  -- Poliwag - Surf - TM123
  (60, 6000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 35),
  -- Poliwag - Amnesia - TM128
  (60, 6000, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 36),
  -- Poliwag - Helping Hand - TM130
  (60, 6000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 37),
  -- Poliwag - Earth Power - TM133
  (60, 6000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 38),
  -- Poliwag - Ice Beam - TM135
  (60, 6000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 39),
  -- Poliwag - Hydro Pump - TM142
  (60, 6000, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 40),
  -- Poliwag - Blizzard - TM143
  (60, 6000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 41),
  -- Poliwag - Tera Blast - TM171
  (60, 6000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Poliwag - Mist - Egg
  (60, 6000, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Poliwag - Splash - Egg
  (60, 6000, 150, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Poliwag - Endeavor - Egg
  (60, 6000, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Poliwag - Muddy Water - Egg
  (60, 6000, 330, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Poliwag - Water Pulse - Egg
  (60, 6000, 352, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Poliwhirl - Pound - Level 1
  (61, 6100, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwhirl - Water Gun - Level 1
  (61, 6100, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwhirl - Hypnosis - Level 1
  (61, 6100, 95, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwhirl - Mud Shot - Level 1
  (61, 6100, 341, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Poliwhirl - Bubble Beam - Level 18
  (61, 6100, 61, 23, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Poliwhirl - Rain Dance - Level 24
  (61, 6100, 240, 23, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Poliwhirl - Body Slam - Level 32
  (61, 6100, 34, 23, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Poliwhirl - Earth Power - Level 40
  (61, 6100, 414, 23, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Poliwhirl - Hydro Pump - Level 48
  (61, 6100, 56, 23, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Poliwhirl - Belly Drum - Level 56
  (61, 6100, 187, 23, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Poliwhirl - Double-Edge - Level 66
  (61, 6100, 38, 23, NULL, 1, 66, NULL, NULL, NULL, 11),
  -- Poliwhirl - Take Down - TM001
  (61, 6100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Poliwhirl - Mud-Slap - TM005
  (61, 6100, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 13),
  -- Poliwhirl - Protect - TM007
  (61, 6100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Poliwhirl - Water Pulse - TM011
  (61, 6100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 15),
  -- Poliwhirl - Low Kick - TM012
  (61, 6100, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 16),
  -- Poliwhirl - Thief - TM018
  (61, 6100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Poliwhirl - Chilling Water - TM022
  (61, 6100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 18),
  -- Poliwhirl - Facade - TM025
  (61, 6100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Poliwhirl - Bulldoze - TM028
  (61, 6100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Poliwhirl - Swift - TM032
  (61, 6100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Poliwhirl - Icy Wind - TM034
  (61, 6100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 22),
  -- Poliwhirl - Mud Shot - TM035
  (61, 6100, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Poliwhirl - Low Sweep - TM039
  (61, 6100, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 24),
  -- Poliwhirl - Fling - TM043
  (61, 6100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Poliwhirl - Endure - TM047
  (61, 6100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Poliwhirl - Rain Dance - TM050
  (61, 6100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Poliwhirl - Dig - TM055
  (61, 6100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 28),
  -- Poliwhirl - Brick Break - TM058
  (61, 6100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 29),
  -- Poliwhirl - Body Slam - TM066
  (61, 6100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Poliwhirl - Ice Punch - TM069
  (61, 6100, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 31),
  -- Poliwhirl - Sleep Talk - TM070
  (61, 6100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Poliwhirl - Waterfall - TM077
  (61, 6100, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 33),
  -- Poliwhirl - Metronome - TM080
  (61, 6100, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 34),
  -- Poliwhirl - Rest - TM085
  (61, 6100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Poliwhirl - Substitute - TM103
  (61, 6100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Poliwhirl - Liquidation - TM110
  (61, 6100, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 37),
  -- Poliwhirl - Psychic - TM120
  (61, 6100, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 38),
  -- Poliwhirl - Encore - TM122
  (61, 6100, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 39),
  -- Poliwhirl - Surf - TM123
  (61, 6100, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 40),
  -- Poliwhirl - Amnesia - TM128
  (61, 6100, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 41),
  -- Poliwhirl - Helping Hand - TM130
  (61, 6100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Poliwhirl - Earth Power - TM133
  (61, 6100, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 43),
  -- Poliwhirl - Ice Beam - TM135
  (61, 6100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 44),
  -- Poliwhirl - Hydro Pump - TM142
  (61, 6100, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 45),
  -- Poliwhirl - Blizzard - TM143
  (61, 6100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 46),
  -- Poliwhirl - Earthquake - TM149
  (61, 6100, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 47),
  -- Poliwhirl - Tera Blast - TM171
  (61, 6100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Poliwhirl - Mist - Egg
  (61, 6100, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Poliwhirl - Splash - Egg
  (61, 6100, 150, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Poliwhirl - Endeavor - Egg
  (61, 6100, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Poliwhirl - Muddy Water - Egg
  (61, 6100, 330, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Poliwhirl - Water Pulse - Egg
  (61, 6100, 352, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Poliwrath - Body Slam - Level 1
  (62, 6200, 34, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwrath - Bubble Beam - Level 1
  (62, 6200, 61, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwrath - Hypnosis - Level 1
  (62, 6200, 95, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwrath - Take Down - TM001
  (62, 6200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 4),
  -- Poliwrath - Mud-Slap - TM005
  (62, 6200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 5),
  -- Poliwrath - Scary Face - TM006
  (62, 6200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 6),
  -- Poliwrath - Protect - TM007
  (62, 6200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 7),
  -- Poliwrath - Water Pulse - TM011
  (62, 6200, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 8),
  -- Poliwrath - Low Kick - TM012
  (62, 6200, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 9),
  -- Poliwrath - Thief - TM018
  (62, 6200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 10),
  -- Poliwrath - Chilling Water - TM022
  (62, 6200, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 11),
  -- Poliwrath - Facade - TM025
  (62, 6200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 12),
  -- Poliwrath - Bulldoze - TM028
  (62, 6200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 13),
  -- Poliwrath - Swift - TM032
  (62, 6200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 14),
  -- Poliwrath - Icy Wind - TM034
  (62, 6200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 15),
  -- Poliwrath - Mud Shot - TM035
  (62, 6200, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 16),
  -- Poliwrath - Rock Tomb - TM036
  (62, 6200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 17),
  -- Poliwrath - Low Sweep - TM039
  (62, 6200, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 18),
  -- Poliwrath - Fling - TM043
  (62, 6200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 19),
  -- Poliwrath - Endure - TM047
  (62, 6200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 20),
  -- Poliwrath - Rain Dance - TM050
  (62, 6200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 21),
  -- Poliwrath - Dig - TM055
  (62, 6200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 22),
  -- Poliwrath - Brick Break - TM058
  (62, 6200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 23),
  -- Poliwrath - Bulk Up - TM064
  (62, 6200, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 24),
  -- Poliwrath - Body Slam - TM066
  (62, 6200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 25),
  -- Poliwrath - Ice Punch - TM069
  (62, 6200, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 26),
  -- Poliwrath - Sleep Talk - TM070
  (62, 6200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Poliwrath - Drain Punch - TM073
  (62, 6200, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 28),
  -- Poliwrath - Waterfall - TM077
  (62, 6200, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 29),
  -- Poliwrath - Metronome - TM080
  (62, 6200, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 30),
  -- Poliwrath - Poison Jab - TM083
  (62, 6200, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 31),
  -- Poliwrath - Rest - TM085
  (62, 6200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Poliwrath - Rock Slide - TM086
  (62, 6200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 33),
  -- Poliwrath - Taunt - TM087
  (62, 6200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 34),
  -- Poliwrath - Substitute - TM103
  (62, 6200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Poliwrath - Liquidation - TM110
  (62, 6200, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 36),
  -- Poliwrath - Psychic - TM120
  (62, 6200, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 37),
  -- Poliwrath - Encore - TM122
  (62, 6200, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 38),
  -- Poliwrath - Surf - TM123
  (62, 6200, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 39),
  -- Poliwrath - Amnesia - TM128
  (62, 6200, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 40),
  -- Poliwrath - Helping Hand - TM130
  (62, 6200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Poliwrath - Baton Pass - TM132
  (62, 6200, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 42),
  -- Poliwrath - Earth Power - TM133
  (62, 6200, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 43),
  -- Poliwrath - Reversal - TM134
  (62, 6200, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 44),
  -- Poliwrath - Ice Beam - TM135
  (62, 6200, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 45),
  -- Poliwrath - Hydro Pump - TM142
  (62, 6200, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 46),
  -- Poliwrath - Blizzard - TM143
  (62, 6200, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 47),
  -- Poliwrath - Earthquake - TM149
  (62, 6200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 48),
  -- Poliwrath - Giga Impact - TM152
  (62, 6200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 49),
  -- Poliwrath - Focus Blast - TM158
  (62, 6200, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 50),
  -- Poliwrath - Hyper Beam - TM163
  (62, 6200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Poliwrath - Close Combat - TM167
  (62, 6200, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 52),
  -- Poliwrath - Tera Blast - TM171
  (62, 6200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Poliwrath - Mist - Egg
  (62, 6200, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Poliwrath - Splash - Egg
  (62, 6200, 150, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Poliwrath - Endeavor - Egg
  (62, 6200, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Poliwrath - Muddy Water - Egg
  (62, 6200, 330, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Poliwrath - Water Pulse - Egg
  (62, 6200, 352, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Poliwrath - Dynamic Punch - Evolution
  (62, 6200, 223, 23, NULL, 7, NULL, NULL, NULL, NULL, 59),
  -- Poliwrath - Pound - Reminder
  (62, 6200, 1, 23, NULL, 9, NULL, NULL, NULL, NULL, 60),
  -- Poliwrath - Double-Edge - Reminder
  (62, 6200, 38, 23, NULL, 9, NULL, NULL, NULL, NULL, 61),
  -- Poliwrath - Water Gun - Reminder
  (62, 6200, 55, 23, NULL, 9, NULL, NULL, NULL, NULL, 62),
  -- Poliwrath - Hydro Pump - Reminder
  (62, 6200, 56, 23, NULL, 9, NULL, NULL, NULL, NULL, 63),
  -- Poliwrath - Belly Drum - Reminder
  (62, 6200, 187, 23, NULL, 9, NULL, NULL, NULL, NULL, 64),
  -- Poliwrath - Rain Dance - Reminder
  (62, 6200, 240, 23, NULL, 9, NULL, NULL, NULL, NULL, 65),
  -- Poliwrath - Mud Shot - Reminder
  (62, 6200, 341, 23, NULL, 9, NULL, NULL, NULL, NULL, 66),
  -- Poliwrath - Earth Power - Reminder
  (62, 6200, 414, 23, NULL, 9, NULL, NULL, NULL, NULL, 67),
  -- Poliwrath - Circle Throw - Reminder
  (62, 6200, 509, 23, NULL, 9, NULL, NULL, NULL, NULL, 68),
  -- Bellsprout - Vine Whip - Level 1
  (69, 6900, 22, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bellsprout - Growth - Level 7
  (69, 6900, 74, 23, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Bellsprout - Wrap - Level 11
  (69, 6900, 35, 23, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Bellsprout - Sleep Powder - Level 13
  (69, 6900, 79, 23, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Bellsprout - Poison Powder - Level 15
  (69, 6900, 77, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Bellsprout - Stun Spore - Level 17
  (69, 6900, 78, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Bellsprout - Acid - Level 23
  (69, 6900, 51, 23, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Bellsprout - Knock Off - Level 27
  (69, 6900, 282, 23, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Bellsprout - Sweet Scent - Level 29
  (69, 6900, 230, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Bellsprout - Gastro Acid - Level 35
  (69, 6900, 380, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Bellsprout - Razor Leaf - Level 39
  (69, 6900, 75, 23, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Bellsprout - Poison Jab - Level 41
  (69, 6900, 398, 23, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Bellsprout - Slam - Level 47
  (69, 6900, 21, 23, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Bellsprout - Power Whip - Level 52
  (69, 6900, 438, 23, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Bellsprout - Protect - TM007
  (69, 6900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Bellsprout - Acid Spray - TM013
  (69, 6900, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 16),
  -- Bellsprout - Thief - TM018
  (69, 6900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Bellsprout - Trailblaze - TM020
  (69, 6900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Bellsprout - Pounce - TM021
  (69, 6900, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 19),
  -- Bellsprout - Facade - TM025
  (69, 6900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Bellsprout - Magical Leaf - TM033
  (69, 6900, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 21),
  -- Bellsprout - Venoshock - TM045
  (69, 6900, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 22),
  -- Bellsprout - Endure - TM047
  (69, 6900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Bellsprout - Sunny Day - TM049
  (69, 6900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Bellsprout - Bullet Seed - TM056
  (69, 6900, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 25),
  -- Bellsprout - Sleep Talk - TM070
  (69, 6900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Bellsprout - Seed Bomb - TM071
  (69, 6900, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 27),
  -- Bellsprout - Reflect - TM074
  (69, 6900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 28),
  -- Bellsprout - Grass Knot - TM081
  (69, 6900, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 29),
  -- Bellsprout - Poison Jab - TM083
  (69, 6900, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 30),
  -- Bellsprout - Rest - TM085
  (69, 6900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Bellsprout - Swords Dance - TM088
  (69, 6900, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 32),
  -- Bellsprout - Leech Life - TM095
  (69, 6900, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 33),
  -- Bellsprout - Substitute - TM103
  (69, 6900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 34),
  -- Bellsprout - Giga Drain - TM111
  (69, 6900, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 35),
  -- Bellsprout - Energy Ball - TM119
  (69, 6900, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 36),
  -- Bellsprout - Encore - TM122
  (69, 6900, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 37),
  -- Bellsprout - Grassy Terrain - TM137
  (69, 6900, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 38),
  -- Bellsprout - Sludge Bomb - TM148
  (69, 6900, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 39),
  -- Bellsprout - Leaf Storm - TM159
  (69, 6900, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 40),
  -- Bellsprout - Solar Beam - TM168
  (69, 6900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 41),
  -- Bellsprout - Tera Blast - TM171
  (69, 6900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Bellsprout - Synthesis - Egg
  (69, 6900, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bellsprout - Ingrain - Egg
  (69, 6900, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bellsprout - Tickle - Egg
  (69, 6900, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bellsprout - Worry Seed - Egg
  (69, 6900, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bellsprout - Sucker Punch - Egg
  (69, 6900, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bellsprout - Clear Smog - Egg
  (69, 6900, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bellsprout - Strength Sap - Egg
  (69, 6900, 668, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Weepinbell - Vine Whip - Level 1
  (70, 7000, 22, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weepinbell - Wrap - Level 1
  (70, 7000, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weepinbell - Growth - Level 1
  (70, 7000, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weepinbell - Sleep Powder - Level 13
  (70, 7000, 79, 23, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Weepinbell - Poison Powder - Level 15
  (70, 7000, 77, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Weepinbell - Stun Spore - Level 17
  (70, 7000, 78, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Weepinbell - Acid - Level 24
  (70, 7000, 51, 23, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Weepinbell - Knock Off - Level 29
  (70, 7000, 282, 23, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Weepinbell - Sweet Scent - Level 32
  (70, 7000, 230, 23, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Weepinbell - Gastro Acid - Level 39
  (70, 7000, 380, 23, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Weepinbell - Razor Leaf - Level 44
  (70, 7000, 75, 23, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Weepinbell - Poison Jab - Level 47
  (70, 7000, 398, 23, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Weepinbell - Slam - Level 54
  (70, 7000, 21, 23, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Weepinbell - Power Whip - Level 58
  (70, 7000, 438, 23, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Weepinbell - Protect - TM007
  (70, 7000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Weepinbell - Acid Spray - TM013
  (70, 7000, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 16),
  -- Weepinbell - Thief - TM018
  (70, 7000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Weepinbell - Trailblaze - TM020
  (70, 7000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Weepinbell - Pounce - TM021
  (70, 7000, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 19),
  -- Weepinbell - Facade - TM025
  (70, 7000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Weepinbell - Swift - TM032
  (70, 7000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Weepinbell - Magical Leaf - TM033
  (70, 7000, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Weepinbell - Venoshock - TM045
  (70, 7000, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 23),
  -- Weepinbell - Endure - TM047
  (70, 7000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Weepinbell - Sunny Day - TM049
  (70, 7000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Weepinbell - Bullet Seed - TM056
  (70, 7000, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 26),
  -- Weepinbell - Body Slam - TM066
  (70, 7000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Weepinbell - Sleep Talk - TM070
  (70, 7000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Weepinbell - Seed Bomb - TM071
  (70, 7000, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 29),
  -- Weepinbell - Reflect - TM074
  (70, 7000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 30),
  -- Weepinbell - Grass Knot - TM081
  (70, 7000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 31),
  -- Weepinbell - Poison Jab - TM083
  (70, 7000, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 32),
  -- Weepinbell - Rest - TM085
  (70, 7000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Weepinbell - Swords Dance - TM088
  (70, 7000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 34),
  -- Weepinbell - Leech Life - TM095
  (70, 7000, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 35),
  -- Weepinbell - Substitute - TM103
  (70, 7000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Weepinbell - Giga Drain - TM111
  (70, 7000, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 37),
  -- Weepinbell - Energy Ball - TM119
  (70, 7000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 38),
  -- Weepinbell - Encore - TM122
  (70, 7000, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 39),
  -- Weepinbell - Grassy Terrain - TM137
  (70, 7000, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 40),
  -- Weepinbell - Sludge Bomb - TM148
  (70, 7000, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 41),
  -- Weepinbell - Leaf Storm - TM159
  (70, 7000, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 42),
  -- Weepinbell - Solar Beam - TM168
  (70, 7000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 43),
  -- Weepinbell - Tera Blast - TM171
  (70, 7000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Weepinbell - Synthesis - Egg
  (70, 7000, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Weepinbell - Ingrain - Egg
  (70, 7000, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Weepinbell - Tickle - Egg
  (70, 7000, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Weepinbell - Worry Seed - Egg
  (70, 7000, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Weepinbell - Sucker Punch - Egg
  (70, 7000, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Weepinbell - Clear Smog - Egg
  (70, 7000, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Weepinbell - Strength Sap - Egg
  (70, 7000, 668, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Victreebel - Vine Whip - Level 1
  (71, 7100, 22, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Victreebel - Razor Leaf - Level 1
  (71, 7100, 75, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Victreebel - Sleep Powder - Level 1
  (71, 7100, 79, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Victreebel - Sweet Scent - Level 1
  (71, 7100, 230, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Victreebel - Leaf Blade - Level 44
  (71, 7100, 348, 23, NULL, 1, 44, NULL, NULL, NULL, 5),
  -- Victreebel - Scary Face - TM006
  (71, 7100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 6),
  -- Victreebel - Protect - TM007
  (71, 7100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 7),
  -- Victreebel - Acid Spray - TM013
  (71, 7100, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 8),
  -- Victreebel - Thief - TM018
  (71, 7100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 9),
  -- Victreebel - Trailblaze - TM020
  (71, 7100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 10),
  -- Victreebel - Pounce - TM021
  (71, 7100, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 11),
  -- Victreebel - Facade - TM025
  (71, 7100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 12),
  -- Victreebel - Swift - TM032
  (71, 7100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 13),
  -- Victreebel - Magical Leaf - TM033
  (71, 7100, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 14),
  -- Victreebel - Venoshock - TM045
  (71, 7100, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 15),
  -- Victreebel - Endure - TM047
  (71, 7100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 16),
  -- Victreebel - Sunny Day - TM049
  (71, 7100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 17),
  -- Victreebel - Bullet Seed - TM056
  (71, 7100, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 18),
  -- Victreebel - Body Slam - TM066
  (71, 7100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 19),
  -- Victreebel - Sleep Talk - TM070
  (71, 7100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 20),
  -- Victreebel - Seed Bomb - TM071
  (71, 7100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 21),
  -- Victreebel - Reflect - TM074
  (71, 7100, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 22),
  -- Victreebel - Grass Knot - TM081
  (71, 7100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 23),
  -- Victreebel - Poison Jab - TM083
  (71, 7100, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 24),
  -- Victreebel - Rest - TM085
  (71, 7100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 25),
  -- Victreebel - Swords Dance - TM088
  (71, 7100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 26),
  -- Victreebel - Leech Life - TM095
  (71, 7100, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 27),
  -- Victreebel - Substitute - TM103
  (71, 7100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 28),
  -- Victreebel - Giga Drain - TM111
  (71, 7100, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 29),
  -- Victreebel - Energy Ball - TM119
  (71, 7100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 30),
  -- Victreebel - Encore - TM122
  (71, 7100, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 31),
  -- Victreebel - Grassy Terrain - TM137
  (71, 7100, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 32),
  -- Victreebel - Sludge Bomb - TM148
  (71, 7100, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 33),
  -- Victreebel - Giga Impact - TM152
  (71, 7100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 34),
  -- Victreebel - Leaf Storm - TM159
  (71, 7100, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 35),
  -- Victreebel - Hyper Beam - TM163
  (71, 7100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 36),
  -- Victreebel - Solar Beam - TM168
  (71, 7100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 37),
  -- Victreebel - Tera Blast - TM171
  (71, 7100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 38),
  -- Victreebel - Synthesis - Egg
  (71, 7100, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Victreebel - Ingrain - Egg
  (71, 7100, 275, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Victreebel - Tickle - Egg
  (71, 7100, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Victreebel - Worry Seed - Egg
  (71, 7100, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Victreebel - Sucker Punch - Egg
  (71, 7100, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Victreebel - Clear Smog - Egg
  (71, 7100, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Victreebel - Strength Sap - Egg
  (71, 7100, 668, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Victreebel - Leaf Storm - Evolution
  (71, 7100, 437, 23, NULL, 7, NULL, NULL, NULL, NULL, 46),
  -- Victreebel - Stockpile - Reminder
  (71, 7100, 254, 23, NULL, 9, NULL, NULL, NULL, NULL, 47),
  -- Victreebel - Spit Up - Reminder
  (71, 7100, 255, 23, NULL, 9, NULL, NULL, NULL, NULL, 48),
  -- Victreebel - Swallow - Reminder
  (71, 7100, 256, 23, NULL, 9, NULL, NULL, NULL, NULL, 49),
  -- Victreebel - Gastro Acid - Reminder
  (71, 7100, 380, 23, NULL, 9, NULL, NULL, NULL, NULL, 50),
  -- Victreebel - Power Whip - Reminder
  (71, 7100, 438, 23, NULL, 9, NULL, NULL, NULL, NULL, 51),
  -- Tentacool - Poison Sting - Level 1
  (72, 7200, 40, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacool - Water Gun - Level 1
  (72, 7200, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tentacool - Acid - Level 4
  (72, 7200, 51, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Tentacool - Wrap - Level 8
  (72, 7200, 35, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Tentacool - Supersonic - Level 12
  (72, 7200, 48, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Tentacool - Water Pulse - Level 16
  (72, 7200, 352, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Tentacool - Screech - Level 20
  (72, 7200, 103, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Tentacool - Bubble Beam - Level 24
  (72, 7200, 61, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Tentacool - Hex - Level 28
  (72, 7200, 506, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Tentacool - Acid Armor - Level 32
  (72, 7200, 151, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Tentacool - Poison Jab - Level 36
  (72, 7200, 398, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Tentacool - Surf - Level 40
  (72, 7200, 57, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Tentacool - Sludge Wave - Level 44
  (72, 7200, 482, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Tentacool - Hydro Pump - Level 48
  (72, 7200, 56, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Tentacool - Protect - TM007
  (72, 7200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Tentacool - Water Pulse - TM011
  (72, 7200, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 16),
  -- Tentacool - Acid Spray - TM013
  (72, 7200, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 17),
  -- Tentacool - Confuse Ray - TM017
  (72, 7200, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 18),
  -- Tentacool - Thief - TM018
  (72, 7200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Tentacool - Pounce - TM021
  (72, 7200, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 20),
  -- Tentacool - Chilling Water - TM022
  (72, 7200, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Tentacool - Facade - TM025
  (72, 7200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Tentacool - Hex - TM029
  (72, 7200, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 23),
  -- Tentacool - Swift - TM032
  (72, 7200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Tentacool - Icy Wind - TM034
  (72, 7200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Tentacool - Mud Shot - TM035
  (72, 7200, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 26),
  -- Tentacool - Venoshock - TM045
  (72, 7200, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 27),
  -- Tentacool - Endure - TM047
  (72, 7200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Tentacool - Rain Dance - TM050
  (72, 7200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Tentacool - Sleep Talk - TM070
  (72, 7200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Tentacool - Dazzling Gleam - TM079
  (72, 7200, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 31),
  -- Tentacool - Poison Jab - TM083
  (72, 7200, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 32),
  -- Tentacool - Rest - TM085
  (72, 7200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Tentacool - Swords Dance - TM088
  (72, 7200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 34),
  -- Tentacool - Toxic Spikes - TM091
  (72, 7200, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 35),
  -- Tentacool - Gunk Shot - TM102
  (72, 7200, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 36),
  -- Tentacool - Substitute - TM103
  (72, 7200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Tentacool - Liquidation - TM110
  (72, 7200, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 38),
  -- Tentacool - Giga Drain - TM111
  (72, 7200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 39),
  -- Tentacool - Surf - TM123
  (72, 7200, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 40),
  -- Tentacool - Ice Beam - TM135
  (72, 7200, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 41),
  -- Tentacool - Hydro Pump - TM142
  (72, 7200, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 42),
  -- Tentacool - Blizzard - TM143
  (72, 7200, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 43),
  -- Tentacool - Sludge Bomb - TM148
  (72, 7200, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 44),
  -- Tentacool - Tera Blast - TM171
  (72, 7200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Tentacool - Aurora Beam - Egg
  (72, 7200, 62, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Tentacool - Confuse Ray - Egg
  (72, 7200, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Tentacool - Haze - Egg
  (72, 7200, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Tentacool - Rapid Spin - Egg
  (72, 7200, 229, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Tentacool - Mirror Coat - Egg
  (72, 7200, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tentacool - Knock Off - Egg
  (72, 7200, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tentacool - Tickle - Egg
  (72, 7200, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tentacool - Acupressure - Egg
  (72, 7200, 367, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tentacool - Aqua Ring - Egg
  (72, 7200, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tentacruel - Wrap - Level 1
  (73, 7300, 35, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacruel - Poison Sting - Level 1
  (73, 7300, 40, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tentacruel - Acid - Level 1
  (73, 7300, 51, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tentacruel - Water Gun - Level 1
  (73, 7300, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tentacruel - Reflect Type - Level 1
  (73, 7300, 513, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tentacruel - Supersonic - Level 12
  (73, 7300, 48, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Tentacruel - Water Pulse - Level 16
  (73, 7300, 352, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Tentacruel - Screech - Level 20
  (73, 7300, 103, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Tentacruel - Bubble Beam - Level 24
  (73, 7300, 61, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Tentacruel - Hex - Level 28
  (73, 7300, 506, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Tentacruel - Acid Armor - Level 34
  (73, 7300, 151, 23, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Tentacruel - Poison Jab - Level 40
  (73, 7300, 398, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Tentacruel - Surf - Level 46
  (73, 7300, 57, 23, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Tentacruel - Sludge Wave - Level 52
  (73, 7300, 482, 23, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Tentacruel - Hydro Pump - Level 58
  (73, 7300, 56, 23, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Tentacruel - Scary Face - TM006
  (73, 7300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Tentacruel - Protect - TM007
  (73, 7300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Tentacruel - Water Pulse - TM011
  (73, 7300, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Tentacruel - Acid Spray - TM013
  (73, 7300, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 19),
  -- Tentacruel - Confuse Ray - TM017
  (73, 7300, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 20),
  -- Tentacruel - Thief - TM018
  (73, 7300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Tentacruel - Pounce - TM021
  (73, 7300, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 22),
  -- Tentacruel - Chilling Water - TM022
  (73, 7300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 23),
  -- Tentacruel - Facade - TM025
  (73, 7300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Tentacruel - Hex - TM029
  (73, 7300, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 25),
  -- Tentacruel - Swift - TM032
  (73, 7300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Tentacruel - Icy Wind - TM034
  (73, 7300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Tentacruel - Mud Shot - TM035
  (73, 7300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 28),
  -- Tentacruel - Venoshock - TM045
  (73, 7300, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 29),
  -- Tentacruel - Endure - TM047
  (73, 7300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Tentacruel - Rain Dance - TM050
  (73, 7300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Tentacruel - Sleep Talk - TM070
  (73, 7300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Tentacruel - Dazzling Gleam - TM079
  (73, 7300, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 33),
  -- Tentacruel - Poison Jab - TM083
  (73, 7300, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 34),
  -- Tentacruel - Rest - TM085
  (73, 7300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Tentacruel - Swords Dance - TM088
  (73, 7300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 36),
  -- Tentacruel - Toxic Spikes - TM091
  (73, 7300, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 37),
  -- Tentacruel - Gunk Shot - TM102
  (73, 7300, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 38),
  -- Tentacruel - Substitute - TM103
  (73, 7300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Tentacruel - Liquidation - TM110
  (73, 7300, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 40),
  -- Tentacruel - Giga Drain - TM111
  (73, 7300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 41),
  -- Tentacruel - Surf - TM123
  (73, 7300, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 42),
  -- Tentacruel - Ice Beam - TM135
  (73, 7300, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 43),
  -- Tentacruel - Hydro Pump - TM142
  (73, 7300, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 44),
  -- Tentacruel - Blizzard - TM143
  (73, 7300, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 45),
  -- Tentacruel - Sludge Bomb - TM148
  (73, 7300, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 46),
  -- Tentacruel - Giga Impact - TM152
  (73, 7300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 47),
  -- Tentacruel - Hyper Beam - TM163
  (73, 7300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 48),
  -- Tentacruel - Tera Blast - TM171
  (73, 7300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 49),
  -- Tentacruel - Aurora Beam - Egg
  (73, 7300, 62, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tentacruel - Confuse Ray - Egg
  (73, 7300, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tentacruel - Haze - Egg
  (73, 7300, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tentacruel - Rapid Spin - Egg
  (73, 7300, 229, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tentacruel - Mirror Coat - Egg
  (73, 7300, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tentacruel - Knock Off - Egg
  (73, 7300, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Tentacruel - Tickle - Egg
  (73, 7300, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tentacruel - Acupressure - Egg
  (73, 7300, 367, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tentacruel - Aqua Ring - Egg
  (73, 7300, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Geodude - Tackle - Level 1
  (74, 7400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Geodude - Defense Curl - Level 1
  (74, 7400, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Geodude - Rock Polish - Level 6
  (74, 7400, 397, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Geodude - Rollout - Level 10
  (74, 7400, 205, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Geodude - Bulldoze - Level 12
  (74, 7400, 523, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Geodude - Rock Throw - Level 16
  (74, 7400, 88, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Geodude - Smack Down - Level 18
  (74, 7400, 479, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Geodude - Self-Destruct - Level 24
  (74, 7400, 120, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Geodude - Stealth Rock - Level 28
  (74, 7400, 446, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Geodude - Rock Blast - Level 30
  (74, 7400, 350, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Geodude - Earthquake - Level 34
  (74, 7400, 89, 23, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Geodude - Explosion - Level 36
  (74, 7400, 153, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Geodude - Double-Edge - Level 40
  (74, 7400, 38, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Geodude - Stone Edge - Level 42
  (74, 7400, 444, 23, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Geodude - Take Down - TM001
  (74, 7400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Geodude - Mud-Slap - TM005
  (74, 7400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Geodude - Scary Face - TM006
  (74, 7400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Geodude - Protect - TM007
  (74, 7400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Geodude - Facade - TM025
  (74, 7400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Geodude - Bulldoze - TM028
  (74, 7400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Geodude - Mud Shot - TM035
  (74, 7400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 21),
  -- Geodude - Rock Tomb - TM036
  (74, 7400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Geodude - Fling - TM043
  (74, 7400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 23),
  -- Geodude - Endure - TM047
  (74, 7400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Geodude - Sunny Day - TM049
  (74, 7400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Geodude - Sandstorm - TM051
  (74, 7400, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 26),
  -- Geodude - Dig - TM055
  (74, 7400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Geodude - Brick Break - TM058
  (74, 7400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 28),
  -- Geodude - Body Slam - TM066
  (74, 7400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Geodude - Fire Punch - TM067
  (74, 7400, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 30),
  -- Geodude - Thunder Punch - TM068
  (74, 7400, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 31),
  -- Geodude - Sleep Talk - TM070
  (74, 7400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Geodude - Rock Blast - TM076
  (74, 7400, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 33),
  -- Geodude - Metronome - TM080
  (74, 7400, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 34),
  -- Geodude - Stomping Tantrum - TM084
  (74, 7400, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 35),
  -- Geodude - Rest - TM085
  (74, 7400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Geodude - Rock Slide - TM086
  (74, 7400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Geodude - Substitute - TM103
  (74, 7400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Geodude - Iron Defense - TM104
  (74, 7400, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 39),
  -- Geodude - Stealth Rock - TM116
  (74, 7400, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 40),
  -- Geodude - Flamethrower - TM125
  (74, 7400, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 41),
  -- Geodude - Earth Power - TM133
  (74, 7400, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 42),
  -- Geodude - Fire Blast - TM141
  (74, 7400, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 43),
  -- Geodude - Earthquake - TM149
  (74, 7400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 44),
  -- Geodude - Stone Edge - TM150
  (74, 7400, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 45),
  -- Geodude - Tera Blast - TM171
  (74, 7400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Geodude - Mega Punch - Egg
  (74, 7400, 5, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Geodude - Curse - Egg
  (74, 7400, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Geodude - Flail - Egg
  (74, 7400, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Geodude - Dynamic Punch - Egg
  (74, 7400, 223, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Geodude - Block - Egg
  (74, 7400, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Geodude - Hammer Arm - Egg
  (74, 7400, 359, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Geodude - Wide Guard - Egg
  (74, 7400, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Geodude (Alolan Geodude) - Tackle - Level 1
  (74, 7401, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Geodude (Alolan Geodude) - Defense Curl - Level 1
  (74, 7401, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Geodude (Alolan Geodude) - Charge - Level 4
  (74, 7401, 268, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Geodude (Alolan Geodude) - Rock Polish - Level 6
  (74, 7401, 397, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Geodude (Alolan Geodude) - Rollout - Level 10
  (74, 7401, 205, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Geodude (Alolan Geodude) - Spark - Level 12
  (74, 7401, 209, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Geodude (Alolan Geodude) - Rock Throw - Level 16
  (74, 7401, 88, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Geodude (Alolan Geodude) - Smack Down - Level 18
  (74, 7401, 479, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Geodude (Alolan Geodude) - Thunder Punch - Level 22
  (74, 7401, 9, 23, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Geodude (Alolan Geodude) - Self-Destruct - Level 24
  (74, 7401, 120, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Geodude (Alolan Geodude) - Stealth Rock - Level 28
  (74, 7401, 446, 23, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Geodude (Alolan Geodude) - Rock Blast - Level 30
  (74, 7401, 350, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Geodude (Alolan Geodude) - Discharge - Level 34
  (74, 7401, 435, 23, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Geodude (Alolan Geodude) - Explosion - Level 36
  (74, 7401, 153, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Geodude (Alolan Geodude) - Double-Edge - Level 40
  (74, 7401, 38, 23, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Geodude (Alolan Geodude) - Stone Edge - Level 42
  (74, 7401, 444, 23, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Geodude (Alolan Geodude) - Take Down - TM001
  (74, 7401, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Geodude (Alolan Geodude) - Mud-Slap - TM005
  (74, 7401, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Geodude (Alolan Geodude) - Protect - TM007
  (74, 7401, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Geodude (Alolan Geodude) - Charge Beam - TM023
  (74, 7401, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Geodude (Alolan Geodude) - Facade - TM025
  (74, 7401, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Geodude (Alolan Geodude) - Bulldoze - TM028
  (74, 7401, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Geodude (Alolan Geodude) - Mud Shot - TM035
  (74, 7401, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 23),
  -- Geodude (Alolan Geodude) - Rock Tomb - TM036
  (74, 7401, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Geodude (Alolan Geodude) - Fling - TM043
  (74, 7401, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Geodude (Alolan Geodude) - Endure - TM047
  (74, 7401, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Geodude (Alolan Geodude) - Volt Switch - TM048
  (74, 7401, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 27),
  -- Geodude (Alolan Geodude) - Sunny Day - TM049
  (74, 7401, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Geodude (Alolan Geodude) - Sandstorm - TM051
  (74, 7401, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 29),
  -- Geodude (Alolan Geodude) - Dig - TM055
  (74, 7401, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Geodude (Alolan Geodude) - Brick Break - TM058
  (74, 7401, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Geodude (Alolan Geodude) - Body Slam - TM066
  (74, 7401, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Geodude (Alolan Geodude) - Fire Punch - TM067
  (74, 7401, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 33),
  -- Geodude (Alolan Geodude) - Thunder Punch - TM068
  (74, 7401, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 34),
  -- Geodude (Alolan Geodude) - Sleep Talk - TM070
  (74, 7401, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Geodude (Alolan Geodude) - Rock Blast - TM076
  (74, 7401, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 36),
  -- Geodude (Alolan Geodude) - Thunder Wave - TM082
  (74, 7401, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 37),
  -- Geodude (Alolan Geodude) - Rest - TM085
  (74, 7401, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Geodude (Alolan Geodude) - Rock Slide - TM086
  (74, 7401, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 39),
  -- Geodude (Alolan Geodude) - Substitute - TM103
  (74, 7401, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Geodude (Alolan Geodude) - Iron Defense - TM104
  (74, 7401, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 41),
  -- Geodude (Alolan Geodude) - Stealth Rock - TM116
  (74, 7401, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 42),
  -- Geodude (Alolan Geodude) - Flamethrower - TM125
  (74, 7401, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 43),
  -- Geodude (Alolan Geodude) - Thunderbolt - TM126
  (74, 7401, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 44),
  -- Geodude (Alolan Geodude) - Earth Power - TM133
  (74, 7401, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 45),
  -- Geodude (Alolan Geodude) - Fire Blast - TM141
  (74, 7401, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 46),
  -- Geodude (Alolan Geodude) - Wild Charge - TM147
  (74, 7401, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 47),
  -- Geodude (Alolan Geodude) - Earthquake - TM149
  (74, 7401, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 48),
  -- Geodude (Alolan Geodude) - Stone Edge - TM150
  (74, 7401, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 49),
  -- Geodude (Alolan Geodude) - Thunder - TM166
  (74, 7401, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 50),
  -- Geodude (Alolan Geodude) - Tera Blast - TM171
  (74, 7401, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Geodude (Alolan Geodude) - Counter - Egg
  (74, 7401, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Geodude (Alolan Geodude) - Screech - Egg
  (74, 7401, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Geodude (Alolan Geodude) - Curse - Egg
  (74, 7401, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Geodude (Alolan Geodude) - Flail - Egg
  (74, 7401, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Geodude (Alolan Geodude) - Zap Cannon - Egg
  (74, 7401, 192, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Geodude (Alolan Geodude) - Endure - Egg
  (74, 7401, 203, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Geodude (Alolan Geodude) - Block - Egg
  (74, 7401, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Geodude (Alolan Geodude) - Wide Guard - Egg
  (74, 7401, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Graveler - Tackle - Level 1
  (75, 7500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Graveler - Defense Curl - Level 1
  (75, 7500, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Graveler - Rock Polish - Level 1
  (75, 7500, 397, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Graveler - Rollout - Level 10
  (75, 7500, 205, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Graveler - Bulldoze - Level 12
  (75, 7500, 523, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Graveler - Rock Throw - Level 16
  (75, 7500, 88, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Graveler - Smack Down - Level 18
  (75, 7500, 479, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Graveler - Self-Destruct - Level 24
  (75, 7500, 120, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Graveler - Stealth Rock - Level 30
  (75, 7500, 446, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Graveler - Rock Blast - Level 34
  (75, 7500, 350, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Graveler - Earthquake - Level 40
  (75, 7500, 89, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Graveler - Explosion - Level 44
  (75, 7500, 153, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Graveler - Double-Edge - Level 50
  (75, 7500, 38, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Graveler - Stone Edge - Level 54
  (75, 7500, 444, 23, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Graveler - Take Down - TM001
  (75, 7500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Graveler - Mud-Slap - TM005
  (75, 7500, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Graveler - Scary Face - TM006
  (75, 7500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Graveler - Protect - TM007
  (75, 7500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Graveler - Facade - TM025
  (75, 7500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Graveler - Bulldoze - TM028
  (75, 7500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Graveler - Mud Shot - TM035
  (75, 7500, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 21),
  -- Graveler - Rock Tomb - TM036
  (75, 7500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Graveler - Fling - TM043
  (75, 7500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 23),
  -- Graveler - Endure - TM047
  (75, 7500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Graveler - Sunny Day - TM049
  (75, 7500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Graveler - Sandstorm - TM051
  (75, 7500, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 26),
  -- Graveler - Dig - TM055
  (75, 7500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Graveler - Brick Break - TM058
  (75, 7500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 28),
  -- Graveler - Body Slam - TM066
  (75, 7500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Graveler - Fire Punch - TM067
  (75, 7500, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 30),
  -- Graveler - Thunder Punch - TM068
  (75, 7500, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 31),
  -- Graveler - Sleep Talk - TM070
  (75, 7500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Graveler - Rock Blast - TM076
  (75, 7500, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 33),
  -- Graveler - Metronome - TM080
  (75, 7500, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 34),
  -- Graveler - Stomping Tantrum - TM084
  (75, 7500, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 35),
  -- Graveler - Rest - TM085
  (75, 7500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Graveler - Rock Slide - TM086
  (75, 7500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Graveler - Body Press - TM089
  (75, 7500, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 38),
  -- Graveler - Iron Head - TM099
  (75, 7500, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 39),
  -- Graveler - Substitute - TM103
  (75, 7500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Graveler - Iron Defense - TM104
  (75, 7500, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 41),
  -- Graveler - Stealth Rock - TM116
  (75, 7500, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 42),
  -- Graveler - Heavy Slam - TM121
  (75, 7500, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 43),
  -- Graveler - Flamethrower - TM125
  (75, 7500, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 44),
  -- Graveler - Earth Power - TM133
  (75, 7500, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 45),
  -- Graveler - Fire Blast - TM141
  (75, 7500, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 46),
  -- Graveler - Earthquake - TM149
  (75, 7500, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 47),
  -- Graveler - Stone Edge - TM150
  (75, 7500, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 48),
  -- Graveler - Focus Blast - TM158
  (75, 7500, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 49),
  -- Graveler - Tera Blast - TM171
  (75, 7500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Graveler - Mega Punch - Egg
  (75, 7500, 5, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Graveler - Curse - Egg
  (75, 7500, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Graveler - Flail - Egg
  (75, 7500, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Graveler - Dynamic Punch - Egg
  (75, 7500, 223, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Graveler - Block - Egg
  (75, 7500, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Graveler - Hammer Arm - Egg
  (75, 7500, 359, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Graveler - Wide Guard - Egg
  (75, 7500, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Graveler (Alolan Graveler) - Tackle - Level 1
  (75, 7501, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Graveler (Alolan Graveler) - Defense Curl - Level 1
  (75, 7501, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Graveler (Alolan Graveler) - Charge - Level 1
  (75, 7501, 268, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Graveler (Alolan Graveler) - Rock Polish - Level 1
  (75, 7501, 397, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Graveler (Alolan Graveler) - Rollout - Level 10
  (75, 7501, 205, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Graveler (Alolan Graveler) - Spark - Level 12
  (75, 7501, 209, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Graveler (Alolan Graveler) - Rock Throw - Level 16
  (75, 7501, 88, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Graveler (Alolan Graveler) - Smack Down - Level 18
  (75, 7501, 479, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Graveler (Alolan Graveler) - Thunder Punch - Level 22
  (75, 7501, 9, 23, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Graveler (Alolan Graveler) - Self-Destruct - Level 24
  (75, 7501, 120, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Graveler (Alolan Graveler) - Stealth Rock - Level 30
  (75, 7501, 446, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Graveler (Alolan Graveler) - Rock Blast - Level 34
  (75, 7501, 350, 23, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Graveler (Alolan Graveler) - Discharge - Level 40
  (75, 7501, 435, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Graveler (Alolan Graveler) - Explosion - Level 44
  (75, 7501, 153, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Graveler (Alolan Graveler) - Double-Edge - Level 50
  (75, 7501, 38, 23, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Graveler (Alolan Graveler) - Stone Edge - Level 54
  (75, 7501, 444, 23, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Graveler (Alolan Graveler) - Take Down - TM001
  (75, 7501, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Graveler (Alolan Graveler) - Mud-Slap - TM005
  (75, 7501, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Graveler (Alolan Graveler) - Scary Face - TM006
  (75, 7501, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Graveler (Alolan Graveler) - Protect - TM007
  (75, 7501, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Graveler (Alolan Graveler) - Charge Beam - TM023
  (75, 7501, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 21),
  -- Graveler (Alolan Graveler) - Facade - TM025
  (75, 7501, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Graveler (Alolan Graveler) - Bulldoze - TM028
  (75, 7501, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Graveler (Alolan Graveler) - Mud Shot - TM035
  (75, 7501, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Graveler (Alolan Graveler) - Rock Tomb - TM036
  (75, 7501, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Graveler (Alolan Graveler) - Fling - TM043
  (75, 7501, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Graveler (Alolan Graveler) - Endure - TM047
  (75, 7501, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Graveler (Alolan Graveler) - Volt Switch - TM048
  (75, 7501, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 28),
  -- Graveler (Alolan Graveler) - Sunny Day - TM049
  (75, 7501, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Graveler (Alolan Graveler) - Sandstorm - TM051
  (75, 7501, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Graveler (Alolan Graveler) - Dig - TM055
  (75, 7501, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Graveler (Alolan Graveler) - Brick Break - TM058
  (75, 7501, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Graveler (Alolan Graveler) - Body Slam - TM066
  (75, 7501, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Graveler (Alolan Graveler) - Fire Punch - TM067
  (75, 7501, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 34),
  -- Graveler (Alolan Graveler) - Thunder Punch - TM068
  (75, 7501, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 35),
  -- Graveler (Alolan Graveler) - Sleep Talk - TM070
  (75, 7501, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Graveler (Alolan Graveler) - Rock Blast - TM076
  (75, 7501, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 37),
  -- Graveler (Alolan Graveler) - Metronome - TM080
  (75, 7501, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 38),
  -- Graveler (Alolan Graveler) - Thunder Wave - TM082
  (75, 7501, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 39),
  -- Graveler (Alolan Graveler) - Stomping Tantrum - TM084
  (75, 7501, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 40),
  -- Graveler (Alolan Graveler) - Rest - TM085
  (75, 7501, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Graveler (Alolan Graveler) - Rock Slide - TM086
  (75, 7501, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Graveler (Alolan Graveler) - Substitute - TM103
  (75, 7501, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Graveler (Alolan Graveler) - Iron Defense - TM104
  (75, 7501, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 44),
  -- Graveler (Alolan Graveler) - Stealth Rock - TM116
  (75, 7501, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 45),
  -- Graveler (Alolan Graveler) - Flamethrower - TM125
  (75, 7501, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 46),
  -- Graveler (Alolan Graveler) - Thunderbolt - TM126
  (75, 7501, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 47),
  -- Graveler (Alolan Graveler) - Earth Power - TM133
  (75, 7501, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 48),
  -- Graveler (Alolan Graveler) - Electric Terrain - TM136
  (75, 7501, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 49),
  -- Graveler (Alolan Graveler) - Fire Blast - TM141
  (75, 7501, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 50),
  -- Graveler (Alolan Graveler) - Wild Charge - TM147
  (75, 7501, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 51),
  -- Graveler (Alolan Graveler) - Earthquake - TM149
  (75, 7501, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 52),
  -- Graveler (Alolan Graveler) - Stone Edge - TM150
  (75, 7501, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 53),
  -- Graveler (Alolan Graveler) - Focus Blast - TM158
  (75, 7501, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 54),
  -- Graveler (Alolan Graveler) - Thunder - TM166
  (75, 7501, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 55),
  -- Graveler (Alolan Graveler) - Tera Blast - TM171
  (75, 7501, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Graveler (Alolan Graveler) - Counter - Egg
  (75, 7501, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Graveler (Alolan Graveler) - Screech - Egg
  (75, 7501, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Graveler (Alolan Graveler) - Curse - Egg
  (75, 7501, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Graveler (Alolan Graveler) - Flail - Egg
  (75, 7501, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Graveler (Alolan Graveler) - Zap Cannon - Egg
  (75, 7501, 192, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Graveler (Alolan Graveler) - Endure - Egg
  (75, 7501, 203, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Graveler (Alolan Graveler) - Block - Egg
  (75, 7501, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Graveler (Alolan Graveler) - Wide Guard - Egg
  (75, 7501, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Golem - Tackle - Level 1
  (76, 7600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golem - Defense Curl - Level 1
  (76, 7600, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golem - Rock Polish - Level 1
  (76, 7600, 397, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golem - Heavy Slam - Level 1
  (76, 7600, 484, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golem - Rock Throw - Level 16
  (76, 7600, 88, 23, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Golem - Smack Down - Level 18
  (76, 7600, 479, 23, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Golem - Bulldoze - Level 22
  (76, 7600, 523, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Golem - Self-Destruct - Level 24
  (76, 7600, 120, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Golem - Stealth Rock - Level 30
  (76, 7600, 446, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Golem - Rock Blast - Level 34
  (76, 7600, 350, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Golem - Earthquake - Level 40
  (76, 7600, 89, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Golem - Explosion - Level 44
  (76, 7600, 153, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Golem - Double-Edge - Level 50
  (76, 7600, 38, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Golem - Stone Edge - Level 54
  (76, 7600, 444, 23, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Golem - Take Down - TM001
  (76, 7600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Golem - Mud-Slap - TM005
  (76, 7600, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Golem - Scary Face - TM006
  (76, 7600, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Golem - Protect - TM007
  (76, 7600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Golem - Facade - TM025
  (76, 7600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Golem - Bulldoze - TM028
  (76, 7600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Golem - Mud Shot - TM035
  (76, 7600, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 21),
  -- Golem - Rock Tomb - TM036
  (76, 7600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Golem - Fling - TM043
  (76, 7600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 23),
  -- Golem - Endure - TM047
  (76, 7600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Golem - Sunny Day - TM049
  (76, 7600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Golem - Sandstorm - TM051
  (76, 7600, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 26),
  -- Golem - Dig - TM055
  (76, 7600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Golem - Brick Break - TM058
  (76, 7600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 28),
  -- Golem - Body Slam - TM066
  (76, 7600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Golem - Fire Punch - TM067
  (76, 7600, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 30),
  -- Golem - Thunder Punch - TM068
  (76, 7600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 31),
  -- Golem - Sleep Talk - TM070
  (76, 7600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Golem - Rock Blast - TM076
  (76, 7600, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 33),
  -- Golem - Metronome - TM080
  (76, 7600, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 34),
  -- Golem - Stomping Tantrum - TM084
  (76, 7600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 35),
  -- Golem - Rest - TM085
  (76, 7600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Golem - Rock Slide - TM086
  (76, 7600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Golem - Body Press - TM089
  (76, 7600, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 38),
  -- Golem - Iron Head - TM099
  (76, 7600, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 39),
  -- Golem - Substitute - TM103
  (76, 7600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Golem - Iron Defense - TM104
  (76, 7600, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 41),
  -- Golem - Stealth Rock - TM116
  (76, 7600, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 42),
  -- Golem - Heavy Slam - TM121
  (76, 7600, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 43),
  -- Golem - Flamethrower - TM125
  (76, 7600, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 44),
  -- Golem - Earth Power - TM133
  (76, 7600, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 45),
  -- Golem - Fire Blast - TM141
  (76, 7600, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 46),
  -- Golem - Earthquake - TM149
  (76, 7600, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 47),
  -- Golem - Stone Edge - TM150
  (76, 7600, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 48),
  -- Golem - Giga Impact - TM152
  (76, 7600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 49),
  -- Golem - Focus Blast - TM158
  (76, 7600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 50),
  -- Golem - Hyper Beam - TM163
  (76, 7600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Golem - Tera Blast - TM171
  (76, 7600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Golem - Mega Punch - Egg
  (76, 7600, 5, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Golem - Curse - Egg
  (76, 7600, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Golem - Flail - Egg
  (76, 7600, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Golem - Dynamic Punch - Egg
  (76, 7600, 223, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Golem - Block - Egg
  (76, 7600, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Golem - Hammer Arm - Egg
  (76, 7600, 359, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Golem - Wide Guard - Egg
  (76, 7600, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Golem (Alolan Golem) - Tackle - Level 1
  (76, 7601, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golem (Alolan Golem) - Defense Curl - Level 1
  (76, 7601, 111, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golem (Alolan Golem) - Charge - Level 1
  (76, 7601, 268, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golem (Alolan Golem) - Rock Polish - Level 1
  (76, 7601, 397, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golem (Alolan Golem) - Heavy Slam - Level 1
  (76, 7601, 484, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Golem (Alolan Golem) - Spark - Level 12
  (76, 7601, 209, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Golem (Alolan Golem) - Rock Throw - Level 16
  (76, 7601, 88, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Golem (Alolan Golem) - Smack Down - Level 18
  (76, 7601, 479, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Golem (Alolan Golem) - Thunder Punch - Level 22
  (76, 7601, 9, 23, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Golem (Alolan Golem) - Self-Destruct - Level 24
  (76, 7601, 120, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Golem (Alolan Golem) - Stealth Rock - Level 30
  (76, 7601, 446, 23, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Golem (Alolan Golem) - Rock Blast - Level 34
  (76, 7601, 350, 23, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Golem (Alolan Golem) - Discharge - Level 40
  (76, 7601, 435, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Golem (Alolan Golem) - Explosion - Level 44
  (76, 7601, 153, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Golem (Alolan Golem) - Double-Edge - Level 50
  (76, 7601, 38, 23, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Golem (Alolan Golem) - Stone Edge - Level 54
  (76, 7601, 444, 23, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Golem (Alolan Golem) - Take Down - TM001
  (76, 7601, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Golem (Alolan Golem) - Mud-Slap - TM005
  (76, 7601, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Golem (Alolan Golem) - Scary Face - TM006
  (76, 7601, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Golem (Alolan Golem) - Protect - TM007
  (76, 7601, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Golem (Alolan Golem) - Charge Beam - TM023
  (76, 7601, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 21),
  -- Golem (Alolan Golem) - Facade - TM025
  (76, 7601, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Golem (Alolan Golem) - Bulldoze - TM028
  (76, 7601, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 23),
  -- Golem (Alolan Golem) - Mud Shot - TM035
  (76, 7601, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Golem (Alolan Golem) - Rock Tomb - TM036
  (76, 7601, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Golem (Alolan Golem) - Fling - TM043
  (76, 7601, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Golem (Alolan Golem) - Endure - TM047
  (76, 7601, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Golem (Alolan Golem) - Volt Switch - TM048
  (76, 7601, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 28),
  -- Golem (Alolan Golem) - Sunny Day - TM049
  (76, 7601, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Golem (Alolan Golem) - Sandstorm - TM051
  (76, 7601, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Golem (Alolan Golem) - Dig - TM055
  (76, 7601, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Golem (Alolan Golem) - Brick Break - TM058
  (76, 7601, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Golem (Alolan Golem) - Body Slam - TM066
  (76, 7601, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Golem (Alolan Golem) - Fire Punch - TM067
  (76, 7601, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 34),
  -- Golem (Alolan Golem) - Thunder Punch - TM068
  (76, 7601, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 35),
  -- Golem (Alolan Golem) - Sleep Talk - TM070
  (76, 7601, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Golem (Alolan Golem) - Rock Blast - TM076
  (76, 7601, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 37),
  -- Golem (Alolan Golem) - Metronome - TM080
  (76, 7601, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 38),
  -- Golem (Alolan Golem) - Thunder Wave - TM082
  (76, 7601, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 39),
  -- Golem (Alolan Golem) - Stomping Tantrum - TM084
  (76, 7601, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 40),
  -- Golem (Alolan Golem) - Rest - TM085
  (76, 7601, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Golem (Alolan Golem) - Rock Slide - TM086
  (76, 7601, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Golem (Alolan Golem) - Body Press - TM089
  (76, 7601, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 43),
  -- Golem (Alolan Golem) - Iron Head - TM099
  (76, 7601, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 44),
  -- Golem (Alolan Golem) - Substitute - TM103
  (76, 7601, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Golem (Alolan Golem) - Iron Defense - TM104
  (76, 7601, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 46),
  -- Golem (Alolan Golem) - Stealth Rock - TM116
  (76, 7601, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 47),
  -- Golem (Alolan Golem) - Heavy Slam - TM121
  (76, 7601, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 48),
  -- Golem (Alolan Golem) - Flamethrower - TM125
  (76, 7601, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 49),
  -- Golem (Alolan Golem) - Thunderbolt - TM126
  (76, 7601, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 50),
  -- Golem (Alolan Golem) - Earth Power - TM133
  (76, 7601, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 51),
  -- Golem (Alolan Golem) - Electric Terrain - TM136
  (76, 7601, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 52),
  -- Golem (Alolan Golem) - Fire Blast - TM141
  (76, 7601, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 53),
  -- Golem (Alolan Golem) - Wild Charge - TM147
  (76, 7601, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 54),
  -- Golem (Alolan Golem) - Earthquake - TM149
  (76, 7601, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 55),
  -- Golem (Alolan Golem) - Stone Edge - TM150
  (76, 7601, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 56),
  -- Golem (Alolan Golem) - Giga Impact - TM152
  (76, 7601, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 57),
  -- Golem (Alolan Golem) - Focus Blast - TM158
  (76, 7601, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 58),
  -- Golem (Alolan Golem) - Hyper Beam - TM163
  (76, 7601, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 59),
  -- Golem (Alolan Golem) - Thunder - TM166
  (76, 7601, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 60),
  -- Golem (Alolan Golem) - Tera Blast - TM171
  (76, 7601, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 61),
  -- Golem (Alolan Golem) - Counter - Egg
  (76, 7601, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Golem (Alolan Golem) - Screech - Egg
  (76, 7601, 103, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Golem (Alolan Golem) - Curse - Egg
  (76, 7601, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Golem (Alolan Golem) - Flail - Egg
  (76, 7601, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Golem (Alolan Golem) - Zap Cannon - Egg
  (76, 7601, 192, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Golem (Alolan Golem) - Endure - Egg
  (76, 7601, 203, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Golem (Alolan Golem) - Block - Egg
  (76, 7601, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Golem (Alolan Golem) - Wide Guard - Egg
  (76, 7601, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Slowpoke - Tackle - Level 1
  (79, 7900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowpoke - Curse - Level 1
  (79, 7900, 174, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowpoke - Growl - Level 3
  (79, 7900, 45, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Slowpoke - Water Gun - Level 6
  (79, 7900, 55, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Slowpoke - Yawn - Level 9
  (79, 7900, 281, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Slowpoke - Confusion - Level 12
  (79, 7900, 93, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Slowpoke - Disable - Level 15
  (79, 7900, 50, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Slowpoke - Water Pulse - Level 18
  (79, 7900, 352, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Slowpoke - Headbutt - Level 21
  (79, 7900, 29, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Slowpoke - Zen Headbutt - Level 24
  (79, 7900, 428, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Slowpoke - Amnesia - Level 27
  (79, 7900, 133, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Slowpoke - Surf - Level 30
  (79, 7900, 57, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Slowpoke - Slack Off - Level 33
  (79, 7900, 303, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Slowpoke - Psychic - Level 36
  (79, 7900, 94, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Slowpoke - Psych Up - Level 39
  (79, 7900, 244, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Slowpoke - Rain Dance - Level 42
  (79, 7900, 240, 23, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Slowpoke - Heal Pulse - Level 45
  (79, 7900, 505, 23, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Slowpoke - Take Down - TM001
  (79, 7900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Slowpoke - Protect - TM007
  (79, 7900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Slowpoke - Water Pulse - TM011
  (79, 7900, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 20),
  -- Slowpoke - Psybeam - TM016
  (79, 7900, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 21),
  -- Slowpoke - Chilling Water - TM022
  (79, 7900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Slowpoke - Facade - TM025
  (79, 7900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Slowpoke - Bulldoze - TM028
  (79, 7900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Slowpoke - Swift - TM032
  (79, 7900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Slowpoke - Icy Wind - TM034
  (79, 7900, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Slowpoke - Mud Shot - TM035
  (79, 7900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Slowpoke - Stored Power - TM041
  (79, 7900, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 28),
  -- Slowpoke - Avalanche - TM046
  (79, 7900, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 29),
  -- Slowpoke - Endure - TM047
  (79, 7900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Slowpoke - Sunny Day - TM049
  (79, 7900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Slowpoke - Rain Dance - TM050
  (79, 7900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Slowpoke - Snowscape - TM052
  (79, 7900, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 33),
  -- Slowpoke - Psyshock - TM054
  (79, 7900, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 34),
  -- Slowpoke - Dig - TM055
  (79, 7900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Slowpoke - Zen Headbutt - TM059
  (79, 7900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 36),
  -- Slowpoke - Foul Play - TM062
  (79, 7900, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 37),
  -- Slowpoke - Body Slam - TM066
  (79, 7900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Slowpoke - Sleep Talk - TM070
  (79, 7900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Slowpoke - Light Screen - TM075
  (79, 7900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 40),
  -- Slowpoke - Waterfall - TM077
  (79, 7900, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 41),
  -- Slowpoke - Grass Knot - TM081
  (79, 7900, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 42),
  -- Slowpoke - Thunder Wave - TM082
  (79, 7900, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 43),
  -- Slowpoke - Rest - TM085
  (79, 7900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Slowpoke - Imprison - TM092
  (79, 7900, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 45),
  -- Slowpoke - Skill Swap - TM098
  (79, 7900, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 46),
  -- Slowpoke - Substitute - TM103
  (79, 7900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Slowpoke - Trick - TM109
  (79, 7900, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 48),
  -- Slowpoke - Liquidation - TM110
  (79, 7900, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 49),
  -- Slowpoke - Shadow Ball - TM114
  (79, 7900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 50),
  -- Slowpoke - Psychic - TM120
  (79, 7900, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 51),
  -- Slowpoke - Surf - TM123
  (79, 7900, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 52),
  -- Slowpoke - Flamethrower - TM125
  (79, 7900, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 53),
  -- Slowpoke - Amnesia - TM128
  (79, 7900, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 54),
  -- Slowpoke - Calm Mind - TM129
  (79, 7900, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 55),
  -- Slowpoke - Helping Hand - TM130
  (79, 7900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 56),
  -- Slowpoke - Ice Beam - TM135
  (79, 7900, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 57),
  -- Slowpoke - Psychic Terrain - TM138
  (79, 7900, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 58),
  -- Slowpoke - Fire Blast - TM141
  (79, 7900, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 59),
  -- Slowpoke - Hydro Pump - TM142
  (79, 7900, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 60),
  -- Slowpoke - Blizzard - TM143
  (79, 7900, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 61),
  -- Slowpoke - Earthquake - TM149
  (79, 7900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 62),
  -- Slowpoke - Trick Room - TM161
  (79, 7900, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 63),
  -- Slowpoke - Tera Blast - TM171
  (79, 7900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 64),
  -- Slowpoke - Stomp - Egg
  (79, 7900, 23, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Slowpoke - Belly Drum - Egg
  (79, 7900, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Slowpoke - Block - Egg
  (79, 7900, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Slowpoke - Belch - Egg
  (79, 7900, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Slowpoke (Galarian Slowpoke) - Tackle - Level 1
  (79, 7901, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowpoke (Galarian Slowpoke) - Curse - Level 1
  (79, 7901, 174, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowpoke (Galarian Slowpoke) - Growl - Level 3
  (79, 7901, 45, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Slowpoke (Galarian Slowpoke) - Acid - Level 6
  (79, 7901, 51, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Slowpoke (Galarian Slowpoke) - Yawn - Level 9
  (79, 7901, 281, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Slowpoke (Galarian Slowpoke) - Confusion - Level 12
  (79, 7901, 93, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Slowpoke (Galarian Slowpoke) - Disable - Level 15
  (79, 7901, 50, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Slowpoke (Galarian Slowpoke) - Water Pulse - Level 18
  (79, 7901, 352, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Slowpoke (Galarian Slowpoke) - Headbutt - Level 21
  (79, 7901, 29, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Slowpoke (Galarian Slowpoke) - Zen Headbutt - Level 24
  (79, 7901, 428, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Slowpoke (Galarian Slowpoke) - Amnesia - Level 27
  (79, 7901, 133, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Slowpoke (Galarian Slowpoke) - Surf - Level 30
  (79, 7901, 57, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Slowpoke (Galarian Slowpoke) - Slack Off - Level 33
  (79, 7901, 303, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Slowpoke (Galarian Slowpoke) - Psychic - Level 36
  (79, 7901, 94, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Slowpoke (Galarian Slowpoke) - Psych Up - Level 39
  (79, 7901, 244, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Slowpoke (Galarian Slowpoke) - Rain Dance - Level 42
  (79, 7901, 240, 23, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Slowpoke (Galarian Slowpoke) - Heal Pulse - Level 45
  (79, 7901, 505, 23, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Slowpoke (Galarian Slowpoke) - Take Down - TM001
  (79, 7901, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Slowpoke (Galarian Slowpoke) - Protect - TM007
  (79, 7901, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Slowpoke (Galarian Slowpoke) - Water Pulse - TM011
  (79, 7901, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 20),
  -- Slowpoke (Galarian Slowpoke) - Psybeam - TM016
  (79, 7901, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 21),
  -- Slowpoke (Galarian Slowpoke) - Chilling Water - TM022
  (79, 7901, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Slowpoke (Galarian Slowpoke) - Facade - TM025
  (79, 7901, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Slowpoke (Galarian Slowpoke) - Bulldoze - TM028
  (79, 7901, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Slowpoke (Galarian Slowpoke) - Swift - TM032
  (79, 7901, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Slowpoke (Galarian Slowpoke) - Icy Wind - TM034
  (79, 7901, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Slowpoke (Galarian Slowpoke) - Mud Shot - TM035
  (79, 7901, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Slowpoke (Galarian Slowpoke) - Stored Power - TM041
  (79, 7901, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 28),
  -- Slowpoke (Galarian Slowpoke) - Avalanche - TM046
  (79, 7901, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 29),
  -- Slowpoke (Galarian Slowpoke) - Endure - TM047
  (79, 7901, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Slowpoke (Galarian Slowpoke) - Sunny Day - TM049
  (79, 7901, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Slowpoke (Galarian Slowpoke) - Rain Dance - TM050
  (79, 7901, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Slowpoke (Galarian Slowpoke) - Snowscape - TM052
  (79, 7901, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 33),
  -- Slowpoke (Galarian Slowpoke) - Psyshock - TM054
  (79, 7901, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 34),
  -- Slowpoke (Galarian Slowpoke) - Dig - TM055
  (79, 7901, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Slowpoke (Galarian Slowpoke) - Zen Headbutt - TM059
  (79, 7901, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 36),
  -- Slowpoke (Galarian Slowpoke) - Foul Play - TM062
  (79, 7901, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 37),
  -- Slowpoke (Galarian Slowpoke) - Body Slam - TM066
  (79, 7901, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Slowpoke (Galarian Slowpoke) - Sleep Talk - TM070
  (79, 7901, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Slowpoke (Galarian Slowpoke) - Light Screen - TM075
  (79, 7901, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 40),
  -- Slowpoke (Galarian Slowpoke) - Waterfall - TM077
  (79, 7901, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 41),
  -- Slowpoke (Galarian Slowpoke) - Grass Knot - TM081
  (79, 7901, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 42),
  -- Slowpoke (Galarian Slowpoke) - Thunder Wave - TM082
  (79, 7901, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 43),
  -- Slowpoke (Galarian Slowpoke) - Rest - TM085
  (79, 7901, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Slowpoke (Galarian Slowpoke) - Imprison - TM092
  (79, 7901, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 45),
  -- Slowpoke (Galarian Slowpoke) - Skill Swap - TM098
  (79, 7901, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 46),
  -- Slowpoke (Galarian Slowpoke) - Substitute - TM103
  (79, 7901, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Slowpoke (Galarian Slowpoke) - Trick - TM109
  (79, 7901, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 48),
  -- Slowpoke (Galarian Slowpoke) - Liquidation - TM110
  (79, 7901, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 49),
  -- Slowpoke (Galarian Slowpoke) - Shadow Ball - TM114
  (79, 7901, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 50),
  -- Slowpoke (Galarian Slowpoke) - Psychic - TM120
  (79, 7901, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 51),
  -- Slowpoke (Galarian Slowpoke) - Surf - TM123
  (79, 7901, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 52),
  -- Slowpoke (Galarian Slowpoke) - Flamethrower - TM125
  (79, 7901, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 53),
  -- Slowpoke (Galarian Slowpoke) - Amnesia - TM128
  (79, 7901, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 54),
  -- Slowpoke (Galarian Slowpoke) - Calm Mind - TM129
  (79, 7901, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 55),
  -- Slowpoke (Galarian Slowpoke) - Helping Hand - TM130
  (79, 7901, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 56),
  -- Slowpoke (Galarian Slowpoke) - Ice Beam - TM135
  (79, 7901, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 57),
  -- Slowpoke (Galarian Slowpoke) - Psychic Terrain - TM138
  (79, 7901, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 58),
  -- Slowpoke (Galarian Slowpoke) - Fire Blast - TM141
  (79, 7901, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 59),
  -- Slowpoke (Galarian Slowpoke) - Hydro Pump - TM142
  (79, 7901, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 60),
  -- Slowpoke (Galarian Slowpoke) - Blizzard - TM143
  (79, 7901, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 61),
  -- Slowpoke (Galarian Slowpoke) - Earthquake - TM149
  (79, 7901, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 62),
  -- Slowpoke (Galarian Slowpoke) - Trick Room - TM161
  (79, 7901, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 63),
  -- Slowpoke (Galarian Slowpoke) - Tera Blast - TM171
  (79, 7901, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 64),
  -- Slowpoke (Galarian Slowpoke) - Stomp - Egg
  (79, 7901, 23, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Slowpoke (Galarian Slowpoke) - Belly Drum - Egg
  (79, 7901, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Slowpoke (Galarian Slowpoke) - Block - Egg
  (79, 7901, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Slowpoke (Galarian Slowpoke) - Belch - Egg
  (79, 7901, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Slowbro - Tackle - Level 1
  (80, 8000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowbro - Growl - Level 1
  (80, 8000, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowbro - Water Gun - Level 1
  (80, 8000, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowbro - Withdraw - Level 1
  (80, 8000, 110, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowbro - Curse - Level 1
  (80, 8000, 174, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Slowbro - Yawn - Level 9
  (80, 8000, 281, 23, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Slowbro - Confusion - Level 12
  (80, 8000, 93, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Slowbro - Disable - Level 15
  (80, 8000, 50, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Slowbro - Water Pulse - Level 18
  (80, 8000, 352, 23, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Slowbro - Headbutt - Level 21
  (80, 8000, 29, 23, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Slowbro - Zen Headbutt - Level 24
  (80, 8000, 428, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Slowbro - Amnesia - Level 27
  (80, 8000, 133, 23, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Slowbro - Surf - Level 30
  (80, 8000, 57, 23, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Slowbro - Slack Off - Level 33
  (80, 8000, 303, 23, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Slowbro - Psychic - Level 36
  (80, 8000, 94, 23, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Slowbro - Psych Up - Level 41
  (80, 8000, 244, 23, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Slowbro - Rain Dance - Level 46
  (80, 8000, 240, 23, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Slowbro - Heal Pulse - Level 51
  (80, 8000, 505, 23, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Slowbro - Take Down - TM001
  (80, 8000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Slowbro - Protect - TM007
  (80, 8000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Slowbro - Water Pulse - TM011
  (80, 8000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 21),
  -- Slowbro - Psybeam - TM016
  (80, 8000, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 22),
  -- Slowbro - Chilling Water - TM022
  (80, 8000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 23),
  -- Slowbro - Facade - TM025
  (80, 8000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Slowbro - Bulldoze - TM028
  (80, 8000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Slowbro - Swift - TM032
  (80, 8000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Slowbro - Icy Wind - TM034
  (80, 8000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Slowbro - Mud Shot - TM035
  (80, 8000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 28),
  -- Slowbro - Stored Power - TM041
  (80, 8000, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 29),
  -- Slowbro - Fling - TM043
  (80, 8000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Slowbro - Avalanche - TM046
  (80, 8000, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 31),
  -- Slowbro - Endure - TM047
  (80, 8000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Slowbro - Sunny Day - TM049
  (80, 8000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Slowbro - Rain Dance - TM050
  (80, 8000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Slowbro - Snowscape - TM052
  (80, 8000, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 35),
  -- Slowbro - Psyshock - TM054
  (80, 8000, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 36),
  -- Slowbro - Dig - TM055
  (80, 8000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 37),
  -- Slowbro - Brick Break - TM058
  (80, 8000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 38),
  -- Slowbro - Zen Headbutt - TM059
  (80, 8000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 39),
  -- Slowbro - Foul Play - TM062
  (80, 8000, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 40),
  -- Slowbro - Body Slam - TM066
  (80, 8000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 41),
  -- Slowbro - Ice Punch - TM069
  (80, 8000, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 42),
  -- Slowbro - Sleep Talk - TM070
  (80, 8000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Slowbro - Drain Punch - TM073
  (80, 8000, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 44),
  -- Slowbro - Light Screen - TM075
  (80, 8000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 45),
  -- Slowbro - Waterfall - TM077
  (80, 8000, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 46),
  -- Slowbro - Metronome - TM080
  (80, 8000, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 47),
  -- Slowbro - Grass Knot - TM081
  (80, 8000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 48),
  -- Slowbro - Thunder Wave - TM082
  (80, 8000, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 49),
  -- Slowbro - Rest - TM085
  (80, 8000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 50),
  -- Slowbro - Body Press - TM089
  (80, 8000, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 51),
  -- Slowbro - Imprison - TM092
  (80, 8000, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 52),
  -- Slowbro - Skill Swap - TM098
  (80, 8000, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 53),
  -- Slowbro - Substitute - TM103
  (80, 8000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 54),
  -- Slowbro - Iron Defense - TM104
  (80, 8000, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 55),
  -- Slowbro - Trick - TM109
  (80, 8000, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 56),
  -- Slowbro - Liquidation - TM110
  (80, 8000, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 57),
  -- Slowbro - Shadow Ball - TM114
  (80, 8000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 58),
  -- Slowbro - Psychic - TM120
  (80, 8000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 59),
  -- Slowbro - Surf - TM123
  (80, 8000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 60),
  -- Slowbro - Flamethrower - TM125
  (80, 8000, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 61),
  -- Slowbro - Amnesia - TM128
  (80, 8000, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 62),
  -- Slowbro - Calm Mind - TM129
  (80, 8000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 63),
  -- Slowbro - Helping Hand - TM130
  (80, 8000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 64),
  -- Slowbro - Ice Beam - TM135
  (80, 8000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 65),
  -- Slowbro - Psychic Terrain - TM138
  (80, 8000, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 66),
  -- Slowbro - Nasty Plot - TM140
  (80, 8000, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 67),
  -- Slowbro - Fire Blast - TM141
  (80, 8000, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 68),
  -- Slowbro - Hydro Pump - TM142
  (80, 8000, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 69),
  -- Slowbro - Blizzard - TM143
  (80, 8000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 70),
  -- Slowbro - Earthquake - TM149
  (80, 8000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 71),
  -- Slowbro - Giga Impact - TM152
  (80, 8000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 72),
  -- Slowbro - Focus Blast - TM158
  (80, 8000, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 73),
  -- Slowbro - Trick Room - TM161
  (80, 8000, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 74),
  -- Slowbro - Hyper Beam - TM163
  (80, 8000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 75),
  -- Slowbro - Tera Blast - TM171
  (80, 8000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 76),
  -- Slowbro - Stomp - Egg
  (80, 8000, 23, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Slowbro - Belly Drum - Egg
  (80, 8000, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Slowbro - Block - Egg
  (80, 8000, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Slowbro - Belch - Egg
  (80, 8000, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Slowbro - Future Sight - Reminder
  (80, 8000, 248, 23, NULL, 9, NULL, NULL, NULL, NULL, 81),
  -- Slowbro (Galarian Slowbro) - Tackle - Level 1
  (80, 8002, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowbro (Galarian Slowbro) - Growl - Level 1
  (80, 8002, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowbro (Galarian Slowbro) - Acid - Level 1
  (80, 8002, 51, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowbro (Galarian Slowbro) - Withdraw - Level 1
  (80, 8002, 110, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowbro (Galarian Slowbro) - Curse - Level 1
  (80, 8002, 174, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Slowbro (Galarian Slowbro) - Yawn - Level 9
  (80, 8002, 281, 23, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Slowbro (Galarian Slowbro) - Confusion - Level 12
  (80, 8002, 93, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Slowbro (Galarian Slowbro) - Disable - Level 15
  (80, 8002, 50, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Slowbro (Galarian Slowbro) - Water Pulse - Level 18
  (80, 8002, 352, 23, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Slowbro (Galarian Slowbro) - Headbutt - Level 21
  (80, 8002, 29, 23, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Slowbro (Galarian Slowbro) - Zen Headbutt - Level 24
  (80, 8002, 428, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Slowbro (Galarian Slowbro) - Amnesia - Level 27
  (80, 8002, 133, 23, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Slowbro (Galarian Slowbro) - Surf - Level 30
  (80, 8002, 57, 23, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Slowbro (Galarian Slowbro) - Slack Off - Level 33
  (80, 8002, 303, 23, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Slowbro (Galarian Slowbro) - Psychic - Level 36
  (80, 8002, 94, 23, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Slowbro (Galarian Slowbro) - Psych Up - Level 39
  (80, 8002, 244, 23, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Slowbro (Galarian Slowbro) - Rain Dance - Level 42
  (80, 8002, 240, 23, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Slowbro (Galarian Slowbro) - Heal Pulse - Level 45
  (80, 8002, 505, 23, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Slowbro (Galarian Slowbro) - Take Down - TM001
  (80, 8002, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Slowbro (Galarian Slowbro) - Scary Face - TM006
  (80, 8002, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Slowbro (Galarian Slowbro) - Protect - TM007
  (80, 8002, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Slowbro (Galarian Slowbro) - Ice Fang - TM010
  (80, 8002, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 22),
  -- Slowbro (Galarian Slowbro) - Water Pulse - TM011
  (80, 8002, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 23),
  -- Slowbro (Galarian Slowbro) - Acid Spray - TM013
  (80, 8002, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 24),
  -- Slowbro (Galarian Slowbro) - Psybeam - TM016
  (80, 8002, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 25),
  -- Slowbro (Galarian Slowbro) - Chilling Water - TM022
  (80, 8002, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 26),
  -- Slowbro (Galarian Slowbro) - Facade - TM025
  (80, 8002, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Slowbro (Galarian Slowbro) - Bulldoze - TM028
  (80, 8002, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 28),
  -- Slowbro (Galarian Slowbro) - Swift - TM032
  (80, 8002, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Slowbro (Galarian Slowbro) - Icy Wind - TM034
  (80, 8002, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 30),
  -- Slowbro (Galarian Slowbro) - Mud Shot - TM035
  (80, 8002, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 31),
  -- Slowbro (Galarian Slowbro) - Stored Power - TM041
  (80, 8002, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 32),
  -- Slowbro (Galarian Slowbro) - Fling - TM043
  (80, 8002, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 33),
  -- Slowbro (Galarian Slowbro) - Venoshock - TM045
  (80, 8002, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 34),
  -- Slowbro (Galarian Slowbro) - Avalanche - TM046
  (80, 8002, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 35),
  -- Slowbro (Galarian Slowbro) - Endure - TM047
  (80, 8002, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 36),
  -- Slowbro (Galarian Slowbro) - Sunny Day - TM049
  (80, 8002, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 37),
  -- Slowbro (Galarian Slowbro) - Rain Dance - TM050
  (80, 8002, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 38),
  -- Slowbro (Galarian Slowbro) - Sandstorm - TM051
  (80, 8002, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 39),
  -- Slowbro (Galarian Slowbro) - Snowscape - TM052
  (80, 8002, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 40),
  -- Slowbro (Galarian Slowbro) - Psyshock - TM054
  (80, 8002, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 41),
  -- Slowbro (Galarian Slowbro) - Dig - TM055
  (80, 8002, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 42),
  -- Slowbro (Galarian Slowbro) - Brick Break - TM058
  (80, 8002, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 43),
  -- Slowbro (Galarian Slowbro) - Zen Headbutt - TM059
  (80, 8002, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 44),
  -- Slowbro (Galarian Slowbro) - Foul Play - TM062
  (80, 8002, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 45),
  -- Slowbro (Galarian Slowbro) - Body Slam - TM066
  (80, 8002, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 46),
  -- Slowbro (Galarian Slowbro) - Ice Punch - TM069
  (80, 8002, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 47),
  -- Slowbro (Galarian Slowbro) - Sleep Talk - TM070
  (80, 8002, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 48),
  -- Slowbro (Galarian Slowbro) - Drain Punch - TM073
  (80, 8002, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 49),
  -- Slowbro (Galarian Slowbro) - Light Screen - TM075
  (80, 8002, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 50),
  -- Slowbro (Galarian Slowbro) - Rock Blast - TM076
  (80, 8002, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 51),
  -- Slowbro (Galarian Slowbro) - Waterfall - TM077
  (80, 8002, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 52),
  -- Slowbro (Galarian Slowbro) - Metronome - TM080
  (80, 8002, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 53),
  -- Slowbro (Galarian Slowbro) - Grass Knot - TM081
  (80, 8002, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 54),
  -- Slowbro (Galarian Slowbro) - Thunder Wave - TM082
  (80, 8002, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 55),
  -- Slowbro (Galarian Slowbro) - Poison Jab - TM083
  (80, 8002, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 56),
  -- Slowbro (Galarian Slowbro) - Rest - TM085
  (80, 8002, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 57),
  -- Slowbro (Galarian Slowbro) - Body Press - TM089
  (80, 8002, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 58),
  -- Slowbro (Galarian Slowbro) - Imprison - TM092
  (80, 8002, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 59),
  -- Slowbro (Galarian Slowbro) - Skill Swap - TM098
  (80, 8002, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 60),
  -- Slowbro (Galarian Slowbro) - Power Gem - TM101
  (80, 8002, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 61),
  -- Slowbro (Galarian Slowbro) - Gunk Shot - TM102
  (80, 8002, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 62),
  -- Slowbro (Galarian Slowbro) - Substitute - TM103
  (80, 8002, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 63),
  -- Slowbro (Galarian Slowbro) - Iron Defense - TM104
  (80, 8002, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 64),
  -- Slowbro (Galarian Slowbro) - Trick - TM109
  (80, 8002, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 65),
  -- Slowbro (Galarian Slowbro) - Liquidation - TM110
  (80, 8002, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 66),
  -- Slowbro (Galarian Slowbro) - Shadow Ball - TM114
  (80, 8002, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 67),
  -- Slowbro (Galarian Slowbro) - Psychic - TM120
  (80, 8002, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 68),
  -- Slowbro (Galarian Slowbro) - Surf - TM123
  (80, 8002, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 69),
  -- Slowbro (Galarian Slowbro) - Flamethrower - TM125
  (80, 8002, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 70),
  -- Slowbro (Galarian Slowbro) - Amnesia - TM128
  (80, 8002, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 71),
  -- Slowbro (Galarian Slowbro) - Calm Mind - TM129
  (80, 8002, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 72),
  -- Slowbro (Galarian Slowbro) - Helping Hand - TM130
  (80, 8002, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 73),
  -- Slowbro (Galarian Slowbro) - Ice Beam - TM135
  (80, 8002, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 74),
  -- Slowbro (Galarian Slowbro) - Psychic Terrain - TM138
  (80, 8002, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 75),
  -- Slowbro (Galarian Slowbro) - Nasty Plot - TM140
  (80, 8002, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 76),
  -- Slowbro (Galarian Slowbro) - Fire Blast - TM141
  (80, 8002, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 77),
  -- Slowbro (Galarian Slowbro) - Hydro Pump - TM142
  (80, 8002, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 78),
  -- Slowbro (Galarian Slowbro) - Blizzard - TM143
  (80, 8002, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 79),
  -- Slowbro (Galarian Slowbro) - Sludge Bomb - TM148
  (80, 8002, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 80),
  -- Slowbro (Galarian Slowbro) - Earthquake - TM149
  (80, 8002, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 81),
  -- Slowbro (Galarian Slowbro) - Giga Impact - TM152
  (80, 8002, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 82),
  -- Slowbro (Galarian Slowbro) - Focus Blast - TM158
  (80, 8002, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 83),
  -- Slowbro (Galarian Slowbro) - Trick Room - TM161
  (80, 8002, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 84),
  -- Slowbro (Galarian Slowbro) - Hyper Beam - TM163
  (80, 8002, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 85),
  -- Slowbro (Galarian Slowbro) - Tera Blast - TM171
  (80, 8002, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 86),
  -- Slowbro (Galarian Slowbro) - Stomp - Egg
  (80, 8002, 23, 23, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Slowbro (Galarian Slowbro) - Belly Drum - Egg
  (80, 8002, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Slowbro (Galarian Slowbro) - Block - Egg
  (80, 8002, 335, 23, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Slowbro (Galarian Slowbro) - Belch - Egg
  (80, 8002, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 90),
  -- Slowbro (Galarian Slowbro) - Shell Side Arm - Evolution
  (80, 8002, 801, 23, NULL, 7, NULL, NULL, NULL, NULL, 91),
  -- Magnemite - Tackle - Level 1
  (81, 8100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnemite - Thunder Shock - Level 1
  (81, 8100, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magnemite - Supersonic - Level 4
  (81, 8100, 48, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Magnemite - Thunder Wave - Level 8
  (81, 8100, 86, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Magnemite - Electro Ball - Level 12
  (81, 8100, 486, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Magnemite - Gyro Ball - Level 16
  (81, 8100, 360, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Magnemite - Spark - Level 20
  (81, 8100, 209, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Magnemite - Screech - Level 24
  (81, 8100, 103, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Magnemite - Magnet Rise - Level 28
  (81, 8100, 393, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Magnemite - Flash Cannon - Level 32
  (81, 8100, 430, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Magnemite - Discharge - Level 36
  (81, 8100, 435, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Magnemite - Metal Sound - Level 40
  (81, 8100, 319, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Magnemite - Light Screen - Level 44
  (81, 8100, 113, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Magnemite - Lock-On - Level 48
  (81, 8100, 199, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Magnemite - Zap Cannon - Level 52
  (81, 8100, 192, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Magnemite - Take Down - TM001
  (81, 8100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Magnemite - Protect - TM007
  (81, 8100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Magnemite - Confuse Ray - TM017
  (81, 8100, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 18),
  -- Magnemite - Charge Beam - TM023
  (81, 8100, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 19),
  -- Magnemite - Facade - TM025
  (81, 8100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Magnemite - Swift - TM032
  (81, 8100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Magnemite - Endure - TM047
  (81, 8100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Magnemite - Volt Switch - TM048
  (81, 8100, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 23),
  -- Magnemite - Sunny Day - TM049
  (81, 8100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Magnemite - Rain Dance - TM050
  (81, 8100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Magnemite - Sandstorm - TM051
  (81, 8100, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 26),
  -- Magnemite - Sleep Talk - TM070
  (81, 8100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Magnemite - Electro Ball - TM072
  (81, 8100, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 28),
  -- Magnemite - Reflect - TM074
  (81, 8100, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 29),
  -- Magnemite - Light Screen - TM075
  (81, 8100, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 30),
  -- Magnemite - Thunder Wave - TM082
  (81, 8100, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 31),
  -- Magnemite - Rest - TM085
  (81, 8100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Magnemite - Flash Cannon - TM093
  (81, 8100, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 33),
  -- Magnemite - Eerie Impulse - TM096
  (81, 8100, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 34),
  -- Magnemite - Iron Head - TM099
  (81, 8100, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 35),
  -- Magnemite - Substitute - TM103
  (81, 8100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Magnemite - Iron Defense - TM104
  (81, 8100, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 37),
  -- Magnemite - Heavy Slam - TM121
  (81, 8100, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 38),
  -- Magnemite - Thunderbolt - TM126
  (81, 8100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 39),
  -- Magnemite - Helping Hand - TM130
  (81, 8100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 40),
  -- Magnemite - Electric Terrain - TM136
  (81, 8100, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 41),
  -- Magnemite - Wild Charge - TM147
  (81, 8100, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 42),
  -- Magnemite - Thunder - TM166
  (81, 8100, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 43),
  -- Magnemite - Steel Beam - TM170
  (81, 8100, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 44),
  -- Magnemite - Tera Blast - TM171
  (81, 8100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Magnemite - Explosion - Egg
  (81, 8100, 153, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Magnemite - Electroweb - Egg
  (81, 8100, 527, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Magneton - Tackle - Level 1
  (82, 8200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magneton - Supersonic - Level 1
  (82, 8200, 48, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magneton - Thunder Shock - Level 1
  (82, 8200, 84, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magneton - Thunder Wave - Level 1
  (82, 8200, 86, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magneton - Electric Terrain - Level 1
  (82, 8200, 604, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magneton - Electro Ball - Level 12
  (82, 8200, 486, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Magneton - Gyro Ball - Level 16
  (82, 8200, 360, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Magneton - Spark - Level 20
  (82, 8200, 209, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Magneton - Screech - Level 24
  (82, 8200, 103, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Magneton - Magnet Rise - Level 28
  (82, 8200, 393, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Magneton - Flash Cannon - Level 34
  (82, 8200, 430, 23, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Magneton - Discharge - Level 40
  (82, 8200, 435, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Magneton - Metal Sound - Level 46
  (82, 8200, 319, 23, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Magneton - Light Screen - Level 52
  (82, 8200, 113, 23, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Magneton - Lock-On - Level 58
  (82, 8200, 199, 23, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Magneton - Zap Cannon - Level 64
  (82, 8200, 192, 23, NULL, 1, 64, NULL, NULL, NULL, 16),
  -- Magneton - Take Down - TM001
  (82, 8200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Magneton - Protect - TM007
  (82, 8200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Magneton - Confuse Ray - TM017
  (82, 8200, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 19),
  -- Magneton - Charge Beam - TM023
  (82, 8200, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Magneton - Facade - TM025
  (82, 8200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Magneton - Swift - TM032
  (82, 8200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Magneton - Endure - TM047
  (82, 8200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Magneton - Volt Switch - TM048
  (82, 8200, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 24),
  -- Magneton - Sunny Day - TM049
  (82, 8200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Magneton - Rain Dance - TM050
  (82, 8200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Magneton - Sandstorm - TM051
  (82, 8200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 27),
  -- Magneton - Sleep Talk - TM070
  (82, 8200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Magneton - Electro Ball - TM072
  (82, 8200, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 29),
  -- Magneton - Reflect - TM074
  (82, 8200, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 30),
  -- Magneton - Light Screen - TM075
  (82, 8200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 31),
  -- Magneton - Thunder Wave - TM082
  (82, 8200, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Magneton - Rest - TM085
  (82, 8200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Magneton - Flash Cannon - TM093
  (82, 8200, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 34),
  -- Magneton - Eerie Impulse - TM096
  (82, 8200, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 35),
  -- Magneton - Iron Head - TM099
  (82, 8200, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 36),
  -- Magneton - Substitute - TM103
  (82, 8200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Magneton - Iron Defense - TM104
  (82, 8200, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 38),
  -- Magneton - Heavy Slam - TM121
  (82, 8200, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 39),
  -- Magneton - Thunderbolt - TM126
  (82, 8200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 40),
  -- Magneton - Helping Hand - TM130
  (82, 8200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Magneton - Electric Terrain - TM136
  (82, 8200, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 42),
  -- Magneton - Wild Charge - TM147
  (82, 8200, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 43),
  -- Magneton - Hyper Beam - TM163
  (82, 8200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 44),
  -- Magneton - Thunder - TM166
  (82, 8200, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 45),
  -- Magneton - Steel Beam - TM170
  (82, 8200, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 46),
  -- Magneton - Tera Blast - TM171
  (82, 8200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 47),
  -- Magneton - Explosion - Egg
  (82, 8200, 153, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Magneton - Electroweb - Egg
  (82, 8200, 527, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Magneton - Tri Attack - Evolution
  (82, 8200, 161, 23, NULL, 7, NULL, NULL, NULL, NULL, 50),
  -- Doduo - Growl - Level 1
  (84, 8400, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Doduo - Peck - Level 1
  (84, 8400, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Doduo - Quick Attack - Level 5
  (84, 8400, 98, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Doduo - Fury Attack - Level 9
  (84, 8400, 31, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Doduo - Pluck - Level 14
  (84, 8400, 365, 23, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Doduo - Double Hit - Level 19
  (84, 8400, 458, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Doduo - Agility - Level 23
  (84, 8400, 97, 23, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Doduo - Uproar - Level 27
  (84, 8400, 253, 23, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Doduo - Acupressure - Level 30
  (84, 8400, 367, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Doduo - Swords Dance - Level 33
  (84, 8400, 14, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Doduo - Drill Peck - Level 36
  (84, 8400, 65, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Doduo - Endeavor - Level 39
  (84, 8400, 283, 23, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Doduo - Thrash - Level 43
  (84, 8400, 37, 23, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Doduo - Take Down - TM001
  (84, 8400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Doduo - Agility - TM004
  (84, 8400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Doduo - Mud-Slap - TM005
  (84, 8400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Doduo - Protect - TM007
  (84, 8400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Doduo - Low Kick - TM012
  (84, 8400, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Doduo - Acrobatics - TM014
  (84, 8400, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Doduo - Thief - TM018
  (84, 8400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Doduo - Facade - TM025
  (84, 8400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Doduo - Aerial Ace - TM027
  (84, 8400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Doduo - Swift - TM032
  (84, 8400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Doduo - Endure - TM047
  (84, 8400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Doduo - Sunny Day - TM049
  (84, 8400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Doduo - Rain Dance - TM050
  (84, 8400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Doduo - Body Slam - TM066
  (84, 8400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Doduo - Sleep Talk - TM070
  (84, 8400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Doduo - Rest - TM085
  (84, 8400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Doduo - Swords Dance - TM088
  (84, 8400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 30),
  -- Doduo - Substitute - TM103
  (84, 8400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 31),
  -- Doduo - Tailwind - TM113
  (84, 8400, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 32),
  -- Doduo - Helping Hand - TM130
  (84, 8400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 33),
  -- Doduo - Baton Pass - TM132
  (84, 8400, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 34),
  -- Doduo - Brave Bird - TM164
  (84, 8400, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 35),
  -- Doduo - Tera Blast - TM171
  (84, 8400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 36),
  -- Doduo - Whirlwind - Egg
  (84, 8400, 18, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Doduo - Sky Attack - Egg
  (84, 8400, 143, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Doduo - Flail - Egg
  (84, 8400, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Doduo - Assurance - Egg
  (84, 8400, 372, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Dodrio - Growl - Level 1
  (85, 8500, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dodrio - Peck - Level 1
  (85, 8500, 64, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dodrio - Quick Attack - Level 1
  (85, 8500, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dodrio - Fury Attack - Level 12
  (85, 8500, 31, 23, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Dodrio - Pluck - Level 15
  (85, 8500, 365, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Dodrio - Double Hit - Level 19
  (85, 8500, 458, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Dodrio - Agility - Level 23
  (85, 8500, 97, 23, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Dodrio - Uproar - Level 26
  (85, 8500, 253, 23, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Dodrio - Acupressure - Level 30
  (85, 8500, 367, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Dodrio - Swords Dance - Level 34
  (85, 8500, 14, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Dodrio - Drill Peck - Level 38
  (85, 8500, 65, 23, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Dodrio - Endeavor - Level 43
  (85, 8500, 283, 23, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Dodrio - Thrash - Level 50
  (85, 8500, 37, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Dodrio - Take Down - TM001
  (85, 8500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Dodrio - Agility - TM004
  (85, 8500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Dodrio - Mud-Slap - TM005
  (85, 8500, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Dodrio - Scary Face - TM006
  (85, 8500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Dodrio - Protect - TM007
  (85, 8500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Dodrio - Low Kick - TM012
  (85, 8500, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Dodrio - Acrobatics - TM014
  (85, 8500, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Dodrio - Thief - TM018
  (85, 8500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Dodrio - Trailblaze - TM020
  (85, 8500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Dodrio - Pounce - TM021
  (85, 8500, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 23),
  -- Dodrio - Facade - TM025
  (85, 8500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Dodrio - Aerial Ace - TM027
  (85, 8500, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Dodrio - Swift - TM032
  (85, 8500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Dodrio - Endure - TM047
  (85, 8500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Dodrio - Sunny Day - TM049
  (85, 8500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 28),
  -- Dodrio - Rain Dance - TM050
  (85, 8500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Dodrio - Body Slam - TM066
  (85, 8500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Dodrio - Sleep Talk - TM070
  (85, 8500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Dodrio - Stomping Tantrum - TM084
  (85, 8500, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 32),
  -- Dodrio - Rest - TM085
  (85, 8500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Dodrio - Taunt - TM087
  (85, 8500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 34),
  -- Dodrio - Swords Dance - TM088
  (85, 8500, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 35),
  -- Dodrio - Fly - TM097
  (85, 8500, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 36),
  -- Dodrio - Substitute - TM103
  (85, 8500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 37),
  -- Dodrio - Drill Run - TM106
  (85, 8500, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 38),
  -- Dodrio - Tailwind - TM113
  (85, 8500, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 39),
  -- Dodrio - Helping Hand - TM130
  (85, 8500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 40),
  -- Dodrio - Baton Pass - TM132
  (85, 8500, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 41),
  -- Dodrio - Giga Impact - TM152
  (85, 8500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 42),
  -- Dodrio - Hyper Beam - TM163
  (85, 8500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 43),
  -- Dodrio - Brave Bird - TM164
  (85, 8500, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 44),
  -- Dodrio - Tera Blast - TM171
  (85, 8500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Dodrio - Whirlwind - Egg
  (85, 8500, 18, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Dodrio - Sky Attack - Egg
  (85, 8500, 143, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Dodrio - Flail - Egg
  (85, 8500, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Dodrio - Assurance - Egg
  (85, 8500, 372, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Dodrio - Tri Attack - Evolution
  (85, 8500, 161, 23, NULL, 7, NULL, NULL, NULL, NULL, 50),
  -- Seel - Headbutt - Level 1
  (86, 8600, 29, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seel - Growl - Level 3
  (86, 8600, 45, 23, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Seel - Charm - Level 7
  (86, 8600, 204, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Seel - Icy Wind - Level 11
  (86, 8600, 196, 23, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Seel - Encore - Level 13
  (86, 8600, 227, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Seel - Ice Shard - Level 17
  (86, 8600, 420, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Seel - Rest - Level 21
  (86, 8600, 156, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Seel - Aqua Ring - Level 23
  (86, 8600, 392, 23, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Seel - Aurora Beam - Level 27
  (86, 8600, 62, 23, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Seel - Aqua Jet - Level 31
  (86, 8600, 453, 23, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Seel - Brine - Level 33
  (86, 8600, 362, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Seel - Take Down - Level 37
  (86, 8600, 36, 23, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Seel - Dive - Level 41
  (86, 8600, 291, 23, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Seel - Aqua Tail - Level 43
  (86, 8600, 401, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Seel - Ice Beam - Level 47
  (86, 8600, 58, 23, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Seel - Safeguard - Level 51
  (86, 8600, 219, 23, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Seel - Snowscape - Level 53
  (86, 8600, 883, 23, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Seel - Take Down - TM001
  (86, 8600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Seel - Charm - TM002
  (86, 8600, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 19),
  -- Seel - Protect - TM007
  (86, 8600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Seel - Water Pulse - TM011
  (86, 8600, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 21),
  -- Seel - Thief - TM018
  (86, 8600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Seel - Chilling Water - TM022
  (86, 8600, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 23),
  -- Seel - Facade - TM025
  (86, 8600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Seel - Icy Wind - TM034
  (86, 8600, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Seel - Fling - TM043
  (86, 8600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Seel - Avalanche - TM046
  (86, 8600, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 27),
  -- Seel - Endure - TM047
  (86, 8600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Seel - Rain Dance - TM050
  (86, 8600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Seel - Snowscape - TM052
  (86, 8600, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 30),
  -- Seel - Smart Strike - TM053
  (86, 8600, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 31),
  -- Seel - Body Slam - TM066
  (86, 8600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Seel - Sleep Talk - TM070
  (86, 8600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Seel - Waterfall - TM077
  (86, 8600, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 34),
  -- Seel - Rest - TM085
  (86, 8600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Seel - Substitute - TM103
  (86, 8600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Seel - Drill Run - TM106
  (86, 8600, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 37),
  -- Seel - Encore - TM122
  (86, 8600, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 38),
  -- Seel - Surf - TM123
  (86, 8600, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 39),
  -- Seel - Ice Spinner - TM124
  (86, 8600, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 40),
  -- Seel - Helping Hand - TM130
  (86, 8600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 41),
  -- Seel - Ice Beam - TM135
  (86, 8600, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 42),
  -- Seel - Hydro Pump - TM142
  (86, 8600, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 43),
  -- Seel - Blizzard - TM143
  (86, 8600, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 44),
  -- Seel - Tera Blast - TM171
  (86, 8600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Seel - Horn Drill - Egg
  (86, 8600, 32, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Seel - Disable - Egg
  (86, 8600, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Seel - Lick - Egg
  (86, 8600, 122, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Seel - Perish Song - Egg
  (86, 8600, 195, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Seel - Fake Out - Egg
  (86, 8600, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Seel - Stockpile - Egg
  (86, 8600, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Seel - Spit Up - Egg
  (86, 8600, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Seel - Swallow - Egg
  (86, 8600, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Seel - Entrainment - Egg
  (86, 8600, 494, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Seel - Belch - Egg
  (86, 8600, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Dewgong - Headbutt - Level 1
  (87, 8700, 29, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dewgong - Growl - Level 1
  (87, 8700, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dewgong - Icy Wind - Level 1
  (87, 8700, 196, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dewgong - Encore - Level 13
  (87, 8700, 227, 23, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Dewgong - Ice Shard - Level 17
  (87, 8700, 420, 23, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Dewgong - Rest - Level 21
  (87, 8700, 156, 23, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Dewgong - Aqua Ring - Level 23
  (87, 8700, 392, 23, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Dewgong - Aurora Beam - Level 27
  (87, 8700, 62, 23, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Dewgong - Aqua Jet - Level 31
  (87, 8700, 453, 23, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Dewgong - Brine - Level 33
  (87, 8700, 362, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Dewgong - Take Down - Level 39
  (87, 8700, 36, 23, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Dewgong - Dive - Level 45
  (87, 8700, 291, 23, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Dewgong - Aqua Tail - Level 49
  (87, 8700, 401, 23, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Dewgong - Ice Beam - Level 55
  (87, 8700, 58, 23, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Dewgong - Safeguard - Level 61
  (87, 8700, 219, 23, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Dewgong - Snowscape - Level 65
  (87, 8700, 883, 23, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Dewgong - Take Down - TM001
  (87, 8700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Dewgong - Charm - TM002
  (87, 8700, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 18),
  -- Dewgong - Protect - TM007
  (87, 8700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Dewgong - Water Pulse - TM011
  (87, 8700, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 20),
  -- Dewgong - Thief - TM018
  (87, 8700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Dewgong - Chilling Water - TM022
  (87, 8700, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Dewgong - Facade - TM025
  (87, 8700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Dewgong - Icy Wind - TM034
  (87, 8700, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Dewgong - Fling - TM043
  (87, 8700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Dewgong - Avalanche - TM046
  (87, 8700, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 26),
  -- Dewgong - Endure - TM047
  (87, 8700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Dewgong - Rain Dance - TM050
  (87, 8700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Dewgong - Snowscape - TM052
  (87, 8700, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 29),
  -- Dewgong - Smart Strike - TM053
  (87, 8700, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 30),
  -- Dewgong - Body Slam - TM066
  (87, 8700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Dewgong - Sleep Talk - TM070
  (87, 8700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Dewgong - Waterfall - TM077
  (87, 8700, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 33),
  -- Dewgong - Rest - TM085
  (87, 8700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Dewgong - Substitute - TM103
  (87, 8700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Dewgong - Drill Run - TM106
  (87, 8700, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 36),
  -- Dewgong - Liquidation - TM110
  (87, 8700, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 37),
  -- Dewgong - Encore - TM122
  (87, 8700, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 38),
  -- Dewgong - Surf - TM123
  (87, 8700, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 39),
  -- Dewgong - Ice Spinner - TM124
  (87, 8700, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 40),
  -- Dewgong - Play Rough - TM127
  (87, 8700, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 41),
  -- Dewgong - Helping Hand - TM130
  (87, 8700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 42),
  -- Dewgong - Ice Beam - TM135
  (87, 8700, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 43),
  -- Dewgong - Hydro Pump - TM142
  (87, 8700, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 44),
  -- Dewgong - Blizzard - TM143
  (87, 8700, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 45),
  -- Dewgong - Giga Impact - TM152
  (87, 8700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Dewgong - Hyper Beam - TM163
  (87, 8700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 47),
  -- Dewgong - Tera Blast - TM171
  (87, 8700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Dewgong - Horn Drill - Egg
  (87, 8700, 32, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Dewgong - Disable - Egg
  (87, 8700, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Dewgong - Lick - Egg
  (87, 8700, 122, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Dewgong - Perish Song - Egg
  (87, 8700, 195, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Dewgong - Fake Out - Egg
  (87, 8700, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Dewgong - Stockpile - Egg
  (87, 8700, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Dewgong - Spit Up - Egg
  (87, 8700, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Dewgong - Swallow - Egg
  (87, 8700, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Dewgong - Entrainment - Egg
  (87, 8700, 494, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Dewgong - Belch - Egg
  (87, 8700, 562, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Dewgong - Sheer Cold - Evolution
  (87, 8700, 329, 23, NULL, 7, NULL, NULL, NULL, NULL, 59),
  -- Grimer - Pound - Level 1
  (88, 8800, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grimer - Poison Gas - Level 1
  (88, 8800, 139, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grimer - Harden - Level 4
  (88, 8800, 106, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Grimer - Mud-Slap - Level 7
  (88, 8800, 189, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Grimer - Disable - Level 12
  (88, 8800, 50, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Grimer - Sludge - Level 15
  (88, 8800, 124, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Grimer - Mud Shot - Level 18
  (88, 8800, 341, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Grimer - Minimize - Level 21
  (88, 8800, 107, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Grimer - Toxic - Level 26
  (88, 8800, 92, 23, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Grimer - Sludge Bomb - Level 29
  (88, 8800, 188, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Grimer - Sludge Wave - Level 32
  (88, 8800, 482, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Grimer - Screech - Level 37
  (88, 8800, 103, 23, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Grimer - Gunk Shot - Level 40
  (88, 8800, 441, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Grimer - Acid Armor - Level 43
  (88, 8800, 151, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Grimer - Belch - Level 46
  (88, 8800, 562, 23, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Grimer - Memento - Level 48
  (88, 8800, 262, 23, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Grimer - Take Down - TM001
  (88, 8800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Grimer - Mud-Slap - TM005
  (88, 8800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Grimer - Scary Face - TM006
  (88, 8800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Grimer - Protect - TM007
  (88, 8800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Grimer - Acid Spray - TM013
  (88, 8800, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 21),
  -- Grimer - Confuse Ray - TM017
  (88, 8800, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Grimer - Thief - TM018
  (88, 8800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Grimer - Facade - TM025
  (88, 8800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Grimer - Hex - TM029
  (88, 8800, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 25),
  -- Grimer - Mud Shot - TM035
  (88, 8800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 26),
  -- Grimer - Rock Tomb - TM036
  (88, 8800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Grimer - Fling - TM043
  (88, 8800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Grimer - Venoshock - TM045
  (88, 8800, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 29),
  -- Grimer - Endure - TM047
  (88, 8800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Grimer - Sunny Day - TM049
  (88, 8800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Grimer - Rain Dance - TM050
  (88, 8800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Grimer - Sandstorm - TM051
  (88, 8800, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 33),
  -- Grimer - Dig - TM055
  (88, 8800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Grimer - Zen Headbutt - TM059
  (88, 8800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 35),
  -- Grimer - Body Slam - TM066
  (88, 8800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Grimer - Fire Punch - TM067
  (88, 8800, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 37),
  -- Grimer - Thunder Punch - TM068
  (88, 8800, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 38),
  -- Grimer - Ice Punch - TM069
  (88, 8800, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 39),
  -- Grimer - Sleep Talk - TM070
  (88, 8800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Grimer - Drain Punch - TM073
  (88, 8800, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 41),
  -- Grimer - Metronome - TM080
  (88, 8800, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 42),
  -- Grimer - Poison Jab - TM083
  (88, 8800, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 43),
  -- Grimer - Rest - TM085
  (88, 8800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Grimer - Rock Slide - TM086
  (88, 8800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 45),
  -- Grimer - Taunt - TM087
  (88, 8800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 46),
  -- Grimer - Imprison - TM092
  (88, 8800, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 47),
  -- Grimer - Gunk Shot - TM102
  (88, 8800, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 48),
  -- Grimer - Substitute - TM103
  (88, 8800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Grimer - Giga Drain - TM111
  (88, 8800, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 50),
  -- Grimer - Shadow Ball - TM114
  (88, 8800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 51),
  -- Grimer - Flamethrower - TM125
  (88, 8800, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 52),
  -- Grimer - Thunderbolt - TM126
  (88, 8800, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 53),
  -- Grimer - Helping Hand - TM130
  (88, 8800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 54),
  -- Grimer - Fire Blast - TM141
  (88, 8800, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 55),
  -- Grimer - Sludge Bomb - TM148
  (88, 8800, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 56),
  -- Grimer - Thunder - TM166
  (88, 8800, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 57),
  -- Grimer - Tera Blast - TM171
  (88, 8800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 58),
  -- Grimer - Haze - Egg
  (88, 8800, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Grimer - Curse - Egg
  (88, 8800, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Grimer - Mean Look - Egg
  (88, 8800, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Grimer - Stockpile - Egg
  (88, 8800, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Grimer - Spit Up - Egg
  (88, 8800, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Grimer - Swallow - Egg
  (88, 8800, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Grimer - Shadow Punch - Egg
  (88, 8800, 325, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Grimer - Shadow Sneak - Egg
  (88, 8800, 425, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Grimer - Acid Spray - Egg
  (88, 8800, 491, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Grimer (Alolan Grimer) - Pound - Level 1
  (88, 8801, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grimer (Alolan Grimer) - Poison Gas - Level 1
  (88, 8801, 139, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grimer (Alolan Grimer) - Harden - Level 4
  (88, 8801, 106, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Grimer (Alolan Grimer) - Bite - Level 7
  (88, 8801, 44, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Grimer (Alolan Grimer) - Disable - Level 12
  (88, 8801, 50, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Grimer (Alolan Grimer) - Acid Spray - Level 15
  (88, 8801, 491, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Grimer (Alolan Grimer) - Poison Fang - Level 18
  (88, 8801, 305, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Grimer (Alolan Grimer) - Minimize - Level 21
  (88, 8801, 107, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Grimer (Alolan Grimer) - Toxic - Level 26
  (88, 8801, 92, 23, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Grimer (Alolan Grimer) - Knock Off - Level 29
  (88, 8801, 282, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Grimer (Alolan Grimer) - Crunch - Level 32
  (88, 8801, 242, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Grimer (Alolan Grimer) - Screech - Level 37
  (88, 8801, 103, 23, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Grimer (Alolan Grimer) - Gunk Shot - Level 40
  (88, 8801, 441, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Grimer (Alolan Grimer) - Acid Armor - Level 43
  (88, 8801, 151, 23, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Grimer (Alolan Grimer) - Belch - Level 46
  (88, 8801, 562, 23, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Grimer (Alolan Grimer) - Memento - Level 48
  (88, 8801, 262, 23, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Grimer (Alolan Grimer) - Take Down - TM001
  (88, 8801, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Grimer (Alolan Grimer) - Mud-Slap - TM005
  (88, 8801, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Grimer (Alolan Grimer) - Scary Face - TM006
  (88, 8801, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Grimer (Alolan Grimer) - Protect - TM007
  (88, 8801, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Grimer (Alolan Grimer) - Acid Spray - TM013
  (88, 8801, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 21),
  -- Grimer (Alolan Grimer) - Thief - TM018
  (88, 8801, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Grimer (Alolan Grimer) - Facade - TM025
  (88, 8801, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Grimer (Alolan Grimer) - Hex - TM029
  (88, 8801, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 24),
  -- Grimer (Alolan Grimer) - Snarl - TM030
  (88, 8801, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 25),
  -- Grimer (Alolan Grimer) - Swift - TM032
  (88, 8801, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Grimer (Alolan Grimer) - Mud Shot - TM035
  (88, 8801, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Grimer (Alolan Grimer) - Rock Tomb - TM036
  (88, 8801, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Grimer (Alolan Grimer) - Fling - TM043
  (88, 8801, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Grimer (Alolan Grimer) - Venoshock - TM045
  (88, 8801, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 30),
  -- Grimer (Alolan Grimer) - Endure - TM047
  (88, 8801, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Grimer (Alolan Grimer) - Sunny Day - TM049
  (88, 8801, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Grimer (Alolan Grimer) - Rain Dance - TM050
  (88, 8801, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Grimer (Alolan Grimer) - Sandstorm - TM051
  (88, 8801, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 34),
  -- Grimer (Alolan Grimer) - Dig - TM055
  (88, 8801, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Grimer (Alolan Grimer) - Brick Break - TM058
  (88, 8801, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Grimer (Alolan Grimer) - Zen Headbutt - TM059
  (88, 8801, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 37),
  -- Grimer (Alolan Grimer) - Body Slam - TM066
  (88, 8801, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Grimer (Alolan Grimer) - Fire Punch - TM067
  (88, 8801, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 39),
  -- Grimer (Alolan Grimer) - Thunder Punch - TM068
  (88, 8801, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Grimer (Alolan Grimer) - Ice Punch - TM069
  (88, 8801, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 41),
  -- Grimer (Alolan Grimer) - Sleep Talk - TM070
  (88, 8801, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Grimer (Alolan Grimer) - Drain Punch - TM073
  (88, 8801, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 43),
  -- Grimer (Alolan Grimer) - Metronome - TM080
  (88, 8801, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 44),
  -- Grimer (Alolan Grimer) - Poison Jab - TM083
  (88, 8801, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 45),
  -- Grimer (Alolan Grimer) - Rest - TM085
  (88, 8801, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Grimer (Alolan Grimer) - Rock Slide - TM086
  (88, 8801, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Grimer (Alolan Grimer) - Taunt - TM087
  (88, 8801, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Grimer (Alolan Grimer) - Imprison - TM092
  (88, 8801, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 49),
  -- Grimer (Alolan Grimer) - Dark Pulse - TM094
  (88, 8801, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 50),
  -- Grimer (Alolan Grimer) - Gunk Shot - TM102
  (88, 8801, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 51),
  -- Grimer (Alolan Grimer) - Substitute - TM103
  (88, 8801, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 52),
  -- Grimer (Alolan Grimer) - Crunch - TM108
  (88, 8801, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 53),
  -- Grimer (Alolan Grimer) - Giga Drain - TM111
  (88, 8801, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 54),
  -- Grimer (Alolan Grimer) - Shadow Ball - TM114
  (88, 8801, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 55),
  -- Grimer (Alolan Grimer) - Flamethrower - TM125
  (88, 8801, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 56),
  -- Grimer (Alolan Grimer) - Thunderbolt - TM126
  (88, 8801, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 57),
  -- Grimer (Alolan Grimer) - Helping Hand - TM130
  (88, 8801, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 58),
  -- Grimer (Alolan Grimer) - Fire Blast - TM141
  (88, 8801, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 59),
  -- Grimer (Alolan Grimer) - Sludge Bomb - TM148
  (88, 8801, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 60),
  -- Grimer (Alolan Grimer) - Stone Edge - TM150
  (88, 8801, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 61),
  -- Grimer (Alolan Grimer) - Giga Impact - TM152
  (88, 8801, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 62),
  -- Grimer (Alolan Grimer) - Hyper Beam - TM163
  (88, 8801, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 63),
  -- Grimer (Alolan Grimer) - Thunder - TM166
  (88, 8801, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 64),
  -- Grimer (Alolan Grimer) - Tera Blast - TM171
  (88, 8801, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 65),
  -- Grimer (Alolan Grimer) - Curse - Egg
  (88, 8801, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Grimer (Alolan Grimer) - Spite - Egg
  (88, 8801, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Grimer (Alolan Grimer) - Mean Look - Egg
  (88, 8801, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Grimer (Alolan Grimer) - Stockpile - Egg
  (88, 8801, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Grimer (Alolan Grimer) - Spit Up - Egg
  (88, 8801, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Grimer (Alolan Grimer) - Swallow - Egg
  (88, 8801, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Grimer (Alolan Grimer) - Recycle - Egg
  (88, 8801, 278, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Grimer (Alolan Grimer) - Assurance - Egg
  (88, 8801, 372, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Grimer (Alolan Grimer) - Shadow Sneak - Egg
  (88, 8801, 425, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Grimer (Alolan Grimer) - Clear Smog - Egg
  (88, 8801, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Muk - Pound - Level 1
  (89, 8900, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Muk - Harden - Level 1
  (89, 8900, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Muk - Poison Gas - Level 1
  (89, 8900, 139, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Muk - Mud-Slap - Level 1
  (89, 8900, 189, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Muk - Disable - Level 12
  (89, 8900, 50, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Muk - Sludge - Level 15
  (89, 8900, 124, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Muk - Mud Shot - Level 18
  (89, 8900, 341, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Muk - Minimize - Level 21
  (89, 8900, 107, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Muk - Toxic - Level 26
  (89, 8900, 92, 23, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Muk - Sludge Bomb - Level 29
  (89, 8900, 188, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Muk - Sludge Wave - Level 32
  (89, 8900, 482, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Muk - Screech - Level 37
  (89, 8900, 103, 23, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Muk - Gunk Shot - Level 40
  (89, 8900, 441, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Muk - Acid Armor - Level 46
  (89, 8900, 151, 23, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Muk - Belch - Level 52
  (89, 8900, 562, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Muk - Memento - Level 57
  (89, 8900, 262, 23, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Muk - Take Down - TM001
  (89, 8900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Muk - Mud-Slap - TM005
  (89, 8900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Muk - Scary Face - TM006
  (89, 8900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Muk - Protect - TM007
  (89, 8900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Muk - Acid Spray - TM013
  (89, 8900, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 21),
  -- Muk - Confuse Ray - TM017
  (89, 8900, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Muk - Thief - TM018
  (89, 8900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Muk - Facade - TM025
  (89, 8900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Muk - Hex - TM029
  (89, 8900, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 25),
  -- Muk - Swift - TM032
  (89, 8900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Muk - Mud Shot - TM035
  (89, 8900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Muk - Rock Tomb - TM036
  (89, 8900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Muk - Fling - TM043
  (89, 8900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Muk - Venoshock - TM045
  (89, 8900, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 30),
  -- Muk - Endure - TM047
  (89, 8900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Muk - Sunny Day - TM049
  (89, 8900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Muk - Rain Dance - TM050
  (89, 8900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Muk - Sandstorm - TM051
  (89, 8900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 34),
  -- Muk - Dig - TM055
  (89, 8900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Muk - Brick Break - TM058
  (89, 8900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Muk - Zen Headbutt - TM059
  (89, 8900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 37),
  -- Muk - Body Slam - TM066
  (89, 8900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Muk - Fire Punch - TM067
  (89, 8900, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 39),
  -- Muk - Thunder Punch - TM068
  (89, 8900, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Muk - Ice Punch - TM069
  (89, 8900, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 41),
  -- Muk - Sleep Talk - TM070
  (89, 8900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Muk - Drain Punch - TM073
  (89, 8900, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 43),
  -- Muk - Metronome - TM080
  (89, 8900, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 44),
  -- Muk - Poison Jab - TM083
  (89, 8900, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 45),
  -- Muk - Rest - TM085
  (89, 8900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Muk - Rock Slide - TM086
  (89, 8900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Muk - Taunt - TM087
  (89, 8900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Muk - Toxic Spikes - TM091
  (89, 8900, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 49),
  -- Muk - Imprison - TM092
  (89, 8900, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 50),
  -- Muk - Dark Pulse - TM094
  (89, 8900, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 51),
  -- Muk - Gunk Shot - TM102
  (89, 8900, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 52),
  -- Muk - Substitute - TM103
  (89, 8900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 53),
  -- Muk - Giga Drain - TM111
  (89, 8900, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 54),
  -- Muk - Shadow Ball - TM114
  (89, 8900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 55),
  -- Muk - Flamethrower - TM125
  (89, 8900, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 56),
  -- Muk - Thunderbolt - TM126
  (89, 8900, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 57),
  -- Muk - Helping Hand - TM130
  (89, 8900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 58),
  -- Muk - Fire Blast - TM141
  (89, 8900, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 59),
  -- Muk - Sludge Bomb - TM148
  (89, 8900, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 60),
  -- Muk - Giga Impact - TM152
  (89, 8900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 61),
  -- Muk - Focus Blast - TM158
  (89, 8900, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 62),
  -- Muk - Hyper Beam - TM163
  (89, 8900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 63),
  -- Muk - Thunder - TM166
  (89, 8900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 64),
  -- Muk - Tera Blast - TM171
  (89, 8900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 65),
  -- Muk - Haze - Egg
  (89, 8900, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Muk - Curse - Egg
  (89, 8900, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Muk - Mean Look - Egg
  (89, 8900, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Muk - Stockpile - Egg
  (89, 8900, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Muk - Spit Up - Egg
  (89, 8900, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Muk - Swallow - Egg
  (89, 8900, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Muk - Shadow Punch - Egg
  (89, 8900, 325, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Muk - Shadow Sneak - Egg
  (89, 8900, 425, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Muk - Acid Spray - Egg
  (89, 8900, 491, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Muk (Alolan Muk) - Pound - Level 1
  (89, 8901, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Muk (Alolan Muk) - Bite - Level 1
  (89, 8901, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Muk (Alolan Muk) - Harden - Level 1
  (89, 8901, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Muk (Alolan Muk) - Poison Gas - Level 1
  (89, 8901, 139, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Muk (Alolan Muk) - Disable - Level 12
  (89, 8901, 50, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Muk (Alolan Muk) - Acid Spray - Level 15
  (89, 8901, 491, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Muk (Alolan Muk) - Poison Fang - Level 18
  (89, 8901, 305, 23, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Muk (Alolan Muk) - Minimize - Level 21
  (89, 8901, 107, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Muk (Alolan Muk) - Toxic - Level 26
  (89, 8901, 92, 23, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Muk (Alolan Muk) - Knock Off - Level 29
  (89, 8901, 282, 23, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Muk (Alolan Muk) - Crunch - Level 32
  (89, 8901, 242, 23, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Muk (Alolan Muk) - Screech - Level 37
  (89, 8901, 103, 23, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Muk (Alolan Muk) - Gunk Shot - Level 40
  (89, 8901, 441, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Muk (Alolan Muk) - Acid Armor - Level 46
  (89, 8901, 151, 23, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Muk (Alolan Muk) - Belch - Level 52
  (89, 8901, 562, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Muk (Alolan Muk) - Memento - Level 57
  (89, 8901, 262, 23, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Muk (Alolan Muk) - Take Down - TM001
  (89, 8901, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Muk (Alolan Muk) - Mud-Slap - TM005
  (89, 8901, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Muk (Alolan Muk) - Scary Face - TM006
  (89, 8901, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Muk (Alolan Muk) - Protect - TM007
  (89, 8901, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Muk (Alolan Muk) - Acid Spray - TM013
  (89, 8901, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 21),
  -- Muk (Alolan Muk) - Thief - TM018
  (89, 8901, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Muk (Alolan Muk) - Facade - TM025
  (89, 8901, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Muk (Alolan Muk) - Hex - TM029
  (89, 8901, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 24),
  -- Muk (Alolan Muk) - Snarl - TM030
  (89, 8901, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 25),
  -- Muk (Alolan Muk) - Swift - TM032
  (89, 8901, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Muk (Alolan Muk) - Mud Shot - TM035
  (89, 8901, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Muk (Alolan Muk) - Rock Tomb - TM036
  (89, 8901, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Muk (Alolan Muk) - Fling - TM043
  (89, 8901, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Muk (Alolan Muk) - Venoshock - TM045
  (89, 8901, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 30),
  -- Muk (Alolan Muk) - Endure - TM047
  (89, 8901, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Muk (Alolan Muk) - Sunny Day - TM049
  (89, 8901, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Muk (Alolan Muk) - Rain Dance - TM050
  (89, 8901, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Muk (Alolan Muk) - Sandstorm - TM051
  (89, 8901, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 34),
  -- Muk (Alolan Muk) - Dig - TM055
  (89, 8901, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Muk (Alolan Muk) - Brick Break - TM058
  (89, 8901, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Muk (Alolan Muk) - Zen Headbutt - TM059
  (89, 8901, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 37),
  -- Muk (Alolan Muk) - Body Slam - TM066
  (89, 8901, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Muk (Alolan Muk) - Fire Punch - TM067
  (89, 8901, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 39),
  -- Muk (Alolan Muk) - Thunder Punch - TM068
  (89, 8901, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Muk (Alolan Muk) - Ice Punch - TM069
  (89, 8901, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 41),
  -- Muk (Alolan Muk) - Sleep Talk - TM070
  (89, 8901, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Muk (Alolan Muk) - Drain Punch - TM073
  (89, 8901, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 43),
  -- Muk (Alolan Muk) - Metronome - TM080
  (89, 8901, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 44),
  -- Muk (Alolan Muk) - Poison Jab - TM083
  (89, 8901, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 45),
  -- Muk (Alolan Muk) - Rest - TM085
  (89, 8901, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Muk (Alolan Muk) - Rock Slide - TM086
  (89, 8901, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Muk (Alolan Muk) - Taunt - TM087
  (89, 8901, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Muk (Alolan Muk) - Imprison - TM092
  (89, 8901, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 49),
  -- Muk (Alolan Muk) - Dark Pulse - TM094
  (89, 8901, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 50),
  -- Muk (Alolan Muk) - Gunk Shot - TM102
  (89, 8901, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 51),
  -- Muk (Alolan Muk) - Substitute - TM103
  (89, 8901, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 52),
  -- Muk (Alolan Muk) - Crunch - TM108
  (89, 8901, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 53),
  -- Muk (Alolan Muk) - Giga Drain - TM111
  (89, 8901, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 54),
  -- Muk (Alolan Muk) - Shadow Ball - TM114
  (89, 8901, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 55),
  -- Muk (Alolan Muk) - Flamethrower - TM125
  (89, 8901, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 56),
  -- Muk (Alolan Muk) - Thunderbolt - TM126
  (89, 8901, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 57),
  -- Muk (Alolan Muk) - Helping Hand - TM130
  (89, 8901, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 58),
  -- Muk (Alolan Muk) - Fire Blast - TM141
  (89, 8901, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 59),
  -- Muk (Alolan Muk) - Sludge Bomb - TM148
  (89, 8901, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 60),
  -- Muk (Alolan Muk) - Stone Edge - TM150
  (89, 8901, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 61),
  -- Muk (Alolan Muk) - Giga Impact - TM152
  (89, 8901, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 62),
  -- Muk (Alolan Muk) - Focus Blast - TM158
  (89, 8901, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 63),
  -- Muk (Alolan Muk) - Hyper Beam - TM163
  (89, 8901, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 64),
  -- Muk (Alolan Muk) - Thunder - TM166
  (89, 8901, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 65),
  -- Muk (Alolan Muk) - Tera Blast - TM171
  (89, 8901, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 66),
  -- Muk (Alolan Muk) - Curse - Egg
  (89, 8901, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Muk (Alolan Muk) - Spite - Egg
  (89, 8901, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Muk (Alolan Muk) - Mean Look - Egg
  (89, 8901, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Muk (Alolan Muk) - Stockpile - Egg
  (89, 8901, 254, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Muk (Alolan Muk) - Spit Up - Egg
  (89, 8901, 255, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Muk (Alolan Muk) - Swallow - Egg
  (89, 8901, 256, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Muk (Alolan Muk) - Recycle - Egg
  (89, 8901, 278, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Muk (Alolan Muk) - Assurance - Egg
  (89, 8901, 372, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Muk (Alolan Muk) - Shadow Sneak - Egg
  (89, 8901, 425, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Muk (Alolan Muk) - Clear Smog - Egg
  (89, 8901, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Shellder - Tackle - Level 1
  (90, 9000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shellder - Water Gun - Level 1
  (90, 9000, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shellder - Withdraw - Level 4
  (90, 9000, 110, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Shellder - Ice Shard - Level 8
  (90, 9000, 420, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Shellder - Leer - Level 12
  (90, 9000, 43, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Shellder - Whirlpool - Level 16
  (90, 9000, 250, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Shellder - Supersonic - Level 20
  (90, 9000, 48, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Shellder - Aurora Beam - Level 24
  (90, 9000, 62, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Shellder - Protect - Level 28
  (90, 9000, 182, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Shellder - Razor Shell - Level 32
  (90, 9000, 534, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Shellder - Iron Defense - Level 36
  (90, 9000, 334, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Shellder - Ice Beam - Level 40
  (90, 9000, 58, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Shellder - Shell Smash - Level 44
  (90, 9000, 504, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Shellder - Hydro Pump - Level 48
  (90, 9000, 56, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Shellder - Take Down - TM001
  (90, 9000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Shellder - Protect - TM007
  (90, 9000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Shellder - Water Pulse - TM011
  (90, 9000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 17),
  -- Shellder - Chilling Water - TM022
  (90, 9000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 18),
  -- Shellder - Facade - TM025
  (90, 9000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Shellder - Swift - TM032
  (90, 9000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Shellder - Icy Wind - TM034
  (90, 9000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 21),
  -- Shellder - Mud Shot - TM035
  (90, 9000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 22),
  -- Shellder - Avalanche - TM046
  (90, 9000, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 23),
  -- Shellder - Endure - TM047
  (90, 9000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Shellder - Rain Dance - TM050
  (90, 9000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Shellder - Snowscape - TM052
  (90, 9000, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 26),
  -- Shellder - Sleep Talk - TM070
  (90, 9000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Shellder - Rock Blast - TM076
  (90, 9000, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 28),
  -- Shellder - Waterfall - TM077
  (90, 9000, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 29),
  -- Shellder - Rest - TM085
  (90, 9000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Shellder - Spikes - TM090
  (90, 9000, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 31),
  -- Shellder - Toxic Spikes - TM091
  (90, 9000, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 32),
  -- Shellder - Substitute - TM103
  (90, 9000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Shellder - Iron Defense - TM104
  (90, 9000, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 34),
  -- Shellder - Liquidation - TM110
  (90, 9000, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 35),
  -- Shellder - Surf - TM123
  (90, 9000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 36),
  -- Shellder - Ice Spinner - TM124
  (90, 9000, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 37),
  -- Shellder - Helping Hand - TM130
  (90, 9000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Shellder - Ice Beam - TM135
  (90, 9000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 39),
  -- Shellder - Hydro Pump - TM142
  (90, 9000, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 40),
  -- Shellder - Blizzard - TM143
  (90, 9000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 41),
  -- Shellder - Tera Blast - TM171
  (90, 9000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Shellder - Bubble Beam - Egg
  (90, 9000, 61, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shellder - Water Pulse - Egg
  (90, 9000, 352, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shellder - Aqua Ring - Egg
  (90, 9000, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shellder - Life Dew - Egg
  (90, 9000, 791, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cloyster - Tackle - Level 1
  (91, 9100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cloyster - Leer - Level 1
  (91, 9100, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cloyster - Supersonic - Level 1
  (91, 9100, 48, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cloyster - Water Gun - Level 1
  (91, 9100, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cloyster - Hydro Pump - Level 1
  (91, 9100, 56, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cloyster - Ice Beam - Level 1
  (91, 9100, 58, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Cloyster - Aurora Beam - Level 1
  (91, 9100, 62, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Cloyster - Withdraw - Level 1
  (91, 9100, 110, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Cloyster - Protect - Level 1
  (91, 9100, 182, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Cloyster - Spikes - Level 1
  (91, 9100, 191, 23, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Cloyster - Whirlpool - Level 1
  (91, 9100, 250, 23, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Cloyster - Iron Defense - Level 1
  (91, 9100, 334, 23, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Cloyster - Toxic Spikes - Level 1
  (91, 9100, 390, 23, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Cloyster - Ice Shard - Level 1
  (91, 9100, 420, 23, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Cloyster - Shell Smash - Level 1
  (91, 9100, 504, 23, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Cloyster - Icicle Crash - Level 1
  (91, 9100, 556, 23, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Cloyster - Razor Shell - Level 5
  (91, 9100, 534, 23, NULL, 1, 5, NULL, NULL, NULL, 17),
  -- Cloyster - Take Down - TM001
  (91, 9100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Cloyster - Scary Face - TM006
  (91, 9100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Cloyster - Protect - TM007
  (91, 9100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Cloyster - Water Pulse - TM011
  (91, 9100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 21),
  -- Cloyster - Chilling Water - TM022
  (91, 9100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Cloyster - Facade - TM025
  (91, 9100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Cloyster - Swift - TM032
  (91, 9100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Cloyster - Icy Wind - TM034
  (91, 9100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Cloyster - Mud Shot - TM035
  (91, 9100, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 26),
  -- Cloyster - Avalanche - TM046
  (91, 9100, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 27),
  -- Cloyster - Endure - TM047
  (91, 9100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Cloyster - Rain Dance - TM050
  (91, 9100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Cloyster - Snowscape - TM052
  (91, 9100, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 30),
  -- Cloyster - Smart Strike - TM053
  (91, 9100, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 31),
  -- Cloyster - Body Slam - TM066
  (91, 9100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Cloyster - Sleep Talk - TM070
  (91, 9100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Cloyster - Light Screen - TM075
  (91, 9100, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 34),
  -- Cloyster - Rock Blast - TM076
  (91, 9100, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 35),
  -- Cloyster - Waterfall - TM077
  (91, 9100, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 36),
  -- Cloyster - Poison Jab - TM083
  (91, 9100, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 37),
  -- Cloyster - Rest - TM085
  (91, 9100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Cloyster - Spikes - TM090
  (91, 9100, 191, 23, NULL, 2, NULL, NULL, 23002090, NULL, 39),
  -- Cloyster - Toxic Spikes - TM091
  (91, 9100, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 40),
  -- Cloyster - Substitute - TM103
  (91, 9100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Cloyster - Iron Defense - TM104
  (91, 9100, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 42),
  -- Cloyster - Drill Run - TM106
  (91, 9100, 529, 23, NULL, 2, NULL, NULL, 23002106, NULL, 43),
  -- Cloyster - Liquidation - TM110
  (91, 9100, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 44),
  -- Cloyster - Surf - TM123
  (91, 9100, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 45),
  -- Cloyster - Ice Spinner - TM124
  (91, 9100, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 46),
  -- Cloyster - Helping Hand - TM130
  (91, 9100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Cloyster - Ice Beam - TM135
  (91, 9100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 48),
  -- Cloyster - Hydro Pump - TM142
  (91, 9100, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 49),
  -- Cloyster - Blizzard - TM143
  (91, 9100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 50),
  -- Cloyster - Giga Impact - TM152
  (91, 9100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 51),
  -- Cloyster - Hyper Beam - TM163
  (91, 9100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 52),
  -- Cloyster - Tera Blast - TM171
  (91, 9100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Cloyster - Bubble Beam - Egg
  (91, 9100, 61, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Cloyster - Water Pulse - Egg
  (91, 9100, 352, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cloyster - Aqua Ring - Egg
  (91, 9100, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Cloyster - Life Dew - Egg
  (91, 9100, 791, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Cloyster - Icicle Spear - Evolution
  (91, 9100, 333, 23, NULL, 7, NULL, NULL, NULL, NULL, 58),
  -- Gastly - Confuse Ray - Level 1
  (92, 9200, 109, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastly - Lick - Level 1
  (92, 9200, 122, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gastly - Hypnosis - Level 4
  (92, 9200, 95, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Gastly - Mean Look - Level 8
  (92, 9200, 212, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Gastly - Payback - Level 12
  (92, 9200, 371, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gastly - Spite - Level 16
  (92, 9200, 180, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gastly - Curse - Level 20
  (92, 9200, 174, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Gastly - Hex - Level 24
  (92, 9200, 506, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Gastly - Night Shade - Level 28
  (92, 9200, 101, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Gastly - Sucker Punch - Level 32
  (92, 9200, 389, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Gastly - Dark Pulse - Level 36
  (92, 9200, 399, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Gastly - Shadow Ball - Level 40
  (92, 9200, 247, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Gastly - Destiny Bond - Level 44
  (92, 9200, 194, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Gastly - Dream Eater - Level 48
  (92, 9200, 138, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Gastly - Scary Face - TM006
  (92, 9200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Gastly - Protect - TM007
  (92, 9200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Gastly - Acid Spray - TM013
  (92, 9200, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 17),
  -- Gastly - Confuse Ray - TM017
  (92, 9200, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 18),
  -- Gastly - Thief - TM018
  (92, 9200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Gastly - Facade - TM025
  (92, 9200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Gastly - Hex - TM029
  (92, 9200, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 21),
  -- Gastly - Icy Wind - TM034
  (92, 9200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 22),
  -- Gastly - Night Shade - TM042
  (92, 9200, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 23),
  -- Gastly - Venoshock - TM045
  (92, 9200, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 24),
  -- Gastly - Endure - TM047
  (92, 9200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Gastly - Sunny Day - TM049
  (92, 9200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Gastly - Rain Dance - TM050
  (92, 9200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Gastly - Foul Play - TM062
  (92, 9200, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 28),
  -- Gastly - Fire Punch - TM067
  (92, 9200, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 29),
  -- Gastly - Thunder Punch - TM068
  (92, 9200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 30),
  -- Gastly - Ice Punch - TM069
  (92, 9200, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 31),
  -- Gastly - Sleep Talk - TM070
  (92, 9200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Gastly - Dazzling Gleam - TM079
  (92, 9200, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 33),
  -- Gastly - Poison Jab - TM083
  (92, 9200, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 34),
  -- Gastly - Rest - TM085
  (92, 9200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Gastly - Taunt - TM087
  (92, 9200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 36),
  -- Gastly - Imprison - TM092
  (92, 9200, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 37),
  -- Gastly - Dark Pulse - TM094
  (92, 9200, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 38),
  -- Gastly - Skill Swap - TM098
  (92, 9200, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 39),
  -- Gastly - Gunk Shot - TM102
  (92, 9200, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 40),
  -- Gastly - Substitute - TM103
  (92, 9200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Gastly - Will-O-Wisp - TM107
  (92, 9200, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 42),
  -- Gastly - Trick - TM109
  (92, 9200, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 43),
  -- Gastly - Giga Drain - TM111
  (92, 9200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 44),
  -- Gastly - Shadow Ball - TM114
  (92, 9200, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Gastly - Energy Ball - TM119
  (92, 9200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 46),
  -- Gastly - Psychic - TM120
  (92, 9200, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 47),
  -- Gastly - Thunderbolt - TM126
  (92, 9200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 48),
  -- Gastly - Nasty Plot - TM140
  (92, 9200, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 49),
  -- Gastly - Sludge Bomb - TM148
  (92, 9200, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 50),
  -- Gastly - Trick Room - TM161
  (92, 9200, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 51),
  -- Gastly - Thunder - TM166
  (92, 9200, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 52),
  -- Gastly - Tera Blast - TM171
  (92, 9200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 53),
  -- Gastly - Disable - Egg
  (92, 9200, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gastly - Toxic - Egg
  (92, 9200, 92, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Gastly - Haze - Egg
  (92, 9200, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gastly - Smog - Egg
  (92, 9200, 123, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gastly - Perish Song - Egg
  (92, 9200, 195, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gastly - Astonish - Egg
  (92, 9200, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Gastly - Clear Smog - Egg
  (92, 9200, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gastly - Reflect Type - Egg
  (92, 9200, 513, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Haunter - Hypnosis - Level 1
  (93, 9300, 95, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Haunter - Confuse Ray - Level 1
  (93, 9300, 109, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Haunter - Lick - Level 1
  (93, 9300, 122, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Haunter - Mean Look - Level 1
  (93, 9300, 212, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Haunter - Payback - Level 12
  (93, 9300, 371, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Haunter - Spite - Level 16
  (93, 9300, 180, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Haunter - Curse - Level 20
  (93, 9300, 174, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Haunter - Hex - Level 24
  (93, 9300, 506, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Haunter - Night Shade - Level 30
  (93, 9300, 101, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Haunter - Sucker Punch - Level 36
  (93, 9300, 389, 23, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Haunter - Dark Pulse - Level 42
  (93, 9300, 399, 23, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Haunter - Shadow Ball - Level 48
  (93, 9300, 247, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Haunter - Destiny Bond - Level 54
  (93, 9300, 194, 23, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Haunter - Dream Eater - Level 60
  (93, 9300, 138, 23, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Haunter - Scary Face - TM006
  (93, 9300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Haunter - Protect - TM007
  (93, 9300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Haunter - Acid Spray - TM013
  (93, 9300, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 17),
  -- Haunter - Confuse Ray - TM017
  (93, 9300, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 18),
  -- Haunter - Thief - TM018
  (93, 9300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Haunter - Facade - TM025
  (93, 9300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Haunter - Hex - TM029
  (93, 9300, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 21),
  -- Haunter - Icy Wind - TM034
  (93, 9300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 22),
  -- Haunter - Night Shade - TM042
  (93, 9300, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 23),
  -- Haunter - Fling - TM043
  (93, 9300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 24),
  -- Haunter - Venoshock - TM045
  (93, 9300, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 25),
  -- Haunter - Endure - TM047
  (93, 9300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Haunter - Sunny Day - TM049
  (93, 9300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Haunter - Rain Dance - TM050
  (93, 9300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Haunter - Shadow Claw - TM061
  (93, 9300, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 29),
  -- Haunter - Foul Play - TM062
  (93, 9300, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 30),
  -- Haunter - Fire Punch - TM067
  (93, 9300, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 31),
  -- Haunter - Thunder Punch - TM068
  (93, 9300, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 32),
  -- Haunter - Ice Punch - TM069
  (93, 9300, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 33),
  -- Haunter - Sleep Talk - TM070
  (93, 9300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Haunter - Dazzling Gleam - TM079
  (93, 9300, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 35),
  -- Haunter - Metronome - TM080
  (93, 9300, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 36),
  -- Haunter - Poison Jab - TM083
  (93, 9300, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 37),
  -- Haunter - Rest - TM085
  (93, 9300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 38),
  -- Haunter - Taunt - TM087
  (93, 9300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Haunter - Toxic Spikes - TM091
  (93, 9300, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 40),
  -- Haunter - Imprison - TM092
  (93, 9300, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 41),
  -- Haunter - Dark Pulse - TM094
  (93, 9300, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 42),
  -- Haunter - Skill Swap - TM098
  (93, 9300, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 43),
  -- Haunter - Gunk Shot - TM102
  (93, 9300, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 44),
  -- Haunter - Substitute - TM103
  (93, 9300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Haunter - Will-O-Wisp - TM107
  (93, 9300, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 46),
  -- Haunter - Trick - TM109
  (93, 9300, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 47),
  -- Haunter - Giga Drain - TM111
  (93, 9300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 48),
  -- Haunter - Shadow Ball - TM114
  (93, 9300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 49),
  -- Haunter - Energy Ball - TM119
  (93, 9300, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 50),
  -- Haunter - Psychic - TM120
  (93, 9300, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 51),
  -- Haunter - Encore - TM122
  (93, 9300, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 52),
  -- Haunter - Thunderbolt - TM126
  (93, 9300, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 53),
  -- Haunter - Nasty Plot - TM140
  (93, 9300, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 54),
  -- Haunter - Sludge Bomb - TM148
  (93, 9300, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 55),
  -- Haunter - Phantom Force - TM151
  (93, 9300, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 56),
  -- Haunter - Focus Blast - TM158
  (93, 9300, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 57),
  -- Haunter - Trick Room - TM161
  (93, 9300, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 58),
  -- Haunter - Thunder - TM166
  (93, 9300, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 59),
  -- Haunter - Tera Blast - TM171
  (93, 9300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 60),
  -- Haunter - Disable - Egg
  (93, 9300, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Haunter - Toxic - Egg
  (93, 9300, 92, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Haunter - Haze - Egg
  (93, 9300, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Haunter - Smog - Egg
  (93, 9300, 123, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Haunter - Perish Song - Egg
  (93, 9300, 195, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Haunter - Astonish - Egg
  (93, 9300, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Haunter - Clear Smog - Egg
  (93, 9300, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Haunter - Reflect Type - Egg
  (93, 9300, 513, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Haunter - Shadow Punch - Evolution
  (93, 9300, 325, 23, NULL, 7, NULL, NULL, NULL, NULL, 69),
  -- Gengar - Hypnosis - Level 1
  (94, 9400, 95, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gengar - Confuse Ray - Level 1
  (94, 9400, 109, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gengar - Lick - Level 1
  (94, 9400, 122, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gengar - Perish Song - Level 1
  (94, 9400, 195, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gengar - Mean Look - Level 1
  (94, 9400, 212, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gengar - Shadow Punch - Level 1
  (94, 9400, 325, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gengar - Reflect Type - Level 1
  (94, 9400, 513, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Gengar - Payback - Level 12
  (94, 9400, 371, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Gengar - Spite - Level 16
  (94, 9400, 180, 23, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gengar - Curse - Level 20
  (94, 9400, 174, 23, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Gengar - Hex - Level 24
  (94, 9400, 506, 23, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Gengar - Night Shade - Level 30
  (94, 9400, 101, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Gengar - Sucker Punch - Level 36
  (94, 9400, 389, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Gengar - Dark Pulse - Level 42
  (94, 9400, 399, 23, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Gengar - Shadow Ball - Level 48
  (94, 9400, 247, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Gengar - Destiny Bond - Level 54
  (94, 9400, 194, 23, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Gengar - Dream Eater - Level 60
  (94, 9400, 138, 23, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Gengar - Scary Face - TM006
  (94, 9400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Gengar - Protect - TM007
  (94, 9400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Gengar - Acid Spray - TM013
  (94, 9400, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 20),
  -- Gengar - Confuse Ray - TM017
  (94, 9400, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 21),
  -- Gengar - Thief - TM018
  (94, 9400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Gengar - Facade - TM025
  (94, 9400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Gengar - Hex - TM029
  (94, 9400, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 24),
  -- Gengar - Icy Wind - TM034
  (94, 9400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Gengar - Night Shade - TM042
  (94, 9400, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 26),
  -- Gengar - Fling - TM043
  (94, 9400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Gengar - Venoshock - TM045
  (94, 9400, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 28),
  -- Gengar - Endure - TM047
  (94, 9400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Gengar - Sunny Day - TM049
  (94, 9400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Gengar - Rain Dance - TM050
  (94, 9400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Gengar - Brick Break - TM058
  (94, 9400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Gengar - Shadow Claw - TM061
  (94, 9400, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 33),
  -- Gengar - Foul Play - TM062
  (94, 9400, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 34),
  -- Gengar - Body Slam - TM066
  (94, 9400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Gengar - Fire Punch - TM067
  (94, 9400, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 36),
  -- Gengar - Thunder Punch - TM068
  (94, 9400, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 37),
  -- Gengar - Ice Punch - TM069
  (94, 9400, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 38),
  -- Gengar - Sleep Talk - TM070
  (94, 9400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Gengar - Drain Punch - TM073
  (94, 9400, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 40),
  -- Gengar - Dazzling Gleam - TM079
  (94, 9400, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 41),
  -- Gengar - Metronome - TM080
  (94, 9400, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 42),
  -- Gengar - Thunder Wave - TM082
  (94, 9400, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 43),
  -- Gengar - Poison Jab - TM083
  (94, 9400, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 44),
  -- Gengar - Rest - TM085
  (94, 9400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 45),
  -- Gengar - Taunt - TM087
  (94, 9400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 46),
  -- Gengar - Toxic Spikes - TM091
  (94, 9400, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 47),
  -- Gengar - Imprison - TM092
  (94, 9400, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 48),
  -- Gengar - Dark Pulse - TM094
  (94, 9400, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 49),
  -- Gengar - Skill Swap - TM098
  (94, 9400, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 50),
  -- Gengar - Gunk Shot - TM102
  (94, 9400, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 51),
  -- Gengar - Substitute - TM103
  (94, 9400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 52),
  -- Gengar - Will-O-Wisp - TM107
  (94, 9400, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 53),
  -- Gengar - Trick - TM109
  (94, 9400, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 54),
  -- Gengar - Giga Drain - TM111
  (94, 9400, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 55),
  -- Gengar - Shadow Ball - TM114
  (94, 9400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 56),
  -- Gengar - Energy Ball - TM119
  (94, 9400, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 57),
  -- Gengar - Psychic - TM120
  (94, 9400, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 58),
  -- Gengar - Encore - TM122
  (94, 9400, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 59),
  -- Gengar - Thunderbolt - TM126
  (94, 9400, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 60),
  -- Gengar - Nasty Plot - TM140
  (94, 9400, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 61),
  -- Gengar - Sludge Bomb - TM148
  (94, 9400, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 62),
  -- Gengar - Phantom Force - TM151
  (94, 9400, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 63),
  -- Gengar - Giga Impact - TM152
  (94, 9400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 64),
  -- Gengar - Focus Blast - TM158
  (94, 9400, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 65),
  -- Gengar - Trick Room - TM161
  (94, 9400, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 66),
  -- Gengar - Hyper Beam - TM163
  (94, 9400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 67),
  -- Gengar - Thunder - TM166
  (94, 9400, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 68),
  -- Gengar - Tera Blast - TM171
  (94, 9400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 69),
  -- Gengar - Disable - Egg
  (94, 9400, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Gengar - Toxic - Egg
  (94, 9400, 92, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Gengar - Haze - Egg
  (94, 9400, 114, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Gengar - Smog - Egg
  (94, 9400, 123, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Gengar - Perish Song - Egg
  (94, 9400, 195, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Gengar - Astonish - Egg
  (94, 9400, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Gengar - Clear Smog - Egg
  (94, 9400, 499, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Gengar - Reflect Type - Egg
  (94, 9400, 513, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Drowzee - Pound - Level 1
  (96, 9600, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drowzee - Hypnosis - Level 1
  (96, 9600, 95, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drowzee - Disable - Level 5
  (96, 9600, 50, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Drowzee - Confusion - Level 9
  (96, 9600, 93, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Drowzee - Headbutt - Level 13
  (96, 9600, 29, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Drowzee - Poison Gas - Level 17
  (96, 9600, 139, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Drowzee - Psybeam - Level 21
  (96, 9600, 60, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Drowzee - Psych Up - Level 25
  (96, 9600, 244, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Drowzee - Zen Headbutt - Level 29
  (96, 9600, 428, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Drowzee - Swagger - Level 33
  (96, 9600, 207, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Drowzee - Psychic - Level 37
  (96, 9600, 94, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Drowzee - Nasty Plot - Level 41
  (96, 9600, 417, 23, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Drowzee - Psyshock - Level 45
  (96, 9600, 473, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Drowzee - Future Sight - Level 49
  (96, 9600, 248, 23, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Drowzee - Take Down - TM001
  (96, 9600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Drowzee - Protect - TM007
  (96, 9600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Drowzee - Low Kick - TM012
  (96, 9600, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 17),
  -- Drowzee - Psybeam - TM016
  (96, 9600, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 18),
  -- Drowzee - Thief - TM018
  (96, 9600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Drowzee - Trailblaze - TM020
  (96, 9600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Drowzee - Facade - TM025
  (96, 9600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Drowzee - Swift - TM032
  (96, 9600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Drowzee - Draining Kiss - TM037
  (96, 9600, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 23),
  -- Drowzee - Low Sweep - TM039
  (96, 9600, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 24),
  -- Drowzee - Stored Power - TM041
  (96, 9600, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 25),
  -- Drowzee - Night Shade - TM042
  (96, 9600, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 26),
  -- Drowzee - Fling - TM043
  (96, 9600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Drowzee - Endure - TM047
  (96, 9600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Drowzee - Sunny Day - TM049
  (96, 9600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Drowzee - Rain Dance - TM050
  (96, 9600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Drowzee - Psyshock - TM054
  (96, 9600, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 31),
  -- Drowzee - Brick Break - TM058
  (96, 9600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Drowzee - Zen Headbutt - TM059
  (96, 9600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 33),
  -- Drowzee - Foul Play - TM062
  (96, 9600, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 34),
  -- Drowzee - Body Slam - TM066
  (96, 9600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Drowzee - Fire Punch - TM067
  (96, 9600, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 36),
  -- Drowzee - Thunder Punch - TM068
  (96, 9600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 37),
  -- Drowzee - Ice Punch - TM069
  (96, 9600, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 38),
  -- Drowzee - Sleep Talk - TM070
  (96, 9600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Drowzee - Drain Punch - TM073
  (96, 9600, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 40),
  -- Drowzee - Reflect - TM074
  (96, 9600, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 41),
  -- Drowzee - Light Screen - TM075
  (96, 9600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 42),
  -- Drowzee - Dazzling Gleam - TM079
  (96, 9600, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 43),
  -- Drowzee - Metronome - TM080
  (96, 9600, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 44),
  -- Drowzee - Grass Knot - TM081
  (96, 9600, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 45),
  -- Drowzee - Thunder Wave - TM082
  (96, 9600, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 46),
  -- Drowzee - Rest - TM085
  (96, 9600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 47),
  -- Drowzee - Taunt - TM087
  (96, 9600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Drowzee - Imprison - TM092
  (96, 9600, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 49),
  -- Drowzee - Skill Swap - TM098
  (96, 9600, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 50),
  -- Drowzee - Substitute - TM103
  (96, 9600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 51),
  -- Drowzee - Trick - TM109
  (96, 9600, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 52),
  -- Drowzee - Shadow Ball - TM114
  (96, 9600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 53),
  -- Drowzee - Psychic - TM120
  (96, 9600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 54),
  -- Drowzee - Encore - TM122
  (96, 9600, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 55),
  -- Drowzee - Calm Mind - TM129
  (96, 9600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 56),
  -- Drowzee - Helping Hand - TM130
  (96, 9600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 57),
  -- Drowzee - Psychic Terrain - TM138
  (96, 9600, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 58),
  -- Drowzee - Nasty Plot - TM140
  (96, 9600, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 59),
  -- Drowzee - Focus Blast - TM158
  (96, 9600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 60),
  -- Drowzee - Trick Room - TM161
  (96, 9600, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 61),
  -- Drowzee - Tera Blast - TM171
  (96, 9600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Drowzee - Fire Punch - Egg
  (96, 9600, 7, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Drowzee - Ice Punch - Egg
  (96, 9600, 8, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Drowzee - Thunder Punch - Egg
  (96, 9600, 9, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Drowzee - Flatter - Egg
  (96, 9600, 260, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Drowzee - Role Play - Egg
  (96, 9600, 272, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Drowzee - Guard Swap - Egg
  (96, 9600, 385, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Drowzee - Psycho Cut - Egg
  (96, 9600, 427, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Drowzee - Power Split - Egg
  (96, 9600, 471, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Hypno - Pound - Level 1
  (97, 9700, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hypno - Disable - Level 1
  (97, 9700, 50, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hypno - Confusion - Level 1
  (97, 9700, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hypno - Hypnosis - Level 1
  (97, 9700, 95, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hypno - Switcheroo - Level 1
  (97, 9700, 415, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hypno - Headbutt - Level 13
  (97, 9700, 29, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Hypno - Poison Gas - Level 17
  (97, 9700, 139, 23, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Hypno - Psybeam - Level 21
  (97, 9700, 60, 23, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Hypno - Psych Up - Level 25
  (97, 9700, 244, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Hypno - Zen Headbutt - Level 32
  (97, 9700, 428, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Hypno - Swagger - Level 37
  (97, 9700, 207, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Hypno - Psychic - Level 42
  (97, 9700, 94, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Hypno - Nasty Plot - Level 47
  (97, 9700, 417, 23, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Hypno - Psyshock - Level 51
  (97, 9700, 473, 23, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Hypno - Future Sight - Level 56
  (97, 9700, 248, 23, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Hypno - Take Down - TM001
  (97, 9700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Hypno - Scary Face - TM006
  (97, 9700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Hypno - Protect - TM007
  (97, 9700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Hypno - Low Kick - TM012
  (97, 9700, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Hypno - Psybeam - TM016
  (97, 9700, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 20),
  -- Hypno - Confuse Ray - TM017
  (97, 9700, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 21),
  -- Hypno - Thief - TM018
  (97, 9700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Hypno - Trailblaze - TM020
  (97, 9700, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Hypno - Facade - TM025
  (97, 9700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Hypno - Hex - TM029
  (97, 9700, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 25),
  -- Hypno - Swift - TM032
  (97, 9700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Hypno - Draining Kiss - TM037
  (97, 9700, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 27),
  -- Hypno - Low Sweep - TM039
  (97, 9700, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 28),
  -- Hypno - Stored Power - TM041
  (97, 9700, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 29),
  -- Hypno - Night Shade - TM042
  (97, 9700, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 30),
  -- Hypno - Fling - TM043
  (97, 9700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Hypno - Endure - TM047
  (97, 9700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Hypno - Sunny Day - TM049
  (97, 9700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Hypno - Rain Dance - TM050
  (97, 9700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Hypno - Psyshock - TM054
  (97, 9700, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 35),
  -- Hypno - Brick Break - TM058
  (97, 9700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Hypno - Zen Headbutt - TM059
  (97, 9700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 37),
  -- Hypno - Foul Play - TM062
  (97, 9700, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 38),
  -- Hypno - Body Slam - TM066
  (97, 9700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Hypno - Fire Punch - TM067
  (97, 9700, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 40),
  -- Hypno - Thunder Punch - TM068
  (97, 9700, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 41),
  -- Hypno - Ice Punch - TM069
  (97, 9700, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 42),
  -- Hypno - Sleep Talk - TM070
  (97, 9700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Hypno - Drain Punch - TM073
  (97, 9700, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 44),
  -- Hypno - Reflect - TM074
  (97, 9700, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 45),
  -- Hypno - Light Screen - TM075
  (97, 9700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 46),
  -- Hypno - Dazzling Gleam - TM079
  (97, 9700, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 47),
  -- Hypno - Metronome - TM080
  (97, 9700, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 48),
  -- Hypno - Grass Knot - TM081
  (97, 9700, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 49),
  -- Hypno - Thunder Wave - TM082
  (97, 9700, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 50),
  -- Hypno - Rest - TM085
  (97, 9700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 51),
  -- Hypno - Taunt - TM087
  (97, 9700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 52),
  -- Hypno - Body Press - TM089
  (97, 9700, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 53),
  -- Hypno - Imprison - TM092
  (97, 9700, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 54),
  -- Hypno - Skill Swap - TM098
  (97, 9700, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 55),
  -- Hypno - Substitute - TM103
  (97, 9700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 56),
  -- Hypno - Trick - TM109
  (97, 9700, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 57),
  -- Hypno - Shadow Ball - TM114
  (97, 9700, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 58),
  -- Hypno - Psychic - TM120
  (97, 9700, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 59),
  -- Hypno - Encore - TM122
  (97, 9700, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 60),
  -- Hypno - Calm Mind - TM129
  (97, 9700, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 61),
  -- Hypno - Helping Hand - TM130
  (97, 9700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 62),
  -- Hypno - Baton Pass - TM132
  (97, 9700, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 63),
  -- Hypno - Psychic Terrain - TM138
  (97, 9700, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 64),
  -- Hypno - Nasty Plot - TM140
  (97, 9700, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 65),
  -- Hypno - Giga Impact - TM152
  (97, 9700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 66),
  -- Hypno - Focus Blast - TM158
  (97, 9700, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 67),
  -- Hypno - Trick Room - TM161
  (97, 9700, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 68),
  -- Hypno - Hyper Beam - TM163
  (97, 9700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 69),
  -- Hypno - Tera Blast - TM171
  (97, 9700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 70),
  -- Hypno - Fire Punch - Egg
  (97, 9700, 7, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Hypno - Ice Punch - Egg
  (97, 9700, 8, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Hypno - Thunder Punch - Egg
  (97, 9700, 9, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Hypno - Flatter - Egg
  (97, 9700, 260, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Hypno - Role Play - Egg
  (97, 9700, 272, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Hypno - Guard Swap - Egg
  (97, 9700, 385, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Hypno - Psycho Cut - Egg
  (97, 9700, 427, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Hypno - Power Split - Egg
  (97, 9700, 471, 23, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Voltorb - Tackle - Level 1
  (100, 10000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Voltorb - Charge - Level 1
  (100, 10000, 268, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Voltorb - Thunder Shock - Level 4
  (100, 10000, 84, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Voltorb - Eerie Impulse - Level 6
  (100, 10000, 598, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Voltorb - Spark - Level 9
  (100, 10000, 209, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Voltorb - Rollout - Level 11
  (100, 10000, 205, 23, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Voltorb - Screech - Level 13
  (100, 10000, 103, 23, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Voltorb - Charge Beam - Level 16
  (100, 10000, 451, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Voltorb - Swift - Level 20
  (100, 10000, 129, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Voltorb - Electro Ball - Level 22
  (100, 10000, 486, 23, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Voltorb - Self-Destruct - Level 26
  (100, 10000, 120, 23, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Voltorb - Light Screen - Level 29
  (100, 10000, 113, 23, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Voltorb - Magnet Rise - Level 34
  (100, 10000, 393, 23, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Voltorb - Discharge - Level 37
  (100, 10000, 435, 23, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Voltorb - Explosion - Level 41
  (100, 10000, 153, 23, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Voltorb - Gyro Ball - Level 46
  (100, 10000, 360, 23, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Voltorb - Mirror Coat - Level 50
  (100, 10000, 243, 23, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Voltorb - Take Down - TM001
  (100, 10000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Voltorb - Agility - TM004
  (100, 10000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Voltorb - Protect - TM007
  (100, 10000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Voltorb - Thief - TM018
  (100, 10000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Voltorb - Charge Beam - TM023
  (100, 10000, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 22),
  -- Voltorb - Facade - TM025
  (100, 10000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Voltorb - Swift - TM032
  (100, 10000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Voltorb - Endure - TM047
  (100, 10000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Voltorb - Volt Switch - TM048
  (100, 10000, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 26),
  -- Voltorb - Rain Dance - TM050
  (100, 10000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Voltorb - Foul Play - TM062
  (100, 10000, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 28),
  -- Voltorb - Sleep Talk - TM070
  (100, 10000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Voltorb - Electro Ball - TM072
  (100, 10000, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 30),
  -- Voltorb - Light Screen - TM075
  (100, 10000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 31),
  -- Voltorb - Thunder Wave - TM082
  (100, 10000, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 32),
  -- Voltorb - Rest - TM085
  (100, 10000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Voltorb - Taunt - TM087
  (100, 10000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 34),
  -- Voltorb - Eerie Impulse - TM096
  (100, 10000, 598, 23, NULL, 2, NULL, NULL, 23002096, NULL, 35),
  -- Voltorb - Substitute - TM103
  (100, 10000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 36),
  -- Voltorb - Thunderbolt - TM126
  (100, 10000, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 37),
  -- Voltorb - Helping Hand - TM130
  (100, 10000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Voltorb - Electric Terrain - TM136
  (100, 10000, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 39),
  -- Voltorb - Wild Charge - TM147
  (100, 10000, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 40),
  -- Voltorb - Thunder - TM166
  (100, 10000, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 41),
  -- Voltorb - Tera Blast - TM171
  (100, 10000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Voltorb - Recycle - Egg
  (100, 10000, 278, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Voltorb - Metal Sound - Egg
  (100, 10000, 319, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Voltorb (Hisuian Voltorb) - Tackle - Level 1
  (100, 10001, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Voltorb (Hisuian Voltorb) - Charge - Level 1
  (100, 10001, 268, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Voltorb (Hisuian Voltorb) - Thunder Shock - Level 4
  (100, 10001, 84, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Voltorb (Hisuian Voltorb) - Stun Spore - Level 6
  (100, 10001, 78, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Voltorb (Hisuian Voltorb) - Bullet Seed - Level 9
  (100, 10001, 331, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Voltorb (Hisuian Voltorb) - Rollout - Level 11
  (100, 10001, 205, 23, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Voltorb (Hisuian Voltorb) - Screech - Level 13
  (100, 10001, 103, 23, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Voltorb (Hisuian Voltorb) - Charge Beam - Level 16
  (100, 10001, 451, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Voltorb (Hisuian Voltorb) - Swift - Level 20
  (100, 10001, 129, 23, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Voltorb (Hisuian Voltorb) - Electro Ball - Level 22
  (100, 10001, 486, 23, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Voltorb (Hisuian Voltorb) - Self-Destruct - Level 26
  (100, 10001, 120, 23, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Voltorb (Hisuian Voltorb) - Energy Ball - Level 29
  (100, 10001, 412, 23, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Voltorb (Hisuian Voltorb) - Seed Bomb - Level 34
  (100, 10001, 402, 23, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Voltorb (Hisuian Voltorb) - Discharge - Level 34
  (100, 10001, 435, 23, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Voltorb (Hisuian Voltorb) - Explosion - Level 41
  (100, 10001, 153, 23, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Voltorb (Hisuian Voltorb) - Gyro Ball - Level 46
  (100, 10001, 360, 23, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Voltorb (Hisuian Voltorb) - Grassy Terrain - Level 50
  (100, 10001, 580, 23, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Voltorb (Hisuian Voltorb) - Take Down - TM001
  (100, 10001, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Voltorb (Hisuian Voltorb) - Agility - TM004
  (100, 10001, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 19),
  -- Voltorb (Hisuian Voltorb) - Protect - TM007
  (100, 10001, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Voltorb (Hisuian Voltorb) - Thief - TM018
  (100, 10001, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Voltorb (Hisuian Voltorb) - Charge Beam - TM023
  (100, 10001, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 22),
  -- Voltorb (Hisuian Voltorb) - Facade - TM025
  (100, 10001, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Voltorb (Hisuian Voltorb) - Swift - TM032
  (100, 10001, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Voltorb (Hisuian Voltorb) - Endure - TM047
  (100, 10001, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Voltorb (Hisuian Voltorb) - Volt Switch - TM048
  (100, 10001, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 26),
  -- Voltorb (Hisuian Voltorb) - Rain Dance - TM050
  (100, 10001, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Voltorb (Hisuian Voltorb) - Bullet Seed - TM056
  (100, 10001, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 28),
  -- Voltorb (Hisuian Voltorb) - Foul Play - TM062
  (100, 10001, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 29),
  -- Voltorb (Hisuian Voltorb) - Sleep Talk - TM070
  (100, 10001, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Voltorb (Hisuian Voltorb) - Seed Bomb - TM071
  (100, 10001, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 31),
  -- Voltorb (Hisuian Voltorb) - Electro Ball - TM072
  (100, 10001, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 32),
  -- Voltorb (Hisuian Voltorb) - Reflect - TM074
  (100, 10001, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 33),
  -- Voltorb (Hisuian Voltorb) - Grass Knot - TM081
  (100, 10001, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 34),
  -- Voltorb (Hisuian Voltorb) - Thunder Wave - TM082
  (100, 10001, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 35),
  -- Voltorb (Hisuian Voltorb) - Rest - TM085
  (100, 10001, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Voltorb (Hisuian Voltorb) - Taunt - TM087
  (100, 10001, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Voltorb (Hisuian Voltorb) - Substitute - TM103
  (100, 10001, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Voltorb (Hisuian Voltorb) - Giga Drain - TM111
  (100, 10001, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 39),
  -- Voltorb (Hisuian Voltorb) - Energy Ball - TM119
  (100, 10001, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 40),
  -- Voltorb (Hisuian Voltorb) - Thunderbolt - TM126
  (100, 10001, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 41),
  -- Voltorb (Hisuian Voltorb) - Electric Terrain - TM136
  (100, 10001, 604, 23, NULL, 2, NULL, NULL, 23002136, NULL, 42),
  -- Voltorb (Hisuian Voltorb) - Grassy Terrain - TM137
  (100, 10001, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 43),
  -- Voltorb (Hisuian Voltorb) - Wild Charge - TM147
  (100, 10001, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 44),
  -- Voltorb (Hisuian Voltorb) - Leaf Storm - TM159
  (100, 10001, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 45),
  -- Voltorb (Hisuian Voltorb) - Thunder - TM166
  (100, 10001, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 46),
  -- Voltorb (Hisuian Voltorb) - Solar Beam - TM168
  (100, 10001, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 47),
  -- Voltorb (Hisuian Voltorb) - Tera Blast - TM171
  (100, 10001, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Voltorb (Hisuian Voltorb) - Leech Seed - Egg
  (100, 10001, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Voltorb (Hisuian Voltorb) - Recycle - Egg
  (100, 10001, 278, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Voltorb (Hisuian Voltorb) - Worry Seed - Egg
  (100, 10001, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 51);
