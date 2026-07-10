-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation I Pokémon learnset raw pages, using the RGB
-- level column and RB-gated TM/HM rows for Red / Blue scope.
-- Cross-check: Serebii Gen I Pokedex learnset pages and PokemonDB Generation
-- 1 Red / Blue learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Red / Blue
-- Pokémon: #051-#100
-- Rows: 1401
-- Scope: direct level-up, TM, and HM acquisition rows only. Yellow-only,
-- reminder, prior-evolution, event, and transfer sections are intentionally
-- excluded from this Red / Blue direct learnset seed.
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
  (51, 5100, 10, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dugtrio - Growl - Level 1
  (51, 5100, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dugtrio - Dig - Level 1
  (51, 5100, 91, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dugtrio - Growl - Level 15
  (51, 5100, 45, 1, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Dugtrio - Dig - Level 19
  (51, 5100, 91, 1, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Dugtrio - Sand Attack - Level 24
  (51, 5100, 28, 1, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Dugtrio - Slash - Level 35
  (51, 5100, 163, 1, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Dugtrio - Earthquake - Level 47
  (51, 5100, 89, 1, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Dugtrio - Toxic - TM06
  (51, 5100, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Dugtrio - Body Slam - TM08
  (51, 5100, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 10),
  -- Dugtrio - Take Down - TM09
  (51, 5100, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Dugtrio - Double-Edge - TM10
  (51, 5100, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Dugtrio - Hyper Beam - TM15
  (51, 5100, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 13),
  -- Dugtrio - Rage - TM20
  (51, 5100, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 14),
  -- Dugtrio - Earthquake - TM26
  (51, 5100, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 15),
  -- Dugtrio - Fissure - TM27
  (51, 5100, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 16),
  -- Dugtrio - Dig - TM28
  (51, 5100, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 17),
  -- Dugtrio - Mimic - TM31
  (51, 5100, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 18),
  -- Dugtrio - Double Team - TM32
  (51, 5100, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 19),
  -- Dugtrio - Bide - TM34
  (51, 5100, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Dugtrio - Rest - TM44
  (51, 5100, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 21),
  -- Dugtrio - Rock Slide - TM48
  (51, 5100, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 22),
  -- Dugtrio - Substitute - TM50
  (51, 5100, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 23),
  -- Meowth - Scratch - Level 1
  (52, 5200, 10, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowth - Growl - Level 1
  (52, 5200, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowth - Bite - Level 12
  (52, 5200, 44, 1, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Meowth - Pay Day - Level 17
  (52, 5200, 6, 1, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Meowth - Screech - Level 24
  (52, 5200, 103, 1, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Meowth - Fury Swipes - Level 33
  (52, 5200, 154, 1, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Meowth - Slash - Level 44
  (52, 5200, 163, 1, NULL, 1, 44, NULL, NULL, NULL, 7),
  -- Meowth - Toxic - TM06
  (52, 5200, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Meowth - Body Slam - TM08
  (52, 5200, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 9),
  -- Meowth - Take Down - TM09
  (52, 5200, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Meowth - Double-Edge - TM10
  (52, 5200, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Meowth - Bubble Beam - TM11
  (52, 5200, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 12),
  -- Meowth - Water Gun - TM12
  (52, 5200, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 13),
  -- Meowth - Pay Day - TM16
  (52, 5200, 6, 1, NULL, 2, NULL, NULL, 1002016, NULL, 14),
  -- Meowth - Rage - TM20
  (52, 5200, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 15),
  -- Meowth - Thunderbolt - TM24
  (52, 5200, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 16),
  -- Meowth - Thunder - TM25
  (52, 5200, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 17),
  -- Meowth - Mimic - TM31
  (52, 5200, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 18),
  -- Meowth - Double Team - TM32
  (52, 5200, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 19),
  -- Meowth - Bide - TM34
  (52, 5200, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Meowth - Swift - TM39
  (52, 5200, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 21),
  -- Meowth - Skull Bash - TM40
  (52, 5200, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 22),
  -- Meowth - Rest - TM44
  (52, 5200, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 23),
  -- Meowth - Substitute - TM50
  (52, 5200, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 24),
  -- Persian - Scratch - Level 1
  (53, 5300, 10, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Persian - Growl - Level 1
  (53, 5300, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Persian - Bite - Level 1
  (53, 5300, 44, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Persian - Screech - Level 1
  (53, 5300, 103, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Persian - Bite - Level 12
  (53, 5300, 44, 1, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Persian - Pay Day - Level 17
  (53, 5300, 6, 1, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Persian - Screech - Level 24
  (53, 5300, 103, 1, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Persian - Fury Swipes - Level 37
  (53, 5300, 154, 1, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Persian - Slash - Level 51
  (53, 5300, 163, 1, NULL, 1, 51, NULL, NULL, NULL, 9),
  -- Persian - Toxic - TM06
  (53, 5300, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Persian - Body Slam - TM08
  (53, 5300, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Persian - Take Down - TM09
  (53, 5300, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Persian - Double-Edge - TM10
  (53, 5300, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Persian - Bubble Beam - TM11
  (53, 5300, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 14),
  -- Persian - Water Gun - TM12
  (53, 5300, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 15),
  -- Persian - Hyper Beam - TM15
  (53, 5300, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 16),
  -- Persian - Pay Day - TM16
  (53, 5300, 6, 1, NULL, 2, NULL, NULL, 1002016, NULL, 17),
  -- Persian - Rage - TM20
  (53, 5300, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 18),
  -- Persian - Thunderbolt - TM24
  (53, 5300, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 19),
  -- Persian - Thunder - TM25
  (53, 5300, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 20),
  -- Persian - Mimic - TM31
  (53, 5300, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 21),
  -- Persian - Double Team - TM32
  (53, 5300, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 22),
  -- Persian - Bide - TM34
  (53, 5300, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 23),
  -- Persian - Swift - TM39
  (53, 5300, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 24),
  -- Persian - Skull Bash - TM40
  (53, 5300, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 25),
  -- Persian - Rest - TM44
  (53, 5300, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 26),
  -- Persian - Substitute - TM50
  (53, 5300, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 27),
  -- Psyduck - Scratch - Level 1
  (54, 5400, 10, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Psyduck - Tail Whip - Level 28
  (54, 5400, 39, 1, NULL, 1, 28, NULL, NULL, NULL, 2),
  -- Psyduck - Disable - Level 31
  (54, 5400, 50, 1, NULL, 1, 31, NULL, NULL, NULL, 3),
  -- Psyduck - Confusion - Level 36
  (54, 5400, 93, 1, NULL, 1, 36, NULL, NULL, NULL, 4),
  -- Psyduck - Fury Swipes - Level 43
  (54, 5400, 154, 1, NULL, 1, 43, NULL, NULL, NULL, 5),
  -- Psyduck - Hydro Pump - Level 52
  (54, 5400, 56, 1, NULL, 1, 52, NULL, NULL, NULL, 6),
  -- Psyduck - Mega Punch - TM01
  (54, 5400, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 7),
  -- Psyduck - Mega Kick - TM05
  (54, 5400, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 8),
  -- Psyduck - Toxic - TM06
  (54, 5400, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Psyduck - Body Slam - TM08
  (54, 5400, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 10),
  -- Psyduck - Take Down - TM09
  (54, 5400, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Psyduck - Double-Edge - TM10
  (54, 5400, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Psyduck - Bubble Beam - TM11
  (54, 5400, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 13),
  -- Psyduck - Water Gun - TM12
  (54, 5400, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 14),
  -- Psyduck - Ice Beam - TM13
  (54, 5400, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 15),
  -- Psyduck - Blizzard - TM14
  (54, 5400, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 16),
  -- Psyduck - Pay Day - TM16
  (54, 5400, 6, 1, NULL, 2, NULL, NULL, 1002016, NULL, 17),
  -- Psyduck - Submission - TM17
  (54, 5400, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 18),
  -- Psyduck - Counter - TM18
  (54, 5400, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 19),
  -- Psyduck - Seismic Toss - TM19
  (54, 5400, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 20),
  -- Psyduck - Rage - TM20
  (54, 5400, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 21),
  -- Psyduck - Dig - TM28
  (54, 5400, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 22),
  -- Psyduck - Mimic - TM31
  (54, 5400, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 23),
  -- Psyduck - Double Team - TM32
  (54, 5400, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 24),
  -- Psyduck - Bide - TM34
  (54, 5400, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 25),
  -- Psyduck - Swift - TM39
  (54, 5400, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 26),
  -- Psyduck - Skull Bash - TM40
  (54, 5400, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 27),
  -- Psyduck - Rest - TM44
  (54, 5400, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 28),
  -- Psyduck - Substitute - TM50
  (54, 5400, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 29),
  -- Psyduck - Surf - HM03
  (54, 5400, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 30),
  -- Psyduck - Strength - HM04
  (54, 5400, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 31),
  -- Golduck - Scratch - Level 1
  (55, 5500, 10, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golduck - Tail Whip - Level 1
  (55, 5500, 39, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golduck - Disable - Level 1
  (55, 5500, 50, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golduck - Tail Whip - Level 28
  (55, 5500, 39, 1, NULL, 1, 28, NULL, NULL, NULL, 4),
  -- Golduck - Disable - Level 31
  (55, 5500, 50, 1, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Golduck - Confusion - Level 39
  (55, 5500, 93, 1, NULL, 1, 39, NULL, NULL, NULL, 6),
  -- Golduck - Fury Swipes - Level 48
  (55, 5500, 154, 1, NULL, 1, 48, NULL, NULL, NULL, 7),
  -- Golduck - Hydro Pump - Level 59
  (55, 5500, 56, 1, NULL, 1, 59, NULL, NULL, NULL, 8),
  -- Golduck - Mega Punch - TM01
  (55, 5500, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 9),
  -- Golduck - Mega Kick - TM05
  (55, 5500, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 10),
  -- Golduck - Toxic - TM06
  (55, 5500, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Golduck - Body Slam - TM08
  (55, 5500, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 12),
  -- Golduck - Take Down - TM09
  (55, 5500, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Golduck - Double-Edge - TM10
  (55, 5500, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Golduck - Bubble Beam - TM11
  (55, 5500, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 15),
  -- Golduck - Water Gun - TM12
  (55, 5500, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 16),
  -- Golduck - Ice Beam - TM13
  (55, 5500, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 17),
  -- Golduck - Blizzard - TM14
  (55, 5500, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 18),
  -- Golduck - Hyper Beam - TM15
  (55, 5500, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 19),
  -- Golduck - Pay Day - TM16
  (55, 5500, 6, 1, NULL, 2, NULL, NULL, 1002016, NULL, 20),
  -- Golduck - Submission - TM17
  (55, 5500, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 21),
  -- Golduck - Counter - TM18
  (55, 5500, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 22),
  -- Golduck - Seismic Toss - TM19
  (55, 5500, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 23),
  -- Golduck - Rage - TM20
  (55, 5500, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 24),
  -- Golduck - Dig - TM28
  (55, 5500, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 25),
  -- Golduck - Mimic - TM31
  (55, 5500, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 26),
  -- Golduck - Double Team - TM32
  (55, 5500, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 27),
  -- Golduck - Bide - TM34
  (55, 5500, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 28),
  -- Golduck - Swift - TM39
  (55, 5500, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 29),
  -- Golduck - Skull Bash - TM40
  (55, 5500, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 30),
  -- Golduck - Rest - TM44
  (55, 5500, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 31),
  -- Golduck - Substitute - TM50
  (55, 5500, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 32),
  -- Golduck - Surf - HM03
  (55, 5500, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 33),
  -- Golduck - Strength - HM04
  (55, 5500, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 34),
  -- Mankey - Scratch - Level 1
  (56, 5600, 10, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mankey - Leer - Level 1
  (56, 5600, 43, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mankey - Karate Chop - Level 15
  (56, 5600, 2, 1, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Mankey - Fury Swipes - Level 21
  (56, 5600, 154, 1, NULL, 1, 21, NULL, NULL, NULL, 4),
  -- Mankey - Focus Energy - Level 27
  (56, 5600, 116, 1, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Mankey - Seismic Toss - Level 33
  (56, 5600, 69, 1, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Mankey - Thrash - Level 39
  (56, 5600, 37, 1, NULL, 1, 39, NULL, NULL, NULL, 7),
  -- Mankey - Mega Punch - TM01
  (56, 5600, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 8),
  -- Mankey - Mega Kick - TM05
  (56, 5600, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 9),
  -- Mankey - Toxic - TM06
  (56, 5600, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Mankey - Body Slam - TM08
  (56, 5600, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Mankey - Take Down - TM09
  (56, 5600, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Mankey - Double-Edge - TM10
  (56, 5600, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Mankey - Pay Day - TM16
  (56, 5600, 6, 1, NULL, 2, NULL, NULL, 1002016, NULL, 14),
  -- Mankey - Submission - TM17
  (56, 5600, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 15),
  -- Mankey - Counter - TM18
  (56, 5600, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 16),
  -- Mankey - Seismic Toss - TM19
  (56, 5600, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 17),
  -- Mankey - Rage - TM20
  (56, 5600, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 18),
  -- Mankey - Thunderbolt - TM24
  (56, 5600, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 19),
  -- Mankey - Thunder - TM25
  (56, 5600, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 20),
  -- Mankey - Dig - TM28
  (56, 5600, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 21),
  -- Mankey - Mimic - TM31
  (56, 5600, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 22),
  -- Mankey - Double Team - TM32
  (56, 5600, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 23),
  -- Mankey - Bide - TM34
  (56, 5600, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 24),
  -- Mankey - Metronome - TM35
  (56, 5600, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 25),
  -- Mankey - Swift - TM39
  (56, 5600, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 26),
  -- Mankey - Skull Bash - TM40
  (56, 5600, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 27),
  -- Mankey - Rest - TM44
  (56, 5600, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 28),
  -- Mankey - Rock Slide - TM48
  (56, 5600, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 29),
  -- Mankey - Substitute - TM50
  (56, 5600, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 30),
  -- Mankey - Strength - HM04
  (56, 5600, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 31),
  -- Primeape - Scratch - Level 1
  (57, 5700, 10, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Primeape - Leer - Level 1
  (57, 5700, 43, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Primeape - Karate Chop - Level 1
  (57, 5700, 2, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Primeape - Karate Chop - Level 15
  (57, 5700, 2, 1, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Primeape - Fury Swipes - Level 21
  (57, 5700, 154, 1, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Primeape - Focus Energy - Level 27
  (57, 5700, 116, 1, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Primeape - Seismic Toss - Level 37
  (57, 5700, 69, 1, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Primeape - Thrash - Level 46
  (57, 5700, 37, 1, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Primeape - Fury Swipes - Level 1
  (57, 5700, 154, 1, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Primeape - Mega Punch - TM01
  (57, 5700, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 10),
  -- Primeape - Mega Kick - TM05
  (57, 5700, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 11),
  -- Primeape - Toxic - TM06
  (57, 5700, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 12),
  -- Primeape - Body Slam - TM08
  (57, 5700, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 13),
  -- Primeape - Take Down - TM09
  (57, 5700, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 14),
  -- Primeape - Double-Edge - TM10
  (57, 5700, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 15),
  -- Primeape - Hyper Beam - TM15
  (57, 5700, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 16),
  -- Primeape - Pay Day - TM16
  (57, 5700, 6, 1, NULL, 2, NULL, NULL, 1002016, NULL, 17),
  -- Primeape - Submission - TM17
  (57, 5700, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 18),
  -- Primeape - Counter - TM18
  (57, 5700, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 19),
  -- Primeape - Seismic Toss - TM19
  (57, 5700, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 20),
  -- Primeape - Rage - TM20
  (57, 5700, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 21),
  -- Primeape - Thunderbolt - TM24
  (57, 5700, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 22),
  -- Primeape - Thunder - TM25
  (57, 5700, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 23),
  -- Primeape - Dig - TM28
  (57, 5700, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 24),
  -- Primeape - Mimic - TM31
  (57, 5700, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 25),
  -- Primeape - Double Team - TM32
  (57, 5700, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 26),
  -- Primeape - Bide - TM34
  (57, 5700, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 27),
  -- Primeape - Metronome - TM35
  (57, 5700, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 28),
  -- Primeape - Swift - TM39
  (57, 5700, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 29),
  -- Primeape - Skull Bash - TM40
  (57, 5700, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 30),
  -- Primeape - Rest - TM44
  (57, 5700, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 31),
  -- Primeape - Rock Slide - TM48
  (57, 5700, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 32),
  -- Primeape - Substitute - TM50
  (57, 5700, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 33),
  -- Primeape - Strength - HM04
  (57, 5700, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 34),
  -- Growlithe - Bite - Level 1
  (58, 5800, 44, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Growlithe - Roar - Level 1
  (58, 5800, 46, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Growlithe - Ember - Level 18
  (58, 5800, 52, 1, NULL, 1, 18, NULL, NULL, NULL, 3),
  -- Growlithe - Leer - Level 23
  (58, 5800, 43, 1, NULL, 1, 23, NULL, NULL, NULL, 4),
  -- Growlithe - Take Down - Level 30
  (58, 5800, 36, 1, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Growlithe - Agility - Level 39
  (58, 5800, 97, 1, NULL, 1, 39, NULL, NULL, NULL, 6),
  -- Growlithe - Flamethrower - Level 50
  (58, 5800, 53, 1, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Growlithe - Toxic - TM06
  (58, 5800, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Growlithe - Body Slam - TM08
  (58, 5800, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 9),
  -- Growlithe - Take Down - TM09
  (58, 5800, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Growlithe - Double-Edge - TM10
  (58, 5800, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Growlithe - Rage - TM20
  (58, 5800, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 12),
  -- Growlithe - Dragon Rage - TM23
  (58, 5800, 82, 1, NULL, 2, NULL, NULL, 1002023, NULL, 13),
  -- Growlithe - Dig - TM28
  (58, 5800, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 14),
  -- Growlithe - Mimic - TM31
  (58, 5800, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 15),
  -- Growlithe - Double Team - TM32
  (58, 5800, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 16),
  -- Growlithe - Reflect - TM33
  (58, 5800, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 17),
  -- Growlithe - Bide - TM34
  (58, 5800, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 18),
  -- Growlithe - Fire Blast - TM38
  (58, 5800, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 19),
  -- Growlithe - Swift - TM39
  (58, 5800, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 20),
  -- Growlithe - Skull Bash - TM40
  (58, 5800, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 21),
  -- Growlithe - Rest - TM44
  (58, 5800, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 22),
  -- Growlithe - Substitute - TM50
  (58, 5800, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 23),
  -- Arcanine - Roar - Level 1
  (59, 5900, 46, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arcanine - Ember - Level 1
  (59, 5900, 52, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arcanine - Leer - Level 1
  (59, 5900, 43, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arcanine - Take Down - Level 1
  (59, 5900, 36, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arcanine - Toxic - TM06
  (59, 5900, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 5),
  -- Arcanine - Body Slam - TM08
  (59, 5900, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 6),
  -- Arcanine - Take Down - TM09
  (59, 5900, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 7),
  -- Arcanine - Double-Edge - TM10
  (59, 5900, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 8),
  -- Arcanine - Hyper Beam - TM15
  (59, 5900, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 9),
  -- Arcanine - Rage - TM20
  (59, 5900, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 10),
  -- Arcanine - Dragon Rage - TM23
  (59, 5900, 82, 1, NULL, 2, NULL, NULL, 1002023, NULL, 11),
  -- Arcanine - Dig - TM28
  (59, 5900, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 12),
  -- Arcanine - Teleport - TM30
  (59, 5900, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 13),
  -- Arcanine - Mimic - TM31
  (59, 5900, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 14),
  -- Arcanine - Double Team - TM32
  (59, 5900, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 15),
  -- Arcanine - Reflect - TM33
  (59, 5900, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 16),
  -- Arcanine - Bide - TM34
  (59, 5900, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 17),
  -- Arcanine - Fire Blast - TM38
  (59, 5900, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 18),
  -- Arcanine - Swift - TM39
  (59, 5900, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 19),
  -- Arcanine - Skull Bash - TM40
  (59, 5900, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 20),
  -- Arcanine - Rest - TM44
  (59, 5900, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 21),
  -- Arcanine - Substitute - TM50
  (59, 5900, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 22),
  -- Poliwag - Bubble - Level 1
  (60, 6000, 145, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwag - Hypnosis - Level 16
  (60, 6000, 95, 1, NULL, 1, 16, NULL, NULL, NULL, 2),
  -- Poliwag - Water Gun - Level 19
  (60, 6000, 55, 1, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Poliwag - Double Slap - Level 25
  (60, 6000, 3, 1, NULL, 1, 25, NULL, NULL, NULL, 4),
  -- Poliwag - Body Slam - Level 31
  (60, 6000, 34, 1, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Poliwag - Amnesia - Level 38
  (60, 6000, 133, 1, NULL, 1, 38, NULL, NULL, NULL, 6),
  -- Poliwag - Hydro Pump - Level 45
  (60, 6000, 56, 1, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Poliwag - Toxic - TM06
  (60, 6000, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Poliwag - Body Slam - TM08
  (60, 6000, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 9),
  -- Poliwag - Take Down - TM09
  (60, 6000, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Poliwag - Double-Edge - TM10
  (60, 6000, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Poliwag - Bubble Beam - TM11
  (60, 6000, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 12),
  -- Poliwag - Water Gun - TM12
  (60, 6000, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 13),
  -- Poliwag - Ice Beam - TM13
  (60, 6000, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 14),
  -- Poliwag - Blizzard - TM14
  (60, 6000, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 15),
  -- Poliwag - Rage - TM20
  (60, 6000, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 16),
  -- Poliwag - Psychic - TM29
  (60, 6000, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 17),
  -- Poliwag - Mimic - TM31
  (60, 6000, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 18),
  -- Poliwag - Double Team - TM32
  (60, 6000, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 19),
  -- Poliwag - Bide - TM34
  (60, 6000, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Poliwag - Skull Bash - TM40
  (60, 6000, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 21),
  -- Poliwag - Rest - TM44
  (60, 6000, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 22),
  -- Poliwag - Psywave - TM46
  (60, 6000, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 23),
  -- Poliwag - Substitute - TM50
  (60, 6000, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 24),
  -- Poliwag - Surf - HM03
  (60, 6000, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 25),
  -- Poliwhirl - Bubble - Level 1
  (61, 6100, 145, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwhirl - Hypnosis - Level 1
  (61, 6100, 95, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwhirl - Water Gun - Level 1
  (61, 6100, 55, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwhirl - Hypnosis - Level 16
  (61, 6100, 95, 1, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Poliwhirl - Water Gun - Level 19
  (61, 6100, 55, 1, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Poliwhirl - Double Slap - Level 26
  (61, 6100, 3, 1, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Poliwhirl - Body Slam - Level 33
  (61, 6100, 34, 1, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Poliwhirl - Amnesia - Level 41
  (61, 6100, 133, 1, NULL, 1, 41, NULL, NULL, NULL, 8),
  -- Poliwhirl - Hydro Pump - Level 49
  (61, 6100, 56, 1, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Poliwhirl - Mega Punch - TM01
  (61, 6100, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 10),
  -- Poliwhirl - Mega Kick - TM05
  (61, 6100, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 11),
  -- Poliwhirl - Toxic - TM06
  (61, 6100, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 12),
  -- Poliwhirl - Body Slam - TM08
  (61, 6100, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 13),
  -- Poliwhirl - Take Down - TM09
  (61, 6100, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 14),
  -- Poliwhirl - Double-Edge - TM10
  (61, 6100, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 15),
  -- Poliwhirl - Bubble Beam - TM11
  (61, 6100, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 16),
  -- Poliwhirl - Water Gun - TM12
  (61, 6100, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 17),
  -- Poliwhirl - Ice Beam - TM13
  (61, 6100, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 18),
  -- Poliwhirl - Blizzard - TM14
  (61, 6100, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 19),
  -- Poliwhirl - Submission - TM17
  (61, 6100, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 20),
  -- Poliwhirl - Counter - TM18
  (61, 6100, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 21),
  -- Poliwhirl - Seismic Toss - TM19
  (61, 6100, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 22),
  -- Poliwhirl - Rage - TM20
  (61, 6100, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 23),
  -- Poliwhirl - Earthquake - TM26
  (61, 6100, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 24),
  -- Poliwhirl - Fissure - TM27
  (61, 6100, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 25),
  -- Poliwhirl - Psychic - TM29
  (61, 6100, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 26),
  -- Poliwhirl - Mimic - TM31
  (61, 6100, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 27),
  -- Poliwhirl - Double Team - TM32
  (61, 6100, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 28),
  -- Poliwhirl - Bide - TM34
  (61, 6100, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 29),
  -- Poliwhirl - Metronome - TM35
  (61, 6100, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 30),
  -- Poliwhirl - Skull Bash - TM40
  (61, 6100, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 31),
  -- Poliwhirl - Rest - TM44
  (61, 6100, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 32),
  -- Poliwhirl - Psywave - TM46
  (61, 6100, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 33),
  -- Poliwhirl - Substitute - TM50
  (61, 6100, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 34),
  -- Poliwhirl - Surf - HM03
  (61, 6100, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 35),
  -- Poliwhirl - Strength - HM04
  (61, 6100, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 36),
  -- Poliwrath - Hypnosis - Level 1
  (62, 6200, 95, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwrath - Water Gun - Level 1
  (62, 6200, 55, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwrath - Double Slap - Level 1
  (62, 6200, 3, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwrath - Body Slam - Level 1
  (62, 6200, 34, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Poliwrath - Hypnosis - Level 16
  (62, 6200, 95, 1, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Poliwrath - Water Gun - Level 19
  (62, 6200, 55, 1, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Poliwrath - Mega Punch - TM01
  (62, 6200, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 7),
  -- Poliwrath - Mega Kick - TM05
  (62, 6200, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 8),
  -- Poliwrath - Toxic - TM06
  (62, 6200, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Poliwrath - Body Slam - TM08
  (62, 6200, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 10),
  -- Poliwrath - Take Down - TM09
  (62, 6200, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Poliwrath - Double-Edge - TM10
  (62, 6200, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Poliwrath - Bubble Beam - TM11
  (62, 6200, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 13),
  -- Poliwrath - Water Gun - TM12
  (62, 6200, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 14),
  -- Poliwrath - Ice Beam - TM13
  (62, 6200, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 15),
  -- Poliwrath - Blizzard - TM14
  (62, 6200, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 16),
  -- Poliwrath - Hyper Beam - TM15
  (62, 6200, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 17),
  -- Poliwrath - Submission - TM17
  (62, 6200, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 18),
  -- Poliwrath - Counter - TM18
  (62, 6200, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 19),
  -- Poliwrath - Seismic Toss - TM19
  (62, 6200, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 20),
  -- Poliwrath - Rage - TM20
  (62, 6200, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 21),
  -- Poliwrath - Earthquake - TM26
  (62, 6200, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 22),
  -- Poliwrath - Fissure - TM27
  (62, 6200, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 23),
  -- Poliwrath - Psychic - TM29
  (62, 6200, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 24),
  -- Poliwrath - Mimic - TM31
  (62, 6200, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 25),
  -- Poliwrath - Double Team - TM32
  (62, 6200, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 26),
  -- Poliwrath - Bide - TM34
  (62, 6200, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 27),
  -- Poliwrath - Metronome - TM35
  (62, 6200, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 28),
  -- Poliwrath - Skull Bash - TM40
  (62, 6200, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 29),
  -- Poliwrath - Rest - TM44
  (62, 6200, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 30),
  -- Poliwrath - Psywave - TM46
  (62, 6200, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 31),
  -- Poliwrath - Substitute - TM50
  (62, 6200, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 32),
  -- Poliwrath - Surf - HM03
  (62, 6200, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 33),
  -- Poliwrath - Strength - HM04
  (62, 6200, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 34),
  -- Abra - Teleport - Level 1
  (63, 6300, 100, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abra - Mega Punch - TM01
  (63, 6300, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 2),
  -- Abra - Mega Kick - TM05
  (63, 6300, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 3),
  -- Abra - Toxic - TM06
  (63, 6300, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 4),
  -- Abra - Body Slam - TM08
  (63, 6300, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 5),
  -- Abra - Take Down - TM09
  (63, 6300, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 6),
  -- Abra - Double-Edge - TM10
  (63, 6300, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 7),
  -- Abra - Submission - TM17
  (63, 6300, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 8),
  -- Abra - Counter - TM18
  (63, 6300, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 9),
  -- Abra - Seismic Toss - TM19
  (63, 6300, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 10),
  -- Abra - Rage - TM20
  (63, 6300, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 11),
  -- Abra - Psychic - TM29
  (63, 6300, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 12),
  -- Abra - Teleport - TM30
  (63, 6300, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 13),
  -- Abra - Mimic - TM31
  (63, 6300, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 14),
  -- Abra - Double Team - TM32
  (63, 6300, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 15),
  -- Abra - Reflect - TM33
  (63, 6300, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 16),
  -- Abra - Bide - TM34
  (63, 6300, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 17),
  -- Abra - Metronome - TM35
  (63, 6300, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 18),
  -- Abra - Skull Bash - TM40
  (63, 6300, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 19),
  -- Abra - Rest - TM44
  (63, 6300, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 20),
  -- Abra - Thunder Wave - TM45
  (63, 6300, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 21),
  -- Abra - Psywave - TM46
  (63, 6300, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 22),
  -- Abra - Tri Attack - TM49
  (63, 6300, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 23),
  -- Abra - Substitute - TM50
  (63, 6300, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 24),
  -- Abra - Flash - HM05
  (63, 6300, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 25),
  -- Kadabra - Teleport - Level 1
  (64, 6400, 100, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kadabra - Confusion - Level 16
  (64, 6400, 93, 1, NULL, 1, 16, NULL, NULL, NULL, 2),
  -- Kadabra - Disable - Level 20
  (64, 6400, 50, 1, NULL, 1, 20, NULL, NULL, NULL, 3),
  -- Kadabra - Psybeam - Level 27
  (64, 6400, 60, 1, NULL, 1, 27, NULL, NULL, NULL, 4),
  -- Kadabra - Recover - Level 31
  (64, 6400, 105, 1, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Kadabra - Psychic - Level 38
  (64, 6400, 94, 1, NULL, 1, 38, NULL, NULL, NULL, 6),
  -- Kadabra - Reflect - Level 42
  (64, 6400, 115, 1, NULL, 1, 42, NULL, NULL, NULL, 7),
  -- Kadabra - Confusion - Level 1
  (64, 6400, 93, 1, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Kadabra - Disable - Level 1
  (64, 6400, 50, 1, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Kadabra - Mega Punch - TM01
  (64, 6400, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 10),
  -- Kadabra - Mega Kick - TM05
  (64, 6400, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 11),
  -- Kadabra - Toxic - TM06
  (64, 6400, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 12),
  -- Kadabra - Body Slam - TM08
  (64, 6400, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 13),
  -- Kadabra - Take Down - TM09
  (64, 6400, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 14),
  -- Kadabra - Double-Edge - TM10
  (64, 6400, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 15),
  -- Kadabra - Submission - TM17
  (64, 6400, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 16),
  -- Kadabra - Counter - TM18
  (64, 6400, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 17),
  -- Kadabra - Seismic Toss - TM19
  (64, 6400, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 18),
  -- Kadabra - Rage - TM20
  (64, 6400, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 19),
  -- Kadabra - Dig - TM28
  (64, 6400, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 20),
  -- Kadabra - Psychic - TM29
  (64, 6400, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 21),
  -- Kadabra - Teleport - TM30
  (64, 6400, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 22),
  -- Kadabra - Mimic - TM31
  (64, 6400, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 23),
  -- Kadabra - Double Team - TM32
  (64, 6400, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 24),
  -- Kadabra - Reflect - TM33
  (64, 6400, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 25),
  -- Kadabra - Bide - TM34
  (64, 6400, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 26),
  -- Kadabra - Metronome - TM35
  (64, 6400, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 27),
  -- Kadabra - Skull Bash - TM40
  (64, 6400, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 28),
  -- Kadabra - Rest - TM44
  (64, 6400, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 29),
  -- Kadabra - Thunder Wave - TM45
  (64, 6400, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 30),
  -- Kadabra - Psywave - TM46
  (64, 6400, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 31),
  -- Kadabra - Tri Attack - TM49
  (64, 6400, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 32),
  -- Kadabra - Substitute - TM50
  (64, 6400, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 33),
  -- Kadabra - Flash - HM05
  (64, 6400, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 34),
  -- Alakazam - Teleport - Level 1
  (65, 6500, 100, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alakazam - Confusion - Level 16
  (65, 6500, 93, 1, NULL, 1, 16, NULL, NULL, NULL, 2),
  -- Alakazam - Disable - Level 20
  (65, 6500, 50, 1, NULL, 1, 20, NULL, NULL, NULL, 3),
  -- Alakazam - Psybeam - Level 27
  (65, 6500, 60, 1, NULL, 1, 27, NULL, NULL, NULL, 4),
  -- Alakazam - Recover - Level 31
  (65, 6500, 105, 1, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Alakazam - Psychic - Level 38
  (65, 6500, 94, 1, NULL, 1, 38, NULL, NULL, NULL, 6),
  -- Alakazam - Reflect - Level 42
  (65, 6500, 115, 1, NULL, 1, 42, NULL, NULL, NULL, 7),
  -- Alakazam - Confusion - Level 1
  (65, 6500, 93, 1, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Alakazam - Disable - Level 1
  (65, 6500, 50, 1, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Alakazam - Mega Punch - TM01
  (65, 6500, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 10),
  -- Alakazam - Mega Kick - TM05
  (65, 6500, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 11),
  -- Alakazam - Toxic - TM06
  (65, 6500, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 12),
  -- Alakazam - Body Slam - TM08
  (65, 6500, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 13),
  -- Alakazam - Take Down - TM09
  (65, 6500, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 14),
  -- Alakazam - Double-Edge - TM10
  (65, 6500, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 15),
  -- Alakazam - Hyper Beam - TM15
  (65, 6500, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 16),
  -- Alakazam - Submission - TM17
  (65, 6500, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 17),
  -- Alakazam - Counter - TM18
  (65, 6500, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 18),
  -- Alakazam - Seismic Toss - TM19
  (65, 6500, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 19),
  -- Alakazam - Rage - TM20
  (65, 6500, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 20),
  -- Alakazam - Dig - TM28
  (65, 6500, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 21),
  -- Alakazam - Psychic - TM29
  (65, 6500, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 22),
  -- Alakazam - Teleport - TM30
  (65, 6500, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 23),
  -- Alakazam - Mimic - TM31
  (65, 6500, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 24),
  -- Alakazam - Double Team - TM32
  (65, 6500, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 25),
  -- Alakazam - Reflect - TM33
  (65, 6500, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 26),
  -- Alakazam - Bide - TM34
  (65, 6500, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 27),
  -- Alakazam - Metronome - TM35
  (65, 6500, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 28),
  -- Alakazam - Skull Bash - TM40
  (65, 6500, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 29),
  -- Alakazam - Rest - TM44
  (65, 6500, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 30),
  -- Alakazam - Thunder Wave - TM45
  (65, 6500, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 31),
  -- Alakazam - Psywave - TM46
  (65, 6500, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 32),
  -- Alakazam - Tri Attack - TM49
  (65, 6500, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 33),
  -- Alakazam - Substitute - TM50
  (65, 6500, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 34),
  -- Alakazam - Flash - HM05
  (65, 6500, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 35),
  -- Machop - Karate Chop - Level 1
  (66, 6600, 2, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machop - Low Kick - Level 20
  (66, 6600, 67, 1, NULL, 1, 20, NULL, NULL, NULL, 2),
  -- Machop - Leer - Level 25
  (66, 6600, 43, 1, NULL, 1, 25, NULL, NULL, NULL, 3),
  -- Machop - Focus Energy - Level 32
  (66, 6600, 116, 1, NULL, 1, 32, NULL, NULL, NULL, 4),
  -- Machop - Seismic Toss - Level 39
  (66, 6600, 69, 1, NULL, 1, 39, NULL, NULL, NULL, 5),
  -- Machop - Submission - Level 46
  (66, 6600, 66, 1, NULL, 1, 46, NULL, NULL, NULL, 6),
  -- Machop - Mega Punch - TM01
  (66, 6600, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 7),
  -- Machop - Mega Kick - TM05
  (66, 6600, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 8),
  -- Machop - Toxic - TM06
  (66, 6600, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Machop - Body Slam - TM08
  (66, 6600, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 10),
  -- Machop - Take Down - TM09
  (66, 6600, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Machop - Double-Edge - TM10
  (66, 6600, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Machop - Submission - TM17
  (66, 6600, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 13),
  -- Machop - Counter - TM18
  (66, 6600, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 14),
  -- Machop - Seismic Toss - TM19
  (66, 6600, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 15),
  -- Machop - Rage - TM20
  (66, 6600, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 16),
  -- Machop - Earthquake - TM26
  (66, 6600, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 17),
  -- Machop - Fissure - TM27
  (66, 6600, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 18),
  -- Machop - Dig - TM28
  (66, 6600, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 19),
  -- Machop - Mimic - TM31
  (66, 6600, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 20),
  -- Machop - Double Team - TM32
  (66, 6600, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 21),
  -- Machop - Bide - TM34
  (66, 6600, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 22),
  -- Machop - Metronome - TM35
  (66, 6600, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 23),
  -- Machop - Fire Blast - TM38
  (66, 6600, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 24),
  -- Machop - Skull Bash - TM40
  (66, 6600, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 25),
  -- Machop - Rest - TM44
  (66, 6600, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 26),
  -- Machop - Rock Slide - TM48
  (66, 6600, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 27),
  -- Machop - Substitute - TM50
  (66, 6600, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 28),
  -- Machop - Strength - HM04
  (66, 6600, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 29),
  -- Machoke - Karate Chop - Level 1
  (67, 6700, 2, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machoke - Low Kick - Level 1
  (67, 6700, 67, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machoke - Leer - Level 1
  (67, 6700, 43, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machoke - Low Kick - Level 20
  (67, 6700, 67, 1, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Machoke - Leer - Level 25
  (67, 6700, 43, 1, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Machoke - Focus Energy - Level 36
  (67, 6700, 116, 1, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Machoke - Seismic Toss - Level 44
  (67, 6700, 69, 1, NULL, 1, 44, NULL, NULL, NULL, 7),
  -- Machoke - Submission - Level 52
  (67, 6700, 66, 1, NULL, 1, 52, NULL, NULL, NULL, 8),
  -- Machoke - Mega Punch - TM01
  (67, 6700, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 9),
  -- Machoke - Mega Kick - TM05
  (67, 6700, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 10),
  -- Machoke - Toxic - TM06
  (67, 6700, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Machoke - Body Slam - TM08
  (67, 6700, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 12),
  -- Machoke - Take Down - TM09
  (67, 6700, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Machoke - Double-Edge - TM10
  (67, 6700, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Machoke - Submission - TM17
  (67, 6700, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 15),
  -- Machoke - Counter - TM18
  (67, 6700, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 16),
  -- Machoke - Seismic Toss - TM19
  (67, 6700, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 17),
  -- Machoke - Rage - TM20
  (67, 6700, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 18),
  -- Machoke - Earthquake - TM26
  (67, 6700, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 19),
  -- Machoke - Fissure - TM27
  (67, 6700, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 20),
  -- Machoke - Dig - TM28
  (67, 6700, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 21),
  -- Machoke - Mimic - TM31
  (67, 6700, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 22),
  -- Machoke - Double Team - TM32
  (67, 6700, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 23),
  -- Machoke - Bide - TM34
  (67, 6700, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 24),
  -- Machoke - Metronome - TM35
  (67, 6700, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 25),
  -- Machoke - Fire Blast - TM38
  (67, 6700, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 26),
  -- Machoke - Skull Bash - TM40
  (67, 6700, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 27),
  -- Machoke - Rest - TM44
  (67, 6700, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 28),
  -- Machoke - Rock Slide - TM48
  (67, 6700, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 29),
  -- Machoke - Substitute - TM50
  (67, 6700, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 30),
  -- Machoke - Strength - HM04
  (67, 6700, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 31),
  -- Machamp - Karate Chop - Level 1
  (68, 6800, 2, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machamp - Low Kick - Level 1
  (68, 6800, 67, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machamp - Leer - Level 1
  (68, 6800, 43, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machamp - Low Kick - Level 20
  (68, 6800, 67, 1, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Machamp - Leer - Level 25
  (68, 6800, 43, 1, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Machamp - Focus Energy - Level 36
  (68, 6800, 116, 1, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Machamp - Seismic Toss - Level 44
  (68, 6800, 69, 1, NULL, 1, 44, NULL, NULL, NULL, 7),
  -- Machamp - Submission - Level 52
  (68, 6800, 66, 1, NULL, 1, 52, NULL, NULL, NULL, 8),
  -- Machamp - Mega Punch - TM01
  (68, 6800, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 9),
  -- Machamp - Mega Kick - TM05
  (68, 6800, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 10),
  -- Machamp - Toxic - TM06
  (68, 6800, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Machamp - Body Slam - TM08
  (68, 6800, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 12),
  -- Machamp - Take Down - TM09
  (68, 6800, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Machamp - Double-Edge - TM10
  (68, 6800, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Machamp - Hyper Beam - TM15
  (68, 6800, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 15),
  -- Machamp - Submission - TM17
  (68, 6800, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 16),
  -- Machamp - Counter - TM18
  (68, 6800, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 17),
  -- Machamp - Seismic Toss - TM19
  (68, 6800, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 18),
  -- Machamp - Rage - TM20
  (68, 6800, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 19),
  -- Machamp - Earthquake - TM26
  (68, 6800, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 20),
  -- Machamp - Fissure - TM27
  (68, 6800, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 21),
  -- Machamp - Dig - TM28
  (68, 6800, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 22),
  -- Machamp - Mimic - TM31
  (68, 6800, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 23),
  -- Machamp - Double Team - TM32
  (68, 6800, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 24),
  -- Machamp - Bide - TM34
  (68, 6800, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 25),
  -- Machamp - Metronome - TM35
  (68, 6800, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 26),
  -- Machamp - Fire Blast - TM38
  (68, 6800, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 27),
  -- Machamp - Skull Bash - TM40
  (68, 6800, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 28),
  -- Machamp - Rest - TM44
  (68, 6800, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 29),
  -- Machamp - Rock Slide - TM48
  (68, 6800, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 30),
  -- Machamp - Substitute - TM50
  (68, 6800, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 31),
  -- Machamp - Strength - HM04
  (68, 6800, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 32),
  -- Bellsprout - Vine Whip - Level 1
  (69, 6900, 22, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bellsprout - Growth - Level 1
  (69, 6900, 74, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bellsprout - Wrap - Level 13
  (69, 6900, 35, 1, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Bellsprout - Poison Powder - Level 15
  (69, 6900, 77, 1, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Bellsprout - Sleep Powder - Level 18
  (69, 6900, 79, 1, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Bellsprout - Stun Spore - Level 21
  (69, 6900, 78, 1, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Bellsprout - Acid - Level 26
  (69, 6900, 51, 1, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Bellsprout - Razor Leaf - Level 33
  (69, 6900, 75, 1, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Bellsprout - Slam - Level 42
  (69, 6900, 21, 1, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Bellsprout - Swords Dance - TM03
  (69, 6900, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 10),
  -- Bellsprout - Toxic - TM06
  (69, 6900, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Bellsprout - Take Down - TM09
  (69, 6900, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Bellsprout - Double-Edge - TM10
  (69, 6900, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Bellsprout - Rage - TM20
  (69, 6900, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 14),
  -- Bellsprout - Mega Drain - TM21
  (69, 6900, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 15),
  -- Bellsprout - Solar Beam - TM22
  (69, 6900, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 16),
  -- Bellsprout - Mimic - TM31
  (69, 6900, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 17),
  -- Bellsprout - Double Team - TM32
  (69, 6900, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 18),
  -- Bellsprout - Reflect - TM33
  (69, 6900, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 19),
  -- Bellsprout - Bide - TM34
  (69, 6900, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Bellsprout - Rest - TM44
  (69, 6900, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 21),
  -- Bellsprout - Substitute - TM50
  (69, 6900, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 22),
  -- Bellsprout - Cut - HM01
  (69, 6900, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 23),
  -- Weepinbell - Vine Whip - Level 1
  (70, 7000, 22, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weepinbell - Growth - Level 1
  (70, 7000, 74, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weepinbell - Wrap - Level 1
  (70, 7000, 35, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weepinbell - Wrap - Level 13
  (70, 7000, 35, 1, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Weepinbell - Poison Powder - Level 15
  (70, 7000, 77, 1, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Weepinbell - Sleep Powder - Level 18
  (70, 7000, 79, 1, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Weepinbell - Stun Spore - Level 23
  (70, 7000, 78, 1, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Weepinbell - Acid - Level 29
  (70, 7000, 51, 1, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Weepinbell - Razor Leaf - Level 38
  (70, 7000, 75, 1, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Weepinbell - Slam - Level 49
  (70, 7000, 21, 1, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Weepinbell - Swords Dance - TM03
  (70, 7000, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 11),
  -- Weepinbell - Toxic - TM06
  (70, 7000, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 12),
  -- Weepinbell - Take Down - TM09
  (70, 7000, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Weepinbell - Double-Edge - TM10
  (70, 7000, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Weepinbell - Rage - TM20
  (70, 7000, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 15),
  -- Weepinbell - Mega Drain - TM21
  (70, 7000, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 16),
  -- Weepinbell - Solar Beam - TM22
  (70, 7000, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 17),
  -- Weepinbell - Mimic - TM31
  (70, 7000, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 18),
  -- Weepinbell - Double Team - TM32
  (70, 7000, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 19),
  -- Weepinbell - Reflect - TM33
  (70, 7000, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 20),
  -- Weepinbell - Bide - TM34
  (70, 7000, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 21),
  -- Weepinbell - Rest - TM44
  (70, 7000, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 22),
  -- Weepinbell - Substitute - TM50
  (70, 7000, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 23),
  -- Weepinbell - Cut - HM01
  (70, 7000, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 24),
  -- Victreebel - Sleep Powder - Level 1
  (71, 7100, 79, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Victreebel - Stun Spore - Level 1
  (71, 7100, 78, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Victreebel - Acid - Level 1
  (71, 7100, 51, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Victreebel - Razor Leaf - Level 1
  (71, 7100, 75, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Victreebel - Wrap - Level 13
  (71, 7100, 35, 1, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Victreebel - Poison Powder - Level 15
  (71, 7100, 77, 1, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Victreebel - Sleep Powder - Level 18
  (71, 7100, 79, 1, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Victreebel - Swords Dance - TM03
  (71, 7100, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 8),
  -- Victreebel - Toxic - TM06
  (71, 7100, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Victreebel - Body Slam - TM08
  (71, 7100, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 10),
  -- Victreebel - Take Down - TM09
  (71, 7100, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Victreebel - Double-Edge - TM10
  (71, 7100, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Victreebel - Hyper Beam - TM15
  (71, 7100, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 13),
  -- Victreebel - Rage - TM20
  (71, 7100, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 14),
  -- Victreebel - Mega Drain - TM21
  (71, 7100, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 15),
  -- Victreebel - Solar Beam - TM22
  (71, 7100, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 16),
  -- Victreebel - Mimic - TM31
  (71, 7100, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 17),
  -- Victreebel - Double Team - TM32
  (71, 7100, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 18),
  -- Victreebel - Reflect - TM33
  (71, 7100, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 19),
  -- Victreebel - Bide - TM34
  (71, 7100, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Victreebel - Rest - TM44
  (71, 7100, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 21),
  -- Victreebel - Substitute - TM50
  (71, 7100, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 22),
  -- Victreebel - Cut - HM01
  (71, 7100, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 23),
  -- Tentacool - Acid - Level 1
  (72, 7200, 51, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacool - Supersonic - Level 7
  (72, 7200, 48, 1, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Tentacool - Wrap - Level 13
  (72, 7200, 35, 1, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Tentacool - Poison Sting - Level 18
  (72, 7200, 40, 1, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Tentacool - Water Gun - Level 22
  (72, 7200, 55, 1, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Tentacool - Constrict - Level 27
  (72, 7200, 132, 1, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Tentacool - Barrier - Level 33
  (72, 7200, 112, 1, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Tentacool - Screech - Level 40
  (72, 7200, 103, 1, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Tentacool - Hydro Pump - Level 48
  (72, 7200, 56, 1, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Tentacool - Swords Dance - TM03
  (72, 7200, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 10),
  -- Tentacool - Toxic - TM06
  (72, 7200, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Tentacool - Take Down - TM09
  (72, 7200, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Tentacool - Double-Edge - TM10
  (72, 7200, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Tentacool - Bubble Beam - TM11
  (72, 7200, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 14),
  -- Tentacool - Water Gun - TM12
  (72, 7200, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 15),
  -- Tentacool - Ice Beam - TM13
  (72, 7200, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 16),
  -- Tentacool - Blizzard - TM14
  (72, 7200, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 17),
  -- Tentacool - Rage - TM20
  (72, 7200, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 18),
  -- Tentacool - Mega Drain - TM21
  (72, 7200, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 19),
  -- Tentacool - Mimic - TM31
  (72, 7200, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 20),
  -- Tentacool - Double Team - TM32
  (72, 7200, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 21),
  -- Tentacool - Reflect - TM33
  (72, 7200, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 22),
  -- Tentacool - Bide - TM34
  (72, 7200, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 23),
  -- Tentacool - Skull Bash - TM40
  (72, 7200, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 24),
  -- Tentacool - Rest - TM44
  (72, 7200, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 25),
  -- Tentacool - Substitute - TM50
  (72, 7200, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 26),
  -- Tentacool - Cut - HM01
  (72, 7200, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 27),
  -- Tentacool - Surf - HM03
  (72, 7200, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 28),
  -- Tentacruel - Acid - Level 1
  (73, 7300, 51, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacruel - Supersonic - Level 1
  (73, 7300, 48, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tentacruel - Wrap - Level 1
  (73, 7300, 35, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tentacruel - Supersonic - Level 7
  (73, 7300, 48, 1, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Tentacruel - Wrap - Level 13
  (73, 7300, 35, 1, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Tentacruel - Poison Sting - Level 18
  (73, 7300, 40, 1, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Tentacruel - Water Gun - Level 22
  (73, 7300, 55, 1, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Tentacruel - Constrict - Level 27
  (73, 7300, 132, 1, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Tentacruel - Barrier - Level 35
  (73, 7300, 112, 1, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Tentacruel - Screech - Level 43
  (73, 7300, 103, 1, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Tentacruel - Hydro Pump - Level 50
  (73, 7300, 56, 1, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Tentacruel - Swords Dance - TM03
  (73, 7300, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 12),
  -- Tentacruel - Toxic - TM06
  (73, 7300, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 13),
  -- Tentacruel - Take Down - TM09
  (73, 7300, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 14),
  -- Tentacruel - Double-Edge - TM10
  (73, 7300, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 15),
  -- Tentacruel - Bubble Beam - TM11
  (73, 7300, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 16),
  -- Tentacruel - Water Gun - TM12
  (73, 7300, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 17),
  -- Tentacruel - Ice Beam - TM13
  (73, 7300, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 18),
  -- Tentacruel - Blizzard - TM14
  (73, 7300, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 19),
  -- Tentacruel - Hyper Beam - TM15
  (73, 7300, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 20),
  -- Tentacruel - Rage - TM20
  (73, 7300, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 21),
  -- Tentacruel - Mega Drain - TM21
  (73, 7300, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 22),
  -- Tentacruel - Mimic - TM31
  (73, 7300, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 23),
  -- Tentacruel - Double Team - TM32
  (73, 7300, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 24),
  -- Tentacruel - Reflect - TM33
  (73, 7300, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 25),
  -- Tentacruel - Bide - TM34
  (73, 7300, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 26),
  -- Tentacruel - Skull Bash - TM40
  (73, 7300, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 27),
  -- Tentacruel - Rest - TM44
  (73, 7300, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 28),
  -- Tentacruel - Substitute - TM50
  (73, 7300, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 29),
  -- Tentacruel - Cut - HM01
  (73, 7300, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 30),
  -- Tentacruel - Surf - HM03
  (73, 7300, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 31),
  -- Geodude - Tackle - Level 1
  (74, 7400, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Geodude - Defense Curl - Level 11
  (74, 7400, 111, 1, NULL, 1, 11, NULL, NULL, NULL, 2),
  -- Geodude - Rock Throw - Level 16
  (74, 7400, 88, 1, NULL, 1, 16, NULL, NULL, NULL, 3),
  -- Geodude - Self-Destruct - Level 21
  (74, 7400, 120, 1, NULL, 1, 21, NULL, NULL, NULL, 4),
  -- Geodude - Harden - Level 26
  (74, 7400, 106, 1, NULL, 1, 26, NULL, NULL, NULL, 5),
  -- Geodude - Earthquake - Level 31
  (74, 7400, 89, 1, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Geodude - Explosion - Level 36
  (74, 7400, 153, 1, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Geodude - Mega Punch - TM01
  (74, 7400, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 8),
  -- Geodude - Toxic - TM06
  (74, 7400, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Geodude - Body Slam - TM08
  (74, 7400, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 10),
  -- Geodude - Take Down - TM09
  (74, 7400, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Geodude - Double-Edge - TM10
  (74, 7400, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Geodude - Submission - TM17
  (74, 7400, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 13),
  -- Geodude - Counter - TM18
  (74, 7400, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 14),
  -- Geodude - Seismic Toss - TM19
  (74, 7400, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 15),
  -- Geodude - Rage - TM20
  (74, 7400, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 16),
  -- Geodude - Earthquake - TM26
  (74, 7400, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 17),
  -- Geodude - Fissure - TM27
  (74, 7400, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 18),
  -- Geodude - Dig - TM28
  (74, 7400, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 19),
  -- Geodude - Mimic - TM31
  (74, 7400, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 20),
  -- Geodude - Double Team - TM32
  (74, 7400, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 21),
  -- Geodude - Bide - TM34
  (74, 7400, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 22),
  -- Geodude - Metronome - TM35
  (74, 7400, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 23),
  -- Geodude - Self-Destruct - TM36
  (74, 7400, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 24),
  -- Geodude - Fire Blast - TM38
  (74, 7400, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 25),
  -- Geodude - Rest - TM44
  (74, 7400, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 26),
  -- Geodude - Explosion - TM47
  (74, 7400, 153, 1, NULL, 2, NULL, NULL, 1002047, NULL, 27),
  -- Geodude - Rock Slide - TM48
  (74, 7400, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 28),
  -- Geodude - Substitute - TM50
  (74, 7400, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 29),
  -- Geodude - Strength - HM04
  (74, 7400, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 30),
  -- Graveler - Tackle - Level 1
  (75, 7500, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Graveler - Defense Curl - Level 1
  (75, 7500, 111, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Graveler - Defense Curl - Level 11
  (75, 7500, 111, 1, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Graveler - Rock Throw - Level 16
  (75, 7500, 88, 1, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Graveler - Self-Destruct - Level 21
  (75, 7500, 120, 1, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Graveler - Harden - Level 29
  (75, 7500, 106, 1, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Graveler - Earthquake - Level 36
  (75, 7500, 89, 1, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Graveler - Explosion - Level 43
  (75, 7500, 153, 1, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Graveler - Mega Punch - TM01
  (75, 7500, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 9),
  -- Graveler - Toxic - TM06
  (75, 7500, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Graveler - Body Slam - TM08
  (75, 7500, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Graveler - Take Down - TM09
  (75, 7500, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Graveler - Double-Edge - TM10
  (75, 7500, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Graveler - Submission - TM17
  (75, 7500, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 14),
  -- Graveler - Counter - TM18
  (75, 7500, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 15),
  -- Graveler - Seismic Toss - TM19
  (75, 7500, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 16),
  -- Graveler - Rage - TM20
  (75, 7500, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 17),
  -- Graveler - Earthquake - TM26
  (75, 7500, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 18),
  -- Graveler - Fissure - TM27
  (75, 7500, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 19),
  -- Graveler - Dig - TM28
  (75, 7500, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 20),
  -- Graveler - Mimic - TM31
  (75, 7500, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 21),
  -- Graveler - Double Team - TM32
  (75, 7500, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 22),
  -- Graveler - Bide - TM34
  (75, 7500, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 23),
  -- Graveler - Metronome - TM35
  (75, 7500, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 24),
  -- Graveler - Self-Destruct - TM36
  (75, 7500, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 25),
  -- Graveler - Fire Blast - TM38
  (75, 7500, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 26),
  -- Graveler - Rest - TM44
  (75, 7500, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 27),
  -- Graveler - Explosion - TM47
  (75, 7500, 153, 1, NULL, 2, NULL, NULL, 1002047, NULL, 28),
  -- Graveler - Rock Slide - TM48
  (75, 7500, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 29),
  -- Graveler - Substitute - TM50
  (75, 7500, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 30),
  -- Graveler - Strength - HM04
  (75, 7500, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 31),
  -- Golem - Tackle - Level 1
  (76, 7600, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golem - Defense Curl - Level 1
  (76, 7600, 111, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golem - Defense Curl - Level 11
  (76, 7600, 111, 1, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Golem - Rock Throw - Level 16
  (76, 7600, 88, 1, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Golem - Self-Destruct - Level 21
  (76, 7600, 120, 1, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Golem - Harden - Level 29
  (76, 7600, 106, 1, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Golem - Earthquake - Level 36
  (76, 7600, 89, 1, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Golem - Explosion - Level 43
  (76, 7600, 153, 1, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Golem - Mega Punch - TM01
  (76, 7600, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 9),
  -- Golem - Mega Kick - TM05
  (76, 7600, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 10),
  -- Golem - Toxic - TM06
  (76, 7600, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Golem - Body Slam - TM08
  (76, 7600, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 12),
  -- Golem - Take Down - TM09
  (76, 7600, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Golem - Double-Edge - TM10
  (76, 7600, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Golem - Hyper Beam - TM15
  (76, 7600, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 15),
  -- Golem - Submission - TM17
  (76, 7600, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 16),
  -- Golem - Counter - TM18
  (76, 7600, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 17),
  -- Golem - Seismic Toss - TM19
  (76, 7600, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 18),
  -- Golem - Rage - TM20
  (76, 7600, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 19),
  -- Golem - Earthquake - TM26
  (76, 7600, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 20),
  -- Golem - Fissure - TM27
  (76, 7600, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 21),
  -- Golem - Dig - TM28
  (76, 7600, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 22),
  -- Golem - Mimic - TM31
  (76, 7600, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 23),
  -- Golem - Double Team - TM32
  (76, 7600, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 24),
  -- Golem - Bide - TM34
  (76, 7600, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 25),
  -- Golem - Metronome - TM35
  (76, 7600, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 26),
  -- Golem - Self-Destruct - TM36
  (76, 7600, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 27),
  -- Golem - Fire Blast - TM38
  (76, 7600, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 28),
  -- Golem - Rest - TM44
  (76, 7600, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 29),
  -- Golem - Explosion - TM47
  (76, 7600, 153, 1, NULL, 2, NULL, NULL, 1002047, NULL, 30),
  -- Golem - Rock Slide - TM48
  (76, 7600, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 31),
  -- Golem - Substitute - TM50
  (76, 7600, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 32),
  -- Golem - Strength - HM04
  (76, 7600, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 33),
  -- Ponyta - Ember - Level 1
  (77, 7700, 52, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ponyta - Tail Whip - Level 30
  (77, 7700, 39, 1, NULL, 1, 30, NULL, NULL, NULL, 2),
  -- Ponyta - Stomp - Level 32
  (77, 7700, 23, 1, NULL, 1, 32, NULL, NULL, NULL, 3),
  -- Ponyta - Growl - Level 35
  (77, 7700, 45, 1, NULL, 1, 35, NULL, NULL, NULL, 4),
  -- Ponyta - Fire Spin - Level 39
  (77, 7700, 83, 1, NULL, 1, 39, NULL, NULL, NULL, 5),
  -- Ponyta - Take Down - Level 43
  (77, 7700, 36, 1, NULL, 1, 43, NULL, NULL, NULL, 6),
  -- Ponyta - Agility - Level 48
  (77, 7700, 97, 1, NULL, 1, 48, NULL, NULL, NULL, 7),
  -- Ponyta - Toxic - TM06
  (77, 7700, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Ponyta - Horn Drill - TM07
  (77, 7700, 32, 1, NULL, 2, NULL, NULL, 1002007, NULL, 9),
  -- Ponyta - Body Slam - TM08
  (77, 7700, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 10),
  -- Ponyta - Take Down - TM09
  (77, 7700, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Ponyta - Double-Edge - TM10
  (77, 7700, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Ponyta - Rage - TM20
  (77, 7700, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 13),
  -- Ponyta - Mimic - TM31
  (77, 7700, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 14),
  -- Ponyta - Double Team - TM32
  (77, 7700, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 15),
  -- Ponyta - Reflect - TM33
  (77, 7700, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 16),
  -- Ponyta - Bide - TM34
  (77, 7700, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 17),
  -- Ponyta - Fire Blast - TM38
  (77, 7700, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 18),
  -- Ponyta - Swift - TM39
  (77, 7700, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 19),
  -- Ponyta - Skull Bash - TM40
  (77, 7700, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 20),
  -- Ponyta - Rest - TM44
  (77, 7700, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 21),
  -- Ponyta - Substitute - TM50
  (77, 7700, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 22),
  -- Rapidash - Ember - Level 1
  (78, 7800, 52, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rapidash - Tail Whip - Level 1
  (78, 7800, 39, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rapidash - Stomp - Level 1
  (78, 7800, 23, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rapidash - Growl - Level 1
  (78, 7800, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rapidash - Tail Whip - Level 30
  (78, 7800, 39, 1, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Rapidash - Stomp - Level 32
  (78, 7800, 23, 1, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Rapidash - Growl - Level 35
  (78, 7800, 45, 1, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Rapidash - Fire Spin - Level 39
  (78, 7800, 83, 1, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Rapidash - Take Down - Level 47
  (78, 7800, 36, 1, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Rapidash - Agility - Level 55
  (78, 7800, 97, 1, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Rapidash - Toxic - TM06
  (78, 7800, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Rapidash - Horn Drill - TM07
  (78, 7800, 32, 1, NULL, 2, NULL, NULL, 1002007, NULL, 12),
  -- Rapidash - Body Slam - TM08
  (78, 7800, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 13),
  -- Rapidash - Take Down - TM09
  (78, 7800, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 14),
  -- Rapidash - Double-Edge - TM10
  (78, 7800, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 15),
  -- Rapidash - Hyper Beam - TM15
  (78, 7800, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 16),
  -- Rapidash - Rage - TM20
  (78, 7800, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 17),
  -- Rapidash - Mimic - TM31
  (78, 7800, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 18),
  -- Rapidash - Double Team - TM32
  (78, 7800, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 19),
  -- Rapidash - Reflect - TM33
  (78, 7800, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 20),
  -- Rapidash - Bide - TM34
  (78, 7800, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 21),
  -- Rapidash - Fire Blast - TM38
  (78, 7800, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 22),
  -- Rapidash - Swift - TM39
  (78, 7800, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 23),
  -- Rapidash - Skull Bash - TM40
  (78, 7800, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 24),
  -- Rapidash - Rest - TM44
  (78, 7800, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 25),
  -- Rapidash - Substitute - TM50
  (78, 7800, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 26),
  -- Slowpoke - Confusion - Level 1
  (79, 7900, 93, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowpoke - Disable - Level 18
  (79, 7900, 50, 1, NULL, 1, 18, NULL, NULL, NULL, 2),
  -- Slowpoke - Headbutt - Level 22
  (79, 7900, 29, 1, NULL, 1, 22, NULL, NULL, NULL, 3),
  -- Slowpoke - Growl - Level 27
  (79, 7900, 45, 1, NULL, 1, 27, NULL, NULL, NULL, 4),
  -- Slowpoke - Water Gun - Level 33
  (79, 7900, 55, 1, NULL, 1, 33, NULL, NULL, NULL, 5),
  -- Slowpoke - Amnesia - Level 40
  (79, 7900, 133, 1, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Slowpoke - Psychic - Level 48
  (79, 7900, 94, 1, NULL, 1, 48, NULL, NULL, NULL, 7),
  -- Slowpoke - Toxic - TM06
  (79, 7900, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Slowpoke - Body Slam - TM08
  (79, 7900, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 9),
  -- Slowpoke - Take Down - TM09
  (79, 7900, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Slowpoke - Double-Edge - TM10
  (79, 7900, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Slowpoke - Bubble Beam - TM11
  (79, 7900, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 12),
  -- Slowpoke - Water Gun - TM12
  (79, 7900, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 13),
  -- Slowpoke - Ice Beam - TM13
  (79, 7900, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 14),
  -- Slowpoke - Blizzard - TM14
  (79, 7900, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 15),
  -- Slowpoke - Pay Day - TM16
  (79, 7900, 6, 1, NULL, 2, NULL, NULL, 1002016, NULL, 16),
  -- Slowpoke - Rage - TM20
  (79, 7900, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 17),
  -- Slowpoke - Earthquake - TM26
  (79, 7900, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 18),
  -- Slowpoke - Fissure - TM27
  (79, 7900, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 19),
  -- Slowpoke - Dig - TM28
  (79, 7900, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 20),
  -- Slowpoke - Psychic - TM29
  (79, 7900, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 21),
  -- Slowpoke - Teleport - TM30
  (79, 7900, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 22),
  -- Slowpoke - Mimic - TM31
  (79, 7900, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 23),
  -- Slowpoke - Double Team - TM32
  (79, 7900, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 24),
  -- Slowpoke - Reflect - TM33
  (79, 7900, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 25),
  -- Slowpoke - Bide - TM34
  (79, 7900, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 26),
  -- Slowpoke - Fire Blast - TM38
  (79, 7900, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 27),
  -- Slowpoke - Swift - TM39
  (79, 7900, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 28),
  -- Slowpoke - Skull Bash - TM40
  (79, 7900, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 29),
  -- Slowpoke - Rest - TM44
  (79, 7900, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 30),
  -- Slowpoke - Thunder Wave - TM45
  (79, 7900, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 31),
  -- Slowpoke - Psywave - TM46
  (79, 7900, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 32),
  -- Slowpoke - Tri Attack - TM49
  (79, 7900, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 33),
  -- Slowpoke - Substitute - TM50
  (79, 7900, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 34),
  -- Slowpoke - Surf - HM03
  (79, 7900, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 35),
  -- Slowpoke - Strength - HM04
  (79, 7900, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 36),
  -- Slowpoke - Flash - HM05
  (79, 7900, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 37),
  -- Slowbro - Confusion - Level 1
  (80, 8000, 93, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowbro - Disable - Level 1
  (80, 8000, 50, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowbro - Headbutt - Level 1
  (80, 8000, 29, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowbro - Disable - Level 18
  (80, 8000, 50, 1, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Slowbro - Headbutt - Level 22
  (80, 8000, 29, 1, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Slowbro - Growl - Level 27
  (80, 8000, 45, 1, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Slowbro - Water Gun - Level 33
  (80, 8000, 55, 1, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Slowbro - Withdraw - Level 37
  (80, 8000, 110, 1, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Slowbro - Amnesia - Level 44
  (80, 8000, 133, 1, NULL, 1, 44, NULL, NULL, NULL, 9),
  -- Slowbro - Psychic - Level 55
  (80, 8000, 94, 1, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Slowbro - Mega Punch - TM01
  (80, 8000, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 11),
  -- Slowbro - Mega Kick - TM05
  (80, 8000, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 12),
  -- Slowbro - Toxic - TM06
  (80, 8000, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 13),
  -- Slowbro - Body Slam - TM08
  (80, 8000, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 14),
  -- Slowbro - Take Down - TM09
  (80, 8000, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 15),
  -- Slowbro - Double-Edge - TM10
  (80, 8000, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 16),
  -- Slowbro - Bubble Beam - TM11
  (80, 8000, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 17),
  -- Slowbro - Water Gun - TM12
  (80, 8000, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 18),
  -- Slowbro - Ice Beam - TM13
  (80, 8000, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 19),
  -- Slowbro - Blizzard - TM14
  (80, 8000, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 20),
  -- Slowbro - Hyper Beam - TM15
  (80, 8000, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 21),
  -- Slowbro - Pay Day - TM16
  (80, 8000, 6, 1, NULL, 2, NULL, NULL, 1002016, NULL, 22),
  -- Slowbro - Submission - TM17
  (80, 8000, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 23),
  -- Slowbro - Counter - TM18
  (80, 8000, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 24),
  -- Slowbro - Seismic Toss - TM19
  (80, 8000, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 25),
  -- Slowbro - Rage - TM20
  (80, 8000, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 26),
  -- Slowbro - Earthquake - TM26
  (80, 8000, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 27),
  -- Slowbro - Fissure - TM27
  (80, 8000, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 28),
  -- Slowbro - Dig - TM28
  (80, 8000, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 29),
  -- Slowbro - Psychic - TM29
  (80, 8000, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 30),
  -- Slowbro - Teleport - TM30
  (80, 8000, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 31),
  -- Slowbro - Mimic - TM31
  (80, 8000, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 32),
  -- Slowbro - Double Team - TM32
  (80, 8000, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 33),
  -- Slowbro - Reflect - TM33
  (80, 8000, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 34),
  -- Slowbro - Bide - TM34
  (80, 8000, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 35),
  -- Slowbro - Fire Blast - TM38
  (80, 8000, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 36),
  -- Slowbro - Swift - TM39
  (80, 8000, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 37),
  -- Slowbro - Skull Bash - TM40
  (80, 8000, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 38),
  -- Slowbro - Rest - TM44
  (80, 8000, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 39),
  -- Slowbro - Thunder Wave - TM45
  (80, 8000, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 40),
  -- Slowbro - Psywave - TM46
  (80, 8000, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 41),
  -- Slowbro - Tri Attack - TM49
  (80, 8000, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 42),
  -- Slowbro - Substitute - TM50
  (80, 8000, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 43),
  -- Slowbro - Surf - HM03
  (80, 8000, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 44),
  -- Slowbro - Strength - HM04
  (80, 8000, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 45),
  -- Slowbro - Flash - HM05
  (80, 8000, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 46),
  -- Magnemite - Tackle - Level 1
  (81, 8100, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnemite - Sonic Boom - Level 21
  (81, 8100, 49, 1, NULL, 1, 21, NULL, NULL, NULL, 2),
  -- Magnemite - Thunder Shock - Level 25
  (81, 8100, 84, 1, NULL, 1, 25, NULL, NULL, NULL, 3),
  -- Magnemite - Supersonic - Level 29
  (81, 8100, 48, 1, NULL, 1, 29, NULL, NULL, NULL, 4),
  -- Magnemite - Thunder Wave - Level 35
  (81, 8100, 86, 1, NULL, 1, 35, NULL, NULL, NULL, 5),
  -- Magnemite - Swift - Level 41
  (81, 8100, 129, 1, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Magnemite - Screech - Level 47
  (81, 8100, 103, 1, NULL, 1, 47, NULL, NULL, NULL, 7),
  -- Magnemite - Toxic - TM06
  (81, 8100, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Magnemite - Take Down - TM09
  (81, 8100, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 9),
  -- Magnemite - Double-Edge - TM10
  (81, 8100, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 10),
  -- Magnemite - Rage - TM20
  (81, 8100, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 11),
  -- Magnemite - Thunderbolt - TM24
  (81, 8100, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 12),
  -- Magnemite - Thunder - TM25
  (81, 8100, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 13),
  -- Magnemite - Teleport - TM30
  (81, 8100, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 14),
  -- Magnemite - Mimic - TM31
  (81, 8100, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 15),
  -- Magnemite - Double Team - TM32
  (81, 8100, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 16),
  -- Magnemite - Reflect - TM33
  (81, 8100, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 17),
  -- Magnemite - Bide - TM34
  (81, 8100, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 18),
  -- Magnemite - Swift - TM39
  (81, 8100, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 19),
  -- Magnemite - Rest - TM44
  (81, 8100, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 20),
  -- Magnemite - Thunder Wave - TM45
  (81, 8100, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 21),
  -- Magnemite - Substitute - TM50
  (81, 8100, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 22),
  -- Magnemite - Flash - HM05
  (81, 8100, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 23),
  -- Magneton - Tackle - Level 1
  (82, 8200, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magneton - Sonic Boom - Level 1
  (82, 8200, 49, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magneton - Thunder Shock - Level 1
  (82, 8200, 84, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magneton - Sonic Boom - Level 21
  (82, 8200, 49, 1, NULL, 1, 21, NULL, NULL, NULL, 4),
  -- Magneton - Thunder Shock - Level 25
  (82, 8200, 84, 1, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Magneton - Supersonic - Level 29
  (82, 8200, 48, 1, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Magneton - Thunder Wave - Level 38
  (82, 8200, 86, 1, NULL, 1, 38, NULL, NULL, NULL, 7),
  -- Magneton - Swift - Level 46
  (82, 8200, 129, 1, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Magneton - Screech - Level 54
  (82, 8200, 103, 1, NULL, 1, 54, NULL, NULL, NULL, 9),
  -- Magneton - Toxic - TM06
  (82, 8200, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Magneton - Take Down - TM09
  (82, 8200, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Magneton - Double-Edge - TM10
  (82, 8200, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Magneton - Hyper Beam - TM15
  (82, 8200, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 13),
  -- Magneton - Rage - TM20
  (82, 8200, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 14),
  -- Magneton - Thunderbolt - TM24
  (82, 8200, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 15),
  -- Magneton - Thunder - TM25
  (82, 8200, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 16),
  -- Magneton - Teleport - TM30
  (82, 8200, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 17),
  -- Magneton - Mimic - TM31
  (82, 8200, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 18),
  -- Magneton - Double Team - TM32
  (82, 8200, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 19),
  -- Magneton - Reflect - TM33
  (82, 8200, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 20),
  -- Magneton - Bide - TM34
  (82, 8200, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 21),
  -- Magneton - Swift - TM39
  (82, 8200, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 22),
  -- Magneton - Rest - TM44
  (82, 8200, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 23),
  -- Magneton - Thunder Wave - TM45
  (82, 8200, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 24),
  -- Magneton - Substitute - TM50
  (82, 8200, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 25),
  -- Magneton - Flash - HM05
  (82, 8200, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 26),
  -- Farfetch'd - Peck - Level 1
  (83, 8300, 64, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Farfetch'd - Sand Attack - Level 1
  (83, 8300, 28, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Farfetch'd - Leer - Level 7
  (83, 8300, 43, 1, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Farfetch'd - Fury Attack - Level 15
  (83, 8300, 31, 1, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Farfetch'd - Swords Dance - Level 23
  (83, 8300, 14, 1, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Farfetch'd - Agility - Level 31
  (83, 8300, 97, 1, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Farfetch'd - Slash - Level 39
  (83, 8300, 163, 1, NULL, 1, 39, NULL, NULL, NULL, 7),
  -- Farfetch'd - Razor Wind - TM02
  (83, 8300, 13, 1, NULL, 2, NULL, NULL, 1002002, NULL, 8),
  -- Farfetch'd - Swords Dance - TM03
  (83, 8300, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 9),
  -- Farfetch'd - Whirlwind - TM04
  (83, 8300, 18, 1, NULL, 2, NULL, NULL, 1002004, NULL, 10),
  -- Farfetch'd - Toxic - TM06
  (83, 8300, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Farfetch'd - Body Slam - TM08
  (83, 8300, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 12),
  -- Farfetch'd - Take Down - TM09
  (83, 8300, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Farfetch'd - Double-Edge - TM10
  (83, 8300, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Farfetch'd - Rage - TM20
  (83, 8300, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 15),
  -- Farfetch'd - Mimic - TM31
  (83, 8300, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 16),
  -- Farfetch'd - Double Team - TM32
  (83, 8300, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 17),
  -- Farfetch'd - Reflect - TM33
  (83, 8300, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 18),
  -- Farfetch'd - Bide - TM34
  (83, 8300, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 19),
  -- Farfetch'd - Swift - TM39
  (83, 8300, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 20),
  -- Farfetch'd - Skull Bash - TM40
  (83, 8300, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 21),
  -- Farfetch'd - Rest - TM44
  (83, 8300, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 22),
  -- Farfetch'd - Substitute - TM50
  (83, 8300, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 23),
  -- Farfetch'd - Cut - HM01
  (83, 8300, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 24),
  -- Farfetch'd - Fly - HM02
  (83, 8300, 19, 1, NULL, 3, NULL, NULL, 1003002, NULL, 25),
  -- Doduo - Peck - Level 1
  (84, 8400, 64, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Doduo - Growl - Level 20
  (84, 8400, 45, 1, NULL, 1, 20, NULL, NULL, NULL, 2),
  -- Doduo - Fury Attack - Level 24
  (84, 8400, 31, 1, NULL, 1, 24, NULL, NULL, NULL, 3),
  -- Doduo - Drill Peck - Level 30
  (84, 8400, 65, 1, NULL, 1, 30, NULL, NULL, NULL, 4),
  -- Doduo - Rage - Level 36
  (84, 8400, 99, 1, NULL, 1, 36, NULL, NULL, NULL, 5),
  -- Doduo - Tri Attack - Level 40
  (84, 8400, 161, 1, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Doduo - Agility - Level 44
  (84, 8400, 97, 1, NULL, 1, 44, NULL, NULL, NULL, 7),
  -- Doduo - Whirlwind - TM04
  (84, 8400, 18, 1, NULL, 2, NULL, NULL, 1002004, NULL, 8),
  -- Doduo - Toxic - TM06
  (84, 8400, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Doduo - Body Slam - TM08
  (84, 8400, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 10),
  -- Doduo - Take Down - TM09
  (84, 8400, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Doduo - Double-Edge - TM10
  (84, 8400, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Doduo - Rage - TM20
  (84, 8400, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 13),
  -- Doduo - Mimic - TM31
  (84, 8400, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 14),
  -- Doduo - Double Team - TM32
  (84, 8400, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 15),
  -- Doduo - Reflect - TM33
  (84, 8400, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 16),
  -- Doduo - Bide - TM34
  (84, 8400, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 17),
  -- Doduo - Skull Bash - TM40
  (84, 8400, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 18),
  -- Doduo - Sky Attack - TM43
  (84, 8400, 143, 1, NULL, 2, NULL, NULL, 1002043, NULL, 19),
  -- Doduo - Rest - TM44
  (84, 8400, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 20),
  -- Doduo - Tri Attack - TM49
  (84, 8400, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 21),
  -- Doduo - Substitute - TM50
  (84, 8400, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 22),
  -- Doduo - Fly - HM02
  (84, 8400, 19, 1, NULL, 3, NULL, NULL, 1003002, NULL, 23),
  -- Dodrio - Peck - Level 1
  (85, 8500, 64, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dodrio - Growl - Level 1
  (85, 8500, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dodrio - Fury Attack - Level 1
  (85, 8500, 31, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dodrio - Growl - Level 20
  (85, 8500, 45, 1, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Dodrio - Fury Attack - Level 24
  (85, 8500, 31, 1, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Dodrio - Drill Peck - Level 30
  (85, 8500, 65, 1, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Dodrio - Rage - Level 39
  (85, 8500, 99, 1, NULL, 1, 39, NULL, NULL, NULL, 7),
  -- Dodrio - Tri Attack - Level 45
  (85, 8500, 161, 1, NULL, 1, 45, NULL, NULL, NULL, 8),
  -- Dodrio - Agility - Level 51
  (85, 8500, 97, 1, NULL, 1, 51, NULL, NULL, NULL, 9),
  -- Dodrio - Whirlwind - TM04
  (85, 8500, 18, 1, NULL, 2, NULL, NULL, 1002004, NULL, 10),
  -- Dodrio - Toxic - TM06
  (85, 8500, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Dodrio - Body Slam - TM08
  (85, 8500, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 12),
  -- Dodrio - Take Down - TM09
  (85, 8500, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Dodrio - Double-Edge - TM10
  (85, 8500, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Dodrio - Hyper Beam - TM15
  (85, 8500, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 15),
  -- Dodrio - Rage - TM20
  (85, 8500, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 16),
  -- Dodrio - Mimic - TM31
  (85, 8500, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 17),
  -- Dodrio - Double Team - TM32
  (85, 8500, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 18),
  -- Dodrio - Reflect - TM33
  (85, 8500, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 19),
  -- Dodrio - Bide - TM34
  (85, 8500, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Dodrio - Skull Bash - TM40
  (85, 8500, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 21),
  -- Dodrio - Sky Attack - TM43
  (85, 8500, 143, 1, NULL, 2, NULL, NULL, 1002043, NULL, 22),
  -- Dodrio - Rest - TM44
  (85, 8500, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 23),
  -- Dodrio - Tri Attack - TM49
  (85, 8500, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 24),
  -- Dodrio - Substitute - TM50
  (85, 8500, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 25),
  -- Dodrio - Fly - HM02
  (85, 8500, 19, 1, NULL, 3, NULL, NULL, 1003002, NULL, 26),
  -- Seel - Headbutt - Level 1
  (86, 8600, 29, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seel - Growl - Level 30
  (86, 8600, 45, 1, NULL, 1, 30, NULL, NULL, NULL, 2),
  -- Seel - Aurora Beam - Level 35
  (86, 8600, 62, 1, NULL, 1, 35, NULL, NULL, NULL, 3),
  -- Seel - Rest - Level 40
  (86, 8600, 156, 1, NULL, 1, 40, NULL, NULL, NULL, 4),
  -- Seel - Take Down - Level 45
  (86, 8600, 36, 1, NULL, 1, 45, NULL, NULL, NULL, 5),
  -- Seel - Ice Beam - Level 50
  (86, 8600, 58, 1, NULL, 1, 50, NULL, NULL, NULL, 6),
  -- Seel - Toxic - TM06
  (86, 8600, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 7),
  -- Seel - Horn Drill - TM07
  (86, 8600, 32, 1, NULL, 2, NULL, NULL, 1002007, NULL, 8),
  -- Seel - Body Slam - TM08
  (86, 8600, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 9),
  -- Seel - Take Down - TM09
  (86, 8600, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Seel - Double-Edge - TM10
  (86, 8600, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Seel - Bubble Beam - TM11
  (86, 8600, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 12),
  -- Seel - Water Gun - TM12
  (86, 8600, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 13),
  -- Seel - Ice Beam - TM13
  (86, 8600, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 14),
  -- Seel - Blizzard - TM14
  (86, 8600, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 15),
  -- Seel - Pay Day - TM16
  (86, 8600, 6, 1, NULL, 2, NULL, NULL, 1002016, NULL, 16),
  -- Seel - Rage - TM20
  (86, 8600, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 17),
  -- Seel - Mimic - TM31
  (86, 8600, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 18),
  -- Seel - Double Team - TM32
  (86, 8600, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 19),
  -- Seel - Bide - TM34
  (86, 8600, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Seel - Skull Bash - TM40
  (86, 8600, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 21),
  -- Seel - Rest - TM44
  (86, 8600, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 22),
  -- Seel - Substitute - TM50
  (86, 8600, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 23),
  -- Seel - Surf - HM03
  (86, 8600, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 24),
  -- Seel - Strength - HM04
  (86, 8600, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 25),
  -- Dewgong - Headbutt - Level 1
  (87, 8700, 29, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dewgong - Growl - Level 1
  (87, 8700, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dewgong - Aurora Beam - Level 1
  (87, 8700, 62, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dewgong - Growl - Level 30
  (87, 8700, 45, 1, NULL, 1, 30, NULL, NULL, NULL, 4),
  -- Dewgong - Aurora Beam - Level 35
  (87, 8700, 62, 1, NULL, 1, 35, NULL, NULL, NULL, 5),
  -- Dewgong - Rest - Level 44
  (87, 8700, 156, 1, NULL, 1, 44, NULL, NULL, NULL, 6),
  -- Dewgong - Take Down - Level 50
  (87, 8700, 36, 1, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Dewgong - Ice Beam - Level 56
  (87, 8700, 58, 1, NULL, 1, 56, NULL, NULL, NULL, 8),
  -- Dewgong - Toxic - TM06
  (87, 8700, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Dewgong - Horn Drill - TM07
  (87, 8700, 32, 1, NULL, 2, NULL, NULL, 1002007, NULL, 10),
  -- Dewgong - Body Slam - TM08
  (87, 8700, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Dewgong - Take Down - TM09
  (87, 8700, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Dewgong - Double-Edge - TM10
  (87, 8700, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Dewgong - Bubble Beam - TM11
  (87, 8700, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 14),
  -- Dewgong - Water Gun - TM12
  (87, 8700, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 15),
  -- Dewgong - Ice Beam - TM13
  (87, 8700, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 16),
  -- Dewgong - Blizzard - TM14
  (87, 8700, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 17),
  -- Dewgong - Hyper Beam - TM15
  (87, 8700, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 18),
  -- Dewgong - Pay Day - TM16
  (87, 8700, 6, 1, NULL, 2, NULL, NULL, 1002016, NULL, 19),
  -- Dewgong - Rage - TM20
  (87, 8700, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 20),
  -- Dewgong - Mimic - TM31
  (87, 8700, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 21),
  -- Dewgong - Double Team - TM32
  (87, 8700, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 22),
  -- Dewgong - Bide - TM34
  (87, 8700, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 23),
  -- Dewgong - Skull Bash - TM40
  (87, 8700, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 24),
  -- Dewgong - Rest - TM44
  (87, 8700, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 25),
  -- Dewgong - Substitute - TM50
  (87, 8700, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 26),
  -- Dewgong - Surf - HM03
  (87, 8700, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 27),
  -- Dewgong - Strength - HM04
  (87, 8700, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 28),
  -- Grimer - Pound - Level 1
  (88, 8800, 1, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grimer - Disable - Level 1
  (88, 8800, 50, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grimer - Poison Gas - Level 30
  (88, 8800, 139, 1, NULL, 1, 30, NULL, NULL, NULL, 3),
  -- Grimer - Minimize - Level 33
  (88, 8800, 107, 1, NULL, 1, 33, NULL, NULL, NULL, 4),
  -- Grimer - Sludge - Level 37
  (88, 8800, 124, 1, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Grimer - Harden - Level 42
  (88, 8800, 106, 1, NULL, 1, 42, NULL, NULL, NULL, 6),
  -- Grimer - Screech - Level 48
  (88, 8800, 103, 1, NULL, 1, 48, NULL, NULL, NULL, 7),
  -- Grimer - Acid Armor - Level 55
  (88, 8800, 151, 1, NULL, 1, 55, NULL, NULL, NULL, 8),
  -- Grimer - Toxic - TM06
  (88, 8800, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Grimer - Body Slam - TM08
  (88, 8800, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 10),
  -- Grimer - Rage - TM20
  (88, 8800, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 11),
  -- Grimer - Mega Drain - TM21
  (88, 8800, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 12),
  -- Grimer - Thunderbolt - TM24
  (88, 8800, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 13),
  -- Grimer - Thunder - TM25
  (88, 8800, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 14),
  -- Grimer - Mimic - TM31
  (88, 8800, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 15),
  -- Grimer - Double Team - TM32
  (88, 8800, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 16),
  -- Grimer - Bide - TM34
  (88, 8800, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 17),
  -- Grimer - Self-Destruct - TM36
  (88, 8800, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 18),
  -- Grimer - Fire Blast - TM38
  (88, 8800, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 19),
  -- Grimer - Rest - TM44
  (88, 8800, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 20),
  -- Grimer - Explosion - TM47
  (88, 8800, 153, 1, NULL, 2, NULL, NULL, 1002047, NULL, 21),
  -- Grimer - Substitute - TM50
  (88, 8800, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 22),
  -- Muk - Pound - Level 1
  (89, 8900, 1, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Muk - Disable - Level 1
  (89, 8900, 50, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Muk - Poison Gas - Level 1
  (89, 8900, 139, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Muk - Poison Gas - Level 30
  (89, 8900, 139, 1, NULL, 1, 30, NULL, NULL, NULL, 4),
  -- Muk - Minimize - Level 33
  (89, 8900, 107, 1, NULL, 1, 33, NULL, NULL, NULL, 5),
  -- Muk - Sludge - Level 37
  (89, 8900, 124, 1, NULL, 1, 37, NULL, NULL, NULL, 6),
  -- Muk - Harden - Level 45
  (89, 8900, 106, 1, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Muk - Screech - Level 53
  (89, 8900, 103, 1, NULL, 1, 53, NULL, NULL, NULL, 8),
  -- Muk - Acid Armor - Level 60
  (89, 8900, 151, 1, NULL, 1, 60, NULL, NULL, NULL, 9),
  -- Muk - Toxic - TM06
  (89, 8900, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Muk - Body Slam - TM08
  (89, 8900, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Muk - Hyper Beam - TM15
  (89, 8900, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 12),
  -- Muk - Rage - TM20
  (89, 8900, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 13),
  -- Muk - Mega Drain - TM21
  (89, 8900, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 14),
  -- Muk - Thunderbolt - TM24
  (89, 8900, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 15),
  -- Muk - Thunder - TM25
  (89, 8900, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 16),
  -- Muk - Mimic - TM31
  (89, 8900, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 17),
  -- Muk - Double Team - TM32
  (89, 8900, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 18),
  -- Muk - Bide - TM34
  (89, 8900, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 19),
  -- Muk - Self-Destruct - TM36
  (89, 8900, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 20),
  -- Muk - Fire Blast - TM38
  (89, 8900, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 21),
  -- Muk - Rest - TM44
  (89, 8900, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 22),
  -- Muk - Explosion - TM47
  (89, 8900, 153, 1, NULL, 2, NULL, NULL, 1002047, NULL, 23),
  -- Muk - Substitute - TM50
  (89, 8900, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 24),
  -- Shellder - Tackle - Level 1
  (90, 9000, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shellder - Withdraw - Level 1
  (90, 9000, 110, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shellder - Supersonic - Level 18
  (90, 9000, 48, 1, NULL, 1, 18, NULL, NULL, NULL, 3),
  -- Shellder - Clamp - Level 23
  (90, 9000, 128, 1, NULL, 1, 23, NULL, NULL, NULL, 4),
  -- Shellder - Aurora Beam - Level 30
  (90, 9000, 62, 1, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Shellder - Leer - Level 39
  (90, 9000, 43, 1, NULL, 1, 39, NULL, NULL, NULL, 6),
  -- Shellder - Ice Beam - Level 50
  (90, 9000, 58, 1, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Shellder - Toxic - TM06
  (90, 9000, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Shellder - Take Down - TM09
  (90, 9000, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 9),
  -- Shellder - Double-Edge - TM10
  (90, 9000, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 10),
  -- Shellder - Bubble Beam - TM11
  (90, 9000, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 11),
  -- Shellder - Water Gun - TM12
  (90, 9000, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 12),
  -- Shellder - Ice Beam - TM13
  (90, 9000, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 13),
  -- Shellder - Blizzard - TM14
  (90, 9000, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 14),
  -- Shellder - Rage - TM20
  (90, 9000, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 15),
  -- Shellder - Teleport - TM30
  (90, 9000, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 16),
  -- Shellder - Mimic - TM31
  (90, 9000, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 17),
  -- Shellder - Double Team - TM32
  (90, 9000, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 18),
  -- Shellder - Reflect - TM33
  (90, 9000, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 19),
  -- Shellder - Bide - TM34
  (90, 9000, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Shellder - Self-Destruct - TM36
  (90, 9000, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 21),
  -- Shellder - Swift - TM39
  (90, 9000, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 22),
  -- Shellder - Rest - TM44
  (90, 9000, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 23),
  -- Shellder - Explosion - TM47
  (90, 9000, 153, 1, NULL, 2, NULL, NULL, 1002047, NULL, 24),
  -- Shellder - Tri Attack - TM49
  (90, 9000, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 25),
  -- Shellder - Substitute - TM50
  (90, 9000, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 26),
  -- Shellder - Surf - HM03
  (90, 9000, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 27),
  -- Cloyster - Withdraw - Level 1
  (91, 9100, 110, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cloyster - Supersonic - Level 1
  (91, 9100, 48, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cloyster - Clamp - Level 1
  (91, 9100, 128, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cloyster - Aurora Beam - Level 1
  (91, 9100, 62, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cloyster - Spike Cannon - Level 50
  (91, 9100, 131, 1, NULL, 1, 50, NULL, NULL, NULL, 5),
  -- Cloyster - Toxic - TM06
  (91, 9100, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 6),
  -- Cloyster - Take Down - TM09
  (91, 9100, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 7),
  -- Cloyster - Double-Edge - TM10
  (91, 9100, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 8),
  -- Cloyster - Bubble Beam - TM11
  (91, 9100, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 9),
  -- Cloyster - Water Gun - TM12
  (91, 9100, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 10),
  -- Cloyster - Ice Beam - TM13
  (91, 9100, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 11),
  -- Cloyster - Blizzard - TM14
  (91, 9100, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 12),
  -- Cloyster - Hyper Beam - TM15
  (91, 9100, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 13),
  -- Cloyster - Rage - TM20
  (91, 9100, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 14),
  -- Cloyster - Teleport - TM30
  (91, 9100, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 15),
  -- Cloyster - Mimic - TM31
  (91, 9100, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 16),
  -- Cloyster - Double Team - TM32
  (91, 9100, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 17),
  -- Cloyster - Reflect - TM33
  (91, 9100, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 18),
  -- Cloyster - Bide - TM34
  (91, 9100, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 19),
  -- Cloyster - Self-Destruct - TM36
  (91, 9100, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 20),
  -- Cloyster - Swift - TM39
  (91, 9100, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 21),
  -- Cloyster - Rest - TM44
  (91, 9100, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 22),
  -- Cloyster - Explosion - TM47
  (91, 9100, 153, 1, NULL, 2, NULL, NULL, 1002047, NULL, 23),
  -- Cloyster - Tri Attack - TM49
  (91, 9100, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 24),
  -- Cloyster - Substitute - TM50
  (91, 9100, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 25),
  -- Cloyster - Surf - HM03
  (91, 9100, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 26),
  -- Gastly - Lick - Level 1
  (92, 9200, 122, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastly - Confuse Ray - Level 1
  (92, 9200, 109, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gastly - Night Shade - Level 1
  (92, 9200, 101, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gastly - Hypnosis - Level 27
  (92, 9200, 95, 1, NULL, 1, 27, NULL, NULL, NULL, 4),
  -- Gastly - Dream Eater - Level 35
  (92, 9200, 138, 1, NULL, 1, 35, NULL, NULL, NULL, 5),
  -- Gastly - Toxic - TM06
  (92, 9200, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 6),
  -- Gastly - Rage - TM20
  (92, 9200, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 7),
  -- Gastly - Mega Drain - TM21
  (92, 9200, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 8),
  -- Gastly - Thunderbolt - TM24
  (92, 9200, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 9),
  -- Gastly - Thunder - TM25
  (92, 9200, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 10),
  -- Gastly - Psychic - TM29
  (92, 9200, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 11),
  -- Gastly - Mimic - TM31
  (92, 9200, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 12),
  -- Gastly - Double Team - TM32
  (92, 9200, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 13),
  -- Gastly - Bide - TM34
  (92, 9200, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 14),
  -- Gastly - Self-Destruct - TM36
  (92, 9200, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 15),
  -- Gastly - Dream Eater - TM42
  (92, 9200, 138, 1, NULL, 2, NULL, NULL, 1002042, NULL, 16),
  -- Gastly - Rest - TM44
  (92, 9200, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 17),
  -- Gastly - Psywave - TM46
  (92, 9200, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 18),
  -- Gastly - Explosion - TM47
  (92, 9200, 153, 1, NULL, 2, NULL, NULL, 1002047, NULL, 19),
  -- Gastly - Substitute - TM50
  (92, 9200, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 20),
  -- Haunter - Lick - Level 1
  (93, 9300, 122, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Haunter - Confuse Ray - Level 1
  (93, 9300, 109, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Haunter - Night Shade - Level 1
  (93, 9300, 101, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Haunter - Hypnosis - Level 29
  (93, 9300, 95, 1, NULL, 1, 29, NULL, NULL, NULL, 4),
  -- Haunter - Dream Eater - Level 38
  (93, 9300, 138, 1, NULL, 1, 38, NULL, NULL, NULL, 5),
  -- Haunter - Toxic - TM06
  (93, 9300, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 6),
  -- Haunter - Rage - TM20
  (93, 9300, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 7),
  -- Haunter - Mega Drain - TM21
  (93, 9300, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 8),
  -- Haunter - Thunderbolt - TM24
  (93, 9300, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 9),
  -- Haunter - Thunder - TM25
  (93, 9300, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 10),
  -- Haunter - Psychic - TM29
  (93, 9300, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 11),
  -- Haunter - Mimic - TM31
  (93, 9300, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 12),
  -- Haunter - Double Team - TM32
  (93, 9300, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 13),
  -- Haunter - Bide - TM34
  (93, 9300, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 14),
  -- Haunter - Self-Destruct - TM36
  (93, 9300, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 15),
  -- Haunter - Dream Eater - TM42
  (93, 9300, 138, 1, NULL, 2, NULL, NULL, 1002042, NULL, 16),
  -- Haunter - Rest - TM44
  (93, 9300, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 17),
  -- Haunter - Psywave - TM46
  (93, 9300, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 18),
  -- Haunter - Explosion - TM47
  (93, 9300, 153, 1, NULL, 2, NULL, NULL, 1002047, NULL, 19),
  -- Haunter - Substitute - TM50
  (93, 9300, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 20),
  -- Gengar - Lick - Level 1
  (94, 9400, 122, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gengar - Confuse Ray - Level 1
  (94, 9400, 109, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gengar - Night Shade - Level 1
  (94, 9400, 101, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gengar - Hypnosis - Level 29
  (94, 9400, 95, 1, NULL, 1, 29, NULL, NULL, NULL, 4),
  -- Gengar - Dream Eater - Level 38
  (94, 9400, 138, 1, NULL, 1, 38, NULL, NULL, NULL, 5),
  -- Gengar - Mega Punch - TM01
  (94, 9400, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 6),
  -- Gengar - Mega Kick - TM05
  (94, 9400, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 7),
  -- Gengar - Toxic - TM06
  (94, 9400, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Gengar - Body Slam - TM08
  (94, 9400, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 9),
  -- Gengar - Take Down - TM09
  (94, 9400, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Gengar - Double-Edge - TM10
  (94, 9400, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Gengar - Hyper Beam - TM15
  (94, 9400, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 12),
  -- Gengar - Submission - TM17
  (94, 9400, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 13),
  -- Gengar - Counter - TM18
  (94, 9400, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 14),
  -- Gengar - Seismic Toss - TM19
  (94, 9400, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 15),
  -- Gengar - Rage - TM20
  (94, 9400, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 16),
  -- Gengar - Mega Drain - TM21
  (94, 9400, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 17),
  -- Gengar - Thunderbolt - TM24
  (94, 9400, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 18),
  -- Gengar - Thunder - TM25
  (94, 9400, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 19),
  -- Gengar - Psychic - TM29
  (94, 9400, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 20),
  -- Gengar - Mimic - TM31
  (94, 9400, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 21),
  -- Gengar - Double Team - TM32
  (94, 9400, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 22),
  -- Gengar - Bide - TM34
  (94, 9400, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 23),
  -- Gengar - Metronome - TM35
  (94, 9400, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 24),
  -- Gengar - Self-Destruct - TM36
  (94, 9400, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 25),
  -- Gengar - Skull Bash - TM40
  (94, 9400, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 26),
  -- Gengar - Dream Eater - TM42
  (94, 9400, 138, 1, NULL, 2, NULL, NULL, 1002042, NULL, 27),
  -- Gengar - Rest - TM44
  (94, 9400, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 28),
  -- Gengar - Psywave - TM46
  (94, 9400, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 29),
  -- Gengar - Explosion - TM47
  (94, 9400, 153, 1, NULL, 2, NULL, NULL, 1002047, NULL, 30),
  -- Gengar - Substitute - TM50
  (94, 9400, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 31),
  -- Gengar - Strength - HM04
  (94, 9400, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 32),
  -- Onix - Tackle - Level 1
  (95, 9500, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Onix - Screech - Level 1
  (95, 9500, 103, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Onix - Bind - Level 15
  (95, 9500, 20, 1, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Onix - Rock Throw - Level 19
  (95, 9500, 88, 1, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Onix - Rage - Level 25
  (95, 9500, 99, 1, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Onix - Slam - Level 33
  (95, 9500, 21, 1, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Onix - Harden - Level 43
  (95, 9500, 106, 1, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Onix - Toxic - TM06
  (95, 9500, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Onix - Body Slam - TM08
  (95, 9500, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 9),
  -- Onix - Take Down - TM09
  (95, 9500, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Onix - Double-Edge - TM10
  (95, 9500, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Onix - Rage - TM20
  (95, 9500, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 12),
  -- Onix - Earthquake - TM26
  (95, 9500, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 13),
  -- Onix - Fissure - TM27
  (95, 9500, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 14),
  -- Onix - Dig - TM28
  (95, 9500, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 15),
  -- Onix - Mimic - TM31
  (95, 9500, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 16),
  -- Onix - Double Team - TM32
  (95, 9500, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 17),
  -- Onix - Bide - TM34
  (95, 9500, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 18),
  -- Onix - Self-Destruct - TM36
  (95, 9500, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 19),
  -- Onix - Skull Bash - TM40
  (95, 9500, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 20),
  -- Onix - Rest - TM44
  (95, 9500, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 21),
  -- Onix - Explosion - TM47
  (95, 9500, 153, 1, NULL, 2, NULL, NULL, 1002047, NULL, 22),
  -- Onix - Rock Slide - TM48
  (95, 9500, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 23),
  -- Onix - Substitute - TM50
  (95, 9500, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 24),
  -- Onix - Strength - HM04
  (95, 9500, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 25),
  -- Drowzee - Pound - Level 1
  (96, 9600, 1, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drowzee - Hypnosis - Level 1
  (96, 9600, 95, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drowzee - Disable - Level 12
  (96, 9600, 50, 1, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Drowzee - Confusion - Level 17
  (96, 9600, 93, 1, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Drowzee - Headbutt - Level 24
  (96, 9600, 29, 1, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Drowzee - Poison Gas - Level 29
  (96, 9600, 139, 1, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Drowzee - Psychic - Level 32
  (96, 9600, 94, 1, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Drowzee - Meditate - Level 37
  (96, 9600, 96, 1, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Drowzee - Mega Punch - TM01
  (96, 9600, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 9),
  -- Drowzee - Mega Kick - TM05
  (96, 9600, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 10),
  -- Drowzee - Toxic - TM06
  (96, 9600, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Drowzee - Body Slam - TM08
  (96, 9600, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 12),
  -- Drowzee - Take Down - TM09
  (96, 9600, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Drowzee - Double-Edge - TM10
  (96, 9600, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Drowzee - Submission - TM17
  (96, 9600, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 15),
  -- Drowzee - Counter - TM18
  (96, 9600, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 16),
  -- Drowzee - Seismic Toss - TM19
  (96, 9600, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 17),
  -- Drowzee - Rage - TM20
  (96, 9600, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 18),
  -- Drowzee - Psychic - TM29
  (96, 9600, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 19),
  -- Drowzee - Teleport - TM30
  (96, 9600, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 20),
  -- Drowzee - Mimic - TM31
  (96, 9600, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 21),
  -- Drowzee - Double Team - TM32
  (96, 9600, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 22),
  -- Drowzee - Reflect - TM33
  (96, 9600, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 23),
  -- Drowzee - Bide - TM34
  (96, 9600, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 24),
  -- Drowzee - Metronome - TM35
  (96, 9600, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 25),
  -- Drowzee - Skull Bash - TM40
  (96, 9600, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 26),
  -- Drowzee - Dream Eater - TM42
  (96, 9600, 138, 1, NULL, 2, NULL, NULL, 1002042, NULL, 27),
  -- Drowzee - Rest - TM44
  (96, 9600, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 28),
  -- Drowzee - Thunder Wave - TM45
  (96, 9600, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 29),
  -- Drowzee - Psywave - TM46
  (96, 9600, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 30),
  -- Drowzee - Tri Attack - TM49
  (96, 9600, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 31),
  -- Drowzee - Substitute - TM50
  (96, 9600, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 32),
  -- Drowzee - Flash - HM05
  (96, 9600, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 33),
  -- Hypno - Pound - Level 1
  (97, 9700, 1, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hypno - Hypnosis - Level 1
  (97, 9700, 95, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hypno - Disable - Level 1
  (97, 9700, 50, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hypno - Confusion - Level 1
  (97, 9700, 93, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hypno - Disable - Level 12
  (97, 9700, 50, 1, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Hypno - Confusion - Level 17
  (97, 9700, 93, 1, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Hypno - Headbutt - Level 24
  (97, 9700, 29, 1, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Hypno - Poison Gas - Level 33
  (97, 9700, 139, 1, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Hypno - Psychic - Level 37
  (97, 9700, 94, 1, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Hypno - Meditate - Level 43
  (97, 9700, 96, 1, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Hypno - Mega Punch - TM01
  (97, 9700, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 11),
  -- Hypno - Mega Kick - TM05
  (97, 9700, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 12),
  -- Hypno - Toxic - TM06
  (97, 9700, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 13),
  -- Hypno - Body Slam - TM08
  (97, 9700, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 14),
  -- Hypno - Take Down - TM09
  (97, 9700, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 15),
  -- Hypno - Double-Edge - TM10
  (97, 9700, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 16),
  -- Hypno - Hyper Beam - TM15
  (97, 9700, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 17),
  -- Hypno - Submission - TM17
  (97, 9700, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 18),
  -- Hypno - Counter - TM18
  (97, 9700, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 19),
  -- Hypno - Seismic Toss - TM19
  (97, 9700, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 20),
  -- Hypno - Rage - TM20
  (97, 9700, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 21),
  -- Hypno - Psychic - TM29
  (97, 9700, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 22),
  -- Hypno - Teleport - TM30
  (97, 9700, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 23),
  -- Hypno - Mimic - TM31
  (97, 9700, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 24),
  -- Hypno - Double Team - TM32
  (97, 9700, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 25),
  -- Hypno - Reflect - TM33
  (97, 9700, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 26),
  -- Hypno - Bide - TM34
  (97, 9700, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 27),
  -- Hypno - Metronome - TM35
  (97, 9700, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 28),
  -- Hypno - Skull Bash - TM40
  (97, 9700, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 29),
  -- Hypno - Dream Eater - TM42
  (97, 9700, 138, 1, NULL, 2, NULL, NULL, 1002042, NULL, 30),
  -- Hypno - Rest - TM44
  (97, 9700, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 31),
  -- Hypno - Thunder Wave - TM45
  (97, 9700, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 32),
  -- Hypno - Psywave - TM46
  (97, 9700, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 33),
  -- Hypno - Tri Attack - TM49
  (97, 9700, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 34),
  -- Hypno - Substitute - TM50
  (97, 9700, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 35),
  -- Hypno - Flash - HM05
  (97, 9700, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 36),
  -- Krabby - Bubble - Level 1
  (98, 9800, 145, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krabby - Leer - Level 1
  (98, 9800, 43, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Krabby - Vise Grip - Level 20
  (98, 9800, 11, 1, NULL, 1, 20, NULL, NULL, NULL, 3),
  -- Krabby - Guillotine - Level 25
  (98, 9800, 12, 1, NULL, 1, 25, NULL, NULL, NULL, 4),
  -- Krabby - Stomp - Level 30
  (98, 9800, 23, 1, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Krabby - Crabhammer - Level 35
  (98, 9800, 152, 1, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Krabby - Harden - Level 40
  (98, 9800, 106, 1, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Krabby - Swords Dance - TM03
  (98, 9800, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 8),
  -- Krabby - Toxic - TM06
  (98, 9800, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Krabby - Body Slam - TM08
  (98, 9800, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 10),
  -- Krabby - Take Down - TM09
  (98, 9800, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Krabby - Double-Edge - TM10
  (98, 9800, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Krabby - Bubble Beam - TM11
  (98, 9800, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 13),
  -- Krabby - Water Gun - TM12
  (98, 9800, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 14),
  -- Krabby - Ice Beam - TM13
  (98, 9800, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 15),
  -- Krabby - Blizzard - TM14
  (98, 9800, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 16),
  -- Krabby - Rage - TM20
  (98, 9800, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 17),
  -- Krabby - Mimic - TM31
  (98, 9800, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 18),
  -- Krabby - Double Team - TM32
  (98, 9800, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 19),
  -- Krabby - Bide - TM34
  (98, 9800, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Krabby - Rest - TM44
  (98, 9800, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 21),
  -- Krabby - Substitute - TM50
  (98, 9800, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 22),
  -- Krabby - Cut - HM01
  (98, 9800, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 23),
  -- Krabby - Surf - HM03
  (98, 9800, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 24),
  -- Krabby - Strength - HM04
  (98, 9800, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 25),
  -- Kingler - Bubble - Level 1
  (99, 9900, 145, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kingler - Leer - Level 1
  (99, 9900, 43, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kingler - Vise Grip - Level 1
  (99, 9900, 11, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kingler - Vise Grip - Level 20
  (99, 9900, 11, 1, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Kingler - Guillotine - Level 25
  (99, 9900, 12, 1, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Kingler - Stomp - Level 34
  (99, 9900, 23, 1, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Kingler - Crabhammer - Level 42
  (99, 9900, 152, 1, NULL, 1, 42, NULL, NULL, NULL, 7),
  -- Kingler - Harden - Level 49
  (99, 9900, 106, 1, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Kingler - Swords Dance - TM03
  (99, 9900, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 9),
  -- Kingler - Toxic - TM06
  (99, 9900, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Kingler - Body Slam - TM08
  (99, 9900, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Kingler - Take Down - TM09
  (99, 9900, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Kingler - Double-Edge - TM10
  (99, 9900, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Kingler - Bubble Beam - TM11
  (99, 9900, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 14),
  -- Kingler - Water Gun - TM12
  (99, 9900, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 15),
  -- Kingler - Ice Beam - TM13
  (99, 9900, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 16),
  -- Kingler - Blizzard - TM14
  (99, 9900, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 17),
  -- Kingler - Hyper Beam - TM15
  (99, 9900, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 18),
  -- Kingler - Rage - TM20
  (99, 9900, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 19),
  -- Kingler - Mimic - TM31
  (99, 9900, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 20),
  -- Kingler - Double Team - TM32
  (99, 9900, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 21),
  -- Kingler - Bide - TM34
  (99, 9900, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 22),
  -- Kingler - Rest - TM44
  (99, 9900, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 23),
  -- Kingler - Substitute - TM50
  (99, 9900, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 24),
  -- Kingler - Cut - HM01
  (99, 9900, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 25),
  -- Kingler - Surf - HM03
  (99, 9900, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 26),
  -- Kingler - Strength - HM04
  (99, 9900, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 27),
  -- Voltorb - Tackle - Level 1
  (100, 10000, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Voltorb - Screech - Level 1
  (100, 10000, 103, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Voltorb - Sonic Boom - Level 17
  (100, 10000, 49, 1, NULL, 1, 17, NULL, NULL, NULL, 3),
  -- Voltorb - Self-Destruct - Level 22
  (100, 10000, 120, 1, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Voltorb - Light Screen - Level 29
  (100, 10000, 113, 1, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Voltorb - Swift - Level 36
  (100, 10000, 129, 1, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Voltorb - Explosion - Level 43
  (100, 10000, 153, 1, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Voltorb - Toxic - TM06
  (100, 10000, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Voltorb - Take Down - TM09
  (100, 10000, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 9),
  -- Voltorb - Rage - TM20
  (100, 10000, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 10),
  -- Voltorb - Thunderbolt - TM24
  (100, 10000, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 11),
  -- Voltorb - Thunder - TM25
  (100, 10000, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 12),
  -- Voltorb - Teleport - TM30
  (100, 10000, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 13),
  -- Voltorb - Mimic - TM31
  (100, 10000, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 14),
  -- Voltorb - Double Team - TM32
  (100, 10000, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 15),
  -- Voltorb - Reflect - TM33
  (100, 10000, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 16),
  -- Voltorb - Bide - TM34
  (100, 10000, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 17),
  -- Voltorb - Self-Destruct - TM36
  (100, 10000, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 18),
  -- Voltorb - Swift - TM39
  (100, 10000, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 19),
  -- Voltorb - Rest - TM44
  (100, 10000, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 20),
  -- Voltorb - Thunder Wave - TM45
  (100, 10000, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 21),
  -- Voltorb - Explosion - TM47
  (100, 10000, 153, 1, NULL, 2, NULL, NULL, 1002047, NULL, 22),
  -- Voltorb - Substitute - TM50
  (100, 10000, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 23),
  -- Voltorb - Flash - HM05
  (100, 10000, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 24);