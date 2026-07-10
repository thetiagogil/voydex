-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation II Pokémon learnset raw pages, using Gold /
-- Silver level columns, TM/HM compatibility rows, and egg move rows.
-- Cross-check: Serebii Gen II Pokedex learnset pages and PokemonDB Generation
-- 2 Gold / Silver learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Gold / Silver
-- Pokémon: #051-#100
-- Rows: 1804
-- Scope: level-up, TM, HM, and egg move acquisition rows. Crystal-only,
-- tutor, event, transfer, impossible breeding, and prior-evolution sections
-- are intentionally excluded from this Gold / Silver seed.
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
)
VALUES
  -- Dugtrio - Scratch - Level 1
  (51, 5100, 10, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dugtrio - Growl - Level 1
  (51, 5100, 45, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dugtrio - Magnitude - Level 1
  (51, 5100, 222, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dugtrio - Growl - Level 5
  (51, 5100, 45, 3, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Dugtrio - Magnitude - Level 9
  (51, 5100, 222, 3, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Dugtrio - Dig - Level 17
  (51, 5100, 91, 3, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Dugtrio - Sand Attack - Level 25
  (51, 5100, 28, 3, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Dugtrio - Slash - Level 37
  (51, 5100, 163, 3, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Dugtrio - Earthquake - Level 49
  (51, 5100, 89, 3, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Dugtrio - Fissure - Level 61
  (51, 5100, 90, 3, NULL, 1, 61, NULL, NULL, NULL, 10),
  -- Dugtrio - Curse - TM03
  (51, 5100, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Dugtrio - Toxic - TM06
  (51, 5100, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Dugtrio - Rock Smash - TM08
  (51, 5100, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 13),
  -- Dugtrio - Hidden Power - TM10
  (51, 5100, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Dugtrio - Sunny Day - TM11
  (51, 5100, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 15),
  -- Dugtrio - Snore - TM13
  (51, 5100, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Dugtrio - Hyper Beam - TM15
  (51, 5100, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 17),
  -- Dugtrio - Protect - TM17
  (51, 5100, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 18),
  -- Dugtrio - Endure - TM20
  (51, 5100, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 19),
  -- Dugtrio - Frustration - TM21
  (51, 5100, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 20),
  -- Dugtrio - Earthquake - TM26
  (51, 5100, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 21),
  -- Dugtrio - Return - TM27
  (51, 5100, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 22),
  -- Dugtrio - Dig - TM28
  (51, 5100, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 23),
  -- Dugtrio - Mud-Slap - TM31
  (51, 5100, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 24),
  -- Dugtrio - Double Team - TM32
  (51, 5100, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 25),
  -- Dugtrio - Swagger - TM34
  (51, 5100, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Dugtrio - Sleep Talk - TM35
  (51, 5100, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Dugtrio - Sludge Bomb - TM36
  (51, 5100, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 28),
  -- Dugtrio - Rest - TM44
  (51, 5100, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 29),
  -- Dugtrio - Attract - TM45
  (51, 5100, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 30),
  -- Dugtrio - Thief - TM46
  (51, 5100, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 31),
  -- Dugtrio - Cut - HM01
  (51, 5100, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 32),
  -- Meowth - Scratch - Level 1
  (52, 5200, 10, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowth - Growl - Level 1
  (52, 5200, 45, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowth - Bite - Level 11
  (52, 5200, 44, 3, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Meowth - Pay Day - Level 20
  (52, 5200, 6, 3, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Meowth - Feint Attack - Level 28
  (52, 5200, 185, 3, NULL, 1, 28, NULL, NULL, NULL, 5),
  -- Meowth - Screech - Level 35
  (52, 5200, 103, 3, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Meowth - Fury Swipes - Level 41
  (52, 5200, 154, 3, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Meowth - Slash - Level 46
  (52, 5200, 163, 3, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Meowth - Headbutt - TM02
  (52, 5200, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 9),
  -- Meowth - Curse - TM03
  (52, 5200, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Meowth - Toxic - TM06
  (52, 5200, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Meowth - Zap Cannon - TM07
  (52, 5200, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 12),
  -- Meowth - Psych Up - TM09
  (52, 5200, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 13),
  -- Meowth - Hidden Power - TM10
  (52, 5200, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Meowth - Sunny Day - TM11
  (52, 5200, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 15),
  -- Meowth - Snore - TM13
  (52, 5200, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Meowth - Icy Wind - TM16
  (52, 5200, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 17),
  -- Meowth - Protect - TM17
  (52, 5200, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 18),
  -- Meowth - Endure - TM20
  (52, 5200, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 19),
  -- Meowth - Frustration - TM21
  (52, 5200, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 20),
  -- Meowth - Iron Tail - TM23
  (52, 5200, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 21),
  -- Meowth - Thunder - TM25
  (52, 5200, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 22),
  -- Meowth - Return - TM27
  (52, 5200, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 23),
  -- Meowth - Shadow Ball - TM30
  (52, 5200, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 24),
  -- Meowth - Mud-Slap - TM31
  (52, 5200, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 25),
  -- Meowth - Double Team - TM32
  (52, 5200, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 26),
  -- Meowth - Swagger - TM34
  (52, 5200, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 27),
  -- Meowth - Sleep Talk - TM35
  (52, 5200, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 28),
  -- Meowth - Swift - TM39
  (52, 5200, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 29),
  -- Meowth - Defense Curl - TM40
  (52, 5200, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 30),
  -- Meowth - Dream Eater - TM42
  (52, 5200, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 31),
  -- Meowth - Detect - TM43
  (52, 5200, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 32),
  -- Meowth - Rest - TM44
  (52, 5200, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 33),
  -- Meowth - Attract - TM45
  (52, 5200, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 34),
  -- Meowth - Thief - TM46
  (52, 5200, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 35),
  -- Meowth - Nightmare - TM50
  (52, 5200, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 36),
  -- Meowth - Amnesia - Egg Move
  (52, 5200, 133, 3, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Meowth - Charm - Egg Move
  (52, 5200, 204, 3, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Meowth - Hypnosis - Egg Move
  (52, 5200, 95, 3, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Meowth - Spite - Egg Move
  (52, 5200, 180, 3, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Persian - Scratch - Level 1
  (53, 5300, 10, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Persian - Growl - Level 1
  (53, 5300, 45, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Persian - Bite - Level 1
  (53, 5300, 44, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Persian - Bite - Level 11
  (53, 5300, 44, 3, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Persian - Pay Day - Level 20
  (53, 5300, 6, 3, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Persian - Feint Attack - Level 29
  (53, 5300, 185, 3, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Persian - Screech - Level 38
  (53, 5300, 103, 3, NULL, 1, 38, NULL, NULL, NULL, 7),
  -- Persian - Fury Swipes - Level 46
  (53, 5300, 154, 3, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Persian - Slash - Level 53
  (53, 5300, 163, 3, NULL, 1, 53, NULL, NULL, NULL, 9),
  -- Persian - Headbutt - TM02
  (53, 5300, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 10),
  -- Persian - Curse - TM03
  (53, 5300, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Persian - Roar - TM05
  (53, 5300, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 12),
  -- Persian - Toxic - TM06
  (53, 5300, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Persian - Zap Cannon - TM07
  (53, 5300, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 14),
  -- Persian - Psych Up - TM09
  (53, 5300, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 15),
  -- Persian - Hidden Power - TM10
  (53, 5300, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 16),
  -- Persian - Sunny Day - TM11
  (53, 5300, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 17),
  -- Persian - Snore - TM13
  (53, 5300, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 18),
  -- Persian - Hyper Beam - TM15
  (53, 5300, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 19),
  -- Persian - Icy Wind - TM16
  (53, 5300, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 20),
  -- Persian - Protect - TM17
  (53, 5300, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 21),
  -- Persian - Endure - TM20
  (53, 5300, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Persian - Frustration - TM21
  (53, 5300, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Persian - Iron Tail - TM23
  (53, 5300, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 24),
  -- Persian - Thunder - TM25
  (53, 5300, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 25),
  -- Persian - Return - TM27
  (53, 5300, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 26),
  -- Persian - Shadow Ball - TM30
  (53, 5300, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 27),
  -- Persian - Mud-Slap - TM31
  (53, 5300, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 28),
  -- Persian - Double Team - TM32
  (53, 5300, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 29),
  -- Persian - Swagger - TM34
  (53, 5300, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 30),
  -- Persian - Sleep Talk - TM35
  (53, 5300, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 31),
  -- Persian - Swift - TM39
  (53, 5300, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 32),
  -- Persian - Defense Curl - TM40
  (53, 5300, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 33),
  -- Persian - Dream Eater - TM42
  (53, 5300, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 34),
  -- Persian - Detect - TM43
  (53, 5300, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 35),
  -- Persian - Rest - TM44
  (53, 5300, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 36),
  -- Persian - Attract - TM45
  (53, 5300, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 37),
  -- Persian - Thief - TM46
  (53, 5300, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 38),
  -- Persian - Nightmare - TM50
  (53, 5300, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 39),
  -- Psyduck - Scratch - Level 1
  (54, 5400, 10, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Psyduck - Tail Whip - Level 5
  (54, 5400, 39, 3, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Psyduck - Disable - Level 10
  (54, 5400, 50, 3, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Psyduck - Confusion - Level 16
  (54, 5400, 93, 3, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Psyduck - Screech - Level 23
  (54, 5400, 103, 3, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Psyduck - Psych Up - Level 31
  (54, 5400, 244, 3, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Psyduck - Fury Swipes - Level 40
  (54, 5400, 154, 3, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Psyduck - Hydro Pump - Level 50
  (54, 5400, 56, 3, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Psyduck - Dynamic Punch - TM01
  (54, 5400, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 9),
  -- Psyduck - Headbutt - TM02
  (54, 5400, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 10),
  -- Psyduck - Curse - TM03
  (54, 5400, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Psyduck - Toxic - TM06
  (54, 5400, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Psyduck - Rock Smash - TM08
  (54, 5400, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 13),
  -- Psyduck - Psych Up - TM09
  (54, 5400, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 14),
  -- Psyduck - Hidden Power - TM10
  (54, 5400, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Psyduck - Snore - TM13
  (54, 5400, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Psyduck - Blizzard - TM14
  (54, 5400, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 17),
  -- Psyduck - Icy Wind - TM16
  (54, 5400, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 18),
  -- Psyduck - Protect - TM17
  (54, 5400, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Psyduck - Rain Dance - TM18
  (54, 5400, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 20),
  -- Psyduck - Endure - TM20
  (54, 5400, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Psyduck - Frustration - TM21
  (54, 5400, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Psyduck - Iron Tail - TM23
  (54, 5400, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 23),
  -- Psyduck - Return - TM27
  (54, 5400, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 24),
  -- Psyduck - Dig - TM28
  (54, 5400, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 25),
  -- Psyduck - Mud-Slap - TM31
  (54, 5400, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 26),
  -- Psyduck - Double Team - TM32
  (54, 5400, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 27),
  -- Psyduck - Ice Punch - TM33
  (54, 5400, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 28),
  -- Psyduck - Swagger - TM34
  (54, 5400, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 29),
  -- Psyduck - Sleep Talk - TM35
  (54, 5400, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 30),
  -- Psyduck - Swift - TM39
  (54, 5400, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 31),
  -- Psyduck - Rest - TM44
  (54, 5400, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 32),
  -- Psyduck - Attract - TM45
  (54, 5400, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 33),
  -- Psyduck - Surf - HM03
  (54, 5400, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 34),
  -- Psyduck - Strength - HM04
  (54, 5400, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 35),
  -- Psyduck - Flash - HM05
  (54, 5400, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 36),
  -- Psyduck - Whirlpool - HM06
  (54, 5400, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 37),
  -- Psyduck - Waterfall - HM07
  (54, 5400, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 38),
  -- Psyduck - Foresight - Egg Move
  (54, 5400, 193, 3, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Psyduck - Future Sight - Egg Move
  (54, 5400, 248, 3, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Psyduck - Hypnosis - Egg Move
  (54, 5400, 95, 3, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Psyduck - Ice Beam - Egg Move
  (54, 5400, 58, 3, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Psyduck - Light Screen - Egg Move
  (54, 5400, 113, 3, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Psyduck - Psybeam - Egg Move
  (54, 5400, 60, 3, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Psyduck - Psychic - Egg Move
  (54, 5400, 94, 3, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Golduck - Scratch - Level 1
  (55, 5500, 10, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golduck - Tail Whip - Level 1
  (55, 5500, 39, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golduck - Disable - Level 1
  (55, 5500, 50, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golduck - Confusion - Level 1
  (55, 5500, 93, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golduck - Tail Whip - Level 5
  (55, 5500, 39, 3, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Golduck - Disable - Level 10
  (55, 5500, 50, 3, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Golduck - Confusion - Level 16
  (55, 5500, 93, 3, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Golduck - Screech - Level 23
  (55, 5500, 103, 3, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Golduck - Psych Up - Level 31
  (55, 5500, 244, 3, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Golduck - Fury Swipes - Level 44
  (55, 5500, 154, 3, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Golduck - Hydro Pump - Level 58
  (55, 5500, 56, 3, NULL, 1, 58, NULL, NULL, NULL, 11),
  -- Golduck - Dynamic Punch - TM01
  (55, 5500, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 12),
  -- Golduck - Headbutt - TM02
  (55, 5500, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 13),
  -- Golduck - Curse - TM03
  (55, 5500, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 14),
  -- Golduck - Toxic - TM06
  (55, 5500, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 15),
  -- Golduck - Rock Smash - TM08
  (55, 5500, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 16),
  -- Golduck - Psych Up - TM09
  (55, 5500, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 17),
  -- Golduck - Hidden Power - TM10
  (55, 5500, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 18),
  -- Golduck - Snore - TM13
  (55, 5500, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 19),
  -- Golduck - Blizzard - TM14
  (55, 5500, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 20),
  -- Golduck - Hyper Beam - TM15
  (55, 5500, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 21),
  -- Golduck - Icy Wind - TM16
  (55, 5500, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 22),
  -- Golduck - Protect - TM17
  (55, 5500, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 23),
  -- Golduck - Rain Dance - TM18
  (55, 5500, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 24),
  -- Golduck - Endure - TM20
  (55, 5500, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 25),
  -- Golduck - Frustration - TM21
  (55, 5500, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 26),
  -- Golduck - Iron Tail - TM23
  (55, 5500, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 27),
  -- Golduck - Return - TM27
  (55, 5500, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 28),
  -- Golduck - Dig - TM28
  (55, 5500, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 29),
  -- Golduck - Mud-Slap - TM31
  (55, 5500, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 30),
  -- Golduck - Double Team - TM32
  (55, 5500, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 31),
  -- Golduck - Ice Punch - TM33
  (55, 5500, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 32),
  -- Golduck - Swagger - TM34
  (55, 5500, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 33),
  -- Golduck - Sleep Talk - TM35
  (55, 5500, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 34),
  -- Golduck - Swift - TM39
  (55, 5500, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 35),
  -- Golduck - Rest - TM44
  (55, 5500, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 36),
  -- Golduck - Attract - TM45
  (55, 5500, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 37),
  -- Golduck - Fury Cutter - TM49
  (55, 5500, 210, 3, NULL, 2, NULL, NULL, 3002049, NULL, 38),
  -- Golduck - Surf - HM03
  (55, 5500, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 39),
  -- Golduck - Strength - HM04
  (55, 5500, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 40),
  -- Golduck - Flash - HM05
  (55, 5500, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 41),
  -- Golduck - Whirlpool - HM06
  (55, 5500, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 42),
  -- Golduck - Waterfall - HM07
  (55, 5500, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 43),
  -- Mankey - Scratch - Level 1
  (56, 5600, 10, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mankey - Leer - Level 1
  (56, 5600, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mankey - Low Kick - Level 9
  (56, 5600, 67, 3, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Mankey - Karate Chop - Level 15
  (56, 5600, 2, 3, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Mankey - Fury Swipes - Level 21
  (56, 5600, 154, 3, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Mankey - Focus Energy - Level 27
  (56, 5600, 116, 3, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Mankey - Seismic Toss - Level 33
  (56, 5600, 69, 3, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Mankey - Cross Chop - Level 39
  (56, 5600, 238, 3, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Mankey - Screech - Level 45
  (56, 5600, 103, 3, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Mankey - Thrash - Level 51
  (56, 5600, 37, 3, NULL, 1, 51, NULL, NULL, NULL, 10),
  -- Mankey - Dynamic Punch - TM01
  (56, 5600, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 11),
  -- Mankey - Headbutt - TM02
  (56, 5600, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 12),
  -- Mankey - Curse - TM03
  (56, 5600, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 13),
  -- Mankey - Toxic - TM06
  (56, 5600, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Mankey - Rock Smash - TM08
  (56, 5600, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 15),
  -- Mankey - Psych Up - TM09
  (56, 5600, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 16),
  -- Mankey - Hidden Power - TM10
  (56, 5600, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 17),
  -- Mankey - Sunny Day - TM11
  (56, 5600, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 18),
  -- Mankey - Snore - TM13
  (56, 5600, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 19),
  -- Mankey - Protect - TM17
  (56, 5600, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Mankey - Endure - TM20
  (56, 5600, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Mankey - Frustration - TM21
  (56, 5600, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Mankey - Iron Tail - TM23
  (56, 5600, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 23),
  -- Mankey - Thunder - TM25
  (56, 5600, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 24),
  -- Mankey - Return - TM27
  (56, 5600, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 25),
  -- Mankey - Dig - TM28
  (56, 5600, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 26),
  -- Mankey - Mud-Slap - TM31
  (56, 5600, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 27),
  -- Mankey - Double Team - TM32
  (56, 5600, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 28),
  -- Mankey - Ice Punch - TM33
  (56, 5600, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 29),
  -- Mankey - Swagger - TM34
  (56, 5600, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 30),
  -- Mankey - Sleep Talk - TM35
  (56, 5600, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 31),
  -- Mankey - Swift - TM39
  (56, 5600, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 32),
  -- Mankey - Defense Curl - TM40
  (56, 5600, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 33),
  -- Mankey - Thunder Punch - TM41
  (56, 5600, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 34),
  -- Mankey - Detect - TM43
  (56, 5600, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 35),
  -- Mankey - Rest - TM44
  (56, 5600, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 36),
  -- Mankey - Attract - TM45
  (56, 5600, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 37),
  -- Mankey - Thief - TM46
  (56, 5600, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 38),
  -- Mankey - Fire Punch - TM48
  (56, 5600, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 39),
  -- Mankey - Strength - HM04
  (56, 5600, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 40),
  -- Mankey - Beat Up - Egg Move
  (56, 5600, 251, 3, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Mankey - Counter - Egg Move
  (56, 5600, 68, 3, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mankey - Foresight - Egg Move
  (56, 5600, 193, 3, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mankey - Meditate - Egg Move
  (56, 5600, 96, 3, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mankey - Reversal - Egg Move
  (56, 5600, 179, 3, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Mankey - Rock Slide - Egg Move
  (56, 5600, 157, 3, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Primeape - Scratch - Level 1
  (57, 5700, 10, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Primeape - Leer - Level 1
  (57, 5700, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Primeape - Low Kick - Level 1
  (57, 5700, 67, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Primeape - Rage - Level 1
  (57, 5700, 99, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Primeape - Low Kick - Level 9
  (57, 5700, 67, 3, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Primeape - Karate Chop - Level 15
  (57, 5700, 2, 3, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Primeape - Fury Swipes - Level 21
  (57, 5700, 154, 3, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Primeape - Focus Energy - Level 27
  (57, 5700, 116, 3, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Primeape - Rage - Level 28
  (57, 5700, 99, 3, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Primeape - Seismic Toss - Level 36
  (57, 5700, 69, 3, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Primeape - Cross Chop - Level 45
  (57, 5700, 238, 3, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Primeape - Screech - Level 54
  (57, 5700, 103, 3, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Primeape - Thrash - Level 63
  (57, 5700, 37, 3, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Primeape - Dynamic Punch - TM01
  (57, 5700, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 14),
  -- Primeape - Headbutt - TM02
  (57, 5700, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 15),
  -- Primeape - Curse - TM03
  (57, 5700, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 16),
  -- Primeape - Toxic - TM06
  (57, 5700, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 17),
  -- Primeape - Rock Smash - TM08
  (57, 5700, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 18),
  -- Primeape - Psych Up - TM09
  (57, 5700, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 19),
  -- Primeape - Hidden Power - TM10
  (57, 5700, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 20),
  -- Primeape - Sunny Day - TM11
  (57, 5700, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 21),
  -- Primeape - Snore - TM13
  (57, 5700, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 22),
  -- Primeape - Hyper Beam - TM15
  (57, 5700, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 23),
  -- Primeape - Protect - TM17
  (57, 5700, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 24),
  -- Primeape - Endure - TM20
  (57, 5700, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 25),
  -- Primeape - Frustration - TM21
  (57, 5700, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 26),
  -- Primeape - Iron Tail - TM23
  (57, 5700, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 27),
  -- Primeape - Thunder - TM25
  (57, 5700, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 28),
  -- Primeape - Return - TM27
  (57, 5700, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 29),
  -- Primeape - Dig - TM28
  (57, 5700, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 30),
  -- Primeape - Mud-Slap - TM31
  (57, 5700, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 31),
  -- Primeape - Double Team - TM32
  (57, 5700, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 32),
  -- Primeape - Ice Punch - TM33
  (57, 5700, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 33),
  -- Primeape - Swagger - TM34
  (57, 5700, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 34),
  -- Primeape - Sleep Talk - TM35
  (57, 5700, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 35),
  -- Primeape - Swift - TM39
  (57, 5700, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 36),
  -- Primeape - Defense Curl - TM40
  (57, 5700, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 37),
  -- Primeape - Thunder Punch - TM41
  (57, 5700, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 38),
  -- Primeape - Detect - TM43
  (57, 5700, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 39),
  -- Primeape - Rest - TM44
  (57, 5700, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 40),
  -- Primeape - Attract - TM45
  (57, 5700, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 41),
  -- Primeape - Thief - TM46
  (57, 5700, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 42),
  -- Primeape - Fire Punch - TM48
  (57, 5700, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 43),
  -- Primeape - Strength - HM04
  (57, 5700, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 44),
  -- Growlithe - Bite - Level 1
  (58, 5800, 44, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Growlithe - Roar - Level 1
  (58, 5800, 46, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Growlithe - Ember - Level 9
  (58, 5800, 52, 3, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Growlithe - Leer - Level 18
  (58, 5800, 43, 3, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Growlithe - Take Down - Level 26
  (58, 5800, 36, 3, NULL, 1, 26, NULL, NULL, NULL, 5),
  -- Growlithe - Flame Wheel - Level 34
  (58, 5800, 172, 3, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Growlithe - Agility - Level 42
  (58, 5800, 97, 3, NULL, 1, 42, NULL, NULL, NULL, 7),
  -- Growlithe - Flamethrower - Level 50
  (58, 5800, 53, 3, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Growlithe - Headbutt - TM02
  (58, 5800, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 9),
  -- Growlithe - Curse - TM03
  (58, 5800, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Growlithe - Roar - TM05
  (58, 5800, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 11),
  -- Growlithe - Toxic - TM06
  (58, 5800, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Growlithe - Rock Smash - TM08
  (58, 5800, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 13),
  -- Growlithe - Hidden Power - TM10
  (58, 5800, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Growlithe - Sunny Day - TM11
  (58, 5800, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 15),
  -- Growlithe - Snore - TM13
  (58, 5800, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Growlithe - Protect - TM17
  (58, 5800, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Growlithe - Endure - TM20
  (58, 5800, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 18),
  -- Growlithe - Frustration - TM21
  (58, 5800, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 19),
  -- Growlithe - Iron Tail - TM23
  (58, 5800, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 20),
  -- Growlithe - Dragon Breath - TM24
  (58, 5800, 225, 3, NULL, 2, NULL, NULL, 3002024, NULL, 21),
  -- Growlithe - Return - TM27
  (58, 5800, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 22),
  -- Growlithe - Dig - TM28
  (58, 5800, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 23),
  -- Growlithe - Double Team - TM32
  (58, 5800, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 24),
  -- Growlithe - Swagger - TM34
  (58, 5800, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 25),
  -- Growlithe - Sleep Talk - TM35
  (58, 5800, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 26),
  -- Growlithe - Fire Blast - TM38
  (58, 5800, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 27),
  -- Growlithe - Swift - TM39
  (58, 5800, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 28),
  -- Growlithe - Rest - TM44
  (58, 5800, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 29),
  -- Growlithe - Attract - TM45
  (58, 5800, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 30),
  -- Growlithe - Body Slam - Egg Move
  (58, 5800, 34, 3, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Growlithe - Crunch - Egg Move
  (58, 5800, 242, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Growlithe - Fire Spin - Egg Move
  (58, 5800, 83, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Growlithe - Safeguard - Egg Move
  (58, 5800, 219, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Growlithe - Thrash - Egg Move
  (58, 5800, 37, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Arcanine - Roar - Level 1
  (59, 5900, 46, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arcanine - Leer - Level 1
  (59, 5900, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arcanine - Take Down - Level 1
  (59, 5900, 36, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arcanine - Flame Wheel - Level 1
  (59, 5900, 172, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arcanine - Extreme Speed - Level 50
  (59, 5900, 245, 3, NULL, 1, 50, NULL, NULL, NULL, 5),
  -- Arcanine - Headbutt - TM02
  (59, 5900, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 6),
  -- Arcanine - Curse - TM03
  (59, 5900, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 7),
  -- Arcanine - Roar - TM05
  (59, 5900, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 8),
  -- Arcanine - Toxic - TM06
  (59, 5900, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 9),
  -- Arcanine - Rock Smash - TM08
  (59, 5900, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 10),
  -- Arcanine - Hidden Power - TM10
  (59, 5900, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 11),
  -- Arcanine - Sunny Day - TM11
  (59, 5900, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 12),
  -- Arcanine - Snore - TM13
  (59, 5900, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 13),
  -- Arcanine - Hyper Beam - TM15
  (59, 5900, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 14),
  -- Arcanine - Protect - TM17
  (59, 5900, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 15),
  -- Arcanine - Endure - TM20
  (59, 5900, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 16),
  -- Arcanine - Frustration - TM21
  (59, 5900, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 17),
  -- Arcanine - Iron Tail - TM23
  (59, 5900, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 18),
  -- Arcanine - Dragon Breath - TM24
  (59, 5900, 225, 3, NULL, 2, NULL, NULL, 3002024, NULL, 19),
  -- Arcanine - Return - TM27
  (59, 5900, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 20),
  -- Arcanine - Dig - TM28
  (59, 5900, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 21),
  -- Arcanine - Double Team - TM32
  (59, 5900, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 22),
  -- Arcanine - Swagger - TM34
  (59, 5900, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 23),
  -- Arcanine - Sleep Talk - TM35
  (59, 5900, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 24),
  -- Arcanine - Fire Blast - TM38
  (59, 5900, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 25),
  -- Arcanine - Swift - TM39
  (59, 5900, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 26),
  -- Arcanine - Rest - TM44
  (59, 5900, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 27),
  -- Arcanine - Attract - TM45
  (59, 5900, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 28),
  -- Poliwag - Bubble - Level 1
  (60, 6000, 145, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwag - Hypnosis - Level 7
  (60, 6000, 95, 3, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Poliwag - Water Gun - Level 13
  (60, 6000, 55, 3, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Poliwag - Double Slap - Level 19
  (60, 6000, 3, 3, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Poliwag - Rain Dance - Level 25
  (60, 6000, 240, 3, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Poliwag - Body Slam - Level 31
  (60, 6000, 34, 3, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Poliwag - Belly Drum - Level 37
  (60, 6000, 187, 3, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Poliwag - Hydro Pump - Level 43
  (60, 6000, 56, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Poliwag - Headbutt - TM02
  (60, 6000, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 9),
  -- Poliwag - Curse - TM03
  (60, 6000, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Poliwag - Toxic - TM06
  (60, 6000, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Poliwag - Hidden Power - TM10
  (60, 6000, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 12),
  -- Poliwag - Snore - TM13
  (60, 6000, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 13),
  -- Poliwag - Blizzard - TM14
  (60, 6000, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 14),
  -- Poliwag - Icy Wind - TM16
  (60, 6000, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 15),
  -- Poliwag - Protect - TM17
  (60, 6000, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 16),
  -- Poliwag - Rain Dance - TM18
  (60, 6000, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 17),
  -- Poliwag - Endure - TM20
  (60, 6000, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 18),
  -- Poliwag - Frustration - TM21
  (60, 6000, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 19),
  -- Poliwag - Return - TM27
  (60, 6000, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 20),
  -- Poliwag - Psychic - TM29
  (60, 6000, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 21),
  -- Poliwag - Double Team - TM32
  (60, 6000, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 22),
  -- Poliwag - Swagger - TM34
  (60, 6000, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 23),
  -- Poliwag - Sleep Talk - TM35
  (60, 6000, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 24),
  -- Poliwag - Defense Curl - TM40
  (60, 6000, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 25),
  -- Poliwag - Rest - TM44
  (60, 6000, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 26),
  -- Poliwag - Attract - TM45
  (60, 6000, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 27),
  -- Poliwag - Thief - TM46
  (60, 6000, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 28),
  -- Poliwag - Surf - HM03
  (60, 6000, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 29),
  -- Poliwag - Whirlpool - HM06
  (60, 6000, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 30),
  -- Poliwag - Waterfall - HM07
  (60, 6000, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 31),
  -- Poliwag - Bubble Beam - Egg Move
  (60, 6000, 61, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Poliwag - Haze - Egg Move
  (60, 6000, 114, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Poliwag - Mind Reader - Egg Move
  (60, 6000, 170, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Poliwag - Mist - Egg Move
  (60, 6000, 54, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Poliwag - Splash - Egg Move
  (60, 6000, 150, 3, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Poliwhirl - Bubble - Level 1
  (61, 6100, 145, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwhirl - Hypnosis - Level 1
  (61, 6100, 95, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwhirl - Water Gun - Level 1
  (61, 6100, 55, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwhirl - Hypnosis - Level 7
  (61, 6100, 95, 3, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Poliwhirl - Water Gun - Level 13
  (61, 6100, 55, 3, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Poliwhirl - Double Slap - Level 19
  (61, 6100, 3, 3, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Poliwhirl - Rain Dance - Level 27
  (61, 6100, 240, 3, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Poliwhirl - Body Slam - Level 35
  (61, 6100, 34, 3, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Poliwhirl - Belly Drum - Level 43
  (61, 6100, 187, 3, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Poliwhirl - Hydro Pump - Level 51
  (61, 6100, 56, 3, NULL, 1, 51, NULL, NULL, NULL, 10),
  -- Poliwhirl - Headbutt - TM02
  (61, 6100, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Poliwhirl - Curse - TM03
  (61, 6100, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Poliwhirl - Toxic - TM06
  (61, 6100, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Poliwhirl - Rock Smash - TM08
  (61, 6100, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 14),
  -- Poliwhirl - Hidden Power - TM10
  (61, 6100, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Poliwhirl - Snore - TM13
  (61, 6100, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Poliwhirl - Blizzard - TM14
  (61, 6100, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 17),
  -- Poliwhirl - Icy Wind - TM16
  (61, 6100, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 18),
  -- Poliwhirl - Protect - TM17
  (61, 6100, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Poliwhirl - Rain Dance - TM18
  (61, 6100, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 20),
  -- Poliwhirl - Endure - TM20
  (61, 6100, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Poliwhirl - Frustration - TM21
  (61, 6100, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Poliwhirl - Earthquake - TM26
  (61, 6100, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 23),
  -- Poliwhirl - Return - TM27
  (61, 6100, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 24),
  -- Poliwhirl - Psychic - TM29
  (61, 6100, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 25),
  -- Poliwhirl - Mud-Slap - TM31
  (61, 6100, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 26),
  -- Poliwhirl - Double Team - TM32
  (61, 6100, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 27),
  -- Poliwhirl - Ice Punch - TM33
  (61, 6100, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 28),
  -- Poliwhirl - Swagger - TM34
  (61, 6100, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 29),
  -- Poliwhirl - Sleep Talk - TM35
  (61, 6100, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 30),
  -- Poliwhirl - Defense Curl - TM40
  (61, 6100, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 31),
  -- Poliwhirl - Detect - TM43
  (61, 6100, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 32),
  -- Poliwhirl - Rest - TM44
  (61, 6100, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 33),
  -- Poliwhirl - Attract - TM45
  (61, 6100, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 34),
  -- Poliwhirl - Thief - TM46
  (61, 6100, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 35),
  -- Poliwhirl - Surf - HM03
  (61, 6100, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 36),
  -- Poliwhirl - Strength - HM04
  (61, 6100, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 37),
  -- Poliwhirl - Whirlpool - HM06
  (61, 6100, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 38),
  -- Poliwhirl - Waterfall - HM07
  (61, 6100, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 39),
  -- Poliwrath - Water Gun - Level 1
  (62, 6200, 55, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwrath - Hypnosis - Level 1
  (62, 6200, 95, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwrath - Double Slap - Level 1
  (62, 6200, 3, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwrath - Submission - Level 1
  (62, 6200, 66, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Poliwrath - Submission - Level 35
  (62, 6200, 66, 3, NULL, 1, 35, NULL, NULL, NULL, 5),
  -- Poliwrath - Mind Reader - Level 51
  (62, 6200, 170, 3, NULL, 1, 51, NULL, NULL, NULL, 6),
  -- Poliwrath - Dynamic Punch - TM01
  (62, 6200, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 7),
  -- Poliwrath - Headbutt - TM02
  (62, 6200, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 8),
  -- Poliwrath - Curse - TM03
  (62, 6200, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 9),
  -- Poliwrath - Toxic - TM06
  (62, 6200, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 10),
  -- Poliwrath - Rock Smash - TM08
  (62, 6200, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 11),
  -- Poliwrath - Hidden Power - TM10
  (62, 6200, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 12),
  -- Poliwrath - Snore - TM13
  (62, 6200, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 13),
  -- Poliwrath - Blizzard - TM14
  (62, 6200, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 14),
  -- Poliwrath - Hyper Beam - TM15
  (62, 6200, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 15),
  -- Poliwrath - Icy Wind - TM16
  (62, 6200, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 16),
  -- Poliwrath - Protect - TM17
  (62, 6200, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Poliwrath - Rain Dance - TM18
  (62, 6200, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 18),
  -- Poliwrath - Endure - TM20
  (62, 6200, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 19),
  -- Poliwrath - Frustration - TM21
  (62, 6200, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 20),
  -- Poliwrath - Earthquake - TM26
  (62, 6200, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 21),
  -- Poliwrath - Return - TM27
  (62, 6200, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 22),
  -- Poliwrath - Psychic - TM29
  (62, 6200, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 23),
  -- Poliwrath - Mud-Slap - TM31
  (62, 6200, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 24),
  -- Poliwrath - Double Team - TM32
  (62, 6200, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 25),
  -- Poliwrath - Ice Punch - TM33
  (62, 6200, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 26),
  -- Poliwrath - Swagger - TM34
  (62, 6200, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 27),
  -- Poliwrath - Sleep Talk - TM35
  (62, 6200, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 28),
  -- Poliwrath - Defense Curl - TM40
  (62, 6200, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 29),
  -- Poliwrath - Detect - TM43
  (62, 6200, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 30),
  -- Poliwrath - Rest - TM44
  (62, 6200, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 31),
  -- Poliwrath - Attract - TM45
  (62, 6200, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 32),
  -- Poliwrath - Thief - TM46
  (62, 6200, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 33),
  -- Poliwrath - Surf - HM03
  (62, 6200, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 34),
  -- Poliwrath - Strength - HM04
  (62, 6200, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 35),
  -- Poliwrath - Whirlpool - HM06
  (62, 6200, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 36),
  -- Poliwrath - Waterfall - HM07
  (62, 6200, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 37),
  -- Abra - Teleport - Level 1
  (63, 6300, 100, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abra - Dynamic Punch - TM01
  (63, 6300, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 2),
  -- Abra - Headbutt - TM02
  (63, 6300, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 3),
  -- Abra - Curse - TM03
  (63, 6300, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 4),
  -- Abra - Toxic - TM06
  (63, 6300, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 5),
  -- Abra - Zap Cannon - TM07
  (63, 6300, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 6),
  -- Abra - Psych Up - TM09
  (63, 6300, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 7),
  -- Abra - Hidden Power - TM10
  (63, 6300, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 8),
  -- Abra - Sunny Day - TM11
  (63, 6300, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 9),
  -- Abra - Snore - TM13
  (63, 6300, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 10),
  -- Abra - Protect - TM17
  (63, 6300, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 11),
  -- Abra - Rain Dance - TM18
  (63, 6300, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 12),
  -- Abra - Endure - TM20
  (63, 6300, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 13),
  -- Abra - Frustration - TM21
  (63, 6300, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 14),
  -- Abra - Return - TM27
  (63, 6300, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 15),
  -- Abra - Psychic - TM29
  (63, 6300, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 16),
  -- Abra - Shadow Ball - TM30
  (63, 6300, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 17),
  -- Abra - Double Team - TM32
  (63, 6300, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 18),
  -- Abra - Ice Punch - TM33
  (63, 6300, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 19),
  -- Abra - Swagger - TM34
  (63, 6300, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 20),
  -- Abra - Sleep Talk - TM35
  (63, 6300, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 21),
  -- Abra - Thunder Punch - TM41
  (63, 6300, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 22),
  -- Abra - Dream Eater - TM42
  (63, 6300, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 23),
  -- Abra - Rest - TM44
  (63, 6300, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 24),
  -- Abra - Attract - TM45
  (63, 6300, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 25),
  -- Abra - Thief - TM46
  (63, 6300, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 26),
  -- Abra - Fire Punch - TM48
  (63, 6300, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 27),
  -- Abra - Nightmare - TM50
  (63, 6300, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 28),
  -- Abra - Flash - HM05
  (63, 6300, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 29),
  -- Abra - Barrier - Egg Move
  (63, 6300, 112, 3, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Abra - Encore - Egg Move
  (63, 6300, 227, 3, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Abra - Light Screen - Egg Move
  (63, 6300, 113, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Kadabra - Teleport - Level 1
  (64, 6400, 100, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kadabra - Kinesis - Level 1
  (64, 6400, 134, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kadabra - Confusion - Level 1
  (64, 6400, 93, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kadabra - Confusion - Level 16
  (64, 6400, 93, 3, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Kadabra - Disable - Level 18
  (64, 6400, 50, 3, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Kadabra - Psybeam - Level 21
  (64, 6400, 60, 3, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Kadabra - Recover - Level 26
  (64, 6400, 105, 3, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Kadabra - Future Sight - Level 31
  (64, 6400, 248, 3, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Kadabra - Psychic - Level 38
  (64, 6400, 94, 3, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Kadabra - Reflect - Level 45
  (64, 6400, 115, 3, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Kadabra - Dynamic Punch - TM01
  (64, 6400, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 11),
  -- Kadabra - Headbutt - TM02
  (64, 6400, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 12),
  -- Kadabra - Curse - TM03
  (64, 6400, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 13),
  -- Kadabra - Toxic - TM06
  (64, 6400, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Kadabra - Zap Cannon - TM07
  (64, 6400, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 15),
  -- Kadabra - Psych Up - TM09
  (64, 6400, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 16),
  -- Kadabra - Hidden Power - TM10
  (64, 6400, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 17),
  -- Kadabra - Sunny Day - TM11
  (64, 6400, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 18),
  -- Kadabra - Snore - TM13
  (64, 6400, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 19),
  -- Kadabra - Protect - TM17
  (64, 6400, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Kadabra - Rain Dance - TM18
  (64, 6400, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 21),
  -- Kadabra - Endure - TM20
  (64, 6400, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Kadabra - Frustration - TM21
  (64, 6400, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Kadabra - Return - TM27
  (64, 6400, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 24),
  -- Kadabra - Dig - TM28
  (64, 6400, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 25),
  -- Kadabra - Psychic - TM29
  (64, 6400, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 26),
  -- Kadabra - Shadow Ball - TM30
  (64, 6400, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 27),
  -- Kadabra - Double Team - TM32
  (64, 6400, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 28),
  -- Kadabra - Ice Punch - TM33
  (64, 6400, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 29),
  -- Kadabra - Swagger - TM34
  (64, 6400, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 30),
  -- Kadabra - Sleep Talk - TM35
  (64, 6400, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 31),
  -- Kadabra - Thunder Punch - TM41
  (64, 6400, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 32),
  -- Kadabra - Dream Eater - TM42
  (64, 6400, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 33),
  -- Kadabra - Rest - TM44
  (64, 6400, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 34),
  -- Kadabra - Attract - TM45
  (64, 6400, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 35),
  -- Kadabra - Thief - TM46
  (64, 6400, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 36),
  -- Kadabra - Fire Punch - TM48
  (64, 6400, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 37),
  -- Kadabra - Nightmare - TM50
  (64, 6400, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 38),
  -- Kadabra - Flash - HM05
  (64, 6400, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 39),
  -- Alakazam - Teleport - Level 1
  (65, 6500, 100, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alakazam - Kinesis - Level 1
  (65, 6500, 134, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alakazam - Confusion - Level 1
  (65, 6500, 93, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alakazam - Confusion - Level 16
  (65, 6500, 93, 3, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Alakazam - Disable - Level 18
  (65, 6500, 50, 3, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Alakazam - Psybeam - Level 21
  (65, 6500, 60, 3, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Alakazam - Recover - Level 26
  (65, 6500, 105, 3, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Alakazam - Future Sight - Level 31
  (65, 6500, 248, 3, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Alakazam - Psychic - Level 38
  (65, 6500, 94, 3, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Alakazam - Reflect - Level 45
  (65, 6500, 115, 3, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Alakazam - Dynamic Punch - TM01
  (65, 6500, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 11),
  -- Alakazam - Headbutt - TM02
  (65, 6500, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 12),
  -- Alakazam - Curse - TM03
  (65, 6500, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 13),
  -- Alakazam - Toxic - TM06
  (65, 6500, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Alakazam - Zap Cannon - TM07
  (65, 6500, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 15),
  -- Alakazam - Psych Up - TM09
  (65, 6500, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 16),
  -- Alakazam - Hidden Power - TM10
  (65, 6500, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 17),
  -- Alakazam - Sunny Day - TM11
  (65, 6500, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 18),
  -- Alakazam - Snore - TM13
  (65, 6500, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 19),
  -- Alakazam - Hyper Beam - TM15
  (65, 6500, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 20),
  -- Alakazam - Protect - TM17
  (65, 6500, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 21),
  -- Alakazam - Rain Dance - TM18
  (65, 6500, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 22),
  -- Alakazam - Endure - TM20
  (65, 6500, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 23),
  -- Alakazam - Frustration - TM21
  (65, 6500, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 24),
  -- Alakazam - Return - TM27
  (65, 6500, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 25),
  -- Alakazam - Dig - TM28
  (65, 6500, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 26),
  -- Alakazam - Psychic - TM29
  (65, 6500, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 27),
  -- Alakazam - Shadow Ball - TM30
  (65, 6500, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 28),
  -- Alakazam - Double Team - TM32
  (65, 6500, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 29),
  -- Alakazam - Ice Punch - TM33
  (65, 6500, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 30),
  -- Alakazam - Swagger - TM34
  (65, 6500, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 31),
  -- Alakazam - Sleep Talk - TM35
  (65, 6500, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 32),
  -- Alakazam - Thunder Punch - TM41
  (65, 6500, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 33),
  -- Alakazam - Dream Eater - TM42
  (65, 6500, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 34),
  -- Alakazam - Rest - TM44
  (65, 6500, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 35),
  -- Alakazam - Attract - TM45
  (65, 6500, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 36),
  -- Alakazam - Thief - TM46
  (65, 6500, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 37),
  -- Alakazam - Fire Punch - TM48
  (65, 6500, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 38),
  -- Alakazam - Nightmare - TM50
  (65, 6500, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 39),
  -- Alakazam - Flash - HM05
  (65, 6500, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 40),
  -- Machop - Low Kick - Level 1
  (66, 6600, 67, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machop - Leer - Level 1
  (66, 6600, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machop - Focus Energy - Level 7
  (66, 6600, 116, 3, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Machop - Karate Chop - Level 13
  (66, 6600, 2, 3, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Machop - Seismic Toss - Level 19
  (66, 6600, 69, 3, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Machop - Foresight - Level 25
  (66, 6600, 193, 3, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Machop - Vital Throw - Level 31
  (66, 6600, 233, 3, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Machop - Cross Chop - Level 37
  (66, 6600, 238, 3, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Machop - Scary Face - Level 43
  (66, 6600, 184, 3, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Machop - Submission - Level 49
  (66, 6600, 66, 3, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Machop - Dynamic Punch - TM01
  (66, 6600, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 11),
  -- Machop - Headbutt - TM02
  (66, 6600, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 12),
  -- Machop - Curse - TM03
  (66, 6600, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 13),
  -- Machop - Toxic - TM06
  (66, 6600, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Machop - Rock Smash - TM08
  (66, 6600, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 15),
  -- Machop - Hidden Power - TM10
  (66, 6600, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 16),
  -- Machop - Sunny Day - TM11
  (66, 6600, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 17),
  -- Machop - Snore - TM13
  (66, 6600, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 18),
  -- Machop - Protect - TM17
  (66, 6600, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Machop - Endure - TM20
  (66, 6600, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 20),
  -- Machop - Frustration - TM21
  (66, 6600, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 21),
  -- Machop - Earthquake - TM26
  (66, 6600, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 22),
  -- Machop - Return - TM27
  (66, 6600, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 23),
  -- Machop - Dig - TM28
  (66, 6600, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 24),
  -- Machop - Mud-Slap - TM31
  (66, 6600, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 25),
  -- Machop - Double Team - TM32
  (66, 6600, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 26),
  -- Machop - Ice Punch - TM33
  (66, 6600, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 27),
  -- Machop - Swagger - TM34
  (66, 6600, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 28),
  -- Machop - Sleep Talk - TM35
  (66, 6600, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 29),
  -- Machop - Fire Blast - TM38
  (66, 6600, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 30),
  -- Machop - Thunder Punch - TM41
  (66, 6600, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 31),
  -- Machop - Detect - TM43
  (66, 6600, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 32),
  -- Machop - Rest - TM44
  (66, 6600, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 33),
  -- Machop - Attract - TM45
  (66, 6600, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 34),
  -- Machop - Thief - TM46
  (66, 6600, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 35),
  -- Machop - Fire Punch - TM48
  (66, 6600, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 36),
  -- Machop - Strength - HM04
  (66, 6600, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 37),
  -- Machop - Encore - Egg Move
  (66, 6600, 227, 3, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Machop - Light Screen - Egg Move
  (66, 6600, 113, 3, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Machop - Meditate - Egg Move
  (66, 6600, 96, 3, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Machop - Rolling Kick - Egg Move
  (66, 6600, 27, 3, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Machoke - Low Kick - Level 1
  (67, 6700, 67, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machoke - Leer - Level 1
  (67, 6700, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machoke - Focus Energy - Level 1
  (67, 6700, 116, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machoke - Focus Energy - Level 8
  (67, 6700, 116, 3, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Machoke - Karate Chop - Level 15
  (67, 6700, 2, 3, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Machoke - Seismic Toss - Level 19
  (67, 6700, 69, 3, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Machoke - Foresight - Level 25
  (67, 6700, 193, 3, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Machoke - Vital Throw - Level 34
  (67, 6700, 233, 3, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Machoke - Cross Chop - Level 43
  (67, 6700, 238, 3, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Machoke - Scary Face - Level 52
  (67, 6700, 184, 3, NULL, 1, 52, NULL, NULL, NULL, 10),
  -- Machoke - Submission - Level 61
  (67, 6700, 66, 3, NULL, 1, 61, NULL, NULL, NULL, 11),
  -- Machoke - Dynamic Punch - TM01
  (67, 6700, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 12),
  -- Machoke - Headbutt - TM02
  (67, 6700, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 13),
  -- Machoke - Curse - TM03
  (67, 6700, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 14),
  -- Machoke - Toxic - TM06
  (67, 6700, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 15),
  -- Machoke - Rock Smash - TM08
  (67, 6700, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 16),
  -- Machoke - Hidden Power - TM10
  (67, 6700, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 17),
  -- Machoke - Sunny Day - TM11
  (67, 6700, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 18),
  -- Machoke - Snore - TM13
  (67, 6700, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 19),
  -- Machoke - Protect - TM17
  (67, 6700, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Machoke - Endure - TM20
  (67, 6700, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Machoke - Frustration - TM21
  (67, 6700, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Machoke - Earthquake - TM26
  (67, 6700, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 23),
  -- Machoke - Return - TM27
  (67, 6700, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 24),
  -- Machoke - Dig - TM28
  (67, 6700, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 25),
  -- Machoke - Mud-Slap - TM31
  (67, 6700, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 26),
  -- Machoke - Double Team - TM32
  (67, 6700, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 27),
  -- Machoke - Ice Punch - TM33
  (67, 6700, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 28),
  -- Machoke - Swagger - TM34
  (67, 6700, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 29),
  -- Machoke - Sleep Talk - TM35
  (67, 6700, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 30),
  -- Machoke - Fire Blast - TM38
  (67, 6700, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 31),
  -- Machoke - Thunder Punch - TM41
  (67, 6700, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 32),
  -- Machoke - Detect - TM43
  (67, 6700, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 33),
  -- Machoke - Rest - TM44
  (67, 6700, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 34),
  -- Machoke - Attract - TM45
  (67, 6700, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 35),
  -- Machoke - Thief - TM46
  (67, 6700, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 36),
  -- Machoke - Fire Punch - TM48
  (67, 6700, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 37),
  -- Machoke - Strength - HM04
  (67, 6700, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 38),
  -- Machamp - Low Kick - Level 1
  (68, 6800, 67, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machamp - Leer - Level 1
  (68, 6800, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machamp - Focus Energy - Level 1
  (68, 6800, 116, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machamp - Focus Energy - Level 8
  (68, 6800, 116, 3, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Machamp - Karate Chop - Level 15
  (68, 6800, 2, 3, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Machamp - Seismic Toss - Level 19
  (68, 6800, 69, 3, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Machamp - Foresight - Level 25
  (68, 6800, 193, 3, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Machamp - Vital Throw - Level 34
  (68, 6800, 233, 3, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Machamp - Cross Chop - Level 43
  (68, 6800, 238, 3, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Machamp - Scary Face - Level 52
  (68, 6800, 184, 3, NULL, 1, 52, NULL, NULL, NULL, 10),
  -- Machamp - Submission - Level 61
  (68, 6800, 66, 3, NULL, 1, 61, NULL, NULL, NULL, 11),
  -- Machamp - Dynamic Punch - TM01
  (68, 6800, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 12),
  -- Machamp - Headbutt - TM02
  (68, 6800, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 13),
  -- Machamp - Curse - TM03
  (68, 6800, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 14),
  -- Machamp - Toxic - TM06
  (68, 6800, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 15),
  -- Machamp - Rock Smash - TM08
  (68, 6800, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 16),
  -- Machamp - Hidden Power - TM10
  (68, 6800, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 17),
  -- Machamp - Sunny Day - TM11
  (68, 6800, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 18),
  -- Machamp - Snore - TM13
  (68, 6800, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 19),
  -- Machamp - Hyper Beam - TM15
  (68, 6800, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 20),
  -- Machamp - Protect - TM17
  (68, 6800, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 21),
  -- Machamp - Endure - TM20
  (68, 6800, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Machamp - Frustration - TM21
  (68, 6800, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Machamp - Earthquake - TM26
  (68, 6800, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 24),
  -- Machamp - Return - TM27
  (68, 6800, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 25),
  -- Machamp - Dig - TM28
  (68, 6800, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 26),
  -- Machamp - Mud-Slap - TM31
  (68, 6800, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 27),
  -- Machamp - Double Team - TM32
  (68, 6800, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 28),
  -- Machamp - Ice Punch - TM33
  (68, 6800, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 29),
  -- Machamp - Swagger - TM34
  (68, 6800, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 30),
  -- Machamp - Sleep Talk - TM35
  (68, 6800, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 31),
  -- Machamp - Fire Blast - TM38
  (68, 6800, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 32),
  -- Machamp - Thunder Punch - TM41
  (68, 6800, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 33),
  -- Machamp - Detect - TM43
  (68, 6800, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 34),
  -- Machamp - Rest - TM44
  (68, 6800, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 35),
  -- Machamp - Attract - TM45
  (68, 6800, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 36),
  -- Machamp - Thief - TM46
  (68, 6800, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 37),
  -- Machamp - Fire Punch - TM48
  (68, 6800, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 38),
  -- Machamp - Strength - HM04
  (68, 6800, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 39),
  -- Bellsprout - Vine Whip - Level 1
  (69, 6900, 22, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bellsprout - Growth - Level 6
  (69, 6900, 74, 3, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Bellsprout - Wrap - Level 11
  (69, 6900, 35, 3, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Bellsprout - Sleep Powder - Level 15
  (69, 6900, 79, 3, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Bellsprout - Poison Powder - Level 17
  (69, 6900, 77, 3, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Bellsprout - Stun Spore - Level 19
  (69, 6900, 78, 3, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Bellsprout - Acid - Level 23
  (69, 6900, 51, 3, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Bellsprout - Sweet Scent - Level 30
  (69, 6900, 230, 3, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Bellsprout - Razor Leaf - Level 37
  (69, 6900, 75, 3, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Bellsprout - Slam - Level 45
  (69, 6900, 21, 3, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Bellsprout - Curse - TM03
  (69, 6900, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Bellsprout - Toxic - TM06
  (69, 6900, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Bellsprout - Hidden Power - TM10
  (69, 6900, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 13),
  -- Bellsprout - Sunny Day - TM11
  (69, 6900, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 14),
  -- Bellsprout - Sweet Scent - TM12
  (69, 6900, 230, 3, NULL, 2, NULL, NULL, 3002012, NULL, 15),
  -- Bellsprout - Snore - TM13
  (69, 6900, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Bellsprout - Protect - TM17
  (69, 6900, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Bellsprout - Giga Drain - TM19
  (69, 6900, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 18),
  -- Bellsprout - Endure - TM20
  (69, 6900, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 19),
  -- Bellsprout - Frustration - TM21
  (69, 6900, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 20),
  -- Bellsprout - Solar Beam - TM22
  (69, 6900, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 21),
  -- Bellsprout - Return - TM27
  (69, 6900, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 22),
  -- Bellsprout - Double Team - TM32
  (69, 6900, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 23),
  -- Bellsprout - Swagger - TM34
  (69, 6900, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 24),
  -- Bellsprout - Sleep Talk - TM35
  (69, 6900, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 25),
  -- Bellsprout - Sludge Bomb - TM36
  (69, 6900, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 26),
  -- Bellsprout - Rest - TM44
  (69, 6900, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 27),
  -- Bellsprout - Attract - TM45
  (69, 6900, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 28),
  -- Bellsprout - Cut - HM01
  (69, 6900, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 29),
  -- Bellsprout - Flash - HM05
  (69, 6900, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 30),
  -- Bellsprout - Encore - Egg Move
  (69, 6900, 227, 3, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Bellsprout - Leech Life - Egg Move
  (69, 6900, 141, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Bellsprout - Reflect - Egg Move
  (69, 6900, 115, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Bellsprout - Swords Dance - Egg Move
  (69, 6900, 14, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Bellsprout - Synthesis - Egg Move
  (69, 6900, 235, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Weepinbell - Vine Whip - Level 1
  (70, 7000, 22, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weepinbell - Growth - Level 1
  (70, 7000, 74, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weepinbell - Wrap - Level 1
  (70, 7000, 35, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weepinbell - Growth - Level 6
  (70, 7000, 74, 3, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Weepinbell - Wrap - Level 11
  (70, 7000, 35, 3, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Weepinbell - Sleep Powder - Level 15
  (70, 7000, 79, 3, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Weepinbell - Poison Powder - Level 17
  (70, 7000, 77, 3, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Weepinbell - Stun Spore - Level 19
  (70, 7000, 78, 3, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Weepinbell - Acid - Level 24
  (70, 7000, 51, 3, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Weepinbell - Sweet Scent - Level 33
  (70, 7000, 230, 3, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Weepinbell - Razor Leaf - Level 42
  (70, 7000, 75, 3, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Weepinbell - Slam - Level 54
  (70, 7000, 21, 3, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Weepinbell - Curse - TM03
  (70, 7000, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 13),
  -- Weepinbell - Toxic - TM06
  (70, 7000, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Weepinbell - Hidden Power - TM10
  (70, 7000, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Weepinbell - Sunny Day - TM11
  (70, 7000, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 16),
  -- Weepinbell - Sweet Scent - TM12
  (70, 7000, 230, 3, NULL, 2, NULL, NULL, 3002012, NULL, 17),
  -- Weepinbell - Snore - TM13
  (70, 7000, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 18),
  -- Weepinbell - Protect - TM17
  (70, 7000, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Weepinbell - Giga Drain - TM19
  (70, 7000, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 20),
  -- Weepinbell - Endure - TM20
  (70, 7000, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Weepinbell - Frustration - TM21
  (70, 7000, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Weepinbell - Solar Beam - TM22
  (70, 7000, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 23),
  -- Weepinbell - Return - TM27
  (70, 7000, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 24),
  -- Weepinbell - Double Team - TM32
  (70, 7000, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 25),
  -- Weepinbell - Swagger - TM34
  (70, 7000, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Weepinbell - Sleep Talk - TM35
  (70, 7000, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Weepinbell - Sludge Bomb - TM36
  (70, 7000, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 28),
  -- Weepinbell - Rest - TM44
  (70, 7000, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 29),
  -- Weepinbell - Attract - TM45
  (70, 7000, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 30),
  -- Weepinbell - Cut - HM01
  (70, 7000, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 31),
  -- Weepinbell - Flash - HM05
  (70, 7000, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 32),
  -- Victreebel - Vine Whip - Level 1
  (71, 7100, 22, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Victreebel - Sleep Powder - Level 1
  (71, 7100, 79, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Victreebel - Sweet Scent - Level 1
  (71, 7100, 230, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Victreebel - Razor Leaf - Level 1
  (71, 7100, 75, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Victreebel - Curse - TM03
  (71, 7100, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 5),
  -- Victreebel - Toxic - TM06
  (71, 7100, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 6),
  -- Victreebel - Hidden Power - TM10
  (71, 7100, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 7),
  -- Victreebel - Sunny Day - TM11
  (71, 7100, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 8),
  -- Victreebel - Sweet Scent - TM12
  (71, 7100, 230, 3, NULL, 2, NULL, NULL, 3002012, NULL, 9),
  -- Victreebel - Snore - TM13
  (71, 7100, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 10),
  -- Victreebel - Hyper Beam - TM15
  (71, 7100, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 11),
  -- Victreebel - Protect - TM17
  (71, 7100, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 12),
  -- Victreebel - Giga Drain - TM19
  (71, 7100, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 13),
  -- Victreebel - Endure - TM20
  (71, 7100, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 14),
  -- Victreebel - Frustration - TM21
  (71, 7100, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 15),
  -- Victreebel - Solar Beam - TM22
  (71, 7100, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 16),
  -- Victreebel - Return - TM27
  (71, 7100, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 17),
  -- Victreebel - Double Team - TM32
  (71, 7100, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 18),
  -- Victreebel - Swagger - TM34
  (71, 7100, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 19),
  -- Victreebel - Sleep Talk - TM35
  (71, 7100, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 20),
  -- Victreebel - Sludge Bomb - TM36
  (71, 7100, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 21),
  -- Victreebel - Rest - TM44
  (71, 7100, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 22),
  -- Victreebel - Attract - TM45
  (71, 7100, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 23),
  -- Victreebel - Cut - HM01
  (71, 7100, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 24),
  -- Victreebel - Flash - HM05
  (71, 7100, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 25),
  -- Tentacool - Poison Sting - Level 1
  (72, 7200, 40, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacool - Supersonic - Level 6
  (72, 7200, 48, 3, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Tentacool - Constrict - Level 12
  (72, 7200, 132, 3, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Tentacool - Acid - Level 19
  (72, 7200, 51, 3, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Tentacool - Bubble Beam - Level 25
  (72, 7200, 61, 3, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Tentacool - Wrap - Level 30
  (72, 7200, 35, 3, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Tentacool - Barrier - Level 36
  (72, 7200, 112, 3, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Tentacool - Screech - Level 43
  (72, 7200, 103, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Tentacool - Hydro Pump - Level 49
  (72, 7200, 56, 3, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Tentacool - Curse - TM03
  (72, 7200, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Tentacool - Toxic - TM06
  (72, 7200, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Tentacool - Hidden Power - TM10
  (72, 7200, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 12),
  -- Tentacool - Snore - TM13
  (72, 7200, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 13),
  -- Tentacool - Blizzard - TM14
  (72, 7200, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 14),
  -- Tentacool - Icy Wind - TM16
  (72, 7200, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 15),
  -- Tentacool - Protect - TM17
  (72, 7200, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 16),
  -- Tentacool - Rain Dance - TM18
  (72, 7200, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 17),
  -- Tentacool - Giga Drain - TM19
  (72, 7200, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 18),
  -- Tentacool - Endure - TM20
  (72, 7200, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 19),
  -- Tentacool - Frustration - TM21
  (72, 7200, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 20),
  -- Tentacool - Return - TM27
  (72, 7200, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 21),
  -- Tentacool - Double Team - TM32
  (72, 7200, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 22),
  -- Tentacool - Swagger - TM34
  (72, 7200, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 23),
  -- Tentacool - Sleep Talk - TM35
  (72, 7200, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 24),
  -- Tentacool - Sludge Bomb - TM36
  (72, 7200, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 25),
  -- Tentacool - Rest - TM44
  (72, 7200, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 26),
  -- Tentacool - Attract - TM45
  (72, 7200, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 27),
  -- Tentacool - Cut - HM01
  (72, 7200, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 28),
  -- Tentacool - Surf - HM03
  (72, 7200, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 29),
  -- Tentacool - Whirlpool - HM06
  (72, 7200, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 30),
  -- Tentacool - Aurora Beam - Egg Move
  (72, 7200, 62, 3, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Tentacool - Haze - Egg Move
  (72, 7200, 114, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Tentacool - Mirror Coat - Egg Move
  (72, 7200, 243, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Tentacool - Rapid Spin - Egg Move
  (72, 7200, 229, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Tentacool - Safeguard - Egg Move
  (72, 7200, 219, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Tentacruel - Poison Sting - Level 1
  (73, 7300, 40, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacruel - Supersonic - Level 1
  (73, 7300, 48, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tentacruel - Constrict - Level 1
  (73, 7300, 132, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tentacruel - Supersonic - Level 6
  (73, 7300, 48, 3, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Tentacruel - Constrict - Level 12
  (73, 7300, 132, 3, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Tentacruel - Acid - Level 19
  (73, 7300, 51, 3, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Tentacruel - Bubble Beam - Level 25
  (73, 7300, 61, 3, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tentacruel - Wrap - Level 30
  (73, 7300, 35, 3, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Tentacruel - Barrier - Level 38
  (73, 7300, 112, 3, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Tentacruel - Screech - Level 47
  (73, 7300, 103, 3, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Tentacruel - Hydro Pump - Level 55
  (73, 7300, 56, 3, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Tentacruel - Curse - TM03
  (73, 7300, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Tentacruel - Toxic - TM06
  (73, 7300, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Tentacruel - Hidden Power - TM10
  (73, 7300, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Tentacruel - Snore - TM13
  (73, 7300, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 15),
  -- Tentacruel - Blizzard - TM14
  (73, 7300, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 16),
  -- Tentacruel - Hyper Beam - TM15
  (73, 7300, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 17),
  -- Tentacruel - Icy Wind - TM16
  (73, 7300, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 18),
  -- Tentacruel - Protect - TM17
  (73, 7300, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Tentacruel - Rain Dance - TM18
  (73, 7300, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 20),
  -- Tentacruel - Giga Drain - TM19
  (73, 7300, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 21),
  -- Tentacruel - Endure - TM20
  (73, 7300, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Tentacruel - Frustration - TM21
  (73, 7300, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Tentacruel - Return - TM27
  (73, 7300, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 24),
  -- Tentacruel - Double Team - TM32
  (73, 7300, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 25),
  -- Tentacruel - Swagger - TM34
  (73, 7300, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Tentacruel - Sleep Talk - TM35
  (73, 7300, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Tentacruel - Sludge Bomb - TM36
  (73, 7300, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 28),
  -- Tentacruel - Rest - TM44
  (73, 7300, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 29),
  -- Tentacruel - Attract - TM45
  (73, 7300, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 30),
  -- Tentacruel - Cut - HM01
  (73, 7300, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 31),
  -- Tentacruel - Surf - HM03
  (73, 7300, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 32),
  -- Tentacruel - Whirlpool - HM06
  (73, 7300, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 33),
  -- Geodude - Tackle - Level 1
  (74, 7400, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Geodude - Defense Curl - Level 6
  (74, 7400, 111, 3, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Geodude - Rock Throw - Level 11
  (74, 7400, 88, 3, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Geodude - Magnitude - Level 16
  (74, 7400, 222, 3, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Geodude - Self-Destruct - Level 21
  (74, 7400, 120, 3, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Geodude - Harden - Level 26
  (74, 7400, 106, 3, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Geodude - Rollout - Level 31
  (74, 7400, 205, 3, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Geodude - Earthquake - Level 36
  (74, 7400, 89, 3, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Geodude - Explosion - Level 41
  (74, 7400, 153, 3, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Geodude - Dynamic Punch - TM01
  (74, 7400, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 10),
  -- Geodude - Headbutt - TM02
  (74, 7400, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Geodude - Curse - TM03
  (74, 7400, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Geodude - Rollout - TM04
  (74, 7400, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 13),
  -- Geodude - Toxic - TM06
  (74, 7400, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Geodude - Rock Smash - TM08
  (74, 7400, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 15),
  -- Geodude - Hidden Power - TM10
  (74, 7400, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 16),
  -- Geodude - Sunny Day - TM11
  (74, 7400, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 17),
  -- Geodude - Snore - TM13
  (74, 7400, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 18),
  -- Geodude - Protect - TM17
  (74, 7400, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Geodude - Endure - TM20
  (74, 7400, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 20),
  -- Geodude - Frustration - TM21
  (74, 7400, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 21),
  -- Geodude - Earthquake - TM26
  (74, 7400, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 22),
  -- Geodude - Return - TM27
  (74, 7400, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 23),
  -- Geodude - Dig - TM28
  (74, 7400, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 24),
  -- Geodude - Mud-Slap - TM31
  (74, 7400, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 25),
  -- Geodude - Double Team - TM32
  (74, 7400, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 26),
  -- Geodude - Swagger - TM34
  (74, 7400, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 27),
  -- Geodude - Sleep Talk - TM35
  (74, 7400, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 28),
  -- Geodude - Sandstorm - TM37
  (74, 7400, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 29),
  -- Geodude - Fire Blast - TM38
  (74, 7400, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 30),
  -- Geodude - Defense Curl - TM40
  (74, 7400, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 31),
  -- Geodude - Rest - TM44
  (74, 7400, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 32),
  -- Geodude - Attract - TM45
  (74, 7400, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 33),
  -- Geodude - Fire Punch - TM48
  (74, 7400, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 34),
  -- Geodude - Strength - HM04
  (74, 7400, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 35),
  -- Geodude - Mega Punch - Egg Move
  (74, 7400, 5, 3, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Geodude - Rock Slide - Egg Move
  (74, 7400, 157, 3, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Graveler - Tackle - Level 1
  (75, 7500, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Graveler - Defense Curl - Level 1
  (75, 7500, 111, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Graveler - Rock Throw - Level 1
  (75, 7500, 88, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Graveler - Defense Curl - Level 6
  (75, 7500, 111, 3, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Graveler - Rock Throw - Level 11
  (75, 7500, 88, 3, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Graveler - Magnitude - Level 16
  (75, 7500, 222, 3, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Graveler - Self-Destruct - Level 21
  (75, 7500, 120, 3, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Graveler - Harden - Level 27
  (75, 7500, 106, 3, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Graveler - Rollout - Level 34
  (75, 7500, 205, 3, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Graveler - Earthquake - Level 41
  (75, 7500, 89, 3, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Graveler - Explosion - Level 48
  (75, 7500, 153, 3, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Graveler - Dynamic Punch - TM01
  (75, 7500, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 12),
  -- Graveler - Headbutt - TM02
  (75, 7500, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 13),
  -- Graveler - Curse - TM03
  (75, 7500, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 14),
  -- Graveler - Rollout - TM04
  (75, 7500, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 15),
  -- Graveler - Toxic - TM06
  (75, 7500, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 16),
  -- Graveler - Rock Smash - TM08
  (75, 7500, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 17),
  -- Graveler - Hidden Power - TM10
  (75, 7500, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 18),
  -- Graveler - Sunny Day - TM11
  (75, 7500, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 19),
  -- Graveler - Snore - TM13
  (75, 7500, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 20),
  -- Graveler - Protect - TM17
  (75, 7500, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 21),
  -- Graveler - Endure - TM20
  (75, 7500, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Graveler - Frustration - TM21
  (75, 7500, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Graveler - Earthquake - TM26
  (75, 7500, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 24),
  -- Graveler - Return - TM27
  (75, 7500, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 25),
  -- Graveler - Dig - TM28
  (75, 7500, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 26),
  -- Graveler - Mud-Slap - TM31
  (75, 7500, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 27),
  -- Graveler - Double Team - TM32
  (75, 7500, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 28),
  -- Graveler - Swagger - TM34
  (75, 7500, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 29),
  -- Graveler - Sleep Talk - TM35
  (75, 7500, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 30),
  -- Graveler - Sandstorm - TM37
  (75, 7500, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 31),
  -- Graveler - Fire Blast - TM38
  (75, 7500, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 32),
  -- Graveler - Defense Curl - TM40
  (75, 7500, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 33),
  -- Graveler - Rest - TM44
  (75, 7500, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 34),
  -- Graveler - Attract - TM45
  (75, 7500, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 35),
  -- Graveler - Fire Punch - TM48
  (75, 7500, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 36),
  -- Graveler - Strength - HM04
  (75, 7500, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 37),
  -- Golem - Tackle - Level 1
  (76, 7600, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golem - Defense Curl - Level 1
  (76, 7600, 111, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golem - Rock Throw - Level 1
  (76, 7600, 88, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golem - Magnitude - Level 1
  (76, 7600, 222, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golem - Defense Curl - Level 6
  (76, 7600, 111, 3, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Golem - Rock Throw - Level 11
  (76, 7600, 88, 3, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Golem - Magnitude - Level 16
  (76, 7600, 222, 3, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Golem - Self-Destruct - Level 21
  (76, 7600, 120, 3, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Golem - Harden - Level 27
  (76, 7600, 106, 3, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Golem - Rollout - Level 34
  (76, 7600, 205, 3, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Golem - Earthquake - Level 41
  (76, 7600, 89, 3, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Golem - Explosion - Level 48
  (76, 7600, 153, 3, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Golem - Dynamic Punch - TM01
  (76, 7600, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 13),
  -- Golem - Headbutt - TM02
  (76, 7600, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 14),
  -- Golem - Curse - TM03
  (76, 7600, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 15),
  -- Golem - Rollout - TM04
  (76, 7600, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 16),
  -- Golem - Roar - TM05
  (76, 7600, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 17),
  -- Golem - Toxic - TM06
  (76, 7600, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 18),
  -- Golem - Rock Smash - TM08
  (76, 7600, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 19),
  -- Golem - Hidden Power - TM10
  (76, 7600, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 20),
  -- Golem - Sunny Day - TM11
  (76, 7600, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 21),
  -- Golem - Snore - TM13
  (76, 7600, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 22),
  -- Golem - Hyper Beam - TM15
  (76, 7600, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 23),
  -- Golem - Protect - TM17
  (76, 7600, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 24),
  -- Golem - Endure - TM20
  (76, 7600, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 25),
  -- Golem - Frustration - TM21
  (76, 7600, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 26),
  -- Golem - Earthquake - TM26
  (76, 7600, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 27),
  -- Golem - Return - TM27
  (76, 7600, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 28),
  -- Golem - Dig - TM28
  (76, 7600, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 29),
  -- Golem - Mud-Slap - TM31
  (76, 7600, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 30),
  -- Golem - Double Team - TM32
  (76, 7600, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 31),
  -- Golem - Swagger - TM34
  (76, 7600, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 32),
  -- Golem - Sleep Talk - TM35
  (76, 7600, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 33),
  -- Golem - Sandstorm - TM37
  (76, 7600, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 34),
  -- Golem - Fire Blast - TM38
  (76, 7600, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 35),
  -- Golem - Defense Curl - TM40
  (76, 7600, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 36),
  -- Golem - Rest - TM44
  (76, 7600, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 37),
  -- Golem - Attract - TM45
  (76, 7600, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 38),
  -- Golem - Fire Punch - TM48
  (76, 7600, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 39),
  -- Golem - Fury Cutter - TM49
  (76, 7600, 210, 3, NULL, 2, NULL, NULL, 3002049, NULL, 40),
  -- Golem - Strength - HM04
  (76, 7600, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 41),
  -- Ponyta - Tackle - Level 1
  (77, 7700, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ponyta - Growl - Level 4
  (77, 7700, 45, 3, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Ponyta - Tail Whip - Level 8
  (77, 7700, 39, 3, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Ponyta - Ember - Level 13
  (77, 7700, 52, 3, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Ponyta - Stomp - Level 19
  (77, 7700, 23, 3, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Ponyta - Fire Spin - Level 26
  (77, 7700, 83, 3, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Ponyta - Take Down - Level 34
  (77, 7700, 36, 3, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Ponyta - Agility - Level 43
  (77, 7700, 97, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Ponyta - Fire Blast - Level 53
  (77, 7700, 126, 3, NULL, 1, 53, NULL, NULL, NULL, 9),
  -- Ponyta - Headbutt - TM02
  (77, 7700, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 10),
  -- Ponyta - Curse - TM03
  (77, 7700, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Ponyta - Toxic - TM06
  (77, 7700, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Ponyta - Hidden Power - TM10
  (77, 7700, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 13),
  -- Ponyta - Sunny Day - TM11
  (77, 7700, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 14),
  -- Ponyta - Snore - TM13
  (77, 7700, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 15),
  -- Ponyta - Protect - TM17
  (77, 7700, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 16),
  -- Ponyta - Endure - TM20
  (77, 7700, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 17),
  -- Ponyta - Frustration - TM21
  (77, 7700, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 18),
  -- Ponyta - Iron Tail - TM23
  (77, 7700, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 19),
  -- Ponyta - Return - TM27
  (77, 7700, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 20),
  -- Ponyta - Double Team - TM32
  (77, 7700, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 21),
  -- Ponyta - Swagger - TM34
  (77, 7700, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 22),
  -- Ponyta - Sleep Talk - TM35
  (77, 7700, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 23),
  -- Ponyta - Fire Blast - TM38
  (77, 7700, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 24),
  -- Ponyta - Swift - TM39
  (77, 7700, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 25),
  -- Ponyta - Rest - TM44
  (77, 7700, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 26),
  -- Ponyta - Attract - TM45
  (77, 7700, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 27),
  -- Ponyta - Charm - Egg Move
  (77, 7700, 204, 3, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Ponyta - Double Kick - Egg Move
  (77, 7700, 24, 3, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Ponyta - Flame Wheel - Egg Move
  (77, 7700, 172, 3, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Ponyta - Hypnosis - Egg Move
  (77, 7700, 95, 3, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Ponyta - Quick Attack - Egg Move
  (77, 7700, 98, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Ponyta - Thrash - Egg Move
  (77, 7700, 37, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Rapidash - Tackle - Level 1
  (78, 7800, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rapidash - Growl - Level 1
  (78, 7800, 45, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rapidash - Tail Whip - Level 1
  (78, 7800, 39, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rapidash - Ember - Level 1
  (78, 7800, 52, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rapidash - Growl - Level 4
  (78, 7800, 45, 3, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Rapidash - Tail Whip - Level 8
  (78, 7800, 39, 3, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Rapidash - Ember - Level 13
  (78, 7800, 52, 3, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Rapidash - Stomp - Level 19
  (78, 7800, 23, 3, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Rapidash - Fire Spin - Level 26
  (78, 7800, 83, 3, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Rapidash - Take Down - Level 34
  (78, 7800, 36, 3, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Rapidash - Fury Attack - Level 40
  (78, 7800, 31, 3, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Rapidash - Agility - Level 47
  (78, 7800, 97, 3, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Rapidash - Fire Blast - Level 61
  (78, 7800, 126, 3, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Rapidash - Headbutt - TM02
  (78, 7800, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 14),
  -- Rapidash - Curse - TM03
  (78, 7800, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 15),
  -- Rapidash - Toxic - TM06
  (78, 7800, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 16),
  -- Rapidash - Hidden Power - TM10
  (78, 7800, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 17),
  -- Rapidash - Sunny Day - TM11
  (78, 7800, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 18),
  -- Rapidash - Snore - TM13
  (78, 7800, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 19),
  -- Rapidash - Hyper Beam - TM15
  (78, 7800, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 20),
  -- Rapidash - Protect - TM17
  (78, 7800, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 21),
  -- Rapidash - Endure - TM20
  (78, 7800, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Rapidash - Frustration - TM21
  (78, 7800, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Rapidash - Iron Tail - TM23
  (78, 7800, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 24),
  -- Rapidash - Return - TM27
  (78, 7800, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 25),
  -- Rapidash - Double Team - TM32
  (78, 7800, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 26),
  -- Rapidash - Swagger - TM34
  (78, 7800, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 27),
  -- Rapidash - Sleep Talk - TM35
  (78, 7800, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 28),
  -- Rapidash - Fire Blast - TM38
  (78, 7800, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 29),
  -- Rapidash - Swift - TM39
  (78, 7800, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 30),
  -- Rapidash - Rest - TM44
  (78, 7800, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 31),
  -- Rapidash - Attract - TM45
  (78, 7800, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 32),
  -- Slowpoke - Curse - Level 1
  (79, 7900, 174, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowpoke - Tackle - Level 1
  (79, 7900, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowpoke - Growl - Level 6
  (79, 7900, 45, 3, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Slowpoke - Water Gun - Level 15
  (79, 7900, 55, 3, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Slowpoke - Confusion - Level 20
  (79, 7900, 93, 3, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Slowpoke - Disable - Level 29
  (79, 7900, 50, 3, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Slowpoke - Headbutt - Level 34
  (79, 7900, 29, 3, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Slowpoke - Amnesia - Level 43
  (79, 7900, 133, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Slowpoke - Psychic - Level 48
  (79, 7900, 94, 3, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Slowpoke - Headbutt - TM02
  (79, 7900, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 10),
  -- Slowpoke - Curse - TM03
  (79, 7900, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Slowpoke - Toxic - TM06
  (79, 7900, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Slowpoke - Zap Cannon - TM07
  (79, 7900, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 13),
  -- Slowpoke - Psych Up - TM09
  (79, 7900, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 14),
  -- Slowpoke - Hidden Power - TM10
  (79, 7900, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Slowpoke - Sunny Day - TM11
  (79, 7900, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 16),
  -- Slowpoke - Snore - TM13
  (79, 7900, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 17),
  -- Slowpoke - Blizzard - TM14
  (79, 7900, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 18),
  -- Slowpoke - Icy Wind - TM16
  (79, 7900, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 19),
  -- Slowpoke - Protect - TM17
  (79, 7900, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Slowpoke - Rain Dance - TM18
  (79, 7900, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 21),
  -- Slowpoke - Endure - TM20
  (79, 7900, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Slowpoke - Frustration - TM21
  (79, 7900, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Slowpoke - Iron Tail - TM23
  (79, 7900, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 24),
  -- Slowpoke - Earthquake - TM26
  (79, 7900, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 25),
  -- Slowpoke - Return - TM27
  (79, 7900, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 26),
  -- Slowpoke - Dig - TM28
  (79, 7900, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 27),
  -- Slowpoke - Psychic - TM29
  (79, 7900, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 28),
  -- Slowpoke - Shadow Ball - TM30
  (79, 7900, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 29),
  -- Slowpoke - Mud-Slap - TM31
  (79, 7900, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 30),
  -- Slowpoke - Double Team - TM32
  (79, 7900, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 31),
  -- Slowpoke - Swagger - TM34
  (79, 7900, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 32),
  -- Slowpoke - Sleep Talk - TM35
  (79, 7900, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 33),
  -- Slowpoke - Fire Blast - TM38
  (79, 7900, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 34),
  -- Slowpoke - Swift - TM39
  (79, 7900, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 35),
  -- Slowpoke - Dream Eater - TM42
  (79, 7900, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 36),
  -- Slowpoke - Rest - TM44
  (79, 7900, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 37),
  -- Slowpoke - Attract - TM45
  (79, 7900, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 38),
  -- Slowpoke - Nightmare - TM50
  (79, 7900, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 39),
  -- Slowpoke - Surf - HM03
  (79, 7900, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 40),
  -- Slowpoke - Strength - HM04
  (79, 7900, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 41),
  -- Slowpoke - Flash - HM05
  (79, 7900, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 42),
  -- Slowpoke - Belly Drum - Egg Move
  (79, 7900, 187, 3, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Slowpoke - Future Sight - Egg Move
  (79, 7900, 248, 3, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Slowpoke - Safeguard - Egg Move
  (79, 7900, 219, 3, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Slowpoke - Stomp - Egg Move
  (79, 7900, 23, 3, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Slowbro - Curse - Level 1
  (80, 8000, 174, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowbro - Tackle - Level 1
  (80, 8000, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowbro - Growl - Level 1
  (80, 8000, 45, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowbro - Water Gun - Level 1
  (80, 8000, 55, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowbro - Growl - Level 6
  (80, 8000, 45, 3, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Slowbro - Water Gun - Level 15
  (80, 8000, 55, 3, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Slowbro - Confusion - Level 20
  (80, 8000, 93, 3, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Slowbro - Disable - Level 29
  (80, 8000, 50, 3, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Slowbro - Headbutt - Level 34
  (80, 8000, 29, 3, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Slowbro - Withdraw - Level 37
  (80, 8000, 110, 3, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Slowbro - Amnesia - Level 46
  (80, 8000, 133, 3, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Slowbro - Psychic - Level 54
  (80, 8000, 94, 3, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Slowbro - Dynamic Punch - TM01
  (80, 8000, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 13),
  -- Slowbro - Headbutt - TM02
  (80, 8000, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 14),
  -- Slowbro - Curse - TM03
  (80, 8000, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 15),
  -- Slowbro - Toxic - TM06
  (80, 8000, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 16),
  -- Slowbro - Zap Cannon - TM07
  (80, 8000, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 17),
  -- Slowbro - Rock Smash - TM08
  (80, 8000, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 18),
  -- Slowbro - Psych Up - TM09
  (80, 8000, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 19),
  -- Slowbro - Hidden Power - TM10
  (80, 8000, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 20),
  -- Slowbro - Sunny Day - TM11
  (80, 8000, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 21),
  -- Slowbro - Snore - TM13
  (80, 8000, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 22),
  -- Slowbro - Blizzard - TM14
  (80, 8000, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 23),
  -- Slowbro - Hyper Beam - TM15
  (80, 8000, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 24),
  -- Slowbro - Icy Wind - TM16
  (80, 8000, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 25),
  -- Slowbro - Protect - TM17
  (80, 8000, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 26),
  -- Slowbro - Rain Dance - TM18
  (80, 8000, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 27),
  -- Slowbro - Endure - TM20
  (80, 8000, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 28),
  -- Slowbro - Frustration - TM21
  (80, 8000, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 29),
  -- Slowbro - Iron Tail - TM23
  (80, 8000, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 30),
  -- Slowbro - Earthquake - TM26
  (80, 8000, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 31),
  -- Slowbro - Return - TM27
  (80, 8000, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 32),
  -- Slowbro - Dig - TM28
  (80, 8000, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 33),
  -- Slowbro - Psychic - TM29
  (80, 8000, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 34),
  -- Slowbro - Shadow Ball - TM30
  (80, 8000, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 35),
  -- Slowbro - Mud-Slap - TM31
  (80, 8000, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 36),
  -- Slowbro - Double Team - TM32
  (80, 8000, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 37),
  -- Slowbro - Ice Punch - TM33
  (80, 8000, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 38),
  -- Slowbro - Swagger - TM34
  (80, 8000, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 39),
  -- Slowbro - Sleep Talk - TM35
  (80, 8000, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 40),
  -- Slowbro - Fire Blast - TM38
  (80, 8000, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 41),
  -- Slowbro - Swift - TM39
  (80, 8000, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 42),
  -- Slowbro - Dream Eater - TM42
  (80, 8000, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 43),
  -- Slowbro - Rest - TM44
  (80, 8000, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 44),
  -- Slowbro - Attract - TM45
  (80, 8000, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 45),
  -- Slowbro - Fury Cutter - TM49
  (80, 8000, 210, 3, NULL, 2, NULL, NULL, 3002049, NULL, 46),
  -- Slowbro - Nightmare - TM50
  (80, 8000, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 47),
  -- Slowbro - Surf - HM03
  (80, 8000, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 48),
  -- Slowbro - Strength - HM04
  (80, 8000, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 49),
  -- Slowbro - Flash - HM05
  (80, 8000, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 50),
  -- Magnemite - Tackle - Level 1
  (81, 8100, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnemite - Thunder Shock - Level 6
  (81, 8100, 84, 3, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Magnemite - Supersonic - Level 11
  (81, 8100, 48, 3, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Magnemite - Sonic Boom - Level 16
  (81, 8100, 49, 3, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Magnemite - Thunder Wave - Level 21
  (81, 8100, 86, 3, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Magnemite - Lock-On - Level 27
  (81, 8100, 199, 3, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Magnemite - Swift - Level 33
  (81, 8100, 129, 3, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Magnemite - Screech - Level 39
  (81, 8100, 103, 3, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Magnemite - Zap Cannon - Level 45
  (81, 8100, 192, 3, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Magnemite - Curse - TM03
  (81, 8100, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Magnemite - Rollout - TM04
  (81, 8100, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 11),
  -- Magnemite - Toxic - TM06
  (81, 8100, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Magnemite - Zap Cannon - TM07
  (81, 8100, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 13),
  -- Magnemite - Hidden Power - TM10
  (81, 8100, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Magnemite - Snore - TM13
  (81, 8100, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 15),
  -- Magnemite - Protect - TM17
  (81, 8100, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 16),
  -- Magnemite - Rain Dance - TM18
  (81, 8100, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 17),
  -- Magnemite - Endure - TM20
  (81, 8100, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 18),
  -- Magnemite - Frustration - TM21
  (81, 8100, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 19),
  -- Magnemite - Thunder - TM25
  (81, 8100, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 20),
  -- Magnemite - Return - TM27
  (81, 8100, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 21),
  -- Magnemite - Double Team - TM32
  (81, 8100, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 22),
  -- Magnemite - Swagger - TM34
  (81, 8100, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 23),
  -- Magnemite - Sleep Talk - TM35
  (81, 8100, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 24),
  -- Magnemite - Swift - TM39
  (81, 8100, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 25),
  -- Magnemite - Rest - TM44
  (81, 8100, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 26),
  -- Magnemite - Flash - HM05
  (81, 8100, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 27),
  -- Magneton - Tackle - Level 1
  (82, 8200, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magneton - Thunder Shock - Level 1
  (82, 8200, 84, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magneton - Supersonic - Level 1
  (82, 8200, 48, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magneton - Sonic Boom - Level 1
  (82, 8200, 49, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magneton - Thunder Shock - Level 6
  (82, 8200, 84, 3, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Magneton - Supersonic - Level 11
  (82, 8200, 48, 3, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Magneton - Sonic Boom - Level 16
  (82, 8200, 49, 3, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Magneton - Thunder Wave - Level 21
  (82, 8200, 86, 3, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Magneton - Lock-On - Level 27
  (82, 8200, 199, 3, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Magneton - Swift - Level 35
  (82, 8200, 129, 3, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Magneton - Screech - Level 43
  (82, 8200, 103, 3, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Magneton - Zap Cannon - Level 53
  (82, 8200, 192, 3, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Magneton - Curse - TM03
  (82, 8200, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 13),
  -- Magneton - Rollout - TM04
  (82, 8200, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 14),
  -- Magneton - Toxic - TM06
  (82, 8200, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 15),
  -- Magneton - Zap Cannon - TM07
  (82, 8200, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 16),
  -- Magneton - Hidden Power - TM10
  (82, 8200, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 17),
  -- Magneton - Snore - TM13
  (82, 8200, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 18),
  -- Magneton - Hyper Beam - TM15
  (82, 8200, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 19),
  -- Magneton - Protect - TM17
  (82, 8200, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Magneton - Rain Dance - TM18
  (82, 8200, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 21),
  -- Magneton - Endure - TM20
  (82, 8200, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Magneton - Frustration - TM21
  (82, 8200, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Magneton - Thunder - TM25
  (82, 8200, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 24),
  -- Magneton - Return - TM27
  (82, 8200, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 25),
  -- Magneton - Double Team - TM32
  (82, 8200, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 26),
  -- Magneton - Swagger - TM34
  (82, 8200, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 27),
  -- Magneton - Sleep Talk - TM35
  (82, 8200, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 28),
  -- Magneton - Swift - TM39
  (82, 8200, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 29),
  -- Magneton - Rest - TM44
  (82, 8200, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 30),
  -- Magneton - Flash - HM05
  (82, 8200, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 31),
  -- Farfetch'd - Peck - Level 1
  (83, 8300, 64, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Farfetch'd - Sand Attack - Level 7
  (83, 8300, 28, 3, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Farfetch'd - Leer - Level 13
  (83, 8300, 43, 3, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Farfetch'd - Fury Attack - Level 19
  (83, 8300, 31, 3, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Farfetch'd - Swords Dance - Level 25
  (83, 8300, 14, 3, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Farfetch'd - Agility - Level 31
  (83, 8300, 97, 3, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Farfetch'd - Slash - Level 37
  (83, 8300, 163, 3, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Farfetch'd - False Swipe - Level 44
  (83, 8300, 206, 3, NULL, 1, 44, NULL, NULL, NULL, 8),
  -- Farfetch'd - Headbutt - TM02
  (83, 8300, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 9),
  -- Farfetch'd - Curse - TM03
  (83, 8300, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Farfetch'd - Toxic - TM06
  (83, 8300, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Farfetch'd - Psych Up - TM09
  (83, 8300, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 12),
  -- Farfetch'd - Hidden Power - TM10
  (83, 8300, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 13),
  -- Farfetch'd - Sunny Day - TM11
  (83, 8300, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 14),
  -- Farfetch'd - Snore - TM13
  (83, 8300, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 15),
  -- Farfetch'd - Protect - TM17
  (83, 8300, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 16),
  -- Farfetch'd - Endure - TM20
  (83, 8300, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 17),
  -- Farfetch'd - Frustration - TM21
  (83, 8300, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 18),
  -- Farfetch'd - Iron Tail - TM23
  (83, 8300, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 19),
  -- Farfetch'd - Return - TM27
  (83, 8300, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 20),
  -- Farfetch'd - Mud-Slap - TM31
  (83, 8300, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 21),
  -- Farfetch'd - Double Team - TM32
  (83, 8300, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 22),
  -- Farfetch'd - Swagger - TM34
  (83, 8300, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 23),
  -- Farfetch'd - Sleep Talk - TM35
  (83, 8300, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 24),
  -- Farfetch'd - Swift - TM39
  (83, 8300, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 25),
  -- Farfetch'd - Detect - TM43
  (83, 8300, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 26),
  -- Farfetch'd - Rest - TM44
  (83, 8300, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 27),
  -- Farfetch'd - Attract - TM45
  (83, 8300, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 28),
  -- Farfetch'd - Thief - TM46
  (83, 8300, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 29),
  -- Farfetch'd - Steel Wing - TM47
  (83, 8300, 211, 3, NULL, 2, NULL, NULL, 3002047, NULL, 30),
  -- Farfetch'd - Cut - HM01
  (83, 8300, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 31),
  -- Farfetch'd - Fly - HM02
  (83, 8300, 19, 3, NULL, 3, NULL, NULL, 3003002, NULL, 32),
  -- Farfetch'd - Flail - Egg Move
  (83, 8300, 175, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Farfetch'd - Foresight - Egg Move
  (83, 8300, 193, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Farfetch'd - Gust - Egg Move
  (83, 8300, 16, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Farfetch'd - Mirror Move - Egg Move
  (83, 8300, 119, 3, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Farfetch'd - Quick Attack - Egg Move
  (83, 8300, 98, 3, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Farfetch'd - Steel Wing - Egg Move
  (83, 8300, 211, 3, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Doduo - Peck - Level 1
  (84, 8400, 64, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Doduo - Growl - Level 1
  (84, 8400, 45, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Doduo - Pursuit - Level 9
  (84, 8400, 228, 3, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Doduo - Fury Attack - Level 13
  (84, 8400, 31, 3, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Doduo - Tri Attack - Level 21
  (84, 8400, 161, 3, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Doduo - Rage - Level 25
  (84, 8400, 99, 3, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Doduo - Drill Peck - Level 33
  (84, 8400, 65, 3, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Doduo - Agility - Level 37
  (84, 8400, 97, 3, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Doduo - Curse - TM03
  (84, 8400, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 9),
  -- Doduo - Toxic - TM06
  (84, 8400, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 10),
  -- Doduo - Hidden Power - TM10
  (84, 8400, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 11),
  -- Doduo - Sunny Day - TM11
  (84, 8400, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 12),
  -- Doduo - Snore - TM13
  (84, 8400, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 13),
  -- Doduo - Protect - TM17
  (84, 8400, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 14),
  -- Doduo - Endure - TM20
  (84, 8400, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 15),
  -- Doduo - Frustration - TM21
  (84, 8400, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 16),
  -- Doduo - Return - TM27
  (84, 8400, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 17),
  -- Doduo - Mud-Slap - TM31
  (84, 8400, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 18),
  -- Doduo - Double Team - TM32
  (84, 8400, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 19),
  -- Doduo - Swagger - TM34
  (84, 8400, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 20),
  -- Doduo - Sleep Talk - TM35
  (84, 8400, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 21),
  -- Doduo - Swift - TM39
  (84, 8400, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 22),
  -- Doduo - Rest - TM44
  (84, 8400, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 23),
  -- Doduo - Attract - TM45
  (84, 8400, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 24),
  -- Doduo - Thief - TM46
  (84, 8400, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 25),
  -- Doduo - Steel Wing - TM47
  (84, 8400, 211, 3, NULL, 2, NULL, NULL, 3002047, NULL, 26),
  -- Doduo - Fly - HM02
  (84, 8400, 19, 3, NULL, 3, NULL, NULL, 3003002, NULL, 27),
  -- Doduo - Feint Attack - Egg Move
  (84, 8400, 185, 3, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Doduo - Flail - Egg Move
  (84, 8400, 175, 3, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Doduo - Haze - Egg Move
  (84, 8400, 114, 3, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Doduo - Quick Attack - Egg Move
  (84, 8400, 98, 3, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Doduo - Supersonic - Egg Move
  (84, 8400, 48, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Dodrio - Peck - Level 1
  (85, 8500, 64, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dodrio - Growl - Level 1
  (85, 8500, 45, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dodrio - Pursuit - Level 1
  (85, 8500, 228, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dodrio - Fury Attack - Level 1
  (85, 8500, 31, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dodrio - Pursuit - Level 9
  (85, 8500, 228, 3, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Dodrio - Fury Attack - Level 13
  (85, 8500, 31, 3, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Dodrio - Tri Attack - Level 21
  (85, 8500, 161, 3, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Dodrio - Rage - Level 25
  (85, 8500, 99, 3, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Dodrio - Drill Peck - Level 38
  (85, 8500, 65, 3, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Dodrio - Agility - Level 47
  (85, 8500, 97, 3, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Dodrio - Curse - TM03
  (85, 8500, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Dodrio - Toxic - TM06
  (85, 8500, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Dodrio - Hidden Power - TM10
  (85, 8500, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 13),
  -- Dodrio - Sunny Day - TM11
  (85, 8500, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 14),
  -- Dodrio - Snore - TM13
  (85, 8500, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 15),
  -- Dodrio - Hyper Beam - TM15
  (85, 8500, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 16),
  -- Dodrio - Protect - TM17
  (85, 8500, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Dodrio - Endure - TM20
  (85, 8500, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 18),
  -- Dodrio - Frustration - TM21
  (85, 8500, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 19),
  -- Dodrio - Return - TM27
  (85, 8500, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 20),
  -- Dodrio - Mud-Slap - TM31
  (85, 8500, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 21),
  -- Dodrio - Double Team - TM32
  (85, 8500, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 22),
  -- Dodrio - Swagger - TM34
  (85, 8500, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 23),
  -- Dodrio - Sleep Talk - TM35
  (85, 8500, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 24),
  -- Dodrio - Swift - TM39
  (85, 8500, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 25),
  -- Dodrio - Rest - TM44
  (85, 8500, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 26),
  -- Dodrio - Attract - TM45
  (85, 8500, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 27),
  -- Dodrio - Thief - TM46
  (85, 8500, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 28),
  -- Dodrio - Steel Wing - TM47
  (85, 8500, 211, 3, NULL, 2, NULL, NULL, 3002047, NULL, 29),
  -- Dodrio - Fly - HM02
  (85, 8500, 19, 3, NULL, 3, NULL, NULL, 3003002, NULL, 30),
  -- Seel - Headbutt - Level 1
  (86, 8600, 29, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seel - Growl - Level 5
  (86, 8600, 45, 3, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Seel - Aurora Beam - Level 16
  (86, 8600, 62, 3, NULL, 1, 16, NULL, NULL, NULL, 3),
  -- Seel - Rest - Level 21
  (86, 8600, 156, 3, NULL, 1, 21, NULL, NULL, NULL, 4),
  -- Seel - Take Down - Level 32
  (86, 8600, 36, 3, NULL, 1, 32, NULL, NULL, NULL, 5),
  -- Seel - Ice Beam - Level 37
  (86, 8600, 58, 3, NULL, 1, 37, NULL, NULL, NULL, 6),
  -- Seel - Safeguard - Level 48
  (86, 8600, 219, 3, NULL, 1, 48, NULL, NULL, NULL, 7),
  -- Seel - Headbutt - TM02
  (86, 8600, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 8),
  -- Seel - Curse - TM03
  (86, 8600, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 9),
  -- Seel - Toxic - TM06
  (86, 8600, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 10),
  -- Seel - Hidden Power - TM10
  (86, 8600, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 11),
  -- Seel - Snore - TM13
  (86, 8600, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 12),
  -- Seel - Blizzard - TM14
  (86, 8600, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 13),
  -- Seel - Icy Wind - TM16
  (86, 8600, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 14),
  -- Seel - Protect - TM17
  (86, 8600, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 15),
  -- Seel - Rain Dance - TM18
  (86, 8600, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 16),
  -- Seel - Endure - TM20
  (86, 8600, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 17),
  -- Seel - Frustration - TM21
  (86, 8600, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 18),
  -- Seel - Return - TM27
  (86, 8600, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 19),
  -- Seel - Double Team - TM32
  (86, 8600, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 20),
  -- Seel - Swagger - TM34
  (86, 8600, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 21),
  -- Seel - Sleep Talk - TM35
  (86, 8600, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 22),
  -- Seel - Rest - TM44
  (86, 8600, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 23),
  -- Seel - Attract - TM45
  (86, 8600, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 24),
  -- Seel - Surf - HM03
  (86, 8600, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 25),
  -- Seel - Whirlpool - HM06
  (86, 8600, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 26),
  -- Seel - Waterfall - HM07
  (86, 8600, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 27),
  -- Seel - Disable - Egg Move
  (86, 8600, 50, 3, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Seel - Encore - Egg Move
  (86, 8600, 227, 3, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Seel - Lick - Egg Move
  (86, 8600, 122, 3, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Seel - Peck - Egg Move
  (86, 8600, 64, 3, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Seel - Perish Song - Egg Move
  (86, 8600, 195, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Seel - Slam - Egg Move
  (86, 8600, 21, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Dewgong - Headbutt - Level 1
  (87, 8700, 29, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dewgong - Growl - Level 1
  (87, 8700, 45, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dewgong - Aurora Beam - Level 1
  (87, 8700, 62, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dewgong - Growl - Level 5
  (87, 8700, 45, 3, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Dewgong - Aurora Beam - Level 16
  (87, 8700, 62, 3, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Dewgong - Rest - Level 21
  (87, 8700, 156, 3, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Dewgong - Take Down - Level 32
  (87, 8700, 36, 3, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Dewgong - Ice Beam - Level 43
  (87, 8700, 58, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Dewgong - Safeguard - Level 60
  (87, 8700, 219, 3, NULL, 1, 60, NULL, NULL, NULL, 9),
  -- Dewgong - Headbutt - TM02
  (87, 8700, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 10),
  -- Dewgong - Curse - TM03
  (87, 8700, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Dewgong - Toxic - TM06
  (87, 8700, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Dewgong - Hidden Power - TM10
  (87, 8700, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 13),
  -- Dewgong - Snore - TM13
  (87, 8700, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 14),
  -- Dewgong - Blizzard - TM14
  (87, 8700, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 15),
  -- Dewgong - Hyper Beam - TM15
  (87, 8700, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 16),
  -- Dewgong - Icy Wind - TM16
  (87, 8700, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 17),
  -- Dewgong - Protect - TM17
  (87, 8700, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 18),
  -- Dewgong - Rain Dance - TM18
  (87, 8700, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 19),
  -- Dewgong - Endure - TM20
  (87, 8700, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 20),
  -- Dewgong - Frustration - TM21
  (87, 8700, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 21),
  -- Dewgong - Return - TM27
  (87, 8700, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 22),
  -- Dewgong - Double Team - TM32
  (87, 8700, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 23),
  -- Dewgong - Swagger - TM34
  (87, 8700, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 24),
  -- Dewgong - Sleep Talk - TM35
  (87, 8700, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 25),
  -- Dewgong - Rest - TM44
  (87, 8700, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 26),
  -- Dewgong - Attract - TM45
  (87, 8700, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 27),
  -- Dewgong - Surf - HM03
  (87, 8700, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 28),
  -- Dewgong - Whirlpool - HM06
  (87, 8700, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 29),
  -- Dewgong - Waterfall - HM07
  (87, 8700, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 30),
  -- Grimer - Poison Gas - Level 1
  (88, 8800, 139, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grimer - Pound - Level 1
  (88, 8800, 1, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grimer - Harden - Level 5
  (88, 8800, 106, 3, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Grimer - Disable - Level 10
  (88, 8800, 50, 3, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Grimer - Sludge - Level 16
  (88, 8800, 124, 3, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Grimer - Minimize - Level 23
  (88, 8800, 107, 3, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Grimer - Screech - Level 31
  (88, 8800, 103, 3, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Grimer - Acid Armor - Level 40
  (88, 8800, 151, 3, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Grimer - Sludge Bomb - Level 50
  (88, 8800, 188, 3, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Grimer - Dynamic Punch - TM01
  (88, 8800, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 10),
  -- Grimer - Curse - TM03
  (88, 8800, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Grimer - Toxic - TM06
  (88, 8800, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Grimer - Zap Cannon - TM07
  (88, 8800, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 13),
  -- Grimer - Hidden Power - TM10
  (88, 8800, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Grimer - Sunny Day - TM11
  (88, 8800, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 15),
  -- Grimer - Snore - TM13
  (88, 8800, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Grimer - Protect - TM17
  (88, 8800, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Grimer - Giga Drain - TM19
  (88, 8800, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 18),
  -- Grimer - Endure - TM20
  (88, 8800, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 19),
  -- Grimer - Frustration - TM21
  (88, 8800, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 20),
  -- Grimer - Thunder - TM25
  (88, 8800, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 21),
  -- Grimer - Return - TM27
  (88, 8800, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 22),
  -- Grimer - Mud-Slap - TM31
  (88, 8800, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 23),
  -- Grimer - Double Team - TM32
  (88, 8800, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 24),
  -- Grimer - Ice Punch - TM33
  (88, 8800, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 25),
  -- Grimer - Swagger - TM34
  (88, 8800, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Grimer - Sleep Talk - TM35
  (88, 8800, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Grimer - Sludge Bomb - TM36
  (88, 8800, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 28),
  -- Grimer - Fire Blast - TM38
  (88, 8800, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 29),
  -- Grimer - Thunder Punch - TM41
  (88, 8800, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 30),
  -- Grimer - Rest - TM44
  (88, 8800, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 31),
  -- Grimer - Attract - TM45
  (88, 8800, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 32),
  -- Grimer - Thief - TM46
  (88, 8800, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 33),
  -- Grimer - Fire Punch - TM48
  (88, 8800, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 34),
  -- Grimer - Haze - Egg Move
  (88, 8800, 114, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Grimer - Lick - Egg Move
  (88, 8800, 122, 3, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Grimer - Mean Look - Egg Move
  (88, 8800, 212, 3, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Muk - Poison Gas - Level 1
  (89, 8900, 139, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Muk - Pound - Level 1
  (89, 8900, 1, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Muk - Harden - Level 1
  (89, 8900, 106, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Muk - Harden - Level 33
  (89, 8900, 106, 3, NULL, 1, 33, NULL, NULL, NULL, 4),
  -- Muk - Disable - Level 37
  (89, 8900, 50, 3, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Muk - Sludge - Level 45
  (89, 8900, 124, 3, NULL, 1, 45, NULL, NULL, NULL, 6),
  -- Muk - Minimize - Level 23
  (89, 8900, 107, 3, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Muk - Screech - Level 31
  (89, 8900, 103, 3, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Muk - Acid Armor - Level 45
  (89, 8900, 151, 3, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Muk - Sludge Bomb - Level 60
  (89, 8900, 188, 3, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Muk - Dynamic Punch - TM01
  (89, 8900, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 11),
  -- Muk - Curse - TM03
  (89, 8900, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Muk - Toxic - TM06
  (89, 8900, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Muk - Zap Cannon - TM07
  (89, 8900, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 14),
  -- Muk - Hidden Power - TM10
  (89, 8900, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Muk - Sunny Day - TM11
  (89, 8900, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 16),
  -- Muk - Snore - TM13
  (89, 8900, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 17),
  -- Muk - Hyper Beam - TM15
  (89, 8900, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 18),
  -- Muk - Protect - TM17
  (89, 8900, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Muk - Giga Drain - TM19
  (89, 8900, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 20),
  -- Muk - Endure - TM20
  (89, 8900, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Muk - Frustration - TM21
  (89, 8900, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Muk - Thunder - TM25
  (89, 8900, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 23),
  -- Muk - Return - TM27
  (89, 8900, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 24),
  -- Muk - Mud-Slap - TM31
  (89, 8900, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 25),
  -- Muk - Double Team - TM32
  (89, 8900, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 26),
  -- Muk - Ice Punch - TM33
  (89, 8900, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 27),
  -- Muk - Swagger - TM34
  (89, 8900, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 28),
  -- Muk - Sleep Talk - TM35
  (89, 8900, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 29),
  -- Muk - Sludge Bomb - TM36
  (89, 8900, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 30),
  -- Muk - Fire Blast - TM38
  (89, 8900, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 31),
  -- Muk - Thunder Punch - TM41
  (89, 8900, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 32),
  -- Muk - Rest - TM44
  (89, 8900, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 33),
  -- Muk - Attract - TM45
  (89, 8900, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 34),
  -- Muk - Thief - TM46
  (89, 8900, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 35),
  -- Muk - Fire Punch - TM48
  (89, 8900, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 36),
  -- Shellder - Tackle - Level 1
  (90, 9000, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shellder - Withdraw - Level 1
  (90, 9000, 110, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shellder - Supersonic - Level 9
  (90, 9000, 48, 3, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Shellder - Aurora Beam - Level 17
  (90, 9000, 62, 3, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Shellder - Protect - Level 25
  (90, 9000, 182, 3, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Shellder - Leer - Level 33
  (90, 9000, 43, 3, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Shellder - Clamp - Level 41
  (90, 9000, 128, 3, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Shellder - Ice Beam - Level 49
  (90, 9000, 58, 3, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Shellder - Curse - TM03
  (90, 9000, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 9),
  -- Shellder - Toxic - TM06
  (90, 9000, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 10),
  -- Shellder - Hidden Power - TM10
  (90, 9000, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 11),
  -- Shellder - Snore - TM13
  (90, 9000, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 12),
  -- Shellder - Blizzard - TM14
  (90, 9000, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 13),
  -- Shellder - Icy Wind - TM16
  (90, 9000, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 14),
  -- Shellder - Protect - TM17
  (90, 9000, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 15),
  -- Shellder - Rain Dance - TM18
  (90, 9000, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 16),
  -- Shellder - Endure - TM20
  (90, 9000, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 17),
  -- Shellder - Frustration - TM21
  (90, 9000, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 18),
  -- Shellder - Return - TM27
  (90, 9000, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 19),
  -- Shellder - Double Team - TM32
  (90, 9000, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 20),
  -- Shellder - Swagger - TM34
  (90, 9000, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 21),
  -- Shellder - Sleep Talk - TM35
  (90, 9000, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 22),
  -- Shellder - Swift - TM39
  (90, 9000, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 23),
  -- Shellder - Rest - TM44
  (90, 9000, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 24),
  -- Shellder - Attract - TM45
  (90, 9000, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 25),
  -- Shellder - Surf - HM03
  (90, 9000, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 26),
  -- Shellder - Whirlpool - HM06
  (90, 9000, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 27),
  -- Shellder - Barrier - Egg Move
  (90, 9000, 112, 3, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Shellder - Bubble Beam - Egg Move
  (90, 9000, 61, 3, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Shellder - Rapid Spin - Egg Move
  (90, 9000, 229, 3, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Shellder - Screech - Egg Move
  (90, 9000, 103, 3, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Shellder - Take Down - Egg Move
  (90, 9000, 36, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Cloyster - Withdraw - Level 1
  (91, 9100, 110, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cloyster - Supersonic - Level 1
  (91, 9100, 48, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cloyster - Aurora Beam - Level 1
  (91, 9100, 62, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cloyster - Protect - Level 1
  (91, 9100, 182, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cloyster - Spike Cannon - Level 41
  (91, 9100, 131, 3, NULL, 1, 41, NULL, NULL, NULL, 5),
  -- Cloyster - Curse - TM03
  (91, 9100, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 6),
  -- Cloyster - Toxic - TM06
  (91, 9100, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 7),
  -- Cloyster - Hidden Power - TM10
  (91, 9100, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 8),
  -- Cloyster - Snore - TM13
  (91, 9100, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 9),
  -- Cloyster - Blizzard - TM14
  (91, 9100, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 10),
  -- Cloyster - Hyper Beam - TM15
  (91, 9100, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 11),
  -- Cloyster - Icy Wind - TM16
  (91, 9100, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 12),
  -- Cloyster - Protect - TM17
  (91, 9100, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 13),
  -- Cloyster - Rain Dance - TM18
  (91, 9100, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 14),
  -- Cloyster - Endure - TM20
  (91, 9100, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 15),
  -- Cloyster - Frustration - TM21
  (91, 9100, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 16),
  -- Cloyster - Return - TM27
  (91, 9100, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 17),
  -- Cloyster - Double Team - TM32
  (91, 9100, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 18),
  -- Cloyster - Swagger - TM34
  (91, 9100, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 19),
  -- Cloyster - Sleep Talk - TM35
  (91, 9100, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 20),
  -- Cloyster - Swift - TM39
  (91, 9100, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 21),
  -- Cloyster - Rest - TM44
  (91, 9100, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 22),
  -- Cloyster - Attract - TM45
  (91, 9100, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 23),
  -- Cloyster - Surf - HM03
  (91, 9100, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 24),
  -- Cloyster - Whirlpool - HM06
  (91, 9100, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 25),
  -- Gastly - Hypnosis - Level 1
  (92, 9200, 95, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastly - Lick - Level 1
  (92, 9200, 122, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gastly - Spite - Level 8
  (92, 9200, 180, 3, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Gastly - Mean Look - Level 13
  (92, 9200, 212, 3, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Gastly - Curse - Level 16
  (92, 9200, 174, 3, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Gastly - Night Shade - Level 21
  (92, 9200, 101, 3, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Gastly - Confuse Ray - Level 28
  (92, 9200, 109, 3, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Gastly - Dream Eater - Level 33
  (92, 9200, 138, 3, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Gastly - Destiny Bond - Level 36
  (92, 9200, 194, 3, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Gastly - Curse - TM03
  (92, 9200, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Gastly - Toxic - TM06
  (92, 9200, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Gastly - Zap Cannon - TM07
  (92, 9200, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 12),
  -- Gastly - Psych Up - TM09
  (92, 9200, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 13),
  -- Gastly - Hidden Power - TM10
  (92, 9200, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Gastly - Sunny Day - TM11
  (92, 9200, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 15),
  -- Gastly - Snore - TM13
  (92, 9200, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Gastly - Protect - TM17
  (92, 9200, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Gastly - Rain Dance - TM18
  (92, 9200, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 18),
  -- Gastly - Giga Drain - TM19
  (92, 9200, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 19),
  -- Gastly - Endure - TM20
  (92, 9200, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 20),
  -- Gastly - Frustration - TM21
  (92, 9200, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 21),
  -- Gastly - Thunder - TM25
  (92, 9200, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 22),
  -- Gastly - Return - TM27
  (92, 9200, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 23),
  -- Gastly - Psychic - TM29
  (92, 9200, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 24),
  -- Gastly - Shadow Ball - TM30
  (92, 9200, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 25),
  -- Gastly - Double Team - TM32
  (92, 9200, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 26),
  -- Gastly - Swagger - TM34
  (92, 9200, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 27),
  -- Gastly - Sleep Talk - TM35
  (92, 9200, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 28),
  -- Gastly - Dream Eater - TM42
  (92, 9200, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 29),
  -- Gastly - Rest - TM44
  (92, 9200, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 30),
  -- Gastly - Attract - TM45
  (92, 9200, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 31),
  -- Gastly - Thief - TM46
  (92, 9200, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 32),
  -- Gastly - Nightmare - TM50
  (92, 9200, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 33),
  -- Gastly - Haze - Egg Move
  (92, 9200, 114, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Gastly - Perish Song - Egg Move
  (92, 9200, 195, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Gastly - Psywave - Egg Move
  (92, 9200, 149, 3, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Haunter - Hypnosis - Level 1
  (93, 9300, 95, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Haunter - Lick - Level 1
  (93, 9300, 122, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Haunter - Spite - Level 1
  (93, 9300, 180, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Haunter - Spite - Level 8
  (93, 9300, 180, 3, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Haunter - Mean Look - Level 13
  (93, 9300, 212, 3, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Haunter - Curse - Level 16
  (93, 9300, 174, 3, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Haunter - Night Shade - Level 21
  (93, 9300, 101, 3, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Haunter - Confuse Ray - Level 31
  (93, 9300, 109, 3, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Haunter - Dream Eater - Level 39
  (93, 9300, 138, 3, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Haunter - Destiny Bond - Level 48
  (93, 9300, 194, 3, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Haunter - Curse - TM03
  (93, 9300, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Haunter - Toxic - TM06
  (93, 9300, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Haunter - Zap Cannon - TM07
  (93, 9300, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 13),
  -- Haunter - Psych Up - TM09
  (93, 9300, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 14),
  -- Haunter - Hidden Power - TM10
  (93, 9300, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Haunter - Sunny Day - TM11
  (93, 9300, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 16),
  -- Haunter - Snore - TM13
  (93, 9300, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 17),
  -- Haunter - Protect - TM17
  (93, 9300, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 18),
  -- Haunter - Rain Dance - TM18
  (93, 9300, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 19),
  -- Haunter - Giga Drain - TM19
  (93, 9300, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 20),
  -- Haunter - Endure - TM20
  (93, 9300, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Haunter - Frustration - TM21
  (93, 9300, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Haunter - Thunder - TM25
  (93, 9300, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 23),
  -- Haunter - Return - TM27
  (93, 9300, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 24),
  -- Haunter - Psychic - TM29
  (93, 9300, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 25),
  -- Haunter - Shadow Ball - TM30
  (93, 9300, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 26),
  -- Haunter - Double Team - TM32
  (93, 9300, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 27),
  -- Haunter - Swagger - TM34
  (93, 9300, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 28),
  -- Haunter - Sleep Talk - TM35
  (93, 9300, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 29),
  -- Haunter - Dream Eater - TM42
  (93, 9300, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 30),
  -- Haunter - Rest - TM44
  (93, 9300, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 31),
  -- Haunter - Attract - TM45
  (93, 9300, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 32),
  -- Haunter - Thief - TM46
  (93, 9300, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 33),
  -- Haunter - Nightmare - TM50
  (93, 9300, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 34),
  -- Gengar - Hypnosis - Level 1
  (94, 9400, 95, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gengar - Lick - Level 1
  (94, 9400, 122, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gengar - Spite - Level 1
  (94, 9400, 180, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gengar - Spite - Level 8
  (94, 9400, 180, 3, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Gengar - Mean Look - Level 13
  (94, 9400, 212, 3, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Gengar - Curse - Level 16
  (94, 9400, 174, 3, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gengar - Night Shade - Level 21
  (94, 9400, 101, 3, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Gengar - Confuse Ray - Level 31
  (94, 9400, 109, 3, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Gengar - Dream Eater - Level 39
  (94, 9400, 138, 3, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Gengar - Destiny Bond - Level 48
  (94, 9400, 194, 3, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Gengar - Dynamic Punch - TM01
  (94, 9400, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 11),
  -- Gengar - Headbutt - TM02
  (94, 9400, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 12),
  -- Gengar - Curse - TM03
  (94, 9400, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 13),
  -- Gengar - Toxic - TM06
  (94, 9400, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Gengar - Zap Cannon - TM07
  (94, 9400, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 15),
  -- Gengar - Rock Smash - TM08
  (94, 9400, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 16),
  -- Gengar - Psych Up - TM09
  (94, 9400, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 17),
  -- Gengar - Hidden Power - TM10
  (94, 9400, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 18),
  -- Gengar - Sunny Day - TM11
  (94, 9400, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 19),
  -- Gengar - Snore - TM13
  (94, 9400, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 20),
  -- Gengar - Hyper Beam - TM15
  (94, 9400, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 21),
  -- Gengar - Protect - TM17
  (94, 9400, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 22),
  -- Gengar - Rain Dance - TM18
  (94, 9400, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 23),
  -- Gengar - Giga Drain - TM19
  (94, 9400, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 24),
  -- Gengar - Endure - TM20
  (94, 9400, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 25),
  -- Gengar - Frustration - TM21
  (94, 9400, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 26),
  -- Gengar - Thunder - TM25
  (94, 9400, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 27),
  -- Gengar - Return - TM27
  (94, 9400, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 28),
  -- Gengar - Psychic - TM29
  (94, 9400, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 29),
  -- Gengar - Shadow Ball - TM30
  (94, 9400, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 30),
  -- Gengar - Double Team - TM32
  (94, 9400, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 31),
  -- Gengar - Ice Punch - TM33
  (94, 9400, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 32),
  -- Gengar - Swagger - TM34
  (94, 9400, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 33),
  -- Gengar - Sleep Talk - TM35
  (94, 9400, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 34),
  -- Gengar - Thunder Punch - TM41
  (94, 9400, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 35),
  -- Gengar - Dream Eater - TM42
  (94, 9400, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 36),
  -- Gengar - Rest - TM44
  (94, 9400, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 37),
  -- Gengar - Attract - TM45
  (94, 9400, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 38),
  -- Gengar - Thief - TM46
  (94, 9400, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 39),
  -- Gengar - Fire Punch - TM48
  (94, 9400, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 40),
  -- Gengar - Nightmare - TM50
  (94, 9400, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 41),
  -- Gengar - Strength - HM04
  (94, 9400, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 42),
  -- Onix - Tackle - Level 1
  (95, 9500, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Onix - Screech - Level 1
  (95, 9500, 103, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Onix - Bind - Level 10
  (95, 9500, 20, 3, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Onix - Rock Throw - Level 14
  (95, 9500, 88, 3, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Onix - Harden - Level 23
  (95, 9500, 106, 3, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Onix - Rage - Level 27
  (95, 9500, 99, 3, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Onix - Sandstorm - Level 36
  (95, 9500, 201, 3, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Onix - Slam - Level 40
  (95, 9500, 21, 3, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Onix - Headbutt - TM02
  (95, 9500, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 9),
  -- Onix - Curse - TM03
  (95, 9500, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Onix - Roar - TM05
  (95, 9500, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 11),
  -- Onix - Toxic - TM06
  (95, 9500, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Onix - Rock Smash - TM08
  (95, 9500, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 13),
  -- Onix - Hidden Power - TM10
  (95, 9500, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Onix - Sunny Day - TM11
  (95, 9500, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 15),
  -- Onix - Snore - TM13
  (95, 9500, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Onix - Protect - TM17
  (95, 9500, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Onix - Endure - TM20
  (95, 9500, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 18),
  -- Onix - Frustration - TM21
  (95, 9500, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 19),
  -- Onix - Iron Tail - TM23
  (95, 9500, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 20),
  -- Onix - Earthquake - TM26
  (95, 9500, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 21),
  -- Onix - Return - TM27
  (95, 9500, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 22),
  -- Onix - Dig - TM28
  (95, 9500, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 23),
  -- Onix - Mud-Slap - TM31
  (95, 9500, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 24),
  -- Onix - Double Team - TM32
  (95, 9500, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 25),
  -- Onix - Swagger - TM34
  (95, 9500, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Onix - Sleep Talk - TM35
  (95, 9500, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Onix - Sandstorm - TM37
  (95, 9500, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 28),
  -- Onix - Rest - TM44
  (95, 9500, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 29),
  -- Onix - Attract - TM45
  (95, 9500, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 30),
  -- Onix - Strength - HM04
  (95, 9500, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 31),
  -- Onix - Flail - Egg Move
  (95, 9500, 175, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Onix - Rock Slide - Egg Move
  (95, 9500, 157, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Drowzee - Pound - Level 1
  (96, 9600, 1, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drowzee - Hypnosis - Level 1
  (96, 9600, 95, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drowzee - Disable - Level 10
  (96, 9600, 50, 3, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Drowzee - Confusion - Level 18
  (96, 9600, 93, 3, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Drowzee - Headbutt - Level 25
  (96, 9600, 29, 3, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Drowzee - Poison Gas - Level 31
  (96, 9600, 139, 3, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Drowzee - Meditate - Level 36
  (96, 9600, 96, 3, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Drowzee - Psychic - Level 40
  (96, 9600, 94, 3, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Drowzee - Psych Up - Level 43
  (96, 9600, 244, 3, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Drowzee - Future Sight - Level 45
  (96, 9600, 248, 3, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Drowzee - Dynamic Punch - TM01
  (96, 9600, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 11),
  -- Drowzee - Headbutt - TM02
  (96, 9600, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 12),
  -- Drowzee - Curse - TM03
  (96, 9600, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 13),
  -- Drowzee - Toxic - TM06
  (96, 9600, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Drowzee - Zap Cannon - TM07
  (96, 9600, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 15),
  -- Drowzee - Psych Up - TM09
  (96, 9600, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 16),
  -- Drowzee - Hidden Power - TM10
  (96, 9600, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 17),
  -- Drowzee - Sunny Day - TM11
  (96, 9600, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 18),
  -- Drowzee - Snore - TM13
  (96, 9600, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 19),
  -- Drowzee - Protect - TM17
  (96, 9600, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Drowzee - Rain Dance - TM18
  (96, 9600, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 21),
  -- Drowzee - Endure - TM20
  (96, 9600, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Drowzee - Frustration - TM21
  (96, 9600, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Drowzee - Return - TM27
  (96, 9600, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 24),
  -- Drowzee - Psychic - TM29
  (96, 9600, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 25),
  -- Drowzee - Shadow Ball - TM30
  (96, 9600, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 26),
  -- Drowzee - Double Team - TM32
  (96, 9600, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 27),
  -- Drowzee - Ice Punch - TM33
  (96, 9600, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 28),
  -- Drowzee - Swagger - TM34
  (96, 9600, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 29),
  -- Drowzee - Sleep Talk - TM35
  (96, 9600, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 30),
  -- Drowzee - Thunder Punch - TM41
  (96, 9600, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 31),
  -- Drowzee - Dream Eater - TM42
  (96, 9600, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 32),
  -- Drowzee - Rest - TM44
  (96, 9600, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 33),
  -- Drowzee - Attract - TM45
  (96, 9600, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 34),
  -- Drowzee - Fire Punch - TM48
  (96, 9600, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 35),
  -- Drowzee - Nightmare - TM50
  (96, 9600, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 36),
  -- Drowzee - Flash - HM05
  (96, 9600, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 37),
  -- Drowzee - Barrier - Egg Move
  (96, 9600, 112, 3, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Drowzee - Light Screen - Egg Move
  (96, 9600, 113, 3, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Hypno - Pound - Level 1
  (97, 9700, 1, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hypno - Hypnosis - Level 1
  (97, 9700, 95, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hypno - Disable - Level 1
  (97, 9700, 50, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hypno - Confusion - Level 1
  (97, 9700, 93, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hypno - Disable - Level 10
  (97, 9700, 50, 3, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Hypno - Confusion - Level 18
  (97, 9700, 93, 3, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Hypno - Headbutt - Level 25
  (97, 9700, 29, 3, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Hypno - Poison Gas - Level 33
  (97, 9700, 139, 3, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Hypno - Meditate - Level 40
  (97, 9700, 96, 3, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Hypno - Psychic - Level 49
  (97, 9700, 94, 3, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Hypno - Psych Up - Level 55
  (97, 9700, 244, 3, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Hypno - Future Sight - Level 60
  (97, 9700, 248, 3, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Hypno - Dynamic Punch - TM01
  (97, 9700, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 13),
  -- Hypno - Headbutt - TM02
  (97, 9700, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 14),
  -- Hypno - Curse - TM03
  (97, 9700, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 15),
  -- Hypno - Toxic - TM06
  (97, 9700, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 16),
  -- Hypno - Zap Cannon - TM07
  (97, 9700, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 17),
  -- Hypno - Psych Up - TM09
  (97, 9700, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 18),
  -- Hypno - Hidden Power - TM10
  (97, 9700, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 19),
  -- Hypno - Sunny Day - TM11
  (97, 9700, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 20),
  -- Hypno - Snore - TM13
  (97, 9700, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 21),
  -- Hypno - Hyper Beam - TM15
  (97, 9700, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 22),
  -- Hypno - Protect - TM17
  (97, 9700, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 23),
  -- Hypno - Rain Dance - TM18
  (97, 9700, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 24),
  -- Hypno - Endure - TM20
  (97, 9700, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 25),
  -- Hypno - Frustration - TM21
  (97, 9700, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 26),
  -- Hypno - Return - TM27
  (97, 9700, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 27),
  -- Hypno - Psychic - TM29
  (97, 9700, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 28),
  -- Hypno - Shadow Ball - TM30
  (97, 9700, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 29),
  -- Hypno - Double Team - TM32
  (97, 9700, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 30),
  -- Hypno - Ice Punch - TM33
  (97, 9700, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 31),
  -- Hypno - Swagger - TM34
  (97, 9700, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 32),
  -- Hypno - Sleep Talk - TM35
  (97, 9700, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 33),
  -- Hypno - Thunder Punch - TM41
  (97, 9700, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 34),
  -- Hypno - Dream Eater - TM42
  (97, 9700, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 35),
  -- Hypno - Rest - TM44
  (97, 9700, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 36),
  -- Hypno - Attract - TM45
  (97, 9700, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 37),
  -- Hypno - Fire Punch - TM48
  (97, 9700, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 38),
  -- Hypno - Nightmare - TM50
  (97, 9700, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 39),
  -- Hypno - Flash - HM05
  (97, 9700, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 40),
  -- Krabby - Bubble - Level 1
  (98, 9800, 145, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krabby - Leer - Level 5
  (98, 9800, 43, 3, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Krabby - Vise Grip - Level 12
  (98, 9800, 11, 3, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Krabby - Harden - Level 16
  (98, 9800, 106, 3, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Krabby - Stomp - Level 23
  (98, 9800, 23, 3, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Krabby - Guillotine - Level 27
  (98, 9800, 12, 3, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Krabby - Protect - Level 34
  (98, 9800, 182, 3, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Krabby - Crabhammer - Level 41
  (98, 9800, 152, 3, NULL, 1, 41, NULL, NULL, NULL, 8),
  -- Krabby - Curse - TM03
  (98, 9800, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 9),
  -- Krabby - Toxic - TM06
  (98, 9800, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 10),
  -- Krabby - Rock Smash - TM08
  (98, 9800, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 11),
  -- Krabby - Hidden Power - TM10
  (98, 9800, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 12),
  -- Krabby - Snore - TM13
  (98, 9800, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 13),
  -- Krabby - Blizzard - TM14
  (98, 9800, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 14),
  -- Krabby - Icy Wind - TM16
  (98, 9800, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 15),
  -- Krabby - Protect - TM17
  (98, 9800, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 16),
  -- Krabby - Rain Dance - TM18
  (98, 9800, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 17),
  -- Krabby - Endure - TM20
  (98, 9800, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 18),
  -- Krabby - Frustration - TM21
  (98, 9800, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 19),
  -- Krabby - Return - TM27
  (98, 9800, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 20),
  -- Krabby - Mud-Slap - TM31
  (98, 9800, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 21),
  -- Krabby - Double Team - TM32
  (98, 9800, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 22),
  -- Krabby - Swagger - TM34
  (98, 9800, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 23),
  -- Krabby - Sleep Talk - TM35
  (98, 9800, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 24),
  -- Krabby - Rest - TM44
  (98, 9800, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 25),
  -- Krabby - Attract - TM45
  (98, 9800, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 26),
  -- Krabby - Thief - TM46
  (98, 9800, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 27),
  -- Krabby - Fury Cutter - TM49
  (98, 9800, 210, 3, NULL, 2, NULL, NULL, 3002049, NULL, 28),
  -- Krabby - Cut - HM01
  (98, 9800, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 29),
  -- Krabby - Surf - HM03
  (98, 9800, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 30),
  -- Krabby - Strength - HM04
  (98, 9800, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 31),
  -- Krabby - Whirlpool - HM06
  (98, 9800, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 32),
  -- Krabby - Amnesia - Egg Move
  (98, 9800, 133, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Krabby - Dig - Egg Move
  (98, 9800, 91, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Krabby - Flail - Egg Move
  (98, 9800, 175, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Krabby - Haze - Egg Move
  (98, 9800, 114, 3, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Krabby - Slam - Egg Move
  (98, 9800, 21, 3, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Kingler - Bubble - Level 1
  (99, 9900, 145, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kingler - Leer - Level 1
  (99, 9900, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kingler - Vise Grip - Level 1
  (99, 9900, 11, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kingler - Leer - Level 5
  (99, 9900, 43, 3, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Kingler - Vise Grip - Level 12
  (99, 9900, 11, 3, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Kingler - Harden - Level 16
  (99, 9900, 106, 3, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Kingler - Stomp - Level 23
  (99, 9900, 23, 3, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Kingler - Guillotine - Level 27
  (99, 9900, 12, 3, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Kingler - Protect - Level 38
  (99, 9900, 182, 3, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Kingler - Crabhammer - Level 49
  (99, 9900, 152, 3, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Kingler - Curse - TM03
  (99, 9900, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Kingler - Toxic - TM06
  (99, 9900, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Kingler - Rock Smash - TM08
  (99, 9900, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 13),
  -- Kingler - Hidden Power - TM10
  (99, 9900, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Kingler - Snore - TM13
  (99, 9900, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 15),
  -- Kingler - Blizzard - TM14
  (99, 9900, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 16),
  -- Kingler - Hyper Beam - TM15
  (99, 9900, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 17),
  -- Kingler - Icy Wind - TM16
  (99, 9900, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 18),
  -- Kingler - Protect - TM17
  (99, 9900, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Kingler - Rain Dance - TM18
  (99, 9900, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 20),
  -- Kingler - Endure - TM20
  (99, 9900, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Kingler - Frustration - TM21
  (99, 9900, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Kingler - Return - TM27
  (99, 9900, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 23),
  -- Kingler - Mud-Slap - TM31
  (99, 9900, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 24),
  -- Kingler - Double Team - TM32
  (99, 9900, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 25),
  -- Kingler - Swagger - TM34
  (99, 9900, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Kingler - Sleep Talk - TM35
  (99, 9900, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Kingler - Rest - TM44
  (99, 9900, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 28),
  -- Kingler - Attract - TM45
  (99, 9900, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 29),
  -- Kingler - Thief - TM46
  (99, 9900, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 30),
  -- Kingler - Fury Cutter - TM49
  (99, 9900, 210, 3, NULL, 2, NULL, NULL, 3002049, NULL, 31),
  -- Kingler - Cut - HM01
  (99, 9900, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 32),
  -- Kingler - Surf - HM03
  (99, 9900, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 33),
  -- Kingler - Strength - HM04
  (99, 9900, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 34),
  -- Kingler - Whirlpool - HM06
  (99, 9900, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 35),
  -- Voltorb - Tackle - Level 1
  (100, 10000, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Voltorb - Screech - Level 9
  (100, 10000, 103, 3, NULL, 1, 9, NULL, NULL, NULL, 2),
  -- Voltorb - Sonic Boom - Level 17
  (100, 10000, 49, 3, NULL, 1, 17, NULL, NULL, NULL, 3),
  -- Voltorb - Self-Destruct - Level 23
  (100, 10000, 120, 3, NULL, 1, 23, NULL, NULL, NULL, 4),
  -- Voltorb - Rollout - Level 29
  (100, 10000, 205, 3, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Voltorb - Light Screen - Level 33
  (100, 10000, 113, 3, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Voltorb - Swift - Level 37
  (100, 10000, 129, 3, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Voltorb - Explosion - Level 39
  (100, 10000, 153, 3, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Voltorb - Mirror Coat - Level 41
  (100, 10000, 243, 3, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Voltorb - Headbutt - TM02
  (100, 10000, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 10),
  -- Voltorb - Curse - TM03
  (100, 10000, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Voltorb - Rollout - TM04
  (100, 10000, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 12),
  -- Voltorb - Toxic - TM06
  (100, 10000, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Voltorb - Zap Cannon - TM07
  (100, 10000, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 14),
  -- Voltorb - Hidden Power - TM10
  (100, 10000, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Voltorb - Snore - TM13
  (100, 10000, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Voltorb - Protect - TM17
  (100, 10000, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Voltorb - Rain Dance - TM18
  (100, 10000, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 18),
  -- Voltorb - Endure - TM20
  (100, 10000, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 19),
  -- Voltorb - Frustration - TM21
  (100, 10000, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 20),
  -- Voltorb - Thunder - TM25
  (100, 10000, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 21),
  -- Voltorb - Return - TM27
  (100, 10000, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 22),
  -- Voltorb - Double Team - TM32
  (100, 10000, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 23),
  -- Voltorb - Swagger - TM34
  (100, 10000, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 24),
  -- Voltorb - Sleep Talk - TM35
  (100, 10000, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 25),
  -- Voltorb - Swift - TM39
  (100, 10000, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 26),
  -- Voltorb - Rest - TM44
  (100, 10000, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 27),
  -- Voltorb - Flash - HM05
  (100, 10000, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 28);
