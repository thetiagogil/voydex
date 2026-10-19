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
-- Pokémon: #101-#151
-- Rows: 1906
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
  -- Electrode - Tackle - Level 1
  (101, 10100, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electrode - Screech - Level 1
  (101, 10100, 103, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electrode - Sonic Boom - Level 1
  (101, 10100, 49, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electrode - Self-Destruct - Level 1
  (101, 10100, 120, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Electrode - Screech - Level 9
  (101, 10100, 103, 3, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Electrode - Sonic Boom - Level 17
  (101, 10100, 49, 3, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Electrode - Self-Destruct - Level 23
  (101, 10100, 120, 3, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Electrode - Rollout - Level 29
  (101, 10100, 205, 3, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Electrode - Light Screen - Level 34
  (101, 10100, 113, 3, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Electrode - Swift - Level 40
  (101, 10100, 129, 3, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Electrode - Explosion - Level 44
  (101, 10100, 153, 3, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Electrode - Mirror Coat - Level 48
  (101, 10100, 243, 3, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Electrode - Headbutt - TM02
  (101, 10100, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 13),
  -- Electrode - Curse - TM03
  (101, 10100, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 14),
  -- Electrode - Rollout - TM04
  (101, 10100, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 15),
  -- Electrode - Toxic - TM06
  (101, 10100, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 16),
  -- Electrode - Zap Cannon - TM07
  (101, 10100, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 17),
  -- Electrode - Hidden Power - TM10
  (101, 10100, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 18),
  -- Electrode - Snore - TM13
  (101, 10100, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 19),
  -- Electrode - Hyper Beam - TM15
  (101, 10100, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 20),
  -- Electrode - Protect - TM17
  (101, 10100, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 21),
  -- Electrode - Rain Dance - TM18
  (101, 10100, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 22),
  -- Electrode - Endure - TM20
  (101, 10100, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 23),
  -- Electrode - Frustration - TM21
  (101, 10100, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 24),
  -- Electrode - Thunder - TM25
  (101, 10100, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 25),
  -- Electrode - Return - TM27
  (101, 10100, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 26),
  -- Electrode - Double Team - TM32
  (101, 10100, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 27),
  -- Electrode - Swagger - TM34
  (101, 10100, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 28),
  -- Electrode - Sleep Talk - TM35
  (101, 10100, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 29),
  -- Electrode - Swift - TM39
  (101, 10100, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 30),
  -- Electrode - Rest - TM44
  (101, 10100, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 31),
  -- Electrode - Flash - HM05
  (101, 10100, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 32),
  -- Exeggcute - Barrage - Level 1
  (102, 10200, 140, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggcute - Hypnosis - Level 1
  (102, 10200, 95, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggcute - Reflect - Level 7
  (102, 10200, 115, 3, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Exeggcute - Leech Seed - Level 13
  (102, 10200, 73, 3, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Exeggcute - Confusion - Level 19
  (102, 10200, 93, 3, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Exeggcute - Stun Spore - Level 25
  (102, 10200, 78, 3, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Exeggcute - Poison Powder - Level 31
  (102, 10200, 77, 3, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Exeggcute - Sleep Powder - Level 37
  (102, 10200, 79, 3, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Exeggcute - Solar Beam - Level 43
  (102, 10200, 76, 3, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Exeggcute - Curse - TM03
  (102, 10200, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Exeggcute - Rollout - TM04
  (102, 10200, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 11),
  -- Exeggcute - Toxic - TM06
  (102, 10200, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Exeggcute - Psych Up - TM09
  (102, 10200, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 13),
  -- Exeggcute - Hidden Power - TM10
  (102, 10200, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Exeggcute - Sunny Day - TM11
  (102, 10200, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 15),
  -- Exeggcute - Snore - TM13
  (102, 10200, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Exeggcute - Protect - TM17
  (102, 10200, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Exeggcute - Giga Drain - TM19
  (102, 10200, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 18),
  -- Exeggcute - Endure - TM20
  (102, 10200, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 19),
  -- Exeggcute - Frustration - TM21
  (102, 10200, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 20),
  -- Exeggcute - Solar Beam - TM22
  (102, 10200, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 21),
  -- Exeggcute - Return - TM27
  (102, 10200, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 22),
  -- Exeggcute - Psychic - TM29
  (102, 10200, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 23),
  -- Exeggcute - Double Team - TM32
  (102, 10200, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 24),
  -- Exeggcute - Swagger - TM34
  (102, 10200, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 25),
  -- Exeggcute - Sleep Talk - TM35
  (102, 10200, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 26),
  -- Exeggcute - Sludge Bomb - TM36
  (102, 10200, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 27),
  -- Exeggcute - Dream Eater - TM42
  (102, 10200, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 28),
  -- Exeggcute - Rest - TM44
  (102, 10200, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 29),
  -- Exeggcute - Attract - TM45
  (102, 10200, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 30),
  -- Exeggcute - Thief - TM46
  (102, 10200, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 31),
  -- Exeggcute - Nightmare - TM50
  (102, 10200, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 32),
  -- Exeggcute - Strength - HM04
  (102, 10200, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 33),
  -- Exeggcute - Flash - HM05
  (102, 10200, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 34),
  -- Exeggcute - Ancient Power - Egg Move
  (102, 10200, 246, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Exeggcute - Mega Drain - Egg Move
  (102, 10200, 72, 3, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Exeggcute - Moonlight - Egg Move
  (102, 10200, 236, 3, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Exeggcute - Reflect - Egg Move
  (102, 10200, 115, 3, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Exeggcute - Synthesis - Egg Move
  (102, 10200, 235, 3, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Exeggutor - Barrage - Level 1
  (103, 10300, 140, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggutor - Hypnosis - Level 1
  (103, 10300, 95, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggutor - Confusion - Level 1
  (103, 10300, 93, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exeggutor - Stomp - Level 19
  (103, 10300, 23, 3, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Exeggutor - Egg Bomb - Level 31
  (103, 10300, 121, 3, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Exeggutor - Headbutt - TM02
  (103, 10300, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 6),
  -- Exeggutor - Curse - TM03
  (103, 10300, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 7),
  -- Exeggutor - Rollout - TM04
  (103, 10300, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 8),
  -- Exeggutor - Toxic - TM06
  (103, 10300, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 9),
  -- Exeggutor - Psych Up - TM09
  (103, 10300, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 10),
  -- Exeggutor - Hidden Power - TM10
  (103, 10300, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 11),
  -- Exeggutor - Sunny Day - TM11
  (103, 10300, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 12),
  -- Exeggutor - Snore - TM13
  (103, 10300, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 13),
  -- Exeggutor - Hyper Beam - TM15
  (103, 10300, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 14),
  -- Exeggutor - Protect - TM17
  (103, 10300, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 15),
  -- Exeggutor - Giga Drain - TM19
  (103, 10300, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 16),
  -- Exeggutor - Endure - TM20
  (103, 10300, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 17),
  -- Exeggutor - Frustration - TM21
  (103, 10300, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 18),
  -- Exeggutor - Solar Beam - TM22
  (103, 10300, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 19),
  -- Exeggutor - Return - TM27
  (103, 10300, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 20),
  -- Exeggutor - Psychic - TM29
  (103, 10300, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 21),
  -- Exeggutor - Double Team - TM32
  (103, 10300, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 22),
  -- Exeggutor - Swagger - TM34
  (103, 10300, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 23),
  -- Exeggutor - Sleep Talk - TM35
  (103, 10300, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 24),
  -- Exeggutor - Sludge Bomb - TM36
  (103, 10300, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 25),
  -- Exeggutor - Dream Eater - TM42
  (103, 10300, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 26),
  -- Exeggutor - Rest - TM44
  (103, 10300, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 27),
  -- Exeggutor - Attract - TM45
  (103, 10300, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 28),
  -- Exeggutor - Thief - TM46
  (103, 10300, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 29),
  -- Exeggutor - Nightmare - TM50
  (103, 10300, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 30),
  -- Exeggutor - Strength - HM04
  (103, 10300, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 31),
  -- Exeggutor - Flash - HM05
  (103, 10300, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 32),
  -- Cubone - Growl - Level 1
  (104, 10400, 45, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cubone - Tail Whip - Level 5
  (104, 10400, 39, 3, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Cubone - Bone Club - Level 9
  (104, 10400, 125, 3, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Cubone - Headbutt - Level 13
  (104, 10400, 29, 3, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Cubone - Leer - Level 17
  (104, 10400, 43, 3, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Cubone - Focus Energy - Level 21
  (104, 10400, 116, 3, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Cubone - Bonemerang - Level 25
  (104, 10400, 155, 3, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Cubone - Rage - Level 29
  (104, 10400, 99, 3, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Cubone - False Swipe - Level 33
  (104, 10400, 206, 3, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Cubone - Thrash - Level 37
  (104, 10400, 37, 3, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Cubone - Bone Rush - Level 41
  (104, 10400, 198, 3, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Cubone - Dynamic Punch - TM01
  (104, 10400, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 12),
  -- Cubone - Headbutt - TM02
  (104, 10400, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 13),
  -- Cubone - Curse - TM03
  (104, 10400, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 14),
  -- Cubone - Toxic - TM06
  (104, 10400, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 15),
  -- Cubone - Rock Smash - TM08
  (104, 10400, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 16),
  -- Cubone - Hidden Power - TM10
  (104, 10400, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 17),
  -- Cubone - Sunny Day - TM11
  (104, 10400, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 18),
  -- Cubone - Snore - TM13
  (104, 10400, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 19),
  -- Cubone - Blizzard - TM14
  (104, 10400, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 20),
  -- Cubone - Icy Wind - TM16
  (104, 10400, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 21),
  -- Cubone - Protect - TM17
  (104, 10400, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 22),
  -- Cubone - Endure - TM20
  (104, 10400, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 23),
  -- Cubone - Frustration - TM21
  (104, 10400, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 24),
  -- Cubone - Iron Tail - TM23
  (104, 10400, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 25),
  -- Cubone - Earthquake - TM26
  (104, 10400, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 26),
  -- Cubone - Return - TM27
  (104, 10400, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 27),
  -- Cubone - Dig - TM28
  (104, 10400, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 28),
  -- Cubone - Mud-Slap - TM31
  (104, 10400, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 29),
  -- Cubone - Double Team - TM32
  (104, 10400, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 30),
  -- Cubone - Swagger - TM34
  (104, 10400, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 31),
  -- Cubone - Sleep Talk - TM35
  (104, 10400, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 32),
  -- Cubone - Sandstorm - TM37
  (104, 10400, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 33),
  -- Cubone - Fire Blast - TM38
  (104, 10400, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 34),
  -- Cubone - Thunder Punch - TM41
  (104, 10400, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 35),
  -- Cubone - Detect - TM43
  (104, 10400, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 36),
  -- Cubone - Rest - TM44
  (104, 10400, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 37),
  -- Cubone - Attract - TM45
  (104, 10400, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 38),
  -- Cubone - Thief - TM46
  (104, 10400, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 39),
  -- Cubone - Fire Punch - TM48
  (104, 10400, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 40),
  -- Cubone - Strength - HM04
  (104, 10400, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 41),
  -- Cubone - Ancient Power - Egg Move
  (104, 10400, 246, 3, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cubone - Belly Drum - Egg Move
  (104, 10400, 187, 3, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cubone - Perish Song - Egg Move
  (104, 10400, 195, 3, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cubone - Rock Slide - Egg Move
  (104, 10400, 157, 3, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cubone - Screech - Egg Move
  (104, 10400, 103, 3, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cubone - Skull Bash - Egg Move
  (104, 10400, 130, 3, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Marowak - Growl - Level 1
  (105, 10500, 45, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marowak - Tail Whip - Level 1
  (105, 10500, 39, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marowak - Bone Club - Level 1
  (105, 10500, 125, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marowak - Headbutt - Level 1
  (105, 10500, 29, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marowak - Tail Whip - Level 5
  (105, 10500, 39, 3, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Marowak - Bone Club - Level 9
  (105, 10500, 125, 3, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Marowak - Headbutt - Level 13
  (105, 10500, 29, 3, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Marowak - Leer - Level 17
  (105, 10500, 43, 3, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Marowak - Focus Energy - Level 21
  (105, 10500, 116, 3, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Marowak - Bonemerang - Level 25
  (105, 10500, 155, 3, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Marowak - Rage - Level 32
  (105, 10500, 99, 3, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Marowak - False Swipe - Level 39
  (105, 10500, 206, 3, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Marowak - Thrash - Level 46
  (105, 10500, 37, 3, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Marowak - Bone Rush - Level 53
  (105, 10500, 198, 3, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Marowak - Dynamic Punch - TM01
  (105, 10500, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 15),
  -- Marowak - Headbutt - TM02
  (105, 10500, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 16),
  -- Marowak - Curse - TM03
  (105, 10500, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 17),
  -- Marowak - Toxic - TM06
  (105, 10500, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 18),
  -- Marowak - Rock Smash - TM08
  (105, 10500, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 19),
  -- Marowak - Hidden Power - TM10
  (105, 10500, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 20),
  -- Marowak - Sunny Day - TM11
  (105, 10500, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 21),
  -- Marowak - Snore - TM13
  (105, 10500, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 22),
  -- Marowak - Blizzard - TM14
  (105, 10500, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 23),
  -- Marowak - Hyper Beam - TM15
  (105, 10500, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 24),
  -- Marowak - Icy Wind - TM16
  (105, 10500, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 25),
  -- Marowak - Protect - TM17
  (105, 10500, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 26),
  -- Marowak - Endure - TM20
  (105, 10500, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 27),
  -- Marowak - Frustration - TM21
  (105, 10500, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 28),
  -- Marowak - Iron Tail - TM23
  (105, 10500, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 29),
  -- Marowak - Earthquake - TM26
  (105, 10500, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 30),
  -- Marowak - Return - TM27
  (105, 10500, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 31),
  -- Marowak - Dig - TM28
  (105, 10500, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 32),
  -- Marowak - Mud-Slap - TM31
  (105, 10500, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 33),
  -- Marowak - Double Team - TM32
  (105, 10500, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 34),
  -- Marowak - Swagger - TM34
  (105, 10500, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 35),
  -- Marowak - Sleep Talk - TM35
  (105, 10500, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 36),
  -- Marowak - Sandstorm - TM37
  (105, 10500, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 37),
  -- Marowak - Fire Blast - TM38
  (105, 10500, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 38),
  -- Marowak - Thunder Punch - TM41
  (105, 10500, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 39),
  -- Marowak - Detect - TM43
  (105, 10500, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 40),
  -- Marowak - Rest - TM44
  (105, 10500, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 41),
  -- Marowak - Attract - TM45
  (105, 10500, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 42),
  -- Marowak - Thief - TM46
  (105, 10500, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 43),
  -- Marowak - Fire Punch - TM48
  (105, 10500, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 44),
  -- Marowak - Strength - HM04
  (105, 10500, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 45),
  -- Hitmonlee - Double Kick - Level 1
  (106, 10600, 24, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmonlee - Meditate - Level 6
  (106, 10600, 96, 3, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Hitmonlee - Rolling Kick - Level 11
  (106, 10600, 27, 3, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Hitmonlee - Jump Kick - Level 16
  (106, 10600, 26, 3, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Hitmonlee - Focus Energy - Level 21
  (106, 10600, 116, 3, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Hitmonlee - High Jump Kick - Level 26
  (106, 10600, 136, 3, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Hitmonlee - Mind Reader - Level 31
  (106, 10600, 170, 3, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Hitmonlee - Foresight - Level 36
  (106, 10600, 193, 3, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Hitmonlee - Endure - Level 41
  (106, 10600, 203, 3, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Hitmonlee - Mega Kick - Level 46
  (106, 10600, 25, 3, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Hitmonlee - Reversal - Level 51
  (106, 10600, 179, 3, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Hitmonlee - Dynamic Punch - TM01
  (106, 10600, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 12),
  -- Hitmonlee - Headbutt - TM02
  (106, 10600, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 13),
  -- Hitmonlee - Curse - TM03
  (106, 10600, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 14),
  -- Hitmonlee - Toxic - TM06
  (106, 10600, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 15),
  -- Hitmonlee - Rock Smash - TM08
  (106, 10600, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 16),
  -- Hitmonlee - Hidden Power - TM10
  (106, 10600, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 17),
  -- Hitmonlee - Sunny Day - TM11
  (106, 10600, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 18),
  -- Hitmonlee - Snore - TM13
  (106, 10600, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 19),
  -- Hitmonlee - Protect - TM17
  (106, 10600, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Hitmonlee - Endure - TM20
  (106, 10600, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Hitmonlee - Frustration - TM21
  (106, 10600, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Hitmonlee - Return - TM27
  (106, 10600, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 23),
  -- Hitmonlee - Mud-Slap - TM31
  (106, 10600, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 24),
  -- Hitmonlee - Double Team - TM32
  (106, 10600, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 25),
  -- Hitmonlee - Swagger - TM34
  (106, 10600, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Hitmonlee - Sleep Talk - TM35
  (106, 10600, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Hitmonlee - Swift - TM39
  (106, 10600, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 28),
  -- Hitmonlee - Detect - TM43
  (106, 10600, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 29),
  -- Hitmonlee - Rest - TM44
  (106, 10600, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 30),
  -- Hitmonlee - Attract - TM45
  (106, 10600, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 31),
  -- Hitmonlee - Thief - TM46
  (106, 10600, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 32),
  -- Hitmonlee - Strength - HM04
  (106, 10600, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 33),
  -- Hitmonchan - Comet Punch - Level 1
  (107, 10700, 4, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmonchan - Agility - Level 7
  (107, 10700, 97, 3, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Hitmonchan - Pursuit - Level 13
  (107, 10700, 228, 3, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Hitmonchan - Thunder Punch - Level 26
  (107, 10700, 9, 3, NULL, 1, 26, NULL, NULL, NULL, 4),
  -- Hitmonchan - Ice Punch - Level 26
  (107, 10700, 8, 3, NULL, 1, 26, NULL, NULL, NULL, 5),
  -- Hitmonchan - Fire Punch - Level 26
  (107, 10700, 7, 3, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Hitmonchan - Mach Punch - Level 32
  (107, 10700, 183, 3, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Hitmonchan - Mega Punch - Level 38
  (107, 10700, 5, 3, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Hitmonchan - Detect - Level 44
  (107, 10700, 197, 3, NULL, 1, 44, NULL, NULL, NULL, 9),
  -- Hitmonchan - Counter - Level 50
  (107, 10700, 68, 3, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Hitmonchan - Dynamic Punch - TM01
  (107, 10700, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 11),
  -- Hitmonchan - Headbutt - TM02
  (107, 10700, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 12),
  -- Hitmonchan - Curse - TM03
  (107, 10700, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 13),
  -- Hitmonchan - Toxic - TM06
  (107, 10700, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Hitmonchan - Rock Smash - TM08
  (107, 10700, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 15),
  -- Hitmonchan - Hidden Power - TM10
  (107, 10700, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 16),
  -- Hitmonchan - Sunny Day - TM11
  (107, 10700, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 17),
  -- Hitmonchan - Snore - TM13
  (107, 10700, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 18),
  -- Hitmonchan - Protect - TM17
  (107, 10700, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Hitmonchan - Endure - TM20
  (107, 10700, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 20),
  -- Hitmonchan - Frustration - TM21
  (107, 10700, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 21),
  -- Hitmonchan - Return - TM27
  (107, 10700, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 22),
  -- Hitmonchan - Mud-Slap - TM31
  (107, 10700, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 23),
  -- Hitmonchan - Double Team - TM32
  (107, 10700, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 24),
  -- Hitmonchan - Ice Punch - TM33
  (107, 10700, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 25),
  -- Hitmonchan - Swagger - TM34
  (107, 10700, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Hitmonchan - Sleep Talk - TM35
  (107, 10700, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Hitmonchan - Swift - TM39
  (107, 10700, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 28),
  -- Hitmonchan - Thunder Punch - TM41
  (107, 10700, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 29),
  -- Hitmonchan - Detect - TM43
  (107, 10700, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 30),
  -- Hitmonchan - Rest - TM44
  (107, 10700, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 31),
  -- Hitmonchan - Attract - TM45
  (107, 10700, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 32),
  -- Hitmonchan - Thief - TM46
  (107, 10700, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 33),
  -- Hitmonchan - Fire Punch - TM48
  (107, 10700, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 34),
  -- Hitmonchan - Strength - HM04
  (107, 10700, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 35),
  -- Lickitung - Lick - Level 1
  (108, 10800, 122, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lickitung - Supersonic - Level 7
  (108, 10800, 48, 3, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Lickitung - Defense Curl - Level 13
  (108, 10800, 111, 3, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Lickitung - Stomp - Level 19
  (108, 10800, 23, 3, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Lickitung - Wrap - Level 25
  (108, 10800, 35, 3, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Lickitung - Disable - Level 31
  (108, 10800, 50, 3, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Lickitung - Slam - Level 37
  (108, 10800, 21, 3, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Lickitung - Screech - Level 43
  (108, 10800, 103, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Lickitung - Dynamic Punch - TM01
  (108, 10800, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 9),
  -- Lickitung - Headbutt - TM02
  (108, 10800, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 10),
  -- Lickitung - Curse - TM03
  (108, 10800, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Lickitung - Rollout - TM04
  (108, 10800, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 12),
  -- Lickitung - Toxic - TM06
  (108, 10800, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Lickitung - Rock Smash - TM08
  (108, 10800, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 14),
  -- Lickitung - Psych Up - TM09
  (108, 10800, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 15),
  -- Lickitung - Hidden Power - TM10
  (108, 10800, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 16),
  -- Lickitung - Sunny Day - TM11
  (108, 10800, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 17),
  -- Lickitung - Snore - TM13
  (108, 10800, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 18),
  -- Lickitung - Blizzard - TM14
  (108, 10800, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 19),
  -- Lickitung - Hyper Beam - TM15
  (108, 10800, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 20),
  -- Lickitung - Icy Wind - TM16
  (108, 10800, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 21),
  -- Lickitung - Protect - TM17
  (108, 10800, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 22),
  -- Lickitung - Rain Dance - TM18
  (108, 10800, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 23),
  -- Lickitung - Endure - TM20
  (108, 10800, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 24),
  -- Lickitung - Frustration - TM21
  (108, 10800, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 25),
  -- Lickitung - Iron Tail - TM23
  (108, 10800, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 26),
  -- Lickitung - Thunder - TM25
  (108, 10800, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 27),
  -- Lickitung - Earthquake - TM26
  (108, 10800, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 28),
  -- Lickitung - Return - TM27
  (108, 10800, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 29),
  -- Lickitung - Shadow Ball - TM30
  (108, 10800, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 30),
  -- Lickitung - Mud-Slap - TM31
  (108, 10800, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 31),
  -- Lickitung - Double Team - TM32
  (108, 10800, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 32),
  -- Lickitung - Ice Punch - TM33
  (108, 10800, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 33),
  -- Lickitung - Swagger - TM34
  (108, 10800, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 34),
  -- Lickitung - Sleep Talk - TM35
  (108, 10800, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 35),
  -- Lickitung - Sandstorm - TM37
  (108, 10800, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 36),
  -- Lickitung - Fire Blast - TM38
  (108, 10800, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 37),
  -- Lickitung - Defense Curl - TM40
  (108, 10800, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 38),
  -- Lickitung - Thunder Punch - TM41
  (108, 10800, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 39),
  -- Lickitung - Dream Eater - TM42
  (108, 10800, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 40),
  -- Lickitung - Rest - TM44
  (108, 10800, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 41),
  -- Lickitung - Attract - TM45
  (108, 10800, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 42),
  -- Lickitung - Thief - TM46
  (108, 10800, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 43),
  -- Lickitung - Fire Punch - TM48
  (108, 10800, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 44),
  -- Lickitung - Nightmare - TM50
  (108, 10800, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 45),
  -- Lickitung - Cut - HM01
  (108, 10800, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 46),
  -- Lickitung - Surf - HM03
  (108, 10800, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 47),
  -- Lickitung - Strength - HM04
  (108, 10800, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 48),
  -- Lickitung - Belly Drum - Egg Move
  (108, 10800, 187, 3, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lickitung - Body Slam - Egg Move
  (108, 10800, 34, 3, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lickitung - Magnitude - Egg Move
  (108, 10800, 222, 3, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Koffing - Poison Gas - Level 1
  (109, 10900, 139, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Koffing - Tackle - Level 1
  (109, 10900, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Koffing - Smog - Level 9
  (109, 10900, 123, 3, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Koffing - Self-Destruct - Level 17
  (109, 10900, 120, 3, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Koffing - Sludge - Level 21
  (109, 10900, 124, 3, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Koffing - Smokescreen - Level 25
  (109, 10900, 108, 3, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Koffing - Haze - Level 33
  (109, 10900, 114, 3, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Koffing - Explosion - Level 41
  (109, 10900, 153, 3, NULL, 1, 41, NULL, NULL, NULL, 8),
  -- Koffing - Destiny Bond - Level 45
  (109, 10900, 194, 3, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Koffing - Curse - TM03
  (109, 10900, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Koffing - Rollout - TM04
  (109, 10900, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 11),
  -- Koffing - Toxic - TM06
  (109, 10900, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Koffing - Zap Cannon - TM07
  (109, 10900, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 13),
  -- Koffing - Hidden Power - TM10
  (109, 10900, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Koffing - Sunny Day - TM11
  (109, 10900, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 15),
  -- Koffing - Snore - TM13
  (109, 10900, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Koffing - Protect - TM17
  (109, 10900, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Koffing - Endure - TM20
  (109, 10900, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 18),
  -- Koffing - Frustration - TM21
  (109, 10900, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 19),
  -- Koffing - Thunder - TM25
  (109, 10900, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 20),
  -- Koffing - Return - TM27
  (109, 10900, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 21),
  -- Koffing - Double Team - TM32
  (109, 10900, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 22),
  -- Koffing - Swagger - TM34
  (109, 10900, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 23),
  -- Koffing - Sleep Talk - TM35
  (109, 10900, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 24),
  -- Koffing - Sludge Bomb - TM36
  (109, 10900, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 25),
  -- Koffing - Fire Blast - TM38
  (109, 10900, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 26),
  -- Koffing - Rest - TM44
  (109, 10900, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 27),
  -- Koffing - Attract - TM45
  (109, 10900, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 28),
  -- Koffing - Thief - TM46
  (109, 10900, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 29),
  -- Koffing - Destiny Bond - Egg Move
  (109, 10900, 194, 3, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Koffing - Pain Split - Egg Move
  (109, 10900, 220, 3, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Koffing - Psybeam - Egg Move
  (109, 10900, 60, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Koffing - Psywave - Egg Move
  (109, 10900, 149, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Koffing - Screech - Egg Move
  (109, 10900, 103, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Weezing - Poison Gas - Level 1
  (110, 11000, 139, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weezing - Tackle - Level 1
  (110, 11000, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weezing - Smog - Level 1
  (110, 11000, 123, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weezing - Self-Destruct - Level 1
  (110, 11000, 120, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Weezing - Smog - Level 9
  (110, 11000, 123, 3, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Weezing - Self-Destruct - Level 17
  (110, 11000, 120, 3, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Weezing - Sludge - Level 21
  (110, 11000, 124, 3, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Weezing - Smokescreen - Level 25
  (110, 11000, 108, 3, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Weezing - Haze - Level 33
  (110, 11000, 114, 3, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Weezing - Explosion - Level 44
  (110, 11000, 153, 3, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Weezing - Destiny Bond - Level 51
  (110, 11000, 194, 3, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Weezing - Curse - TM03
  (110, 11000, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Weezing - Rollout - TM04
  (110, 11000, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 13),
  -- Weezing - Toxic - TM06
  (110, 11000, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Weezing - Zap Cannon - TM07
  (110, 11000, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 15),
  -- Weezing - Hidden Power - TM10
  (110, 11000, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 16),
  -- Weezing - Sunny Day - TM11
  (110, 11000, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 17),
  -- Weezing - Snore - TM13
  (110, 11000, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 18),
  -- Weezing - Hyper Beam - TM15
  (110, 11000, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 19),
  -- Weezing - Protect - TM17
  (110, 11000, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Weezing - Endure - TM20
  (110, 11000, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Weezing - Frustration - TM21
  (110, 11000, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Weezing - Thunder - TM25
  (110, 11000, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 23),
  -- Weezing - Return - TM27
  (110, 11000, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 24),
  -- Weezing - Double Team - TM32
  (110, 11000, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 25),
  -- Weezing - Swagger - TM34
  (110, 11000, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Weezing - Sleep Talk - TM35
  (110, 11000, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Weezing - Sludge Bomb - TM36
  (110, 11000, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 28),
  -- Weezing - Fire Blast - TM38
  (110, 11000, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 29),
  -- Weezing - Rest - TM44
  (110, 11000, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 30),
  -- Weezing - Attract - TM45
  (110, 11000, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 31),
  -- Weezing - Thief - TM46
  (110, 11000, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 32),
  -- Rhyhorn - Horn Attack - Level 1
  (111, 11100, 30, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhyhorn - Tail Whip - Level 1
  (111, 11100, 39, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhyhorn - Stomp - Level 13
  (111, 11100, 23, 3, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Rhyhorn - Fury Attack - Level 19
  (111, 11100, 31, 3, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Rhyhorn - Scary Face - Level 31
  (111, 11100, 184, 3, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Rhyhorn - Horn Drill - Level 37
  (111, 11100, 32, 3, NULL, 1, 37, NULL, NULL, NULL, 6),
  -- Rhyhorn - Take Down - Level 49
  (111, 11100, 36, 3, NULL, 1, 49, NULL, NULL, NULL, 7),
  -- Rhyhorn - Earthquake - Level 55
  (111, 11100, 89, 3, NULL, 1, 55, NULL, NULL, NULL, 8),
  -- Rhyhorn - Headbutt - TM02
  (111, 11100, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 9),
  -- Rhyhorn - Curse - TM03
  (111, 11100, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Rhyhorn - Rollout - TM04
  (111, 11100, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 11),
  -- Rhyhorn - Roar - TM05
  (111, 11100, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 12),
  -- Rhyhorn - Toxic - TM06
  (111, 11100, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Rhyhorn - Zap Cannon - TM07
  (111, 11100, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 14),
  -- Rhyhorn - Rock Smash - TM08
  (111, 11100, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 15),
  -- Rhyhorn - Hidden Power - TM10
  (111, 11100, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 16),
  -- Rhyhorn - Sunny Day - TM11
  (111, 11100, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 17),
  -- Rhyhorn - Snore - TM13
  (111, 11100, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 18),
  -- Rhyhorn - Blizzard - TM14
  (111, 11100, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 19),
  -- Rhyhorn - Icy Wind - TM16
  (111, 11100, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 20),
  -- Rhyhorn - Protect - TM17
  (111, 11100, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 21),
  -- Rhyhorn - Endure - TM20
  (111, 11100, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Rhyhorn - Frustration - TM21
  (111, 11100, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Rhyhorn - Iron Tail - TM23
  (111, 11100, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 24),
  -- Rhyhorn - Thunder - TM25
  (111, 11100, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 25),
  -- Rhyhorn - Earthquake - TM26
  (111, 11100, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 26),
  -- Rhyhorn - Return - TM27
  (111, 11100, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 27),
  -- Rhyhorn - Dig - TM28
  (111, 11100, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 28),
  -- Rhyhorn - Mud-Slap - TM31
  (111, 11100, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 29),
  -- Rhyhorn - Double Team - TM32
  (111, 11100, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 30),
  -- Rhyhorn - Swagger - TM34
  (111, 11100, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 31),
  -- Rhyhorn - Sleep Talk - TM35
  (111, 11100, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 32),
  -- Rhyhorn - Sandstorm - TM37
  (111, 11100, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 33),
  -- Rhyhorn - Fire Blast - TM38
  (111, 11100, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 34),
  -- Rhyhorn - Rest - TM44
  (111, 11100, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 35),
  -- Rhyhorn - Attract - TM45
  (111, 11100, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 36),
  -- Rhyhorn - Strength - HM04
  (111, 11100, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 37),
  -- Rhyhorn - Counter - Egg Move
  (111, 11100, 68, 3, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Rhyhorn - Crunch - Egg Move
  (111, 11100, 242, 3, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Rhyhorn - Magnitude - Egg Move
  (111, 11100, 222, 3, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Rhyhorn - Pursuit - Egg Move
  (111, 11100, 228, 3, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Rhyhorn - Reversal - Egg Move
  (111, 11100, 179, 3, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Rhyhorn - Rock Slide - Egg Move
  (111, 11100, 157, 3, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Rhyhorn - Thrash - Egg Move
  (111, 11100, 37, 3, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Rhydon - Horn Attack - Level 1
  (112, 11200, 30, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhydon - Tail Whip - Level 1
  (112, 11200, 39, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhydon - Stomp - Level 1
  (112, 11200, 23, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rhydon - Fury Attack - Level 1
  (112, 11200, 31, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rhydon - Stomp - Level 13
  (112, 11200, 23, 3, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Rhydon - Fury Attack - Level 19
  (112, 11200, 31, 3, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Rhydon - Scary Face - Level 31
  (112, 11200, 184, 3, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Rhydon - Horn Drill - Level 37
  (112, 11200, 32, 3, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Rhydon - Take Down - Level 54
  (112, 11200, 36, 3, NULL, 1, 54, NULL, NULL, NULL, 9),
  -- Rhydon - Earthquake - Level 65
  (112, 11200, 89, 3, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Rhydon - Dynamic Punch - TM01
  (112, 11200, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 11),
  -- Rhydon - Headbutt - TM02
  (112, 11200, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 12),
  -- Rhydon - Curse - TM03
  (112, 11200, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 13),
  -- Rhydon - Rollout - TM04
  (112, 11200, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 14),
  -- Rhydon - Roar - TM05
  (112, 11200, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 15),
  -- Rhydon - Toxic - TM06
  (112, 11200, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 16),
  -- Rhydon - Zap Cannon - TM07
  (112, 11200, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 17),
  -- Rhydon - Rock Smash - TM08
  (112, 11200, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 18),
  -- Rhydon - Hidden Power - TM10
  (112, 11200, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 19),
  -- Rhydon - Sunny Day - TM11
  (112, 11200, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 20),
  -- Rhydon - Snore - TM13
  (112, 11200, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 21),
  -- Rhydon - Blizzard - TM14
  (112, 11200, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 22),
  -- Rhydon - Hyper Beam - TM15
  (112, 11200, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 23),
  -- Rhydon - Icy Wind - TM16
  (112, 11200, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 24),
  -- Rhydon - Protect - TM17
  (112, 11200, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 25),
  -- Rhydon - Endure - TM20
  (112, 11200, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 26),
  -- Rhydon - Frustration - TM21
  (112, 11200, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 27),
  -- Rhydon - Iron Tail - TM23
  (112, 11200, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 28),
  -- Rhydon - Thunder - TM25
  (112, 11200, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 29),
  -- Rhydon - Earthquake - TM26
  (112, 11200, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 30),
  -- Rhydon - Return - TM27
  (112, 11200, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 31),
  -- Rhydon - Dig - TM28
  (112, 11200, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 32),
  -- Rhydon - Mud-Slap - TM31
  (112, 11200, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 33),
  -- Rhydon - Double Team - TM32
  (112, 11200, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 34),
  -- Rhydon - Swagger - TM34
  (112, 11200, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 35),
  -- Rhydon - Sleep Talk - TM35
  (112, 11200, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 36),
  -- Rhydon - Sandstorm - TM37
  (112, 11200, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 37),
  -- Rhydon - Fire Blast - TM38
  (112, 11200, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 38),
  -- Rhydon - Thunder Punch - TM41
  (112, 11200, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 39),
  -- Rhydon - Rest - TM44
  (112, 11200, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 40),
  -- Rhydon - Attract - TM45
  (112, 11200, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 41),
  -- Rhydon - Fire Punch - TM48
  (112, 11200, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 42),
  -- Rhydon - Fury Cutter - TM49
  (112, 11200, 210, 3, NULL, 2, NULL, NULL, 3002049, NULL, 43),
  -- Rhydon - Surf - HM03
  (112, 11200, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 44),
  -- Rhydon - Strength - HM04
  (112, 11200, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 45),
  -- Chansey - Pound - Level 1
  (113, 11300, 1, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chansey - Growl - Level 5
  (113, 11300, 45, 3, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Chansey - Tail Whip - Level 9
  (113, 11300, 39, 3, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Chansey - Soft-Boiled - Level 13
  (113, 11300, 135, 3, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Chansey - Double Slap - Level 17
  (113, 11300, 3, 3, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Chansey - Minimize - Level 23
  (113, 11300, 107, 3, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Chansey - Sing - Level 29
  (113, 11300, 47, 3, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Chansey - Egg Bomb - Level 35
  (113, 11300, 121, 3, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Chansey - Defense Curl - Level 41
  (113, 11300, 111, 3, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Chansey - Light Screen - Level 49
  (113, 11300, 113, 3, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Chansey - Double-Edge - Level 57
  (113, 11300, 38, 3, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Chansey - Dynamic Punch - TM01
  (113, 11300, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 12),
  -- Chansey - Headbutt - TM02
  (113, 11300, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 13),
  -- Chansey - Curse - TM03
  (113, 11300, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 14),
  -- Chansey - Rollout - TM04
  (113, 11300, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 15),
  -- Chansey - Toxic - TM06
  (113, 11300, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 16),
  -- Chansey - Zap Cannon - TM07
  (113, 11300, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 17),
  -- Chansey - Rock Smash - TM08
  (113, 11300, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 18),
  -- Chansey - Psych Up - TM09
  (113, 11300, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 19),
  -- Chansey - Hidden Power - TM10
  (113, 11300, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 20),
  -- Chansey - Sunny Day - TM11
  (113, 11300, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 21),
  -- Chansey - Snore - TM13
  (113, 11300, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 22),
  -- Chansey - Blizzard - TM14
  (113, 11300, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 23),
  -- Chansey - Hyper Beam - TM15
  (113, 11300, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 24),
  -- Chansey - Icy Wind - TM16
  (113, 11300, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 25),
  -- Chansey - Protect - TM17
  (113, 11300, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 26),
  -- Chansey - Rain Dance - TM18
  (113, 11300, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 27),
  -- Chansey - Endure - TM20
  (113, 11300, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 28),
  -- Chansey - Frustration - TM21
  (113, 11300, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 29),
  -- Chansey - Solar Beam - TM22
  (113, 11300, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 30),
  -- Chansey - Iron Tail - TM23
  (113, 11300, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 31),
  -- Chansey - Thunder - TM25
  (113, 11300, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 32),
  -- Chansey - Return - TM27
  (113, 11300, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 33),
  -- Chansey - Psychic - TM29
  (113, 11300, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 34),
  -- Chansey - Shadow Ball - TM30
  (113, 11300, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 35),
  -- Chansey - Mud-Slap - TM31
  (113, 11300, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 36),
  -- Chansey - Double Team - TM32
  (113, 11300, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 37),
  -- Chansey - Swagger - TM34
  (113, 11300, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 38),
  -- Chansey - Sleep Talk - TM35
  (113, 11300, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 39),
  -- Chansey - Sandstorm - TM37
  (113, 11300, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 40),
  -- Chansey - Fire Blast - TM38
  (113, 11300, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 41),
  -- Chansey - Defense Curl - TM40
  (113, 11300, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 42),
  -- Chansey - Dream Eater - TM42
  (113, 11300, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 43),
  -- Chansey - Rest - TM44
  (113, 11300, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 44),
  -- Chansey - Attract - TM45
  (113, 11300, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 45),
  -- Chansey - Strength - HM04
  (113, 11300, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 46),
  -- Chansey - Flash - HM05
  (113, 11300, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 47),
  -- Chansey - Heal Bell - Egg Move
  (113, 11300, 215, 3, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Chansey - Metronome - Egg Move
  (113, 11300, 118, 3, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Chansey - Present - Egg Move
  (113, 11300, 217, 3, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tangela - Constrict - Level 1
  (114, 11400, 132, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tangela - Sleep Powder - Level 4
  (114, 11400, 79, 3, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Tangela - Absorb - Level 10
  (114, 11400, 71, 3, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Tangela - Poison Powder - Level 13
  (114, 11400, 77, 3, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Tangela - Vine Whip - Level 19
  (114, 11400, 22, 3, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Tangela - Bind - Level 25
  (114, 11400, 20, 3, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Tangela - Mega Drain - Level 31
  (114, 11400, 72, 3, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Tangela - Stun Spore - Level 34
  (114, 11400, 78, 3, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Tangela - Slam - Level 40
  (114, 11400, 21, 3, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Tangela - Growth - Level 46
  (114, 11400, 74, 3, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Tangela - Headbutt - TM02
  (114, 11400, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Tangela - Curse - TM03
  (114, 11400, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Tangela - Toxic - TM06
  (114, 11400, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Tangela - Psych Up - TM09
  (114, 11400, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 14),
  -- Tangela - Hidden Power - TM10
  (114, 11400, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Tangela - Sunny Day - TM11
  (114, 11400, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 16),
  -- Tangela - Sweet Scent - TM12
  (114, 11400, 230, 3, NULL, 2, NULL, NULL, 3002012, NULL, 17),
  -- Tangela - Snore - TM13
  (114, 11400, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 18),
  -- Tangela - Hyper Beam - TM15
  (114, 11400, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 19),
  -- Tangela - Protect - TM17
  (114, 11400, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Tangela - Giga Drain - TM19
  (114, 11400, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 21),
  -- Tangela - Endure - TM20
  (114, 11400, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Tangela - Frustration - TM21
  (114, 11400, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Tangela - Solar Beam - TM22
  (114, 11400, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 24),
  -- Tangela - Return - TM27
  (114, 11400, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 25),
  -- Tangela - Double Team - TM32
  (114, 11400, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 26),
  -- Tangela - Swagger - TM34
  (114, 11400, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 27),
  -- Tangela - Sleep Talk - TM35
  (114, 11400, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 28),
  -- Tangela - Sludge Bomb - TM36
  (114, 11400, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 29),
  -- Tangela - Rest - TM44
  (114, 11400, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 30),
  -- Tangela - Attract - TM45
  (114, 11400, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 31),
  -- Tangela - Thief - TM46
  (114, 11400, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 32),
  -- Tangela - Cut - HM01
  (114, 11400, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 33),
  -- Tangela - Flash - HM05
  (114, 11400, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 34),
  -- Tangela - Amnesia - Egg Move
  (114, 11400, 133, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Tangela - Confusion - Egg Move
  (114, 11400, 93, 3, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Tangela - Flail - Egg Move
  (114, 11400, 175, 3, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Tangela - Mega Drain - Egg Move
  (114, 11400, 72, 3, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Tangela - Reflect - Egg Move
  (114, 11400, 115, 3, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Kangaskhan - Comet Punch - Level 1
  (115, 11500, 4, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kangaskhan - Leer - Level 7
  (115, 11500, 43, 3, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Kangaskhan - Bite - Level 13
  (115, 11500, 44, 3, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Kangaskhan - Tail Whip - Level 19
  (115, 11500, 39, 3, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Kangaskhan - Mega Punch - Level 25
  (115, 11500, 5, 3, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Kangaskhan - Rage - Level 31
  (115, 11500, 99, 3, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Kangaskhan - Endure - Level 37
  (115, 11500, 203, 3, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Kangaskhan - Dizzy Punch - Level 43
  (115, 11500, 146, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Kangaskhan - Reversal - Level 49
  (115, 11500, 179, 3, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Kangaskhan - Dynamic Punch - TM01
  (115, 11500, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 10),
  -- Kangaskhan - Headbutt - TM02
  (115, 11500, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Kangaskhan - Curse - TM03
  (115, 11500, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Kangaskhan - Roar - TM05
  (115, 11500, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 13),
  -- Kangaskhan - Toxic - TM06
  (115, 11500, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Kangaskhan - Zap Cannon - TM07
  (115, 11500, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 15),
  -- Kangaskhan - Rock Smash - TM08
  (115, 11500, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 16),
  -- Kangaskhan - Hidden Power - TM10
  (115, 11500, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 17),
  -- Kangaskhan - Sunny Day - TM11
  (115, 11500, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 18),
  -- Kangaskhan - Snore - TM13
  (115, 11500, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 19),
  -- Kangaskhan - Blizzard - TM14
  (115, 11500, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 20),
  -- Kangaskhan - Hyper Beam - TM15
  (115, 11500, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 21),
  -- Kangaskhan - Icy Wind - TM16
  (115, 11500, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 22),
  -- Kangaskhan - Protect - TM17
  (115, 11500, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 23),
  -- Kangaskhan - Rain Dance - TM18
  (115, 11500, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 24),
  -- Kangaskhan - Endure - TM20
  (115, 11500, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 25),
  -- Kangaskhan - Frustration - TM21
  (115, 11500, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 26),
  -- Kangaskhan - Iron Tail - TM23
  (115, 11500, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 27),
  -- Kangaskhan - Thunder - TM25
  (115, 11500, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 28),
  -- Kangaskhan - Earthquake - TM26
  (115, 11500, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 29),
  -- Kangaskhan - Return - TM27
  (115, 11500, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 30),
  -- Kangaskhan - Shadow Ball - TM30
  (115, 11500, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 31),
  -- Kangaskhan - Mud-Slap - TM31
  (115, 11500, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 32),
  -- Kangaskhan - Double Team - TM32
  (115, 11500, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 33),
  -- Kangaskhan - Ice Punch - TM33
  (115, 11500, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 34),
  -- Kangaskhan - Swagger - TM34
  (115, 11500, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 35),
  -- Kangaskhan - Sleep Talk - TM35
  (115, 11500, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 36),
  -- Kangaskhan - Sandstorm - TM37
  (115, 11500, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 37),
  -- Kangaskhan - Fire Blast - TM38
  (115, 11500, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 38),
  -- Kangaskhan - Thunder Punch - TM41
  (115, 11500, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 39),
  -- Kangaskhan - Rest - TM44
  (115, 11500, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 40),
  -- Kangaskhan - Attract - TM45
  (115, 11500, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 41),
  -- Kangaskhan - Fire Punch - TM48
  (115, 11500, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 42),
  -- Kangaskhan - Fury Cutter - TM49
  (115, 11500, 210, 3, NULL, 2, NULL, NULL, 3002049, NULL, 43),
  -- Kangaskhan - Surf - HM03
  (115, 11500, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 44),
  -- Kangaskhan - Strength - HM04
  (115, 11500, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 45),
  -- Kangaskhan - Disable - Egg Move
  (115, 11500, 50, 3, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Kangaskhan - Focus Energy - Egg Move
  (115, 11500, 116, 3, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Kangaskhan - Foresight - Egg Move
  (115, 11500, 193, 3, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Kangaskhan - Safeguard - Egg Move
  (115, 11500, 219, 3, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Kangaskhan - Stomp - Egg Move
  (115, 11500, 23, 3, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Horsea - Bubble - Level 1
  (116, 11600, 145, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Horsea - Smokescreen - Level 8
  (116, 11600, 108, 3, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Horsea - Leer - Level 15
  (116, 11600, 43, 3, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Horsea - Water Gun - Level 22
  (116, 11600, 55, 3, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Horsea - Twister - Level 29
  (116, 11600, 239, 3, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Horsea - Agility - Level 36
  (116, 11600, 97, 3, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Horsea - Hydro Pump - Level 43
  (116, 11600, 56, 3, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Horsea - Headbutt - TM02
  (116, 11600, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 8),
  -- Horsea - Curse - TM03
  (116, 11600, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 9),
  -- Horsea - Toxic - TM06
  (116, 11600, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 10),
  -- Horsea - Hidden Power - TM10
  (116, 11600, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 11),
  -- Horsea - Snore - TM13
  (116, 11600, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 12),
  -- Horsea - Blizzard - TM14
  (116, 11600, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 13),
  -- Horsea - Icy Wind - TM16
  (116, 11600, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 14),
  -- Horsea - Protect - TM17
  (116, 11600, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 15),
  -- Horsea - Rain Dance - TM18
  (116, 11600, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 16),
  -- Horsea - Endure - TM20
  (116, 11600, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 17),
  -- Horsea - Frustration - TM21
  (116, 11600, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 18),
  -- Horsea - Dragon Breath - TM24
  (116, 11600, 225, 3, NULL, 2, NULL, NULL, 3002024, NULL, 19),
  -- Horsea - Return - TM27
  (116, 11600, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 20),
  -- Horsea - Double Team - TM32
  (116, 11600, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 21),
  -- Horsea - Swagger - TM34
  (116, 11600, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 22),
  -- Horsea - Sleep Talk - TM35
  (116, 11600, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 23),
  -- Horsea - Swift - TM39
  (116, 11600, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 24),
  -- Horsea - Rest - TM44
  (116, 11600, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 25),
  -- Horsea - Attract - TM45
  (116, 11600, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 26),
  -- Horsea - Surf - HM03
  (116, 11600, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 27),
  -- Horsea - Whirlpool - HM06
  (116, 11600, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 28),
  -- Horsea - Waterfall - HM07
  (116, 11600, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 29),
  -- Horsea - Aurora Beam - Egg Move
  (116, 11600, 62, 3, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Horsea - Disable - Egg Move
  (116, 11600, 50, 3, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Horsea - Dragon Rage - Egg Move
  (116, 11600, 82, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Horsea - Flail - Egg Move
  (116, 11600, 175, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Horsea - Octazooka - Egg Move
  (116, 11600, 190, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Horsea - Splash - Egg Move
  (116, 11600, 150, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Seadra - Bubble - Level 1
  (117, 11700, 145, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seadra - Smokescreen - Level 1
  (117, 11700, 108, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seadra - Leer - Level 1
  (117, 11700, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Seadra - Water Gun - Level 1
  (117, 11700, 55, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Seadra - Smokescreen - Level 8
  (117, 11700, 108, 3, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Seadra - Leer - Level 15
  (117, 11700, 43, 3, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Seadra - Water Gun - Level 22
  (117, 11700, 55, 3, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Seadra - Twister - Level 29
  (117, 11700, 239, 3, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Seadra - Agility - Level 40
  (117, 11700, 97, 3, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Seadra - Hydro Pump - Level 51
  (117, 11700, 56, 3, NULL, 1, 51, NULL, NULL, NULL, 10),
  -- Seadra - Headbutt - TM02
  (117, 11700, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Seadra - Curse - TM03
  (117, 11700, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Seadra - Toxic - TM06
  (117, 11700, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Seadra - Hidden Power - TM10
  (117, 11700, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Seadra - Snore - TM13
  (117, 11700, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 15),
  -- Seadra - Blizzard - TM14
  (117, 11700, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 16),
  -- Seadra - Hyper Beam - TM15
  (117, 11700, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 17),
  -- Seadra - Icy Wind - TM16
  (117, 11700, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 18),
  -- Seadra - Protect - TM17
  (117, 11700, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Seadra - Rain Dance - TM18
  (117, 11700, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 20),
  -- Seadra - Endure - TM20
  (117, 11700, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Seadra - Frustration - TM21
  (117, 11700, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Seadra - Dragon Breath - TM24
  (117, 11700, 225, 3, NULL, 2, NULL, NULL, 3002024, NULL, 23),
  -- Seadra - Return - TM27
  (117, 11700, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 24),
  -- Seadra - Double Team - TM32
  (117, 11700, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 25),
  -- Seadra - Swagger - TM34
  (117, 11700, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Seadra - Sleep Talk - TM35
  (117, 11700, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Seadra - Swift - TM39
  (117, 11700, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 28),
  -- Seadra - Rest - TM44
  (117, 11700, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 29),
  -- Seadra - Attract - TM45
  (117, 11700, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 30),
  -- Seadra - Surf - HM03
  (117, 11700, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 31),
  -- Seadra - Whirlpool - HM06
  (117, 11700, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 32),
  -- Seadra - Waterfall - HM07
  (117, 11700, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 33),
  -- Goldeen - Peck - Level 1
  (118, 11800, 64, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Goldeen - Tail Whip - Level 1
  (118, 11800, 39, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Goldeen - Supersonic - Level 10
  (118, 11800, 48, 3, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Goldeen - Horn Attack - Level 15
  (118, 11800, 30, 3, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Goldeen - Flail - Level 24
  (118, 11800, 175, 3, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Goldeen - Fury Attack - Level 29
  (118, 11800, 31, 3, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Goldeen - Waterfall - Level 38
  (118, 11800, 127, 3, NULL, 1, 38, NULL, NULL, NULL, 7),
  -- Goldeen - Horn Drill - Level 43
  (118, 11800, 32, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Goldeen - Agility - Level 52
  (118, 11800, 97, 3, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Goldeen - Curse - TM03
  (118, 11800, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Goldeen - Toxic - TM06
  (118, 11800, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Goldeen - Hidden Power - TM10
  (118, 11800, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 12),
  -- Goldeen - Snore - TM13
  (118, 11800, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 13),
  -- Goldeen - Blizzard - TM14
  (118, 11800, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 14),
  -- Goldeen - Icy Wind - TM16
  (118, 11800, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 15),
  -- Goldeen - Protect - TM17
  (118, 11800, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 16),
  -- Goldeen - Rain Dance - TM18
  (118, 11800, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 17),
  -- Goldeen - Endure - TM20
  (118, 11800, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 18),
  -- Goldeen - Frustration - TM21
  (118, 11800, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 19),
  -- Goldeen - Return - TM27
  (118, 11800, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 20),
  -- Goldeen - Double Team - TM32
  (118, 11800, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 21),
  -- Goldeen - Swagger - TM34
  (118, 11800, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 22),
  -- Goldeen - Sleep Talk - TM35
  (118, 11800, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 23),
  -- Goldeen - Swift - TM39
  (118, 11800, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 24),
  -- Goldeen - Rest - TM44
  (118, 11800, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 25),
  -- Goldeen - Attract - TM45
  (118, 11800, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 26),
  -- Goldeen - Surf - HM03
  (118, 11800, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 27),
  -- Goldeen - Waterfall - HM07
  (118, 11800, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 28),
  -- Goldeen - Haze - Egg Move
  (118, 11800, 114, 3, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Goldeen - Hydro Pump - Egg Move
  (118, 11800, 56, 3, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Goldeen - Psybeam - Egg Move
  (118, 11800, 60, 3, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Seaking - Peck - Level 1
  (119, 11900, 64, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seaking - Tail Whip - Level 1
  (119, 11900, 39, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seaking - Supersonic - Level 10
  (119, 11900, 48, 3, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Seaking - Horn Attack - Level 15
  (119, 11900, 30, 3, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Seaking - Flail - Level 24
  (119, 11900, 175, 3, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Seaking - Fury Attack - Level 29
  (119, 11900, 31, 3, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Seaking - Waterfall - Level 41
  (119, 11900, 127, 3, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Seaking - Horn Drill - Level 49
  (119, 11900, 32, 3, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Seaking - Agility - Level 61
  (119, 11900, 97, 3, NULL, 1, 61, NULL, NULL, NULL, 9),
  -- Seaking - Curse - TM03
  (119, 11900, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Seaking - Toxic - TM06
  (119, 11900, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Seaking - Hidden Power - TM10
  (119, 11900, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 12),
  -- Seaking - Snore - TM13
  (119, 11900, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 13),
  -- Seaking - Blizzard - TM14
  (119, 11900, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 14),
  -- Seaking - Hyper Beam - TM15
  (119, 11900, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 15),
  -- Seaking - Icy Wind - TM16
  (119, 11900, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 16),
  -- Seaking - Protect - TM17
  (119, 11900, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Seaking - Rain Dance - TM18
  (119, 11900, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 18),
  -- Seaking - Endure - TM20
  (119, 11900, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 19),
  -- Seaking - Frustration - TM21
  (119, 11900, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 20),
  -- Seaking - Return - TM27
  (119, 11900, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 21),
  -- Seaking - Double Team - TM32
  (119, 11900, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 22),
  -- Seaking - Swagger - TM34
  (119, 11900, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 23),
  -- Seaking - Sleep Talk - TM35
  (119, 11900, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 24),
  -- Seaking - Swift - TM39
  (119, 11900, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 25),
  -- Seaking - Rest - TM44
  (119, 11900, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 26),
  -- Seaking - Attract - TM45
  (119, 11900, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 27),
  -- Seaking - Surf - HM03
  (119, 11900, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 28),
  -- Seaking - Waterfall - HM07
  (119, 11900, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 29),
  -- Staryu - Tackle - Level 1
  (120, 12000, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staryu - Harden - Level 1
  (120, 12000, 106, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Staryu - Water Gun - Level 7
  (120, 12000, 55, 3, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Staryu - Rapid Spin - Level 13
  (120, 12000, 229, 3, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Staryu - Recover - Level 19
  (120, 12000, 105, 3, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Staryu - Swift - Level 25
  (120, 12000, 129, 3, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Staryu - Bubble Beam - Level 31
  (120, 12000, 61, 3, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Staryu - Minimize - Level 37
  (120, 12000, 107, 3, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Staryu - Light Screen - Level 43
  (120, 12000, 113, 3, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Staryu - Hydro Pump - Level 50
  (120, 12000, 56, 3, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Staryu - Curse - TM03
  (120, 12000, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Staryu - Toxic - TM06
  (120, 12000, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Staryu - Zap Cannon - TM07
  (120, 12000, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 13),
  -- Staryu - Psych Up - TM09
  (120, 12000, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 14),
  -- Staryu - Hidden Power - TM10
  (120, 12000, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Staryu - Snore - TM13
  (120, 12000, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Staryu - Blizzard - TM14
  (120, 12000, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 17),
  -- Staryu - Icy Wind - TM16
  (120, 12000, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 18),
  -- Staryu - Protect - TM17
  (120, 12000, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Staryu - Rain Dance - TM18
  (120, 12000, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 20),
  -- Staryu - Endure - TM20
  (120, 12000, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Staryu - Frustration - TM21
  (120, 12000, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Staryu - Thunder - TM25
  (120, 12000, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 23),
  -- Staryu - Return - TM27
  (120, 12000, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 24),
  -- Staryu - Psychic - TM29
  (120, 12000, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 25),
  -- Staryu - Double Team - TM32
  (120, 12000, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 26),
  -- Staryu - Swagger - TM34
  (120, 12000, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 27),
  -- Staryu - Sleep Talk - TM35
  (120, 12000, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 28),
  -- Staryu - Swift - TM39
  (120, 12000, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 29),
  -- Staryu - Rest - TM44
  (120, 12000, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 30),
  -- Staryu - Attract - TM45
  (120, 12000, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 31),
  -- Staryu - Surf - HM03
  (120, 12000, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 32),
  -- Staryu - Flash - HM05
  (120, 12000, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 33),
  -- Staryu - Whirlpool - HM06
  (120, 12000, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 34),
  -- Staryu - Waterfall - HM07
  (120, 12000, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 35),
  -- Staryu - Aurora Beam - Egg Move
  (120, 12000, 62, 3, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Staryu - Barrier - Egg Move
  (120, 12000, 112, 3, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Staryu - Supersonic - Egg Move
  (120, 12000, 48, 3, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Starmie - Tackle - Level 1
  (121, 12100, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Starmie - Rapid Spin - Level 1
  (121, 12100, 229, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Starmie - Recover - Level 1
  (121, 12100, 105, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Starmie - Bubble Beam - Level 1
  (121, 12100, 61, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Starmie - Confuse Ray - Level 37
  (121, 12100, 109, 3, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Starmie - Curse - TM03
  (121, 12100, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 6),
  -- Starmie - Toxic - TM06
  (121, 12100, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 7),
  -- Starmie - Zap Cannon - TM07
  (121, 12100, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 8),
  -- Starmie - Psych Up - TM09
  (121, 12100, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 9),
  -- Starmie - Hidden Power - TM10
  (121, 12100, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 10),
  -- Starmie - Snore - TM13
  (121, 12100, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 11),
  -- Starmie - Blizzard - TM14
  (121, 12100, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 12),
  -- Starmie - Hyper Beam - TM15
  (121, 12100, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 13),
  -- Starmie - Icy Wind - TM16
  (121, 12100, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 14),
  -- Starmie - Protect - TM17
  (121, 12100, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 15),
  -- Starmie - Rain Dance - TM18
  (121, 12100, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 16),
  -- Starmie - Endure - TM20
  (121, 12100, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 17),
  -- Starmie - Frustration - TM21
  (121, 12100, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 18),
  -- Starmie - Thunder - TM25
  (121, 12100, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 19),
  -- Starmie - Return - TM27
  (121, 12100, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 20),
  -- Starmie - Psychic - TM29
  (121, 12100, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 21),
  -- Starmie - Double Team - TM32
  (121, 12100, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 22),
  -- Starmie - Swagger - TM34
  (121, 12100, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 23),
  -- Starmie - Sleep Talk - TM35
  (121, 12100, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 24),
  -- Starmie - Swift - TM39
  (121, 12100, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 25),
  -- Starmie - Dream Eater - TM42
  (121, 12100, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 26),
  -- Starmie - Rest - TM44
  (121, 12100, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 27),
  -- Starmie - Attract - TM45
  (121, 12100, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 28),
  -- Starmie - Nightmare - TM50
  (121, 12100, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 29),
  -- Starmie - Surf - HM03
  (121, 12100, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 30),
  -- Starmie - Flash - HM05
  (121, 12100, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 31),
  -- Starmie - Whirlpool - HM06
  (121, 12100, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 32),
  -- Starmie - Waterfall - HM07
  (121, 12100, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 33),
  -- Mr. Mime - Barrier - Level 1
  (122, 12200, 112, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mr. Mime - Confusion - Level 6
  (122, 12200, 93, 3, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Mr. Mime - Substitute - Level 11
  (122, 12200, 164, 3, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Mr. Mime - Meditate - Level 16
  (122, 12200, 96, 3, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Mr. Mime - Double Slap - Level 21
  (122, 12200, 3, 3, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Mr. Mime - Light Screen - Level 26
  (122, 12200, 113, 3, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Mr. Mime - Reflect - Level 26
  (122, 12200, 115, 3, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Mr. Mime - Encore - Level 31
  (122, 12200, 227, 3, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Mr. Mime - Psybeam - Level 36
  (122, 12200, 60, 3, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Mr. Mime - Baton Pass - Level 41
  (122, 12200, 226, 3, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Mr. Mime - Safeguard - Level 46
  (122, 12200, 219, 3, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Mr. Mime - Dynamic Punch - TM01
  (122, 12200, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 12),
  -- Mr. Mime - Headbutt - TM02
  (122, 12200, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 13),
  -- Mr. Mime - Curse - TM03
  (122, 12200, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 14),
  -- Mr. Mime - Toxic - TM06
  (122, 12200, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 15),
  -- Mr. Mime - Zap Cannon - TM07
  (122, 12200, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 16),
  -- Mr. Mime - Psych Up - TM09
  (122, 12200, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 17),
  -- Mr. Mime - Hidden Power - TM10
  (122, 12200, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 18),
  -- Mr. Mime - Sunny Day - TM11
  (122, 12200, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 19),
  -- Mr. Mime - Snore - TM13
  (122, 12200, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 20),
  -- Mr. Mime - Hyper Beam - TM15
  (122, 12200, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 21),
  -- Mr. Mime - Protect - TM17
  (122, 12200, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 22),
  -- Mr. Mime - Endure - TM20
  (122, 12200, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 23),
  -- Mr. Mime - Frustration - TM21
  (122, 12200, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 24),
  -- Mr. Mime - Solar Beam - TM22
  (122, 12200, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 25),
  -- Mr. Mime - Thunder - TM25
  (122, 12200, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 26),
  -- Mr. Mime - Return - TM27
  (122, 12200, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 27),
  -- Mr. Mime - Psychic - TM29
  (122, 12200, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 28),
  -- Mr. Mime - Shadow Ball - TM30
  (122, 12200, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 29),
  -- Mr. Mime - Mud-Slap - TM31
  (122, 12200, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 30),
  -- Mr. Mime - Double Team - TM32
  (122, 12200, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 31),
  -- Mr. Mime - Ice Punch - TM33
  (122, 12200, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 32),
  -- Mr. Mime - Swagger - TM34
  (122, 12200, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 33),
  -- Mr. Mime - Sleep Talk - TM35
  (122, 12200, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 34),
  -- Mr. Mime - Thunder Punch - TM41
  (122, 12200, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 35),
  -- Mr. Mime - Dream Eater - TM42
  (122, 12200, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 36),
  -- Mr. Mime - Rest - TM44
  (122, 12200, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 37),
  -- Mr. Mime - Attract - TM45
  (122, 12200, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 38),
  -- Mr. Mime - Thief - TM46
  (122, 12200, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 39),
  -- Mr. Mime - Fire Punch - TM48
  (122, 12200, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 40),
  -- Mr. Mime - Nightmare - TM50
  (122, 12200, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 41),
  -- Mr. Mime - Flash - HM05
  (122, 12200, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 42),
  -- Mr. Mime - Future Sight - Egg Move
  (122, 12200, 248, 3, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mr. Mime - Hypnosis - Egg Move
  (122, 12200, 95, 3, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mr. Mime - Mimic - Egg Move
  (122, 12200, 102, 3, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Scyther - Quick Attack - Level 1
  (123, 12300, 98, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scyther - Leer - Level 1
  (123, 12300, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scyther - Focus Energy - Level 6
  (123, 12300, 116, 3, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Scyther - Pursuit - Level 12
  (123, 12300, 228, 3, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Scyther - False Swipe - Level 18
  (123, 12300, 206, 3, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Scyther - Agility - Level 24
  (123, 12300, 97, 3, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Scyther - Wing Attack - Level 30
  (123, 12300, 17, 3, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Scyther - Slash - Level 36
  (123, 12300, 163, 3, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Scyther - Swords Dance - Level 42
  (123, 12300, 14, 3, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Scyther - Double Team - Level 48
  (123, 12300, 104, 3, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Scyther - Headbutt - TM02
  (123, 12300, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Scyther - Curse - TM03
  (123, 12300, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Scyther - Toxic - TM06
  (123, 12300, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Scyther - Rock Smash - TM08
  (123, 12300, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 14),
  -- Scyther - Hidden Power - TM10
  (123, 12300, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Scyther - Sunny Day - TM11
  (123, 12300, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 16),
  -- Scyther - Snore - TM13
  (123, 12300, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 17),
  -- Scyther - Hyper Beam - TM15
  (123, 12300, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 18),
  -- Scyther - Protect - TM17
  (123, 12300, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Scyther - Endure - TM20
  (123, 12300, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 20),
  -- Scyther - Frustration - TM21
  (123, 12300, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 21),
  -- Scyther - Return - TM27
  (123, 12300, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 22),
  -- Scyther - Double Team - TM32
  (123, 12300, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 23),
  -- Scyther - Swagger - TM34
  (123, 12300, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 24),
  -- Scyther - Sleep Talk - TM35
  (123, 12300, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 25),
  -- Scyther - Swift - TM39
  (123, 12300, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 26),
  -- Scyther - Detect - TM43
  (123, 12300, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 27),
  -- Scyther - Rest - TM44
  (123, 12300, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 28),
  -- Scyther - Attract - TM45
  (123, 12300, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 29),
  -- Scyther - Thief - TM46
  (123, 12300, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 30),
  -- Scyther - Steel Wing - TM47
  (123, 12300, 211, 3, NULL, 2, NULL, NULL, 3002047, NULL, 31),
  -- Scyther - Fury Cutter - TM49
  (123, 12300, 210, 3, NULL, 2, NULL, NULL, 3002049, NULL, 32),
  -- Scyther - Cut - HM01
  (123, 12300, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 33),
  -- Scyther - Baton Pass - Egg Move
  (123, 12300, 226, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Scyther - Counter - Egg Move
  (123, 12300, 68, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Scyther - Light Screen - Egg Move
  (123, 12300, 113, 3, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Scyther - Razor Wind - Egg Move
  (123, 12300, 13, 3, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Scyther - Reversal - Egg Move
  (123, 12300, 179, 3, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Scyther - Safeguard - Egg Move
  (123, 12300, 219, 3, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Jynx - Pound - Level 1
  (124, 12400, 1, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jynx - Lick - Level 1
  (124, 12400, 122, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jynx - Lovely Kiss - Level 1
  (124, 12400, 142, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jynx - Powder Snow - Level 1
  (124, 12400, 181, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jynx - Lovely Kiss - Level 9
  (124, 12400, 142, 3, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Jynx - Powder Snow - Level 13
  (124, 12400, 181, 3, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Jynx - Double Slap - Level 21
  (124, 12400, 3, 3, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Jynx - Ice Punch - Level 25
  (124, 12400, 8, 3, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Jynx - Mean Look - Level 35
  (124, 12400, 212, 3, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Jynx - Body Slam - Level 41
  (124, 12400, 34, 3, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Jynx - Perish Song - Level 51
  (124, 12400, 195, 3, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Jynx - Blizzard - Level 57
  (124, 12400, 59, 3, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Jynx - Dynamic Punch - TM01
  (124, 12400, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 13),
  -- Jynx - Headbutt - TM02
  (124, 12400, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 14),
  -- Jynx - Curse - TM03
  (124, 12400, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 15),
  -- Jynx - Toxic - TM06
  (124, 12400, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 16),
  -- Jynx - Psych Up - TM09
  (124, 12400, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 17),
  -- Jynx - Hidden Power - TM10
  (124, 12400, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 18),
  -- Jynx - Sweet Scent - TM12
  (124, 12400, 230, 3, NULL, 2, NULL, NULL, 3002012, NULL, 19),
  -- Jynx - Snore - TM13
  (124, 12400, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 20),
  -- Jynx - Blizzard - TM14
  (124, 12400, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 21),
  -- Jynx - Hyper Beam - TM15
  (124, 12400, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 22),
  -- Jynx - Icy Wind - TM16
  (124, 12400, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 23),
  -- Jynx - Protect - TM17
  (124, 12400, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 24),
  -- Jynx - Rain Dance - TM18
  (124, 12400, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 25),
  -- Jynx - Endure - TM20
  (124, 12400, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 26),
  -- Jynx - Frustration - TM21
  (124, 12400, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 27),
  -- Jynx - Return - TM27
  (124, 12400, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 28),
  -- Jynx - Psychic - TM29
  (124, 12400, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 29),
  -- Jynx - Shadow Ball - TM30
  (124, 12400, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 30),
  -- Jynx - Mud-Slap - TM31
  (124, 12400, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 31),
  -- Jynx - Double Team - TM32
  (124, 12400, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 32),
  -- Jynx - Ice Punch - TM33
  (124, 12400, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 33),
  -- Jynx - Swagger - TM34
  (124, 12400, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 34),
  -- Jynx - Sleep Talk - TM35
  (124, 12400, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 35),
  -- Jynx - Dream Eater - TM42
  (124, 12400, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 36),
  -- Jynx - Rest - TM44
  (124, 12400, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 37),
  -- Jynx - Attract - TM45
  (124, 12400, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 38),
  -- Jynx - Thief - TM46
  (124, 12400, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 39),
  -- Jynx - Nightmare - TM50
  (124, 12400, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 40),
  -- Electabuzz - Quick Attack - Level 1
  (125, 12500, 98, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electabuzz - Leer - Level 1
  (125, 12500, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electabuzz - Thunder Punch - Level 1
  (125, 12500, 9, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electabuzz - Thunder Punch - Level 9
  (125, 12500, 9, 3, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Electabuzz - Light Screen - Level 17
  (125, 12500, 113, 3, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Electabuzz - Swift - Level 25
  (125, 12500, 129, 3, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Electabuzz - Screech - Level 36
  (125, 12500, 103, 3, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Electabuzz - Thunderbolt - Level 47
  (125, 12500, 85, 3, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Electabuzz - Thunder - Level 58
  (125, 12500, 87, 3, NULL, 1, 58, NULL, NULL, NULL, 9),
  -- Electabuzz - Dynamic Punch - TM01
  (125, 12500, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 10),
  -- Electabuzz - Headbutt - TM02
  (125, 12500, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Electabuzz - Curse - TM03
  (125, 12500, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Electabuzz - Toxic - TM06
  (125, 12500, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Electabuzz - Zap Cannon - TM07
  (125, 12500, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 14),
  -- Electabuzz - Rock Smash - TM08
  (125, 12500, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 15),
  -- Electabuzz - Hidden Power - TM10
  (125, 12500, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 16),
  -- Electabuzz - Snore - TM13
  (125, 12500, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 17),
  -- Electabuzz - Hyper Beam - TM15
  (125, 12500, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 18),
  -- Electabuzz - Protect - TM17
  (125, 12500, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Electabuzz - Rain Dance - TM18
  (125, 12500, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 20),
  -- Electabuzz - Endure - TM20
  (125, 12500, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Electabuzz - Frustration - TM21
  (125, 12500, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Electabuzz - Iron Tail - TM23
  (125, 12500, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 23),
  -- Electabuzz - Thunder - TM25
  (125, 12500, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 24),
  -- Electabuzz - Return - TM27
  (125, 12500, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 25),
  -- Electabuzz - Psychic - TM29
  (125, 12500, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 26),
  -- Electabuzz - Mud-Slap - TM31
  (125, 12500, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 27),
  -- Electabuzz - Double Team - TM32
  (125, 12500, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 28),
  -- Electabuzz - Ice Punch - TM33
  (125, 12500, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 29),
  -- Electabuzz - Swagger - TM34
  (125, 12500, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 30),
  -- Electabuzz - Sleep Talk - TM35
  (125, 12500, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 31),
  -- Electabuzz - Swift - TM39
  (125, 12500, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 32),
  -- Electabuzz - Thunder Punch - TM41
  (125, 12500, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 33),
  -- Electabuzz - Detect - TM43
  (125, 12500, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 34),
  -- Electabuzz - Rest - TM44
  (125, 12500, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 35),
  -- Electabuzz - Attract - TM45
  (125, 12500, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 36),
  -- Electabuzz - Thief - TM46
  (125, 12500, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 37),
  -- Electabuzz - Fire Punch - TM48
  (125, 12500, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 38),
  -- Electabuzz - Strength - HM04
  (125, 12500, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 39),
  -- Electabuzz - Flash - HM05
  (125, 12500, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 40),
  -- Magmar - Ember - Level 1
  (126, 12600, 52, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magmar - Leer - Level 1
  (126, 12600, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magmar - Smog - Level 1
  (126, 12600, 123, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magmar - Fire Punch - Level 1
  (126, 12600, 7, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magmar - Leer - Level 7
  (126, 12600, 43, 3, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Magmar - Smog - Level 13
  (126, 12600, 123, 3, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Magmar - Fire Punch - Level 19
  (126, 12600, 7, 3, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Magmar - Smokescreen - Level 25
  (126, 12600, 108, 3, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Magmar - Sunny Day - Level 33
  (126, 12600, 241, 3, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Magmar - Flamethrower - Level 41
  (126, 12600, 53, 3, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Magmar - Confuse Ray - Level 49
  (126, 12600, 109, 3, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Magmar - Fire Blast - Level 57
  (126, 12600, 126, 3, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Magmar - Dynamic Punch - TM01
  (126, 12600, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 13),
  -- Magmar - Headbutt - TM02
  (126, 12600, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 14),
  -- Magmar - Curse - TM03
  (126, 12600, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 15),
  -- Magmar - Toxic - TM06
  (126, 12600, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 16),
  -- Magmar - Rock Smash - TM08
  (126, 12600, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 17),
  -- Magmar - Hidden Power - TM10
  (126, 12600, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 18),
  -- Magmar - Sunny Day - TM11
  (126, 12600, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 19),
  -- Magmar - Snore - TM13
  (126, 12600, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 20),
  -- Magmar - Hyper Beam - TM15
  (126, 12600, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 21),
  -- Magmar - Protect - TM17
  (126, 12600, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 22),
  -- Magmar - Endure - TM20
  (126, 12600, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 23),
  -- Magmar - Frustration - TM21
  (126, 12600, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 24),
  -- Magmar - Iron Tail - TM23
  (126, 12600, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 25),
  -- Magmar - Return - TM27
  (126, 12600, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 26),
  -- Magmar - Psychic - TM29
  (126, 12600, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 27),
  -- Magmar - Mud-Slap - TM31
  (126, 12600, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 28),
  -- Magmar - Double Team - TM32
  (126, 12600, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 29),
  -- Magmar - Swagger - TM34
  (126, 12600, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 30),
  -- Magmar - Sleep Talk - TM35
  (126, 12600, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 31),
  -- Magmar - Fire Blast - TM38
  (126, 12600, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 32),
  -- Magmar - Thunder Punch - TM41
  (126, 12600, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 33),
  -- Magmar - Detect - TM43
  (126, 12600, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 34),
  -- Magmar - Rest - TM44
  (126, 12600, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 35),
  -- Magmar - Attract - TM45
  (126, 12600, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 36),
  -- Magmar - Thief - TM46
  (126, 12600, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 37),
  -- Magmar - Fire Punch - TM48
  (126, 12600, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 38),
  -- Magmar - Strength - HM04
  (126, 12600, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 39),
  -- Pinsir - Vise Grip - Level 1
  (127, 12700, 11, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pinsir - Focus Energy - Level 7
  (127, 12700, 116, 3, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Pinsir - Bind - Level 13
  (127, 12700, 20, 3, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Pinsir - Seismic Toss - Level 19
  (127, 12700, 69, 3, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Pinsir - Harden - Level 25
  (127, 12700, 106, 3, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Pinsir - Guillotine - Level 31
  (127, 12700, 12, 3, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Pinsir - Submission - Level 37
  (127, 12700, 66, 3, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Pinsir - Swords Dance - Level 43
  (127, 12700, 14, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Pinsir - Headbutt - TM02
  (127, 12700, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 9),
  -- Pinsir - Curse - TM03
  (127, 12700, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Pinsir - Toxic - TM06
  (127, 12700, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Pinsir - Rock Smash - TM08
  (127, 12700, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 12),
  -- Pinsir - Hidden Power - TM10
  (127, 12700, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 13),
  -- Pinsir - Sunny Day - TM11
  (127, 12700, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 14),
  -- Pinsir - Snore - TM13
  (127, 12700, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 15),
  -- Pinsir - Hyper Beam - TM15
  (127, 12700, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 16),
  -- Pinsir - Protect - TM17
  (127, 12700, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Pinsir - Endure - TM20
  (127, 12700, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 18),
  -- Pinsir - Frustration - TM21
  (127, 12700, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 19),
  -- Pinsir - Return - TM27
  (127, 12700, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 20),
  -- Pinsir - Double Team - TM32
  (127, 12700, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 21),
  -- Pinsir - Swagger - TM34
  (127, 12700, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 22),
  -- Pinsir - Sleep Talk - TM35
  (127, 12700, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 23),
  -- Pinsir - Rest - TM44
  (127, 12700, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 24),
  -- Pinsir - Attract - TM45
  (127, 12700, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 25),
  -- Pinsir - Thief - TM46
  (127, 12700, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 26),
  -- Pinsir - Fury Cutter - TM49
  (127, 12700, 210, 3, NULL, 2, NULL, NULL, 3002049, NULL, 27),
  -- Pinsir - Cut - HM01
  (127, 12700, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 28),
  -- Pinsir - Strength - HM04
  (127, 12700, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 29),
  -- Pinsir - Flail - Egg Move
  (127, 12700, 175, 3, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Pinsir - Fury Attack - Egg Move
  (127, 12700, 31, 3, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Tauros - Tackle - Level 1
  (128, 12800, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tauros - Tail Whip - Level 4
  (128, 12800, 39, 3, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Tauros - Rage - Level 8
  (128, 12800, 99, 3, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Tauros - Horn Attack - Level 13
  (128, 12800, 30, 3, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Tauros - Scary Face - Level 19
  (128, 12800, 184, 3, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Tauros - Pursuit - Level 26
  (128, 12800, 228, 3, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Tauros - Rest - Level 34
  (128, 12800, 156, 3, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Tauros - Thrash - Level 43
  (128, 12800, 37, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Tauros - Take Down - Level 53
  (128, 12800, 36, 3, NULL, 1, 53, NULL, NULL, NULL, 9),
  -- Tauros - Headbutt - TM02
  (128, 12800, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 10),
  -- Tauros - Curse - TM03
  (128, 12800, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Tauros - Toxic - TM06
  (128, 12800, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Tauros - Zap Cannon - TM07
  (128, 12800, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 13),
  -- Tauros - Rock Smash - TM08
  (128, 12800, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 14),
  -- Tauros - Hidden Power - TM10
  (128, 12800, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Tauros - Sunny Day - TM11
  (128, 12800, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 16),
  -- Tauros - Snore - TM13
  (128, 12800, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 17),
  -- Tauros - Blizzard - TM14
  (128, 12800, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 18),
  -- Tauros - Hyper Beam - TM15
  (128, 12800, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 19),
  -- Tauros - Icy Wind - TM16
  (128, 12800, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 20),
  -- Tauros - Protect - TM17
  (128, 12800, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 21),
  -- Tauros - Endure - TM20
  (128, 12800, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Tauros - Frustration - TM21
  (128, 12800, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Tauros - Iron Tail - TM23
  (128, 12800, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 24),
  -- Tauros - Thunder - TM25
  (128, 12800, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 25),
  -- Tauros - Earthquake - TM26
  (128, 12800, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 26),
  -- Tauros - Return - TM27
  (128, 12800, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 27),
  -- Tauros - Double Team - TM32
  (128, 12800, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 28),
  -- Tauros - Swagger - TM34
  (128, 12800, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 29),
  -- Tauros - Sleep Talk - TM35
  (128, 12800, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 30),
  -- Tauros - Fire Blast - TM38
  (128, 12800, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 31),
  -- Tauros - Rest - TM44
  (128, 12800, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 32),
  -- Tauros - Attract - TM45
  (128, 12800, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 33),
  -- Tauros - Surf - HM03
  (128, 12800, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 34),
  -- Tauros - Strength - HM04
  (128, 12800, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 35),
  -- Magikarp - Splash - Level 1
  (129, 12900, 150, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magikarp - Tackle - Level 15
  (129, 12900, 33, 3, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Magikarp - Flail - Level 30
  (129, 12900, 175, 3, NULL, 1, 30, NULL, NULL, NULL, 3),
  -- Gyarados - Thrash - Level 1
  (130, 13000, 37, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gyarados - Bite - Level 20
  (130, 13000, 44, 3, NULL, 1, 20, NULL, NULL, NULL, 2),
  -- Gyarados - Dragon Rage - Level 25
  (130, 13000, 82, 3, NULL, 1, 25, NULL, NULL, NULL, 3),
  -- Gyarados - Leer - Level 30
  (130, 13000, 43, 3, NULL, 1, 30, NULL, NULL, NULL, 4),
  -- Gyarados - Twister - Level 35
  (130, 13000, 239, 3, NULL, 1, 35, NULL, NULL, NULL, 5),
  -- Gyarados - Hydro Pump - Level 40
  (130, 13000, 56, 3, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Gyarados - Rain Dance - Level 45
  (130, 13000, 240, 3, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Gyarados - Hyper Beam - Level 50
  (130, 13000, 63, 3, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Gyarados - Headbutt - TM02
  (130, 13000, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 9),
  -- Gyarados - Curse - TM03
  (130, 13000, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Gyarados - Roar - TM05
  (130, 13000, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 11),
  -- Gyarados - Toxic - TM06
  (130, 13000, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Gyarados - Zap Cannon - TM07
  (130, 13000, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 13),
  -- Gyarados - Rock Smash - TM08
  (130, 13000, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 14),
  -- Gyarados - Hidden Power - TM10
  (130, 13000, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Gyarados - Snore - TM13
  (130, 13000, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Gyarados - Blizzard - TM14
  (130, 13000, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 17),
  -- Gyarados - Hyper Beam - TM15
  (130, 13000, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 18),
  -- Gyarados - Icy Wind - TM16
  (130, 13000, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 19),
  -- Gyarados - Protect - TM17
  (130, 13000, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Gyarados - Rain Dance - TM18
  (130, 13000, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 21),
  -- Gyarados - Endure - TM20
  (130, 13000, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Gyarados - Frustration - TM21
  (130, 13000, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Gyarados - Dragon Breath - TM24
  (130, 13000, 225, 3, NULL, 2, NULL, NULL, 3002024, NULL, 24),
  -- Gyarados - Thunder - TM25
  (130, 13000, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 25),
  -- Gyarados - Return - TM27
  (130, 13000, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 26),
  -- Gyarados - Double Team - TM32
  (130, 13000, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 27),
  -- Gyarados - Swagger - TM34
  (130, 13000, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 28),
  -- Gyarados - Sleep Talk - TM35
  (130, 13000, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 29),
  -- Gyarados - Sandstorm - TM37
  (130, 13000, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 30),
  -- Gyarados - Fire Blast - TM38
  (130, 13000, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 31),
  -- Gyarados - Rest - TM44
  (130, 13000, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 32),
  -- Gyarados - Attract - TM45
  (130, 13000, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 33),
  -- Gyarados - Surf - HM03
  (130, 13000, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 34),
  -- Gyarados - Strength - HM04
  (130, 13000, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 35),
  -- Gyarados - Whirlpool - HM06
  (130, 13000, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 36),
  -- Gyarados - Waterfall - HM07
  (130, 13000, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 37),
  -- Lapras - Water Gun - Level 1
  (131, 13100, 55, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lapras - Growl - Level 1
  (131, 13100, 45, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lapras - Sing - Level 1
  (131, 13100, 47, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lapras - Mist - Level 8
  (131, 13100, 54, 3, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Lapras - Body Slam - Level 15
  (131, 13100, 34, 3, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Lapras - Confuse Ray - Level 22
  (131, 13100, 109, 3, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Lapras - Perish Song - Level 29
  (131, 13100, 195, 3, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Lapras - Ice Beam - Level 36
  (131, 13100, 58, 3, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Lapras - Rain Dance - Level 43
  (131, 13100, 240, 3, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Lapras - Safeguard - Level 50
  (131, 13100, 219, 3, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Lapras - Hydro Pump - Level 57
  (131, 13100, 56, 3, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Lapras - Headbutt - TM02
  (131, 13100, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 12),
  -- Lapras - Curse - TM03
  (131, 13100, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 13),
  -- Lapras - Toxic - TM06
  (131, 13100, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Lapras - Zap Cannon - TM07
  (131, 13100, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 15),
  -- Lapras - Rock Smash - TM08
  (131, 13100, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 16),
  -- Lapras - Hidden Power - TM10
  (131, 13100, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 17),
  -- Lapras - Snore - TM13
  (131, 13100, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 18),
  -- Lapras - Blizzard - TM14
  (131, 13100, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 19),
  -- Lapras - Hyper Beam - TM15
  (131, 13100, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 20),
  -- Lapras - Icy Wind - TM16
  (131, 13100, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 21),
  -- Lapras - Protect - TM17
  (131, 13100, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 22),
  -- Lapras - Rain Dance - TM18
  (131, 13100, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 23),
  -- Lapras - Endure - TM20
  (131, 13100, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 24),
  -- Lapras - Frustration - TM21
  (131, 13100, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 25),
  -- Lapras - Iron Tail - TM23
  (131, 13100, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 26),
  -- Lapras - Dragon Breath - TM24
  (131, 13100, 225, 3, NULL, 2, NULL, NULL, 3002024, NULL, 27),
  -- Lapras - Thunder - TM25
  (131, 13100, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 28),
  -- Lapras - Return - TM27
  (131, 13100, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 29),
  -- Lapras - Psychic - TM29
  (131, 13100, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 30),
  -- Lapras - Double Team - TM32
  (131, 13100, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 31),
  -- Lapras - Swagger - TM34
  (131, 13100, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 32),
  -- Lapras - Sleep Talk - TM35
  (131, 13100, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 33),
  -- Lapras - Dream Eater - TM42
  (131, 13100, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 34),
  -- Lapras - Rest - TM44
  (131, 13100, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 35),
  -- Lapras - Attract - TM45
  (131, 13100, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 36),
  -- Lapras - Nightmare - TM50
  (131, 13100, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 37),
  -- Lapras - Surf - HM03
  (131, 13100, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 38),
  -- Lapras - Strength - HM04
  (131, 13100, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 39),
  -- Lapras - Whirlpool - HM06
  (131, 13100, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 40),
  -- Lapras - Aurora Beam - Egg Move
  (131, 13100, 62, 3, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Lapras - Foresight - Egg Move
  (131, 13100, 193, 3, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Ditto - Transform - Level 1
  (132, 13200, 144, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Tackle - Level 1
  (133, 13300, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Tail Whip - Level 1
  (133, 13300, 39, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eevee - Sand Attack - Level 8
  (133, 13300, 28, 3, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Eevee - Growl - Level 16
  (133, 13300, 45, 3, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Eevee - Quick Attack - Level 23
  (133, 13300, 98, 3, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Eevee - Bite - Level 30
  (133, 13300, 44, 3, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Eevee - Focus Energy - Level 36
  (133, 13300, 116, 3, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Eevee - Take Down - Level 42
  (133, 13300, 36, 3, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Eevee - Headbutt - TM02
  (133, 13300, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 9),
  -- Eevee - Curse - TM03
  (133, 13300, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Eevee - Toxic - TM06
  (133, 13300, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Eevee - Hidden Power - TM10
  (133, 13300, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 12),
  -- Eevee - Sunny Day - TM11
  (133, 13300, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 13),
  -- Eevee - Snore - TM13
  (133, 13300, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 14),
  -- Eevee - Protect - TM17
  (133, 13300, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 15),
  -- Eevee - Rain Dance - TM18
  (133, 13300, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 16),
  -- Eevee - Endure - TM20
  (133, 13300, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 17),
  -- Eevee - Frustration - TM21
  (133, 13300, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 18),
  -- Eevee - Iron Tail - TM23
  (133, 13300, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 19),
  -- Eevee - Return - TM27
  (133, 13300, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 20),
  -- Eevee - Shadow Ball - TM30
  (133, 13300, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 21),
  -- Eevee - Mud-Slap - TM31
  (133, 13300, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 22),
  -- Eevee - Double Team - TM32
  (133, 13300, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 23),
  -- Eevee - Swagger - TM34
  (133, 13300, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 24),
  -- Eevee - Sleep Talk - TM35
  (133, 13300, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 25),
  -- Eevee - Swift - TM39
  (133, 13300, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 26),
  -- Eevee - Detect - TM43
  (133, 13300, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 27),
  -- Eevee - Rest - TM44
  (133, 13300, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 28),
  -- Eevee - Attract - TM45
  (133, 13300, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 29),
  -- Eevee - Charm - Egg Move
  (133, 13300, 204, 3, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Eevee - Flail - Egg Move
  (133, 13300, 175, 3, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Vaporeon - Tackle - Level 1
  (134, 13400, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vaporeon - Tail Whip - Level 1
  (134, 13400, 39, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vaporeon - Sand Attack - Level 8
  (134, 13400, 28, 3, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Vaporeon - Water Gun - Level 16
  (134, 13400, 55, 3, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Vaporeon - Quick Attack - Level 23
  (134, 13400, 98, 3, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Vaporeon - Bite - Level 30
  (134, 13400, 44, 3, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Vaporeon - Aurora Beam - Level 36
  (134, 13400, 62, 3, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Vaporeon - Haze - Level 42
  (134, 13400, 114, 3, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Vaporeon - Acid Armor - Level 47
  (134, 13400, 151, 3, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Vaporeon - Hydro Pump - Level 52
  (134, 13400, 56, 3, NULL, 1, 52, NULL, NULL, NULL, 10),
  -- Vaporeon - Headbutt - TM02
  (134, 13400, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Vaporeon - Curse - TM03
  (134, 13400, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Vaporeon - Roar - TM05
  (134, 13400, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 13),
  -- Vaporeon - Toxic - TM06
  (134, 13400, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Vaporeon - Hidden Power - TM10
  (134, 13400, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Vaporeon - Sunny Day - TM11
  (134, 13400, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 16),
  -- Vaporeon - Snore - TM13
  (134, 13400, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 17),
  -- Vaporeon - Blizzard - TM14
  (134, 13400, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 18),
  -- Vaporeon - Hyper Beam - TM15
  (134, 13400, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 19),
  -- Vaporeon - Icy Wind - TM16
  (134, 13400, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 20),
  -- Vaporeon - Protect - TM17
  (134, 13400, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 21),
  -- Vaporeon - Rain Dance - TM18
  (134, 13400, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 22),
  -- Vaporeon - Endure - TM20
  (134, 13400, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 23),
  -- Vaporeon - Frustration - TM21
  (134, 13400, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 24),
  -- Vaporeon - Iron Tail - TM23
  (134, 13400, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 25),
  -- Vaporeon - Return - TM27
  (134, 13400, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 26),
  -- Vaporeon - Shadow Ball - TM30
  (134, 13400, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 27),
  -- Vaporeon - Mud-Slap - TM31
  (134, 13400, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 28),
  -- Vaporeon - Double Team - TM32
  (134, 13400, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 29),
  -- Vaporeon - Swagger - TM34
  (134, 13400, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 30),
  -- Vaporeon - Sleep Talk - TM35
  (134, 13400, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 31),
  -- Vaporeon - Swift - TM39
  (134, 13400, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 32),
  -- Vaporeon - Detect - TM43
  (134, 13400, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 33),
  -- Vaporeon - Rest - TM44
  (134, 13400, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 34),
  -- Vaporeon - Attract - TM45
  (134, 13400, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 35),
  -- Vaporeon - Surf - HM03
  (134, 13400, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 36),
  -- Vaporeon - Whirlpool - HM06
  (134, 13400, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 37),
  -- Vaporeon - Waterfall - HM07
  (134, 13400, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 38),
  -- Jolteon - Tackle - Level 1
  (135, 13500, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jolteon - Tail Whip - Level 1
  (135, 13500, 39, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jolteon - Sand Attack - Level 8
  (135, 13500, 28, 3, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Jolteon - Thunder Shock - Level 16
  (135, 13500, 84, 3, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Jolteon - Quick Attack - Level 23
  (135, 13500, 98, 3, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Jolteon - Double Kick - Level 30
  (135, 13500, 24, 3, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Jolteon - Pin Missile - Level 36
  (135, 13500, 42, 3, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Jolteon - Thunder Wave - Level 42
  (135, 13500, 86, 3, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Jolteon - Agility - Level 47
  (135, 13500, 97, 3, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Jolteon - Thunder - Level 52
  (135, 13500, 87, 3, NULL, 1, 52, NULL, NULL, NULL, 10),
  -- Jolteon - Headbutt - TM02
  (135, 13500, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Jolteon - Curse - TM03
  (135, 13500, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Jolteon - Roar - TM05
  (135, 13500, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 13),
  -- Jolteon - Toxic - TM06
  (135, 13500, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Jolteon - Zap Cannon - TM07
  (135, 13500, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 15),
  -- Jolteon - Hidden Power - TM10
  (135, 13500, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 16),
  -- Jolteon - Sunny Day - TM11
  (135, 13500, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 17),
  -- Jolteon - Snore - TM13
  (135, 13500, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 18),
  -- Jolteon - Hyper Beam - TM15
  (135, 13500, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 19),
  -- Jolteon - Protect - TM17
  (135, 13500, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Jolteon - Rain Dance - TM18
  (135, 13500, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 21),
  -- Jolteon - Endure - TM20
  (135, 13500, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Jolteon - Frustration - TM21
  (135, 13500, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Jolteon - Iron Tail - TM23
  (135, 13500, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 24),
  -- Jolteon - Thunder - TM25
  (135, 13500, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 25),
  -- Jolteon - Return - TM27
  (135, 13500, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 26),
  -- Jolteon - Shadow Ball - TM30
  (135, 13500, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 27),
  -- Jolteon - Mud-Slap - TM31
  (135, 13500, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 28),
  -- Jolteon - Double Team - TM32
  (135, 13500, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 29),
  -- Jolteon - Swagger - TM34
  (135, 13500, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 30),
  -- Jolteon - Sleep Talk - TM35
  (135, 13500, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 31),
  -- Jolteon - Swift - TM39
  (135, 13500, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 32),
  -- Jolteon - Detect - TM43
  (135, 13500, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 33),
  -- Jolteon - Rest - TM44
  (135, 13500, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 34),
  -- Jolteon - Attract - TM45
  (135, 13500, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 35),
  -- Jolteon - Flash - HM05
  (135, 13500, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 36),
  -- Flareon - Tackle - Level 1
  (136, 13600, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flareon - Tail Whip - Level 1
  (136, 13600, 39, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flareon - Sand Attack - Level 8
  (136, 13600, 28, 3, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Flareon - Ember - Level 16
  (136, 13600, 52, 3, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Flareon - Quick Attack - Level 23
  (136, 13600, 98, 3, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Flareon - Bite - Level 30
  (136, 13600, 44, 3, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Flareon - Fire Spin - Level 36
  (136, 13600, 83, 3, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Flareon - Smog - Level 42
  (136, 13600, 123, 3, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Flareon - Leer - Level 47
  (136, 13600, 43, 3, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Flareon - Flamethrower - Level 52
  (136, 13600, 53, 3, NULL, 1, 52, NULL, NULL, NULL, 10),
  -- Flareon - Headbutt - TM02
  (136, 13600, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Flareon - Curse - TM03
  (136, 13600, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Flareon - Roar - TM05
  (136, 13600, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 13),
  -- Flareon - Toxic - TM06
  (136, 13600, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Flareon - Zap Cannon - TM07
  (136, 13600, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 15),
  -- Flareon - Hidden Power - TM10
  (136, 13600, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 16),
  -- Flareon - Sunny Day - TM11
  (136, 13600, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 17),
  -- Flareon - Snore - TM13
  (136, 13600, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 18),
  -- Flareon - Hyper Beam - TM15
  (136, 13600, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 19),
  -- Flareon - Protect - TM17
  (136, 13600, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Flareon - Rain Dance - TM18
  (136, 13600, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 21),
  -- Flareon - Endure - TM20
  (136, 13600, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Flareon - Frustration - TM21
  (136, 13600, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Flareon - Iron Tail - TM23
  (136, 13600, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 24),
  -- Flareon - Return - TM27
  (136, 13600, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 25),
  -- Flareon - Shadow Ball - TM30
  (136, 13600, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 26),
  -- Flareon - Mud-Slap - TM31
  (136, 13600, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 27),
  -- Flareon - Double Team - TM32
  (136, 13600, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 28),
  -- Flareon - Swagger - TM34
  (136, 13600, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 29),
  -- Flareon - Sleep Talk - TM35
  (136, 13600, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 30),
  -- Flareon - Fire Blast - TM38
  (136, 13600, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 31),
  -- Flareon - Swift - TM39
  (136, 13600, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 32),
  -- Flareon - Detect - TM43
  (136, 13600, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 33),
  -- Flareon - Rest - TM44
  (136, 13600, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 34),
  -- Flareon - Attract - TM45
  (136, 13600, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 35),
  -- Porygon - Conversion 2 - Level 1
  (137, 13700, 176, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon - Tackle - Level 1
  (137, 13700, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon - Conversion - Level 1
  (137, 13700, 160, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon - Agility - Level 9
  (137, 13700, 97, 3, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Porygon - Psybeam - Level 12
  (137, 13700, 60, 3, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Porygon - Recover - Level 20
  (137, 13700, 105, 3, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Porygon - Sharpen - Level 24
  (137, 13700, 159, 3, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Porygon - Lock-On - Level 32
  (137, 13700, 199, 3, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Porygon - Tri Attack - Level 36
  (137, 13700, 161, 3, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Porygon - Zap Cannon - Level 44
  (137, 13700, 192, 3, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Porygon - Curse - TM03
  (137, 13700, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Porygon - Toxic - TM06
  (137, 13700, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Porygon - Zap Cannon - TM07
  (137, 13700, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 13),
  -- Porygon - Psych Up - TM09
  (137, 13700, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 14),
  -- Porygon - Hidden Power - TM10
  (137, 13700, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Porygon - Sunny Day - TM11
  (137, 13700, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 16),
  -- Porygon - Snore - TM13
  (137, 13700, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 17),
  -- Porygon - Blizzard - TM14
  (137, 13700, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 18),
  -- Porygon - Hyper Beam - TM15
  (137, 13700, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 19),
  -- Porygon - Icy Wind - TM16
  (137, 13700, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 20),
  -- Porygon - Protect - TM17
  (137, 13700, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 21),
  -- Porygon - Rain Dance - TM18
  (137, 13700, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 22),
  -- Porygon - Endure - TM20
  (137, 13700, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 23),
  -- Porygon - Frustration - TM21
  (137, 13700, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 24),
  -- Porygon - Iron Tail - TM23
  (137, 13700, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 25),
  -- Porygon - Thunder - TM25
  (137, 13700, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 26),
  -- Porygon - Return - TM27
  (137, 13700, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 27),
  -- Porygon - Psychic - TM29
  (137, 13700, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 28),
  -- Porygon - Double Team - TM32
  (137, 13700, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 29),
  -- Porygon - Swagger - TM34
  (137, 13700, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 30),
  -- Porygon - Sleep Talk - TM35
  (137, 13700, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 31),
  -- Porygon - Swift - TM39
  (137, 13700, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 32),
  -- Porygon - Dream Eater - TM42
  (137, 13700, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 33),
  -- Porygon - Rest - TM44
  (137, 13700, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 34),
  -- Porygon - Thief - TM46
  (137, 13700, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 35),
  -- Porygon - Nightmare - TM50
  (137, 13700, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 36),
  -- Porygon - Flash - HM05
  (137, 13700, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 37),
  -- Omanyte - Constrict - Level 1
  (138, 13800, 132, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Omanyte - Withdraw - Level 1
  (138, 13800, 110, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Omanyte - Bite - Level 13
  (138, 13800, 44, 3, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Omanyte - Water Gun - Level 19
  (138, 13800, 55, 3, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Omanyte - Leer - Level 31
  (138, 13800, 43, 3, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Omanyte - Protect - Level 37
  (138, 13800, 182, 3, NULL, 1, 37, NULL, NULL, NULL, 6),
  -- Omanyte - Ancient Power - Level 49
  (138, 13800, 246, 3, NULL, 1, 49, NULL, NULL, NULL, 7),
  -- Omanyte - Hydro Pump - Level 55
  (138, 13800, 56, 3, NULL, 1, 55, NULL, NULL, NULL, 8),
  -- Omanyte - Headbutt - TM02
  (138, 13800, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 9),
  -- Omanyte - Curse - TM03
  (138, 13800, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Omanyte - Rollout - TM04
  (138, 13800, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 11),
  -- Omanyte - Toxic - TM06
  (138, 13800, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Omanyte - Rock Smash - TM08
  (138, 13800, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 13),
  -- Omanyte - Hidden Power - TM10
  (138, 13800, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Omanyte - Snore - TM13
  (138, 13800, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 15),
  -- Omanyte - Blizzard - TM14
  (138, 13800, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 16),
  -- Omanyte - Icy Wind - TM16
  (138, 13800, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 17),
  -- Omanyte - Protect - TM17
  (138, 13800, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 18),
  -- Omanyte - Rain Dance - TM18
  (138, 13800, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 19),
  -- Omanyte - Endure - TM20
  (138, 13800, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 20),
  -- Omanyte - Frustration - TM21
  (138, 13800, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 21),
  -- Omanyte - Return - TM27
  (138, 13800, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 22),
  -- Omanyte - Double Team - TM32
  (138, 13800, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 23),
  -- Omanyte - Swagger - TM34
  (138, 13800, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 24),
  -- Omanyte - Sleep Talk - TM35
  (138, 13800, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 25),
  -- Omanyte - Sandstorm - TM37
  (138, 13800, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 26),
  -- Omanyte - Rest - TM44
  (138, 13800, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 27),
  -- Omanyte - Attract - TM45
  (138, 13800, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 28),
  -- Omanyte - Thief - TM46
  (138, 13800, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 29),
  -- Omanyte - Surf - HM03
  (138, 13800, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 30),
  -- Omanyte - Whirlpool - HM06
  (138, 13800, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 31),
  -- Omanyte - Aurora Beam - Egg Move
  (138, 13800, 62, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Omanyte - Bubble Beam - Egg Move
  (138, 13800, 61, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Omanyte - Haze - Egg Move
  (138, 13800, 114, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Omanyte - Slam - Egg Move
  (138, 13800, 21, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Omanyte - Supersonic - Egg Move
  (138, 13800, 48, 3, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Omastar - Constrict - Level 1
  (139, 13900, 132, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Omastar - Withdraw - Level 1
  (139, 13900, 110, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Omastar - Bite - Level 1
  (139, 13900, 44, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Omastar - Bite - Level 13
  (139, 13900, 44, 3, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Omastar - Water Gun - Level 19
  (139, 13900, 55, 3, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Omastar - Leer - Level 31
  (139, 13900, 43, 3, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Omastar - Protect - Level 37
  (139, 13900, 182, 3, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Omastar - Spike Cannon - Level 40
  (139, 13900, 131, 3, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Omastar - Ancient Power - Level 54
  (139, 13900, 246, 3, NULL, 1, 54, NULL, NULL, NULL, 9),
  -- Omastar - Hydro Pump - Level 65
  (139, 13900, 56, 3, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Omastar - Headbutt - TM02
  (139, 13900, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Omastar - Curse - TM03
  (139, 13900, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Omastar - Rollout - TM04
  (139, 13900, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 13),
  -- Omastar - Toxic - TM06
  (139, 13900, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Omastar - Rock Smash - TM08
  (139, 13900, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 15),
  -- Omastar - Hidden Power - TM10
  (139, 13900, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 16),
  -- Omastar - Snore - TM13
  (139, 13900, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 17),
  -- Omastar - Blizzard - TM14
  (139, 13900, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 18),
  -- Omastar - Hyper Beam - TM15
  (139, 13900, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 19),
  -- Omastar - Icy Wind - TM16
  (139, 13900, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 20),
  -- Omastar - Protect - TM17
  (139, 13900, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 21),
  -- Omastar - Rain Dance - TM18
  (139, 13900, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 22),
  -- Omastar - Endure - TM20
  (139, 13900, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 23),
  -- Omastar - Frustration - TM21
  (139, 13900, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 24),
  -- Omastar - Return - TM27
  (139, 13900, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 25),
  -- Omastar - Double Team - TM32
  (139, 13900, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 26),
  -- Omastar - Swagger - TM34
  (139, 13900, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 27),
  -- Omastar - Sleep Talk - TM35
  (139, 13900, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 28),
  -- Omastar - Sandstorm - TM37
  (139, 13900, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 29),
  -- Omastar - Rest - TM44
  (139, 13900, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 30),
  -- Omastar - Attract - TM45
  (139, 13900, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 31),
  -- Omastar - Thief - TM46
  (139, 13900, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 32),
  -- Omastar - Surf - HM03
  (139, 13900, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 33),
  -- Omastar - Whirlpool - HM06
  (139, 13900, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 34),
  -- Kabuto - Scratch - Level 1
  (140, 14000, 10, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kabuto - Harden - Level 1
  (140, 14000, 106, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kabuto - Absorb - Level 10
  (140, 14000, 71, 3, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Kabuto - Leer - Level 19
  (140, 14000, 43, 3, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Kabuto - Sand Attack - Level 28
  (140, 14000, 28, 3, NULL, 1, 28, NULL, NULL, NULL, 5),
  -- Kabuto - Endure - Level 37
  (140, 14000, 203, 3, NULL, 1, 37, NULL, NULL, NULL, 6),
  -- Kabuto - Mega Drain - Level 46
  (140, 14000, 72, 3, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Kabuto - Ancient Power - Level 55
  (140, 14000, 246, 3, NULL, 1, 55, NULL, NULL, NULL, 8),
  -- Kabuto - Curse - TM03
  (140, 14000, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 9),
  -- Kabuto - Rollout - TM04
  (140, 14000, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 10),
  -- Kabuto - Toxic - TM06
  (140, 14000, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Kabuto - Rock Smash - TM08
  (140, 14000, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 12),
  -- Kabuto - Hidden Power - TM10
  (140, 14000, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 13),
  -- Kabuto - Snore - TM13
  (140, 14000, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 14),
  -- Kabuto - Blizzard - TM14
  (140, 14000, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 15),
  -- Kabuto - Icy Wind - TM16
  (140, 14000, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 16),
  -- Kabuto - Protect - TM17
  (140, 14000, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Kabuto - Rain Dance - TM18
  (140, 14000, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 18),
  -- Kabuto - Giga Drain - TM19
  (140, 14000, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 19),
  -- Kabuto - Endure - TM20
  (140, 14000, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 20),
  -- Kabuto - Frustration - TM21
  (140, 14000, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 21),
  -- Kabuto - Return - TM27
  (140, 14000, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 22),
  -- Kabuto - Double Team - TM32
  (140, 14000, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 23),
  -- Kabuto - Swagger - TM34
  (140, 14000, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 24),
  -- Kabuto - Sleep Talk - TM35
  (140, 14000, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 25),
  -- Kabuto - Sandstorm - TM37
  (140, 14000, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 26),
  -- Kabuto - Rest - TM44
  (140, 14000, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 27),
  -- Kabuto - Attract - TM45
  (140, 14000, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 28),
  -- Kabuto - Thief - TM46
  (140, 14000, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 29),
  -- Kabuto - Aurora Beam - Egg Move
  (140, 14000, 62, 3, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Kabuto - Bubble Beam - Egg Move
  (140, 14000, 61, 3, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Kabuto - Dig - Egg Move
  (140, 14000, 91, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Kabuto - Flail - Egg Move
  (140, 14000, 175, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Kabuto - Rapid Spin - Egg Move
  (140, 14000, 229, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Kabutops - Scratch - Level 1
  (141, 14100, 10, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kabutops - Harden - Level 1
  (141, 14100, 106, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kabutops - Absorb - Level 1
  (141, 14100, 71, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kabutops - Absorb - Level 10
  (141, 14100, 71, 3, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Kabutops - Leer - Level 19
  (141, 14100, 43, 3, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Kabutops - Sand Attack - Level 28
  (141, 14100, 28, 3, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Kabutops - Endure - Level 37
  (141, 14100, 203, 3, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Kabutops - Slash - Level 40
  (141, 14100, 163, 3, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Kabutops - Mega Drain - Level 51
  (141, 14100, 72, 3, NULL, 1, 51, NULL, NULL, NULL, 9),
  -- Kabutops - Ancient Power - Level 65
  (141, 14100, 246, 3, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Kabutops - Headbutt - TM02
  (141, 14100, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Kabutops - Curse - TM03
  (141, 14100, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Kabutops - Rollout - TM04
  (141, 14100, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 13),
  -- Kabutops - Toxic - TM06
  (141, 14100, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Kabutops - Rock Smash - TM08
  (141, 14100, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 15),
  -- Kabutops - Hidden Power - TM10
  (141, 14100, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 16),
  -- Kabutops - Snore - TM13
  (141, 14100, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 17),
  -- Kabutops - Blizzard - TM14
  (141, 14100, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 18),
  -- Kabutops - Hyper Beam - TM15
  (141, 14100, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 19),
  -- Kabutops - Icy Wind - TM16
  (141, 14100, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 20),
  -- Kabutops - Protect - TM17
  (141, 14100, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 21),
  -- Kabutops - Rain Dance - TM18
  (141, 14100, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 22),
  -- Kabutops - Giga Drain - TM19
  (141, 14100, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 23),
  -- Kabutops - Endure - TM20
  (141, 14100, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 24),
  -- Kabutops - Frustration - TM21
  (141, 14100, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 25),
  -- Kabutops - Return - TM27
  (141, 14100, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 26),
  -- Kabutops - Double Team - TM32
  (141, 14100, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 27),
  -- Kabutops - Swagger - TM34
  (141, 14100, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 28),
  -- Kabutops - Sleep Talk - TM35
  (141, 14100, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 29),
  -- Kabutops - Sandstorm - TM37
  (141, 14100, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 30),
  -- Kabutops - Rest - TM44
  (141, 14100, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 31),
  -- Kabutops - Attract - TM45
  (141, 14100, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 32),
  -- Kabutops - Thief - TM46
  (141, 14100, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 33),
  -- Kabutops - Fury Cutter - TM49
  (141, 14100, 210, 3, NULL, 2, NULL, NULL, 3002049, NULL, 34),
  -- Kabutops - Cut - HM01
  (141, 14100, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 35),
  -- Kabutops - Surf - HM03
  (141, 14100, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 36),
  -- Kabutops - Whirlpool - HM06
  (141, 14100, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 37),
  -- Aerodactyl - Wing Attack - Level 1
  (142, 14200, 17, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aerodactyl - Agility - Level 8
  (142, 14200, 97, 3, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Aerodactyl - Bite - Level 15
  (142, 14200, 44, 3, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Aerodactyl - Supersonic - Level 22
  (142, 14200, 48, 3, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Aerodactyl - Ancient Power - Level 29
  (142, 14200, 246, 3, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Aerodactyl - Scary Face - Level 36
  (142, 14200, 184, 3, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Aerodactyl - Take Down - Level 43
  (142, 14200, 36, 3, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Aerodactyl - Hyper Beam - Level 50
  (142, 14200, 63, 3, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Aerodactyl - Headbutt - TM02
  (142, 14200, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 9),
  -- Aerodactyl - Curse - TM03
  (142, 14200, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Aerodactyl - Roar - TM05
  (142, 14200, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 11),
  -- Aerodactyl - Toxic - TM06
  (142, 14200, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Aerodactyl - Rock Smash - TM08
  (142, 14200, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 13),
  -- Aerodactyl - Hidden Power - TM10
  (142, 14200, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Aerodactyl - Snore - TM13
  (142, 14200, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 15),
  -- Aerodactyl - Hyper Beam - TM15
  (142, 14200, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 16),
  -- Aerodactyl - Protect - TM17
  (142, 14200, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Aerodactyl - Rain Dance - TM18
  (142, 14200, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 18),
  -- Aerodactyl - Endure - TM20
  (142, 14200, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 19),
  -- Aerodactyl - Frustration - TM21
  (142, 14200, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 20),
  -- Aerodactyl - Iron Tail - TM23
  (142, 14200, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 21),
  -- Aerodactyl - Dragon Breath - TM24
  (142, 14200, 225, 3, NULL, 2, NULL, NULL, 3002024, NULL, 22),
  -- Aerodactyl - Earthquake - TM26
  (142, 14200, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 23),
  -- Aerodactyl - Return - TM27
  (142, 14200, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 24),
  -- Aerodactyl - Double Team - TM32
  (142, 14200, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 25),
  -- Aerodactyl - Swagger - TM34
  (142, 14200, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Aerodactyl - Sleep Talk - TM35
  (142, 14200, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Aerodactyl - Sandstorm - TM37
  (142, 14200, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 28),
  -- Aerodactyl - Fire Blast - TM38
  (142, 14200, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 29),
  -- Aerodactyl - Swift - TM39
  (142, 14200, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 30),
  -- Aerodactyl - Detect - TM43
  (142, 14200, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 31),
  -- Aerodactyl - Rest - TM44
  (142, 14200, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 32),
  -- Aerodactyl - Attract - TM45
  (142, 14200, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 33),
  -- Aerodactyl - Steel Wing - TM47
  (142, 14200, 211, 3, NULL, 2, NULL, NULL, 3002047, NULL, 34),
  -- Aerodactyl - Fly - HM02
  (142, 14200, 19, 3, NULL, 3, NULL, NULL, 3003002, NULL, 35),
  -- Aerodactyl - Foresight - Egg Move
  (142, 14200, 193, 3, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Aerodactyl - Pursuit - Egg Move
  (142, 14200, 228, 3, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Aerodactyl - Steel Wing - Egg Move
  (142, 14200, 211, 3, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Aerodactyl - Whirlwind - Egg Move
  (142, 14200, 18, 3, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Snorlax - Tackle - Level 1
  (143, 14300, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snorlax - Amnesia - Level 8
  (143, 14300, 133, 3, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Snorlax - Defense Curl - Level 15
  (143, 14300, 111, 3, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Snorlax - Belly Drum - Level 22
  (143, 14300, 187, 3, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Snorlax - Headbutt - Level 29
  (143, 14300, 29, 3, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Snorlax - Snore - Level 36
  (143, 14300, 173, 3, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Snorlax - Rest - Level 36
  (143, 14300, 156, 3, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Snorlax - Body Slam - Level 43
  (143, 14300, 34, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Snorlax - Rollout - Level 50
  (143, 14300, 205, 3, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Snorlax - Hyper Beam - Level 57
  (143, 14300, 63, 3, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Snorlax - Dynamic Punch - TM01
  (143, 14300, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 11),
  -- Snorlax - Headbutt - TM02
  (143, 14300, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 12),
  -- Snorlax - Curse - TM03
  (143, 14300, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 13),
  -- Snorlax - Rollout - TM04
  (143, 14300, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 14),
  -- Snorlax - Toxic - TM06
  (143, 14300, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 15),
  -- Snorlax - Zap Cannon - TM07
  (143, 14300, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 16),
  -- Snorlax - Rock Smash - TM08
  (143, 14300, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 17),
  -- Snorlax - Psych Up - TM09
  (143, 14300, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 18),
  -- Snorlax - Hidden Power - TM10
  (143, 14300, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 19),
  -- Snorlax - Sunny Day - TM11
  (143, 14300, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 20),
  -- Snorlax - Snore - TM13
  (143, 14300, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 21),
  -- Snorlax - Blizzard - TM14
  (143, 14300, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 22),
  -- Snorlax - Hyper Beam - TM15
  (143, 14300, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 23),
  -- Snorlax - Icy Wind - TM16
  (143, 14300, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 24),
  -- Snorlax - Protect - TM17
  (143, 14300, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 25),
  -- Snorlax - Rain Dance - TM18
  (143, 14300, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 26),
  -- Snorlax - Endure - TM20
  (143, 14300, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 27),
  -- Snorlax - Frustration - TM21
  (143, 14300, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 28),
  -- Snorlax - Solar Beam - TM22
  (143, 14300, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 29),
  -- Snorlax - Thunder - TM25
  (143, 14300, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 30),
  -- Snorlax - Earthquake - TM26
  (143, 14300, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 31),
  -- Snorlax - Return - TM27
  (143, 14300, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 32),
  -- Snorlax - Psychic - TM29
  (143, 14300, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 33),
  -- Snorlax - Shadow Ball - TM30
  (143, 14300, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 34),
  -- Snorlax - Mud-Slap - TM31
  (143, 14300, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 35),
  -- Snorlax - Double Team - TM32
  (143, 14300, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 36),
  -- Snorlax - Ice Punch - TM33
  (143, 14300, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 37),
  -- Snorlax - Swagger - TM34
  (143, 14300, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 38),
  -- Snorlax - Sleep Talk - TM35
  (143, 14300, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 39),
  -- Snorlax - Sandstorm - TM37
  (143, 14300, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 40),
  -- Snorlax - Fire Blast - TM38
  (143, 14300, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 41),
  -- Snorlax - Defense Curl - TM40
  (143, 14300, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 42),
  -- Snorlax - Thunder Punch - TM41
  (143, 14300, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 43),
  -- Snorlax - Rest - TM44
  (143, 14300, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 44),
  -- Snorlax - Attract - TM45
  (143, 14300, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 45),
  -- Snorlax - Fire Punch - TM48
  (143, 14300, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 46),
  -- Snorlax - Surf - HM03
  (143, 14300, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 47),
  -- Snorlax - Strength - HM04
  (143, 14300, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 48),
  -- Snorlax - Lick - Egg Move
  (143, 14300, 122, 3, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Articuno - Gust - Level 1
  (144, 14400, 16, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Articuno - Powder Snow - Level 1
  (144, 14400, 181, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Articuno - Mist - Level 13
  (144, 14400, 54, 3, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Articuno - Agility - Level 25
  (144, 14400, 97, 3, NULL, 1, 25, NULL, NULL, NULL, 4),
  -- Articuno - Mind Reader - Level 37
  (144, 14400, 170, 3, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Articuno - Ice Beam - Level 49
  (144, 14400, 58, 3, NULL, 1, 49, NULL, NULL, NULL, 6),
  -- Articuno - Reflect - Level 61
  (144, 14400, 115, 3, NULL, 1, 61, NULL, NULL, NULL, 7),
  -- Articuno - Blizzard - Level 73
  (144, 14400, 59, 3, NULL, 1, 73, NULL, NULL, NULL, 8),
  -- Articuno - Curse - TM03
  (144, 14400, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 9),
  -- Articuno - Roar - TM05
  (144, 14400, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 10),
  -- Articuno - Toxic - TM06
  (144, 14400, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Articuno - Rock Smash - TM08
  (144, 14400, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 12),
  -- Articuno - Hidden Power - TM10
  (144, 14400, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 13),
  -- Articuno - Sunny Day - TM11
  (144, 14400, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 14),
  -- Articuno - Snore - TM13
  (144, 14400, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 15),
  -- Articuno - Blizzard - TM14
  (144, 14400, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 16),
  -- Articuno - Hyper Beam - TM15
  (144, 14400, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 17),
  -- Articuno - Icy Wind - TM16
  (144, 14400, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 18),
  -- Articuno - Protect - TM17
  (144, 14400, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Articuno - Rain Dance - TM18
  (144, 14400, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 20),
  -- Articuno - Endure - TM20
  (144, 14400, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Articuno - Frustration - TM21
  (144, 14400, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Articuno - Return - TM27
  (144, 14400, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 23),
  -- Articuno - Mud-Slap - TM31
  (144, 14400, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 24),
  -- Articuno - Double Team - TM32
  (144, 14400, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 25),
  -- Articuno - Swagger - TM34
  (144, 14400, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Articuno - Sleep Talk - TM35
  (144, 14400, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Articuno - Sandstorm - TM37
  (144, 14400, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 28),
  -- Articuno - Swift - TM39
  (144, 14400, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 29),
  -- Articuno - Detect - TM43
  (144, 14400, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 30),
  -- Articuno - Rest - TM44
  (144, 14400, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 31),
  -- Articuno - Steel Wing - TM47
  (144, 14400, 211, 3, NULL, 2, NULL, NULL, 3002047, NULL, 32),
  -- Articuno - Fly - HM02
  (144, 14400, 19, 3, NULL, 3, NULL, NULL, 3003002, NULL, 33),
  -- Zapdos - Peck - Level 1
  (145, 14500, 64, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zapdos - Thunder Shock - Level 1
  (145, 14500, 84, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zapdos - Thunder Wave - Level 13
  (145, 14500, 86, 3, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Zapdos - Agility - Level 25
  (145, 14500, 97, 3, NULL, 1, 25, NULL, NULL, NULL, 4),
  -- Zapdos - Detect - Level 37
  (145, 14500, 197, 3, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Zapdos - Drill Peck - Level 49
  (145, 14500, 65, 3, NULL, 1, 49, NULL, NULL, NULL, 6),
  -- Zapdos - Light Screen - Level 61
  (145, 14500, 113, 3, NULL, 1, 61, NULL, NULL, NULL, 7),
  -- Zapdos - Thunder - Level 73
  (145, 14500, 87, 3, NULL, 1, 73, NULL, NULL, NULL, 8),
  -- Zapdos - Curse - TM03
  (145, 14500, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 9),
  -- Zapdos - Roar - TM05
  (145, 14500, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 10),
  -- Zapdos - Toxic - TM06
  (145, 14500, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Zapdos - Zap Cannon - TM07
  (145, 14500, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 12),
  -- Zapdos - Rock Smash - TM08
  (145, 14500, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 13),
  -- Zapdos - Hidden Power - TM10
  (145, 14500, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Zapdos - Sunny Day - TM11
  (145, 14500, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 15),
  -- Zapdos - Snore - TM13
  (145, 14500, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Zapdos - Hyper Beam - TM15
  (145, 14500, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 17),
  -- Zapdos - Protect - TM17
  (145, 14500, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 18),
  -- Zapdos - Rain Dance - TM18
  (145, 14500, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 19),
  -- Zapdos - Endure - TM20
  (145, 14500, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 20),
  -- Zapdos - Frustration - TM21
  (145, 14500, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 21),
  -- Zapdos - Thunder - TM25
  (145, 14500, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 22),
  -- Zapdos - Return - TM27
  (145, 14500, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 23),
  -- Zapdos - Mud-Slap - TM31
  (145, 14500, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 24),
  -- Zapdos - Double Team - TM32
  (145, 14500, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 25),
  -- Zapdos - Swagger - TM34
  (145, 14500, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Zapdos - Sleep Talk - TM35
  (145, 14500, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Zapdos - Sandstorm - TM37
  (145, 14500, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 28),
  -- Zapdos - Swift - TM39
  (145, 14500, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 29),
  -- Zapdos - Detect - TM43
  (145, 14500, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 30),
  -- Zapdos - Rest - TM44
  (145, 14500, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 31),
  -- Zapdos - Steel Wing - TM47
  (145, 14500, 211, 3, NULL, 2, NULL, NULL, 3002047, NULL, 32),
  -- Zapdos - Fly - HM02
  (145, 14500, 19, 3, NULL, 3, NULL, NULL, 3003002, NULL, 33),
  -- Zapdos - Flash - HM05
  (145, 14500, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 34),
  -- Moltres - Wing Attack - Level 1
  (146, 14600, 17, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Moltres - Ember - Level 1
  (146, 14600, 52, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Moltres - Fire Spin - Level 13
  (146, 14600, 83, 3, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Moltres - Agility - Level 25
  (146, 14600, 97, 3, NULL, 1, 25, NULL, NULL, NULL, 4),
  -- Moltres - Endure - Level 37
  (146, 14600, 203, 3, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Moltres - Flamethrower - Level 49
  (146, 14600, 53, 3, NULL, 1, 49, NULL, NULL, NULL, 6),
  -- Moltres - Safeguard - Level 61
  (146, 14600, 219, 3, NULL, 1, 61, NULL, NULL, NULL, 7),
  -- Moltres - Sky Attack - Level 73
  (146, 14600, 143, 3, NULL, 1, 73, NULL, NULL, NULL, 8),
  -- Moltres - Curse - TM03
  (146, 14600, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 9),
  -- Moltres - Roar - TM05
  (146, 14600, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 10),
  -- Moltres - Toxic - TM06
  (146, 14600, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Moltres - Rock Smash - TM08
  (146, 14600, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 12),
  -- Moltres - Hidden Power - TM10
  (146, 14600, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 13),
  -- Moltres - Sunny Day - TM11
  (146, 14600, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 14),
  -- Moltres - Snore - TM13
  (146, 14600, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 15),
  -- Moltres - Hyper Beam - TM15
  (146, 14600, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 16),
  -- Moltres - Protect - TM17
  (146, 14600, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Moltres - Rain Dance - TM18
  (146, 14600, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 18),
  -- Moltres - Endure - TM20
  (146, 14600, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 19),
  -- Moltres - Frustration - TM21
  (146, 14600, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 20),
  -- Moltres - Return - TM27
  (146, 14600, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 21),
  -- Moltres - Mud-Slap - TM31
  (146, 14600, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 22),
  -- Moltres - Double Team - TM32
  (146, 14600, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 23),
  -- Moltres - Swagger - TM34
  (146, 14600, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 24),
  -- Moltres - Sleep Talk - TM35
  (146, 14600, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 25),
  -- Moltres - Sandstorm - TM37
  (146, 14600, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 26),
  -- Moltres - Fire Blast - TM38
  (146, 14600, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 27),
  -- Moltres - Swift - TM39
  (146, 14600, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 28),
  -- Moltres - Detect - TM43
  (146, 14600, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 29),
  -- Moltres - Rest - TM44
  (146, 14600, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 30),
  -- Moltres - Steel Wing - TM47
  (146, 14600, 211, 3, NULL, 2, NULL, NULL, 3002047, NULL, 31),
  -- Moltres - Fly - HM02
  (146, 14600, 19, 3, NULL, 3, NULL, NULL, 3003002, NULL, 32),
  -- Dratini - Wrap - Level 1
  (147, 14700, 35, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dratini - Leer - Level 1
  (147, 14700, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dratini - Thunder Wave - Level 8
  (147, 14700, 86, 3, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Dratini - Twister - Level 15
  (147, 14700, 239, 3, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Dratini - Dragon Rage - Level 22
  (147, 14700, 82, 3, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Dratini - Slam - Level 29
  (147, 14700, 21, 3, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Dratini - Agility - Level 36
  (147, 14700, 97, 3, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Dratini - Safeguard - Level 43
  (147, 14700, 219, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Dratini - Outrage - Level 50
  (147, 14700, 200, 3, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Dratini - Hyper Beam - Level 57
  (147, 14700, 63, 3, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Dratini - Headbutt - TM02
  (147, 14700, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Dratini - Curse - TM03
  (147, 14700, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Dratini - Toxic - TM06
  (147, 14700, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Dratini - Zap Cannon - TM07
  (147, 14700, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 14),
  -- Dratini - Hidden Power - TM10
  (147, 14700, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Dratini - Snore - TM13
  (147, 14700, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Dratini - Blizzard - TM14
  (147, 14700, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 17),
  -- Dratini - Icy Wind - TM16
  (147, 14700, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 18),
  -- Dratini - Protect - TM17
  (147, 14700, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Dratini - Rain Dance - TM18
  (147, 14700, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 20),
  -- Dratini - Endure - TM20
  (147, 14700, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Dratini - Frustration - TM21
  (147, 14700, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Dratini - Iron Tail - TM23
  (147, 14700, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 23),
  -- Dratini - Dragon Breath - TM24
  (147, 14700, 225, 3, NULL, 2, NULL, NULL, 3002024, NULL, 24),
  -- Dratini - Thunder - TM25
  (147, 14700, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 25),
  -- Dratini - Return - TM27
  (147, 14700, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 26),
  -- Dratini - Double Team - TM32
  (147, 14700, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 27),
  -- Dratini - Swagger - TM34
  (147, 14700, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 28),
  -- Dratini - Sleep Talk - TM35
  (147, 14700, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 29),
  -- Dratini - Fire Blast - TM38
  (147, 14700, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 30),
  -- Dratini - Swift - TM39
  (147, 14700, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 31),
  -- Dratini - Detect - TM43
  (147, 14700, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 32),
  -- Dratini - Rest - TM44
  (147, 14700, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 33),
  -- Dratini - Attract - TM45
  (147, 14700, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 34),
  -- Dratini - Surf - HM03
  (147, 14700, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 35),
  -- Dratini - Waterfall - HM07
  (147, 14700, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 36),
  -- Dratini - Haze - Egg Move
  (147, 14700, 114, 3, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Dratini - Light Screen - Egg Move
  (147, 14700, 113, 3, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Dratini - Mist - Egg Move
  (147, 14700, 54, 3, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Dratini - Supersonic - Egg Move
  (147, 14700, 48, 3, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Dragonair - Wrap - Level 1
  (148, 14800, 35, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonair - Leer - Level 1
  (148, 14800, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonair - Thunder Wave - Level 1
  (148, 14800, 86, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragonair - Twister - Level 1
  (148, 14800, 239, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragonair - Thunder Wave - Level 8
  (148, 14800, 86, 3, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Dragonair - Twister - Level 15
  (148, 14800, 239, 3, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Dragonair - Dragon Rage - Level 22
  (148, 14800, 82, 3, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Dragonair - Slam - Level 29
  (148, 14800, 21, 3, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Dragonair - Agility - Level 38
  (148, 14800, 97, 3, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Dragonair - Safeguard - Level 47
  (148, 14800, 219, 3, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Dragonair - Outrage - Level 56
  (148, 14800, 200, 3, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Dragonair - Hyper Beam - Level 65
  (148, 14800, 63, 3, NULL, 1, 65, NULL, NULL, NULL, 12),
  -- Dragonair - Headbutt - TM02
  (148, 14800, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 13),
  -- Dragonair - Curse - TM03
  (148, 14800, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 14),
  -- Dragonair - Toxic - TM06
  (148, 14800, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 15),
  -- Dragonair - Zap Cannon - TM07
  (148, 14800, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 16),
  -- Dragonair - Hidden Power - TM10
  (148, 14800, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 17),
  -- Dragonair - Snore - TM13
  (148, 14800, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 18),
  -- Dragonair - Blizzard - TM14
  (148, 14800, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 19),
  -- Dragonair - Icy Wind - TM16
  (148, 14800, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 20),
  -- Dragonair - Protect - TM17
  (148, 14800, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 21),
  -- Dragonair - Rain Dance - TM18
  (148, 14800, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 22),
  -- Dragonair - Endure - TM20
  (148, 14800, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 23),
  -- Dragonair - Frustration - TM21
  (148, 14800, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 24),
  -- Dragonair - Iron Tail - TM23
  (148, 14800, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 25),
  -- Dragonair - Dragon Breath - TM24
  (148, 14800, 225, 3, NULL, 2, NULL, NULL, 3002024, NULL, 26),
  -- Dragonair - Thunder - TM25
  (148, 14800, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 27),
  -- Dragonair - Return - TM27
  (148, 14800, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 28),
  -- Dragonair - Double Team - TM32
  (148, 14800, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 29),
  -- Dragonair - Swagger - TM34
  (148, 14800, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 30),
  -- Dragonair - Sleep Talk - TM35
  (148, 14800, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 31),
  -- Dragonair - Fire Blast - TM38
  (148, 14800, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 32),
  -- Dragonair - Swift - TM39
  (148, 14800, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 33),
  -- Dragonair - Detect - TM43
  (148, 14800, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 34),
  -- Dragonair - Rest - TM44
  (148, 14800, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 35),
  -- Dragonair - Attract - TM45
  (148, 14800, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 36),
  -- Dragonair - Surf - HM03
  (148, 14800, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 37),
  -- Dragonair - Waterfall - HM07
  (148, 14800, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 38),
  -- Dragonite - Wrap - Level 1
  (149, 14900, 35, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonite - Leer - Level 1
  (149, 14900, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonite - Thunder Wave - Level 1
  (149, 14900, 86, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragonite - Twister - Level 1
  (149, 14900, 239, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragonite - Thunder Wave - Level 8
  (149, 14900, 86, 3, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Dragonite - Twister - Level 15
  (149, 14900, 239, 3, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Dragonite - Dragon Rage - Level 22
  (149, 14900, 82, 3, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Dragonite - Slam - Level 29
  (149, 14900, 21, 3, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Dragonite - Agility - Level 38
  (149, 14900, 97, 3, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Dragonite - Safeguard - Level 47
  (149, 14900, 219, 3, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Dragonite - Wing Attack - Level 55
  (149, 14900, 17, 3, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Dragonite - Outrage - Level 61
  (149, 14900, 200, 3, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Dragonite - Hyper Beam - Level 75
  (149, 14900, 63, 3, NULL, 1, 75, NULL, NULL, NULL, 13),
  -- Dragonite - Dynamic Punch - TM01
  (149, 14900, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 14),
  -- Dragonite - Headbutt - TM02
  (149, 14900, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 15),
  -- Dragonite - Curse - TM03
  (149, 14900, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 16),
  -- Dragonite - Toxic - TM06
  (149, 14900, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 17),
  -- Dragonite - Zap Cannon - TM07
  (149, 14900, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 18),
  -- Dragonite - Rock Smash - TM08
  (149, 14900, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 19),
  -- Dragonite - Hidden Power - TM10
  (149, 14900, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 20),
  -- Dragonite - Snore - TM13
  (149, 14900, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 21),
  -- Dragonite - Blizzard - TM14
  (149, 14900, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 22),
  -- Dragonite - Hyper Beam - TM15
  (149, 14900, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 23),
  -- Dragonite - Icy Wind - TM16
  (149, 14900, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 24),
  -- Dragonite - Protect - TM17
  (149, 14900, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 25),
  -- Dragonite - Rain Dance - TM18
  (149, 14900, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 26),
  -- Dragonite - Endure - TM20
  (149, 14900, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 27),
  -- Dragonite - Frustration - TM21
  (149, 14900, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 28),
  -- Dragonite - Iron Tail - TM23
  (149, 14900, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 29),
  -- Dragonite - Dragon Breath - TM24
  (149, 14900, 225, 3, NULL, 2, NULL, NULL, 3002024, NULL, 30),
  -- Dragonite - Thunder - TM25
  (149, 14900, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 31),
  -- Dragonite - Return - TM27
  (149, 14900, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 32),
  -- Dragonite - Mud-Slap - TM31
  (149, 14900, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 33),
  -- Dragonite - Double Team - TM32
  (149, 14900, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 34),
  -- Dragonite - Ice Punch - TM33
  (149, 14900, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 35),
  -- Dragonite - Swagger - TM34
  (149, 14900, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 36),
  -- Dragonite - Sleep Talk - TM35
  (149, 14900, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 37),
  -- Dragonite - Sandstorm - TM37
  (149, 14900, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 38),
  -- Dragonite - Fire Blast - TM38
  (149, 14900, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 39),
  -- Dragonite - Swift - TM39
  (149, 14900, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 40),
  -- Dragonite - Thunder Punch - TM41
  (149, 14900, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 41),
  -- Dragonite - Detect - TM43
  (149, 14900, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 42),
  -- Dragonite - Rest - TM44
  (149, 14900, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 43),
  -- Dragonite - Attract - TM45
  (149, 14900, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 44),
  -- Dragonite - Steel Wing - TM47
  (149, 14900, 211, 3, NULL, 2, NULL, NULL, 3002047, NULL, 45),
  -- Dragonite - Fire Punch - TM48
  (149, 14900, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 46),
  -- Dragonite - Fury Cutter - TM49
  (149, 14900, 210, 3, NULL, 2, NULL, NULL, 3002049, NULL, 47),
  -- Dragonite - Fly - HM02
  (149, 14900, 19, 3, NULL, 3, NULL, NULL, 3003002, NULL, 48),
  -- Dragonite - Surf - HM03
  (149, 14900, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 49),
  -- Dragonite - Strength - HM04
  (149, 14900, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 50),
  -- Dragonite - Whirlpool - HM06
  (149, 14900, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 51),
  -- Dragonite - Waterfall - HM07
  (149, 14900, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 52),
  -- Mewtwo - Confusion - Level 1
  (150, 15000, 93, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mewtwo - Disable - Level 1
  (150, 15000, 50, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mewtwo - Barrier - Level 11
  (150, 15000, 112, 3, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Mewtwo - Swift - Level 22
  (150, 15000, 129, 3, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Mewtwo - Psych Up - Level 33
  (150, 15000, 244, 3, NULL, 1, 33, NULL, NULL, NULL, 5),
  -- Mewtwo - Future Sight - Level 44
  (150, 15000, 248, 3, NULL, 1, 44, NULL, NULL, NULL, 6),
  -- Mewtwo - Mist - Level 55
  (150, 15000, 54, 3, NULL, 1, 55, NULL, NULL, NULL, 7),
  -- Mewtwo - Psychic - Level 66
  (150, 15000, 94, 3, NULL, 1, 66, NULL, NULL, NULL, 8),
  -- Mewtwo - Amnesia - Level 77
  (150, 15000, 133, 3, NULL, 1, 77, NULL, NULL, NULL, 9),
  -- Mewtwo - Recover - Level 88
  (150, 15000, 105, 3, NULL, 1, 88, NULL, NULL, NULL, 10),
  -- Mewtwo - Safeguard - Level 99
  (150, 15000, 219, 3, NULL, 1, 99, NULL, NULL, NULL, 11),
  -- Mewtwo - Dynamic Punch - TM01
  (150, 15000, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 12),
  -- Mewtwo - Headbutt - TM02
  (150, 15000, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 13),
  -- Mewtwo - Curse - TM03
  (150, 15000, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 14),
  -- Mewtwo - Toxic - TM06
  (150, 15000, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 15),
  -- Mewtwo - Zap Cannon - TM07
  (150, 15000, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 16),
  -- Mewtwo - Rock Smash - TM08
  (150, 15000, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 17),
  -- Mewtwo - Psych Up - TM09
  (150, 15000, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 18),
  -- Mewtwo - Hidden Power - TM10
  (150, 15000, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 19),
  -- Mewtwo - Sunny Day - TM11
  (150, 15000, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 20),
  -- Mewtwo - Snore - TM13
  (150, 15000, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 21),
  -- Mewtwo - Blizzard - TM14
  (150, 15000, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 22),
  -- Mewtwo - Hyper Beam - TM15
  (150, 15000, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 23),
  -- Mewtwo - Icy Wind - TM16
  (150, 15000, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 24),
  -- Mewtwo - Protect - TM17
  (150, 15000, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 25),
  -- Mewtwo - Rain Dance - TM18
  (150, 15000, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 26),
  -- Mewtwo - Endure - TM20
  (150, 15000, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 27),
  -- Mewtwo - Frustration - TM21
  (150, 15000, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 28),
  -- Mewtwo - Solar Beam - TM22
  (150, 15000, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 29),
  -- Mewtwo - Iron Tail - TM23
  (150, 15000, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 30),
  -- Mewtwo - Thunder - TM25
  (150, 15000, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 31),
  -- Mewtwo - Return - TM27
  (150, 15000, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 32),
  -- Mewtwo - Psychic - TM29
  (150, 15000, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 33),
  -- Mewtwo - Shadow Ball - TM30
  (150, 15000, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 34),
  -- Mewtwo - Mud-Slap - TM31
  (150, 15000, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 35),
  -- Mewtwo - Double Team - TM32
  (150, 15000, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 36),
  -- Mewtwo - Ice Punch - TM33
  (150, 15000, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 37),
  -- Mewtwo - Swagger - TM34
  (150, 15000, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 38),
  -- Mewtwo - Sleep Talk - TM35
  (150, 15000, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 39),
  -- Mewtwo - Fire Blast - TM38
  (150, 15000, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 40),
  -- Mewtwo - Swift - TM39
  (150, 15000, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 41),
  -- Mewtwo - Thunder Punch - TM41
  (150, 15000, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 42),
  -- Mewtwo - Dream Eater - TM42
  (150, 15000, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 43),
  -- Mewtwo - Detect - TM43
  (150, 15000, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 44),
  -- Mewtwo - Rest - TM44
  (150, 15000, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 45),
  -- Mewtwo - Fire Punch - TM48
  (150, 15000, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 46),
  -- Mewtwo - Nightmare - TM50
  (150, 15000, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 47),
  -- Mewtwo - Strength - HM04
  (150, 15000, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 48),
  -- Mewtwo - Flash - HM05
  (150, 15000, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 49),
  -- Mew - Pound - Level 1
  (151, 15100, 1, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mew - Transform - Level 10
  (151, 15100, 144, 3, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Mew - Mega Punch - Level 20
  (151, 15100, 5, 3, NULL, 1, 20, NULL, NULL, NULL, 3),
  -- Mew - Metronome - Level 30
  (151, 15100, 118, 3, NULL, 1, 30, NULL, NULL, NULL, 4),
  -- Mew - Psychic - Level 40
  (151, 15100, 94, 3, NULL, 1, 40, NULL, NULL, NULL, 5),
  -- Mew - Ancient Power - Level 50
  (151, 15100, 246, 3, NULL, 1, 50, NULL, NULL, NULL, 6),
  -- Mew - Dynamic Punch - TM01
  (151, 15100, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 7),
  -- Mew - Headbutt - TM02
  (151, 15100, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 8),
  -- Mew - Curse - TM03
  (151, 15100, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 9),
  -- Mew - Rollout - TM04
  (151, 15100, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 10),
  -- Mew - Roar - TM05
  (151, 15100, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 11),
  -- Mew - Toxic - TM06
  (151, 15100, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Mew - Zap Cannon - TM07
  (151, 15100, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 13),
  -- Mew - Rock Smash - TM08
  (151, 15100, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 14),
  -- Mew - Psych Up - TM09
  (151, 15100, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 15),
  -- Mew - Hidden Power - TM10
  (151, 15100, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 16),
  -- Mew - Sunny Day - TM11
  (151, 15100, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 17),
  -- Mew - Sweet Scent - TM12
  (151, 15100, 230, 3, NULL, 2, NULL, NULL, 3002012, NULL, 18),
  -- Mew - Snore - TM13
  (151, 15100, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 19),
  -- Mew - Blizzard - TM14
  (151, 15100, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 20),
  -- Mew - Hyper Beam - TM15
  (151, 15100, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 21),
  -- Mew - Icy Wind - TM16
  (151, 15100, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 22),
  -- Mew - Protect - TM17
  (151, 15100, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 23),
  -- Mew - Rain Dance - TM18
  (151, 15100, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 24),
  -- Mew - Giga Drain - TM19
  (151, 15100, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 25),
  -- Mew - Endure - TM20
  (151, 15100, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 26),
  -- Mew - Frustration - TM21
  (151, 15100, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 27),
  -- Mew - Solar Beam - TM22
  (151, 15100, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 28),
  -- Mew - Iron Tail - TM23
  (151, 15100, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 29),
  -- Mew - Dragon Breath - TM24
  (151, 15100, 225, 3, NULL, 2, NULL, NULL, 3002024, NULL, 30),
  -- Mew - Thunder - TM25
  (151, 15100, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 31),
  -- Mew - Earthquake - TM26
  (151, 15100, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 32),
  -- Mew - Return - TM27
  (151, 15100, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 33),
  -- Mew - Dig - TM28
  (151, 15100, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 34),
  -- Mew - Psychic - TM29
  (151, 15100, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 35),
  -- Mew - Shadow Ball - TM30
  (151, 15100, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 36),
  -- Mew - Mud-Slap - TM31
  (151, 15100, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 37),
  -- Mew - Double Team - TM32
  (151, 15100, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 38),
  -- Mew - Ice Punch - TM33
  (151, 15100, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 39),
  -- Mew - Swagger - TM34
  (151, 15100, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 40),
  -- Mew - Sleep Talk - TM35
  (151, 15100, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 41),
  -- Mew - Sludge Bomb - TM36
  (151, 15100, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 42),
  -- Mew - Sandstorm - TM37
  (151, 15100, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 43),
  -- Mew - Fire Blast - TM38
  (151, 15100, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 44),
  -- Mew - Swift - TM39
  (151, 15100, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 45),
  -- Mew - Defense Curl - TM40
  (151, 15100, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 46),
  -- Mew - Thunder Punch - TM41
  (151, 15100, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 47),
  -- Mew - Dream Eater - TM42
  (151, 15100, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 48),
  -- Mew - Detect - TM43
  (151, 15100, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 49),
  -- Mew - Rest - TM44
  (151, 15100, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 50),
  -- Mew - Attract - TM45
  (151, 15100, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 51),
  -- Mew - Thief - TM46
  (151, 15100, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 52),
  -- Mew - Steel Wing - TM47
  (151, 15100, 211, 3, NULL, 2, NULL, NULL, 3002047, NULL, 53),
  -- Mew - Fire Punch - TM48
  (151, 15100, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 54),
  -- Mew - Fury Cutter - TM49
  (151, 15100, 210, 3, NULL, 2, NULL, NULL, 3002049, NULL, 55),
  -- Mew - Nightmare - TM50
  (151, 15100, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 56),
  -- Mew - Cut - HM01
  (151, 15100, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 57),
  -- Mew - Fly - HM02
  (151, 15100, 19, 3, NULL, 3, NULL, NULL, 3003002, NULL, 58),
  -- Mew - Surf - HM03
  (151, 15100, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 59),
  -- Mew - Strength - HM04
  (151, 15100, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 60),
  -- Mew - Flash - HM05
  (151, 15100, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 61),
  -- Mew - Whirlpool - HM06
  (151, 15100, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 62),
  -- Mew - Waterfall - HM07
  (151, 15100, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 63);
