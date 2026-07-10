-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation III Pokémon learnset raw pages, using Ruby /
-- Sapphire level columns, TM/HM compatibility rows, and egg move rows.
-- Cross-check: Serebii Ruby / Sapphire Pokedex learnset pages and PokemonDB
-- Generation 3 Ruby / Sapphire learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Ruby / Sapphire
-- Pokémon: #051-#100
-- Rows: 1789
-- Scope: level-up, TM, HM, and egg move acquisition rows. FireRed / LeafGreen,
-- Emerald, tutor, event, transfer, impossible breeding, and prior-evolution
-- sections are intentionally excluded from this Ruby / Sapphire seed.
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
  -- Dugtrio - Tri Attack - Level 1
  (51, 5100, 161, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dugtrio - Scratch - Level 1
  (51, 5100, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dugtrio - Sand Attack - Level 1
  (51, 5100, 28, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dugtrio - Growl - Level 1
  (51, 5100, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dugtrio - Growl - Level 5
  (51, 5100, 45, 5, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Dugtrio - Magnitude - Level 9
  (51, 5100, 222, 5, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Dugtrio - Dig - Level 17
  (51, 5100, 91, 5, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Dugtrio - Mud-Slap - Level 25
  (51, 5100, 189, 5, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Dugtrio - Sand Tomb - Level 26
  (51, 5100, 328, 5, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Dugtrio - Slash - Level 38
  (51, 5100, 163, 5, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Dugtrio - Earthquake - Level 51
  (51, 5100, 89, 5, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Dugtrio - Fissure - Level 64
  (51, 5100, 90, 5, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Dugtrio - Toxic - TM06
  (51, 5100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Dugtrio - Hidden Power - TM10
  (51, 5100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Dugtrio - Sunny Day - TM11
  (51, 5100, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Dugtrio - Hyper Beam - TM15
  (51, 5100, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 16),
  -- Dugtrio - Protect - TM17
  (51, 5100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Dugtrio - Frustration - TM21
  (51, 5100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Dugtrio - Earthquake - TM26
  (51, 5100, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 19),
  -- Dugtrio - Return - TM27
  (51, 5100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 20),
  -- Dugtrio - Dig - TM28
  (51, 5100, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 21),
  -- Dugtrio - Double Team - TM32
  (51, 5100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 22),
  -- Dugtrio - Sludge Bomb - TM36
  (51, 5100, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 23),
  -- Dugtrio - Rock Tomb - TM39
  (51, 5100, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 24),
  -- Dugtrio - Aerial Ace - TM40
  (51, 5100, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 25),
  -- Dugtrio - Facade - TM42
  (51, 5100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 26),
  -- Dugtrio - Secret Power - TM43
  (51, 5100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 27),
  -- Dugtrio - Rest - TM44
  (51, 5100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 28),
  -- Dugtrio - Attract - TM45
  (51, 5100, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 29),
  -- Dugtrio - Thief - TM46
  (51, 5100, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 30),
  -- Dugtrio - Cut - HM01
  (51, 5100, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 31),
  -- Dugtrio - Rock Smash - HM06
  (51, 5100, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 32),
  -- Meowth - Scratch - Level 1
  (52, 5200, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowth - Growl - Level 1
  (52, 5200, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowth - Bite - Level 11
  (52, 5200, 44, 5, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Meowth - Pay Day - Level 20
  (52, 5200, 6, 5, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Meowth - Feint Attack - Level 28
  (52, 5200, 185, 5, NULL, 1, 28, NULL, NULL, NULL, 5),
  -- Meowth - Screech - Level 35
  (52, 5200, 103, 5, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Meowth - Fury Swipes - Level 41
  (52, 5200, 154, 5, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Meowth - Slash - Level 46
  (52, 5200, 163, 5, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Meowth - Fake Out - Level 50
  (52, 5200, 252, 5, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Meowth - Water Pulse - TM03
  (52, 5200, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 10),
  -- Meowth - Toxic - TM06
  (52, 5200, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Meowth - Hidden Power - TM10
  (52, 5200, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Meowth - Sunny Day - TM11
  (52, 5200, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 13),
  -- Meowth - Taunt - TM12
  (52, 5200, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 14),
  -- Meowth - Protect - TM17
  (52, 5200, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Meowth - Rain Dance - TM18
  (52, 5200, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 16),
  -- Meowth - Frustration - TM21
  (52, 5200, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 17),
  -- Meowth - Iron Tail - TM23
  (52, 5200, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 18),
  -- Meowth - Thunderbolt - TM24
  (52, 5200, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 19),
  -- Meowth - Thunder - TM25
  (52, 5200, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 20),
  -- Meowth - Return - TM27
  (52, 5200, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Meowth - Dig - TM28
  (52, 5200, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 22),
  -- Meowth - Shadow Ball - TM30
  (52, 5200, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 23),
  -- Meowth - Double Team - TM32
  (52, 5200, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Meowth - Shock Wave - TM34
  (52, 5200, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 25),
  -- Meowth - Aerial Ace - TM40
  (52, 5200, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 26),
  -- Meowth - Torment - TM41
  (52, 5200, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 27),
  -- Meowth - Facade - TM42
  (52, 5200, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 28),
  -- Meowth - Secret Power - TM43
  (52, 5200, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 29),
  -- Meowth - Rest - TM44
  (52, 5200, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 30),
  -- Meowth - Attract - TM45
  (52, 5200, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 31),
  -- Meowth - Thief - TM46
  (52, 5200, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 32),
  -- Meowth - Snatch - TM49
  (52, 5200, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 33),
  -- Meowth - Cut - HM01
  (52, 5200, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 34),
  -- Meowth - Flash - HM05
  (52, 5200, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 35),
  -- Meowth - Amnesia - Egg Move
  (52, 5200, 133, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Meowth - Assist - Egg Move
  (52, 5200, 274, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Meowth - Charm - Egg Move
  (52, 5200, 204, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Meowth - Hypnosis - Egg Move
  (52, 5200, 95, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Meowth - Psych Up - Egg Move
  (52, 5200, 244, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Meowth - Spite - Egg Move
  (52, 5200, 180, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Persian - Scratch - Level 1
  (53, 5300, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Persian - Growl - Level 1
  (53, 5300, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Persian - Bite - Level 1
  (53, 5300, 44, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Persian - Bite - Level 11
  (53, 5300, 44, 5, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Persian - Pay Day - Level 20
  (53, 5300, 6, 5, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Persian - Feint Attack - Level 29
  (53, 5300, 185, 5, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Persian - Screech - Level 38
  (53, 5300, 103, 5, NULL, 1, 38, NULL, NULL, NULL, 7),
  -- Persian - Fury Swipes - Level 46
  (53, 5300, 154, 5, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Persian - Slash - Level 53
  (53, 5300, 163, 5, NULL, 1, 53, NULL, NULL, NULL, 9),
  -- Persian - Fake Out - Level 59
  (53, 5300, 252, 5, NULL, 1, 59, NULL, NULL, NULL, 10),
  -- Persian - Water Pulse - TM03
  (53, 5300, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 11),
  -- Persian - Roar - TM05
  (53, 5300, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 12),
  -- Persian - Toxic - TM06
  (53, 5300, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Persian - Hidden Power - TM10
  (53, 5300, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Persian - Sunny Day - TM11
  (53, 5300, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Persian - Taunt - TM12
  (53, 5300, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 16),
  -- Persian - Hyper Beam - TM15
  (53, 5300, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 17),
  -- Persian - Protect - TM17
  (53, 5300, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Persian - Rain Dance - TM18
  (53, 5300, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 19),
  -- Persian - Frustration - TM21
  (53, 5300, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Persian - Iron Tail - TM23
  (53, 5300, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 21),
  -- Persian - Thunderbolt - TM24
  (53, 5300, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 22),
  -- Persian - Thunder - TM25
  (53, 5300, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 23),
  -- Persian - Return - TM27
  (53, 5300, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 24),
  -- Persian - Dig - TM28
  (53, 5300, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 25),
  -- Persian - Shadow Ball - TM30
  (53, 5300, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 26),
  -- Persian - Double Team - TM32
  (53, 5300, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 27),
  -- Persian - Shock Wave - TM34
  (53, 5300, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 28),
  -- Persian - Aerial Ace - TM40
  (53, 5300, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 29),
  -- Persian - Torment - TM41
  (53, 5300, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 30),
  -- Persian - Facade - TM42
  (53, 5300, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 31),
  -- Persian - Secret Power - TM43
  (53, 5300, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 32),
  -- Persian - Rest - TM44
  (53, 5300, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 33),
  -- Persian - Attract - TM45
  (53, 5300, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 34),
  -- Persian - Thief - TM46
  (53, 5300, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 35),
  -- Persian - Snatch - TM49
  (53, 5300, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 36),
  -- Persian - Cut - HM01
  (53, 5300, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 37),
  -- Persian - Flash - HM05
  (53, 5300, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 38),
  -- Psyduck - Scratch - Level 1
  (54, 5400, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Psyduck - Water Sport - Level 1
  (54, 5400, 346, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Psyduck - Tail Whip - Level 5
  (54, 5400, 39, 5, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Psyduck - Disable - Level 10
  (54, 5400, 50, 5, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Psyduck - Confusion - Level 16
  (54, 5400, 93, 5, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Psyduck - Screech - Level 23
  (54, 5400, 103, 5, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Psyduck - Psych Up - Level 31
  (54, 5400, 244, 5, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Psyduck - Fury Swipes - Level 40
  (54, 5400, 154, 5, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Psyduck - Hydro Pump - Level 50
  (54, 5400, 56, 5, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Psyduck - Focus Punch - TM01
  (54, 5400, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 10),
  -- Psyduck - Water Pulse - TM03
  (54, 5400, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 11),
  -- Psyduck - Calm Mind - TM04
  (54, 5400, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 12),
  -- Psyduck - Toxic - TM06
  (54, 5400, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Psyduck - Hail - TM07
  (54, 5400, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 14),
  -- Psyduck - Hidden Power - TM10
  (54, 5400, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Psyduck - Ice Beam - TM13
  (54, 5400, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 16),
  -- Psyduck - Blizzard - TM14
  (54, 5400, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 17),
  -- Psyduck - Protect - TM17
  (54, 5400, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Psyduck - Rain Dance - TM18
  (54, 5400, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 19),
  -- Psyduck - Frustration - TM21
  (54, 5400, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Psyduck - Iron Tail - TM23
  (54, 5400, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 21),
  -- Psyduck - Return - TM27
  (54, 5400, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 22),
  -- Psyduck - Dig - TM28
  (54, 5400, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 23),
  -- Psyduck - Brick Break - TM31
  (54, 5400, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 24),
  -- Psyduck - Double Team - TM32
  (54, 5400, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 25),
  -- Psyduck - Aerial Ace - TM40
  (54, 5400, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 26),
  -- Psyduck - Facade - TM42
  (54, 5400, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Psyduck - Secret Power - TM43
  (54, 5400, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Psyduck - Rest - TM44
  (54, 5400, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Psyduck - Attract - TM45
  (54, 5400, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 30),
  -- Psyduck - Surf - HM03
  (54, 5400, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 31),
  -- Psyduck - Strength - HM04
  (54, 5400, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 32),
  -- Psyduck - Flash - HM05
  (54, 5400, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 33),
  -- Psyduck - Rock Smash - HM06
  (54, 5400, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 34),
  -- Psyduck - Waterfall - HM07
  (54, 5400, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 35),
  -- Psyduck - Dive - HM08
  (54, 5400, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 36),
  -- Psyduck - Cross Chop - Egg Move
  (54, 5400, 238, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Psyduck - Foresight - Egg Move
  (54, 5400, 193, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Psyduck - Future Sight - Egg Move
  (54, 5400, 248, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Psyduck - Hypnosis - Egg Move
  (54, 5400, 95, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Psyduck - Light Screen - Egg Move
  (54, 5400, 113, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Psyduck - Psybeam - Egg Move
  (54, 5400, 60, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Psyduck - Psychic - Egg Move
  (54, 5400, 94, 5, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Psyduck - Refresh - Egg Move
  (54, 5400, 287, 5, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Golduck - Scratch - Level 1
  (55, 5500, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golduck - Water Sport - Level 1
  (55, 5500, 346, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golduck - Tail Whip - Level 1
  (55, 5500, 39, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golduck - Disable - Level 1
  (55, 5500, 50, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golduck - Tail Whip - Level 5
  (55, 5500, 39, 5, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Golduck - Disable - Level 10
  (55, 5500, 50, 5, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Golduck - Confusion - Level 16
  (55, 5500, 93, 5, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Golduck - Screech - Level 23
  (55, 5500, 103, 5, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Golduck - Psych Up - Level 31
  (55, 5500, 244, 5, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Golduck - Fury Swipes - Level 44
  (55, 5500, 154, 5, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Golduck - Hydro Pump - Level 58
  (55, 5500, 56, 5, NULL, 1, 58, NULL, NULL, NULL, 11),
  -- Golduck - Focus Punch - TM01
  (55, 5500, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 12),
  -- Golduck - Water Pulse - TM03
  (55, 5500, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 13),
  -- Golduck - Calm Mind - TM04
  (55, 5500, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 14),
  -- Golduck - Toxic - TM06
  (55, 5500, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 15),
  -- Golduck - Hail - TM07
  (55, 5500, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 16),
  -- Golduck - Hidden Power - TM10
  (55, 5500, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 17),
  -- Golduck - Ice Beam - TM13
  (55, 5500, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 18),
  -- Golduck - Blizzard - TM14
  (55, 5500, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 19),
  -- Golduck - Hyper Beam - TM15
  (55, 5500, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 20),
  -- Golduck - Protect - TM17
  (55, 5500, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 21),
  -- Golduck - Rain Dance - TM18
  (55, 5500, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 22),
  -- Golduck - Frustration - TM21
  (55, 5500, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 23),
  -- Golduck - Iron Tail - TM23
  (55, 5500, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 24),
  -- Golduck - Return - TM27
  (55, 5500, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 25),
  -- Golduck - Dig - TM28
  (55, 5500, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 26),
  -- Golduck - Brick Break - TM31
  (55, 5500, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 27),
  -- Golduck - Double Team - TM32
  (55, 5500, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 28),
  -- Golduck - Aerial Ace - TM40
  (55, 5500, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 29),
  -- Golduck - Facade - TM42
  (55, 5500, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 30),
  -- Golduck - Secret Power - TM43
  (55, 5500, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 31),
  -- Golduck - Rest - TM44
  (55, 5500, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 32),
  -- Golduck - Attract - TM45
  (55, 5500, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 33),
  -- Golduck - Surf - HM03
  (55, 5500, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 34),
  -- Golduck - Strength - HM04
  (55, 5500, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 35),
  -- Golduck - Flash - HM05
  (55, 5500, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 36),
  -- Golduck - Rock Smash - HM06
  (55, 5500, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 37),
  -- Golduck - Waterfall - HM07
  (55, 5500, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 38),
  -- Golduck - Dive - HM08
  (55, 5500, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 39),
  -- Mankey - Scratch - Level 1
  (56, 5600, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mankey - Leer - Level 1
  (56, 5600, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mankey - Low Kick - Level 9
  (56, 5600, 67, 5, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Mankey - Karate Chop - Level 15
  (56, 5600, 2, 5, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Mankey - Fury Swipes - Level 21
  (56, 5600, 154, 5, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Mankey - Focus Energy - Level 27
  (56, 5600, 116, 5, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Mankey - Seismic Toss - Level 33
  (56, 5600, 69, 5, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Mankey - Cross Chop - Level 39
  (56, 5600, 238, 5, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Mankey - Screech - Level 45
  (56, 5600, 103, 5, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Mankey - Thrash - Level 51
  (56, 5600, 37, 5, NULL, 1, 51, NULL, NULL, NULL, 10),
  -- Mankey - Focus Punch - TM01
  (56, 5600, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 11),
  -- Mankey - Toxic - TM06
  (56, 5600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Mankey - Bulk Up - TM08
  (56, 5600, 339, 5, NULL, 2, NULL, NULL, 5002008, NULL, 13),
  -- Mankey - Hidden Power - TM10
  (56, 5600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Mankey - Sunny Day - TM11
  (56, 5600, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Mankey - Taunt - TM12
  (56, 5600, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 16),
  -- Mankey - Protect - TM17
  (56, 5600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Mankey - Rain Dance - TM18
  (56, 5600, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 18),
  -- Mankey - Frustration - TM21
  (56, 5600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Mankey - Iron Tail - TM23
  (56, 5600, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 20),
  -- Mankey - Thunderbolt - TM24
  (56, 5600, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 21),
  -- Mankey - Thunder - TM25
  (56, 5600, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 22),
  -- Mankey - Earthquake - TM26
  (56, 5600, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 23),
  -- Mankey - Return - TM27
  (56, 5600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 24),
  -- Mankey - Dig - TM28
  (56, 5600, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 25),
  -- Mankey - Brick Break - TM31
  (56, 5600, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 26),
  -- Mankey - Double Team - TM32
  (56, 5600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 27),
  -- Mankey - Rock Tomb - TM39
  (56, 5600, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 28),
  -- Mankey - Aerial Ace - TM40
  (56, 5600, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 29),
  -- Mankey - Facade - TM42
  (56, 5600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 30),
  -- Mankey - Secret Power - TM43
  (56, 5600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 31),
  -- Mankey - Rest - TM44
  (56, 5600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 32),
  -- Mankey - Attract - TM45
  (56, 5600, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 33),
  -- Mankey - Thief - TM46
  (56, 5600, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 34),
  -- Mankey - Overheat - TM50
  (56, 5600, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 35),
  -- Mankey - Strength - HM04
  (56, 5600, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 36),
  -- Mankey - Rock Smash - HM06
  (56, 5600, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 37),
  -- Mankey - Beat Up - Egg Move
  (56, 5600, 251, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Mankey - Counter - Egg Move
  (56, 5600, 68, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Mankey - Foresight - Egg Move
  (56, 5600, 193, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Mankey - Meditate - Egg Move
  (56, 5600, 96, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Mankey - Revenge - Egg Move
  (56, 5600, 279, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mankey - Reversal - Egg Move
  (56, 5600, 179, 5, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mankey - Rock Slide - Egg Move
  (56, 5600, 157, 5, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mankey - Smelling Salts - Egg Move
  (56, 5600, 265, 5, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Primeape - Scratch - Level 1
  (57, 5700, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Primeape - Leer - Level 1
  (57, 5700, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Primeape - Low Kick - Level 1
  (57, 5700, 67, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Primeape - Rage - Level 1
  (57, 5700, 99, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Primeape - Low Kick - Level 9
  (57, 5700, 67, 5, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Primeape - Karate Chop - Level 15
  (57, 5700, 2, 5, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Primeape - Fury Swipes - Level 21
  (57, 5700, 154, 5, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Primeape - Focus Energy - Level 27
  (57, 5700, 116, 5, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Primeape - Rage - Level 28
  (57, 5700, 99, 5, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Primeape - Seismic Toss - Level 36
  (57, 5700, 69, 5, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Primeape - Cross Chop - Level 45
  (57, 5700, 238, 5, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Primeape - Screech - Level 54
  (57, 5700, 103, 5, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Primeape - Thrash - Level 63
  (57, 5700, 37, 5, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Primeape - Focus Punch - TM01
  (57, 5700, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 14),
  -- Primeape - Toxic - TM06
  (57, 5700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 15),
  -- Primeape - Bulk Up - TM08
  (57, 5700, 339, 5, NULL, 2, NULL, NULL, 5002008, NULL, 16),
  -- Primeape - Hidden Power - TM10
  (57, 5700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 17),
  -- Primeape - Sunny Day - TM11
  (57, 5700, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 18),
  -- Primeape - Taunt - TM12
  (57, 5700, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 19),
  -- Primeape - Hyper Beam - TM15
  (57, 5700, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 20),
  -- Primeape - Protect - TM17
  (57, 5700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 21),
  -- Primeape - Rain Dance - TM18
  (57, 5700, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 22),
  -- Primeape - Frustration - TM21
  (57, 5700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 23),
  -- Primeape - Iron Tail - TM23
  (57, 5700, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 24),
  -- Primeape - Thunderbolt - TM24
  (57, 5700, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 25),
  -- Primeape - Thunder - TM25
  (57, 5700, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 26),
  -- Primeape - Earthquake - TM26
  (57, 5700, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 27),
  -- Primeape - Return - TM27
  (57, 5700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 28),
  -- Primeape - Dig - TM28
  (57, 5700, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 29),
  -- Primeape - Brick Break - TM31
  (57, 5700, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 30),
  -- Primeape - Double Team - TM32
  (57, 5700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 31),
  -- Primeape - Rock Tomb - TM39
  (57, 5700, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 32),
  -- Primeape - Aerial Ace - TM40
  (57, 5700, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 33),
  -- Primeape - Facade - TM42
  (57, 5700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 34),
  -- Primeape - Secret Power - TM43
  (57, 5700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 35),
  -- Primeape - Rest - TM44
  (57, 5700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 36),
  -- Primeape - Attract - TM45
  (57, 5700, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 37),
  -- Primeape - Thief - TM46
  (57, 5700, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 38),
  -- Primeape - Overheat - TM50
  (57, 5700, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 39),
  -- Primeape - Strength - HM04
  (57, 5700, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 40),
  -- Primeape - Rock Smash - HM06
  (57, 5700, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 41),
  -- Growlithe - Bite - Level 1
  (58, 5800, 44, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Growlithe - Roar - Level 1
  (58, 5800, 46, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Growlithe - Ember - Level 7
  (58, 5800, 52, 5, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Growlithe - Leer - Level 13
  (58, 5800, 43, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Growlithe - Odor Sleuth - Level 19
  (58, 5800, 316, 5, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Growlithe - Take Down - Level 25
  (58, 5800, 36, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Growlithe - Flame Wheel - Level 31
  (58, 5800, 172, 5, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Growlithe - Helping Hand - Level 37
  (58, 5800, 270, 5, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Growlithe - Agility - Level 43
  (58, 5800, 97, 5, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Growlithe - Flamethrower - Level 49
  (58, 5800, 53, 5, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Growlithe - Roar - TM05
  (58, 5800, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 11),
  -- Growlithe - Toxic - TM06
  (58, 5800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Growlithe - Hidden Power - TM10
  (58, 5800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Growlithe - Sunny Day - TM11
  (58, 5800, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Growlithe - Protect - TM17
  (58, 5800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Growlithe - Frustration - TM21
  (58, 5800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 16),
  -- Growlithe - Iron Tail - TM23
  (58, 5800, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 17),
  -- Growlithe - Return - TM27
  (58, 5800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 18),
  -- Growlithe - Dig - TM28
  (58, 5800, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 19),
  -- Growlithe - Double Team - TM32
  (58, 5800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 20),
  -- Growlithe - Flamethrower - TM35
  (58, 5800, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 21),
  -- Growlithe - Fire Blast - TM38
  (58, 5800, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 22),
  -- Growlithe - Aerial Ace - TM40
  (58, 5800, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 23),
  -- Growlithe - Facade - TM42
  (58, 5800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 24),
  -- Growlithe - Secret Power - TM43
  (58, 5800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 25),
  -- Growlithe - Rest - TM44
  (58, 5800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 26),
  -- Growlithe - Attract - TM45
  (58, 5800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 27),
  -- Growlithe - Thief - TM46
  (58, 5800, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 28),
  -- Growlithe - Overheat - TM50
  (58, 5800, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 29),
  -- Growlithe - Strength - HM04
  (58, 5800, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 30),
  -- Growlithe - Rock Smash - HM06
  (58, 5800, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 31),
  -- Growlithe - Body Slam - Egg Move
  (58, 5800, 34, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Growlithe - Crunch - Egg Move
  (58, 5800, 242, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Growlithe - Fire Spin - Egg Move
  (58, 5800, 83, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Growlithe - Heat Wave - Egg Move
  (58, 5800, 257, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Growlithe - Howl - Egg Move
  (58, 5800, 336, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Growlithe - Safeguard - Egg Move
  (58, 5800, 219, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Growlithe - Thrash - Egg Move
  (58, 5800, 37, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Arcanine - Bite - Level 1
  (59, 5900, 44, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arcanine - Roar - Level 1
  (59, 5900, 46, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arcanine - Ember - Level 1
  (59, 5900, 52, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arcanine - Odor Sleuth - Level 1
  (59, 5900, 316, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arcanine - Extreme Speed - Level 49
  (59, 5900, 245, 5, NULL, 1, 49, NULL, NULL, NULL, 5),
  -- Arcanine - Roar - TM05
  (59, 5900, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 6),
  -- Arcanine - Toxic - TM06
  (59, 5900, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 7),
  -- Arcanine - Hidden Power - TM10
  (59, 5900, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 8),
  -- Arcanine - Sunny Day - TM11
  (59, 5900, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 9),
  -- Arcanine - Hyper Beam - TM15
  (59, 5900, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 10),
  -- Arcanine - Protect - TM17
  (59, 5900, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 11),
  -- Arcanine - Frustration - TM21
  (59, 5900, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 12),
  -- Arcanine - Iron Tail - TM23
  (59, 5900, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 13),
  -- Arcanine - Return - TM27
  (59, 5900, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 14),
  -- Arcanine - Dig - TM28
  (59, 5900, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 15),
  -- Arcanine - Double Team - TM32
  (59, 5900, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 16),
  -- Arcanine - Flamethrower - TM35
  (59, 5900, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 17),
  -- Arcanine - Fire Blast - TM38
  (59, 5900, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 18),
  -- Arcanine - Aerial Ace - TM40
  (59, 5900, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 19),
  -- Arcanine - Facade - TM42
  (59, 5900, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 20),
  -- Arcanine - Secret Power - TM43
  (59, 5900, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 21),
  -- Arcanine - Rest - TM44
  (59, 5900, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 22),
  -- Arcanine - Attract - TM45
  (59, 5900, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 23),
  -- Arcanine - Thief - TM46
  (59, 5900, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 24),
  -- Arcanine - Overheat - TM50
  (59, 5900, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 25),
  -- Arcanine - Strength - HM04
  (59, 5900, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 26),
  -- Arcanine - Rock Smash - HM06
  (59, 5900, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 27),
  -- Poliwag - Bubble - Level 1
  (60, 6000, 145, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwag - Hypnosis - Level 7
  (60, 6000, 95, 5, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Poliwag - Water Gun - Level 13
  (60, 6000, 55, 5, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Poliwag - Double Slap - Level 19
  (60, 6000, 3, 5, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Poliwag - Rain Dance - Level 25
  (60, 6000, 240, 5, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Poliwag - Body Slam - Level 31
  (60, 6000, 34, 5, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Poliwag - Belly Drum - Level 37
  (60, 6000, 187, 5, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Poliwag - Hydro Pump - Level 43
  (60, 6000, 56, 5, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Poliwag - Water Pulse - TM03
  (60, 6000, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 9),
  -- Poliwag - Toxic - TM06
  (60, 6000, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 10),
  -- Poliwag - Hail - TM07
  (60, 6000, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 11),
  -- Poliwag - Hidden Power - TM10
  (60, 6000, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Poliwag - Ice Beam - TM13
  (60, 6000, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 13),
  -- Poliwag - Blizzard - TM14
  (60, 6000, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 14),
  -- Poliwag - Protect - TM17
  (60, 6000, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Poliwag - Rain Dance - TM18
  (60, 6000, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 16),
  -- Poliwag - Frustration - TM21
  (60, 6000, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 17),
  -- Poliwag - Return - TM27
  (60, 6000, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 18),
  -- Poliwag - Dig - TM28
  (60, 6000, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 19),
  -- Poliwag - Psychic - TM29
  (60, 6000, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 20),
  -- Poliwag - Double Team - TM32
  (60, 6000, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 21),
  -- Poliwag - Facade - TM42
  (60, 6000, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 22),
  -- Poliwag - Secret Power - TM43
  (60, 6000, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 23),
  -- Poliwag - Rest - TM44
  (60, 6000, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 24),
  -- Poliwag - Attract - TM45
  (60, 6000, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 25),
  -- Poliwag - Thief - TM46
  (60, 6000, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 26),
  -- Poliwag - Surf - HM03
  (60, 6000, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 27),
  -- Poliwag - Waterfall - HM07
  (60, 6000, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 28),
  -- Poliwag - Dive - HM08
  (60, 6000, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 29),
  -- Poliwag - Bubble Beam - Egg Move
  (60, 6000, 61, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Poliwag - Haze - Egg Move
  (60, 6000, 114, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Poliwag - Ice Ball - Egg Move
  (60, 6000, 301, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Poliwag - Mind Reader - Egg Move
  (60, 6000, 170, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Poliwag - Mist - Egg Move
  (60, 6000, 54, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Poliwag - Splash - Egg Move
  (60, 6000, 150, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Poliwag - Water Sport - Egg Move
  (60, 6000, 346, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Poliwhirl - Bubble - Level 1
  (61, 6100, 145, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwhirl - Hypnosis - Level 1
  (61, 6100, 95, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwhirl - Water Gun - Level 1
  (61, 6100, 55, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwhirl - Hypnosis - Level 7
  (61, 6100, 95, 5, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Poliwhirl - Water Gun - Level 13
  (61, 6100, 55, 5, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Poliwhirl - Double Slap - Level 19
  (61, 6100, 3, 5, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Poliwhirl - Rain Dance - Level 27
  (61, 6100, 240, 5, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Poliwhirl - Body Slam - Level 35
  (61, 6100, 34, 5, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Poliwhirl - Belly Drum - Level 43
  (61, 6100, 187, 5, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Poliwhirl - Hydro Pump - Level 51
  (61, 6100, 56, 5, NULL, 1, 51, NULL, NULL, NULL, 10),
  -- Poliwhirl - Focus Punch - TM01
  (61, 6100, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 11),
  -- Poliwhirl - Water Pulse - TM03
  (61, 6100, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 12),
  -- Poliwhirl - Toxic - TM06
  (61, 6100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Poliwhirl - Hail - TM07
  (61, 6100, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 14),
  -- Poliwhirl - Hidden Power - TM10
  (61, 6100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Poliwhirl - Ice Beam - TM13
  (61, 6100, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 16),
  -- Poliwhirl - Blizzard - TM14
  (61, 6100, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 17),
  -- Poliwhirl - Protect - TM17
  (61, 6100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Poliwhirl - Rain Dance - TM18
  (61, 6100, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 19),
  -- Poliwhirl - Frustration - TM21
  (61, 6100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Poliwhirl - Earthquake - TM26
  (61, 6100, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 21),
  -- Poliwhirl - Return - TM27
  (61, 6100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 22),
  -- Poliwhirl - Dig - TM28
  (61, 6100, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 23),
  -- Poliwhirl - Psychic - TM29
  (61, 6100, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 24),
  -- Poliwhirl - Brick Break - TM31
  (61, 6100, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 25),
  -- Poliwhirl - Double Team - TM32
  (61, 6100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 26),
  -- Poliwhirl - Facade - TM42
  (61, 6100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Poliwhirl - Secret Power - TM43
  (61, 6100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Poliwhirl - Rest - TM44
  (61, 6100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Poliwhirl - Attract - TM45
  (61, 6100, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 30),
  -- Poliwhirl - Thief - TM46
  (61, 6100, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 31),
  -- Poliwhirl - Surf - HM03
  (61, 6100, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 32),
  -- Poliwhirl - Strength - HM04
  (61, 6100, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 33),
  -- Poliwhirl - Rock Smash - HM06
  (61, 6100, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 34),
  -- Poliwhirl - Waterfall - HM07
  (61, 6100, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 35),
  -- Poliwhirl - Dive - HM08
  (61, 6100, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 36),
  -- Poliwrath - Water Gun - Level 1
  (62, 6200, 55, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwrath - Hypnosis - Level 1
  (62, 6200, 95, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwrath - Double Slap - Level 1
  (62, 6200, 3, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwrath - Submission - Level 1
  (62, 6200, 66, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Poliwrath - Submission - Level 35
  (62, 6200, 66, 5, NULL, 1, 35, NULL, NULL, NULL, 5),
  -- Poliwrath - Mind Reader - Level 51
  (62, 6200, 170, 5, NULL, 1, 51, NULL, NULL, NULL, 6),
  -- Poliwrath - Focus Punch - TM01
  (62, 6200, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 7),
  -- Poliwrath - Water Pulse - TM03
  (62, 6200, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 8),
  -- Poliwrath - Toxic - TM06
  (62, 6200, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 9),
  -- Poliwrath - Hail - TM07
  (62, 6200, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 10),
  -- Poliwrath - Bulk Up - TM08
  (62, 6200, 339, 5, NULL, 2, NULL, NULL, 5002008, NULL, 11),
  -- Poliwrath - Hidden Power - TM10
  (62, 6200, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Poliwrath - Ice Beam - TM13
  (62, 6200, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 13),
  -- Poliwrath - Blizzard - TM14
  (62, 6200, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 14),
  -- Poliwrath - Hyper Beam - TM15
  (62, 6200, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 15),
  -- Poliwrath - Protect - TM17
  (62, 6200, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Poliwrath - Rain Dance - TM18
  (62, 6200, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Poliwrath - Frustration - TM21
  (62, 6200, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Poliwrath - Earthquake - TM26
  (62, 6200, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 19),
  -- Poliwrath - Return - TM27
  (62, 6200, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 20),
  -- Poliwrath - Dig - TM28
  (62, 6200, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 21),
  -- Poliwrath - Psychic - TM29
  (62, 6200, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 22),
  -- Poliwrath - Brick Break - TM31
  (62, 6200, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 23),
  -- Poliwrath - Double Team - TM32
  (62, 6200, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Poliwrath - Rock Tomb - TM39
  (62, 6200, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 25),
  -- Poliwrath - Facade - TM42
  (62, 6200, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 26),
  -- Poliwrath - Secret Power - TM43
  (62, 6200, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 27),
  -- Poliwrath - Rest - TM44
  (62, 6200, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 28),
  -- Poliwrath - Attract - TM45
  (62, 6200, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 29),
  -- Poliwrath - Thief - TM46
  (62, 6200, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 30),
  -- Poliwrath - Surf - HM03
  (62, 6200, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 31),
  -- Poliwrath - Strength - HM04
  (62, 6200, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 32),
  -- Poliwrath - Rock Smash - HM06
  (62, 6200, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 33),
  -- Poliwrath - Waterfall - HM07
  (62, 6200, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 34),
  -- Poliwrath - Dive - HM08
  (62, 6200, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 35),
  -- Abra - Teleport - Level 1
  (63, 6300, 100, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abra - Focus Punch - TM01
  (63, 6300, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 2),
  -- Abra - Calm Mind - TM04
  (63, 6300, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 3),
  -- Abra - Toxic - TM06
  (63, 6300, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 4),
  -- Abra - Hidden Power - TM10
  (63, 6300, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 5),
  -- Abra - Sunny Day - TM11
  (63, 6300, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 6),
  -- Abra - Taunt - TM12
  (63, 6300, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 7),
  -- Abra - Light Screen - TM16
  (63, 6300, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 8),
  -- Abra - Protect - TM17
  (63, 6300, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 9),
  -- Abra - Rain Dance - TM18
  (63, 6300, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 10),
  -- Abra - Safeguard - TM20
  (63, 6300, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 11),
  -- Abra - Frustration - TM21
  (63, 6300, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 12),
  -- Abra - Iron Tail - TM23
  (63, 6300, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 13),
  -- Abra - Return - TM27
  (63, 6300, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 14),
  -- Abra - Psychic - TM29
  (63, 6300, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 15),
  -- Abra - Shadow Ball - TM30
  (63, 6300, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 16),
  -- Abra - Double Team - TM32
  (63, 6300, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 17),
  -- Abra - Reflect - TM33
  (63, 6300, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 18),
  -- Abra - Shock Wave - TM34
  (63, 6300, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 19),
  -- Abra - Torment - TM41
  (63, 6300, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 20),
  -- Abra - Facade - TM42
  (63, 6300, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 21),
  -- Abra - Secret Power - TM43
  (63, 6300, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 22),
  -- Abra - Rest - TM44
  (63, 6300, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 23),
  -- Abra - Attract - TM45
  (63, 6300, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 24),
  -- Abra - Thief - TM46
  (63, 6300, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 25),
  -- Abra - Skill Swap - TM48
  (63, 6300, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 26),
  -- Abra - Snatch - TM49
  (63, 6300, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 27),
  -- Abra - Flash - HM05
  (63, 6300, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 28),
  -- Abra - Barrier - Egg Move
  (63, 6300, 112, 5, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Abra - Encore - Egg Move
  (63, 6300, 227, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Abra - Fire Punch - Egg Move
  (63, 6300, 7, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Abra - Ice Punch - Egg Move
  (63, 6300, 8, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Abra - Knock Off - Egg Move
  (63, 6300, 282, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Abra - Thunder Punch - Egg Move
  (63, 6300, 9, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Kadabra - Teleport - Level 1
  (64, 6400, 100, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kadabra - Kinesis - Level 1
  (64, 6400, 134, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kadabra - Confusion - Level 1
  (64, 6400, 93, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kadabra - Confusion - Level 16
  (64, 6400, 93, 5, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Kadabra - Disable - Level 18
  (64, 6400, 50, 5, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Kadabra - Psybeam - Level 21
  (64, 6400, 60, 5, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Kadabra - Reflect - Level 23
  (64, 6400, 115, 5, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Kadabra - Recover - Level 25
  (64, 6400, 105, 5, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Kadabra - Future Sight - Level 30
  (64, 6400, 248, 5, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Kadabra - Role Play - Level 33
  (64, 6400, 272, 5, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Kadabra - Psychic - Level 36
  (64, 6400, 94, 5, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Kadabra - Trick - Level 43
  (64, 6400, 271, 5, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Kadabra - Focus Punch - TM01
  (64, 6400, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 13),
  -- Kadabra - Calm Mind - TM04
  (64, 6400, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 14),
  -- Kadabra - Toxic - TM06
  (64, 6400, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 15),
  -- Kadabra - Hidden Power - TM10
  (64, 6400, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Kadabra - Sunny Day - TM11
  (64, 6400, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 17),
  -- Kadabra - Taunt - TM12
  (64, 6400, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 18),
  -- Kadabra - Light Screen - TM16
  (64, 6400, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 19),
  -- Kadabra - Protect - TM17
  (64, 6400, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 20),
  -- Kadabra - Rain Dance - TM18
  (64, 6400, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 21),
  -- Kadabra - Safeguard - TM20
  (64, 6400, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 22),
  -- Kadabra - Frustration - TM21
  (64, 6400, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 23),
  -- Kadabra - Iron Tail - TM23
  (64, 6400, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 24),
  -- Kadabra - Return - TM27
  (64, 6400, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 25),
  -- Kadabra - Psychic - TM29
  (64, 6400, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 26),
  -- Kadabra - Shadow Ball - TM30
  (64, 6400, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 27),
  -- Kadabra - Double Team - TM32
  (64, 6400, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 28),
  -- Kadabra - Reflect - TM33
  (64, 6400, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 29),
  -- Kadabra - Shock Wave - TM34
  (64, 6400, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 30),
  -- Kadabra - Torment - TM41
  (64, 6400, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 31),
  -- Kadabra - Facade - TM42
  (64, 6400, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 32),
  -- Kadabra - Secret Power - TM43
  (64, 6400, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 33),
  -- Kadabra - Rest - TM44
  (64, 6400, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 34),
  -- Kadabra - Attract - TM45
  (64, 6400, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 35),
  -- Kadabra - Thief - TM46
  (64, 6400, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 36),
  -- Kadabra - Skill Swap - TM48
  (64, 6400, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 37),
  -- Kadabra - Snatch - TM49
  (64, 6400, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 38),
  -- Kadabra - Flash - HM05
  (64, 6400, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 39),
  -- Alakazam - Teleport - Level 1
  (65, 6500, 100, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alakazam - Kinesis - Level 1
  (65, 6500, 134, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alakazam - Confusion - Level 1
  (65, 6500, 93, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alakazam - Confusion - Level 16
  (65, 6500, 93, 5, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Alakazam - Disable - Level 18
  (65, 6500, 50, 5, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Alakazam - Psybeam - Level 21
  (65, 6500, 60, 5, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Alakazam - Reflect - Level 23
  (65, 6500, 115, 5, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Alakazam - Recover - Level 25
  (65, 6500, 105, 5, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Alakazam - Future Sight - Level 30
  (65, 6500, 248, 5, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Alakazam - Calm Mind - Level 33
  (65, 6500, 347, 5, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Alakazam - Psychic - Level 36
  (65, 6500, 94, 5, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Alakazam - Trick - Level 43
  (65, 6500, 271, 5, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Alakazam - Focus Punch - TM01
  (65, 6500, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 13),
  -- Alakazam - Calm Mind - TM04
  (65, 6500, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 14),
  -- Alakazam - Toxic - TM06
  (65, 6500, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 15),
  -- Alakazam - Hidden Power - TM10
  (65, 6500, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Alakazam - Sunny Day - TM11
  (65, 6500, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 17),
  -- Alakazam - Taunt - TM12
  (65, 6500, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 18),
  -- Alakazam - Hyper Beam - TM15
  (65, 6500, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 19),
  -- Alakazam - Light Screen - TM16
  (65, 6500, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 20),
  -- Alakazam - Protect - TM17
  (65, 6500, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 21),
  -- Alakazam - Rain Dance - TM18
  (65, 6500, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 22),
  -- Alakazam - Safeguard - TM20
  (65, 6500, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 23),
  -- Alakazam - Frustration - TM21
  (65, 6500, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 24),
  -- Alakazam - Iron Tail - TM23
  (65, 6500, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 25),
  -- Alakazam - Return - TM27
  (65, 6500, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 26),
  -- Alakazam - Psychic - TM29
  (65, 6500, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 27),
  -- Alakazam - Shadow Ball - TM30
  (65, 6500, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 28),
  -- Alakazam - Double Team - TM32
  (65, 6500, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 29),
  -- Alakazam - Reflect - TM33
  (65, 6500, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 30),
  -- Alakazam - Shock Wave - TM34
  (65, 6500, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 31),
  -- Alakazam - Torment - TM41
  (65, 6500, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 32),
  -- Alakazam - Facade - TM42
  (65, 6500, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 33),
  -- Alakazam - Secret Power - TM43
  (65, 6500, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 34),
  -- Alakazam - Rest - TM44
  (65, 6500, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 35),
  -- Alakazam - Attract - TM45
  (65, 6500, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 36),
  -- Alakazam - Thief - TM46
  (65, 6500, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 37),
  -- Alakazam - Skill Swap - TM48
  (65, 6500, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 38),
  -- Alakazam - Snatch - TM49
  (65, 6500, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 39),
  -- Alakazam - Flash - HM05
  (65, 6500, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 40),
  -- Machop - Low Kick - Level 1
  (66, 6600, 67, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machop - Leer - Level 1
  (66, 6600, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machop - Focus Energy - Level 7
  (66, 6600, 116, 5, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Machop - Karate Chop - Level 13
  (66, 6600, 2, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Machop - Seismic Toss - Level 19
  (66, 6600, 69, 5, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Machop - Foresight - Level 22
  (66, 6600, 193, 5, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Machop - Revenge - Level 25
  (66, 6600, 279, 5, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Machop - Vital Throw - Level 31
  (66, 6600, 233, 5, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Machop - Submission - Level 37
  (66, 6600, 66, 5, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Machop - Cross Chop - Level 40
  (66, 6600, 238, 5, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Machop - Scary Face - Level 43
  (66, 6600, 184, 5, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Machop - Dynamic Punch - Level 49
  (66, 6600, 223, 5, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Machop - Focus Punch - TM01
  (66, 6600, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 13),
  -- Machop - Toxic - TM06
  (66, 6600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Machop - Bulk Up - TM08
  (66, 6600, 339, 5, NULL, 2, NULL, NULL, 5002008, NULL, 15),
  -- Machop - Hidden Power - TM10
  (66, 6600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Machop - Sunny Day - TM11
  (66, 6600, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 17),
  -- Machop - Protect - TM17
  (66, 6600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Machop - Rain Dance - TM18
  (66, 6600, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 19),
  -- Machop - Frustration - TM21
  (66, 6600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Machop - Earthquake - TM26
  (66, 6600, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 21),
  -- Machop - Return - TM27
  (66, 6600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 22),
  -- Machop - Dig - TM28
  (66, 6600, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 23),
  -- Machop - Brick Break - TM31
  (66, 6600, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 24),
  -- Machop - Double Team - TM32
  (66, 6600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 25),
  -- Machop - Flamethrower - TM35
  (66, 6600, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 26),
  -- Machop - Fire Blast - TM38
  (66, 6600, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 27),
  -- Machop - Rock Tomb - TM39
  (66, 6600, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 28),
  -- Machop - Facade - TM42
  (66, 6600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 29),
  -- Machop - Secret Power - TM43
  (66, 6600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 30),
  -- Machop - Rest - TM44
  (66, 6600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 31),
  -- Machop - Attract - TM45
  (66, 6600, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 32),
  -- Machop - Thief - TM46
  (66, 6600, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 33),
  -- Machop - Strength - HM04
  (66, 6600, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 34),
  -- Machop - Rock Smash - HM06
  (66, 6600, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 35),
  -- Machop - Counter - Egg Move
  (66, 6600, 68, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Machop - Encore - Egg Move
  (66, 6600, 227, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Machop - Light Screen - Egg Move
  (66, 6600, 113, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Machop - Meditate - Egg Move
  (66, 6600, 96, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Machop - Rock Slide - Egg Move
  (66, 6600, 157, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Machop - Rolling Kick - Egg Move
  (66, 6600, 27, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Machop - Smelling Salts - Egg Move
  (66, 6600, 265, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Machoke - Low Kick - Level 1
  (67, 6700, 67, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machoke - Leer - Level 1
  (67, 6700, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machoke - Focus Energy - Level 1
  (67, 6700, 116, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machoke - Focus Energy - Level 7
  (67, 6700, 116, 5, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Machoke - Karate Chop - Level 13
  (67, 6700, 2, 5, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Machoke - Seismic Toss - Level 19
  (67, 6700, 69, 5, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Machoke - Foresight - Level 22
  (67, 6700, 193, 5, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Machoke - Revenge - Level 25
  (67, 6700, 279, 5, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Machoke - Vital Throw - Level 33
  (67, 6700, 233, 5, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Machoke - Submission - Level 41
  (67, 6700, 66, 5, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Machoke - Cross Chop - Level 46
  (67, 6700, 238, 5, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Machoke - Scary Face - Level 51
  (67, 6700, 184, 5, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Machoke - Dynamic Punch - Level 59
  (67, 6700, 223, 5, NULL, 1, 59, NULL, NULL, NULL, 13),
  -- Machoke - Focus Punch - TM01
  (67, 6700, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 14),
  -- Machoke - Toxic - TM06
  (67, 6700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 15),
  -- Machoke - Bulk Up - TM08
  (67, 6700, 339, 5, NULL, 2, NULL, NULL, 5002008, NULL, 16),
  -- Machoke - Hidden Power - TM10
  (67, 6700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 17),
  -- Machoke - Sunny Day - TM11
  (67, 6700, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 18),
  -- Machoke - Protect - TM17
  (67, 6700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 19),
  -- Machoke - Rain Dance - TM18
  (67, 6700, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 20),
  -- Machoke - Frustration - TM21
  (67, 6700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 21),
  -- Machoke - Earthquake - TM26
  (67, 6700, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 22),
  -- Machoke - Return - TM27
  (67, 6700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Machoke - Dig - TM28
  (67, 6700, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 24),
  -- Machoke - Brick Break - TM31
  (67, 6700, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 25),
  -- Machoke - Double Team - TM32
  (67, 6700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 26),
  -- Machoke - Flamethrower - TM35
  (67, 6700, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 27),
  -- Machoke - Fire Blast - TM38
  (67, 6700, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 28),
  -- Machoke - Rock Tomb - TM39
  (67, 6700, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 29),
  -- Machoke - Facade - TM42
  (67, 6700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 30),
  -- Machoke - Secret Power - TM43
  (67, 6700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 31),
  -- Machoke - Rest - TM44
  (67, 6700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 32),
  -- Machoke - Attract - TM45
  (67, 6700, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 33),
  -- Machoke - Thief - TM46
  (67, 6700, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 34),
  -- Machoke - Strength - HM04
  (67, 6700, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 35),
  -- Machoke - Rock Smash - HM06
  (67, 6700, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 36),
  -- Machamp - Low Kick - Level 1
  (68, 6800, 67, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machamp - Leer - Level 1
  (68, 6800, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machamp - Focus Energy - Level 1
  (68, 6800, 116, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machamp - Focus Energy - Level 7
  (68, 6800, 116, 5, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Machamp - Karate Chop - Level 13
  (68, 6800, 2, 5, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Machamp - Seismic Toss - Level 19
  (68, 6800, 69, 5, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Machamp - Foresight - Level 22
  (68, 6800, 193, 5, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Machamp - Revenge - Level 25
  (68, 6800, 279, 5, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Machamp - Vital Throw - Level 33
  (68, 6800, 233, 5, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Machamp - Submission - Level 41
  (68, 6800, 66, 5, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Machamp - Cross Chop - Level 46
  (68, 6800, 238, 5, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Machamp - Scary Face - Level 51
  (68, 6800, 184, 5, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Machamp - Dynamic Punch - Level 59
  (68, 6800, 223, 5, NULL, 1, 59, NULL, NULL, NULL, 13),
  -- Machamp - Focus Punch - TM01
  (68, 6800, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 14),
  -- Machamp - Toxic - TM06
  (68, 6800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 15),
  -- Machamp - Bulk Up - TM08
  (68, 6800, 339, 5, NULL, 2, NULL, NULL, 5002008, NULL, 16),
  -- Machamp - Hidden Power - TM10
  (68, 6800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 17),
  -- Machamp - Sunny Day - TM11
  (68, 6800, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 18),
  -- Machamp - Hyper Beam - TM15
  (68, 6800, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 19),
  -- Machamp - Protect - TM17
  (68, 6800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 20),
  -- Machamp - Rain Dance - TM18
  (68, 6800, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 21),
  -- Machamp - Frustration - TM21
  (68, 6800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 22),
  -- Machamp - Earthquake - TM26
  (68, 6800, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 23),
  -- Machamp - Return - TM27
  (68, 6800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 24),
  -- Machamp - Dig - TM28
  (68, 6800, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 25),
  -- Machamp - Brick Break - TM31
  (68, 6800, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 26),
  -- Machamp - Double Team - TM32
  (68, 6800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 27),
  -- Machamp - Flamethrower - TM35
  (68, 6800, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 28),
  -- Machamp - Fire Blast - TM38
  (68, 6800, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 29),
  -- Machamp - Rock Tomb - TM39
  (68, 6800, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 30),
  -- Machamp - Facade - TM42
  (68, 6800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 31),
  -- Machamp - Secret Power - TM43
  (68, 6800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 32),
  -- Machamp - Rest - TM44
  (68, 6800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 33),
  -- Machamp - Attract - TM45
  (68, 6800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 34),
  -- Machamp - Thief - TM46
  (68, 6800, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 35),
  -- Machamp - Strength - HM04
  (68, 6800, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 36),
  -- Machamp - Rock Smash - HM06
  (68, 6800, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 37),
  -- Bellsprout - Vine Whip - Level 1
  (69, 6900, 22, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bellsprout - Growth - Level 6
  (69, 6900, 74, 5, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Bellsprout - Wrap - Level 11
  (69, 6900, 35, 5, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Bellsprout - Sleep Powder - Level 15
  (69, 6900, 79, 5, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Bellsprout - Poison Powder - Level 17
  (69, 6900, 77, 5, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Bellsprout - Stun Spore - Level 19
  (69, 6900, 78, 5, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Bellsprout - Acid - Level 23
  (69, 6900, 51, 5, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Bellsprout - Sweet Scent - Level 30
  (69, 6900, 230, 5, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Bellsprout - Razor Leaf - Level 37
  (69, 6900, 75, 5, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Bellsprout - Slam - Level 45
  (69, 6900, 21, 5, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Bellsprout - Toxic - TM06
  (69, 6900, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Bellsprout - Bullet Seed - TM09
  (69, 6900, 331, 5, NULL, 2, NULL, NULL, 5002009, NULL, 12),
  -- Bellsprout - Hidden Power - TM10
  (69, 6900, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Bellsprout - Sunny Day - TM11
  (69, 6900, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Bellsprout - Protect - TM17
  (69, 6900, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Bellsprout - Giga Drain - TM19
  (69, 6900, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 16),
  -- Bellsprout - Frustration - TM21
  (69, 6900, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 17),
  -- Bellsprout - Solar Beam - TM22
  (69, 6900, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 18),
  -- Bellsprout - Return - TM27
  (69, 6900, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 19),
  -- Bellsprout - Double Team - TM32
  (69, 6900, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 20),
  -- Bellsprout - Sludge Bomb - TM36
  (69, 6900, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 21),
  -- Bellsprout - Facade - TM42
  (69, 6900, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 22),
  -- Bellsprout - Secret Power - TM43
  (69, 6900, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 23),
  -- Bellsprout - Rest - TM44
  (69, 6900, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 24),
  -- Bellsprout - Attract - TM45
  (69, 6900, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 25),
  -- Bellsprout - Thief - TM46
  (69, 6900, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 26),
  -- Bellsprout - Cut - HM01
  (69, 6900, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 27),
  -- Bellsprout - Flash - HM05
  (69, 6900, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 28),
  -- Bellsprout - Encore - Egg Move
  (69, 6900, 227, 5, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Bellsprout - Ingrain - Egg Move
  (69, 6900, 275, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Bellsprout - Leech Life - Egg Move
  (69, 6900, 141, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Bellsprout - Magical Leaf - Egg Move
  (69, 6900, 345, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Bellsprout - Reflect - Egg Move
  (69, 6900, 115, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Bellsprout - Swords Dance - Egg Move
  (69, 6900, 14, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Bellsprout - Synthesis - Egg Move
  (69, 6900, 235, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Weepinbell - Vine Whip - Level 1
  (70, 7000, 22, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weepinbell - Growth - Level 1
  (70, 7000, 74, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weepinbell - Wrap - Level 1
  (70, 7000, 35, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weepinbell - Growth - Level 6
  (70, 7000, 74, 5, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Weepinbell - Wrap - Level 11
  (70, 7000, 35, 5, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Weepinbell - Sleep Powder - Level 15
  (70, 7000, 79, 5, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Weepinbell - Poison Powder - Level 17
  (70, 7000, 77, 5, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Weepinbell - Stun Spore - Level 19
  (70, 7000, 78, 5, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Weepinbell - Acid - Level 24
  (70, 7000, 51, 5, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Weepinbell - Sweet Scent - Level 33
  (70, 7000, 230, 5, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Weepinbell - Razor Leaf - Level 42
  (70, 7000, 75, 5, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Weepinbell - Slam - Level 54
  (70, 7000, 21, 5, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Weepinbell - Toxic - TM06
  (70, 7000, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Weepinbell - Bullet Seed - TM09
  (70, 7000, 331, 5, NULL, 2, NULL, NULL, 5002009, NULL, 14),
  -- Weepinbell - Hidden Power - TM10
  (70, 7000, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Weepinbell - Sunny Day - TM11
  (70, 7000, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 16),
  -- Weepinbell - Protect - TM17
  (70, 7000, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Weepinbell - Giga Drain - TM19
  (70, 7000, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 18),
  -- Weepinbell - Frustration - TM21
  (70, 7000, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Weepinbell - Solar Beam - TM22
  (70, 7000, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 20),
  -- Weepinbell - Return - TM27
  (70, 7000, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Weepinbell - Double Team - TM32
  (70, 7000, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 22),
  -- Weepinbell - Sludge Bomb - TM36
  (70, 7000, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 23),
  -- Weepinbell - Facade - TM42
  (70, 7000, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 24),
  -- Weepinbell - Secret Power - TM43
  (70, 7000, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 25),
  -- Weepinbell - Rest - TM44
  (70, 7000, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 26),
  -- Weepinbell - Attract - TM45
  (70, 7000, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 27),
  -- Weepinbell - Thief - TM46
  (70, 7000, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 28),
  -- Weepinbell - Cut - HM01
  (70, 7000, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 29),
  -- Weepinbell - Flash - HM05
  (70, 7000, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 30),
  -- Victreebel - Vine Whip - Level 1
  (71, 7100, 22, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Victreebel - Sweet Scent - Level 1
  (71, 7100, 230, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Victreebel - Razor Leaf - Level 1
  (71, 7100, 75, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Victreebel - Sleep Powder - Level 1
  (71, 7100, 79, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Victreebel - Toxic - TM06
  (71, 7100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 5),
  -- Victreebel - Bullet Seed - TM09
  (71, 7100, 331, 5, NULL, 2, NULL, NULL, 5002009, NULL, 6),
  -- Victreebel - Hidden Power - TM10
  (71, 7100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 7),
  -- Victreebel - Sunny Day - TM11
  (71, 7100, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 8),
  -- Victreebel - Hyper Beam - TM15
  (71, 7100, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 9),
  -- Victreebel - Protect - TM17
  (71, 7100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 10),
  -- Victreebel - Giga Drain - TM19
  (71, 7100, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 11),
  -- Victreebel - Frustration - TM21
  (71, 7100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 12),
  -- Victreebel - Solar Beam - TM22
  (71, 7100, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 13),
  -- Victreebel - Return - TM27
  (71, 7100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 14),
  -- Victreebel - Double Team - TM32
  (71, 7100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 15),
  -- Victreebel - Sludge Bomb - TM36
  (71, 7100, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 16),
  -- Victreebel - Facade - TM42
  (71, 7100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 17),
  -- Victreebel - Secret Power - TM43
  (71, 7100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 18),
  -- Victreebel - Rest - TM44
  (71, 7100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 19),
  -- Victreebel - Attract - TM45
  (71, 7100, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 20),
  -- Victreebel - Thief - TM46
  (71, 7100, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 21),
  -- Victreebel - Cut - HM01
  (71, 7100, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 22),
  -- Victreebel - Flash - HM05
  (71, 7100, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 23),
  -- Tentacool - Poison Sting - Level 1
  (72, 7200, 40, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacool - Supersonic - Level 6
  (72, 7200, 48, 5, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Tentacool - Constrict - Level 12
  (72, 7200, 132, 5, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Tentacool - Acid - Level 19
  (72, 7200, 51, 5, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Tentacool - Bubble Beam - Level 25
  (72, 7200, 61, 5, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Tentacool - Wrap - Level 30
  (72, 7200, 35, 5, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Tentacool - Barrier - Level 36
  (72, 7200, 112, 5, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Tentacool - Screech - Level 43
  (72, 7200, 103, 5, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Tentacool - Hydro Pump - Level 49
  (72, 7200, 56, 5, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Tentacool - Water Pulse - TM03
  (72, 7200, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 10),
  -- Tentacool - Toxic - TM06
  (72, 7200, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Tentacool - Hail - TM07
  (72, 7200, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 12),
  -- Tentacool - Hidden Power - TM10
  (72, 7200, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Tentacool - Ice Beam - TM13
  (72, 7200, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 14),
  -- Tentacool - Blizzard - TM14
  (72, 7200, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 15),
  -- Tentacool - Protect - TM17
  (72, 7200, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Tentacool - Rain Dance - TM18
  (72, 7200, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Tentacool - Giga Drain - TM19
  (72, 7200, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 18),
  -- Tentacool - Frustration - TM21
  (72, 7200, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Tentacool - Return - TM27
  (72, 7200, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 20),
  -- Tentacool - Double Team - TM32
  (72, 7200, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 21),
  -- Tentacool - Sludge Bomb - TM36
  (72, 7200, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 22),
  -- Tentacool - Facade - TM42
  (72, 7200, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 23),
  -- Tentacool - Secret Power - TM43
  (72, 7200, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 24),
  -- Tentacool - Rest - TM44
  (72, 7200, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 25),
  -- Tentacool - Attract - TM45
  (72, 7200, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 26),
  -- Tentacool - Thief - TM46
  (72, 7200, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 27),
  -- Tentacool - Cut - HM01
  (72, 7200, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 28),
  -- Tentacool - Surf - HM03
  (72, 7200, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 29),
  -- Tentacool - Waterfall - HM07
  (72, 7200, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 30),
  -- Tentacool - Dive - HM08
  (72, 7200, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 31),
  -- Tentacool - Aurora Beam - Egg Move
  (72, 7200, 62, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Tentacool - Confuse Ray - Egg Move
  (72, 7200, 109, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Tentacool - Haze - Egg Move
  (72, 7200, 114, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Tentacool - Mirror Coat - Egg Move
  (72, 7200, 243, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Tentacool - Rapid Spin - Egg Move
  (72, 7200, 229, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Tentacool - Safeguard - Egg Move
  (72, 7200, 219, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Tentacruel - Poison Sting - Level 1
  (73, 7300, 40, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacruel - Supersonic - Level 1
  (73, 7300, 48, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tentacruel - Constrict - Level 1
  (73, 7300, 132, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tentacruel - Supersonic - Level 6
  (73, 7300, 48, 5, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Tentacruel - Constrict - Level 12
  (73, 7300, 132, 5, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Tentacruel - Acid - Level 19
  (73, 7300, 51, 5, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Tentacruel - Bubble Beam - Level 25
  (73, 7300, 61, 5, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tentacruel - Wrap - Level 30
  (73, 7300, 35, 5, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Tentacruel - Barrier - Level 38
  (73, 7300, 112, 5, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Tentacruel - Screech - Level 47
  (73, 7300, 103, 5, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Tentacruel - Hydro Pump - Level 55
  (73, 7300, 56, 5, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Tentacruel - Water Pulse - TM03
  (73, 7300, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 12),
  -- Tentacruel - Toxic - TM06
  (73, 7300, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Tentacruel - Hail - TM07
  (73, 7300, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 14),
  -- Tentacruel - Hidden Power - TM10
  (73, 7300, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Tentacruel - Ice Beam - TM13
  (73, 7300, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 16),
  -- Tentacruel - Blizzard - TM14
  (73, 7300, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 17),
  -- Tentacruel - Hyper Beam - TM15
  (73, 7300, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 18),
  -- Tentacruel - Protect - TM17
  (73, 7300, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 19),
  -- Tentacruel - Rain Dance - TM18
  (73, 7300, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 20),
  -- Tentacruel - Giga Drain - TM19
  (73, 7300, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 21),
  -- Tentacruel - Frustration - TM21
  (73, 7300, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 22),
  -- Tentacruel - Return - TM27
  (73, 7300, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Tentacruel - Double Team - TM32
  (73, 7300, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Tentacruel - Sludge Bomb - TM36
  (73, 7300, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 25),
  -- Tentacruel - Facade - TM42
  (73, 7300, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 26),
  -- Tentacruel - Secret Power - TM43
  (73, 7300, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 27),
  -- Tentacruel - Rest - TM44
  (73, 7300, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 28),
  -- Tentacruel - Attract - TM45
  (73, 7300, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 29),
  -- Tentacruel - Thief - TM46
  (73, 7300, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 30),
  -- Tentacruel - Cut - HM01
  (73, 7300, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 31),
  -- Tentacruel - Surf - HM03
  (73, 7300, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 32),
  -- Tentacruel - Waterfall - HM07
  (73, 7300, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 33),
  -- Tentacruel - Dive - HM08
  (73, 7300, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 34),
  -- Geodude - Tackle - Level 1
  (74, 7400, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Geodude - Defense Curl - Level 1
  (74, 7400, 111, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Geodude - Mud Sport - Level 6
  (74, 7400, 300, 5, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Geodude - Rock Throw - Level 11
  (74, 7400, 88, 5, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Geodude - Magnitude - Level 16
  (74, 7400, 222, 5, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Geodude - Self-Destruct - Level 21
  (74, 7400, 120, 5, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Geodude - Rollout - Level 26
  (74, 7400, 205, 5, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Geodude - Rock Blast - Level 31
  (74, 7400, 350, 5, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Geodude - Earthquake - Level 36
  (74, 7400, 89, 5, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Geodude - Explosion - Level 41
  (74, 7400, 153, 5, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Geodude - Double-Edge - Level 46
  (74, 7400, 38, 5, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Geodude - Focus Punch - TM01
  (74, 7400, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 12),
  -- Geodude - Toxic - TM06
  (74, 7400, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Geodude - Hidden Power - TM10
  (74, 7400, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Geodude - Sunny Day - TM11
  (74, 7400, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Geodude - Protect - TM17
  (74, 7400, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Geodude - Frustration - TM21
  (74, 7400, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 17),
  -- Geodude - Earthquake - TM26
  (74, 7400, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 18),
  -- Geodude - Return - TM27
  (74, 7400, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 19),
  -- Geodude - Dig - TM28
  (74, 7400, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 20),
  -- Geodude - Brick Break - TM31
  (74, 7400, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 21),
  -- Geodude - Double Team - TM32
  (74, 7400, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 22),
  -- Geodude - Flamethrower - TM35
  (74, 7400, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 23),
  -- Geodude - Sandstorm - TM37
  (74, 7400, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 24),
  -- Geodude - Fire Blast - TM38
  (74, 7400, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 25),
  -- Geodude - Rock Tomb - TM39
  (74, 7400, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 26),
  -- Geodude - Facade - TM42
  (74, 7400, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Geodude - Secret Power - TM43
  (74, 7400, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Geodude - Rest - TM44
  (74, 7400, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Geodude - Attract - TM45
  (74, 7400, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 30),
  -- Geodude - Strength - HM04
  (74, 7400, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 31),
  -- Geodude - Rock Smash - HM06
  (74, 7400, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 32),
  -- Geodude - Block - Egg Move
  (74, 7400, 335, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Geodude - Mega Punch - Egg Move
  (74, 7400, 5, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Geodude - Rock Slide - Egg Move
  (74, 7400, 157, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Graveler - Tackle - Level 1
  (75, 7500, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Graveler - Defense Curl - Level 1
  (75, 7500, 111, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Graveler - Mud Sport - Level 1
  (75, 7500, 300, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Graveler - Rock Throw - Level 1
  (75, 7500, 88, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Graveler - Mud Sport - Level 6
  (75, 7500, 300, 5, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Graveler - Rock Throw - Level 11
  (75, 7500, 88, 5, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Graveler - Magnitude - Level 16
  (75, 7500, 222, 5, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Graveler - Self-Destruct - Level 21
  (75, 7500, 120, 5, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Graveler - Rollout - Level 29
  (75, 7500, 205, 5, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Graveler - Rock Blast - Level 37
  (75, 7500, 350, 5, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Graveler - Earthquake - Level 45
  (75, 7500, 89, 5, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Graveler - Explosion - Level 53
  (75, 7500, 153, 5, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Graveler - Double-Edge - Level 62
  (75, 7500, 38, 5, NULL, 1, 62, NULL, NULL, NULL, 13),
  -- Graveler - Focus Punch - TM01
  (75, 7500, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 14),
  -- Graveler - Toxic - TM06
  (75, 7500, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 15),
  -- Graveler - Hidden Power - TM10
  (75, 7500, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Graveler - Sunny Day - TM11
  (75, 7500, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 17),
  -- Graveler - Protect - TM17
  (75, 7500, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Graveler - Frustration - TM21
  (75, 7500, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Graveler - Earthquake - TM26
  (75, 7500, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 20),
  -- Graveler - Return - TM27
  (75, 7500, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Graveler - Dig - TM28
  (75, 7500, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 22),
  -- Graveler - Brick Break - TM31
  (75, 7500, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 23),
  -- Graveler - Double Team - TM32
  (75, 7500, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Graveler - Flamethrower - TM35
  (75, 7500, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 25),
  -- Graveler - Sandstorm - TM37
  (75, 7500, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 26),
  -- Graveler - Fire Blast - TM38
  (75, 7500, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 27),
  -- Graveler - Rock Tomb - TM39
  (75, 7500, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 28),
  -- Graveler - Facade - TM42
  (75, 7500, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 29),
  -- Graveler - Secret Power - TM43
  (75, 7500, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 30),
  -- Graveler - Rest - TM44
  (75, 7500, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 31),
  -- Graveler - Attract - TM45
  (75, 7500, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 32),
  -- Graveler - Strength - HM04
  (75, 7500, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 33),
  -- Graveler - Rock Smash - HM06
  (75, 7500, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 34),
  -- Golem - Tackle - Level 1
  (76, 7600, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golem - Defense Curl - Level 1
  (76, 7600, 111, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golem - Mud Sport - Level 1
  (76, 7600, 300, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golem - Rock Throw - Level 1
  (76, 7600, 88, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golem - Mud Sport - Level 6
  (76, 7600, 300, 5, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Golem - Rock Throw - Level 11
  (76, 7600, 88, 5, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Golem - Magnitude - Level 16
  (76, 7600, 222, 5, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Golem - Self-Destruct - Level 21
  (76, 7600, 120, 5, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Golem - Rollout - Level 29
  (76, 7600, 205, 5, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Golem - Rock Blast - Level 37
  (76, 7600, 350, 5, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Golem - Earthquake - Level 45
  (76, 7600, 89, 5, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Golem - Explosion - Level 53
  (76, 7600, 153, 5, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Golem - Double-Edge - Level 62
  (76, 7600, 38, 5, NULL, 1, 62, NULL, NULL, NULL, 13),
  -- Golem - Focus Punch - TM01
  (76, 7600, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 14),
  -- Golem - Roar - TM05
  (76, 7600, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 15),
  -- Golem - Toxic - TM06
  (76, 7600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 16),
  -- Golem - Hidden Power - TM10
  (76, 7600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 17),
  -- Golem - Sunny Day - TM11
  (76, 7600, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 18),
  -- Golem - Hyper Beam - TM15
  (76, 7600, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 19),
  -- Golem - Protect - TM17
  (76, 7600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 20),
  -- Golem - Frustration - TM21
  (76, 7600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 21),
  -- Golem - Earthquake - TM26
  (76, 7600, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 22),
  -- Golem - Return - TM27
  (76, 7600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Golem - Dig - TM28
  (76, 7600, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 24),
  -- Golem - Brick Break - TM31
  (76, 7600, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 25),
  -- Golem - Double Team - TM32
  (76, 7600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 26),
  -- Golem - Flamethrower - TM35
  (76, 7600, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 27),
  -- Golem - Sandstorm - TM37
  (76, 7600, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 28),
  -- Golem - Fire Blast - TM38
  (76, 7600, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 29),
  -- Golem - Rock Tomb - TM39
  (76, 7600, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 30),
  -- Golem - Facade - TM42
  (76, 7600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 31),
  -- Golem - Secret Power - TM43
  (76, 7600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 32),
  -- Golem - Rest - TM44
  (76, 7600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 33),
  -- Golem - Attract - TM45
  (76, 7600, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 34),
  -- Golem - Strength - HM04
  (76, 7600, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 35),
  -- Golem - Rock Smash - HM06
  (76, 7600, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 36),
  -- Ponyta - Tackle - Level 1
  (77, 7700, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ponyta - Growl - Level 5
  (77, 7700, 45, 5, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Ponyta - Tail Whip - Level 9
  (77, 7700, 39, 5, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Ponyta - Ember - Level 14
  (77, 7700, 52, 5, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Ponyta - Stomp - Level 19
  (77, 7700, 23, 5, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Ponyta - Fire Spin - Level 25
  (77, 7700, 83, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Ponyta - Take Down - Level 31
  (77, 7700, 36, 5, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Ponyta - Agility - Level 38
  (77, 7700, 97, 5, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Ponyta - Bounce - Level 45
  (77, 7700, 340, 5, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Ponyta - Fire Blast - Level 53
  (77, 7700, 126, 5, NULL, 1, 53, NULL, NULL, NULL, 10),
  -- Ponyta - Toxic - TM06
  (77, 7700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Ponyta - Hidden Power - TM10
  (77, 7700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Ponyta - Sunny Day - TM11
  (77, 7700, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 13),
  -- Ponyta - Protect - TM17
  (77, 7700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 14),
  -- Ponyta - Frustration - TM21
  (77, 7700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 15),
  -- Ponyta - Solar Beam - TM22
  (77, 7700, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 16),
  -- Ponyta - Iron Tail - TM23
  (77, 7700, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 17),
  -- Ponyta - Return - TM27
  (77, 7700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 18),
  -- Ponyta - Double Team - TM32
  (77, 7700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 19),
  -- Ponyta - Flamethrower - TM35
  (77, 7700, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 20),
  -- Ponyta - Fire Blast - TM38
  (77, 7700, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 21),
  -- Ponyta - Facade - TM42
  (77, 7700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 22),
  -- Ponyta - Secret Power - TM43
  (77, 7700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 23),
  -- Ponyta - Rest - TM44
  (77, 7700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 24),
  -- Ponyta - Attract - TM45
  (77, 7700, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 25),
  -- Ponyta - Overheat - TM50
  (77, 7700, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 26),
  -- Ponyta - Strength - HM04
  (77, 7700, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 27),
  -- Ponyta - Charm - Egg Move
  (77, 7700, 204, 5, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Ponyta - Double-Edge - Egg Move
  (77, 7700, 38, 5, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Ponyta - Double Kick - Egg Move
  (77, 7700, 24, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Ponyta - Flame Wheel - Egg Move
  (77, 7700, 172, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Ponyta - Hypnosis - Egg Move
  (77, 7700, 95, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Ponyta - Thrash - Egg Move
  (77, 7700, 37, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Rapidash - Tackle - Level 1
  (78, 7800, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rapidash - Growl - Level 1
  (78, 7800, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rapidash - Tail Whip - Level 1
  (78, 7800, 39, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rapidash - Ember - Level 1
  (78, 7800, 52, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rapidash - Growl - Level 5
  (78, 7800, 45, 5, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Rapidash - Tail Whip - Level 9
  (78, 7800, 39, 5, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Rapidash - Ember - Level 14
  (78, 7800, 52, 5, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Rapidash - Stomp - Level 19
  (78, 7800, 23, 5, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Rapidash - Fire Spin - Level 25
  (78, 7800, 83, 5, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Rapidash - Take Down - Level 31
  (78, 7800, 36, 5, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Rapidash - Agility - Level 38
  (78, 7800, 97, 5, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Rapidash - Fury Attack - Level 40
  (78, 7800, 31, 5, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Rapidash - Bounce - Level 50
  (78, 7800, 340, 5, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Rapidash - Fire Blast - Level 63
  (78, 7800, 126, 5, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Rapidash - Toxic - TM06
  (78, 7800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 15),
  -- Rapidash - Hidden Power - TM10
  (78, 7800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Rapidash - Sunny Day - TM11
  (78, 7800, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 17),
  -- Rapidash - Hyper Beam - TM15
  (78, 7800, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 18),
  -- Rapidash - Protect - TM17
  (78, 7800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 19),
  -- Rapidash - Frustration - TM21
  (78, 7800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Rapidash - Solar Beam - TM22
  (78, 7800, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 21),
  -- Rapidash - Iron Tail - TM23
  (78, 7800, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 22),
  -- Rapidash - Return - TM27
  (78, 7800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Rapidash - Double Team - TM32
  (78, 7800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Rapidash - Flamethrower - TM35
  (78, 7800, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 25),
  -- Rapidash - Fire Blast - TM38
  (78, 7800, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 26),
  -- Rapidash - Facade - TM42
  (78, 7800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Rapidash - Secret Power - TM43
  (78, 7800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Rapidash - Rest - TM44
  (78, 7800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Rapidash - Attract - TM45
  (78, 7800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 30),
  -- Rapidash - Overheat - TM50
  (78, 7800, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 31),
  -- Rapidash - Strength - HM04
  (78, 7800, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 32),
  -- Slowpoke - Curse - Level 1
  (79, 7900, 174, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowpoke - Tackle - Level 1
  (79, 7900, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowpoke - Yawn - Level 1
  (79, 7900, 281, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowpoke - Growl - Level 6
  (79, 7900, 45, 5, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Slowpoke - Water Gun - Level 15
  (79, 7900, 55, 5, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Slowpoke - Confusion - Level 20
  (79, 7900, 93, 5, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Slowpoke - Disable - Level 29
  (79, 7900, 50, 5, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Slowpoke - Headbutt - Level 34
  (79, 7900, 29, 5, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Slowpoke - Amnesia - Level 43
  (79, 7900, 133, 5, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Slowpoke - Psychic - Level 48
  (79, 7900, 94, 5, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Slowpoke - Water Pulse - TM03
  (79, 7900, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 11),
  -- Slowpoke - Calm Mind - TM04
  (79, 7900, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 12),
  -- Slowpoke - Toxic - TM06
  (79, 7900, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Slowpoke - Hail - TM07
  (79, 7900, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 14),
  -- Slowpoke - Hidden Power - TM10
  (79, 7900, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Slowpoke - Sunny Day - TM11
  (79, 7900, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 16),
  -- Slowpoke - Ice Beam - TM13
  (79, 7900, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 17),
  -- Slowpoke - Blizzard - TM14
  (79, 7900, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 18),
  -- Slowpoke - Protect - TM17
  (79, 7900, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 19),
  -- Slowpoke - Rain Dance - TM18
  (79, 7900, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 20),
  -- Slowpoke - Safeguard - TM20
  (79, 7900, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 21),
  -- Slowpoke - Frustration - TM21
  (79, 7900, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 22),
  -- Slowpoke - Iron Tail - TM23
  (79, 7900, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 23),
  -- Slowpoke - Earthquake - TM26
  (79, 7900, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 24),
  -- Slowpoke - Return - TM27
  (79, 7900, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 25),
  -- Slowpoke - Dig - TM28
  (79, 7900, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 26),
  -- Slowpoke - Psychic - TM29
  (79, 7900, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 27),
  -- Slowpoke - Shadow Ball - TM30
  (79, 7900, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 28),
  -- Slowpoke - Double Team - TM32
  (79, 7900, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 29),
  -- Slowpoke - Flamethrower - TM35
  (79, 7900, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 30),
  -- Slowpoke - Fire Blast - TM38
  (79, 7900, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 31),
  -- Slowpoke - Facade - TM42
  (79, 7900, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 32),
  -- Slowpoke - Secret Power - TM43
  (79, 7900, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 33),
  -- Slowpoke - Rest - TM44
  (79, 7900, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 34),
  -- Slowpoke - Attract - TM45
  (79, 7900, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 35),
  -- Slowpoke - Skill Swap - TM48
  (79, 7900, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 36),
  -- Slowpoke - Surf - HM03
  (79, 7900, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 37),
  -- Slowpoke - Strength - HM04
  (79, 7900, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 38),
  -- Slowpoke - Flash - HM05
  (79, 7900, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 39),
  -- Slowpoke - Dive - HM08
  (79, 7900, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 40),
  -- Slowpoke - Belly Drum - Egg Move
  (79, 7900, 187, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Slowpoke - Future Sight - Egg Move
  (79, 7900, 248, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Slowpoke - Mud Sport - Egg Move
  (79, 7900, 300, 5, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Slowpoke - Safeguard - Egg Move
  (79, 7900, 219, 5, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Slowpoke - Sleep Talk - Egg Move
  (79, 7900, 214, 5, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Slowpoke - Snore - Egg Move
  (79, 7900, 173, 5, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Slowpoke - Stomp - Egg Move
  (79, 7900, 23, 5, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Slowbro - Curse - Level 1
  (80, 8000, 174, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowbro - Tackle - Level 1
  (80, 8000, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowbro - Yawn - Level 1
  (80, 8000, 281, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowbro - Growl - Level 1
  (80, 8000, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowbro - Growl - Level 6
  (80, 8000, 45, 5, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Slowbro - Water Gun - Level 15
  (80, 8000, 55, 5, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Slowbro - Confusion - Level 20
  (80, 8000, 93, 5, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Slowbro - Disable - Level 29
  (80, 8000, 50, 5, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Slowbro - Headbutt - Level 34
  (80, 8000, 29, 5, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Slowbro - Withdraw - Level 37
  (80, 8000, 110, 5, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Slowbro - Amnesia - Level 46
  (80, 8000, 133, 5, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Slowbro - Psychic - Level 54
  (80, 8000, 94, 5, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Slowbro - Focus Punch - TM01
  (80, 8000, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 13),
  -- Slowbro - Water Pulse - TM03
  (80, 8000, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 14),
  -- Slowbro - Calm Mind - TM04
  (80, 8000, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 15),
  -- Slowbro - Toxic - TM06
  (80, 8000, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 16),
  -- Slowbro - Hail - TM07
  (80, 8000, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 17),
  -- Slowbro - Hidden Power - TM10
  (80, 8000, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 18),
  -- Slowbro - Sunny Day - TM11
  (80, 8000, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 19),
  -- Slowbro - Ice Beam - TM13
  (80, 8000, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 20),
  -- Slowbro - Blizzard - TM14
  (80, 8000, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 21),
  -- Slowbro - Hyper Beam - TM15
  (80, 8000, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 22),
  -- Slowbro - Protect - TM17
  (80, 8000, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 23),
  -- Slowbro - Rain Dance - TM18
  (80, 8000, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 24),
  -- Slowbro - Safeguard - TM20
  (80, 8000, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 25),
  -- Slowbro - Frustration - TM21
  (80, 8000, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 26),
  -- Slowbro - Iron Tail - TM23
  (80, 8000, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 27),
  -- Slowbro - Earthquake - TM26
  (80, 8000, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 28),
  -- Slowbro - Return - TM27
  (80, 8000, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 29),
  -- Slowbro - Dig - TM28
  (80, 8000, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 30),
  -- Slowbro - Psychic - TM29
  (80, 8000, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 31),
  -- Slowbro - Shadow Ball - TM30
  (80, 8000, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 32),
  -- Slowbro - Brick Break - TM31
  (80, 8000, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 33),
  -- Slowbro - Double Team - TM32
  (80, 8000, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 34),
  -- Slowbro - Flamethrower - TM35
  (80, 8000, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 35),
  -- Slowbro - Fire Blast - TM38
  (80, 8000, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 36),
  -- Slowbro - Facade - TM42
  (80, 8000, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 37),
  -- Slowbro - Secret Power - TM43
  (80, 8000, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 38),
  -- Slowbro - Rest - TM44
  (80, 8000, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 39),
  -- Slowbro - Attract - TM45
  (80, 8000, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 40),
  -- Slowbro - Skill Swap - TM48
  (80, 8000, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 41),
  -- Slowbro - Surf - HM03
  (80, 8000, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 42),
  -- Slowbro - Strength - HM04
  (80, 8000, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 43),
  -- Slowbro - Flash - HM05
  (80, 8000, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 44),
  -- Slowbro - Rock Smash - HM06
  (80, 8000, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 45),
  -- Slowbro - Dive - HM08
  (80, 8000, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 46),
  -- Magnemite - Metal Sound - Level 1
  (81, 8100, 319, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnemite - Tackle - Level 1
  (81, 8100, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magnemite - Thunder Shock - Level 6
  (81, 8100, 84, 5, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Magnemite - Supersonic - Level 11
  (81, 8100, 48, 5, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Magnemite - Sonic Boom - Level 16
  (81, 8100, 49, 5, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Magnemite - Thunder Wave - Level 21
  (81, 8100, 86, 5, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Magnemite - Spark - Level 26
  (81, 8100, 209, 5, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Magnemite - Lock-On - Level 32
  (81, 8100, 199, 5, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Magnemite - Swift - Level 38
  (81, 8100, 129, 5, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Magnemite - Screech - Level 44
  (81, 8100, 103, 5, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Magnemite - Zap Cannon - Level 50
  (81, 8100, 192, 5, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Magnemite - Toxic - TM06
  (81, 8100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Magnemite - Hidden Power - TM10
  (81, 8100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Magnemite - Sunny Day - TM11
  (81, 8100, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Magnemite - Protect - TM17
  (81, 8100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Magnemite - Rain Dance - TM18
  (81, 8100, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 16),
  -- Magnemite - Frustration - TM21
  (81, 8100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 17),
  -- Magnemite - Thunderbolt - TM24
  (81, 8100, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 18),
  -- Magnemite - Thunder - TM25
  (81, 8100, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 19),
  -- Magnemite - Return - TM27
  (81, 8100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 20),
  -- Magnemite - Double Team - TM32
  (81, 8100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 21),
  -- Magnemite - Reflect - TM33
  (81, 8100, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 22),
  -- Magnemite - Shock Wave - TM34
  (81, 8100, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 23),
  -- Magnemite - Facade - TM42
  (81, 8100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 24),
  -- Magnemite - Secret Power - TM43
  (81, 8100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 25),
  -- Magnemite - Rest - TM44
  (81, 8100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 26),
  -- Magnemite - Flash - HM05
  (81, 8100, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 27),
  -- Magneton - Tackle - Level 1
  (82, 8200, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magneton - Metal Sound - Level 1
  (82, 8200, 319, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magneton - Thunder Shock - Level 1
  (82, 8200, 84, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magneton - Supersonic - Level 1
  (82, 8200, 48, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magneton - Thunder Shock - Level 6
  (82, 8200, 84, 5, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Magneton - Supersonic - Level 11
  (82, 8200, 48, 5, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Magneton - Sonic Boom - Level 16
  (82, 8200, 49, 5, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Magneton - Thunder Wave - Level 21
  (82, 8200, 86, 5, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Magneton - Spark - Level 26
  (82, 8200, 209, 5, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Magneton - Lock-On - Level 35
  (82, 8200, 199, 5, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Magneton - Tri Attack - Level 44
  (82, 8200, 161, 5, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Magneton - Screech - Level 53
  (82, 8200, 103, 5, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Magneton - Zap Cannon - Level 62
  (82, 8200, 192, 5, NULL, 1, 62, NULL, NULL, NULL, 13),
  -- Magneton - Toxic - TM06
  (82, 8200, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Magneton - Hidden Power - TM10
  (82, 8200, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Magneton - Sunny Day - TM11
  (82, 8200, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 16),
  -- Magneton - Hyper Beam - TM15
  (82, 8200, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 17),
  -- Magneton - Protect - TM17
  (82, 8200, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Magneton - Rain Dance - TM18
  (82, 8200, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 19),
  -- Magneton - Frustration - TM21
  (82, 8200, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Magneton - Thunderbolt - TM24
  (82, 8200, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 21),
  -- Magneton - Thunder - TM25
  (82, 8200, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 22),
  -- Magneton - Return - TM27
  (82, 8200, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Magneton - Double Team - TM32
  (82, 8200, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Magneton - Reflect - TM33
  (82, 8200, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 25),
  -- Magneton - Shock Wave - TM34
  (82, 8200, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 26),
  -- Magneton - Facade - TM42
  (82, 8200, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Magneton - Secret Power - TM43
  (82, 8200, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Magneton - Rest - TM44
  (82, 8200, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Magneton - Flash - HM05
  (82, 8200, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 30),
  -- Farfetch'd - Peck - Level 1
  (83, 8300, 64, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Farfetch'd - Sand Attack - Level 6
  (83, 8300, 28, 5, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Farfetch'd - Leer - Level 11
  (83, 8300, 43, 5, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Farfetch'd - Fury Attack - Level 16
  (83, 8300, 31, 5, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Farfetch'd - Knock Off - Level 21
  (83, 8300, 282, 5, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Farfetch'd - Fury Cutter - Level 26
  (83, 8300, 210, 5, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Farfetch'd - Swords Dance - Level 31
  (83, 8300, 14, 5, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Farfetch'd - Agility - Level 36
  (83, 8300, 97, 5, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Farfetch'd - Slash - Level 41
  (83, 8300, 163, 5, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Farfetch'd - False Swipe - Level 46
  (83, 8300, 206, 5, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Farfetch'd - Toxic - TM06
  (83, 8300, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Farfetch'd - Hidden Power - TM10
  (83, 8300, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Farfetch'd - Sunny Day - TM11
  (83, 8300, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 13),
  -- Farfetch'd - Protect - TM17
  (83, 8300, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 14),
  -- Farfetch'd - Frustration - TM21
  (83, 8300, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 15),
  -- Farfetch'd - Iron Tail - TM23
  (83, 8300, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 16),
  -- Farfetch'd - Return - TM27
  (83, 8300, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 17),
  -- Farfetch'd - Double Team - TM32
  (83, 8300, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 18),
  -- Farfetch'd - Aerial Ace - TM40
  (83, 8300, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 19),
  -- Farfetch'd - Facade - TM42
  (83, 8300, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 20),
  -- Farfetch'd - Secret Power - TM43
  (83, 8300, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 21),
  -- Farfetch'd - Rest - TM44
  (83, 8300, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 22),
  -- Farfetch'd - Attract - TM45
  (83, 8300, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 23),
  -- Farfetch'd - Thief - TM46
  (83, 8300, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 24),
  -- Farfetch'd - Steel Wing - TM47
  (83, 8300, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 25),
  -- Farfetch'd - Cut - HM01
  (83, 8300, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 26),
  -- Farfetch'd - Fly - HM02
  (83, 8300, 19, 5, NULL, 3, NULL, NULL, 5003002, NULL, 27),
  -- Farfetch'd - Curse - Egg Move
  (83, 8300, 174, 5, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Farfetch'd - Feather Dance - Egg Move
  (83, 8300, 297, 5, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Farfetch'd - Flail - Egg Move
  (83, 8300, 175, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Farfetch'd - Foresight - Egg Move
  (83, 8300, 193, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Farfetch'd - Gust - Egg Move
  (83, 8300, 16, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Farfetch'd - Mirror Move - Egg Move
  (83, 8300, 119, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Farfetch'd - Quick Attack - Egg Move
  (83, 8300, 98, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Farfetch'd - Steel Wing - Egg Move
  (83, 8300, 211, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Doduo - Peck - Level 1
  (84, 8400, 64, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Doduo - Growl - Level 1
  (84, 8400, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Doduo - Pursuit - Level 9
  (84, 8400, 228, 5, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Doduo - Fury Attack - Level 13
  (84, 8400, 31, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Doduo - Tri Attack - Level 21
  (84, 8400, 161, 5, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Doduo - Rage - Level 25
  (84, 8400, 99, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Doduo - Uproar - Level 33
  (84, 8400, 253, 5, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Doduo - Drill Peck - Level 37
  (84, 8400, 65, 5, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Doduo - Agility - Level 45
  (84, 8400, 97, 5, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Doduo - Toxic - TM06
  (84, 8400, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 10),
  -- Doduo - Hidden Power - TM10
  (84, 8400, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 11),
  -- Doduo - Sunny Day - TM11
  (84, 8400, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 12),
  -- Doduo - Protect - TM17
  (84, 8400, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 13),
  -- Doduo - Frustration - TM21
  (84, 8400, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 14),
  -- Doduo - Return - TM27
  (84, 8400, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 15),
  -- Doduo - Double Team - TM32
  (84, 8400, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 16),
  -- Doduo - Aerial Ace - TM40
  (84, 8400, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 17),
  -- Doduo - Facade - TM42
  (84, 8400, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 18),
  -- Doduo - Secret Power - TM43
  (84, 8400, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 19),
  -- Doduo - Rest - TM44
  (84, 8400, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 20),
  -- Doduo - Attract - TM45
  (84, 8400, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 21),
  -- Doduo - Thief - TM46
  (84, 8400, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 22),
  -- Doduo - Steel Wing - TM47
  (84, 8400, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 23),
  -- Doduo - Fly - HM02
  (84, 8400, 19, 5, NULL, 3, NULL, NULL, 5003002, NULL, 24),
  -- Doduo - Endeavor - Egg Move
  (84, 8400, 283, 5, NULL, 5, NULL, NULL, NULL, NULL, 25),
  -- Doduo - Feint Attack - Egg Move
  (84, 8400, 185, 5, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Doduo - Flail - Egg Move
  (84, 8400, 175, 5, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Doduo - Haze - Egg Move
  (84, 8400, 114, 5, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Doduo - Quick Attack - Egg Move
  (84, 8400, 98, 5, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Doduo - Supersonic - Egg Move
  (84, 8400, 48, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Dodrio - Peck - Level 1
  (85, 8500, 64, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dodrio - Growl - Level 1
  (85, 8500, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dodrio - Pursuit - Level 1
  (85, 8500, 228, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dodrio - Fury Attack - Level 1
  (85, 8500, 31, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dodrio - Pursuit - Level 9
  (85, 8500, 228, 5, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Dodrio - Fury Attack - Level 13
  (85, 8500, 31, 5, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Dodrio - Tri Attack - Level 21
  (85, 8500, 161, 5, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Dodrio - Rage - Level 25
  (85, 8500, 99, 5, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Dodrio - Uproar - Level 38
  (85, 8500, 253, 5, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Dodrio - Drill Peck - Level 47
  (85, 8500, 65, 5, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Dodrio - Agility - Level 60
  (85, 8500, 97, 5, NULL, 1, 60, NULL, NULL, NULL, 11),
  -- Dodrio - Toxic - TM06
  (85, 8500, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Dodrio - Hidden Power - TM10
  (85, 8500, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Dodrio - Sunny Day - TM11
  (85, 8500, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Dodrio - Taunt - TM12
  (85, 8500, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 15),
  -- Dodrio - Hyper Beam - TM15
  (85, 8500, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 16),
  -- Dodrio - Protect - TM17
  (85, 8500, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Dodrio - Frustration - TM21
  (85, 8500, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Dodrio - Return - TM27
  (85, 8500, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 19),
  -- Dodrio - Double Team - TM32
  (85, 8500, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 20),
  -- Dodrio - Aerial Ace - TM40
  (85, 8500, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 21),
  -- Dodrio - Torment - TM41
  (85, 8500, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 22),
  -- Dodrio - Facade - TM42
  (85, 8500, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 23),
  -- Dodrio - Secret Power - TM43
  (85, 8500, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 24),
  -- Dodrio - Rest - TM44
  (85, 8500, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 25),
  -- Dodrio - Attract - TM45
  (85, 8500, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 26),
  -- Dodrio - Thief - TM46
  (85, 8500, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 27),
  -- Dodrio - Steel Wing - TM47
  (85, 8500, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 28),
  -- Dodrio - Fly - HM02
  (85, 8500, 19, 5, NULL, 3, NULL, NULL, 5003002, NULL, 29),
  -- Seel - Headbutt - Level 1
  (86, 8600, 29, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seel - Growl - Level 9
  (86, 8600, 45, 5, NULL, 1, 9, NULL, NULL, NULL, 2),
  -- Seel - Icy Wind - Level 17
  (86, 8600, 196, 5, NULL, 1, 17, NULL, NULL, NULL, 3),
  -- Seel - Aurora Beam - Level 21
  (86, 8600, 62, 5, NULL, 1, 21, NULL, NULL, NULL, 4),
  -- Seel - Rest - Level 29
  (86, 8600, 156, 5, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Seel - Take Down - Level 37
  (86, 8600, 36, 5, NULL, 1, 37, NULL, NULL, NULL, 6),
  -- Seel - Ice Beam - Level 41
  (86, 8600, 58, 5, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Seel - Safeguard - Level 49
  (86, 8600, 219, 5, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Seel - Water Pulse - TM03
  (86, 8600, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 9),
  -- Seel - Toxic - TM06
  (86, 8600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 10),
  -- Seel - Hail - TM07
  (86, 8600, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 11),
  -- Seel - Hidden Power - TM10
  (86, 8600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Seel - Ice Beam - TM13
  (86, 8600, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 13),
  -- Seel - Blizzard - TM14
  (86, 8600, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 14),
  -- Seel - Protect - TM17
  (86, 8600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Seel - Rain Dance - TM18
  (86, 8600, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 16),
  -- Seel - Safeguard - TM20
  (86, 8600, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 17),
  -- Seel - Frustration - TM21
  (86, 8600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Seel - Return - TM27
  (86, 8600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 19),
  -- Seel - Double Team - TM32
  (86, 8600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 20),
  -- Seel - Facade - TM42
  (86, 8600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 21),
  -- Seel - Secret Power - TM43
  (86, 8600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 22),
  -- Seel - Rest - TM44
  (86, 8600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 23),
  -- Seel - Attract - TM45
  (86, 8600, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 24),
  -- Seel - Thief - TM46
  (86, 8600, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 25),
  -- Seel - Surf - HM03
  (86, 8600, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 26),
  -- Seel - Waterfall - HM07
  (86, 8600, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 27),
  -- Seel - Dive - HM08
  (86, 8600, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 28),
  -- Seel - Disable - Egg Move
  (86, 8600, 50, 5, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Seel - Encore - Egg Move
  (86, 8600, 227, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Seel - Fake Out - Egg Move
  (86, 8600, 252, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Seel - Horn Drill - Egg Move
  (86, 8600, 32, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Seel - Icicle Spear - Egg Move
  (86, 8600, 333, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Seel - Lick - Egg Move
  (86, 8600, 122, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Seel - Perish Song - Egg Move
  (86, 8600, 195, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Seel - Slam - Egg Move
  (86, 8600, 21, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Dewgong - Headbutt - Level 1
  (87, 8700, 29, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dewgong - Growl - Level 1
  (87, 8700, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dewgong - Icy Wind - Level 1
  (87, 8700, 196, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dewgong - Aurora Beam - Level 1
  (87, 8700, 62, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dewgong - Growl - Level 9
  (87, 8700, 45, 5, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Dewgong - Icy Wind - Level 17
  (87, 8700, 196, 5, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Dewgong - Aurora Beam - Level 21
  (87, 8700, 62, 5, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Dewgong - Rest - Level 29
  (87, 8700, 156, 5, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Dewgong - Sheer Cold - Level 34
  (87, 8700, 329, 5, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Dewgong - Take Down - Level 42
  (87, 8700, 36, 5, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Dewgong - Ice Beam - Level 51
  (87, 8700, 58, 5, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Dewgong - Safeguard - Level 64
  (87, 8700, 219, 5, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Dewgong - Water Pulse - TM03
  (87, 8700, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 13),
  -- Dewgong - Toxic - TM06
  (87, 8700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Dewgong - Hail - TM07
  (87, 8700, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 15),
  -- Dewgong - Hidden Power - TM10
  (87, 8700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Dewgong - Ice Beam - TM13
  (87, 8700, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 17),
  -- Dewgong - Blizzard - TM14
  (87, 8700, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 18),
  -- Dewgong - Hyper Beam - TM15
  (87, 8700, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 19),
  -- Dewgong - Protect - TM17
  (87, 8700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 20),
  -- Dewgong - Rain Dance - TM18
  (87, 8700, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 21),
  -- Dewgong - Safeguard - TM20
  (87, 8700, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 22),
  -- Dewgong - Frustration - TM21
  (87, 8700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 23),
  -- Dewgong - Return - TM27
  (87, 8700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 24),
  -- Dewgong - Double Team - TM32
  (87, 8700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 25),
  -- Dewgong - Facade - TM42
  (87, 8700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 26),
  -- Dewgong - Secret Power - TM43
  (87, 8700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 27),
  -- Dewgong - Rest - TM44
  (87, 8700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 28),
  -- Dewgong - Attract - TM45
  (87, 8700, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 29),
  -- Dewgong - Thief - TM46
  (87, 8700, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 30),
  -- Dewgong - Surf - HM03
  (87, 8700, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 31),
  -- Dewgong - Waterfall - HM07
  (87, 8700, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 32),
  -- Dewgong - Dive - HM08
  (87, 8700, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 33),
  -- Grimer - Poison Gas - Level 1
  (88, 8800, 139, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grimer - Pound - Level 1
  (88, 8800, 1, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grimer - Harden - Level 4
  (88, 8800, 106, 5, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Grimer - Disable - Level 8
  (88, 8800, 50, 5, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Grimer - Sludge - Level 13
  (88, 8800, 124, 5, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Grimer - Minimize - Level 19
  (88, 8800, 107, 5, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Grimer - Screech - Level 26
  (88, 8800, 103, 5, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Grimer - Acid Armor - Level 34
  (88, 8800, 151, 5, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Grimer - Sludge Bomb - Level 43
  (88, 8800, 188, 5, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Grimer - Memento - Level 53
  (88, 8800, 262, 5, NULL, 1, 53, NULL, NULL, NULL, 10),
  -- Grimer - Toxic - TM06
  (88, 8800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Grimer - Hidden Power - TM10
  (88, 8800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Grimer - Sunny Day - TM11
  (88, 8800, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 13),
  -- Grimer - Taunt - TM12
  (88, 8800, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 14),
  -- Grimer - Protect - TM17
  (88, 8800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Grimer - Rain Dance - TM18
  (88, 8800, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 16),
  -- Grimer - Giga Drain - TM19
  (88, 8800, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 17),
  -- Grimer - Frustration - TM21
  (88, 8800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Grimer - Thunderbolt - TM24
  (88, 8800, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 19),
  -- Grimer - Thunder - TM25
  (88, 8800, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 20),
  -- Grimer - Return - TM27
  (88, 8800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Grimer - Dig - TM28
  (88, 8800, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 22),
  -- Grimer - Double Team - TM32
  (88, 8800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 23),
  -- Grimer - Shock Wave - TM34
  (88, 8800, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 24),
  -- Grimer - Flamethrower - TM35
  (88, 8800, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 25),
  -- Grimer - Sludge Bomb - TM36
  (88, 8800, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 26),
  -- Grimer - Fire Blast - TM38
  (88, 8800, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 27),
  -- Grimer - Rock Tomb - TM39
  (88, 8800, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 28),
  -- Grimer - Torment - TM41
  (88, 8800, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 29),
  -- Grimer - Facade - TM42
  (88, 8800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 30),
  -- Grimer - Secret Power - TM43
  (88, 8800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 31),
  -- Grimer - Rest - TM44
  (88, 8800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 32),
  -- Grimer - Attract - TM45
  (88, 8800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 33),
  -- Grimer - Thief - TM46
  (88, 8800, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 34),
  -- Grimer - Curse - Egg Move
  (88, 8800, 174, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Grimer - Explosion - Egg Move
  (88, 8800, 153, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Grimer - Haze - Egg Move
  (88, 8800, 114, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Grimer - Imprison - Egg Move
  (88, 8800, 286, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Grimer - Lick - Egg Move
  (88, 8800, 122, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Grimer - Mean Look - Egg Move
  (88, 8800, 212, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Grimer - Shadow Punch - Egg Move
  (88, 8800, 325, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Muk - Poison Gas - Level 1
  (89, 8900, 139, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Muk - Pound - Level 1
  (89, 8900, 1, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Muk - Harden - Level 1
  (89, 8900, 106, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Muk - Harden - Level 4
  (89, 8900, 106, 5, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Muk - Disable - Level 8
  (89, 8900, 50, 5, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Muk - Sludge - Level 13
  (89, 8900, 124, 5, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Muk - Minimize - Level 19
  (89, 8900, 107, 5, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Muk - Screech - Level 26
  (89, 8900, 103, 5, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Muk - Acid Armor - Level 34
  (89, 8900, 151, 5, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Muk - Sludge Bomb - Level 47
  (89, 8900, 188, 5, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Muk - Memento - Level 61
  (89, 8900, 262, 5, NULL, 1, 61, NULL, NULL, NULL, 11),
  -- Muk - Focus Punch - TM01
  (89, 8900, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 12),
  -- Muk - Toxic - TM06
  (89, 8900, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Muk - Hidden Power - TM10
  (89, 8900, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Muk - Sunny Day - TM11
  (89, 8900, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Muk - Taunt - TM12
  (89, 8900, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 16),
  -- Muk - Hyper Beam - TM15
  (89, 8900, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 17),
  -- Muk - Protect - TM17
  (89, 8900, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Muk - Rain Dance - TM18
  (89, 8900, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 19),
  -- Muk - Giga Drain - TM19
  (89, 8900, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 20),
  -- Muk - Frustration - TM21
  (89, 8900, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 21),
  -- Muk - Thunderbolt - TM24
  (89, 8900, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 22),
  -- Muk - Thunder - TM25
  (89, 8900, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 23),
  -- Muk - Return - TM27
  (89, 8900, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 24),
  -- Muk - Dig - TM28
  (89, 8900, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 25),
  -- Muk - Brick Break - TM31
  (89, 8900, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 26),
  -- Muk - Double Team - TM32
  (89, 8900, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 27),
  -- Muk - Shock Wave - TM34
  (89, 8900, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 28),
  -- Muk - Flamethrower - TM35
  (89, 8900, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 29),
  -- Muk - Sludge Bomb - TM36
  (89, 8900, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 30),
  -- Muk - Fire Blast - TM38
  (89, 8900, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 31),
  -- Muk - Rock Tomb - TM39
  (89, 8900, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 32),
  -- Muk - Torment - TM41
  (89, 8900, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 33),
  -- Muk - Facade - TM42
  (89, 8900, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 34),
  -- Muk - Secret Power - TM43
  (89, 8900, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 35),
  -- Muk - Rest - TM44
  (89, 8900, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 36),
  -- Muk - Attract - TM45
  (89, 8900, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 37),
  -- Muk - Thief - TM46
  (89, 8900, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 38),
  -- Muk - Strength - HM04
  (89, 8900, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 39),
  -- Muk - Rock Smash - HM06
  (89, 8900, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 40),
  -- Shellder - Tackle - Level 1
  (90, 9000, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shellder - Withdraw - Level 1
  (90, 9000, 110, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shellder - Supersonic - Level 9
  (90, 9000, 48, 5, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Shellder - Aurora Beam - Level 17
  (90, 9000, 62, 5, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Shellder - Protect - Level 25
  (90, 9000, 182, 5, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Shellder - Leer - Level 33
  (90, 9000, 43, 5, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Shellder - Clamp - Level 41
  (90, 9000, 128, 5, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Shellder - Ice Beam - Level 49
  (90, 9000, 58, 5, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Shellder - Water Pulse - TM03
  (90, 9000, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 9),
  -- Shellder - Toxic - TM06
  (90, 9000, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 10),
  -- Shellder - Hail - TM07
  (90, 9000, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 11),
  -- Shellder - Hidden Power - TM10
  (90, 9000, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Shellder - Ice Beam - TM13
  (90, 9000, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 13),
  -- Shellder - Blizzard - TM14
  (90, 9000, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 14),
  -- Shellder - Protect - TM17
  (90, 9000, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Shellder - Rain Dance - TM18
  (90, 9000, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 16),
  -- Shellder - Frustration - TM21
  (90, 9000, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 17),
  -- Shellder - Return - TM27
  (90, 9000, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 18),
  -- Shellder - Double Team - TM32
  (90, 9000, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 19),
  -- Shellder - Facade - TM42
  (90, 9000, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 20),
  -- Shellder - Secret Power - TM43
  (90, 9000, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 21),
  -- Shellder - Rest - TM44
  (90, 9000, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 22),
  -- Shellder - Attract - TM45
  (90, 9000, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 23),
  -- Shellder - Surf - HM03
  (90, 9000, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 24),
  -- Shellder - Dive - HM08
  (90, 9000, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 25),
  -- Shellder - Barrier - Egg Move
  (90, 9000, 112, 5, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Shellder - Bubble Beam - Egg Move
  (90, 9000, 61, 5, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Shellder - Icicle Spear - Egg Move
  (90, 9000, 333, 5, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Shellder - Rapid Spin - Egg Move
  (90, 9000, 229, 5, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Shellder - Screech - Egg Move
  (90, 9000, 103, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Shellder - Take Down - Egg Move
  (90, 9000, 36, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Cloyster - Withdraw - Level 1
  (91, 9100, 110, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cloyster - Supersonic - Level 1
  (91, 9100, 48, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cloyster - Aurora Beam - Level 1
  (91, 9100, 62, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cloyster - Protect - Level 1
  (91, 9100, 182, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cloyster - Spikes - Level 33
  (91, 9100, 191, 5, NULL, 1, 33, NULL, NULL, NULL, 5),
  -- Cloyster - Spike Cannon - Level 41
  (91, 9100, 131, 5, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Cloyster - Water Pulse - TM03
  (91, 9100, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 7),
  -- Cloyster - Toxic - TM06
  (91, 9100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 8),
  -- Cloyster - Hail - TM07
  (91, 9100, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 9),
  -- Cloyster - Hidden Power - TM10
  (91, 9100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 10),
  -- Cloyster - Ice Beam - TM13
  (91, 9100, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 11),
  -- Cloyster - Blizzard - TM14
  (91, 9100, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 12),
  -- Cloyster - Hyper Beam - TM15
  (91, 9100, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 13),
  -- Cloyster - Protect - TM17
  (91, 9100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 14),
  -- Cloyster - Rain Dance - TM18
  (91, 9100, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 15),
  -- Cloyster - Frustration - TM21
  (91, 9100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 16),
  -- Cloyster - Return - TM27
  (91, 9100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 17),
  -- Cloyster - Double Team - TM32
  (91, 9100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 18),
  -- Cloyster - Torment - TM41
  (91, 9100, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 19),
  -- Cloyster - Facade - TM42
  (91, 9100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 20),
  -- Cloyster - Secret Power - TM43
  (91, 9100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 21),
  -- Cloyster - Rest - TM44
  (91, 9100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 22),
  -- Cloyster - Attract - TM45
  (91, 9100, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 23),
  -- Cloyster - Surf - HM03
  (91, 9100, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 24),
  -- Cloyster - Dive - HM08
  (91, 9100, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 25),
  -- Gastly - Hypnosis - Level 1
  (92, 9200, 95, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastly - Lick - Level 1
  (92, 9200, 122, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gastly - Spite - Level 8
  (92, 9200, 180, 5, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Gastly - Mean Look - Level 13
  (92, 9200, 212, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Gastly - Curse - Level 16
  (92, 9200, 174, 5, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Gastly - Night Shade - Level 21
  (92, 9200, 101, 5, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Gastly - Confuse Ray - Level 28
  (92, 9200, 109, 5, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Gastly - Dream Eater - Level 33
  (92, 9200, 138, 5, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Gastly - Destiny Bond - Level 36
  (92, 9200, 194, 5, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Gastly - Toxic - TM06
  (92, 9200, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 10),
  -- Gastly - Hidden Power - TM10
  (92, 9200, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 11),
  -- Gastly - Sunny Day - TM11
  (92, 9200, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 12),
  -- Gastly - Taunt - TM12
  (92, 9200, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 13),
  -- Gastly - Protect - TM17
  (92, 9200, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 14),
  -- Gastly - Rain Dance - TM18
  (92, 9200, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 15),
  -- Gastly - Giga Drain - TM19
  (92, 9200, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 16),
  -- Gastly - Frustration - TM21
  (92, 9200, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 17),
  -- Gastly - Thunderbolt - TM24
  (92, 9200, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 18),
  -- Gastly - Return - TM27
  (92, 9200, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 19),
  -- Gastly - Psychic - TM29
  (92, 9200, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 20),
  -- Gastly - Shadow Ball - TM30
  (92, 9200, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 21),
  -- Gastly - Double Team - TM32
  (92, 9200, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 22),
  -- Gastly - Sludge Bomb - TM36
  (92, 9200, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 23),
  -- Gastly - Torment - TM41
  (92, 9200, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 24),
  -- Gastly - Facade - TM42
  (92, 9200, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 25),
  -- Gastly - Secret Power - TM43
  (92, 9200, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 26),
  -- Gastly - Rest - TM44
  (92, 9200, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 27),
  -- Gastly - Attract - TM45
  (92, 9200, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 28),
  -- Gastly - Thief - TM46
  (92, 9200, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 29),
  -- Gastly - Skill Swap - TM48
  (92, 9200, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 30),
  -- Gastly - Snatch - TM49
  (92, 9200, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 31),
  -- Gastly - Astonish - Egg Move
  (92, 9200, 310, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Gastly - Explosion - Egg Move
  (92, 9200, 153, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Gastly - Grudge - Egg Move
  (92, 9200, 288, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Gastly - Haze - Egg Move
  (92, 9200, 114, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Gastly - Perish Song - Egg Move
  (92, 9200, 195, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Gastly - Psywave - Egg Move
  (92, 9200, 149, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Gastly - Will-O-Wisp - Egg Move
  (92, 9200, 261, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Haunter - Hypnosis - Level 1
  (93, 9300, 95, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Haunter - Lick - Level 1
  (93, 9300, 122, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Haunter - Spite - Level 1
  (93, 9300, 180, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Haunter - Spite - Level 8
  (93, 9300, 180, 5, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Haunter - Mean Look - Level 13
  (93, 9300, 212, 5, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Haunter - Curse - Level 16
  (93, 9300, 174, 5, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Haunter - Night Shade - Level 21
  (93, 9300, 101, 5, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Haunter - Shadow Punch - Level 25
  (93, 9300, 325, 5, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Haunter - Confuse Ray - Level 31
  (93, 9300, 109, 5, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Haunter - Dream Eater - Level 39
  (93, 9300, 138, 5, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Haunter - Destiny Bond - Level 48
  (93, 9300, 194, 5, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Haunter - Toxic - TM06
  (93, 9300, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Haunter - Hidden Power - TM10
  (93, 9300, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Haunter - Sunny Day - TM11
  (93, 9300, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Haunter - Taunt - TM12
  (93, 9300, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 15),
  -- Haunter - Protect - TM17
  (93, 9300, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Haunter - Rain Dance - TM18
  (93, 9300, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Haunter - Giga Drain - TM19
  (93, 9300, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 18),
  -- Haunter - Frustration - TM21
  (93, 9300, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Haunter - Thunderbolt - TM24
  (93, 9300, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 20),
  -- Haunter - Return - TM27
  (93, 9300, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Haunter - Psychic - TM29
  (93, 9300, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 22),
  -- Haunter - Shadow Ball - TM30
  (93, 9300, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 23),
  -- Haunter - Double Team - TM32
  (93, 9300, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Haunter - Sludge Bomb - TM36
  (93, 9300, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 25),
  -- Haunter - Torment - TM41
  (93, 9300, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 26),
  -- Haunter - Facade - TM42
  (93, 9300, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Haunter - Secret Power - TM43
  (93, 9300, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Haunter - Rest - TM44
  (93, 9300, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Haunter - Attract - TM45
  (93, 9300, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 30),
  -- Haunter - Thief - TM46
  (93, 9300, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 31),
  -- Haunter - Skill Swap - TM48
  (93, 9300, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 32),
  -- Haunter - Snatch - TM49
  (93, 9300, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 33),
  -- Gengar - Hypnosis - Level 1
  (94, 9400, 95, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gengar - Lick - Level 1
  (94, 9400, 122, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gengar - Spite - Level 1
  (94, 9400, 180, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gengar - Spite - Level 8
  (94, 9400, 180, 5, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Gengar - Mean Look - Level 13
  (94, 9400, 212, 5, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Gengar - Curse - Level 16
  (94, 9400, 174, 5, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gengar - Night Shade - Level 21
  (94, 9400, 101, 5, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Gengar - Shadow Punch - Level 25
  (94, 9400, 325, 5, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Gengar - Confuse Ray - Level 31
  (94, 9400, 109, 5, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Gengar - Dream Eater - Level 39
  (94, 9400, 138, 5, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Gengar - Destiny Bond - Level 48
  (94, 9400, 194, 5, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Gengar - Focus Punch - TM01
  (94, 9400, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 12),
  -- Gengar - Toxic - TM06
  (94, 9400, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Gengar - Hidden Power - TM10
  (94, 9400, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Gengar - Sunny Day - TM11
  (94, 9400, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Gengar - Taunt - TM12
  (94, 9400, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 16),
  -- Gengar - Hyper Beam - TM15
  (94, 9400, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 17),
  -- Gengar - Protect - TM17
  (94, 9400, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Gengar - Rain Dance - TM18
  (94, 9400, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 19),
  -- Gengar - Giga Drain - TM19
  (94, 9400, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 20),
  -- Gengar - Frustration - TM21
  (94, 9400, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 21),
  -- Gengar - Thunderbolt - TM24
  (94, 9400, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 22),
  -- Gengar - Thunder - TM25
  (94, 9400, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 23),
  -- Gengar - Return - TM27
  (94, 9400, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 24),
  -- Gengar - Psychic - TM29
  (94, 9400, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 25),
  -- Gengar - Shadow Ball - TM30
  (94, 9400, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 26),
  -- Gengar - Brick Break - TM31
  (94, 9400, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 27),
  -- Gengar - Double Team - TM32
  (94, 9400, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 28),
  -- Gengar - Sludge Bomb - TM36
  (94, 9400, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 29),
  -- Gengar - Torment - TM41
  (94, 9400, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 30),
  -- Gengar - Facade - TM42
  (94, 9400, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 31),
  -- Gengar - Secret Power - TM43
  (94, 9400, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 32),
  -- Gengar - Rest - TM44
  (94, 9400, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 33),
  -- Gengar - Attract - TM45
  (94, 9400, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 34),
  -- Gengar - Thief - TM46
  (94, 9400, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 35),
  -- Gengar - Skill Swap - TM48
  (94, 9400, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 36),
  -- Gengar - Snatch - TM49
  (94, 9400, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 37),
  -- Gengar - Strength - HM04
  (94, 9400, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 38),
  -- Gengar - Rock Smash - HM06
  (94, 9400, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 39),
  -- Onix - Tackle - Level 1
  (95, 9500, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Onix - Screech - Level 1
  (95, 9500, 103, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Onix - Bind - Level 9
  (95, 9500, 20, 5, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Onix - Rock Throw - Level 13
  (95, 9500, 88, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Onix - Harden - Level 21
  (95, 9500, 106, 5, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Onix - Rage - Level 25
  (95, 9500, 99, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Onix - Sandstorm - Level 33
  (95, 9500, 201, 5, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Onix - Slam - Level 37
  (95, 9500, 21, 5, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Onix - Iron Tail - Level 45
  (95, 9500, 231, 5, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Onix - Sand Tomb - Level 49
  (95, 9500, 328, 5, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Onix - Double-Edge - Level 57
  (95, 9500, 38, 5, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Onix - Roar - TM05
  (95, 9500, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 12),
  -- Onix - Toxic - TM06
  (95, 9500, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Onix - Hidden Power - TM10
  (95, 9500, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Onix - Sunny Day - TM11
  (95, 9500, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Onix - Taunt - TM12
  (95, 9500, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 16),
  -- Onix - Protect - TM17
  (95, 9500, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Onix - Frustration - TM21
  (95, 9500, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Onix - Iron Tail - TM23
  (95, 9500, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 19),
  -- Onix - Earthquake - TM26
  (95, 9500, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 20),
  -- Onix - Return - TM27
  (95, 9500, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Onix - Dig - TM28
  (95, 9500, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 22),
  -- Onix - Double Team - TM32
  (95, 9500, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 23),
  -- Onix - Sandstorm - TM37
  (95, 9500, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 24),
  -- Onix - Rock Tomb - TM39
  (95, 9500, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 25),
  -- Onix - Torment - TM41
  (95, 9500, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 26),
  -- Onix - Facade - TM42
  (95, 9500, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Onix - Secret Power - TM43
  (95, 9500, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Onix - Rest - TM44
  (95, 9500, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Onix - Attract - TM45
  (95, 9500, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 30),
  -- Onix - Strength - HM04
  (95, 9500, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 31),
  -- Onix - Rock Smash - HM06
  (95, 9500, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 32),
  -- Onix - Block - Egg Move
  (95, 9500, 335, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Onix - Explosion - Egg Move
  (95, 9500, 153, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Onix - Flail - Egg Move
  (95, 9500, 175, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Onix - Rock Slide - Egg Move
  (95, 9500, 157, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Drowzee - Pound - Level 1
  (96, 9600, 1, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drowzee - Hypnosis - Level 1
  (96, 9600, 95, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drowzee - Disable - Level 10
  (96, 9600, 50, 5, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Drowzee - Confusion - Level 18
  (96, 9600, 93, 5, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Drowzee - Headbutt - Level 25
  (96, 9600, 29, 5, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Drowzee - Poison Gas - Level 31
  (96, 9600, 139, 5, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Drowzee - Meditate - Level 36
  (96, 9600, 96, 5, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Drowzee - Psychic - Level 40
  (96, 9600, 94, 5, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Drowzee - Psych Up - Level 43
  (96, 9600, 244, 5, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Drowzee - Future Sight - Level 45
  (96, 9600, 248, 5, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Drowzee - Focus Punch - TM01
  (96, 9600, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 11),
  -- Drowzee - Calm Mind - TM04
  (96, 9600, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 12),
  -- Drowzee - Toxic - TM06
  (96, 9600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Drowzee - Hidden Power - TM10
  (96, 9600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Drowzee - Sunny Day - TM11
  (96, 9600, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Drowzee - Taunt - TM12
  (96, 9600, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 16),
  -- Drowzee - Light Screen - TM16
  (96, 9600, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 17),
  -- Drowzee - Protect - TM17
  (96, 9600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Drowzee - Rain Dance - TM18
  (96, 9600, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 19),
  -- Drowzee - Safeguard - TM20
  (96, 9600, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 20),
  -- Drowzee - Frustration - TM21
  (96, 9600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 21),
  -- Drowzee - Return - TM27
  (96, 9600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 22),
  -- Drowzee - Psychic - TM29
  (96, 9600, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 23),
  -- Drowzee - Shadow Ball - TM30
  (96, 9600, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 24),
  -- Drowzee - Brick Break - TM31
  (96, 9600, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 25),
  -- Drowzee - Double Team - TM32
  (96, 9600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 26),
  -- Drowzee - Reflect - TM33
  (96, 9600, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 27),
  -- Drowzee - Torment - TM41
  (96, 9600, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 28),
  -- Drowzee - Facade - TM42
  (96, 9600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 29),
  -- Drowzee - Secret Power - TM43
  (96, 9600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 30),
  -- Drowzee - Rest - TM44
  (96, 9600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 31),
  -- Drowzee - Attract - TM45
  (96, 9600, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 32),
  -- Drowzee - Thief - TM46
  (96, 9600, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 33),
  -- Drowzee - Skill Swap - TM48
  (96, 9600, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 34),
  -- Drowzee - Snatch - TM49
  (96, 9600, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 35),
  -- Drowzee - Flash - HM05
  (96, 9600, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 36),
  -- Drowzee - Assist - Egg Move
  (96, 9600, 274, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Drowzee - Barrier - Egg Move
  (96, 9600, 112, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Drowzee - Fire Punch - Egg Move
  (96, 9600, 7, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Drowzee - Ice Punch - Egg Move
  (96, 9600, 8, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Drowzee - Role Play - Egg Move
  (96, 9600, 272, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Drowzee - Thunder Punch - Egg Move
  (96, 9600, 9, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Hypno - Pound - Level 1
  (97, 9700, 1, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hypno - Hypnosis - Level 1
  (97, 9700, 95, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hypno - Disable - Level 1
  (97, 9700, 50, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hypno - Confusion - Level 1
  (97, 9700, 93, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hypno - Disable - Level 10
  (97, 9700, 50, 5, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Hypno - Confusion - Level 18
  (97, 9700, 93, 5, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Hypno - Headbutt - Level 25
  (97, 9700, 29, 5, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Hypno - Poison Gas - Level 33
  (97, 9700, 139, 5, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Hypno - Meditate - Level 40
  (97, 9700, 96, 5, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Hypno - Psychic - Level 49
  (97, 9700, 94, 5, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Hypno - Psych Up - Level 55
  (97, 9700, 244, 5, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Hypno - Future Sight - Level 60
  (97, 9700, 248, 5, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Hypno - Focus Punch - TM01
  (97, 9700, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 13),
  -- Hypno - Calm Mind - TM04
  (97, 9700, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 14),
  -- Hypno - Toxic - TM06
  (97, 9700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 15),
  -- Hypno - Hidden Power - TM10
  (97, 9700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Hypno - Sunny Day - TM11
  (97, 9700, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 17),
  -- Hypno - Taunt - TM12
  (97, 9700, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 18),
  -- Hypno - Hyper Beam - TM15
  (97, 9700, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 19),
  -- Hypno - Light Screen - TM16
  (97, 9700, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 20),
  -- Hypno - Protect - TM17
  (97, 9700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 21),
  -- Hypno - Rain Dance - TM18
  (97, 9700, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 22),
  -- Hypno - Safeguard - TM20
  (97, 9700, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 23),
  -- Hypno - Frustration - TM21
  (97, 9700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 24),
  -- Hypno - Return - TM27
  (97, 9700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 25),
  -- Hypno - Psychic - TM29
  (97, 9700, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 26),
  -- Hypno - Shadow Ball - TM30
  (97, 9700, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 27),
  -- Hypno - Brick Break - TM31
  (97, 9700, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 28),
  -- Hypno - Double Team - TM32
  (97, 9700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 29),
  -- Hypno - Reflect - TM33
  (97, 9700, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 30),
  -- Hypno - Torment - TM41
  (97, 9700, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 31),
  -- Hypno - Facade - TM42
  (97, 9700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 32),
  -- Hypno - Secret Power - TM43
  (97, 9700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 33),
  -- Hypno - Rest - TM44
  (97, 9700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 34),
  -- Hypno - Attract - TM45
  (97, 9700, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 35),
  -- Hypno - Thief - TM46
  (97, 9700, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 36),
  -- Hypno - Skill Swap - TM48
  (97, 9700, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 37),
  -- Hypno - Snatch - TM49
  (97, 9700, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 38),
  -- Hypno - Flash - HM05
  (97, 9700, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 39),
  -- Krabby - Bubble - Level 1
  (98, 9800, 145, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krabby - Leer - Level 5
  (98, 9800, 43, 5, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Krabby - Vise Grip - Level 12
  (98, 9800, 11, 5, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Krabby - Harden - Level 16
  (98, 9800, 106, 5, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Krabby - Mud Shot - Level 23
  (98, 9800, 341, 5, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Krabby - Stomp - Level 27
  (98, 9800, 23, 5, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Krabby - Guillotine - Level 34
  (98, 9800, 12, 5, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Krabby - Protect - Level 41
  (98, 9800, 182, 5, NULL, 1, 41, NULL, NULL, NULL, 8),
  -- Krabby - Crabhammer - Level 45
  (98, 9800, 152, 5, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Krabby - Water Pulse - TM03
  (98, 9800, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 10),
  -- Krabby - Toxic - TM06
  (98, 9800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Krabby - Hail - TM07
  (98, 9800, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 12),
  -- Krabby - Hidden Power - TM10
  (98, 9800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Krabby - Ice Beam - TM13
  (98, 9800, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 14),
  -- Krabby - Blizzard - TM14
  (98, 9800, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 15),
  -- Krabby - Protect - TM17
  (98, 9800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Krabby - Rain Dance - TM18
  (98, 9800, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Krabby - Frustration - TM21
  (98, 9800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Krabby - Return - TM27
  (98, 9800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 19),
  -- Krabby - Dig - TM28
  (98, 9800, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 20),
  -- Krabby - Double Team - TM32
  (98, 9800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 21),
  -- Krabby - Rock Tomb - TM39
  (98, 9800, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 22),
  -- Krabby - Facade - TM42
  (98, 9800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 23),
  -- Krabby - Secret Power - TM43
  (98, 9800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 24),
  -- Krabby - Rest - TM44
  (98, 9800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 25),
  -- Krabby - Attract - TM45
  (98, 9800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 26),
  -- Krabby - Thief - TM46
  (98, 9800, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 27),
  -- Krabby - Cut - HM01
  (98, 9800, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 28),
  -- Krabby - Surf - HM03
  (98, 9800, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 29),
  -- Krabby - Strength - HM04
  (98, 9800, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 30),
  -- Krabby - Rock Smash - HM06
  (98, 9800, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 31),
  -- Krabby - Dive - HM08
  (98, 9800, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 32),
  -- Krabby - Amnesia - Egg Move
  (98, 9800, 133, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Krabby - Dig - Egg Move
  (98, 9800, 91, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Krabby - Flail - Egg Move
  (98, 9800, 175, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Krabby - Haze - Egg Move
  (98, 9800, 114, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Krabby - Knock Off - Egg Move
  (98, 9800, 282, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Krabby - Slam - Egg Move
  (98, 9800, 21, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Krabby - Swords Dance - Egg Move
  (98, 9800, 14, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Kingler - Bubble - Level 1
  (99, 9900, 145, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kingler - Leer - Level 1
  (99, 9900, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kingler - Vise Grip - Level 1
  (99, 9900, 11, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kingler - Leer - Level 5
  (99, 9900, 43, 5, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Kingler - Vise Grip - Level 12
  (99, 9900, 11, 5, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Kingler - Harden - Level 16
  (99, 9900, 106, 5, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Kingler - Mud Shot - Level 23
  (99, 9900, 341, 5, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Kingler - Stomp - Level 27
  (99, 9900, 23, 5, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Kingler - Guillotine - Level 38
  (99, 9900, 12, 5, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Kingler - Protect - Level 49
  (99, 9900, 182, 5, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Kingler - Crabhammer - Level 57
  (99, 9900, 152, 5, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Kingler - Water Pulse - TM03
  (99, 9900, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 12),
  -- Kingler - Toxic - TM06
  (99, 9900, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Kingler - Hail - TM07
  (99, 9900, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 14),
  -- Kingler - Hidden Power - TM10
  (99, 9900, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Kingler - Ice Beam - TM13
  (99, 9900, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 16),
  -- Kingler - Blizzard - TM14
  (99, 9900, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 17),
  -- Kingler - Hyper Beam - TM15
  (99, 9900, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 18),
  -- Kingler - Protect - TM17
  (99, 9900, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 19),
  -- Kingler - Rain Dance - TM18
  (99, 9900, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 20),
  -- Kingler - Frustration - TM21
  (99, 9900, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 21),
  -- Kingler - Return - TM27
  (99, 9900, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 22),
  -- Kingler - Dig - TM28
  (99, 9900, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 23),
  -- Kingler - Double Team - TM32
  (99, 9900, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Kingler - Rock Tomb - TM39
  (99, 9900, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 25),
  -- Kingler - Facade - TM42
  (99, 9900, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 26),
  -- Kingler - Secret Power - TM43
  (99, 9900, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 27),
  -- Kingler - Rest - TM44
  (99, 9900, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 28),
  -- Kingler - Attract - TM45
  (99, 9900, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 29),
  -- Kingler - Thief - TM46
  (99, 9900, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 30),
  -- Kingler - Cut - HM01
  (99, 9900, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 31),
  -- Kingler - Surf - HM03
  (99, 9900, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 32),
  -- Kingler - Strength - HM04
  (99, 9900, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 33),
  -- Kingler - Rock Smash - HM06
  (99, 9900, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 34),
  -- Kingler - Dive - HM08
  (99, 9900, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 35),
  -- Voltorb - Charge - Level 1
  (100, 10000, 268, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Voltorb - Tackle - Level 1
  (100, 10000, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Voltorb - Screech - Level 8
  (100, 10000, 103, 5, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Voltorb - Sonic Boom - Level 15
  (100, 10000, 49, 5, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Voltorb - Spark - Level 21
  (100, 10000, 209, 5, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Voltorb - Self-Destruct - Level 27
  (100, 10000, 120, 5, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Voltorb - Rollout - Level 32
  (100, 10000, 205, 5, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Voltorb - Light Screen - Level 37
  (100, 10000, 113, 5, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Voltorb - Swift - Level 42
  (100, 10000, 129, 5, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Voltorb - Explosion - Level 46
  (100, 10000, 153, 5, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Voltorb - Mirror Coat - Level 49
  (100, 10000, 243, 5, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Voltorb - Toxic - TM06
  (100, 10000, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Voltorb - Hidden Power - TM10
  (100, 10000, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Voltorb - Taunt - TM12
  (100, 10000, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 14),
  -- Voltorb - Light Screen - TM16
  (100, 10000, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 15),
  -- Voltorb - Protect - TM17
  (100, 10000, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Voltorb - Rain Dance - TM18
  (100, 10000, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Voltorb - Frustration - TM21
  (100, 10000, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Voltorb - Thunderbolt - TM24
  (100, 10000, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 19),
  -- Voltorb - Thunder - TM25
  (100, 10000, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 20),
  -- Voltorb - Return - TM27
  (100, 10000, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Voltorb - Double Team - TM32
  (100, 10000, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 22),
  -- Voltorb - Shock Wave - TM34
  (100, 10000, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 23),
  -- Voltorb - Torment - TM41
  (100, 10000, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 24),
  -- Voltorb - Facade - TM42
  (100, 10000, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 25),
  -- Voltorb - Secret Power - TM43
  (100, 10000, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 26),
  -- Voltorb - Rest - TM44
  (100, 10000, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 27),
  -- Voltorb - Thief - TM46
  (100, 10000, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 28),
  -- Voltorb - Flash - HM05
  (100, 10000, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 29);
