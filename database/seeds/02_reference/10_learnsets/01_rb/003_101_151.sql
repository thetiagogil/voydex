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
-- Pokémon: #101-#151
-- Rows: 1457
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
  -- Electrode - Tackle - Level 1
  (101, 10100, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electrode - Screech - Level 1
  (101, 10100, 103, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electrode - Sonic Boom - Level 1
  (101, 10100, 49, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electrode - Sonic Boom - Level 17
  (101, 10100, 49, 1, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Electrode - Self-Destruct - Level 22
  (101, 10100, 120, 1, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Electrode - Light Screen - Level 29
  (101, 10100, 113, 1, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Electrode - Swift - Level 40
  (101, 10100, 129, 1, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Electrode - Explosion - Level 50
  (101, 10100, 153, 1, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Electrode - Toxic - TM06
  (101, 10100, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Electrode - Take Down - TM09
  (101, 10100, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Electrode - Hyper Beam - TM15
  (101, 10100, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 11),
  -- Electrode - Rage - TM20
  (101, 10100, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 12),
  -- Electrode - Thunderbolt - TM24
  (101, 10100, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 13),
  -- Electrode - Thunder - TM25
  (101, 10100, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 14),
  -- Electrode - Teleport - TM30
  (101, 10100, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 15),
  -- Electrode - Mimic - TM31
  (101, 10100, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 16),
  -- Electrode - Double Team - TM32
  (101, 10100, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 17),
  -- Electrode - Reflect - TM33
  (101, 10100, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 18),
  -- Electrode - Bide - TM34
  (101, 10100, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 19),
  -- Electrode - Self-Destruct - TM36
  (101, 10100, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 20),
  -- Electrode - Swift - TM39
  (101, 10100, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 21),
  -- Electrode - Skull Bash - TM40
  (101, 10100, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 22),
  -- Electrode - Rest - TM44
  (101, 10100, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 23),
  -- Electrode - Thunder Wave - TM45
  (101, 10100, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 24),
  -- Electrode - Explosion - TM47
  (101, 10100, 153, 1, NULL, 2, NULL, NULL, 1002047, NULL, 25),
  -- Electrode - Substitute - TM50
  (101, 10100, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 26),
  -- Electrode - Flash - HM05
  (101, 10100, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 27),
  -- Exeggcute - Barrage - Level 1
  (102, 10200, 140, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggcute - Hypnosis - Level 1
  (102, 10200, 95, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggcute - Reflect - Level 25
  (102, 10200, 115, 1, NULL, 1, 25, NULL, NULL, NULL, 3),
  -- Exeggcute - Leech Seed - Level 28
  (102, 10200, 73, 1, NULL, 1, 28, NULL, NULL, NULL, 4),
  -- Exeggcute - Stun Spore - Level 32
  (102, 10200, 78, 1, NULL, 1, 32, NULL, NULL, NULL, 5),
  -- Exeggcute - Poison Powder - Level 37
  (102, 10200, 77, 1, NULL, 1, 37, NULL, NULL, NULL, 6),
  -- Exeggcute - Solar Beam - Level 42
  (102, 10200, 76, 1, NULL, 1, 42, NULL, NULL, NULL, 7),
  -- Exeggcute - Sleep Powder - Level 48
  (102, 10200, 79, 1, NULL, 1, 48, NULL, NULL, NULL, 8),
  -- Exeggcute - Toxic - TM06
  (102, 10200, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Exeggcute - Take Down - TM09
  (102, 10200, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Exeggcute - Double-Edge - TM10
  (102, 10200, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Exeggcute - Rage - TM20
  (102, 10200, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 12),
  -- Exeggcute - Psychic - TM29
  (102, 10200, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 13),
  -- Exeggcute - Teleport - TM30
  (102, 10200, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 14),
  -- Exeggcute - Mimic - TM31
  (102, 10200, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 15),
  -- Exeggcute - Double Team - TM32
  (102, 10200, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 16),
  -- Exeggcute - Reflect - TM33
  (102, 10200, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 17),
  -- Exeggcute - Bide - TM34
  (102, 10200, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 18),
  -- Exeggcute - Self-Destruct - TM36
  (102, 10200, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 19),
  -- Exeggcute - Egg Bomb - TM37
  (102, 10200, 121, 1, NULL, 2, NULL, NULL, 1002037, NULL, 20),
  -- Exeggcute - Rest - TM44
  (102, 10200, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 21),
  -- Exeggcute - Psywave - TM46
  (102, 10200, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 22),
  -- Exeggcute - Explosion - TM47
  (102, 10200, 153, 1, NULL, 2, NULL, NULL, 1002047, NULL, 23),
  -- Exeggcute - Substitute - TM50
  (102, 10200, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 24),
  -- Exeggutor - Barrage - Level 1
  (103, 10300, 140, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggutor - Hypnosis - Level 1
  (103, 10300, 95, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggutor - Stomp - Level 28
  (103, 10300, 23, 1, NULL, 1, 28, NULL, NULL, NULL, 3),
  -- Exeggutor - Toxic - TM06
  (103, 10300, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 4),
  -- Exeggutor - Take Down - TM09
  (103, 10300, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 5),
  -- Exeggutor - Double-Edge - TM10
  (103, 10300, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 6),
  -- Exeggutor - Hyper Beam - TM15
  (103, 10300, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 7),
  -- Exeggutor - Rage - TM20
  (103, 10300, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 8),
  -- Exeggutor - Mega Drain - TM21
  (103, 10300, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 9),
  -- Exeggutor - Solar Beam - TM22
  (103, 10300, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 10),
  -- Exeggutor - Psychic - TM29
  (103, 10300, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 11),
  -- Exeggutor - Teleport - TM30
  (103, 10300, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 12),
  -- Exeggutor - Mimic - TM31
  (103, 10300, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 13),
  -- Exeggutor - Double Team - TM32
  (103, 10300, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 14),
  -- Exeggutor - Reflect - TM33
  (103, 10300, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 15),
  -- Exeggutor - Bide - TM34
  (103, 10300, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 16),
  -- Exeggutor - Self-Destruct - TM36
  (103, 10300, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 17),
  -- Exeggutor - Egg Bomb - TM37
  (103, 10300, 121, 1, NULL, 2, NULL, NULL, 1002037, NULL, 18),
  -- Exeggutor - Rest - TM44
  (103, 10300, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 19),
  -- Exeggutor - Psywave - TM46
  (103, 10300, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 20),
  -- Exeggutor - Explosion - TM47
  (103, 10300, 153, 1, NULL, 2, NULL, NULL, 1002047, NULL, 21),
  -- Exeggutor - Substitute - TM50
  (103, 10300, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 22),
  -- Exeggutor - Strength - HM04
  (103, 10300, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 23),
  -- Cubone - Growl - Level 1
  (104, 10400, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cubone - Bone Club - Level 1
  (104, 10400, 125, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cubone - Leer - Level 25
  (104, 10400, 43, 1, NULL, 1, 25, NULL, NULL, NULL, 3),
  -- Cubone - Focus Energy - Level 31
  (104, 10400, 116, 1, NULL, 1, 31, NULL, NULL, NULL, 4),
  -- Cubone - Thrash - Level 38
  (104, 10400, 37, 1, NULL, 1, 38, NULL, NULL, NULL, 5),
  -- Cubone - Bonemerang - Level 43
  (104, 10400, 155, 1, NULL, 1, 43, NULL, NULL, NULL, 6),
  -- Cubone - Rage - Level 46
  (104, 10400, 99, 1, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Cubone - Mega Punch - TM01
  (104, 10400, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 8),
  -- Cubone - Mega Kick - TM05
  (104, 10400, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 9),
  -- Cubone - Toxic - TM06
  (104, 10400, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Cubone - Body Slam - TM08
  (104, 10400, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Cubone - Take Down - TM09
  (104, 10400, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Cubone - Double-Edge - TM10
  (104, 10400, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Cubone - Bubble Beam - TM11
  (104, 10400, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 14),
  -- Cubone - Water Gun - TM12
  (104, 10400, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 15),
  -- Cubone - Ice Beam - TM13
  (104, 10400, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 16),
  -- Cubone - Blizzard - TM14
  (104, 10400, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 17),
  -- Cubone - Submission - TM17
  (104, 10400, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 18),
  -- Cubone - Counter - TM18
  (104, 10400, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 19),
  -- Cubone - Seismic Toss - TM19
  (104, 10400, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 20),
  -- Cubone - Rage - TM20
  (104, 10400, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 21),
  -- Cubone - Earthquake - TM26
  (104, 10400, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 22),
  -- Cubone - Fissure - TM27
  (104, 10400, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 23),
  -- Cubone - Dig - TM28
  (104, 10400, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 24),
  -- Cubone - Mimic - TM31
  (104, 10400, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 25),
  -- Cubone - Double Team - TM32
  (104, 10400, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 26),
  -- Cubone - Bide - TM34
  (104, 10400, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 27),
  -- Cubone - Fire Blast - TM38
  (104, 10400, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 28),
  -- Cubone - Skull Bash - TM40
  (104, 10400, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 29),
  -- Cubone - Rest - TM44
  (104, 10400, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 30),
  -- Cubone - Substitute - TM50
  (104, 10400, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 31),
  -- Cubone - Strength - HM04
  (104, 10400, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 32),
  -- Marowak - Bone Club - Level 1
  (105, 10500, 125, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marowak - Leer - Level 25
  (105, 10500, 43, 1, NULL, 1, 25, NULL, NULL, NULL, 2),
  -- Marowak - Focus Energy - Level 33
  (105, 10500, 116, 1, NULL, 1, 33, NULL, NULL, NULL, 3),
  -- Marowak - Thrash - Level 41
  (105, 10500, 37, 1, NULL, 1, 41, NULL, NULL, NULL, 4),
  -- Marowak - Bonemerang - Level 48
  (105, 10500, 155, 1, NULL, 1, 48, NULL, NULL, NULL, 5),
  -- Marowak - Rage - Level 55
  (105, 10500, 99, 1, NULL, 1, 55, NULL, NULL, NULL, 6),
  -- Marowak - Growl - Level 1
  (105, 10500, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Marowak - Leer - Level 1
  (105, 10500, 43, 1, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Marowak - Focus Energy - Level 1
  (105, 10500, 116, 1, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Marowak - Mega Punch - TM01
  (105, 10500, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 10),
  -- Marowak - Mega Kick - TM05
  (105, 10500, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 11),
  -- Marowak - Toxic - TM06
  (105, 10500, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 12),
  -- Marowak - Body Slam - TM08
  (105, 10500, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 13),
  -- Marowak - Take Down - TM09
  (105, 10500, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 14),
  -- Marowak - Double-Edge - TM10
  (105, 10500, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 15),
  -- Marowak - Bubble Beam - TM11
  (105, 10500, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 16),
  -- Marowak - Water Gun - TM12
  (105, 10500, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 17),
  -- Marowak - Ice Beam - TM13
  (105, 10500, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 18),
  -- Marowak - Blizzard - TM14
  (105, 10500, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 19),
  -- Marowak - Hyper Beam - TM15
  (105, 10500, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 20),
  -- Marowak - Submission - TM17
  (105, 10500, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 21),
  -- Marowak - Counter - TM18
  (105, 10500, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 22),
  -- Marowak - Seismic Toss - TM19
  (105, 10500, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 23),
  -- Marowak - Rage - TM20
  (105, 10500, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 24),
  -- Marowak - Earthquake - TM26
  (105, 10500, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 25),
  -- Marowak - Fissure - TM27
  (105, 10500, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 26),
  -- Marowak - Dig - TM28
  (105, 10500, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 27),
  -- Marowak - Mimic - TM31
  (105, 10500, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 28),
  -- Marowak - Double Team - TM32
  (105, 10500, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 29),
  -- Marowak - Bide - TM34
  (105, 10500, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 30),
  -- Marowak - Fire Blast - TM38
  (105, 10500, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 31),
  -- Marowak - Skull Bash - TM40
  (105, 10500, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 32),
  -- Marowak - Rest - TM44
  (105, 10500, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 33),
  -- Marowak - Substitute - TM50
  (105, 10500, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 34),
  -- Marowak - Strength - HM04
  (105, 10500, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 35),
  -- Hitmonlee - Double Kick - Level 1
  (106, 10600, 24, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmonlee - Meditate - Level 1
  (106, 10600, 96, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmonlee - Rolling Kick - Level 33
  (106, 10600, 27, 1, NULL, 1, 33, NULL, NULL, NULL, 3),
  -- Hitmonlee - Jump Kick - Level 38
  (106, 10600, 26, 1, NULL, 1, 38, NULL, NULL, NULL, 4),
  -- Hitmonlee - Focus Energy - Level 43
  (106, 10600, 116, 1, NULL, 1, 43, NULL, NULL, NULL, 5),
  -- Hitmonlee - High Jump Kick - Level 48
  (106, 10600, 136, 1, NULL, 1, 48, NULL, NULL, NULL, 6),
  -- Hitmonlee - Mega Kick - Level 53
  (106, 10600, 25, 1, NULL, 1, 53, NULL, NULL, NULL, 7),
  -- Hitmonlee - Mega Punch - TM01
  (106, 10600, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 8),
  -- Hitmonlee - Mega Kick - TM05
  (106, 10600, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 9),
  -- Hitmonlee - Toxic - TM06
  (106, 10600, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Hitmonlee - Body Slam - TM08
  (106, 10600, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Hitmonlee - Take Down - TM09
  (106, 10600, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Hitmonlee - Double-Edge - TM10
  (106, 10600, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Hitmonlee - Submission - TM17
  (106, 10600, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 14),
  -- Hitmonlee - Counter - TM18
  (106, 10600, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 15),
  -- Hitmonlee - Seismic Toss - TM19
  (106, 10600, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 16),
  -- Hitmonlee - Rage - TM20
  (106, 10600, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 17),
  -- Hitmonlee - Mimic - TM31
  (106, 10600, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 18),
  -- Hitmonlee - Double Team - TM32
  (106, 10600, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 19),
  -- Hitmonlee - Bide - TM34
  (106, 10600, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Hitmonlee - Metronome - TM35
  (106, 10600, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 21),
  -- Hitmonlee - Swift - TM39
  (106, 10600, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 22),
  -- Hitmonlee - Skull Bash - TM40
  (106, 10600, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 23),
  -- Hitmonlee - Rest - TM44
  (106, 10600, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 24),
  -- Hitmonlee - Substitute - TM50
  (106, 10600, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 25),
  -- Hitmonlee - Strength - HM04
  (106, 10600, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 26),
  -- Hitmonchan - Comet Punch - Level 1
  (107, 10700, 4, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmonchan - Agility - Level 1
  (107, 10700, 97, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmonchan - Fire Punch - Level 33
  (107, 10700, 7, 1, NULL, 1, 33, NULL, NULL, NULL, 3),
  -- Hitmonchan - Ice Punch - Level 38
  (107, 10700, 8, 1, NULL, 1, 38, NULL, NULL, NULL, 4),
  -- Hitmonchan - Thunder Punch - Level 43
  (107, 10700, 9, 1, NULL, 1, 43, NULL, NULL, NULL, 5),
  -- Hitmonchan - Mega Punch - Level 48
  (107, 10700, 5, 1, NULL, 1, 48, NULL, NULL, NULL, 6),
  -- Hitmonchan - Counter - Level 53
  (107, 10700, 68, 1, NULL, 1, 53, NULL, NULL, NULL, 7),
  -- Hitmonchan - Mega Punch - TM01
  (107, 10700, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 8),
  -- Hitmonchan - Mega Kick - TM05
  (107, 10700, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 9),
  -- Hitmonchan - Toxic - TM06
  (107, 10700, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Hitmonchan - Body Slam - TM08
  (107, 10700, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Hitmonchan - Take Down - TM09
  (107, 10700, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Hitmonchan - Double-Edge - TM10
  (107, 10700, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Hitmonchan - Submission - TM17
  (107, 10700, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 14),
  -- Hitmonchan - Counter - TM18
  (107, 10700, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 15),
  -- Hitmonchan - Seismic Toss - TM19
  (107, 10700, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 16),
  -- Hitmonchan - Rage - TM20
  (107, 10700, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 17),
  -- Hitmonchan - Mimic - TM31
  (107, 10700, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 18),
  -- Hitmonchan - Double Team - TM32
  (107, 10700, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 19),
  -- Hitmonchan - Bide - TM34
  (107, 10700, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Hitmonchan - Metronome - TM35
  (107, 10700, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 21),
  -- Hitmonchan - Swift - TM39
  (107, 10700, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 22),
  -- Hitmonchan - Skull Bash - TM40
  (107, 10700, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 23),
  -- Hitmonchan - Rest - TM44
  (107, 10700, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 24),
  -- Hitmonchan - Substitute - TM50
  (107, 10700, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 25),
  -- Hitmonchan - Strength - HM04
  (107, 10700, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 26),
  -- Lickitung - Wrap - Level 1
  (108, 10800, 35, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lickitung - Supersonic - Level 1
  (108, 10800, 48, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lickitung - Stomp - Level 7
  (108, 10800, 23, 1, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Lickitung - Disable - Level 15
  (108, 10800, 50, 1, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Lickitung - Defense Curl - Level 23
  (108, 10800, 111, 1, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Lickitung - Slam - Level 31
  (108, 10800, 21, 1, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Lickitung - Screech - Level 39
  (108, 10800, 103, 1, NULL, 1, 39, NULL, NULL, NULL, 7),
  -- Lickitung - Mega Punch - TM01
  (108, 10800, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 8),
  -- Lickitung - Swords Dance - TM03
  (108, 10800, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 9),
  -- Lickitung - Mega Kick - TM05
  (108, 10800, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 10),
  -- Lickitung - Toxic - TM06
  (108, 10800, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Lickitung - Body Slam - TM08
  (108, 10800, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 12),
  -- Lickitung - Take Down - TM09
  (108, 10800, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Lickitung - Double-Edge - TM10
  (108, 10800, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Lickitung - Bubble Beam - TM11
  (108, 10800, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 15),
  -- Lickitung - Water Gun - TM12
  (108, 10800, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 16),
  -- Lickitung - Ice Beam - TM13
  (108, 10800, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 17),
  -- Lickitung - Blizzard - TM14
  (108, 10800, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 18),
  -- Lickitung - Hyper Beam - TM15
  (108, 10800, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 19),
  -- Lickitung - Submission - TM17
  (108, 10800, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 20),
  -- Lickitung - Counter - TM18
  (108, 10800, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 21),
  -- Lickitung - Seismic Toss - TM19
  (108, 10800, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 22),
  -- Lickitung - Rage - TM20
  (108, 10800, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 23),
  -- Lickitung - Thunderbolt - TM24
  (108, 10800, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 24),
  -- Lickitung - Thunder - TM25
  (108, 10800, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 25),
  -- Lickitung - Earthquake - TM26
  (108, 10800, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 26),
  -- Lickitung - Fissure - TM27
  (108, 10800, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 27),
  -- Lickitung - Mimic - TM31
  (108, 10800, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 28),
  -- Lickitung - Double Team - TM32
  (108, 10800, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 29),
  -- Lickitung - Bide - TM34
  (108, 10800, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 30),
  -- Lickitung - Fire Blast - TM38
  (108, 10800, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 31),
  -- Lickitung - Skull Bash - TM40
  (108, 10800, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 32),
  -- Lickitung - Rest - TM44
  (108, 10800, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 33),
  -- Lickitung - Substitute - TM50
  (108, 10800, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 34),
  -- Lickitung - Cut - HM01
  (108, 10800, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 35),
  -- Lickitung - Surf - HM03
  (108, 10800, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 36),
  -- Lickitung - Strength - HM04
  (108, 10800, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 37),
  -- Koffing - Tackle - Level 1
  (109, 10900, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Koffing - Smog - Level 1
  (109, 10900, 123, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Koffing - Sludge - Level 32
  (109, 10900, 124, 1, NULL, 1, 32, NULL, NULL, NULL, 3),
  -- Koffing - Smokescreen - Level 37
  (109, 10900, 108, 1, NULL, 1, 37, NULL, NULL, NULL, 4),
  -- Koffing - Self-Destruct - Level 40
  (109, 10900, 120, 1, NULL, 1, 40, NULL, NULL, NULL, 5),
  -- Koffing - Haze - Level 45
  (109, 10900, 114, 1, NULL, 1, 45, NULL, NULL, NULL, 6),
  -- Koffing - Explosion - Level 48
  (109, 10900, 153, 1, NULL, 1, 48, NULL, NULL, NULL, 7),
  -- Koffing - Toxic - TM06
  (109, 10900, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Koffing - Rage - TM20
  (109, 10900, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 9),
  -- Koffing - Thunderbolt - TM24
  (109, 10900, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 10),
  -- Koffing - Thunder - TM25
  (109, 10900, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 11),
  -- Koffing - Mimic - TM31
  (109, 10900, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 12),
  -- Koffing - Double Team - TM32
  (109, 10900, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 13),
  -- Koffing - Bide - TM34
  (109, 10900, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 14),
  -- Koffing - Self-Destruct - TM36
  (109, 10900, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 15),
  -- Koffing - Fire Blast - TM38
  (109, 10900, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 16),
  -- Koffing - Rest - TM44
  (109, 10900, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 17),
  -- Koffing - Explosion - TM47
  (109, 10900, 153, 1, NULL, 2, NULL, NULL, 1002047, NULL, 18),
  -- Koffing - Substitute - TM50
  (109, 10900, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 19),
  -- Weezing - Tackle - Level 1
  (110, 11000, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weezing - Smog - Level 1
  (110, 11000, 123, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weezing - Sludge - Level 1
  (110, 11000, 124, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weezing - Sludge - Level 32
  (110, 11000, 124, 1, NULL, 1, 32, NULL, NULL, NULL, 4),
  -- Weezing - Smokescreen - Level 39
  (110, 11000, 108, 1, NULL, 1, 39, NULL, NULL, NULL, 5),
  -- Weezing - Self-Destruct - Level 43
  (110, 11000, 120, 1, NULL, 1, 43, NULL, NULL, NULL, 6),
  -- Weezing - Haze - Level 49
  (110, 11000, 114, 1, NULL, 1, 49, NULL, NULL, NULL, 7),
  -- Weezing - Explosion - Level 53
  (110, 11000, 153, 1, NULL, 1, 53, NULL, NULL, NULL, 8),
  -- Weezing - Toxic - TM06
  (110, 11000, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Weezing - Hyper Beam - TM15
  (110, 11000, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 10),
  -- Weezing - Rage - TM20
  (110, 11000, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 11),
  -- Weezing - Thunderbolt - TM24
  (110, 11000, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 12),
  -- Weezing - Thunder - TM25
  (110, 11000, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 13),
  -- Weezing - Mimic - TM31
  (110, 11000, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 14),
  -- Weezing - Double Team - TM32
  (110, 11000, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 15),
  -- Weezing - Bide - TM34
  (110, 11000, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 16),
  -- Weezing - Self-Destruct - TM36
  (110, 11000, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 17),
  -- Weezing - Fire Blast - TM38
  (110, 11000, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 18),
  -- Weezing - Rest - TM44
  (110, 11000, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 19),
  -- Weezing - Explosion - TM47
  (110, 11000, 153, 1, NULL, 2, NULL, NULL, 1002047, NULL, 20),
  -- Weezing - Substitute - TM50
  (110, 11000, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 21),
  -- Rhyhorn - Horn Attack - Level 1
  (111, 11100, 30, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhyhorn - Stomp - Level 30
  (111, 11100, 23, 1, NULL, 1, 30, NULL, NULL, NULL, 2),
  -- Rhyhorn - Tail Whip - Level 35
  (111, 11100, 39, 1, NULL, 1, 35, NULL, NULL, NULL, 3),
  -- Rhyhorn - Fury Attack - Level 40
  (111, 11100, 31, 1, NULL, 1, 40, NULL, NULL, NULL, 4),
  -- Rhyhorn - Horn Drill - Level 45
  (111, 11100, 32, 1, NULL, 1, 45, NULL, NULL, NULL, 5),
  -- Rhyhorn - Leer - Level 50
  (111, 11100, 43, 1, NULL, 1, 50, NULL, NULL, NULL, 6),
  -- Rhyhorn - Take Down - Level 55
  (111, 11100, 36, 1, NULL, 1, 55, NULL, NULL, NULL, 7),
  -- Rhyhorn - Toxic - TM06
  (111, 11100, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Rhyhorn - Horn Drill - TM07
  (111, 11100, 32, 1, NULL, 2, NULL, NULL, 1002007, NULL, 9),
  -- Rhyhorn - Body Slam - TM08
  (111, 11100, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 10),
  -- Rhyhorn - Take Down - TM09
  (111, 11100, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Rhyhorn - Double-Edge - TM10
  (111, 11100, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Rhyhorn - Rage - TM20
  (111, 11100, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 13),
  -- Rhyhorn - Thunderbolt - TM24
  (111, 11100, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 14),
  -- Rhyhorn - Thunder - TM25
  (111, 11100, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 15),
  -- Rhyhorn - Earthquake - TM26
  (111, 11100, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 16),
  -- Rhyhorn - Fissure - TM27
  (111, 11100, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 17),
  -- Rhyhorn - Dig - TM28
  (111, 11100, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 18),
  -- Rhyhorn - Mimic - TM31
  (111, 11100, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 19),
  -- Rhyhorn - Double Team - TM32
  (111, 11100, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 20),
  -- Rhyhorn - Bide - TM34
  (111, 11100, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 21),
  -- Rhyhorn - Fire Blast - TM38
  (111, 11100, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 22),
  -- Rhyhorn - Skull Bash - TM40
  (111, 11100, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 23),
  -- Rhyhorn - Rest - TM44
  (111, 11100, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 24),
  -- Rhyhorn - Rock Slide - TM48
  (111, 11100, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 25),
  -- Rhyhorn - Substitute - TM50
  (111, 11100, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 26),
  -- Rhyhorn - Strength - HM04
  (111, 11100, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 27),
  -- Rhydon - Horn Attack - Level 1
  (112, 11200, 30, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhydon - Stomp - Level 1
  (112, 11200, 23, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhydon - Tail Whip - Level 1
  (112, 11200, 39, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rhydon - Fury Attack - Level 1
  (112, 11200, 31, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rhydon - Stomp - Level 30
  (112, 11200, 23, 1, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Rhydon - Tail Whip - Level 35
  (112, 11200, 39, 1, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Rhydon - Fury Attack - Level 40
  (112, 11200, 31, 1, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Rhydon - Horn Drill - Level 48
  (112, 11200, 32, 1, NULL, 1, 48, NULL, NULL, NULL, 8),
  -- Rhydon - Leer - Level 55
  (112, 11200, 43, 1, NULL, 1, 55, NULL, NULL, NULL, 9),
  -- Rhydon - Take Down - Level 64
  (112, 11200, 36, 1, NULL, 1, 64, NULL, NULL, NULL, 10),
  -- Rhydon - Mega Punch - TM01
  (112, 11200, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 11),
  -- Rhydon - Mega Kick - TM05
  (112, 11200, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 12),
  -- Rhydon - Toxic - TM06
  (112, 11200, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 13),
  -- Rhydon - Horn Drill - TM07
  (112, 11200, 32, 1, NULL, 2, NULL, NULL, 1002007, NULL, 14),
  -- Rhydon - Body Slam - TM08
  (112, 11200, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 15),
  -- Rhydon - Take Down - TM09
  (112, 11200, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 16),
  -- Rhydon - Double-Edge - TM10
  (112, 11200, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 17),
  -- Rhydon - Bubble Beam - TM11
  (112, 11200, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 18),
  -- Rhydon - Water Gun - TM12
  (112, 11200, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 19),
  -- Rhydon - Ice Beam - TM13
  (112, 11200, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 20),
  -- Rhydon - Blizzard - TM14
  (112, 11200, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 21),
  -- Rhydon - Hyper Beam - TM15
  (112, 11200, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 22),
  -- Rhydon - Pay Day - TM16
  (112, 11200, 6, 1, NULL, 2, NULL, NULL, 1002016, NULL, 23),
  -- Rhydon - Submission - TM17
  (112, 11200, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 24),
  -- Rhydon - Counter - TM18
  (112, 11200, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 25),
  -- Rhydon - Seismic Toss - TM19
  (112, 11200, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 26),
  -- Rhydon - Rage - TM20
  (112, 11200, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 27),
  -- Rhydon - Thunderbolt - TM24
  (112, 11200, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 28),
  -- Rhydon - Thunder - TM25
  (112, 11200, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 29),
  -- Rhydon - Earthquake - TM26
  (112, 11200, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 30),
  -- Rhydon - Fissure - TM27
  (112, 11200, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 31),
  -- Rhydon - Dig - TM28
  (112, 11200, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 32),
  -- Rhydon - Mimic - TM31
  (112, 11200, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 33),
  -- Rhydon - Double Team - TM32
  (112, 11200, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 34),
  -- Rhydon - Bide - TM34
  (112, 11200, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 35),
  -- Rhydon - Fire Blast - TM38
  (112, 11200, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 36),
  -- Rhydon - Skull Bash - TM40
  (112, 11200, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 37),
  -- Rhydon - Rest - TM44
  (112, 11200, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 38),
  -- Rhydon - Rock Slide - TM48
  (112, 11200, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 39),
  -- Rhydon - Substitute - TM50
  (112, 11200, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 40),
  -- Rhydon - Surf - HM03
  (112, 11200, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 41),
  -- Rhydon - Strength - HM04
  (112, 11200, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 42),
  -- Chansey - Pound - Level 1
  (113, 11300, 1, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chansey - Double Slap - Level 1
  (113, 11300, 3, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chansey - Sing - Level 24
  (113, 11300, 47, 1, NULL, 1, 24, NULL, NULL, NULL, 3),
  -- Chansey - Growl - Level 30
  (113, 11300, 45, 1, NULL, 1, 30, NULL, NULL, NULL, 4),
  -- Chansey - Minimize - Level 38
  (113, 11300, 107, 1, NULL, 1, 38, NULL, NULL, NULL, 5),
  -- Chansey - Defense Curl - Level 44
  (113, 11300, 111, 1, NULL, 1, 44, NULL, NULL, NULL, 6),
  -- Chansey - Light Screen - Level 48
  (113, 11300, 113, 1, NULL, 1, 48, NULL, NULL, NULL, 7),
  -- Chansey - Double-Edge - Level 54
  (113, 11300, 38, 1, NULL, 1, 54, NULL, NULL, NULL, 8),
  -- Chansey - Mega Punch - TM01
  (113, 11300, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 9),
  -- Chansey - Mega Kick - TM05
  (113, 11300, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 10),
  -- Chansey - Toxic - TM06
  (113, 11300, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Chansey - Body Slam - TM08
  (113, 11300, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 12),
  -- Chansey - Take Down - TM09
  (113, 11300, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Chansey - Double-Edge - TM10
  (113, 11300, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Chansey - Bubble Beam - TM11
  (113, 11300, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 15),
  -- Chansey - Water Gun - TM12
  (113, 11300, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 16),
  -- Chansey - Ice Beam - TM13
  (113, 11300, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 17),
  -- Chansey - Blizzard - TM14
  (113, 11300, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 18),
  -- Chansey - Hyper Beam - TM15
  (113, 11300, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 19),
  -- Chansey - Submission - TM17
  (113, 11300, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 20),
  -- Chansey - Counter - TM18
  (113, 11300, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 21),
  -- Chansey - Seismic Toss - TM19
  (113, 11300, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 22),
  -- Chansey - Rage - TM20
  (113, 11300, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 23),
  -- Chansey - Solar Beam - TM22
  (113, 11300, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 24),
  -- Chansey - Thunderbolt - TM24
  (113, 11300, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 25),
  -- Chansey - Thunder - TM25
  (113, 11300, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 26),
  -- Chansey - Psychic - TM29
  (113, 11300, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 27),
  -- Chansey - Teleport - TM30
  (113, 11300, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 28),
  -- Chansey - Mimic - TM31
  (113, 11300, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 29),
  -- Chansey - Double Team - TM32
  (113, 11300, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 30),
  -- Chansey - Reflect - TM33
  (113, 11300, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 31),
  -- Chansey - Bide - TM34
  (113, 11300, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 32),
  -- Chansey - Metronome - TM35
  (113, 11300, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 33),
  -- Chansey - Egg Bomb - TM37
  (113, 11300, 121, 1, NULL, 2, NULL, NULL, 1002037, NULL, 34),
  -- Chansey - Fire Blast - TM38
  (113, 11300, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 35),
  -- Chansey - Skull Bash - TM40
  (113, 11300, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 36),
  -- Chansey - Soft-Boiled - TM41
  (113, 11300, 135, 1, NULL, 2, NULL, NULL, 1002041, NULL, 37),
  -- Chansey - Rest - TM44
  (113, 11300, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 38),
  -- Chansey - Thunder Wave - TM45
  (113, 11300, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 39),
  -- Chansey - Psywave - TM46
  (113, 11300, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 40),
  -- Chansey - Tri Attack - TM49
  (113, 11300, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 41),
  -- Chansey - Substitute - TM50
  (113, 11300, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 42),
  -- Chansey - Strength - HM04
  (113, 11300, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 43),
  -- Chansey - Flash - HM05
  (113, 11300, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 44),
  -- Tangela - Constrict - Level 1
  (114, 11400, 132, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tangela - Bind - Level 1
  (114, 11400, 20, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tangela - Absorb - Level 29
  (114, 11400, 71, 1, NULL, 1, 29, NULL, NULL, NULL, 3),
  -- Tangela - Poison Powder - Level 32
  (114, 11400, 77, 1, NULL, 1, 32, NULL, NULL, NULL, 4),
  -- Tangela - Stun Spore - Level 36
  (114, 11400, 78, 1, NULL, 1, 36, NULL, NULL, NULL, 5),
  -- Tangela - Sleep Powder - Level 39
  (114, 11400, 79, 1, NULL, 1, 39, NULL, NULL, NULL, 6),
  -- Tangela - Slam - Level 45
  (114, 11400, 21, 1, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Tangela - Growth - Level 49
  (114, 11400, 74, 1, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Tangela - Swords Dance - TM03
  (114, 11400, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 9),
  -- Tangela - Toxic - TM06
  (114, 11400, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Tangela - Body Slam - TM08
  (114, 11400, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Tangela - Take Down - TM09
  (114, 11400, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Tangela - Double-Edge - TM10
  (114, 11400, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Tangela - Hyper Beam - TM15
  (114, 11400, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 14),
  -- Tangela - Rage - TM20
  (114, 11400, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 15),
  -- Tangela - Mega Drain - TM21
  (114, 11400, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 16),
  -- Tangela - Solar Beam - TM22
  (114, 11400, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 17),
  -- Tangela - Mimic - TM31
  (114, 11400, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 18),
  -- Tangela - Double Team - TM32
  (114, 11400, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 19),
  -- Tangela - Bide - TM34
  (114, 11400, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Tangela - Skull Bash - TM40
  (114, 11400, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 21),
  -- Tangela - Rest - TM44
  (114, 11400, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 22),
  -- Tangela - Substitute - TM50
  (114, 11400, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 23),
  -- Tangela - Cut - HM01
  (114, 11400, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 24),
  -- Kangaskhan - Comet Punch - Level 1
  (115, 11500, 4, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kangaskhan - Rage - Level 1
  (115, 11500, 99, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kangaskhan - Bite - Level 26
  (115, 11500, 44, 1, NULL, 1, 26, NULL, NULL, NULL, 3),
  -- Kangaskhan - Tail Whip - Level 31
  (115, 11500, 39, 1, NULL, 1, 31, NULL, NULL, NULL, 4),
  -- Kangaskhan - Mega Punch - Level 36
  (115, 11500, 5, 1, NULL, 1, 36, NULL, NULL, NULL, 5),
  -- Kangaskhan - Leer - Level 41
  (115, 11500, 43, 1, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Kangaskhan - Dizzy Punch - Level 46
  (115, 11500, 146, 1, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Kangaskhan - Mega Punch - TM01
  (115, 11500, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 8),
  -- Kangaskhan - Mega Kick - TM05
  (115, 11500, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 9),
  -- Kangaskhan - Toxic - TM06
  (115, 11500, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Kangaskhan - Body Slam - TM08
  (115, 11500, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Kangaskhan - Take Down - TM09
  (115, 11500, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Kangaskhan - Double-Edge - TM10
  (115, 11500, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Kangaskhan - Bubble Beam - TM11
  (115, 11500, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 14),
  -- Kangaskhan - Water Gun - TM12
  (115, 11500, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 15),
  -- Kangaskhan - Ice Beam - TM13
  (115, 11500, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 16),
  -- Kangaskhan - Blizzard - TM14
  (115, 11500, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 17),
  -- Kangaskhan - Hyper Beam - TM15
  (115, 11500, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 18),
  -- Kangaskhan - Submission - TM17
  (115, 11500, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 19),
  -- Kangaskhan - Counter - TM18
  (115, 11500, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 20),
  -- Kangaskhan - Seismic Toss - TM19
  (115, 11500, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 21),
  -- Kangaskhan - Rage - TM20
  (115, 11500, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 22),
  -- Kangaskhan - Thunderbolt - TM24
  (115, 11500, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 23),
  -- Kangaskhan - Thunder - TM25
  (115, 11500, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 24),
  -- Kangaskhan - Earthquake - TM26
  (115, 11500, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 25),
  -- Kangaskhan - Fissure - TM27
  (115, 11500, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 26),
  -- Kangaskhan - Mimic - TM31
  (115, 11500, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 27),
  -- Kangaskhan - Double Team - TM32
  (115, 11500, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 28),
  -- Kangaskhan - Bide - TM34
  (115, 11500, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 29),
  -- Kangaskhan - Fire Blast - TM38
  (115, 11500, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 30),
  -- Kangaskhan - Skull Bash - TM40
  (115, 11500, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 31),
  -- Kangaskhan - Rest - TM44
  (115, 11500, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 32),
  -- Kangaskhan - Rock Slide - TM48
  (115, 11500, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 33),
  -- Kangaskhan - Substitute - TM50
  (115, 11500, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 34),
  -- Kangaskhan - Surf - HM03
  (115, 11500, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 35),
  -- Kangaskhan - Strength - HM04
  (115, 11500, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 36),
  -- Horsea - Bubble - Level 1
  (116, 11600, 145, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Horsea - Smokescreen - Level 19
  (116, 11600, 108, 1, NULL, 1, 19, NULL, NULL, NULL, 2),
  -- Horsea - Leer - Level 24
  (116, 11600, 43, 1, NULL, 1, 24, NULL, NULL, NULL, 3),
  -- Horsea - Water Gun - Level 30
  (116, 11600, 55, 1, NULL, 1, 30, NULL, NULL, NULL, 4),
  -- Horsea - Agility - Level 37
  (116, 11600, 97, 1, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Horsea - Hydro Pump - Level 45
  (116, 11600, 56, 1, NULL, 1, 45, NULL, NULL, NULL, 6),
  -- Horsea - Toxic - TM06
  (116, 11600, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 7),
  -- Horsea - Take Down - TM09
  (116, 11600, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 8),
  -- Horsea - Double-Edge - TM10
  (116, 11600, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 9),
  -- Horsea - Bubble Beam - TM11
  (116, 11600, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 10),
  -- Horsea - Water Gun - TM12
  (116, 11600, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 11),
  -- Horsea - Ice Beam - TM13
  (116, 11600, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 12),
  -- Horsea - Blizzard - TM14
  (116, 11600, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 13),
  -- Horsea - Rage - TM20
  (116, 11600, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 14),
  -- Horsea - Mimic - TM31
  (116, 11600, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 15),
  -- Horsea - Double Team - TM32
  (116, 11600, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 16),
  -- Horsea - Bide - TM34
  (116, 11600, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 17),
  -- Horsea - Swift - TM39
  (116, 11600, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 18),
  -- Horsea - Skull Bash - TM40
  (116, 11600, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 19),
  -- Horsea - Rest - TM44
  (116, 11600, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 20),
  -- Horsea - Substitute - TM50
  (116, 11600, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 21),
  -- Horsea - Surf - HM03
  (116, 11600, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 22),
  -- Seadra - Bubble - Level 1
  (117, 11700, 145, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seadra - Smokescreen - Level 1
  (117, 11700, 108, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seadra - Smokescreen - Level 19
  (117, 11700, 108, 1, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Seadra - Leer - Level 24
  (117, 11700, 43, 1, NULL, 1, 24, NULL, NULL, NULL, 4),
  -- Seadra - Water Gun - Level 30
  (117, 11700, 55, 1, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Seadra - Agility - Level 41
  (117, 11700, 97, 1, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Seadra - Hydro Pump - Level 52
  (117, 11700, 56, 1, NULL, 1, 52, NULL, NULL, NULL, 7),
  -- Seadra - Toxic - TM06
  (117, 11700, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Seadra - Take Down - TM09
  (117, 11700, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 9),
  -- Seadra - Double-Edge - TM10
  (117, 11700, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 10),
  -- Seadra - Bubble Beam - TM11
  (117, 11700, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 11),
  -- Seadra - Water Gun - TM12
  (117, 11700, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 12),
  -- Seadra - Ice Beam - TM13
  (117, 11700, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 13),
  -- Seadra - Blizzard - TM14
  (117, 11700, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 14),
  -- Seadra - Hyper Beam - TM15
  (117, 11700, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 15),
  -- Seadra - Rage - TM20
  (117, 11700, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 16),
  -- Seadra - Mimic - TM31
  (117, 11700, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 17),
  -- Seadra - Double Team - TM32
  (117, 11700, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 18),
  -- Seadra - Bide - TM34
  (117, 11700, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 19),
  -- Seadra - Swift - TM39
  (117, 11700, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 20),
  -- Seadra - Skull Bash - TM40
  (117, 11700, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 21),
  -- Seadra - Rest - TM44
  (117, 11700, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 22),
  -- Seadra - Substitute - TM50
  (117, 11700, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 23),
  -- Seadra - Surf - HM03
  (117, 11700, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 24),
  -- Goldeen - Peck - Level 1
  (118, 11800, 64, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Goldeen - Tail Whip - Level 1
  (118, 11800, 39, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Goldeen - Supersonic - Level 19
  (118, 11800, 48, 1, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Goldeen - Horn Attack - Level 24
  (118, 11800, 30, 1, NULL, 1, 24, NULL, NULL, NULL, 4),
  -- Goldeen - Fury Attack - Level 30
  (118, 11800, 31, 1, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Goldeen - Waterfall - Level 37
  (118, 11800, 127, 1, NULL, 1, 37, NULL, NULL, NULL, 6),
  -- Goldeen - Horn Drill - Level 45
  (118, 11800, 32, 1, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Goldeen - Agility - Level 54
  (118, 11800, 97, 1, NULL, 1, 54, NULL, NULL, NULL, 8),
  -- Goldeen - Toxic - TM06
  (118, 11800, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Goldeen - Horn Drill - TM07
  (118, 11800, 32, 1, NULL, 2, NULL, NULL, 1002007, NULL, 10),
  -- Goldeen - Take Down - TM09
  (118, 11800, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Goldeen - Double-Edge - TM10
  (118, 11800, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Goldeen - Bubble Beam - TM11
  (118, 11800, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 13),
  -- Goldeen - Water Gun - TM12
  (118, 11800, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 14),
  -- Goldeen - Ice Beam - TM13
  (118, 11800, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 15),
  -- Goldeen - Blizzard - TM14
  (118, 11800, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 16),
  -- Goldeen - Rage - TM20
  (118, 11800, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 17),
  -- Goldeen - Mimic - TM31
  (118, 11800, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 18),
  -- Goldeen - Double Team - TM32
  (118, 11800, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 19),
  -- Goldeen - Bide - TM34
  (118, 11800, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Goldeen - Swift - TM39
  (118, 11800, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 21),
  -- Goldeen - Skull Bash - TM40
  (118, 11800, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 22),
  -- Goldeen - Rest - TM44
  (118, 11800, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 23),
  -- Goldeen - Substitute - TM50
  (118, 11800, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 24),
  -- Goldeen - Surf - HM03
  (118, 11800, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 25),
  -- Seaking - Peck - Level 1
  (119, 11900, 64, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seaking - Tail Whip - Level 1
  (119, 11900, 39, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seaking - Supersonic - Level 1
  (119, 11900, 48, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Seaking - Supersonic - Level 19
  (119, 11900, 48, 1, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Seaking - Horn Attack - Level 24
  (119, 11900, 30, 1, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Seaking - Fury Attack - Level 30
  (119, 11900, 31, 1, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Seaking - Waterfall - Level 39
  (119, 11900, 127, 1, NULL, 1, 39, NULL, NULL, NULL, 7),
  -- Seaking - Horn Drill - Level 48
  (119, 11900, 32, 1, NULL, 1, 48, NULL, NULL, NULL, 8),
  -- Seaking - Agility - Level 54
  (119, 11900, 97, 1, NULL, 1, 54, NULL, NULL, NULL, 9),
  -- Seaking - Toxic - TM06
  (119, 11900, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Seaking - Horn Drill - TM07
  (119, 11900, 32, 1, NULL, 2, NULL, NULL, 1002007, NULL, 11),
  -- Seaking - Take Down - TM09
  (119, 11900, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Seaking - Double-Edge - TM10
  (119, 11900, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Seaking - Bubble Beam - TM11
  (119, 11900, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 14),
  -- Seaking - Water Gun - TM12
  (119, 11900, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 15),
  -- Seaking - Ice Beam - TM13
  (119, 11900, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 16),
  -- Seaking - Blizzard - TM14
  (119, 11900, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 17),
  -- Seaking - Hyper Beam - TM15
  (119, 11900, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 18),
  -- Seaking - Rage - TM20
  (119, 11900, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 19),
  -- Seaking - Mimic - TM31
  (119, 11900, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 20),
  -- Seaking - Double Team - TM32
  (119, 11900, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 21),
  -- Seaking - Bide - TM34
  (119, 11900, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 22),
  -- Seaking - Swift - TM39
  (119, 11900, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 23),
  -- Seaking - Skull Bash - TM40
  (119, 11900, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 24),
  -- Seaking - Rest - TM44
  (119, 11900, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 25),
  -- Seaking - Substitute - TM50
  (119, 11900, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 26),
  -- Seaking - Surf - HM03
  (119, 11900, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 27),
  -- Staryu - Tackle - Level 1
  (120, 12000, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staryu - Water Gun - Level 17
  (120, 12000, 55, 1, NULL, 1, 17, NULL, NULL, NULL, 2),
  -- Staryu - Harden - Level 22
  (120, 12000, 106, 1, NULL, 1, 22, NULL, NULL, NULL, 3),
  -- Staryu - Recover - Level 27
  (120, 12000, 105, 1, NULL, 1, 27, NULL, NULL, NULL, 4),
  -- Staryu - Swift - Level 32
  (120, 12000, 129, 1, NULL, 1, 32, NULL, NULL, NULL, 5),
  -- Staryu - Minimize - Level 37
  (120, 12000, 107, 1, NULL, 1, 37, NULL, NULL, NULL, 6),
  -- Staryu - Light Screen - Level 42
  (120, 12000, 113, 1, NULL, 1, 42, NULL, NULL, NULL, 7),
  -- Staryu - Hydro Pump - Level 47
  (120, 12000, 56, 1, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Staryu - Toxic - TM06
  (120, 12000, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Staryu - Take Down - TM09
  (120, 12000, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Staryu - Double-Edge - TM10
  (120, 12000, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Staryu - Bubble Beam - TM11
  (120, 12000, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 12),
  -- Staryu - Water Gun - TM12
  (120, 12000, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 13),
  -- Staryu - Ice Beam - TM13
  (120, 12000, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 14),
  -- Staryu - Blizzard - TM14
  (120, 12000, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 15),
  -- Staryu - Rage - TM20
  (120, 12000, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 16),
  -- Staryu - Thunderbolt - TM24
  (120, 12000, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 17),
  -- Staryu - Thunder - TM25
  (120, 12000, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 18),
  -- Staryu - Psychic - TM29
  (120, 12000, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 19),
  -- Staryu - Teleport - TM30
  (120, 12000, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 20),
  -- Staryu - Mimic - TM31
  (120, 12000, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 21),
  -- Staryu - Double Team - TM32
  (120, 12000, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 22),
  -- Staryu - Reflect - TM33
  (120, 12000, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 23),
  -- Staryu - Bide - TM34
  (120, 12000, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 24),
  -- Staryu - Swift - TM39
  (120, 12000, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 25),
  -- Staryu - Skull Bash - TM40
  (120, 12000, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 26),
  -- Staryu - Rest - TM44
  (120, 12000, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 27),
  -- Staryu - Thunder Wave - TM45
  (120, 12000, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 28),
  -- Staryu - Psywave - TM46
  (120, 12000, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 29),
  -- Staryu - Tri Attack - TM49
  (120, 12000, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 30),
  -- Staryu - Substitute - TM50
  (120, 12000, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 31),
  -- Staryu - Surf - HM03
  (120, 12000, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 32),
  -- Staryu - Flash - HM05
  (120, 12000, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 33),
  -- Starmie - Tackle - Level 1
  (121, 12100, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Starmie - Water Gun - Level 1
  (121, 12100, 55, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Starmie - Harden - Level 1
  (121, 12100, 106, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Starmie - Toxic - TM06
  (121, 12100, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 4),
  -- Starmie - Take Down - TM09
  (121, 12100, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 5),
  -- Starmie - Double-Edge - TM10
  (121, 12100, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 6),
  -- Starmie - Bubble Beam - TM11
  (121, 12100, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 7),
  -- Starmie - Water Gun - TM12
  (121, 12100, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 8),
  -- Starmie - Ice Beam - TM13
  (121, 12100, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 9),
  -- Starmie - Blizzard - TM14
  (121, 12100, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 10),
  -- Starmie - Hyper Beam - TM15
  (121, 12100, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 11),
  -- Starmie - Rage - TM20
  (121, 12100, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 12),
  -- Starmie - Thunderbolt - TM24
  (121, 12100, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 13),
  -- Starmie - Thunder - TM25
  (121, 12100, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 14),
  -- Starmie - Psychic - TM29
  (121, 12100, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 15),
  -- Starmie - Teleport - TM30
  (121, 12100, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 16),
  -- Starmie - Mimic - TM31
  (121, 12100, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 17),
  -- Starmie - Double Team - TM32
  (121, 12100, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 18),
  -- Starmie - Reflect - TM33
  (121, 12100, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 19),
  -- Starmie - Bide - TM34
  (121, 12100, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Starmie - Swift - TM39
  (121, 12100, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 21),
  -- Starmie - Skull Bash - TM40
  (121, 12100, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 22),
  -- Starmie - Rest - TM44
  (121, 12100, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 23),
  -- Starmie - Thunder Wave - TM45
  (121, 12100, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 24),
  -- Starmie - Psywave - TM46
  (121, 12100, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 25),
  -- Starmie - Tri Attack - TM49
  (121, 12100, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 26),
  -- Starmie - Substitute - TM50
  (121, 12100, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 27),
  -- Starmie - Surf - HM03
  (121, 12100, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 28),
  -- Starmie - Flash - HM05
  (121, 12100, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 29),
  -- Mr. Mime - Confusion - Level 1
  (122, 12200, 93, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mr. Mime - Barrier - Level 1
  (122, 12200, 112, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mr. Mime - Confusion - Level 15
  (122, 12200, 93, 1, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Mr. Mime - Light Screen - Level 23
  (122, 12200, 113, 1, NULL, 1, 23, NULL, NULL, NULL, 4),
  -- Mr. Mime - Double Slap - Level 31
  (122, 12200, 3, 1, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Mr. Mime - Meditate - Level 39
  (122, 12200, 96, 1, NULL, 1, 39, NULL, NULL, NULL, 6),
  -- Mr. Mime - Substitute - Level 47
  (122, 12200, 164, 1, NULL, 1, 47, NULL, NULL, NULL, 7),
  -- Mr. Mime - Mega Punch - TM01
  (122, 12200, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 8),
  -- Mr. Mime - Mega Kick - TM05
  (122, 12200, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 9),
  -- Mr. Mime - Toxic - TM06
  (122, 12200, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Mr. Mime - Body Slam - TM08
  (122, 12200, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Mr. Mime - Take Down - TM09
  (122, 12200, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Mr. Mime - Double-Edge - TM10
  (122, 12200, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Mr. Mime - Hyper Beam - TM15
  (122, 12200, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 14),
  -- Mr. Mime - Submission - TM17
  (122, 12200, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 15),
  -- Mr. Mime - Counter - TM18
  (122, 12200, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 16),
  -- Mr. Mime - Seismic Toss - TM19
  (122, 12200, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 17),
  -- Mr. Mime - Rage - TM20
  (122, 12200, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 18),
  -- Mr. Mime - Solar Beam - TM22
  (122, 12200, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 19),
  -- Mr. Mime - Thunderbolt - TM24
  (122, 12200, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 20),
  -- Mr. Mime - Thunder - TM25
  (122, 12200, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 21),
  -- Mr. Mime - Psychic - TM29
  (122, 12200, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 22),
  -- Mr. Mime - Teleport - TM30
  (122, 12200, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 23),
  -- Mr. Mime - Mimic - TM31
  (122, 12200, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 24),
  -- Mr. Mime - Double Team - TM32
  (122, 12200, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 25),
  -- Mr. Mime - Reflect - TM33
  (122, 12200, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 26),
  -- Mr. Mime - Bide - TM34
  (122, 12200, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 27),
  -- Mr. Mime - Metronome - TM35
  (122, 12200, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 28),
  -- Mr. Mime - Skull Bash - TM40
  (122, 12200, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 29),
  -- Mr. Mime - Rest - TM44
  (122, 12200, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 30),
  -- Mr. Mime - Thunder Wave - TM45
  (122, 12200, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 31),
  -- Mr. Mime - Psywave - TM46
  (122, 12200, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 32),
  -- Mr. Mime - Substitute - TM50
  (122, 12200, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 33),
  -- Mr. Mime - Flash - HM05
  (122, 12200, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 34),
  -- Scyther - Quick Attack - Level 1
  (123, 12300, 98, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scyther - Leer - Level 17
  (123, 12300, 43, 1, NULL, 1, 17, NULL, NULL, NULL, 2),
  -- Scyther - Focus Energy - Level 20
  (123, 12300, 116, 1, NULL, 1, 20, NULL, NULL, NULL, 3),
  -- Scyther - Double Team - Level 24
  (123, 12300, 104, 1, NULL, 1, 24, NULL, NULL, NULL, 4),
  -- Scyther - Slash - Level 29
  (123, 12300, 163, 1, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Scyther - Swords Dance - Level 35
  (123, 12300, 14, 1, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Scyther - Agility - Level 42
  (123, 12300, 97, 1, NULL, 1, 42, NULL, NULL, NULL, 7),
  -- Scyther - Swords Dance - TM03
  (123, 12300, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 8),
  -- Scyther - Toxic - TM06
  (123, 12300, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Scyther - Take Down - TM09
  (123, 12300, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Scyther - Double-Edge - TM10
  (123, 12300, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Scyther - Hyper Beam - TM15
  (123, 12300, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 12),
  -- Scyther - Rage - TM20
  (123, 12300, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 13),
  -- Scyther - Mimic - TM31
  (123, 12300, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 14),
  -- Scyther - Double Team - TM32
  (123, 12300, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 15),
  -- Scyther - Bide - TM34
  (123, 12300, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 16),
  -- Scyther - Swift - TM39
  (123, 12300, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 17),
  -- Scyther - Skull Bash - TM40
  (123, 12300, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 18),
  -- Scyther - Rest - TM44
  (123, 12300, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 19),
  -- Scyther - Substitute - TM50
  (123, 12300, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 20),
  -- Scyther - Cut - HM01
  (123, 12300, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 21),
  -- Jynx - Pound - Level 1
  (124, 12400, 1, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jynx - Lovely Kiss - Level 1
  (124, 12400, 142, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jynx - Lick - Level 18
  (124, 12400, 122, 1, NULL, 1, 18, NULL, NULL, NULL, 3),
  -- Jynx - Double Slap - Level 23
  (124, 12400, 3, 1, NULL, 1, 23, NULL, NULL, NULL, 4),
  -- Jynx - Ice Punch - Level 31
  (124, 12400, 8, 1, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Jynx - Body Slam - Level 39
  (124, 12400, 34, 1, NULL, 1, 39, NULL, NULL, NULL, 6),
  -- Jynx - Thrash - Level 47
  (124, 12400, 37, 1, NULL, 1, 47, NULL, NULL, NULL, 7),
  -- Jynx - Blizzard - Level 58
  (124, 12400, 59, 1, NULL, 1, 58, NULL, NULL, NULL, 8),
  -- Jynx - Mega Punch - TM01
  (124, 12400, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 9),
  -- Jynx - Mega Kick - TM05
  (124, 12400, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 10),
  -- Jynx - Toxic - TM06
  (124, 12400, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Jynx - Body Slam - TM08
  (124, 12400, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 12),
  -- Jynx - Take Down - TM09
  (124, 12400, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Jynx - Double-Edge - TM10
  (124, 12400, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Jynx - Bubble Beam - TM11
  (124, 12400, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 15),
  -- Jynx - Water Gun - TM12
  (124, 12400, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 16),
  -- Jynx - Ice Beam - TM13
  (124, 12400, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 17),
  -- Jynx - Blizzard - TM14
  (124, 12400, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 18),
  -- Jynx - Hyper Beam - TM15
  (124, 12400, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 19),
  -- Jynx - Submission - TM17
  (124, 12400, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 20),
  -- Jynx - Counter - TM18
  (124, 12400, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 21),
  -- Jynx - Seismic Toss - TM19
  (124, 12400, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 22),
  -- Jynx - Rage - TM20
  (124, 12400, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 23),
  -- Jynx - Psychic - TM29
  (124, 12400, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 24),
  -- Jynx - Teleport - TM30
  (124, 12400, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 25),
  -- Jynx - Mimic - TM31
  (124, 12400, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 26),
  -- Jynx - Double Team - TM32
  (124, 12400, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 27),
  -- Jynx - Reflect - TM33
  (124, 12400, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 28),
  -- Jynx - Bide - TM34
  (124, 12400, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 29),
  -- Jynx - Metronome - TM35
  (124, 12400, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 30),
  -- Jynx - Skull Bash - TM40
  (124, 12400, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 31),
  -- Jynx - Rest - TM44
  (124, 12400, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 32),
  -- Jynx - Psywave - TM46
  (124, 12400, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 33),
  -- Jynx - Substitute - TM50
  (124, 12400, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 34),
  -- Electabuzz - Quick Attack - Level 1
  (125, 12500, 98, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electabuzz - Leer - Level 1
  (125, 12500, 43, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electabuzz - Thunder Shock - Level 34
  (125, 12500, 84, 1, NULL, 1, 34, NULL, NULL, NULL, 3),
  -- Electabuzz - Screech - Level 37
  (125, 12500, 103, 1, NULL, 1, 37, NULL, NULL, NULL, 4),
  -- Electabuzz - Thunder Punch - Level 42
  (125, 12500, 9, 1, NULL, 1, 42, NULL, NULL, NULL, 5),
  -- Electabuzz - Light Screen - Level 49
  (125, 12500, 113, 1, NULL, 1, 49, NULL, NULL, NULL, 6),
  -- Electabuzz - Thunder - Level 54
  (125, 12500, 87, 1, NULL, 1, 54, NULL, NULL, NULL, 7),
  -- Electabuzz - Mega Punch - TM01
  (125, 12500, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 8),
  -- Electabuzz - Mega Kick - TM05
  (125, 12500, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 9),
  -- Electabuzz - Toxic - TM06
  (125, 12500, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Electabuzz - Body Slam - TM08
  (125, 12500, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Electabuzz - Take Down - TM09
  (125, 12500, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Electabuzz - Double-Edge - TM10
  (125, 12500, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Electabuzz - Hyper Beam - TM15
  (125, 12500, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 14),
  -- Electabuzz - Submission - TM17
  (125, 12500, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 15),
  -- Electabuzz - Counter - TM18
  (125, 12500, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 16),
  -- Electabuzz - Seismic Toss - TM19
  (125, 12500, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 17),
  -- Electabuzz - Rage - TM20
  (125, 12500, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 18),
  -- Electabuzz - Thunderbolt - TM24
  (125, 12500, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 19),
  -- Electabuzz - Thunder - TM25
  (125, 12500, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 20),
  -- Electabuzz - Psychic - TM29
  (125, 12500, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 21),
  -- Electabuzz - Teleport - TM30
  (125, 12500, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 22),
  -- Electabuzz - Mimic - TM31
  (125, 12500, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 23),
  -- Electabuzz - Double Team - TM32
  (125, 12500, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 24),
  -- Electabuzz - Reflect - TM33
  (125, 12500, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 25),
  -- Electabuzz - Bide - TM34
  (125, 12500, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 26),
  -- Electabuzz - Metronome - TM35
  (125, 12500, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 27),
  -- Electabuzz - Swift - TM39
  (125, 12500, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 28),
  -- Electabuzz - Skull Bash - TM40
  (125, 12500, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 29),
  -- Electabuzz - Rest - TM44
  (125, 12500, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 30),
  -- Electabuzz - Thunder Wave - TM45
  (125, 12500, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 31),
  -- Electabuzz - Psywave - TM46
  (125, 12500, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 32),
  -- Electabuzz - Substitute - TM50
  (125, 12500, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 33),
  -- Electabuzz - Strength - HM04
  (125, 12500, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 34),
  -- Electabuzz - Flash - HM05
  (125, 12500, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 35),
  -- Magmar - Ember - Level 1
  (126, 12600, 52, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magmar - Leer - Level 36
  (126, 12600, 43, 1, NULL, 1, 36, NULL, NULL, NULL, 2),
  -- Magmar - Confuse Ray - Level 39
  (126, 12600, 109, 1, NULL, 1, 39, NULL, NULL, NULL, 3),
  -- Magmar - Fire Punch - Level 43
  (126, 12600, 7, 1, NULL, 1, 43, NULL, NULL, NULL, 4),
  -- Magmar - Smokescreen - Level 48
  (126, 12600, 108, 1, NULL, 1, 48, NULL, NULL, NULL, 5),
  -- Magmar - Smog - Level 52
  (126, 12600, 123, 1, NULL, 1, 52, NULL, NULL, NULL, 6),
  -- Magmar - Flamethrower - Level 55
  (126, 12600, 53, 1, NULL, 1, 55, NULL, NULL, NULL, 7),
  -- Magmar - Mega Punch - TM01
  (126, 12600, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 8),
  -- Magmar - Mega Kick - TM05
  (126, 12600, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 9),
  -- Magmar - Toxic - TM06
  (126, 12600, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Magmar - Body Slam - TM08
  (126, 12600, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Magmar - Take Down - TM09
  (126, 12600, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Magmar - Double-Edge - TM10
  (126, 12600, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Magmar - Hyper Beam - TM15
  (126, 12600, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 14),
  -- Magmar - Submission - TM17
  (126, 12600, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 15),
  -- Magmar - Counter - TM18
  (126, 12600, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 16),
  -- Magmar - Seismic Toss - TM19
  (126, 12600, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 17),
  -- Magmar - Rage - TM20
  (126, 12600, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 18),
  -- Magmar - Psychic - TM29
  (126, 12600, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 19),
  -- Magmar - Teleport - TM30
  (126, 12600, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 20),
  -- Magmar - Mimic - TM31
  (126, 12600, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 21),
  -- Magmar - Double Team - TM32
  (126, 12600, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 22),
  -- Magmar - Bide - TM34
  (126, 12600, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 23),
  -- Magmar - Metronome - TM35
  (126, 12600, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 24),
  -- Magmar - Fire Blast - TM38
  (126, 12600, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 25),
  -- Magmar - Skull Bash - TM40
  (126, 12600, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 26),
  -- Magmar - Rest - TM44
  (126, 12600, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 27),
  -- Magmar - Psywave - TM46
  (126, 12600, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 28),
  -- Magmar - Substitute - TM50
  (126, 12600, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 29),
  -- Magmar - Strength - HM04
  (126, 12600, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 30),
  -- Pinsir - Vise Grip - Level 1
  (127, 12700, 11, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pinsir - Seismic Toss - Level 25
  (127, 12700, 69, 1, NULL, 1, 25, NULL, NULL, NULL, 2),
  -- Pinsir - Guillotine - Level 30
  (127, 12700, 12, 1, NULL, 1, 30, NULL, NULL, NULL, 3),
  -- Pinsir - Focus Energy - Level 36
  (127, 12700, 116, 1, NULL, 1, 36, NULL, NULL, NULL, 4),
  -- Pinsir - Harden - Level 43
  (127, 12700, 106, 1, NULL, 1, 43, NULL, NULL, NULL, 5),
  -- Pinsir - Slash - Level 49
  (127, 12700, 163, 1, NULL, 1, 49, NULL, NULL, NULL, 6),
  -- Pinsir - Swords Dance - Level 54
  (127, 12700, 14, 1, NULL, 1, 54, NULL, NULL, NULL, 7),
  -- Pinsir - Swords Dance - TM03
  (127, 12700, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 8),
  -- Pinsir - Toxic - TM06
  (127, 12700, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Pinsir - Body Slam - TM08
  (127, 12700, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 10),
  -- Pinsir - Take Down - TM09
  (127, 12700, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Pinsir - Double-Edge - TM10
  (127, 12700, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Pinsir - Hyper Beam - TM15
  (127, 12700, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 13),
  -- Pinsir - Submission - TM17
  (127, 12700, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 14),
  -- Pinsir - Seismic Toss - TM19
  (127, 12700, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 15),
  -- Pinsir - Rage - TM20
  (127, 12700, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 16),
  -- Pinsir - Mimic - TM31
  (127, 12700, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 17),
  -- Pinsir - Double Team - TM32
  (127, 12700, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 18),
  -- Pinsir - Bide - TM34
  (127, 12700, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 19),
  -- Pinsir - Rest - TM44
  (127, 12700, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 20),
  -- Pinsir - Substitute - TM50
  (127, 12700, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 21),
  -- Pinsir - Cut - HM01
  (127, 12700, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 22),
  -- Pinsir - Strength - HM04
  (127, 12700, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 23),
  -- Tauros - Tackle - Level 1
  (128, 12800, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tauros - Stomp - Level 21
  (128, 12800, 23, 1, NULL, 1, 21, NULL, NULL, NULL, 2),
  -- Tauros - Tail Whip - Level 28
  (128, 12800, 39, 1, NULL, 1, 28, NULL, NULL, NULL, 3),
  -- Tauros - Leer - Level 35
  (128, 12800, 43, 1, NULL, 1, 35, NULL, NULL, NULL, 4),
  -- Tauros - Rage - Level 44
  (128, 12800, 99, 1, NULL, 1, 44, NULL, NULL, NULL, 5),
  -- Tauros - Take Down - Level 51
  (128, 12800, 36, 1, NULL, 1, 51, NULL, NULL, NULL, 6),
  -- Tauros - Toxic - TM06
  (128, 12800, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 7),
  -- Tauros - Horn Drill - TM07
  (128, 12800, 32, 1, NULL, 2, NULL, NULL, 1002007, NULL, 8),
  -- Tauros - Body Slam - TM08
  (128, 12800, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 9),
  -- Tauros - Take Down - TM09
  (128, 12800, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Tauros - Double-Edge - TM10
  (128, 12800, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Tauros - Ice Beam - TM13
  (128, 12800, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 12),
  -- Tauros - Blizzard - TM14
  (128, 12800, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 13),
  -- Tauros - Hyper Beam - TM15
  (128, 12800, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 14),
  -- Tauros - Rage - TM20
  (128, 12800, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 15),
  -- Tauros - Thunderbolt - TM24
  (128, 12800, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 16),
  -- Tauros - Thunder - TM25
  (128, 12800, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 17),
  -- Tauros - Earthquake - TM26
  (128, 12800, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 18),
  -- Tauros - Fissure - TM27
  (128, 12800, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 19),
  -- Tauros - Mimic - TM31
  (128, 12800, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 20),
  -- Tauros - Double Team - TM32
  (128, 12800, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 21),
  -- Tauros - Bide - TM34
  (128, 12800, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 22),
  -- Tauros - Fire Blast - TM38
  (128, 12800, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 23),
  -- Tauros - Skull Bash - TM40
  (128, 12800, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 24),
  -- Tauros - Rest - TM44
  (128, 12800, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 25),
  -- Tauros - Substitute - TM50
  (128, 12800, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 26),
  -- Tauros - Strength - HM04
  (128, 12800, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 27),
  -- Magikarp - Splash - Level 1
  (129, 12900, 150, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magikarp - Tackle - Level 15
  (129, 12900, 33, 1, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Gyarados - Bite - Level 20
  (130, 13000, 44, 1, NULL, 1, 20, NULL, NULL, NULL, 1),
  -- Gyarados - Dragon Rage - Level 25
  (130, 13000, 82, 1, NULL, 1, 25, NULL, NULL, NULL, 2),
  -- Gyarados - Leer - Level 32
  (130, 13000, 43, 1, NULL, 1, 32, NULL, NULL, NULL, 3),
  -- Gyarados - Hydro Pump - Level 41
  (130, 13000, 56, 1, NULL, 1, 41, NULL, NULL, NULL, 4),
  -- Gyarados - Hyper Beam - Level 52
  (130, 13000, 63, 1, NULL, 1, 52, NULL, NULL, NULL, 5),
  -- Gyarados - Bite - Level 1
  (130, 13000, 44, 1, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gyarados - Dragon Rage - Level 1
  (130, 13000, 82, 1, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Gyarados - Leer - Level 1
  (130, 13000, 43, 1, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Gyarados - Hydro Pump - Level 1
  (130, 13000, 56, 1, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Gyarados - Toxic - TM06
  (130, 13000, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Gyarados - Body Slam - TM08
  (130, 13000, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Gyarados - Take Down - TM09
  (130, 13000, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Gyarados - Double-Edge - TM10
  (130, 13000, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Gyarados - Bubble Beam - TM11
  (130, 13000, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 14),
  -- Gyarados - Water Gun - TM12
  (130, 13000, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 15),
  -- Gyarados - Ice Beam - TM13
  (130, 13000, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 16),
  -- Gyarados - Blizzard - TM14
  (130, 13000, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 17),
  -- Gyarados - Hyper Beam - TM15
  (130, 13000, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 18),
  -- Gyarados - Rage - TM20
  (130, 13000, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 19),
  -- Gyarados - Dragon Rage - TM23
  (130, 13000, 82, 1, NULL, 2, NULL, NULL, 1002023, NULL, 20),
  -- Gyarados - Thunderbolt - TM24
  (130, 13000, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 21),
  -- Gyarados - Thunder - TM25
  (130, 13000, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 22),
  -- Gyarados - Mimic - TM31
  (130, 13000, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 23),
  -- Gyarados - Double Team - TM32
  (130, 13000, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 24),
  -- Gyarados - Reflect - TM33
  (130, 13000, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 25),
  -- Gyarados - Bide - TM34
  (130, 13000, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 26),
  -- Gyarados - Fire Blast - TM38
  (130, 13000, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 27),
  -- Gyarados - Skull Bash - TM40
  (130, 13000, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 28),
  -- Gyarados - Rest - TM44
  (130, 13000, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 29),
  -- Gyarados - Substitute - TM50
  (130, 13000, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 30),
  -- Gyarados - Surf - HM03
  (130, 13000, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 31),
  -- Gyarados - Strength - HM04
  (130, 13000, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 32),
  -- Lapras - Water Gun - Level 1
  (131, 13100, 55, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lapras - Growl - Level 1
  (131, 13100, 45, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lapras - Sing - Level 16
  (131, 13100, 47, 1, NULL, 1, 16, NULL, NULL, NULL, 3),
  -- Lapras - Mist - Level 20
  (131, 13100, 54, 1, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Lapras - Body Slam - Level 25
  (131, 13100, 34, 1, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Lapras - Confuse Ray - Level 31
  (131, 13100, 109, 1, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Lapras - Ice Beam - Level 38
  (131, 13100, 58, 1, NULL, 1, 38, NULL, NULL, NULL, 7),
  -- Lapras - Hydro Pump - Level 46
  (131, 13100, 56, 1, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Lapras - Toxic - TM06
  (131, 13100, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Lapras - Horn Drill - TM07
  (131, 13100, 32, 1, NULL, 2, NULL, NULL, 1002007, NULL, 10),
  -- Lapras - Body Slam - TM08
  (131, 13100, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Lapras - Take Down - TM09
  (131, 13100, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Lapras - Double-Edge - TM10
  (131, 13100, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Lapras - Bubble Beam - TM11
  (131, 13100, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 14),
  -- Lapras - Water Gun - TM12
  (131, 13100, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 15),
  -- Lapras - Ice Beam - TM13
  (131, 13100, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 16),
  -- Lapras - Blizzard - TM14
  (131, 13100, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 17),
  -- Lapras - Hyper Beam - TM15
  (131, 13100, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 18),
  -- Lapras - Rage - TM20
  (131, 13100, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 19),
  -- Lapras - Solar Beam - TM22
  (131, 13100, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 20),
  -- Lapras - Dragon Rage - TM23
  (131, 13100, 82, 1, NULL, 2, NULL, NULL, 1002023, NULL, 21),
  -- Lapras - Thunderbolt - TM24
  (131, 13100, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 22),
  -- Lapras - Thunder - TM25
  (131, 13100, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 23),
  -- Lapras - Psychic - TM29
  (131, 13100, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 24),
  -- Lapras - Mimic - TM31
  (131, 13100, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 25),
  -- Lapras - Double Team - TM32
  (131, 13100, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 26),
  -- Lapras - Reflect - TM33
  (131, 13100, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 27),
  -- Lapras - Bide - TM34
  (131, 13100, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 28),
  -- Lapras - Skull Bash - TM40
  (131, 13100, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 29),
  -- Lapras - Rest - TM44
  (131, 13100, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 30),
  -- Lapras - Psywave - TM46
  (131, 13100, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 31),
  -- Lapras - Substitute - TM50
  (131, 13100, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 32),
  -- Lapras - Surf - HM03
  (131, 13100, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 33),
  -- Lapras - Strength - HM04
  (131, 13100, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 34),
  -- Ditto - Transform - Level 1
  (132, 13200, 144, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Tackle - Level 1
  (133, 13300, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Tail Whip - Level 31
  (133, 13300, 39, 1, NULL, 1, 31, NULL, NULL, NULL, 2),
  -- Eevee - Sand Attack - Level 1
  (133, 13300, 28, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Eevee - Quick Attack - Level 27
  (133, 13300, 98, 1, NULL, 1, 27, NULL, NULL, NULL, 4),
  -- Eevee - Bite - Level 37
  (133, 13300, 44, 1, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Eevee - Take Down - Level 45
  (133, 13300, 36, 1, NULL, 1, 45, NULL, NULL, NULL, 6),
  -- Eevee - Toxic - TM06
  (133, 13300, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 7),
  -- Eevee - Body Slam - TM08
  (133, 13300, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 8),
  -- Eevee - Take Down - TM09
  (133, 13300, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 9),
  -- Eevee - Double-Edge - TM10
  (133, 13300, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 10),
  -- Eevee - Rage - TM20
  (133, 13300, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 11),
  -- Eevee - Mimic - TM31
  (133, 13300, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 12),
  -- Eevee - Double Team - TM32
  (133, 13300, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 13),
  -- Eevee - Reflect - TM33
  (133, 13300, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 14),
  -- Eevee - Bide - TM34
  (133, 13300, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 15),
  -- Eevee - Swift - TM39
  (133, 13300, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 16),
  -- Eevee - Skull Bash - TM40
  (133, 13300, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 17),
  -- Eevee - Rest - TM44
  (133, 13300, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 18),
  -- Eevee - Substitute - TM50
  (133, 13300, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 19),
  -- Vaporeon - Tackle - Level 1
  (134, 13400, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vaporeon - Tail Whip - Level 37
  (134, 13400, 39, 1, NULL, 1, 37, NULL, NULL, NULL, 2),
  -- Vaporeon - Quick Attack - Level 1
  (134, 13400, 98, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vaporeon - Water Gun - Level 1
  (134, 13400, 55, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vaporeon - Sand Attack - Level 1
  (134, 13400, 28, 1, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vaporeon - Water Gun - Level 31
  (134, 13400, 55, 1, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Vaporeon - Quick Attack - Level 27
  (134, 13400, 98, 1, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Vaporeon - Bite - Level 40
  (134, 13400, 44, 1, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Vaporeon - Haze - Level 44
  (134, 13400, 114, 1, NULL, 1, 44, NULL, NULL, NULL, 9),
  -- Vaporeon - Acid Armor - Level 42
  (134, 13400, 151, 1, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Vaporeon - Hydro Pump - Level 54
  (134, 13400, 56, 1, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Vaporeon - Mist - Level 48
  (134, 13400, 54, 1, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Vaporeon - Toxic - TM06
  (134, 13400, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 13),
  -- Vaporeon - Body Slam - TM08
  (134, 13400, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 14),
  -- Vaporeon - Take Down - TM09
  (134, 13400, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 15),
  -- Vaporeon - Double-Edge - TM10
  (134, 13400, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 16),
  -- Vaporeon - Bubble Beam - TM11
  (134, 13400, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 17),
  -- Vaporeon - Water Gun - TM12
  (134, 13400, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 18),
  -- Vaporeon - Ice Beam - TM13
  (134, 13400, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 19),
  -- Vaporeon - Blizzard - TM14
  (134, 13400, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 20),
  -- Vaporeon - Hyper Beam - TM15
  (134, 13400, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 21),
  -- Vaporeon - Rage - TM20
  (134, 13400, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 22),
  -- Vaporeon - Mimic - TM31
  (134, 13400, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 23),
  -- Vaporeon - Double Team - TM32
  (134, 13400, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 24),
  -- Vaporeon - Reflect - TM33
  (134, 13400, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 25),
  -- Vaporeon - Bide - TM34
  (134, 13400, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 26),
  -- Vaporeon - Swift - TM39
  (134, 13400, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 27),
  -- Vaporeon - Skull Bash - TM40
  (134, 13400, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 28),
  -- Vaporeon - Rest - TM44
  (134, 13400, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 29),
  -- Vaporeon - Substitute - TM50
  (134, 13400, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 30),
  -- Vaporeon - Surf - HM03
  (134, 13400, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 31),
  -- Jolteon - Tackle - Level 1
  (135, 13500, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jolteon - Tail Whip - Level 37
  (135, 13500, 39, 1, NULL, 1, 37, NULL, NULL, NULL, 2),
  -- Jolteon - Quick Attack - Level 1
  (135, 13500, 98, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jolteon - Thunder Shock - Level 1
  (135, 13500, 84, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jolteon - Sand Attack - Level 1
  (135, 13500, 28, 1, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Jolteon - Thunder Shock - Level 31
  (135, 13500, 84, 1, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Jolteon - Quick Attack - Level 27
  (135, 13500, 98, 1, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Jolteon - Double Kick - Level 42
  (135, 13500, 24, 1, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Jolteon - Pin Missile - Level 48
  (135, 13500, 42, 1, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Jolteon - Thunder Wave - Level 40
  (135, 13500, 86, 1, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Jolteon - Agility - Level 44
  (135, 13500, 97, 1, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Jolteon - Thunder - Level 54
  (135, 13500, 87, 1, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Jolteon - Toxic - TM06
  (135, 13500, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 13),
  -- Jolteon - Body Slam - TM08
  (135, 13500, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 14),
  -- Jolteon - Take Down - TM09
  (135, 13500, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 15),
  -- Jolteon - Double-Edge - TM10
  (135, 13500, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 16),
  -- Jolteon - Hyper Beam - TM15
  (135, 13500, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 17),
  -- Jolteon - Rage - TM20
  (135, 13500, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 18),
  -- Jolteon - Thunderbolt - TM24
  (135, 13500, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 19),
  -- Jolteon - Thunder - TM25
  (135, 13500, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 20),
  -- Jolteon - Mimic - TM31
  (135, 13500, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 21),
  -- Jolteon - Double Team - TM32
  (135, 13500, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 22),
  -- Jolteon - Reflect - TM33
  (135, 13500, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 23),
  -- Jolteon - Bide - TM34
  (135, 13500, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 24),
  -- Jolteon - Swift - TM39
  (135, 13500, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 25),
  -- Jolteon - Skull Bash - TM40
  (135, 13500, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 26),
  -- Jolteon - Rest - TM44
  (135, 13500, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 27),
  -- Jolteon - Thunder Wave - TM45
  (135, 13500, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 28),
  -- Jolteon - Substitute - TM50
  (135, 13500, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 29),
  -- Jolteon - Flash - HM05
  (135, 13500, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 30),
  -- Flareon - Tackle - Level 1
  (136, 13600, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flareon - Tail Whip - Level 37
  (136, 13600, 39, 1, NULL, 1, 37, NULL, NULL, NULL, 2),
  -- Flareon - Quick Attack - Level 1
  (136, 13600, 98, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flareon - Ember - Level 1
  (136, 13600, 52, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Flareon - Sand Attack - Level 1
  (136, 13600, 28, 1, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Flareon - Ember - Level 31
  (136, 13600, 52, 1, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Flareon - Quick Attack - Level 27
  (136, 13600, 98, 1, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Flareon - Bite - Level 40
  (136, 13600, 44, 1, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Flareon - Fire Spin - Level 44
  (136, 13600, 83, 1, NULL, 1, 44, NULL, NULL, NULL, 9),
  -- Flareon - Leer - Level 42
  (136, 13600, 43, 1, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Flareon - Rage - Level 48
  (136, 13600, 99, 1, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Flareon - Flamethrower - Level 54
  (136, 13600, 53, 1, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Flareon - Toxic - TM06
  (136, 13600, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 13),
  -- Flareon - Body Slam - TM08
  (136, 13600, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 14),
  -- Flareon - Take Down - TM09
  (136, 13600, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 15),
  -- Flareon - Double-Edge - TM10
  (136, 13600, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 16),
  -- Flareon - Hyper Beam - TM15
  (136, 13600, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 17),
  -- Flareon - Rage - TM20
  (136, 13600, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 18),
  -- Flareon - Mimic - TM31
  (136, 13600, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 19),
  -- Flareon - Double Team - TM32
  (136, 13600, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 20),
  -- Flareon - Reflect - TM33
  (136, 13600, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 21),
  -- Flareon - Bide - TM34
  (136, 13600, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 22),
  -- Flareon - Fire Blast - TM38
  (136, 13600, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 23),
  -- Flareon - Swift - TM39
  (136, 13600, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 24),
  -- Flareon - Skull Bash - TM40
  (136, 13600, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 25),
  -- Flareon - Rest - TM44
  (136, 13600, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 26),
  -- Flareon - Substitute - TM50
  (136, 13600, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 27),
  -- Porygon - Tackle - Level 1
  (137, 13700, 33, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon - Sharpen - Level 1
  (137, 13700, 159, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon - Conversion - Level 1
  (137, 13700, 160, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon - Psybeam - Level 23
  (137, 13700, 60, 1, NULL, 1, 23, NULL, NULL, NULL, 4),
  -- Porygon - Recover - Level 28
  (137, 13700, 105, 1, NULL, 1, 28, NULL, NULL, NULL, 5),
  -- Porygon - Agility - Level 35
  (137, 13700, 97, 1, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Porygon - Tri Attack - Level 42
  (137, 13700, 161, 1, NULL, 1, 42, NULL, NULL, NULL, 7),
  -- Porygon - Toxic - TM06
  (137, 13700, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Porygon - Take Down - TM09
  (137, 13700, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 9),
  -- Porygon - Double-Edge - TM10
  (137, 13700, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 10),
  -- Porygon - Ice Beam - TM13
  (137, 13700, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 11),
  -- Porygon - Blizzard - TM14
  (137, 13700, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 12),
  -- Porygon - Hyper Beam - TM15
  (137, 13700, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 13),
  -- Porygon - Rage - TM20
  (137, 13700, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 14),
  -- Porygon - Thunderbolt - TM24
  (137, 13700, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 15),
  -- Porygon - Thunder - TM25
  (137, 13700, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 16),
  -- Porygon - Psychic - TM29
  (137, 13700, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 17),
  -- Porygon - Teleport - TM30
  (137, 13700, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 18),
  -- Porygon - Mimic - TM31
  (137, 13700, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 19),
  -- Porygon - Double Team - TM32
  (137, 13700, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 20),
  -- Porygon - Reflect - TM33
  (137, 13700, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 21),
  -- Porygon - Bide - TM34
  (137, 13700, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 22),
  -- Porygon - Swift - TM39
  (137, 13700, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 23),
  -- Porygon - Skull Bash - TM40
  (137, 13700, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 24),
  -- Porygon - Rest - TM44
  (137, 13700, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 25),
  -- Porygon - Thunder Wave - TM45
  (137, 13700, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 26),
  -- Porygon - Psywave - TM46
  (137, 13700, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 27),
  -- Porygon - Tri Attack - TM49
  (137, 13700, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 28),
  -- Porygon - Substitute - TM50
  (137, 13700, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 29),
  -- Porygon - Flash - HM05
  (137, 13700, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 30),
  -- Omanyte - Water Gun - Level 1
  (138, 13800, 55, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Omanyte - Withdraw - Level 1
  (138, 13800, 110, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Omanyte - Horn Attack - Level 34
  (138, 13800, 30, 1, NULL, 1, 34, NULL, NULL, NULL, 3),
  -- Omanyte - Leer - Level 39
  (138, 13800, 43, 1, NULL, 1, 39, NULL, NULL, NULL, 4),
  -- Omanyte - Spike Cannon - Level 46
  (138, 13800, 131, 1, NULL, 1, 46, NULL, NULL, NULL, 5),
  -- Omanyte - Hydro Pump - Level 53
  (138, 13800, 56, 1, NULL, 1, 53, NULL, NULL, NULL, 6),
  -- Omanyte - Toxic - TM06
  (138, 13800, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 7),
  -- Omanyte - Body Slam - TM08
  (138, 13800, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 8),
  -- Omanyte - Take Down - TM09
  (138, 13800, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 9),
  -- Omanyte - Double-Edge - TM10
  (138, 13800, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 10),
  -- Omanyte - Bubble Beam - TM11
  (138, 13800, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 11),
  -- Omanyte - Water Gun - TM12
  (138, 13800, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 12),
  -- Omanyte - Ice Beam - TM13
  (138, 13800, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 13),
  -- Omanyte - Blizzard - TM14
  (138, 13800, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 14),
  -- Omanyte - Rage - TM20
  (138, 13800, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 15),
  -- Omanyte - Mimic - TM31
  (138, 13800, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 16),
  -- Omanyte - Double Team - TM32
  (138, 13800, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 17),
  -- Omanyte - Reflect - TM33
  (138, 13800, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 18),
  -- Omanyte - Bide - TM34
  (138, 13800, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 19),
  -- Omanyte - Rest - TM44
  (138, 13800, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 20),
  -- Omanyte - Substitute - TM50
  (138, 13800, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 21),
  -- Omanyte - Surf - HM03
  (138, 13800, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 22),
  -- Omastar - Water Gun - Level 1
  (139, 13900, 55, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Omastar - Withdraw - Level 1
  (139, 13900, 110, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Omastar - Horn Attack - Level 1
  (139, 13900, 30, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Omastar - Horn Attack - Level 34
  (139, 13900, 30, 1, NULL, 1, 34, NULL, NULL, NULL, 4),
  -- Omastar - Leer - Level 39
  (139, 13900, 43, 1, NULL, 1, 39, NULL, NULL, NULL, 5),
  -- Omastar - Spike Cannon - Level 44
  (139, 13900, 131, 1, NULL, 1, 44, NULL, NULL, NULL, 6),
  -- Omastar - Hydro Pump - Level 49
  (139, 13900, 56, 1, NULL, 1, 49, NULL, NULL, NULL, 7),
  -- Omastar - Toxic - TM06
  (139, 13900, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Omastar - Horn Drill - TM07
  (139, 13900, 32, 1, NULL, 2, NULL, NULL, 1002007, NULL, 9),
  -- Omastar - Body Slam - TM08
  (139, 13900, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 10),
  -- Omastar - Take Down - TM09
  (139, 13900, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 11),
  -- Omastar - Double-Edge - TM10
  (139, 13900, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 12),
  -- Omastar - Bubble Beam - TM11
  (139, 13900, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 13),
  -- Omastar - Water Gun - TM12
  (139, 13900, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 14),
  -- Omastar - Ice Beam - TM13
  (139, 13900, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 15),
  -- Omastar - Blizzard - TM14
  (139, 13900, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 16),
  -- Omastar - Hyper Beam - TM15
  (139, 13900, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 17),
  -- Omastar - Submission - TM17
  (139, 13900, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 18),
  -- Omastar - Seismic Toss - TM19
  (139, 13900, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 19),
  -- Omastar - Rage - TM20
  (139, 13900, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 20),
  -- Omastar - Mimic - TM31
  (139, 13900, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 21),
  -- Omastar - Double Team - TM32
  (139, 13900, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 22),
  -- Omastar - Reflect - TM33
  (139, 13900, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 23),
  -- Omastar - Bide - TM34
  (139, 13900, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 24),
  -- Omastar - Skull Bash - TM40
  (139, 13900, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 25),
  -- Omastar - Rest - TM44
  (139, 13900, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 26),
  -- Omastar - Substitute - TM50
  (139, 13900, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 27),
  -- Omastar - Surf - HM03
  (139, 13900, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 28),
  -- Kabuto - Scratch - Level 1
  (140, 14000, 10, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kabuto - Harden - Level 1
  (140, 14000, 106, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kabuto - Absorb - Level 34
  (140, 14000, 71, 1, NULL, 1, 34, NULL, NULL, NULL, 3),
  -- Kabuto - Slash - Level 39
  (140, 14000, 163, 1, NULL, 1, 39, NULL, NULL, NULL, 4),
  -- Kabuto - Leer - Level 44
  (140, 14000, 43, 1, NULL, 1, 44, NULL, NULL, NULL, 5),
  -- Kabuto - Hydro Pump - Level 49
  (140, 14000, 56, 1, NULL, 1, 49, NULL, NULL, NULL, 6),
  -- Kabuto - Toxic - TM06
  (140, 14000, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 7),
  -- Kabuto - Body Slam - TM08
  (140, 14000, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 8),
  -- Kabuto - Take Down - TM09
  (140, 14000, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 9),
  -- Kabuto - Double-Edge - TM10
  (140, 14000, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 10),
  -- Kabuto - Bubble Beam - TM11
  (140, 14000, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 11),
  -- Kabuto - Water Gun - TM12
  (140, 14000, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 12),
  -- Kabuto - Ice Beam - TM13
  (140, 14000, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 13),
  -- Kabuto - Blizzard - TM14
  (140, 14000, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 14),
  -- Kabuto - Rage - TM20
  (140, 14000, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 15),
  -- Kabuto - Mimic - TM31
  (140, 14000, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 16),
  -- Kabuto - Double Team - TM32
  (140, 14000, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 17),
  -- Kabuto - Reflect - TM33
  (140, 14000, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 18),
  -- Kabuto - Bide - TM34
  (140, 14000, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 19),
  -- Kabuto - Rest - TM44
  (140, 14000, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 20),
  -- Kabuto - Substitute - TM50
  (140, 14000, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 21),
  -- Kabuto - Surf - HM03
  (140, 14000, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 22),
  -- Kabutops - Scratch - Level 1
  (141, 14100, 10, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kabutops - Harden - Level 1
  (141, 14100, 106, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kabutops - Absorb - Level 1
  (141, 14100, 71, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kabutops - Absorb - Level 34
  (141, 14100, 71, 1, NULL, 1, 34, NULL, NULL, NULL, 4),
  -- Kabutops - Slash - Level 39
  (141, 14100, 163, 1, NULL, 1, 39, NULL, NULL, NULL, 5),
  -- Kabutops - Leer - Level 46
  (141, 14100, 43, 1, NULL, 1, 46, NULL, NULL, NULL, 6),
  -- Kabutops - Hydro Pump - Level 53
  (141, 14100, 56, 1, NULL, 1, 53, NULL, NULL, NULL, 7),
  -- Kabutops - Razor Wind - TM02
  (141, 14100, 13, 1, NULL, 2, NULL, NULL, 1002002, NULL, 8),
  -- Kabutops - Swords Dance - TM03
  (141, 14100, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 9),
  -- Kabutops - Mega Kick - TM05
  (141, 14100, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 10),
  -- Kabutops - Toxic - TM06
  (141, 14100, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Kabutops - Body Slam - TM08
  (141, 14100, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 12),
  -- Kabutops - Take Down - TM09
  (141, 14100, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 13),
  -- Kabutops - Double-Edge - TM10
  (141, 14100, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 14),
  -- Kabutops - Bubble Beam - TM11
  (141, 14100, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 15),
  -- Kabutops - Water Gun - TM12
  (141, 14100, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 16),
  -- Kabutops - Ice Beam - TM13
  (141, 14100, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 17),
  -- Kabutops - Blizzard - TM14
  (141, 14100, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 18),
  -- Kabutops - Hyper Beam - TM15
  (141, 14100, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 19),
  -- Kabutops - Submission - TM17
  (141, 14100, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 20),
  -- Kabutops - Seismic Toss - TM19
  (141, 14100, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 21),
  -- Kabutops - Rage - TM20
  (141, 14100, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 22),
  -- Kabutops - Mimic - TM31
  (141, 14100, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 23),
  -- Kabutops - Double Team - TM32
  (141, 14100, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 24),
  -- Kabutops - Reflect - TM33
  (141, 14100, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 25),
  -- Kabutops - Bide - TM34
  (141, 14100, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 26),
  -- Kabutops - Skull Bash - TM40
  (141, 14100, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 27),
  -- Kabutops - Rest - TM44
  (141, 14100, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 28),
  -- Kabutops - Substitute - TM50
  (141, 14100, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 29),
  -- Kabutops - Surf - HM03
  (141, 14100, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 30),
  -- Aerodactyl - Wing Attack - Level 1
  (142, 14200, 17, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aerodactyl - Agility - Level 1
  (142, 14200, 97, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aerodactyl - Supersonic - Level 33
  (142, 14200, 48, 1, NULL, 1, 33, NULL, NULL, NULL, 3),
  -- Aerodactyl - Bite - Level 38
  (142, 14200, 44, 1, NULL, 1, 38, NULL, NULL, NULL, 4),
  -- Aerodactyl - Take Down - Level 45
  (142, 14200, 36, 1, NULL, 1, 45, NULL, NULL, NULL, 5),
  -- Aerodactyl - Hyper Beam - Level 54
  (142, 14200, 63, 1, NULL, 1, 54, NULL, NULL, NULL, 6),
  -- Aerodactyl - Razor Wind - TM02
  (142, 14200, 13, 1, NULL, 2, NULL, NULL, 1002002, NULL, 7),
  -- Aerodactyl - Whirlwind - TM04
  (142, 14200, 18, 1, NULL, 2, NULL, NULL, 1002004, NULL, 8),
  -- Aerodactyl - Toxic - TM06
  (142, 14200, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Aerodactyl - Take Down - TM09
  (142, 14200, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Aerodactyl - Double-Edge - TM10
  (142, 14200, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Aerodactyl - Hyper Beam - TM15
  (142, 14200, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 12),
  -- Aerodactyl - Rage - TM20
  (142, 14200, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 13),
  -- Aerodactyl - Dragon Rage - TM23
  (142, 14200, 82, 1, NULL, 2, NULL, NULL, 1002023, NULL, 14),
  -- Aerodactyl - Mimic - TM31
  (142, 14200, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 15),
  -- Aerodactyl - Double Team - TM32
  (142, 14200, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 16),
  -- Aerodactyl - Reflect - TM33
  (142, 14200, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 17),
  -- Aerodactyl - Bide - TM34
  (142, 14200, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 18),
  -- Aerodactyl - Fire Blast - TM38
  (142, 14200, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 19),
  -- Aerodactyl - Swift - TM39
  (142, 14200, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 20),
  -- Aerodactyl - Sky Attack - TM43
  (142, 14200, 143, 1, NULL, 2, NULL, NULL, 1002043, NULL, 21),
  -- Aerodactyl - Rest - TM44
  (142, 14200, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 22),
  -- Aerodactyl - Substitute - TM50
  (142, 14200, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 23),
  -- Aerodactyl - Fly - HM02
  (142, 14200, 19, 1, NULL, 3, NULL, NULL, 1003002, NULL, 24),
  -- Snorlax - Headbutt - Level 1
  (143, 14300, 29, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snorlax - Amnesia - Level 1
  (143, 14300, 133, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snorlax - Rest - Level 1
  (143, 14300, 156, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Snorlax - Body Slam - Level 35
  (143, 14300, 34, 1, NULL, 1, 35, NULL, NULL, NULL, 4),
  -- Snorlax - Harden - Level 41
  (143, 14300, 106, 1, NULL, 1, 41, NULL, NULL, NULL, 5),
  -- Snorlax - Double-Edge - Level 48
  (143, 14300, 38, 1, NULL, 1, 48, NULL, NULL, NULL, 6),
  -- Snorlax - Hyper Beam - Level 56
  (143, 14300, 63, 1, NULL, 1, 56, NULL, NULL, NULL, 7),
  -- Snorlax - Mega Punch - TM01
  (143, 14300, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 8),
  -- Snorlax - Mega Kick - TM05
  (143, 14300, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 9),
  -- Snorlax - Toxic - TM06
  (143, 14300, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 10),
  -- Snorlax - Body Slam - TM08
  (143, 14300, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Snorlax - Take Down - TM09
  (143, 14300, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Snorlax - Double-Edge - TM10
  (143, 14300, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Snorlax - Bubble Beam - TM11
  (143, 14300, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 14),
  -- Snorlax - Water Gun - TM12
  (143, 14300, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 15),
  -- Snorlax - Ice Beam - TM13
  (143, 14300, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 16),
  -- Snorlax - Blizzard - TM14
  (143, 14300, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 17),
  -- Snorlax - Hyper Beam - TM15
  (143, 14300, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 18),
  -- Snorlax - Pay Day - TM16
  (143, 14300, 6, 1, NULL, 2, NULL, NULL, 1002016, NULL, 19),
  -- Snorlax - Submission - TM17
  (143, 14300, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 20),
  -- Snorlax - Counter - TM18
  (143, 14300, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 21),
  -- Snorlax - Seismic Toss - TM19
  (143, 14300, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 22),
  -- Snorlax - Rage - TM20
  (143, 14300, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 23),
  -- Snorlax - Solar Beam - TM22
  (143, 14300, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 24),
  -- Snorlax - Thunderbolt - TM24
  (143, 14300, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 25),
  -- Snorlax - Thunder - TM25
  (143, 14300, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 26),
  -- Snorlax - Earthquake - TM26
  (143, 14300, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 27),
  -- Snorlax - Fissure - TM27
  (143, 14300, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 28),
  -- Snorlax - Psychic - TM29
  (143, 14300, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 29),
  -- Snorlax - Mimic - TM31
  (143, 14300, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 30),
  -- Snorlax - Double Team - TM32
  (143, 14300, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 31),
  -- Snorlax - Reflect - TM33
  (143, 14300, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 32),
  -- Snorlax - Bide - TM34
  (143, 14300, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 33),
  -- Snorlax - Metronome - TM35
  (143, 14300, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 34),
  -- Snorlax - Self-Destruct - TM36
  (143, 14300, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 35),
  -- Snorlax - Fire Blast - TM38
  (143, 14300, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 36),
  -- Snorlax - Skull Bash - TM40
  (143, 14300, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 37),
  -- Snorlax - Rest - TM44
  (143, 14300, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 38),
  -- Snorlax - Psywave - TM46
  (143, 14300, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 39),
  -- Snorlax - Rock Slide - TM48
  (143, 14300, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 40),
  -- Snorlax - Substitute - TM50
  (143, 14300, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 41),
  -- Snorlax - Surf - HM03
  (143, 14300, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 42),
  -- Snorlax - Strength - HM04
  (143, 14300, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 43),
  -- Articuno - Peck - Level 1
  (144, 14400, 64, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Articuno - Ice Beam - Level 1
  (144, 14400, 58, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Articuno - Blizzard - Level 51
  (144, 14400, 59, 1, NULL, 1, 51, NULL, NULL, NULL, 3),
  -- Articuno - Agility - Level 55
  (144, 14400, 97, 1, NULL, 1, 55, NULL, NULL, NULL, 4),
  -- Articuno - Mist - Level 60
  (144, 14400, 54, 1, NULL, 1, 60, NULL, NULL, NULL, 5),
  -- Articuno - Razor Wind - TM02
  (144, 14400, 13, 1, NULL, 2, NULL, NULL, 1002002, NULL, 6),
  -- Articuno - Whirlwind - TM04
  (144, 14400, 18, 1, NULL, 2, NULL, NULL, 1002004, NULL, 7),
  -- Articuno - Toxic - TM06
  (144, 14400, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Articuno - Take Down - TM09
  (144, 14400, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 9),
  -- Articuno - Double-Edge - TM10
  (144, 14400, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 10),
  -- Articuno - Bubble Beam - TM11
  (144, 14400, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 11),
  -- Articuno - Water Gun - TM12
  (144, 14400, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 12),
  -- Articuno - Ice Beam - TM13
  (144, 14400, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 13),
  -- Articuno - Blizzard - TM14
  (144, 14400, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 14),
  -- Articuno - Hyper Beam - TM15
  (144, 14400, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 15),
  -- Articuno - Rage - TM20
  (144, 14400, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 16),
  -- Articuno - Mimic - TM31
  (144, 14400, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 17),
  -- Articuno - Double Team - TM32
  (144, 14400, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 18),
  -- Articuno - Reflect - TM33
  (144, 14400, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 19),
  -- Articuno - Bide - TM34
  (144, 14400, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 20),
  -- Articuno - Swift - TM39
  (144, 14400, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 21),
  -- Articuno - Sky Attack - TM43
  (144, 14400, 143, 1, NULL, 2, NULL, NULL, 1002043, NULL, 22),
  -- Articuno - Rest - TM44
  (144, 14400, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 23),
  -- Articuno - Substitute - TM50
  (144, 14400, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 24),
  -- Articuno - Fly - HM02
  (144, 14400, 19, 1, NULL, 3, NULL, NULL, 1003002, NULL, 25),
  -- Zapdos - Thunder Shock - Level 1
  (145, 14500, 84, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zapdos - Drill Peck - Level 1
  (145, 14500, 65, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zapdos - Thunder - Level 51
  (145, 14500, 87, 1, NULL, 1, 51, NULL, NULL, NULL, 3),
  -- Zapdos - Agility - Level 55
  (145, 14500, 97, 1, NULL, 1, 55, NULL, NULL, NULL, 4),
  -- Zapdos - Light Screen - Level 60
  (145, 14500, 113, 1, NULL, 1, 60, NULL, NULL, NULL, 5),
  -- Zapdos - Razor Wind - TM02
  (145, 14500, 13, 1, NULL, 2, NULL, NULL, 1002002, NULL, 6),
  -- Zapdos - Whirlwind - TM04
  (145, 14500, 18, 1, NULL, 2, NULL, NULL, 1002004, NULL, 7),
  -- Zapdos - Toxic - TM06
  (145, 14500, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Zapdos - Take Down - TM09
  (145, 14500, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 9),
  -- Zapdos - Double-Edge - TM10
  (145, 14500, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 10),
  -- Zapdos - Hyper Beam - TM15
  (145, 14500, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 11),
  -- Zapdos - Rage - TM20
  (145, 14500, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 12),
  -- Zapdos - Thunderbolt - TM24
  (145, 14500, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 13),
  -- Zapdos - Thunder - TM25
  (145, 14500, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 14),
  -- Zapdos - Mimic - TM31
  (145, 14500, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 15),
  -- Zapdos - Double Team - TM32
  (145, 14500, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 16),
  -- Zapdos - Reflect - TM33
  (145, 14500, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 17),
  -- Zapdos - Bide - TM34
  (145, 14500, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 18),
  -- Zapdos - Swift - TM39
  (145, 14500, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 19),
  -- Zapdos - Sky Attack - TM43
  (145, 14500, 143, 1, NULL, 2, NULL, NULL, 1002043, NULL, 20),
  -- Zapdos - Rest - TM44
  (145, 14500, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 21),
  -- Zapdos - Thunder Wave - TM45
  (145, 14500, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 22),
  -- Zapdos - Substitute - TM50
  (145, 14500, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 23),
  -- Zapdos - Fly - HM02
  (145, 14500, 19, 1, NULL, 3, NULL, NULL, 1003002, NULL, 24),
  -- Zapdos - Flash - HM05
  (145, 14500, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 25),
  -- Moltres - Peck - Level 1
  (146, 14600, 64, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Moltres - Fire Spin - Level 1
  (146, 14600, 83, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Moltres - Leer - Level 51
  (146, 14600, 43, 1, NULL, 1, 51, NULL, NULL, NULL, 3),
  -- Moltres - Agility - Level 55
  (146, 14600, 97, 1, NULL, 1, 55, NULL, NULL, NULL, 4),
  -- Moltres - Sky Attack - Level 60
  (146, 14600, 143, 1, NULL, 1, 60, NULL, NULL, NULL, 5),
  -- Moltres - Razor Wind - TM02
  (146, 14600, 13, 1, NULL, 2, NULL, NULL, 1002002, NULL, 6),
  -- Moltres - Whirlwind - TM04
  (146, 14600, 18, 1, NULL, 2, NULL, NULL, 1002004, NULL, 7),
  -- Moltres - Toxic - TM06
  (146, 14600, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Moltres - Take Down - TM09
  (146, 14600, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 9),
  -- Moltres - Double-Edge - TM10
  (146, 14600, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 10),
  -- Moltres - Hyper Beam - TM15
  (146, 14600, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 11),
  -- Moltres - Rage - TM20
  (146, 14600, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 12),
  -- Moltres - Mimic - TM31
  (146, 14600, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 13),
  -- Moltres - Double Team - TM32
  (146, 14600, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 14),
  -- Moltres - Reflect - TM33
  (146, 14600, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 15),
  -- Moltres - Bide - TM34
  (146, 14600, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 16),
  -- Moltres - Fire Blast - TM38
  (146, 14600, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 17),
  -- Moltres - Swift - TM39
  (146, 14600, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 18),
  -- Moltres - Sky Attack - TM43
  (146, 14600, 143, 1, NULL, 2, NULL, NULL, 1002043, NULL, 19),
  -- Moltres - Rest - TM44
  (146, 14600, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 20),
  -- Moltres - Substitute - TM50
  (146, 14600, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 21),
  -- Moltres - Fly - HM02
  (146, 14600, 19, 1, NULL, 3, NULL, NULL, 1003002, NULL, 22),
  -- Dratini - Wrap - Level 1
  (147, 14700, 35, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dratini - Leer - Level 1
  (147, 14700, 43, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dratini - Thunder Wave - Level 10
  (147, 14700, 86, 1, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Dratini - Agility - Level 20
  (147, 14700, 97, 1, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Dratini - Slam - Level 30
  (147, 14700, 21, 1, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Dratini - Dragon Rage - Level 40
  (147, 14700, 82, 1, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Dratini - Hyper Beam - Level 50
  (147, 14700, 63, 1, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Dratini - Toxic - TM06
  (147, 14700, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 8),
  -- Dratini - Body Slam - TM08
  (147, 14700, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 9),
  -- Dratini - Take Down - TM09
  (147, 14700, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 10),
  -- Dratini - Double-Edge - TM10
  (147, 14700, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 11),
  -- Dratini - Bubble Beam - TM11
  (147, 14700, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 12),
  -- Dratini - Water Gun - TM12
  (147, 14700, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 13),
  -- Dratini - Ice Beam - TM13
  (147, 14700, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 14),
  -- Dratini - Blizzard - TM14
  (147, 14700, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 15),
  -- Dratini - Rage - TM20
  (147, 14700, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 16),
  -- Dratini - Dragon Rage - TM23
  (147, 14700, 82, 1, NULL, 2, NULL, NULL, 1002023, NULL, 17),
  -- Dratini - Thunderbolt - TM24
  (147, 14700, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 18),
  -- Dratini - Thunder - TM25
  (147, 14700, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 19),
  -- Dratini - Mimic - TM31
  (147, 14700, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 20),
  -- Dratini - Double Team - TM32
  (147, 14700, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 21),
  -- Dratini - Reflect - TM33
  (147, 14700, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 22),
  -- Dratini - Bide - TM34
  (147, 14700, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 23),
  -- Dratini - Fire Blast - TM38
  (147, 14700, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 24),
  -- Dratini - Swift - TM39
  (147, 14700, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 25),
  -- Dratini - Skull Bash - TM40
  (147, 14700, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 26),
  -- Dratini - Rest - TM44
  (147, 14700, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 27),
  -- Dratini - Thunder Wave - TM45
  (147, 14700, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 28),
  -- Dratini - Substitute - TM50
  (147, 14700, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 29),
  -- Dratini - Surf - HM03
  (147, 14700, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 30),
  -- Dragonair - Wrap - Level 1
  (148, 14800, 35, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonair - Leer - Level 1
  (148, 14800, 43, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonair - Thunder Wave - Level 1
  (148, 14800, 86, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragonair - Thunder Wave - Level 10
  (148, 14800, 86, 1, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Dragonair - Agility - Level 20
  (148, 14800, 97, 1, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Dragonair - Slam - Level 35
  (148, 14800, 21, 1, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Dragonair - Dragon Rage - Level 45
  (148, 14800, 82, 1, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Dragonair - Hyper Beam - Level 55
  (148, 14800, 63, 1, NULL, 1, 55, NULL, NULL, NULL, 8),
  -- Dragonair - Toxic - TM06
  (148, 14800, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 9),
  -- Dragonair - Horn Drill - TM07
  (148, 14800, 32, 1, NULL, 2, NULL, NULL, 1002007, NULL, 10),
  -- Dragonair - Body Slam - TM08
  (148, 14800, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 11),
  -- Dragonair - Take Down - TM09
  (148, 14800, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 12),
  -- Dragonair - Double-Edge - TM10
  (148, 14800, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 13),
  -- Dragonair - Bubble Beam - TM11
  (148, 14800, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 14),
  -- Dragonair - Water Gun - TM12
  (148, 14800, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 15),
  -- Dragonair - Ice Beam - TM13
  (148, 14800, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 16),
  -- Dragonair - Blizzard - TM14
  (148, 14800, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 17),
  -- Dragonair - Rage - TM20
  (148, 14800, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 18),
  -- Dragonair - Dragon Rage - TM23
  (148, 14800, 82, 1, NULL, 2, NULL, NULL, 1002023, NULL, 19),
  -- Dragonair - Thunderbolt - TM24
  (148, 14800, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 20),
  -- Dragonair - Thunder - TM25
  (148, 14800, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 21),
  -- Dragonair - Mimic - TM31
  (148, 14800, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 22),
  -- Dragonair - Double Team - TM32
  (148, 14800, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 23),
  -- Dragonair - Reflect - TM33
  (148, 14800, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 24),
  -- Dragonair - Bide - TM34
  (148, 14800, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 25),
  -- Dragonair - Fire Blast - TM38
  (148, 14800, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 26),
  -- Dragonair - Swift - TM39
  (148, 14800, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 27),
  -- Dragonair - Skull Bash - TM40
  (148, 14800, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 28),
  -- Dragonair - Rest - TM44
  (148, 14800, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 29),
  -- Dragonair - Thunder Wave - TM45
  (148, 14800, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 30),
  -- Dragonair - Substitute - TM50
  (148, 14800, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 31),
  -- Dragonair - Surf - HM03
  (148, 14800, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 32),
  -- Dragonite - Wrap - Level 1
  (149, 14900, 35, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonite - Leer - Level 1
  (149, 14900, 43, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonite - Thunder Wave - Level 1
  (149, 14900, 86, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragonite - Agility - Level 1
  (149, 14900, 97, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragonite - Thunder Wave - Level 10
  (149, 14900, 86, 1, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Dragonite - Agility - Level 20
  (149, 14900, 97, 1, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Dragonite - Slam - Level 35
  (149, 14900, 21, 1, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Dragonite - Dragon Rage - Level 45
  (149, 14900, 82, 1, NULL, 1, 45, NULL, NULL, NULL, 8),
  -- Dragonite - Hyper Beam - Level 60
  (149, 14900, 63, 1, NULL, 1, 60, NULL, NULL, NULL, 9),
  -- Dragonite - Razor Wind - TM02
  (149, 14900, 13, 1, NULL, 2, NULL, NULL, 1002002, NULL, 10),
  -- Dragonite - Toxic - TM06
  (149, 14900, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Dragonite - Horn Drill - TM07
  (149, 14900, 32, 1, NULL, 2, NULL, NULL, 1002007, NULL, 12),
  -- Dragonite - Body Slam - TM08
  (149, 14900, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 13),
  -- Dragonite - Take Down - TM09
  (149, 14900, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 14),
  -- Dragonite - Double-Edge - TM10
  (149, 14900, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 15),
  -- Dragonite - Bubble Beam - TM11
  (149, 14900, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 16),
  -- Dragonite - Water Gun - TM12
  (149, 14900, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 17),
  -- Dragonite - Ice Beam - TM13
  (149, 14900, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 18),
  -- Dragonite - Blizzard - TM14
  (149, 14900, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 19),
  -- Dragonite - Hyper Beam - TM15
  (149, 14900, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 20),
  -- Dragonite - Rage - TM20
  (149, 14900, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 21),
  -- Dragonite - Dragon Rage - TM23
  (149, 14900, 82, 1, NULL, 2, NULL, NULL, 1002023, NULL, 22),
  -- Dragonite - Thunderbolt - TM24
  (149, 14900, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 23),
  -- Dragonite - Thunder - TM25
  (149, 14900, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 24),
  -- Dragonite - Mimic - TM31
  (149, 14900, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 25),
  -- Dragonite - Double Team - TM32
  (149, 14900, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 26),
  -- Dragonite - Reflect - TM33
  (149, 14900, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 27),
  -- Dragonite - Bide - TM34
  (149, 14900, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 28),
  -- Dragonite - Fire Blast - TM38
  (149, 14900, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 29),
  -- Dragonite - Swift - TM39
  (149, 14900, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 30),
  -- Dragonite - Skull Bash - TM40
  (149, 14900, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 31),
  -- Dragonite - Rest - TM44
  (149, 14900, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 32),
  -- Dragonite - Thunder Wave - TM45
  (149, 14900, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 33),
  -- Dragonite - Substitute - TM50
  (149, 14900, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 34),
  -- Dragonite - Surf - HM03
  (149, 14900, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 35),
  -- Dragonite - Strength - HM04
  (149, 14900, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 36),
  -- Mewtwo - Confusion - Level 1
  (150, 15000, 93, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mewtwo - Disable - Level 1
  (150, 15000, 50, 1, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mewtwo - Swift - Level 1
  (150, 15000, 129, 1, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mewtwo - Psychic - Level 1
  (150, 15000, 94, 1, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mewtwo - Barrier - Level 63
  (150, 15000, 112, 1, NULL, 1, 63, NULL, NULL, NULL, 5),
  -- Mewtwo - Psychic - Level 66
  (150, 15000, 94, 1, NULL, 1, 66, NULL, NULL, NULL, 6),
  -- Mewtwo - Recover - Level 70
  (150, 15000, 105, 1, NULL, 1, 70, NULL, NULL, NULL, 7),
  -- Mewtwo - Mist - Level 75
  (150, 15000, 54, 1, NULL, 1, 75, NULL, NULL, NULL, 8),
  -- Mewtwo - Amnesia - Level 81
  (150, 15000, 133, 1, NULL, 1, 81, NULL, NULL, NULL, 9),
  -- Mewtwo - Mega Punch - TM01
  (150, 15000, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 10),
  -- Mewtwo - Mega Kick - TM05
  (150, 15000, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 11),
  -- Mewtwo - Toxic - TM06
  (150, 15000, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 12),
  -- Mewtwo - Body Slam - TM08
  (150, 15000, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 13),
  -- Mewtwo - Take Down - TM09
  (150, 15000, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 14),
  -- Mewtwo - Double-Edge - TM10
  (150, 15000, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 15),
  -- Mewtwo - Bubble Beam - TM11
  (150, 15000, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 16),
  -- Mewtwo - Water Gun - TM12
  (150, 15000, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 17),
  -- Mewtwo - Ice Beam - TM13
  (150, 15000, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 18),
  -- Mewtwo - Blizzard - TM14
  (150, 15000, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 19),
  -- Mewtwo - Hyper Beam - TM15
  (150, 15000, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 20),
  -- Mewtwo - Pay Day - TM16
  (150, 15000, 6, 1, NULL, 2, NULL, NULL, 1002016, NULL, 21),
  -- Mewtwo - Submission - TM17
  (150, 15000, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 22),
  -- Mewtwo - Counter - TM18
  (150, 15000, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 23),
  -- Mewtwo - Seismic Toss - TM19
  (150, 15000, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 24),
  -- Mewtwo - Rage - TM20
  (150, 15000, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 25),
  -- Mewtwo - Solar Beam - TM22
  (150, 15000, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 26),
  -- Mewtwo - Thunderbolt - TM24
  (150, 15000, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 27),
  -- Mewtwo - Thunder - TM25
  (150, 15000, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 28),
  -- Mewtwo - Psychic - TM29
  (150, 15000, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 29),
  -- Mewtwo - Teleport - TM30
  (150, 15000, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 30),
  -- Mewtwo - Mimic - TM31
  (150, 15000, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 31),
  -- Mewtwo - Double Team - TM32
  (150, 15000, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 32),
  -- Mewtwo - Reflect - TM33
  (150, 15000, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 33),
  -- Mewtwo - Bide - TM34
  (150, 15000, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 34),
  -- Mewtwo - Metronome - TM35
  (150, 15000, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 35),
  -- Mewtwo - Self-Destruct - TM36
  (150, 15000, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 36),
  -- Mewtwo - Fire Blast - TM38
  (150, 15000, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 37),
  -- Mewtwo - Skull Bash - TM40
  (150, 15000, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 38),
  -- Mewtwo - Rest - TM44
  (150, 15000, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 39),
  -- Mewtwo - Thunder Wave - TM45
  (150, 15000, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 40),
  -- Mewtwo - Psywave - TM46
  (150, 15000, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 41),
  -- Mewtwo - Tri Attack - TM49
  (150, 15000, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 42),
  -- Mewtwo - Substitute - TM50
  (150, 15000, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 43),
  -- Mewtwo - Strength - HM04
  (150, 15000, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 44),
  -- Mewtwo - Flash - HM05
  (150, 15000, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 45),
  -- Mew - Pound - Level 1
  (151, 15100, 1, 1, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mew - Transform - Level 10
  (151, 15100, 144, 1, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Mew - Mega Punch - Level 20
  (151, 15100, 5, 1, NULL, 1, 20, NULL, NULL, NULL, 3),
  -- Mew - Metronome - Level 30
  (151, 15100, 118, 1, NULL, 1, 30, NULL, NULL, NULL, 4),
  -- Mew - Psychic - Level 40
  (151, 15100, 94, 1, NULL, 1, 40, NULL, NULL, NULL, 5),
  -- Mew - Mega Punch - TM01
  (151, 15100, 5, 1, NULL, 2, NULL, NULL, 1002001, NULL, 6),
  -- Mew - Razor Wind - TM02
  (151, 15100, 13, 1, NULL, 2, NULL, NULL, 1002002, NULL, 7),
  -- Mew - Swords Dance - TM03
  (151, 15100, 14, 1, NULL, 2, NULL, NULL, 1002003, NULL, 8),
  -- Mew - Whirlwind - TM04
  (151, 15100, 18, 1, NULL, 2, NULL, NULL, 1002004, NULL, 9),
  -- Mew - Mega Kick - TM05
  (151, 15100, 25, 1, NULL, 2, NULL, NULL, 1002005, NULL, 10),
  -- Mew - Toxic - TM06
  (151, 15100, 92, 1, NULL, 2, NULL, NULL, 1002006, NULL, 11),
  -- Mew - Horn Drill - TM07
  (151, 15100, 32, 1, NULL, 2, NULL, NULL, 1002007, NULL, 12),
  -- Mew - Body Slam - TM08
  (151, 15100, 34, 1, NULL, 2, NULL, NULL, 1002008, NULL, 13),
  -- Mew - Take Down - TM09
  (151, 15100, 36, 1, NULL, 2, NULL, NULL, 1002009, NULL, 14),
  -- Mew - Double-Edge - TM10
  (151, 15100, 38, 1, NULL, 2, NULL, NULL, 1002010, NULL, 15),
  -- Mew - Bubble Beam - TM11
  (151, 15100, 61, 1, NULL, 2, NULL, NULL, 1002011, NULL, 16),
  -- Mew - Water Gun - TM12
  (151, 15100, 55, 1, NULL, 2, NULL, NULL, 1002012, NULL, 17),
  -- Mew - Ice Beam - TM13
  (151, 15100, 58, 1, NULL, 2, NULL, NULL, 1002013, NULL, 18),
  -- Mew - Blizzard - TM14
  (151, 15100, 59, 1, NULL, 2, NULL, NULL, 1002014, NULL, 19),
  -- Mew - Hyper Beam - TM15
  (151, 15100, 63, 1, NULL, 2, NULL, NULL, 1002015, NULL, 20),
  -- Mew - Pay Day - TM16
  (151, 15100, 6, 1, NULL, 2, NULL, NULL, 1002016, NULL, 21),
  -- Mew - Submission - TM17
  (151, 15100, 66, 1, NULL, 2, NULL, NULL, 1002017, NULL, 22),
  -- Mew - Counter - TM18
  (151, 15100, 68, 1, NULL, 2, NULL, NULL, 1002018, NULL, 23),
  -- Mew - Seismic Toss - TM19
  (151, 15100, 69, 1, NULL, 2, NULL, NULL, 1002019, NULL, 24),
  -- Mew - Rage - TM20
  (151, 15100, 99, 1, NULL, 2, NULL, NULL, 1002020, NULL, 25),
  -- Mew - Mega Drain - TM21
  (151, 15100, 72, 1, NULL, 2, NULL, NULL, 1002021, NULL, 26),
  -- Mew - Solar Beam - TM22
  (151, 15100, 76, 1, NULL, 2, NULL, NULL, 1002022, NULL, 27),
  -- Mew - Dragon Rage - TM23
  (151, 15100, 82, 1, NULL, 2, NULL, NULL, 1002023, NULL, 28),
  -- Mew - Thunderbolt - TM24
  (151, 15100, 85, 1, NULL, 2, NULL, NULL, 1002024, NULL, 29),
  -- Mew - Thunder - TM25
  (151, 15100, 87, 1, NULL, 2, NULL, NULL, 1002025, NULL, 30),
  -- Mew - Earthquake - TM26
  (151, 15100, 89, 1, NULL, 2, NULL, NULL, 1002026, NULL, 31),
  -- Mew - Fissure - TM27
  (151, 15100, 90, 1, NULL, 2, NULL, NULL, 1002027, NULL, 32),
  -- Mew - Dig - TM28
  (151, 15100, 91, 1, NULL, 2, NULL, NULL, 1002028, NULL, 33),
  -- Mew - Psychic - TM29
  (151, 15100, 94, 1, NULL, 2, NULL, NULL, 1002029, NULL, 34),
  -- Mew - Teleport - TM30
  (151, 15100, 100, 1, NULL, 2, NULL, NULL, 1002030, NULL, 35),
  -- Mew - Mimic - TM31
  (151, 15100, 102, 1, NULL, 2, NULL, NULL, 1002031, NULL, 36),
  -- Mew - Double Team - TM32
  (151, 15100, 104, 1, NULL, 2, NULL, NULL, 1002032, NULL, 37),
  -- Mew - Reflect - TM33
  (151, 15100, 115, 1, NULL, 2, NULL, NULL, 1002033, NULL, 38),
  -- Mew - Bide - TM34
  (151, 15100, 117, 1, NULL, 2, NULL, NULL, 1002034, NULL, 39),
  -- Mew - Metronome - TM35
  (151, 15100, 118, 1, NULL, 2, NULL, NULL, 1002035, NULL, 40),
  -- Mew - Self-Destruct - TM36
  (151, 15100, 120, 1, NULL, 2, NULL, NULL, 1002036, NULL, 41),
  -- Mew - Egg Bomb - TM37
  (151, 15100, 121, 1, NULL, 2, NULL, NULL, 1002037, NULL, 42),
  -- Mew - Fire Blast - TM38
  (151, 15100, 126, 1, NULL, 2, NULL, NULL, 1002038, NULL, 43),
  -- Mew - Swift - TM39
  (151, 15100, 129, 1, NULL, 2, NULL, NULL, 1002039, NULL, 44),
  -- Mew - Skull Bash - TM40
  (151, 15100, 130, 1, NULL, 2, NULL, NULL, 1002040, NULL, 45),
  -- Mew - Soft-Boiled - TM41
  (151, 15100, 135, 1, NULL, 2, NULL, NULL, 1002041, NULL, 46),
  -- Mew - Dream Eater - TM42
  (151, 15100, 138, 1, NULL, 2, NULL, NULL, 1002042, NULL, 47),
  -- Mew - Sky Attack - TM43
  (151, 15100, 143, 1, NULL, 2, NULL, NULL, 1002043, NULL, 48),
  -- Mew - Rest - TM44
  (151, 15100, 156, 1, NULL, 2, NULL, NULL, 1002044, NULL, 49),
  -- Mew - Thunder Wave - TM45
  (151, 15100, 86, 1, NULL, 2, NULL, NULL, 1002045, NULL, 50),
  -- Mew - Psywave - TM46
  (151, 15100, 149, 1, NULL, 2, NULL, NULL, 1002046, NULL, 51),
  -- Mew - Explosion - TM47
  (151, 15100, 153, 1, NULL, 2, NULL, NULL, 1002047, NULL, 52),
  -- Mew - Rock Slide - TM48
  (151, 15100, 157, 1, NULL, 2, NULL, NULL, 1002048, NULL, 53),
  -- Mew - Tri Attack - TM49
  (151, 15100, 161, 1, NULL, 2, NULL, NULL, 1002049, NULL, 54),
  -- Mew - Substitute - TM50
  (151, 15100, 164, 1, NULL, 2, NULL, NULL, 1002050, NULL, 55),
  -- Mew - Cut - HM01
  (151, 15100, 15, 1, NULL, 3, NULL, NULL, 1003001, NULL, 56),
  -- Mew - Fly - HM02
  (151, 15100, 19, 1, NULL, 3, NULL, NULL, 1003002, NULL, 57),
  -- Mew - Surf - HM03
  (151, 15100, 57, 1, NULL, 3, NULL, NULL, 1003003, NULL, 58),
  -- Mew - Strength - HM04
  (151, 15100, 70, 1, NULL, 3, NULL, NULL, 1003004, NULL, 59),
  -- Mew - Flash - HM05
  (151, 15100, 148, 1, NULL, 3, NULL, NULL, 1003005, NULL, 60);