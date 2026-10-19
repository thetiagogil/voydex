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
-- Pokémon: #101-#151
-- Rows: 1931
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
  -- Electrode - Charge - Level 1
  (101, 10100, 268, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electrode - Tackle - Level 1
  (101, 10100, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electrode - Screech - Level 1
  (101, 10100, 103, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electrode - Sonic Boom - Level 1
  (101, 10100, 49, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Electrode - Screech - Level 8
  (101, 10100, 103, 5, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Electrode - Sonic Boom - Level 15
  (101, 10100, 49, 5, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Electrode - Spark - Level 21
  (101, 10100, 209, 5, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Electrode - Self-Destruct - Level 27
  (101, 10100, 120, 5, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Electrode - Rollout - Level 34
  (101, 10100, 205, 5, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Electrode - Light Screen - Level 41
  (101, 10100, 113, 5, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Electrode - Swift - Level 48
  (101, 10100, 129, 5, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Electrode - Explosion - Level 54
  (101, 10100, 153, 5, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Electrode - Mirror Coat - Level 59
  (101, 10100, 243, 5, NULL, 1, 59, NULL, NULL, NULL, 13),
  -- Electrode - Toxic - TM06
  (101, 10100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Electrode - Hidden Power - TM10
  (101, 10100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Electrode - Taunt - TM12
  (101, 10100, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 16),
  -- Electrode - Hyper Beam - TM15
  (101, 10100, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 17),
  -- Electrode - Light Screen - TM16
  (101, 10100, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 18),
  -- Electrode - Protect - TM17
  (101, 10100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 19),
  -- Electrode - Rain Dance - TM18
  (101, 10100, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 20),
  -- Electrode - Frustration - TM21
  (101, 10100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 21),
  -- Electrode - Thunderbolt - TM24
  (101, 10100, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 22),
  -- Electrode - Thunder - TM25
  (101, 10100, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 23),
  -- Electrode - Return - TM27
  (101, 10100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 24),
  -- Electrode - Double Team - TM32
  (101, 10100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 25),
  -- Electrode - Shock Wave - TM34
  (101, 10100, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 26),
  -- Electrode - Torment - TM41
  (101, 10100, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 27),
  -- Electrode - Facade - TM42
  (101, 10100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 28),
  -- Electrode - Secret Power - TM43
  (101, 10100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 29),
  -- Electrode - Rest - TM44
  (101, 10100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 30),
  -- Electrode - Thief - TM46
  (101, 10100, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 31),
  -- Electrode - Flash - HM05
  (101, 10100, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 32),
  -- Exeggcute - Uproar - Level 1
  (102, 10200, 253, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggcute - Barrage - Level 1
  (102, 10200, 140, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggcute - Hypnosis - Level 1
  (102, 10200, 95, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exeggcute - Reflect - Level 7
  (102, 10200, 115, 5, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Exeggcute - Leech Seed - Level 13
  (102, 10200, 73, 5, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Exeggcute - Confusion - Level 19
  (102, 10200, 93, 5, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Exeggcute - Stun Spore - Level 25
  (102, 10200, 78, 5, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Exeggcute - Poison Powder - Level 31
  (102, 10200, 77, 5, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Exeggcute - Sleep Powder - Level 37
  (102, 10200, 79, 5, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Exeggcute - Solar Beam - Level 43
  (102, 10200, 76, 5, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Exeggcute - Toxic - TM06
  (102, 10200, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Exeggcute - Bullet Seed - TM09
  (102, 10200, 331, 5, NULL, 2, NULL, NULL, 5002009, NULL, 12),
  -- Exeggcute - Hidden Power - TM10
  (102, 10200, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Exeggcute - Sunny Day - TM11
  (102, 10200, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Exeggcute - Light Screen - TM16
  (102, 10200, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 15),
  -- Exeggcute - Protect - TM17
  (102, 10200, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Exeggcute - Giga Drain - TM19
  (102, 10200, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 17),
  -- Exeggcute - Frustration - TM21
  (102, 10200, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Exeggcute - Solar Beam - TM22
  (102, 10200, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 19),
  -- Exeggcute - Return - TM27
  (102, 10200, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 20),
  -- Exeggcute - Psychic - TM29
  (102, 10200, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 21),
  -- Exeggcute - Double Team - TM32
  (102, 10200, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 22),
  -- Exeggcute - Reflect - TM33
  (102, 10200, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 23),
  -- Exeggcute - Sludge Bomb - TM36
  (102, 10200, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 24),
  -- Exeggcute - Facade - TM42
  (102, 10200, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 25),
  -- Exeggcute - Secret Power - TM43
  (102, 10200, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 26),
  -- Exeggcute - Rest - TM44
  (102, 10200, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 27),
  -- Exeggcute - Attract - TM45
  (102, 10200, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 28),
  -- Exeggcute - Thief - TM46
  (102, 10200, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 29),
  -- Exeggcute - Skill Swap - TM48
  (102, 10200, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 30),
  -- Exeggcute - Strength - HM04
  (102, 10200, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 31),
  -- Exeggcute - Flash - HM05
  (102, 10200, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 32),
  -- Exeggcute - Ancient Power - Egg Move
  (102, 10200, 246, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Exeggcute - Curse - Egg Move
  (102, 10200, 174, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Exeggcute - Ingrain - Egg Move
  (102, 10200, 275, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Exeggcute - Moonlight - Egg Move
  (102, 10200, 236, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Exeggcute - Psych Up - Egg Move
  (102, 10200, 244, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Exeggcute - Reflect - Egg Move
  (102, 10200, 115, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Exeggcute - Synthesis - Egg Move
  (102, 10200, 235, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Exeggutor - Confusion - Level 1
  (103, 10300, 93, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Exeggutor - Barrage - Level 1
  (103, 10300, 140, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Exeggutor - Hypnosis - Level 1
  (103, 10300, 95, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Exeggutor - Stomp - Level 19
  (103, 10300, 23, 5, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Exeggutor - Egg Bomb - Level 31
  (103, 10300, 121, 5, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Exeggutor - Toxic - TM06
  (103, 10300, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 6),
  -- Exeggutor - Bullet Seed - TM09
  (103, 10300, 331, 5, NULL, 2, NULL, NULL, 5002009, NULL, 7),
  -- Exeggutor - Hidden Power - TM10
  (103, 10300, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 8),
  -- Exeggutor - Sunny Day - TM11
  (103, 10300, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 9),
  -- Exeggutor - Hyper Beam - TM15
  (103, 10300, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 10),
  -- Exeggutor - Light Screen - TM16
  (103, 10300, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 11),
  -- Exeggutor - Protect - TM17
  (103, 10300, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 12),
  -- Exeggutor - Giga Drain - TM19
  (103, 10300, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 13),
  -- Exeggutor - Frustration - TM21
  (103, 10300, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 14),
  -- Exeggutor - Solar Beam - TM22
  (103, 10300, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 15),
  -- Exeggutor - Return - TM27
  (103, 10300, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 16),
  -- Exeggutor - Psychic - TM29
  (103, 10300, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 17),
  -- Exeggutor - Double Team - TM32
  (103, 10300, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 18),
  -- Exeggutor - Reflect - TM33
  (103, 10300, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 19),
  -- Exeggutor - Sludge Bomb - TM36
  (103, 10300, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 20),
  -- Exeggutor - Facade - TM42
  (103, 10300, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 21),
  -- Exeggutor - Secret Power - TM43
  (103, 10300, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 22),
  -- Exeggutor - Rest - TM44
  (103, 10300, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 23),
  -- Exeggutor - Attract - TM45
  (103, 10300, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 24),
  -- Exeggutor - Thief - TM46
  (103, 10300, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 25),
  -- Exeggutor - Skill Swap - TM48
  (103, 10300, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 26),
  -- Exeggutor - Strength - HM04
  (103, 10300, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 27),
  -- Exeggutor - Flash - HM05
  (103, 10300, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 28),
  -- Cubone - Growl - Level 1
  (104, 10400, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cubone - Tail Whip - Level 5
  (104, 10400, 39, 5, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Cubone - Bone Club - Level 9
  (104, 10400, 125, 5, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Cubone - Headbutt - Level 13
  (104, 10400, 29, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Cubone - Leer - Level 17
  (104, 10400, 43, 5, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Cubone - Focus Energy - Level 21
  (104, 10400, 116, 5, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Cubone - Bonemerang - Level 25
  (104, 10400, 155, 5, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Cubone - Rage - Level 29
  (104, 10400, 99, 5, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Cubone - False Swipe - Level 33
  (104, 10400, 206, 5, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Cubone - Thrash - Level 37
  (104, 10400, 37, 5, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Cubone - Bone Rush - Level 41
  (104, 10400, 198, 5, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Cubone - Double-Edge - Level 45
  (104, 10400, 38, 5, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Cubone - Focus Punch - TM01
  (104, 10400, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 13),
  -- Cubone - Toxic - TM06
  (104, 10400, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Cubone - Hidden Power - TM10
  (104, 10400, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Cubone - Sunny Day - TM11
  (104, 10400, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 16),
  -- Cubone - Ice Beam - TM13
  (104, 10400, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 17),
  -- Cubone - Blizzard - TM14
  (104, 10400, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 18),
  -- Cubone - Protect - TM17
  (104, 10400, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 19),
  -- Cubone - Frustration - TM21
  (104, 10400, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Cubone - Iron Tail - TM23
  (104, 10400, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 21),
  -- Cubone - Earthquake - TM26
  (104, 10400, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 22),
  -- Cubone - Return - TM27
  (104, 10400, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Cubone - Dig - TM28
  (104, 10400, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 24),
  -- Cubone - Brick Break - TM31
  (104, 10400, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 25),
  -- Cubone - Double Team - TM32
  (104, 10400, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 26),
  -- Cubone - Flamethrower - TM35
  (104, 10400, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 27),
  -- Cubone - Sandstorm - TM37
  (104, 10400, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 28),
  -- Cubone - Fire Blast - TM38
  (104, 10400, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 29),
  -- Cubone - Rock Tomb - TM39
  (104, 10400, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 30),
  -- Cubone - Aerial Ace - TM40
  (104, 10400, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 31),
  -- Cubone - Facade - TM42
  (104, 10400, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 32),
  -- Cubone - Secret Power - TM43
  (104, 10400, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 33),
  -- Cubone - Rest - TM44
  (104, 10400, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 34),
  -- Cubone - Attract - TM45
  (104, 10400, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 35),
  -- Cubone - Thief - TM46
  (104, 10400, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 36),
  -- Cubone - Strength - HM04
  (104, 10400, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 37),
  -- Cubone - Rock Smash - HM06
  (104, 10400, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 38),
  -- Cubone - Ancient Power - Egg Move
  (104, 10400, 246, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Cubone - Belly Drum - Egg Move
  (104, 10400, 187, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Cubone - Perish Song - Egg Move
  (104, 10400, 195, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Cubone - Rock Slide - Egg Move
  (104, 10400, 157, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cubone - Screech - Egg Move
  (104, 10400, 103, 5, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cubone - Skull Bash - Egg Move
  (104, 10400, 130, 5, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cubone - Swords Dance - Egg Move
  (104, 10400, 14, 5, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Marowak - Growl - Level 1
  (105, 10500, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marowak - Tail Whip - Level 1
  (105, 10500, 39, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marowak - Bone Club - Level 1
  (105, 10500, 125, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marowak - Headbutt - Level 1
  (105, 10500, 29, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Marowak - Tail Whip - Level 5
  (105, 10500, 39, 5, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Marowak - Bone Club - Level 9
  (105, 10500, 125, 5, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Marowak - Headbutt - Level 13
  (105, 10500, 29, 5, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Marowak - Leer - Level 17
  (105, 10500, 43, 5, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Marowak - Focus Energy - Level 21
  (105, 10500, 116, 5, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Marowak - Bonemerang - Level 25
  (105, 10500, 155, 5, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Marowak - Rage - Level 32
  (105, 10500, 99, 5, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Marowak - False Swipe - Level 39
  (105, 10500, 206, 5, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Marowak - Thrash - Level 46
  (105, 10500, 37, 5, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Marowak - Bone Rush - Level 53
  (105, 10500, 198, 5, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Marowak - Double-Edge - Level 61
  (105, 10500, 38, 5, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Marowak - Focus Punch - TM01
  (105, 10500, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 16),
  -- Marowak - Toxic - TM06
  (105, 10500, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 17),
  -- Marowak - Hidden Power - TM10
  (105, 10500, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 18),
  -- Marowak - Sunny Day - TM11
  (105, 10500, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 19),
  -- Marowak - Ice Beam - TM13
  (105, 10500, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 20),
  -- Marowak - Blizzard - TM14
  (105, 10500, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 21),
  -- Marowak - Hyper Beam - TM15
  (105, 10500, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 22),
  -- Marowak - Protect - TM17
  (105, 10500, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 23),
  -- Marowak - Frustration - TM21
  (105, 10500, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 24),
  -- Marowak - Iron Tail - TM23
  (105, 10500, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 25),
  -- Marowak - Earthquake - TM26
  (105, 10500, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 26),
  -- Marowak - Return - TM27
  (105, 10500, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 27),
  -- Marowak - Dig - TM28
  (105, 10500, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 28),
  -- Marowak - Brick Break - TM31
  (105, 10500, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 29),
  -- Marowak - Double Team - TM32
  (105, 10500, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 30),
  -- Marowak - Flamethrower - TM35
  (105, 10500, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 31),
  -- Marowak - Sandstorm - TM37
  (105, 10500, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 32),
  -- Marowak - Fire Blast - TM38
  (105, 10500, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 33),
  -- Marowak - Rock Tomb - TM39
  (105, 10500, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 34),
  -- Marowak - Aerial Ace - TM40
  (105, 10500, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 35),
  -- Marowak - Facade - TM42
  (105, 10500, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 36),
  -- Marowak - Secret Power - TM43
  (105, 10500, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 37),
  -- Marowak - Rest - TM44
  (105, 10500, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 38),
  -- Marowak - Attract - TM45
  (105, 10500, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 39),
  -- Marowak - Thief - TM46
  (105, 10500, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 40),
  -- Marowak - Strength - HM04
  (105, 10500, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 41),
  -- Marowak - Rock Smash - HM06
  (105, 10500, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 42),
  -- Hitmonlee - Double Kick - Level 1
  (106, 10600, 24, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmonlee - Revenge - Level 1
  (106, 10600, 279, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmonlee - Meditate - Level 6
  (106, 10600, 96, 5, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Hitmonlee - Rolling Kick - Level 11
  (106, 10600, 27, 5, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Hitmonlee - Jump Kick - Level 16
  (106, 10600, 26, 5, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Hitmonlee - Brick Break - Level 20
  (106, 10600, 280, 5, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Hitmonlee - Focus Energy - Level 21
  (106, 10600, 116, 5, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Hitmonlee - High Jump Kick - Level 26
  (106, 10600, 136, 5, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Hitmonlee - Mind Reader - Level 31
  (106, 10600, 170, 5, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Hitmonlee - Foresight - Level 36
  (106, 10600, 193, 5, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Hitmonlee - Endure - Level 41
  (106, 10600, 203, 5, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Hitmonlee - Mega Kick - Level 46
  (106, 10600, 25, 5, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Hitmonlee - Reversal - Level 51
  (106, 10600, 179, 5, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Hitmonlee - Focus Punch - TM01
  (106, 10600, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 14),
  -- Hitmonlee - Toxic - TM06
  (106, 10600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 15),
  -- Hitmonlee - Bulk Up - TM08
  (106, 10600, 339, 5, NULL, 2, NULL, NULL, 5002008, NULL, 16),
  -- Hitmonlee - Hidden Power - TM10
  (106, 10600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 17),
  -- Hitmonlee - Sunny Day - TM11
  (106, 10600, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 18),
  -- Hitmonlee - Protect - TM17
  (106, 10600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 19),
  -- Hitmonlee - Rain Dance - TM18
  (106, 10600, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 20),
  -- Hitmonlee - Frustration - TM21
  (106, 10600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 21),
  -- Hitmonlee - Earthquake - TM26
  (106, 10600, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 22),
  -- Hitmonlee - Return - TM27
  (106, 10600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Hitmonlee - Brick Break - TM31
  (106, 10600, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 24),
  -- Hitmonlee - Double Team - TM32
  (106, 10600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 25),
  -- Hitmonlee - Rock Tomb - TM39
  (106, 10600, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 26),
  -- Hitmonlee - Facade - TM42
  (106, 10600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Hitmonlee - Secret Power - TM43
  (106, 10600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Hitmonlee - Rest - TM44
  (106, 10600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Hitmonlee - Attract - TM45
  (106, 10600, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 30),
  -- Hitmonlee - Thief - TM46
  (106, 10600, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 31),
  -- Hitmonlee - Strength - HM04
  (106, 10600, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 32),
  -- Hitmonlee - Rock Smash - HM06
  (106, 10600, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 33),
  -- Hitmonchan - Comet Punch - Level 1
  (107, 10700, 4, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmonchan - Revenge - Level 1
  (107, 10700, 279, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmonchan - Agility - Level 7
  (107, 10700, 97, 5, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Hitmonchan - Pursuit - Level 13
  (107, 10700, 228, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Hitmonchan - Mach Punch - Level 20
  (107, 10700, 183, 5, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Hitmonchan - Thunder Punch - Level 26
  (107, 10700, 9, 5, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Hitmonchan - Ice Punch - Level 26
  (107, 10700, 8, 5, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Hitmonchan - Fire Punch - Level 26
  (107, 10700, 7, 5, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Hitmonchan - Sky Uppercut - Level 32
  (107, 10700, 327, 5, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Hitmonchan - Mega Punch - Level 38
  (107, 10700, 5, 5, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Hitmonchan - Detect - Level 44
  (107, 10700, 197, 5, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Hitmonchan - Counter - Level 50
  (107, 10700, 68, 5, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Hitmonchan - Focus Punch - TM01
  (107, 10700, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 13),
  -- Hitmonchan - Toxic - TM06
  (107, 10700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Hitmonchan - Bulk Up - TM08
  (107, 10700, 339, 5, NULL, 2, NULL, NULL, 5002008, NULL, 15),
  -- Hitmonchan - Hidden Power - TM10
  (107, 10700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Hitmonchan - Sunny Day - TM11
  (107, 10700, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 17),
  -- Hitmonchan - Protect - TM17
  (107, 10700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Hitmonchan - Rain Dance - TM18
  (107, 10700, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 19),
  -- Hitmonchan - Frustration - TM21
  (107, 10700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Hitmonchan - Earthquake - TM26
  (107, 10700, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 21),
  -- Hitmonchan - Return - TM27
  (107, 10700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 22),
  -- Hitmonchan - Brick Break - TM31
  (107, 10700, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 23),
  -- Hitmonchan - Double Team - TM32
  (107, 10700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Hitmonchan - Rock Tomb - TM39
  (107, 10700, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 25),
  -- Hitmonchan - Facade - TM42
  (107, 10700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 26),
  -- Hitmonchan - Secret Power - TM43
  (107, 10700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 27),
  -- Hitmonchan - Rest - TM44
  (107, 10700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 28),
  -- Hitmonchan - Attract - TM45
  (107, 10700, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 29),
  -- Hitmonchan - Thief - TM46
  (107, 10700, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 30),
  -- Hitmonchan - Strength - HM04
  (107, 10700, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 31),
  -- Hitmonchan - Rock Smash - HM06
  (107, 10700, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 32),
  -- Lickitung - Lick - Level 1
  (108, 10800, 122, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lickitung - Supersonic - Level 7
  (108, 10800, 48, 5, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Lickitung - Defense Curl - Level 12
  (108, 10800, 111, 5, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Lickitung - Knock Off - Level 18
  (108, 10800, 282, 5, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Lickitung - Stomp - Level 23
  (108, 10800, 23, 5, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Lickitung - Wrap - Level 29
  (108, 10800, 35, 5, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Lickitung - Disable - Level 34
  (108, 10800, 50, 5, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Lickitung - Slam - Level 40
  (108, 10800, 21, 5, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Lickitung - Screech - Level 45
  (108, 10800, 103, 5, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Lickitung - Refresh - Level 51
  (108, 10800, 287, 5, NULL, 1, 51, NULL, NULL, NULL, 10),
  -- Lickitung - Focus Punch - TM01
  (108, 10800, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 11),
  -- Lickitung - Water Pulse - TM03
  (108, 10800, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 12),
  -- Lickitung - Toxic - TM06
  (108, 10800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Lickitung - Hidden Power - TM10
  (108, 10800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Lickitung - Sunny Day - TM11
  (108, 10800, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Lickitung - Ice Beam - TM13
  (108, 10800, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 16),
  -- Lickitung - Blizzard - TM14
  (108, 10800, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 17),
  -- Lickitung - Hyper Beam - TM15
  (108, 10800, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 18),
  -- Lickitung - Protect - TM17
  (108, 10800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 19),
  -- Lickitung - Rain Dance - TM18
  (108, 10800, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 20),
  -- Lickitung - Frustration - TM21
  (108, 10800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 21),
  -- Lickitung - Solar Beam - TM22
  (108, 10800, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 22),
  -- Lickitung - Iron Tail - TM23
  (108, 10800, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 23),
  -- Lickitung - Thunderbolt - TM24
  (108, 10800, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 24),
  -- Lickitung - Thunder - TM25
  (108, 10800, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 25),
  -- Lickitung - Earthquake - TM26
  (108, 10800, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 26),
  -- Lickitung - Return - TM27
  (108, 10800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 27),
  -- Lickitung - Dig - TM28
  (108, 10800, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 28),
  -- Lickitung - Shadow Ball - TM30
  (108, 10800, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 29),
  -- Lickitung - Brick Break - TM31
  (108, 10800, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 30),
  -- Lickitung - Double Team - TM32
  (108, 10800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 31),
  -- Lickitung - Shock Wave - TM34
  (108, 10800, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 32),
  -- Lickitung - Flamethrower - TM35
  (108, 10800, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 33),
  -- Lickitung - Sandstorm - TM37
  (108, 10800, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 34),
  -- Lickitung - Fire Blast - TM38
  (108, 10800, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 35),
  -- Lickitung - Rock Tomb - TM39
  (108, 10800, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 36),
  -- Lickitung - Facade - TM42
  (108, 10800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 37),
  -- Lickitung - Secret Power - TM43
  (108, 10800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 38),
  -- Lickitung - Rest - TM44
  (108, 10800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 39),
  -- Lickitung - Attract - TM45
  (108, 10800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 40),
  -- Lickitung - Thief - TM46
  (108, 10800, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 41),
  -- Lickitung - Cut - HM01
  (108, 10800, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 42),
  -- Lickitung - Surf - HM03
  (108, 10800, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 43),
  -- Lickitung - Strength - HM04
  (108, 10800, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 44),
  -- Lickitung - Rock Smash - HM06
  (108, 10800, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 45),
  -- Lickitung - Belly Drum - Egg Move
  (108, 10800, 187, 5, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Lickitung - Body Slam - Egg Move
  (108, 10800, 34, 5, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lickitung - Curse - Egg Move
  (108, 10800, 174, 5, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lickitung - Magnitude - Egg Move
  (108, 10800, 222, 5, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lickitung - Sleep Talk - Egg Move
  (108, 10800, 214, 5, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lickitung - Smelling Salts - Egg Move
  (108, 10800, 265, 5, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Lickitung - Snore - Egg Move
  (108, 10800, 173, 5, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Lickitung - Substitute - Egg Move
  (108, 10800, 164, 5, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Koffing - Poison Gas - Level 1
  (109, 10900, 139, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Koffing - Tackle - Level 1
  (109, 10900, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Koffing - Smog - Level 9
  (109, 10900, 123, 5, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Koffing - Self-Destruct - Level 17
  (109, 10900, 120, 5, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Koffing - Sludge - Level 21
  (109, 10900, 124, 5, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Koffing - Smokescreen - Level 25
  (109, 10900, 108, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Koffing - Haze - Level 33
  (109, 10900, 114, 5, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Koffing - Explosion - Level 41
  (109, 10900, 153, 5, NULL, 1, 41, NULL, NULL, NULL, 8),
  -- Koffing - Destiny Bond - Level 45
  (109, 10900, 194, 5, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Koffing - Memento - Level 49
  (109, 10900, 262, 5, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Koffing - Toxic - TM06
  (109, 10900, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Koffing - Hidden Power - TM10
  (109, 10900, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Koffing - Sunny Day - TM11
  (109, 10900, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 13),
  -- Koffing - Taunt - TM12
  (109, 10900, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 14),
  -- Koffing - Protect - TM17
  (109, 10900, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Koffing - Rain Dance - TM18
  (109, 10900, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 16),
  -- Koffing - Frustration - TM21
  (109, 10900, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 17),
  -- Koffing - Thunderbolt - TM24
  (109, 10900, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 18),
  -- Koffing - Thunder - TM25
  (109, 10900, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 19),
  -- Koffing - Return - TM27
  (109, 10900, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 20),
  -- Koffing - Shadow Ball - TM30
  (109, 10900, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 21),
  -- Koffing - Double Team - TM32
  (109, 10900, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 22),
  -- Koffing - Shock Wave - TM34
  (109, 10900, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 23),
  -- Koffing - Flamethrower - TM35
  (109, 10900, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 24),
  -- Koffing - Sludge Bomb - TM36
  (109, 10900, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 25),
  -- Koffing - Fire Blast - TM38
  (109, 10900, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 26),
  -- Koffing - Torment - TM41
  (109, 10900, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 27),
  -- Koffing - Facade - TM42
  (109, 10900, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 28),
  -- Koffing - Secret Power - TM43
  (109, 10900, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 29),
  -- Koffing - Rest - TM44
  (109, 10900, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 30),
  -- Koffing - Attract - TM45
  (109, 10900, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 31),
  -- Koffing - Thief - TM46
  (109, 10900, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 32),
  -- Koffing - Flash - HM05
  (109, 10900, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 33),
  -- Koffing - Destiny Bond - Egg Move
  (109, 10900, 194, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Koffing - Pain Split - Egg Move
  (109, 10900, 220, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Koffing - Psybeam - Egg Move
  (109, 10900, 60, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Koffing - Psywave - Egg Move
  (109, 10900, 149, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Koffing - Screech - Egg Move
  (109, 10900, 103, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Koffing - Will-O-Wisp - Egg Move
  (109, 10900, 261, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Weezing - Poison Gas - Level 1
  (110, 11000, 139, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weezing - Tackle - Level 1
  (110, 11000, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weezing - Smog - Level 1
  (110, 11000, 123, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weezing - Self-Destruct - Level 1
  (110, 11000, 120, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Weezing - Smog - Level 9
  (110, 11000, 123, 5, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Weezing - Self-Destruct - Level 17
  (110, 11000, 120, 5, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Weezing - Sludge - Level 21
  (110, 11000, 124, 5, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Weezing - Smokescreen - Level 25
  (110, 11000, 108, 5, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Weezing - Haze - Level 33
  (110, 11000, 114, 5, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Weezing - Explosion - Level 44
  (110, 11000, 153, 5, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Weezing - Destiny Bond - Level 51
  (110, 11000, 194, 5, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Weezing - Memento - Level 58
  (110, 11000, 262, 5, NULL, 1, 58, NULL, NULL, NULL, 12),
  -- Weezing - Toxic - TM06
  (110, 11000, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Weezing - Hidden Power - TM10
  (110, 11000, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Weezing - Sunny Day - TM11
  (110, 11000, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Weezing - Taunt - TM12
  (110, 11000, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 16),
  -- Weezing - Hyper Beam - TM15
  (110, 11000, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 17),
  -- Weezing - Protect - TM17
  (110, 11000, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Weezing - Rain Dance - TM18
  (110, 11000, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 19),
  -- Weezing - Frustration - TM21
  (110, 11000, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Weezing - Thunderbolt - TM24
  (110, 11000, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 21),
  -- Weezing - Thunder - TM25
  (110, 11000, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 22),
  -- Weezing - Return - TM27
  (110, 11000, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Weezing - Shadow Ball - TM30
  (110, 11000, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 24),
  -- Weezing - Double Team - TM32
  (110, 11000, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 25),
  -- Weezing - Shock Wave - TM34
  (110, 11000, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 26),
  -- Weezing - Flamethrower - TM35
  (110, 11000, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 27),
  -- Weezing - Sludge Bomb - TM36
  (110, 11000, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 28),
  -- Weezing - Fire Blast - TM38
  (110, 11000, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 29),
  -- Weezing - Torment - TM41
  (110, 11000, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 30),
  -- Weezing - Facade - TM42
  (110, 11000, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 31),
  -- Weezing - Secret Power - TM43
  (110, 11000, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 32),
  -- Weezing - Rest - TM44
  (110, 11000, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 33),
  -- Weezing - Attract - TM45
  (110, 11000, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 34),
  -- Weezing - Thief - TM46
  (110, 11000, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 35),
  -- Weezing - Flash - HM05
  (110, 11000, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 36),
  -- Rhyhorn - Horn Attack - Level 1
  (111, 11100, 30, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhyhorn - Tail Whip - Level 1
  (111, 11100, 39, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhyhorn - Stomp - Level 10
  (111, 11100, 23, 5, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Rhyhorn - Fury Attack - Level 15
  (111, 11100, 31, 5, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Rhyhorn - Scary Face - Level 24
  (111, 11100, 184, 5, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Rhyhorn - Rock Blast - Level 29
  (111, 11100, 350, 5, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Rhyhorn - Horn Drill - Level 38
  (111, 11100, 32, 5, NULL, 1, 38, NULL, NULL, NULL, 7),
  -- Rhyhorn - Take Down - Level 43
  (111, 11100, 36, 5, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Rhyhorn - Earthquake - Level 52
  (111, 11100, 89, 5, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Rhyhorn - Megahorn - Level 57
  (111, 11100, 224, 5, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Rhyhorn - Roar - TM05
  (111, 11100, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 11),
  -- Rhyhorn - Toxic - TM06
  (111, 11100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Rhyhorn - Hidden Power - TM10
  (111, 11100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Rhyhorn - Sunny Day - TM11
  (111, 11100, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Rhyhorn - Ice Beam - TM13
  (111, 11100, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 15),
  -- Rhyhorn - Blizzard - TM14
  (111, 11100, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 16),
  -- Rhyhorn - Protect - TM17
  (111, 11100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Rhyhorn - Rain Dance - TM18
  (111, 11100, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 18),
  -- Rhyhorn - Frustration - TM21
  (111, 11100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Rhyhorn - Iron Tail - TM23
  (111, 11100, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 20),
  -- Rhyhorn - Thunderbolt - TM24
  (111, 11100, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 21),
  -- Rhyhorn - Thunder - TM25
  (111, 11100, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 22),
  -- Rhyhorn - Earthquake - TM26
  (111, 11100, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 23),
  -- Rhyhorn - Return - TM27
  (111, 11100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 24),
  -- Rhyhorn - Dig - TM28
  (111, 11100, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 25),
  -- Rhyhorn - Double Team - TM32
  (111, 11100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 26),
  -- Rhyhorn - Shock Wave - TM34
  (111, 11100, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 27),
  -- Rhyhorn - Flamethrower - TM35
  (111, 11100, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 28),
  -- Rhyhorn - Sandstorm - TM37
  (111, 11100, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 29),
  -- Rhyhorn - Fire Blast - TM38
  (111, 11100, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 30),
  -- Rhyhorn - Rock Tomb - TM39
  (111, 11100, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 31),
  -- Rhyhorn - Facade - TM42
  (111, 11100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 32),
  -- Rhyhorn - Secret Power - TM43
  (111, 11100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 33),
  -- Rhyhorn - Rest - TM44
  (111, 11100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 34),
  -- Rhyhorn - Attract - TM45
  (111, 11100, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 35),
  -- Rhyhorn - Thief - TM46
  (111, 11100, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 36),
  -- Rhyhorn - Strength - HM04
  (111, 11100, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 37),
  -- Rhyhorn - Rock Smash - HM06
  (111, 11100, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 38),
  -- Rhyhorn - Counter - Egg Move
  (111, 11100, 68, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Rhyhorn - Crunch - Egg Move
  (111, 11100, 242, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Rhyhorn - Crush Claw - Egg Move
  (111, 11100, 306, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Rhyhorn - Curse - Egg Move
  (111, 11100, 174, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Rhyhorn - Magnitude - Egg Move
  (111, 11100, 222, 5, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Rhyhorn - Reversal - Egg Move
  (111, 11100, 179, 5, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Rhyhorn - Rock Slide - Egg Move
  (111, 11100, 157, 5, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Rhyhorn - Swords Dance - Egg Move
  (111, 11100, 14, 5, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Rhydon - Horn Attack - Level 1
  (112, 11200, 30, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhydon - Tail Whip - Level 1
  (112, 11200, 39, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhydon - Stomp - Level 1
  (112, 11200, 23, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rhydon - Fury Attack - Level 1
  (112, 11200, 31, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rhydon - Stomp - Level 10
  (112, 11200, 23, 5, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Rhydon - Fury Attack - Level 15
  (112, 11200, 31, 5, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Rhydon - Scary Face - Level 24
  (112, 11200, 184, 5, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Rhydon - Rock Blast - Level 29
  (112, 11200, 350, 5, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Rhydon - Horn Drill - Level 38
  (112, 11200, 32, 5, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Rhydon - Take Down - Level 46
  (112, 11200, 36, 5, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Rhydon - Earthquake - Level 58
  (112, 11200, 89, 5, NULL, 1, 58, NULL, NULL, NULL, 11),
  -- Rhydon - Megahorn - Level 66
  (112, 11200, 224, 5, NULL, 1, 66, NULL, NULL, NULL, 12),
  -- Rhydon - Focus Punch - TM01
  (112, 11200, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 13),
  -- Rhydon - Roar - TM05
  (112, 11200, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 14),
  -- Rhydon - Toxic - TM06
  (112, 11200, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 15),
  -- Rhydon - Hidden Power - TM10
  (112, 11200, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Rhydon - Sunny Day - TM11
  (112, 11200, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 17),
  -- Rhydon - Ice Beam - TM13
  (112, 11200, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 18),
  -- Rhydon - Blizzard - TM14
  (112, 11200, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 19),
  -- Rhydon - Hyper Beam - TM15
  (112, 11200, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 20),
  -- Rhydon - Protect - TM17
  (112, 11200, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 21),
  -- Rhydon - Rain Dance - TM18
  (112, 11200, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 22),
  -- Rhydon - Frustration - TM21
  (112, 11200, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 23),
  -- Rhydon - Iron Tail - TM23
  (112, 11200, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 24),
  -- Rhydon - Thunderbolt - TM24
  (112, 11200, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 25),
  -- Rhydon - Thunder - TM25
  (112, 11200, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 26),
  -- Rhydon - Earthquake - TM26
  (112, 11200, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 27),
  -- Rhydon - Return - TM27
  (112, 11200, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 28),
  -- Rhydon - Dig - TM28
  (112, 11200, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 29),
  -- Rhydon - Brick Break - TM31
  (112, 11200, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 30),
  -- Rhydon - Double Team - TM32
  (112, 11200, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 31),
  -- Rhydon - Shock Wave - TM34
  (112, 11200, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 32),
  -- Rhydon - Flamethrower - TM35
  (112, 11200, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 33),
  -- Rhydon - Sandstorm - TM37
  (112, 11200, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 34),
  -- Rhydon - Fire Blast - TM38
  (112, 11200, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 35),
  -- Rhydon - Rock Tomb - TM39
  (112, 11200, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 36),
  -- Rhydon - Facade - TM42
  (112, 11200, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 37),
  -- Rhydon - Secret Power - TM43
  (112, 11200, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 38),
  -- Rhydon - Rest - TM44
  (112, 11200, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 39),
  -- Rhydon - Attract - TM45
  (112, 11200, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 40),
  -- Rhydon - Thief - TM46
  (112, 11200, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 41),
  -- Rhydon - Cut - HM01
  (112, 11200, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 42),
  -- Rhydon - Surf - HM03
  (112, 11200, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 43),
  -- Rhydon - Strength - HM04
  (112, 11200, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 44),
  -- Rhydon - Rock Smash - HM06
  (112, 11200, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 45),
  -- Chansey - Pound - Level 1
  (113, 11300, 1, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chansey - Growl - Level 1
  (113, 11300, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chansey - Tail Whip - Level 5
  (113, 11300, 39, 5, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Chansey - Refresh - Level 9
  (113, 11300, 287, 5, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Chansey - Soft-Boiled - Level 13
  (113, 11300, 135, 5, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Chansey - Double Slap - Level 17
  (113, 11300, 3, 5, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Chansey - Minimize - Level 23
  (113, 11300, 107, 5, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Chansey - Sing - Level 29
  (113, 11300, 47, 5, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Chansey - Egg Bomb - Level 35
  (113, 11300, 121, 5, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Chansey - Defense Curl - Level 41
  (113, 11300, 111, 5, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Chansey - Light Screen - Level 49
  (113, 11300, 113, 5, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Chansey - Double-Edge - Level 57
  (113, 11300, 38, 5, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Chansey - Focus Punch - TM01
  (113, 11300, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 13),
  -- Chansey - Water Pulse - TM03
  (113, 11300, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 14),
  -- Chansey - Calm Mind - TM04
  (113, 11300, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 15),
  -- Chansey - Toxic - TM06
  (113, 11300, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 16),
  -- Chansey - Hail - TM07
  (113, 11300, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 17),
  -- Chansey - Hidden Power - TM10
  (113, 11300, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 18),
  -- Chansey - Sunny Day - TM11
  (113, 11300, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 19),
  -- Chansey - Ice Beam - TM13
  (113, 11300, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 20),
  -- Chansey - Blizzard - TM14
  (113, 11300, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 21),
  -- Chansey - Hyper Beam - TM15
  (113, 11300, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 22),
  -- Chansey - Light Screen - TM16
  (113, 11300, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 23),
  -- Chansey - Protect - TM17
  (113, 11300, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 24),
  -- Chansey - Rain Dance - TM18
  (113, 11300, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 25),
  -- Chansey - Safeguard - TM20
  (113, 11300, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 26),
  -- Chansey - Frustration - TM21
  (113, 11300, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 27),
  -- Chansey - Solar Beam - TM22
  (113, 11300, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 28),
  -- Chansey - Iron Tail - TM23
  (113, 11300, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 29),
  -- Chansey - Thunderbolt - TM24
  (113, 11300, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 30),
  -- Chansey - Thunder - TM25
  (113, 11300, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 31),
  -- Chansey - Earthquake - TM26
  (113, 11300, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 32),
  -- Chansey - Return - TM27
  (113, 11300, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 33),
  -- Chansey - Psychic - TM29
  (113, 11300, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 34),
  -- Chansey - Shadow Ball - TM30
  (113, 11300, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 35),
  -- Chansey - Brick Break - TM31
  (113, 11300, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 36),
  -- Chansey - Double Team - TM32
  (113, 11300, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 37),
  -- Chansey - Shock Wave - TM34
  (113, 11300, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 38),
  -- Chansey - Flamethrower - TM35
  (113, 11300, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 39),
  -- Chansey - Sandstorm - TM37
  (113, 11300, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 40),
  -- Chansey - Fire Blast - TM38
  (113, 11300, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 41),
  -- Chansey - Rock Tomb - TM39
  (113, 11300, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 42),
  -- Chansey - Facade - TM42
  (113, 11300, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 43),
  -- Chansey - Secret Power - TM43
  (113, 11300, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 44),
  -- Chansey - Rest - TM44
  (113, 11300, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 45),
  -- Chansey - Attract - TM45
  (113, 11300, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 46),
  -- Chansey - Skill Swap - TM48
  (113, 11300, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 47),
  -- Chansey - Snatch - TM49
  (113, 11300, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 48),
  -- Chansey - Strength - HM04
  (113, 11300, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 49),
  -- Chansey - Flash - HM05
  (113, 11300, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 50),
  -- Chansey - Rock Smash - HM06
  (113, 11300, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 51),
  -- Chansey - Aromatherapy - Egg Move
  (113, 11300, 312, 5, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Chansey - Heal Bell - Egg Move
  (113, 11300, 215, 5, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Chansey - Metronome - Egg Move
  (113, 11300, 118, 5, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Chansey - Present - Egg Move
  (113, 11300, 217, 5, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Chansey - Substitute - Egg Move
  (113, 11300, 164, 5, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tangela - Ingrain - Level 1
  (114, 11400, 275, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tangela - Constrict - Level 1
  (114, 11400, 132, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tangela - Sleep Powder - Level 4
  (114, 11400, 79, 5, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Tangela - Absorb - Level 10
  (114, 11400, 71, 5, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Tangela - Growth - Level 13
  (114, 11400, 74, 5, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Tangela - Poison Powder - Level 19
  (114, 11400, 77, 5, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Tangela - Vine Whip - Level 22
  (114, 11400, 22, 5, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Tangela - Bind - Level 28
  (114, 11400, 20, 5, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Tangela - Mega Drain - Level 31
  (114, 11400, 72, 5, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Tangela - Stun Spore - Level 37
  (114, 11400, 78, 5, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Tangela - Slam - Level 40
  (114, 11400, 21, 5, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Tangela - Tickle - Level 46
  (114, 11400, 321, 5, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Tangela - Toxic - TM06
  (114, 11400, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Tangela - Bullet Seed - TM09
  (114, 11400, 331, 5, NULL, 2, NULL, NULL, 5002009, NULL, 14),
  -- Tangela - Hidden Power - TM10
  (114, 11400, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Tangela - Sunny Day - TM11
  (114, 11400, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 16),
  -- Tangela - Hyper Beam - TM15
  (114, 11400, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 17),
  -- Tangela - Protect - TM17
  (114, 11400, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Tangela - Giga Drain - TM19
  (114, 11400, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 19),
  -- Tangela - Frustration - TM21
  (114, 11400, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Tangela - Solar Beam - TM22
  (114, 11400, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 21),
  -- Tangela - Return - TM27
  (114, 11400, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 22),
  -- Tangela - Double Team - TM32
  (114, 11400, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 23),
  -- Tangela - Sludge Bomb - TM36
  (114, 11400, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 24),
  -- Tangela - Facade - TM42
  (114, 11400, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 25),
  -- Tangela - Secret Power - TM43
  (114, 11400, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 26),
  -- Tangela - Rest - TM44
  (114, 11400, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 27),
  -- Tangela - Attract - TM45
  (114, 11400, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 28),
  -- Tangela - Thief - TM46
  (114, 11400, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 29),
  -- Tangela - Cut - HM01
  (114, 11400, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 30),
  -- Tangela - Flash - HM05
  (114, 11400, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 31),
  -- Tangela - Rock Smash - HM06
  (114, 11400, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 32),
  -- Tangela - Amnesia - Egg Move
  (114, 11400, 133, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Tangela - Confusion - Egg Move
  (114, 11400, 93, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Tangela - Flail - Egg Move
  (114, 11400, 175, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Tangela - Leech Seed - Egg Move
  (114, 11400, 73, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Tangela - Mega Drain - Egg Move
  (114, 11400, 72, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Tangela - Nature Power - Egg Move
  (114, 11400, 267, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Tangela - Reflect - Egg Move
  (114, 11400, 115, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Kangaskhan - Comet Punch - Level 1
  (115, 11500, 4, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kangaskhan - Leer - Level 1
  (115, 11500, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kangaskhan - Bite - Level 7
  (115, 11500, 44, 5, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Kangaskhan - Tail Whip - Level 13
  (115, 11500, 39, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Kangaskhan - Fake Out - Level 19
  (115, 11500, 252, 5, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Kangaskhan - Mega Punch - Level 25
  (115, 11500, 5, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Kangaskhan - Rage - Level 31
  (115, 11500, 99, 5, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Kangaskhan - Endure - Level 37
  (115, 11500, 203, 5, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Kangaskhan - Dizzy Punch - Level 43
  (115, 11500, 146, 5, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Kangaskhan - Reversal - Level 49
  (115, 11500, 179, 5, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Kangaskhan - Focus Punch - TM01
  (115, 11500, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 11),
  -- Kangaskhan - Water Pulse - TM03
  (115, 11500, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 12),
  -- Kangaskhan - Roar - TM05
  (115, 11500, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 13),
  -- Kangaskhan - Toxic - TM06
  (115, 11500, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Kangaskhan - Hail - TM07
  (115, 11500, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 15),
  -- Kangaskhan - Hidden Power - TM10
  (115, 11500, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Kangaskhan - Sunny Day - TM11
  (115, 11500, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 17),
  -- Kangaskhan - Ice Beam - TM13
  (115, 11500, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 18),
  -- Kangaskhan - Blizzard - TM14
  (115, 11500, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 19),
  -- Kangaskhan - Hyper Beam - TM15
  (115, 11500, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 20),
  -- Kangaskhan - Protect - TM17
  (115, 11500, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 21),
  -- Kangaskhan - Rain Dance - TM18
  (115, 11500, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 22),
  -- Kangaskhan - Frustration - TM21
  (115, 11500, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 23),
  -- Kangaskhan - Solar Beam - TM22
  (115, 11500, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 24),
  -- Kangaskhan - Iron Tail - TM23
  (115, 11500, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 25),
  -- Kangaskhan - Thunderbolt - TM24
  (115, 11500, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 26),
  -- Kangaskhan - Thunder - TM25
  (115, 11500, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 27),
  -- Kangaskhan - Earthquake - TM26
  (115, 11500, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 28),
  -- Kangaskhan - Return - TM27
  (115, 11500, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 29),
  -- Kangaskhan - Dig - TM28
  (115, 11500, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 30),
  -- Kangaskhan - Shadow Ball - TM30
  (115, 11500, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 31),
  -- Kangaskhan - Brick Break - TM31
  (115, 11500, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 32),
  -- Kangaskhan - Double Team - TM32
  (115, 11500, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 33),
  -- Kangaskhan - Shock Wave - TM34
  (115, 11500, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 34),
  -- Kangaskhan - Flamethrower - TM35
  (115, 11500, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 35),
  -- Kangaskhan - Sandstorm - TM37
  (115, 11500, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 36),
  -- Kangaskhan - Fire Blast - TM38
  (115, 11500, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 37),
  -- Kangaskhan - Rock Tomb - TM39
  (115, 11500, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 38),
  -- Kangaskhan - Aerial Ace - TM40
  (115, 11500, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 39),
  -- Kangaskhan - Facade - TM42
  (115, 11500, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 40),
  -- Kangaskhan - Secret Power - TM43
  (115, 11500, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 41),
  -- Kangaskhan - Rest - TM44
  (115, 11500, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 42),
  -- Kangaskhan - Attract - TM45
  (115, 11500, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 43),
  -- Kangaskhan - Thief - TM46
  (115, 11500, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 44),
  -- Kangaskhan - Cut - HM01
  (115, 11500, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 45),
  -- Kangaskhan - Surf - HM03
  (115, 11500, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 46),
  -- Kangaskhan - Strength - HM04
  (115, 11500, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 47),
  -- Kangaskhan - Rock Smash - HM06
  (115, 11500, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 48),
  -- Kangaskhan - Counter - Egg Move
  (115, 11500, 68, 5, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Kangaskhan - Crush Claw - Egg Move
  (115, 11500, 306, 5, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Kangaskhan - Disable - Egg Move
  (115, 11500, 50, 5, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Kangaskhan - Focus Energy - Egg Move
  (115, 11500, 116, 5, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Kangaskhan - Foresight - Egg Move
  (115, 11500, 193, 5, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Kangaskhan - Safeguard - Egg Move
  (115, 11500, 219, 5, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Kangaskhan - Stomp - Egg Move
  (115, 11500, 23, 5, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Kangaskhan - Substitute - Egg Move
  (115, 11500, 164, 5, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Horsea - Bubble - Level 1
  (116, 11600, 145, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Horsea - Smokescreen - Level 8
  (116, 11600, 108, 5, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Horsea - Leer - Level 15
  (116, 11600, 43, 5, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Horsea - Water Gun - Level 22
  (116, 11600, 55, 5, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Horsea - Twister - Level 29
  (116, 11600, 239, 5, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Horsea - Agility - Level 36
  (116, 11600, 97, 5, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Horsea - Hydro Pump - Level 43
  (116, 11600, 56, 5, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Horsea - Dragon Dance - Level 50
  (116, 11600, 349, 5, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Horsea - Water Pulse - TM03
  (116, 11600, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 9),
  -- Horsea - Toxic - TM06
  (116, 11600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 10),
  -- Horsea - Hail - TM07
  (116, 11600, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 11),
  -- Horsea - Hidden Power - TM10
  (116, 11600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Horsea - Ice Beam - TM13
  (116, 11600, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 13),
  -- Horsea - Blizzard - TM14
  (116, 11600, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 14),
  -- Horsea - Protect - TM17
  (116, 11600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Horsea - Rain Dance - TM18
  (116, 11600, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 16),
  -- Horsea - Frustration - TM21
  (116, 11600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 17),
  -- Horsea - Return - TM27
  (116, 11600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 18),
  -- Horsea - Double Team - TM32
  (116, 11600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 19),
  -- Horsea - Facade - TM42
  (116, 11600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 20),
  -- Horsea - Secret Power - TM43
  (116, 11600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 21),
  -- Horsea - Rest - TM44
  (116, 11600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 22),
  -- Horsea - Attract - TM45
  (116, 11600, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 23),
  -- Horsea - Surf - HM03
  (116, 11600, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 24),
  -- Horsea - Waterfall - HM07
  (116, 11600, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 25),
  -- Horsea - Dive - HM08
  (116, 11600, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 26),
  -- Horsea - Aurora Beam - Egg Move
  (116, 11600, 62, 5, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Horsea - Disable - Egg Move
  (116, 11600, 50, 5, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Horsea - Dragon Breath - Egg Move
  (116, 11600, 225, 5, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Horsea - Dragon Rage - Egg Move
  (116, 11600, 82, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Horsea - Flail - Egg Move
  (116, 11600, 175, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Horsea - Octazooka - Egg Move
  (116, 11600, 190, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Horsea - Splash - Egg Move
  (116, 11600, 150, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Seadra - Bubble - Level 1
  (117, 11700, 145, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seadra - Smokescreen - Level 1
  (117, 11700, 108, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seadra - Leer - Level 1
  (117, 11700, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Seadra - Water Gun - Level 1
  (117, 11700, 55, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Seadra - Smokescreen - Level 8
  (117, 11700, 108, 5, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Seadra - Leer - Level 15
  (117, 11700, 43, 5, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Seadra - Water Gun - Level 22
  (117, 11700, 55, 5, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Seadra - Twister - Level 29
  (117, 11700, 239, 5, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Seadra - Agility - Level 40
  (117, 11700, 97, 5, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Seadra - Hydro Pump - Level 51
  (117, 11700, 56, 5, NULL, 1, 51, NULL, NULL, NULL, 10),
  -- Seadra - Dragon Dance - Level 62
  (117, 11700, 349, 5, NULL, 1, 62, NULL, NULL, NULL, 11),
  -- Seadra - Water Pulse - TM03
  (117, 11700, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 12),
  -- Seadra - Toxic - TM06
  (117, 11700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Seadra - Hail - TM07
  (117, 11700, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 14),
  -- Seadra - Hidden Power - TM10
  (117, 11700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Seadra - Ice Beam - TM13
  (117, 11700, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 16),
  -- Seadra - Blizzard - TM14
  (117, 11700, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 17),
  -- Seadra - Hyper Beam - TM15
  (117, 11700, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 18),
  -- Seadra - Protect - TM17
  (117, 11700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 19),
  -- Seadra - Rain Dance - TM18
  (117, 11700, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 20),
  -- Seadra - Frustration - TM21
  (117, 11700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 21),
  -- Seadra - Return - TM27
  (117, 11700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 22),
  -- Seadra - Double Team - TM32
  (117, 11700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 23),
  -- Seadra - Facade - TM42
  (117, 11700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 24),
  -- Seadra - Secret Power - TM43
  (117, 11700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 25),
  -- Seadra - Rest - TM44
  (117, 11700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 26),
  -- Seadra - Attract - TM45
  (117, 11700, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 27),
  -- Seadra - Surf - HM03
  (117, 11700, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 28),
  -- Seadra - Waterfall - HM07
  (117, 11700, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 29),
  -- Seadra - Dive - HM08
  (117, 11700, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 30),
  -- Goldeen - Peck - Level 1
  (118, 11800, 64, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Goldeen - Tail Whip - Level 1
  (118, 11800, 39, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Goldeen - Water Sport - Level 1
  (118, 11800, 346, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Goldeen - Supersonic - Level 10
  (118, 11800, 48, 5, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Goldeen - Horn Attack - Level 15
  (118, 11800, 30, 5, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Goldeen - Flail - Level 24
  (118, 11800, 175, 5, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Goldeen - Fury Attack - Level 29
  (118, 11800, 31, 5, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Goldeen - Waterfall - Level 38
  (118, 11800, 127, 5, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Goldeen - Horn Drill - Level 43
  (118, 11800, 32, 5, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Goldeen - Agility - Level 52
  (118, 11800, 97, 5, NULL, 1, 52, NULL, NULL, NULL, 10),
  -- Goldeen - Water Pulse - TM03
  (118, 11800, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 11),
  -- Goldeen - Toxic - TM06
  (118, 11800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Goldeen - Hail - TM07
  (118, 11800, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 13),
  -- Goldeen - Hidden Power - TM10
  (118, 11800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Goldeen - Ice Beam - TM13
  (118, 11800, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 15),
  -- Goldeen - Blizzard - TM14
  (118, 11800, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 16),
  -- Goldeen - Protect - TM17
  (118, 11800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Goldeen - Rain Dance - TM18
  (118, 11800, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 18),
  -- Goldeen - Frustration - TM21
  (118, 11800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Goldeen - Return - TM27
  (118, 11800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 20),
  -- Goldeen - Double Team - TM32
  (118, 11800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 21),
  -- Goldeen - Facade - TM42
  (118, 11800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 22),
  -- Goldeen - Secret Power - TM43
  (118, 11800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 23),
  -- Goldeen - Rest - TM44
  (118, 11800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 24),
  -- Goldeen - Attract - TM45
  (118, 11800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 25),
  -- Goldeen - Surf - HM03
  (118, 11800, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 26),
  -- Goldeen - Waterfall - HM07
  (118, 11800, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 27),
  -- Goldeen - Dive - HM08
  (118, 11800, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 28),
  -- Goldeen - Haze - Egg Move
  (118, 11800, 114, 5, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Goldeen - Hydro Pump - Egg Move
  (118, 11800, 56, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Goldeen - Mud Sport - Egg Move
  (118, 11800, 300, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Goldeen - Sleep Talk - Egg Move
  (118, 11800, 214, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Goldeen - Psybeam - Egg Move
  (118, 11800, 60, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Seaking - Peck - Level 1
  (119, 11900, 64, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seaking - Tail Whip - Level 1
  (119, 11900, 39, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seaking - Water Sport - Level 1
  (119, 11900, 346, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Seaking - Supersonic - Level 1
  (119, 11900, 48, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Seaking - Supersonic - Level 10
  (119, 11900, 48, 5, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Seaking - Horn Attack - Level 15
  (119, 11900, 30, 5, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Seaking - Flail - Level 24
  (119, 11900, 175, 5, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Seaking - Fury Attack - Level 29
  (119, 11900, 31, 5, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Seaking - Waterfall - Level 41
  (119, 11900, 127, 5, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Seaking - Horn Drill - Level 49
  (119, 11900, 32, 5, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Seaking - Agility - Level 61
  (119, 11900, 97, 5, NULL, 1, 61, NULL, NULL, NULL, 11),
  -- Seaking - Water Pulse - TM03
  (119, 11900, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 12),
  -- Seaking - Toxic - TM06
  (119, 11900, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Seaking - Hail - TM07
  (119, 11900, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 14),
  -- Seaking - Hidden Power - TM10
  (119, 11900, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Seaking - Ice Beam - TM13
  (119, 11900, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 16),
  -- Seaking - Blizzard - TM14
  (119, 11900, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 17),
  -- Seaking - Hyper Beam - TM15
  (119, 11900, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 18),
  -- Seaking - Protect - TM17
  (119, 11900, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 19),
  -- Seaking - Rain Dance - TM18
  (119, 11900, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 20),
  -- Seaking - Frustration - TM21
  (119, 11900, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 21),
  -- Seaking - Return - TM27
  (119, 11900, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 22),
  -- Seaking - Double Team - TM32
  (119, 11900, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 23),
  -- Seaking - Facade - TM42
  (119, 11900, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 24),
  -- Seaking - Secret Power - TM43
  (119, 11900, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 25),
  -- Seaking - Rest - TM44
  (119, 11900, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 26),
  -- Seaking - Attract - TM45
  (119, 11900, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 27),
  -- Seaking - Surf - HM03
  (119, 11900, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 28),
  -- Seaking - Waterfall - HM07
  (119, 11900, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 29),
  -- Seaking - Dive - HM08
  (119, 11900, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 30),
  -- Staryu - Tackle - Level 1
  (120, 12000, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staryu - Harden - Level 1
  (120, 12000, 106, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Staryu - Water Gun - Level 6
  (120, 12000, 55, 5, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Staryu - Rapid Spin - Level 10
  (120, 12000, 229, 5, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Staryu - Recover - Level 15
  (120, 12000, 105, 5, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Staryu - Camouflage - Level 19
  (120, 12000, 293, 5, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Staryu - Swift - Level 24
  (120, 12000, 129, 5, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Staryu - Bubble Beam - Level 28
  (120, 12000, 61, 5, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Staryu - Minimize - Level 33
  (120, 12000, 107, 5, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Staryu - Light Screen - Level 37
  (120, 12000, 113, 5, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Staryu - Cosmic Power - Level 42
  (120, 12000, 322, 5, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Staryu - Hydro Pump - Level 46
  (120, 12000, 56, 5, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Staryu - Water Pulse - TM03
  (120, 12000, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 13),
  -- Staryu - Toxic - TM06
  (120, 12000, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Staryu - Hail - TM07
  (120, 12000, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 15),
  -- Staryu - Hidden Power - TM10
  (120, 12000, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Staryu - Ice Beam - TM13
  (120, 12000, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 17),
  -- Staryu - Blizzard - TM14
  (120, 12000, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 18),
  -- Staryu - Light Screen - TM16
  (120, 12000, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 19),
  -- Staryu - Protect - TM17
  (120, 12000, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 20),
  -- Staryu - Rain Dance - TM18
  (120, 12000, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 21),
  -- Staryu - Frustration - TM21
  (120, 12000, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 22),
  -- Staryu - Thunderbolt - TM24
  (120, 12000, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 23),
  -- Staryu - Thunder - TM25
  (120, 12000, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 24),
  -- Staryu - Return - TM27
  (120, 12000, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 25),
  -- Staryu - Psychic - TM29
  (120, 12000, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 26),
  -- Staryu - Double Team - TM32
  (120, 12000, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 27),
  -- Staryu - Reflect - TM33
  (120, 12000, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 28),
  -- Staryu - Facade - TM42
  (120, 12000, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 29),
  -- Staryu - Secret Power - TM43
  (120, 12000, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 30),
  -- Staryu - Rest - TM44
  (120, 12000, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 31),
  -- Staryu - Surf - HM03
  (120, 12000, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 32),
  -- Staryu - Flash - HM05
  (120, 12000, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 33),
  -- Staryu - Waterfall - HM07
  (120, 12000, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 34),
  -- Staryu - Dive - HM08
  (120, 12000, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 35),
  -- Starmie - Water Gun - Level 1
  (121, 12100, 55, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Starmie - Rapid Spin - Level 1
  (121, 12100, 229, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Starmie - Recover - Level 1
  (121, 12100, 105, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Starmie - Swift - Level 1
  (121, 12100, 129, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Starmie - Confuse Ray - Level 33
  (121, 12100, 109, 5, NULL, 1, 33, NULL, NULL, NULL, 5),
  -- Starmie - Water Pulse - TM03
  (121, 12100, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 6),
  -- Starmie - Toxic - TM06
  (121, 12100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 7),
  -- Starmie - Hail - TM07
  (121, 12100, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 8),
  -- Starmie - Hidden Power - TM10
  (121, 12100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 9),
  -- Starmie - Ice Beam - TM13
  (121, 12100, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 10),
  -- Starmie - Blizzard - TM14
  (121, 12100, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 11),
  -- Starmie - Hyper Beam - TM15
  (121, 12100, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 12),
  -- Starmie - Light Screen - TM16
  (121, 12100, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 13),
  -- Starmie - Protect - TM17
  (121, 12100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 14),
  -- Starmie - Rain Dance - TM18
  (121, 12100, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 15),
  -- Starmie - Frustration - TM21
  (121, 12100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 16),
  -- Starmie - Thunderbolt - TM24
  (121, 12100, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 17),
  -- Starmie - Thunder - TM25
  (121, 12100, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 18),
  -- Starmie - Return - TM27
  (121, 12100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 19),
  -- Starmie - Psychic - TM29
  (121, 12100, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 20),
  -- Starmie - Double Team - TM32
  (121, 12100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 21),
  -- Starmie - Reflect - TM33
  (121, 12100, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 22),
  -- Starmie - Facade - TM42
  (121, 12100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 23),
  -- Starmie - Secret Power - TM43
  (121, 12100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 24),
  -- Starmie - Rest - TM44
  (121, 12100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 25),
  -- Starmie - Skill Swap - TM48
  (121, 12100, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 26),
  -- Starmie - Surf - HM03
  (121, 12100, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 27),
  -- Starmie - Flash - HM05
  (121, 12100, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 28),
  -- Starmie - Waterfall - HM07
  (121, 12100, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 29),
  -- Starmie - Dive - HM08
  (121, 12100, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 30),
  -- Mr. Mime - Barrier - Level 1
  (122, 12200, 112, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mr. Mime - Confusion - Level 5
  (122, 12200, 93, 5, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Mr. Mime - Substitute - Level 9
  (122, 12200, 164, 5, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Mr. Mime - Meditate - Level 13
  (122, 12200, 96, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Mr. Mime - Double Slap - Level 17
  (122, 12200, 3, 5, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Mr. Mime - Light Screen - Level 21
  (122, 12200, 113, 5, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Mr. Mime - Reflect - Level 21
  (122, 12200, 115, 5, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Mr. Mime - Encore - Level 25
  (122, 12200, 227, 5, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Mr. Mime - Psybeam - Level 29
  (122, 12200, 60, 5, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Mr. Mime - Recycle - Level 33
  (122, 12200, 278, 5, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Mr. Mime - Trick - Level 37
  (122, 12200, 271, 5, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Mr. Mime - Role Play - Level 41
  (122, 12200, 272, 5, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Mr. Mime - Psychic - Level 45
  (122, 12200, 94, 5, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Mr. Mime - Baton Pass - Level 49
  (122, 12200, 226, 5, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Mr. Mime - Safeguard - Level 53
  (122, 12200, 219, 5, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Mr. Mime - Focus Punch - TM01
  (122, 12200, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 16),
  -- Mr. Mime - Calm Mind - TM04
  (122, 12200, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 17),
  -- Mr. Mime - Toxic - TM06
  (122, 12200, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 18),
  -- Mr. Mime - Hidden Power - TM10
  (122, 12200, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 19),
  -- Mr. Mime - Sunny Day - TM11
  (122, 12200, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 20),
  -- Mr. Mime - Taunt - TM12
  (122, 12200, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 21),
  -- Mr. Mime - Hyper Beam - TM15
  (122, 12200, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 22),
  -- Mr. Mime - Light Screen - TM16
  (122, 12200, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 23),
  -- Mr. Mime - Protect - TM17
  (122, 12200, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 24),
  -- Mr. Mime - Rain Dance - TM18
  (122, 12200, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 25),
  -- Mr. Mime - Safeguard - TM20
  (122, 12200, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 26),
  -- Mr. Mime - Frustration - TM21
  (122, 12200, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 27),
  -- Mr. Mime - Solar Beam - TM22
  (122, 12200, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 28),
  -- Mr. Mime - Thunderbolt - TM24
  (122, 12200, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 29),
  -- Mr. Mime - Thunder - TM25
  (122, 12200, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 30),
  -- Mr. Mime - Return - TM27
  (122, 12200, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 31),
  -- Mr. Mime - Psychic - TM29
  (122, 12200, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 32),
  -- Mr. Mime - Shadow Ball - TM30
  (122, 12200, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 33),
  -- Mr. Mime - Brick Break - TM31
  (122, 12200, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 34),
  -- Mr. Mime - Double Team - TM32
  (122, 12200, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 35),
  -- Mr. Mime - Reflect - TM33
  (122, 12200, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 36),
  -- Mr. Mime - Shock Wave - TM34
  (122, 12200, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 37),
  -- Mr. Mime - Torment - TM41
  (122, 12200, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 38),
  -- Mr. Mime - Facade - TM42
  (122, 12200, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 39),
  -- Mr. Mime - Secret Power - TM43
  (122, 12200, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 40),
  -- Mr. Mime - Rest - TM44
  (122, 12200, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 41),
  -- Mr. Mime - Attract - TM45
  (122, 12200, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 42),
  -- Mr. Mime - Thief - TM46
  (122, 12200, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 43),
  -- Mr. Mime - Skill Swap - TM48
  (122, 12200, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 44),
  -- Mr. Mime - Snatch - TM49
  (122, 12200, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 45),
  -- Mr. Mime - Flash - HM05
  (122, 12200, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 46),
  -- Mr. Mime - Fake Out - Egg Move
  (122, 12200, 252, 5, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mr. Mime - Future Sight - Egg Move
  (122, 12200, 248, 5, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mr. Mime - Hypnosis - Egg Move
  (122, 12200, 95, 5, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mr. Mime - Mimic - Egg Move
  (122, 12200, 102, 5, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Mr. Mime - Psych Up - Egg Move
  (122, 12200, 244, 5, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Mr. Mime - Trick - Egg Move
  (122, 12200, 271, 5, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Scyther - Quick Attack - Level 1
  (123, 12300, 98, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scyther - Leer - Level 1
  (123, 12300, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scyther - Focus Energy - Level 6
  (123, 12300, 116, 5, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Scyther - Pursuit - Level 11
  (123, 12300, 228, 5, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Scyther - False Swipe - Level 16
  (123, 12300, 206, 5, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Scyther - Agility - Level 21
  (123, 12300, 97, 5, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Scyther - Wing Attack - Level 26
  (123, 12300, 17, 5, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Scyther - Slash - Level 31
  (123, 12300, 163, 5, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Scyther - Swords Dance - Level 36
  (123, 12300, 14, 5, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Scyther - Double Team - Level 41
  (123, 12300, 104, 5, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Scyther - Fury Cutter - Level 46
  (123, 12300, 210, 5, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Scyther - Toxic - TM06
  (123, 12300, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Scyther - Hidden Power - TM10
  (123, 12300, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Scyther - Sunny Day - TM11
  (123, 12300, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Scyther - Hyper Beam - TM15
  (123, 12300, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 15),
  -- Scyther - Protect - TM17
  (123, 12300, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Scyther - Rain Dance - TM18
  (123, 12300, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Scyther - Frustration - TM21
  (123, 12300, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Scyther - Return - TM27
  (123, 12300, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 19),
  -- Scyther - Double Team - TM32
  (123, 12300, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 20),
  -- Scyther - Aerial Ace - TM40
  (123, 12300, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 21),
  -- Scyther - Facade - TM42
  (123, 12300, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 22),
  -- Scyther - Secret Power - TM43
  (123, 12300, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 23),
  -- Scyther - Rest - TM44
  (123, 12300, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 24),
  -- Scyther - Attract - TM45
  (123, 12300, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 25),
  -- Scyther - Thief - TM46
  (123, 12300, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 26),
  -- Scyther - Steel Wing - TM47
  (123, 12300, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 27),
  -- Scyther - Cut - HM01
  (123, 12300, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 28),
  -- Scyther - Rock Smash - HM06
  (123, 12300, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 29),
  -- Scyther - Baton Pass - Egg Move
  (123, 12300, 226, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Scyther - Counter - Egg Move
  (123, 12300, 68, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Scyther - Endure - Egg Move
  (123, 12300, 203, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Scyther - Light Screen - Egg Move
  (123, 12300, 113, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Scyther - Razor Wind - Egg Move
  (123, 12300, 13, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Scyther - Reversal - Egg Move
  (123, 12300, 179, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Scyther - Safeguard - Egg Move
  (123, 12300, 219, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Scyther - Silver Wind - Egg Move
  (123, 12300, 318, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Jynx - Pound - Level 1
  (124, 12400, 1, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jynx - Lick - Level 1
  (124, 12400, 122, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jynx - Lovely Kiss - Level 1
  (124, 12400, 142, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jynx - Powder Snow - Level 1
  (124, 12400, 181, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jynx - Lovely Kiss - Level 9
  (124, 12400, 142, 5, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Jynx - Powder Snow - Level 13
  (124, 12400, 181, 5, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Jynx - Double Slap - Level 21
  (124, 12400, 3, 5, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Jynx - Ice Punch - Level 25
  (124, 12400, 8, 5, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Jynx - Mean Look - Level 35
  (124, 12400, 212, 5, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Jynx - Fake Tears - Level 41
  (124, 12400, 313, 5, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Jynx - Body Slam - Level 51
  (124, 12400, 34, 5, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Jynx - Perish Song - Level 57
  (124, 12400, 195, 5, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Jynx - Blizzard - Level 67
  (124, 12400, 59, 5, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Jynx - Focus Punch - TM01
  (124, 12400, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 14),
  -- Jynx - Water Pulse - TM03
  (124, 12400, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 15),
  -- Jynx - Calm Mind - TM04
  (124, 12400, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 16),
  -- Jynx - Toxic - TM06
  (124, 12400, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 17),
  -- Jynx - Hail - TM07
  (124, 12400, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 18),
  -- Jynx - Hidden Power - TM10
  (124, 12400, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 19),
  -- Jynx - Taunt - TM12
  (124, 12400, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 20),
  -- Jynx - Ice Beam - TM13
  (124, 12400, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 21),
  -- Jynx - Blizzard - TM14
  (124, 12400, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 22),
  -- Jynx - Hyper Beam - TM15
  (124, 12400, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 23),
  -- Jynx - Light Screen - TM16
  (124, 12400, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 24),
  -- Jynx - Protect - TM17
  (124, 12400, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 25),
  -- Jynx - Rain Dance - TM18
  (124, 12400, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 26),
  -- Jynx - Frustration - TM21
  (124, 12400, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 27),
  -- Jynx - Return - TM27
  (124, 12400, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 28),
  -- Jynx - Psychic - TM29
  (124, 12400, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 29),
  -- Jynx - Shadow Ball - TM30
  (124, 12400, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 30),
  -- Jynx - Brick Break - TM31
  (124, 12400, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 31),
  -- Jynx - Double Team - TM32
  (124, 12400, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 32),
  -- Jynx - Reflect - TM33
  (124, 12400, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 33),
  -- Jynx - Torment - TM41
  (124, 12400, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 34),
  -- Jynx - Facade - TM42
  (124, 12400, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 35),
  -- Jynx - Secret Power - TM43
  (124, 12400, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 36),
  -- Jynx - Rest - TM44
  (124, 12400, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 37),
  -- Jynx - Attract - TM45
  (124, 12400, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 38),
  -- Jynx - Thief - TM46
  (124, 12400, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 39),
  -- Jynx - Skill Swap - TM48
  (124, 12400, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 40),
  -- Jynx - Flash - HM05
  (124, 12400, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 41),
  -- Electabuzz - Quick Attack - Level 1
  (125, 12500, 98, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electabuzz - Leer - Level 1
  (125, 12500, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electabuzz - Thunder Punch - Level 1
  (125, 12500, 9, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electabuzz - Thunder Punch - Level 9
  (125, 12500, 9, 5, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Electabuzz - Light Screen - Level 17
  (125, 12500, 113, 5, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Electabuzz - Swift - Level 25
  (125, 12500, 129, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Electabuzz - Screech - Level 36
  (125, 12500, 103, 5, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Electabuzz - Thunderbolt - Level 47
  (125, 12500, 85, 5, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Electabuzz - Thunder - Level 58
  (125, 12500, 87, 5, NULL, 1, 58, NULL, NULL, NULL, 9),
  -- Electabuzz - Focus Punch - TM01
  (125, 12500, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 10),
  -- Electabuzz - Toxic - TM06
  (125, 12500, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Electabuzz - Hidden Power - TM10
  (125, 12500, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Electabuzz - Hyper Beam - TM15
  (125, 12500, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 13),
  -- Electabuzz - Light Screen - TM16
  (125, 12500, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 14),
  -- Electabuzz - Protect - TM17
  (125, 12500, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Electabuzz - Rain Dance - TM18
  (125, 12500, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 16),
  -- Electabuzz - Frustration - TM21
  (125, 12500, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 17),
  -- Electabuzz - Iron Tail - TM23
  (125, 12500, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 18),
  -- Electabuzz - Thunderbolt - TM24
  (125, 12500, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 19),
  -- Electabuzz - Thunder - TM25
  (125, 12500, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 20),
  -- Electabuzz - Return - TM27
  (125, 12500, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Electabuzz - Psychic - TM29
  (125, 12500, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 22),
  -- Electabuzz - Brick Break - TM31
  (125, 12500, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 23),
  -- Electabuzz - Double Team - TM32
  (125, 12500, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Electabuzz - Shock Wave - TM34
  (125, 12500, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 25),
  -- Electabuzz - Facade - TM42
  (125, 12500, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 26),
  -- Electabuzz - Secret Power - TM43
  (125, 12500, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 27),
  -- Electabuzz - Rest - TM44
  (125, 12500, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 28),
  -- Electabuzz - Attract - TM45
  (125, 12500, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 29),
  -- Electabuzz - Thief - TM46
  (125, 12500, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 30),
  -- Electabuzz - Strength - HM04
  (125, 12500, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 31),
  -- Electabuzz - Flash - HM05
  (125, 12500, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 32),
  -- Electabuzz - Rock Smash - HM06
  (125, 12500, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 33),
  -- Magmar - Ember - Level 1
  (126, 12600, 52, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magmar - Leer - Level 1
  (126, 12600, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magmar - Smog - Level 1
  (126, 12600, 123, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magmar - Fire Punch - Level 1
  (126, 12600, 7, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magmar - Leer - Level 7
  (126, 12600, 43, 5, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Magmar - Smog - Level 13
  (126, 12600, 123, 5, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Magmar - Fire Punch - Level 19
  (126, 12600, 7, 5, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Magmar - Smokescreen - Level 25
  (126, 12600, 108, 5, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Magmar - Sunny Day - Level 33
  (126, 12600, 241, 5, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Magmar - Flamethrower - Level 41
  (126, 12600, 53, 5, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Magmar - Confuse Ray - Level 49
  (126, 12600, 109, 5, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Magmar - Fire Blast - Level 57
  (126, 12600, 126, 5, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Magmar - Focus Punch - TM01
  (126, 12600, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 13),
  -- Magmar - Toxic - TM06
  (126, 12600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Magmar - Hidden Power - TM10
  (126, 12600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Magmar - Sunny Day - TM11
  (126, 12600, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 16),
  -- Magmar - Hyper Beam - TM15
  (126, 12600, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 17),
  -- Magmar - Protect - TM17
  (126, 12600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Magmar - Frustration - TM21
  (126, 12600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Magmar - Iron Tail - TM23
  (126, 12600, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 20),
  -- Magmar - Return - TM27
  (126, 12600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Magmar - Psychic - TM29
  (126, 12600, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 22),
  -- Magmar - Brick Break - TM31
  (126, 12600, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 23),
  -- Magmar - Double Team - TM32
  (126, 12600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Magmar - Flamethrower - TM35
  (126, 12600, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 25),
  -- Magmar - Fire Blast - TM38
  (126, 12600, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 26),
  -- Magmar - Facade - TM42
  (126, 12600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Magmar - Secret Power - TM43
  (126, 12600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Magmar - Rest - TM44
  (126, 12600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Magmar - Attract - TM45
  (126, 12600, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 30),
  -- Magmar - Thief - TM46
  (126, 12600, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 31),
  -- Magmar - Strength - HM04
  (126, 12600, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 32),
  -- Magmar - Rock Smash - HM06
  (126, 12600, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 33),
  -- Pinsir - Vise Grip - Level 1
  (127, 12700, 11, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pinsir - Focus Energy - Level 1
  (127, 12700, 116, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pinsir - Bind - Level 7
  (127, 12700, 20, 5, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Pinsir - Seismic Toss - Level 13
  (127, 12700, 69, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Pinsir - Harden - Level 19
  (127, 12700, 106, 5, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Pinsir - Revenge - Level 25
  (127, 12700, 279, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Pinsir - Brick Break - Level 31
  (127, 12700, 280, 5, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Pinsir - Guillotine - Level 37
  (127, 12700, 12, 5, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Pinsir - Submission - Level 43
  (127, 12700, 66, 5, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Pinsir - Swords Dance - Level 49
  (127, 12700, 14, 5, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Pinsir - Focus Punch - TM01
  (127, 12700, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 11),
  -- Pinsir - Toxic - TM06
  (127, 12700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Pinsir - Bulk Up - TM08
  (127, 12700, 339, 5, NULL, 2, NULL, NULL, 5002008, NULL, 13),
  -- Pinsir - Hidden Power - TM10
  (127, 12700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Pinsir - Sunny Day - TM11
  (127, 12700, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Pinsir - Hyper Beam - TM15
  (127, 12700, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 16),
  -- Pinsir - Protect - TM17
  (127, 12700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Pinsir - Rain Dance - TM18
  (127, 12700, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 18),
  -- Pinsir - Frustration - TM21
  (127, 12700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Pinsir - Earthquake - TM26
  (127, 12700, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 20),
  -- Pinsir - Return - TM27
  (127, 12700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Pinsir - Dig - TM28
  (127, 12700, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 22),
  -- Pinsir - Brick Break - TM31
  (127, 12700, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 23),
  -- Pinsir - Double Team - TM32
  (127, 12700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Pinsir - Rock Tomb - TM39
  (127, 12700, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 25),
  -- Pinsir - Facade - TM42
  (127, 12700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 26),
  -- Pinsir - Secret Power - TM43
  (127, 12700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 27),
  -- Pinsir - Rest - TM44
  (127, 12700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 28),
  -- Pinsir - Attract - TM45
  (127, 12700, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 29),
  -- Pinsir - Thief - TM46
  (127, 12700, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 30),
  -- Pinsir - Cut - HM01
  (127, 12700, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 31),
  -- Pinsir - Strength - HM04
  (127, 12700, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 32),
  -- Pinsir - Rock Smash - HM06
  (127, 12700, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 33),
  -- Pinsir - Feint Attack - Egg Move
  (127, 12700, 185, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Pinsir - False Swipe - Egg Move
  (127, 12700, 206, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Pinsir - Flail - Egg Move
  (127, 12700, 175, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Pinsir - Fury Attack - Egg Move
  (127, 12700, 31, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Tauros - Tackle - Level 1
  (128, 12800, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tauros - Tail Whip - Level 4
  (128, 12800, 39, 5, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Tauros - Rage - Level 8
  (128, 12800, 99, 5, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Tauros - Horn Attack - Level 13
  (128, 12800, 30, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Tauros - Scary Face - Level 19
  (128, 12800, 184, 5, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Tauros - Pursuit - Level 26
  (128, 12800, 228, 5, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Tauros - Rest - Level 34
  (128, 12800, 156, 5, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Tauros - Thrash - Level 43
  (128, 12800, 37, 5, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Tauros - Take Down - Level 53
  (128, 12800, 36, 5, NULL, 1, 53, NULL, NULL, NULL, 9),
  -- Tauros - Water Pulse - TM03
  (128, 12800, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 10),
  -- Tauros - Toxic - TM06
  (128, 12800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Tauros - Hidden Power - TM10
  (128, 12800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Tauros - Sunny Day - TM11
  (128, 12800, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 13),
  -- Tauros - Ice Beam - TM13
  (128, 12800, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 14),
  -- Tauros - Blizzard - TM14
  (128, 12800, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 15),
  -- Tauros - Hyper Beam - TM15
  (128, 12800, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 16),
  -- Tauros - Protect - TM17
  (128, 12800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Tauros - Rain Dance - TM18
  (128, 12800, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 18),
  -- Tauros - Frustration - TM21
  (128, 12800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Tauros - Solar Beam - TM22
  (128, 12800, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 20),
  -- Tauros - Iron Tail - TM23
  (128, 12800, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 21),
  -- Tauros - Thunderbolt - TM24
  (128, 12800, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 22),
  -- Tauros - Thunder - TM25
  (128, 12800, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 23),
  -- Tauros - Earthquake - TM26
  (128, 12800, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 24),
  -- Tauros - Return - TM27
  (128, 12800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 25),
  -- Tauros - Double Team - TM32
  (128, 12800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 26),
  -- Tauros - Shock Wave - TM34
  (128, 12800, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 27),
  -- Tauros - Flamethrower - TM35
  (128, 12800, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 28),
  -- Tauros - Sandstorm - TM37
  (128, 12800, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 29),
  -- Tauros - Fire Blast - TM38
  (128, 12800, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 30),
  -- Tauros - Rock Tomb - TM39
  (128, 12800, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 31),
  -- Tauros - Facade - TM42
  (128, 12800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 32),
  -- Tauros - Secret Power - TM43
  (128, 12800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 33),
  -- Tauros - Rest - TM44
  (128, 12800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 34),
  -- Tauros - Attract - TM45
  (128, 12800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 35),
  -- Tauros - Surf - HM03
  (128, 12800, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 36),
  -- Tauros - Strength - HM04
  (128, 12800, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 37),
  -- Tauros - Rock Smash - HM06
  (128, 12800, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 38),
  -- Magikarp - Splash - Level 1
  (129, 12900, 150, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magikarp - Tackle - Level 15
  (129, 12900, 33, 5, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Magikarp - Flail - Level 30
  (129, 12900, 175, 5, NULL, 1, 30, NULL, NULL, NULL, 3),
  -- Gyarados - Thrash - Level 1
  (130, 13000, 37, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gyarados - Bite - Level 20
  (130, 13000, 44, 5, NULL, 1, 20, NULL, NULL, NULL, 2),
  -- Gyarados - Dragon Rage - Level 25
  (130, 13000, 82, 5, NULL, 1, 25, NULL, NULL, NULL, 3),
  -- Gyarados - Leer - Level 30
  (130, 13000, 43, 5, NULL, 1, 30, NULL, NULL, NULL, 4),
  -- Gyarados - Twister - Level 35
  (130, 13000, 239, 5, NULL, 1, 35, NULL, NULL, NULL, 5),
  -- Gyarados - Hydro Pump - Level 40
  (130, 13000, 56, 5, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Gyarados - Rain Dance - Level 45
  (130, 13000, 240, 5, NULL, 1, 45, NULL, NULL, NULL, 7),
  -- Gyarados - Dragon Dance - Level 50
  (130, 13000, 349, 5, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Gyarados - Hyper Beam - Level 55
  (130, 13000, 63, 5, NULL, 1, 55, NULL, NULL, NULL, 9),
  -- Gyarados - Water Pulse - TM03
  (130, 13000, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 10),
  -- Gyarados - Roar - TM05
  (130, 13000, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 11),
  -- Gyarados - Toxic - TM06
  (130, 13000, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Gyarados - Hail - TM07
  (130, 13000, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 13),
  -- Gyarados - Hidden Power - TM10
  (130, 13000, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Gyarados - Taunt - TM12
  (130, 13000, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 15),
  -- Gyarados - Ice Beam - TM13
  (130, 13000, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 16),
  -- Gyarados - Blizzard - TM14
  (130, 13000, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 17),
  -- Gyarados - Hyper Beam - TM15
  (130, 13000, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 18),
  -- Gyarados - Protect - TM17
  (130, 13000, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 19),
  -- Gyarados - Rain Dance - TM18
  (130, 13000, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 20),
  -- Gyarados - Frustration - TM21
  (130, 13000, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 21),
  -- Gyarados - Thunderbolt - TM24
  (130, 13000, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 22),
  -- Gyarados - Thunder - TM25
  (130, 13000, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 23),
  -- Gyarados - Earthquake - TM26
  (130, 13000, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 24),
  -- Gyarados - Return - TM27
  (130, 13000, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 25),
  -- Gyarados - Double Team - TM32
  (130, 13000, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 26),
  -- Gyarados - Flamethrower - TM35
  (130, 13000, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 27),
  -- Gyarados - Sandstorm - TM37
  (130, 13000, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 28),
  -- Gyarados - Fire Blast - TM38
  (130, 13000, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 29),
  -- Gyarados - Torment - TM41
  (130, 13000, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 30),
  -- Gyarados - Facade - TM42
  (130, 13000, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 31),
  -- Gyarados - Secret Power - TM43
  (130, 13000, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 32),
  -- Gyarados - Rest - TM44
  (130, 13000, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 33),
  -- Gyarados - Attract - TM45
  (130, 13000, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 34),
  -- Gyarados - Surf - HM03
  (130, 13000, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 35),
  -- Gyarados - Strength - HM04
  (130, 13000, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 36),
  -- Gyarados - Rock Smash - HM06
  (130, 13000, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 37),
  -- Gyarados - Waterfall - HM07
  (130, 13000, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 38),
  -- Gyarados - Dive - HM08
  (130, 13000, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 39),
  -- Lapras - Water Gun - Level 1
  (131, 13100, 55, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lapras - Growl - Level 1
  (131, 13100, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lapras - Sing - Level 1
  (131, 13100, 47, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lapras - Mist - Level 7
  (131, 13100, 54, 5, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Lapras - Body Slam - Level 13
  (131, 13100, 34, 5, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Lapras - Confuse Ray - Level 19
  (131, 13100, 109, 5, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Lapras - Perish Song - Level 25
  (131, 13100, 195, 5, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Lapras - Ice Beam - Level 31
  (131, 13100, 58, 5, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Lapras - Rain Dance - Level 37
  (131, 13100, 240, 5, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Lapras - Safeguard - Level 43
  (131, 13100, 219, 5, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Lapras - Hydro Pump - Level 49
  (131, 13100, 56, 5, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Lapras - Sheer Cold - Level 55
  (131, 13100, 329, 5, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Lapras - Water Pulse - TM03
  (131, 13100, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 13),
  -- Lapras - Roar - TM05
  (131, 13100, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 14),
  -- Lapras - Toxic - TM06
  (131, 13100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 15),
  -- Lapras - Hail - TM07
  (131, 13100, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 16),
  -- Lapras - Hidden Power - TM10
  (131, 13100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 17),
  -- Lapras - Ice Beam - TM13
  (131, 13100, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 18),
  -- Lapras - Blizzard - TM14
  (131, 13100, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 19),
  -- Lapras - Hyper Beam - TM15
  (131, 13100, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 20),
  -- Lapras - Protect - TM17
  (131, 13100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 21),
  -- Lapras - Rain Dance - TM18
  (131, 13100, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 22),
  -- Lapras - Safeguard - TM20
  (131, 13100, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 23),
  -- Lapras - Frustration - TM21
  (131, 13100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 24),
  -- Lapras - Iron Tail - TM23
  (131, 13100, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 25),
  -- Lapras - Thunderbolt - TM24
  (131, 13100, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 26),
  -- Lapras - Thunder - TM25
  (131, 13100, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 27),
  -- Lapras - Return - TM27
  (131, 13100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 28),
  -- Lapras - Psychic - TM29
  (131, 13100, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 29),
  -- Lapras - Double Team - TM32
  (131, 13100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 30),
  -- Lapras - Shock Wave - TM34
  (131, 13100, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 31),
  -- Lapras - Facade - TM42
  (131, 13100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 32),
  -- Lapras - Secret Power - TM43
  (131, 13100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 33),
  -- Lapras - Rest - TM44
  (131, 13100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 34),
  -- Lapras - Attract - TM45
  (131, 13100, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 35),
  -- Lapras - Surf - HM03
  (131, 13100, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 36),
  -- Lapras - Strength - HM04
  (131, 13100, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 37),
  -- Lapras - Rock Smash - HM06
  (131, 13100, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 38),
  -- Lapras - Waterfall - HM07
  (131, 13100, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 39),
  -- Lapras - Dive - HM08
  (131, 13100, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 40),
  -- Lapras - Curse - Egg Move
  (131, 13100, 174, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Lapras - Dragon Dance - Egg Move
  (131, 13100, 349, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Lapras - Foresight - Egg Move
  (131, 13100, 193, 5, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Lapras - Horn Drill - Egg Move
  (131, 13100, 32, 5, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Lapras - Refresh - Egg Move
  (131, 13100, 287, 5, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Lapras - Sleep Talk - Egg Move
  (131, 13100, 214, 5, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Lapras - Substitute - Egg Move
  (131, 13100, 164, 5, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lapras - Tickle - Egg Move
  (131, 13100, 321, 5, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ditto - Transform - Level 1
  (132, 13200, 144, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Tackle - Level 1
  (133, 13300, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Eevee - Tail Whip - Level 1
  (133, 13300, 39, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Eevee - Helping Hand - Level 1
  (133, 13300, 270, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Eevee - Sand Attack - Level 8
  (133, 13300, 28, 5, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Eevee - Growl - Level 16
  (133, 13300, 45, 5, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Eevee - Quick Attack - Level 23
  (133, 13300, 98, 5, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Eevee - Bite - Level 30
  (133, 13300, 44, 5, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Eevee - Baton Pass - Level 36
  (133, 13300, 226, 5, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Eevee - Take Down - Level 42
  (133, 13300, 36, 5, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Eevee - Toxic - TM06
  (133, 13300, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 10),
  -- Eevee - Hidden Power - TM10
  (133, 13300, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 11),
  -- Eevee - Sunny Day - TM11
  (133, 13300, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 12),
  -- Eevee - Protect - TM17
  (133, 13300, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 13),
  -- Eevee - Rain Dance - TM18
  (133, 13300, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 14),
  -- Eevee - Frustration - TM21
  (133, 13300, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 15),
  -- Eevee - Iron Tail - TM23
  (133, 13300, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 16),
  -- Eevee - Return - TM27
  (133, 13300, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 17),
  -- Eevee - Dig - TM28
  (133, 13300, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 18),
  -- Eevee - Shadow Ball - TM30
  (133, 13300, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 19),
  -- Eevee - Double Team - TM32
  (133, 13300, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 20),
  -- Eevee - Facade - TM42
  (133, 13300, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 21),
  -- Eevee - Secret Power - TM43
  (133, 13300, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 22),
  -- Eevee - Rest - TM44
  (133, 13300, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 23),
  -- Eevee - Attract - TM45
  (133, 13300, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 24),
  -- Eevee - Charm - Egg Move
  (133, 13300, 204, 5, NULL, 5, NULL, NULL, NULL, NULL, 25),
  -- Eevee - Curse - Egg Move
  (133, 13300, 174, 5, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Eevee - Endure - Egg Move
  (133, 13300, 203, 5, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Eevee - Flail - Egg Move
  (133, 13300, 175, 5, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Eevee - Tickle - Egg Move
  (133, 13300, 321, 5, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Eevee - Wish - Egg Move
  (133, 13300, 273, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Vaporeon - Tackle - Level 1
  (134, 13400, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vaporeon - Tail Whip - Level 1
  (134, 13400, 39, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vaporeon - Helping Hand - Level 1
  (134, 13400, 270, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vaporeon - Sand Attack - Level 8
  (134, 13400, 28, 5, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Vaporeon - Water Gun - Level 16
  (134, 13400, 55, 5, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Vaporeon - Quick Attack - Level 23
  (134, 13400, 98, 5, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Vaporeon - Bite - Level 30
  (134, 13400, 44, 5, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Vaporeon - Aurora Beam - Level 36
  (134, 13400, 62, 5, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Vaporeon - Haze - Level 42
  (134, 13400, 114, 5, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Vaporeon - Acid Armor - Level 47
  (134, 13400, 151, 5, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Vaporeon - Hydro Pump - Level 52
  (134, 13400, 56, 5, NULL, 1, 52, NULL, NULL, NULL, 11),
  -- Vaporeon - Water Pulse - TM03
  (134, 13400, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 12),
  -- Vaporeon - Roar - TM05
  (134, 13400, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 13),
  -- Vaporeon - Toxic - TM06
  (134, 13400, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Vaporeon - Hail - TM07
  (134, 13400, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 15),
  -- Vaporeon - Hidden Power - TM10
  (134, 13400, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Vaporeon - Sunny Day - TM11
  (134, 13400, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 17),
  -- Vaporeon - Ice Beam - TM13
  (134, 13400, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 18),
  -- Vaporeon - Blizzard - TM14
  (134, 13400, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 19),
  -- Vaporeon - Hyper Beam - TM15
  (134, 13400, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 20),
  -- Vaporeon - Protect - TM17
  (134, 13400, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 21),
  -- Vaporeon - Rain Dance - TM18
  (134, 13400, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 22),
  -- Vaporeon - Frustration - TM21
  (134, 13400, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 23),
  -- Vaporeon - Iron Tail - TM23
  (134, 13400, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 24),
  -- Vaporeon - Return - TM27
  (134, 13400, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 25),
  -- Vaporeon - Dig - TM28
  (134, 13400, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 26),
  -- Vaporeon - Shadow Ball - TM30
  (134, 13400, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 27),
  -- Vaporeon - Double Team - TM32
  (134, 13400, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 28),
  -- Vaporeon - Facade - TM42
  (134, 13400, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 29),
  -- Vaporeon - Secret Power - TM43
  (134, 13400, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 30),
  -- Vaporeon - Rest - TM44
  (134, 13400, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 31),
  -- Vaporeon - Attract - TM45
  (134, 13400, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 32),
  -- Vaporeon - Surf - HM03
  (134, 13400, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 33),
  -- Vaporeon - Waterfall - HM07
  (134, 13400, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 34),
  -- Vaporeon - Dive - HM08
  (134, 13400, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 35),
  -- Jolteon - Tackle - Level 1
  (135, 13500, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jolteon - Tail Whip - Level 1
  (135, 13500, 39, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jolteon - Helping Hand - Level 1
  (135, 13500, 270, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jolteon - Sand Attack - Level 8
  (135, 13500, 28, 5, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Jolteon - Thunder Shock - Level 16
  (135, 13500, 84, 5, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Jolteon - Quick Attack - Level 23
  (135, 13500, 98, 5, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Jolteon - Double Kick - Level 30
  (135, 13500, 24, 5, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Jolteon - Pin Missile - Level 36
  (135, 13500, 42, 5, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Jolteon - Thunder Wave - Level 42
  (135, 13500, 86, 5, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Jolteon - Agility - Level 47
  (135, 13500, 97, 5, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Jolteon - Thunder - Level 52
  (135, 13500, 87, 5, NULL, 1, 52, NULL, NULL, NULL, 11),
  -- Jolteon - Roar - TM05
  (135, 13500, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 12),
  -- Jolteon - Toxic - TM06
  (135, 13500, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Jolteon - Hidden Power - TM10
  (135, 13500, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Jolteon - Sunny Day - TM11
  (135, 13500, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Jolteon - Hyper Beam - TM15
  (135, 13500, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 16),
  -- Jolteon - Protect - TM17
  (135, 13500, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Jolteon - Rain Dance - TM18
  (135, 13500, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 18),
  -- Jolteon - Frustration - TM21
  (135, 13500, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Jolteon - Iron Tail - TM23
  (135, 13500, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 20),
  -- Jolteon - Thunderbolt - TM24
  (135, 13500, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 21),
  -- Jolteon - Thunder - TM25
  (135, 13500, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 22),
  -- Jolteon - Return - TM27
  (135, 13500, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Jolteon - Dig - TM28
  (135, 13500, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 24),
  -- Jolteon - Shadow Ball - TM30
  (135, 13500, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 25),
  -- Jolteon - Double Team - TM32
  (135, 13500, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 26),
  -- Jolteon - Shock Wave - TM34
  (135, 13500, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 27),
  -- Jolteon - Facade - TM42
  (135, 13500, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 28),
  -- Jolteon - Secret Power - TM43
  (135, 13500, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 29),
  -- Jolteon - Rest - TM44
  (135, 13500, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 30),
  -- Jolteon - Attract - TM45
  (135, 13500, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 31),
  -- Jolteon - Flash - HM05
  (135, 13500, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 32),
  -- Flareon - Tackle - Level 1
  (136, 13600, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flareon - Tail Whip - Level 1
  (136, 13600, 39, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flareon - Helping Hand - Level 1
  (136, 13600, 270, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flareon - Sand Attack - Level 8
  (136, 13600, 28, 5, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Flareon - Ember - Level 16
  (136, 13600, 52, 5, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Flareon - Quick Attack - Level 23
  (136, 13600, 98, 5, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Flareon - Bite - Level 30
  (136, 13600, 44, 5, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Flareon - Fire Spin - Level 36
  (136, 13600, 83, 5, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Flareon - Smog - Level 42
  (136, 13600, 123, 5, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Flareon - Leer - Level 47
  (136, 13600, 43, 5, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Flareon - Flamethrower - Level 52
  (136, 13600, 53, 5, NULL, 1, 52, NULL, NULL, NULL, 11),
  -- Flareon - Roar - TM05
  (136, 13600, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 12),
  -- Flareon - Toxic - TM06
  (136, 13600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Flareon - Hidden Power - TM10
  (136, 13600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Flareon - Sunny Day - TM11
  (136, 13600, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Flareon - Hyper Beam - TM15
  (136, 13600, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 16),
  -- Flareon - Protect - TM17
  (136, 13600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Flareon - Rain Dance - TM18
  (136, 13600, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 18),
  -- Flareon - Frustration - TM21
  (136, 13600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Flareon - Iron Tail - TM23
  (136, 13600, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 20),
  -- Flareon - Return - TM27
  (136, 13600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Flareon - Dig - TM28
  (136, 13600, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 22),
  -- Flareon - Shadow Ball - TM30
  (136, 13600, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 23),
  -- Flareon - Double Team - TM32
  (136, 13600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Flareon - Flamethrower - TM35
  (136, 13600, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 25),
  -- Flareon - Fire Blast - TM38
  (136, 13600, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 26),
  -- Flareon - Facade - TM42
  (136, 13600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Flareon - Secret Power - TM43
  (136, 13600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Flareon - Rest - TM44
  (136, 13600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Flareon - Attract - TM45
  (136, 13600, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 30),
  -- Flareon - Overheat - TM50
  (136, 13600, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 31),
  -- Porygon - Tackle - Level 1
  (137, 13700, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon - Conversion - Level 1
  (137, 13700, 160, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon - Conversion 2 - Level 1
  (137, 13700, 176, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon - Agility - Level 9
  (137, 13700, 97, 5, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Porygon - Psybeam - Level 12
  (137, 13700, 60, 5, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Porygon - Recover - Level 20
  (137, 13700, 105, 5, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Porygon - Sharpen - Level 24
  (137, 13700, 159, 5, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Porygon - Lock-On - Level 32
  (137, 13700, 199, 5, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Porygon - Tri Attack - Level 36
  (137, 13700, 161, 5, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Porygon - Recycle - Level 44
  (137, 13700, 278, 5, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Porygon - Zap Cannon - Level 48
  (137, 13700, 192, 5, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Porygon - Toxic - TM06
  (137, 13700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Porygon - Hidden Power - TM10
  (137, 13700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Porygon - Sunny Day - TM11
  (137, 13700, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Porygon - Ice Beam - TM13
  (137, 13700, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 15),
  -- Porygon - Blizzard - TM14
  (137, 13700, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 16),
  -- Porygon - Hyper Beam - TM15
  (137, 13700, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 17),
  -- Porygon - Protect - TM17
  (137, 13700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Porygon - Rain Dance - TM18
  (137, 13700, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 19),
  -- Porygon - Frustration - TM21
  (137, 13700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Porygon - Solar Beam - TM22
  (137, 13700, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 21),
  -- Porygon - Iron Tail - TM23
  (137, 13700, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 22),
  -- Porygon - Thunderbolt - TM24
  (137, 13700, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 23),
  -- Porygon - Thunder - TM25
  (137, 13700, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 24),
  -- Porygon - Return - TM27
  (137, 13700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 25),
  -- Porygon - Psychic - TM29
  (137, 13700, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 26),
  -- Porygon - Shadow Ball - TM30
  (137, 13700, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 27),
  -- Porygon - Double Team - TM32
  (137, 13700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 28),
  -- Porygon - Shock Wave - TM34
  (137, 13700, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 29),
  -- Porygon - Aerial Ace - TM40
  (137, 13700, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 30),
  -- Porygon - Facade - TM42
  (137, 13700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 31),
  -- Porygon - Secret Power - TM43
  (137, 13700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 32),
  -- Porygon - Rest - TM44
  (137, 13700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 33),
  -- Porygon - Thief - TM46
  (137, 13700, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 34),
  -- Porygon - Flash - HM05
  (137, 13700, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 35),
  -- Omanyte - Constrict - Level 1
  (138, 13800, 132, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Omanyte - Withdraw - Level 1
  (138, 13800, 110, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Omanyte - Bite - Level 13
  (138, 13800, 44, 5, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Omanyte - Water Gun - Level 19
  (138, 13800, 55, 5, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Omanyte - Mud Shot - Level 25
  (138, 13800, 341, 5, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Omanyte - Leer - Level 31
  (138, 13800, 43, 5, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Omanyte - Protect - Level 37
  (138, 13800, 182, 5, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Omanyte - Tickle - Level 43
  (138, 13800, 321, 5, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Omanyte - Ancient Power - Level 49
  (138, 13800, 246, 5, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Omanyte - Hydro Pump - Level 55
  (138, 13800, 56, 5, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Omanyte - Water Pulse - TM03
  (138, 13800, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 11),
  -- Omanyte - Toxic - TM06
  (138, 13800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Omanyte - Hail - TM07
  (138, 13800, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 13),
  -- Omanyte - Hidden Power - TM10
  (138, 13800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Omanyte - Ice Beam - TM13
  (138, 13800, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 15),
  -- Omanyte - Blizzard - TM14
  (138, 13800, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 16),
  -- Omanyte - Protect - TM17
  (138, 13800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Omanyte - Rain Dance - TM18
  (138, 13800, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 18),
  -- Omanyte - Frustration - TM21
  (138, 13800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Omanyte - Return - TM27
  (138, 13800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 20),
  -- Omanyte - Double Team - TM32
  (138, 13800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 21),
  -- Omanyte - Sandstorm - TM37
  (138, 13800, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 22),
  -- Omanyte - Rock Tomb - TM39
  (138, 13800, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 23),
  -- Omanyte - Facade - TM42
  (138, 13800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 24),
  -- Omanyte - Secret Power - TM43
  (138, 13800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 25),
  -- Omanyte - Rest - TM44
  (138, 13800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 26),
  -- Omanyte - Attract - TM45
  (138, 13800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 27),
  -- Omanyte - Thief - TM46
  (138, 13800, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 28),
  -- Omanyte - Surf - HM03
  (138, 13800, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 29),
  -- Omanyte - Rock Smash - HM06
  (138, 13800, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 30),
  -- Omanyte - Waterfall - HM07
  (138, 13800, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 31),
  -- Omanyte - Dive - HM08
  (138, 13800, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 32),
  -- Omanyte - Aurora Beam - Egg Move
  (138, 13800, 62, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Omanyte - Bubble Beam - Egg Move
  (138, 13800, 61, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Omanyte - Haze - Egg Move
  (138, 13800, 114, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Omanyte - Rock Slide - Egg Move
  (138, 13800, 157, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Omanyte - Slam - Egg Move
  (138, 13800, 21, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Omanyte - Spikes - Egg Move
  (138, 13800, 191, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Omanyte - Supersonic - Egg Move
  (138, 13800, 48, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Omastar - Constrict - Level 1
  (139, 13900, 132, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Omastar - Withdraw - Level 1
  (139, 13900, 110, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Omastar - Bite - Level 1
  (139, 13900, 44, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Omastar - Bite - Level 13
  (139, 13900, 44, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Omastar - Water Gun - Level 19
  (139, 13900, 55, 5, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Omastar - Mud Shot - Level 25
  (139, 13900, 341, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Omastar - Leer - Level 31
  (139, 13900, 43, 5, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Omastar - Protect - Level 37
  (139, 13900, 182, 5, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Omastar - Spike Cannon - Level 40
  (139, 13900, 131, 5, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Omastar - Tickle - Level 46
  (139, 13900, 321, 5, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Omastar - Ancient Power - Level 55
  (139, 13900, 246, 5, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Omastar - Hydro Pump - Level 65
  (139, 13900, 56, 5, NULL, 1, 65, NULL, NULL, NULL, 12),
  -- Omastar - Water Pulse - TM03
  (139, 13900, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 13),
  -- Omastar - Toxic - TM06
  (139, 13900, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Omastar - Hail - TM07
  (139, 13900, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 15),
  -- Omastar - Hidden Power - TM10
  (139, 13900, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Omastar - Ice Beam - TM13
  (139, 13900, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 17),
  -- Omastar - Blizzard - TM14
  (139, 13900, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 18),
  -- Omastar - Hyper Beam - TM15
  (139, 13900, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 19),
  -- Omastar - Protect - TM17
  (139, 13900, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 20),
  -- Omastar - Rain Dance - TM18
  (139, 13900, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 21),
  -- Omastar - Frustration - TM21
  (139, 13900, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 22),
  -- Omastar - Return - TM27
  (139, 13900, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Omastar - Double Team - TM32
  (139, 13900, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Omastar - Sandstorm - TM37
  (139, 13900, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 25),
  -- Omastar - Rock Tomb - TM39
  (139, 13900, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 26),
  -- Omastar - Facade - TM42
  (139, 13900, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Omastar - Secret Power - TM43
  (139, 13900, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Omastar - Rest - TM44
  (139, 13900, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Omastar - Attract - TM45
  (139, 13900, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 30),
  -- Omastar - Thief - TM46
  (139, 13900, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 31),
  -- Omastar - Surf - HM03
  (139, 13900, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 32),
  -- Omastar - Rock Smash - HM06
  (139, 13900, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 33),
  -- Omastar - Waterfall - HM07
  (139, 13900, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 34),
  -- Omastar - Dive - HM08
  (139, 13900, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 35),
  -- Kabuto - Scratch - Level 1
  (140, 14000, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kabuto - Harden - Level 1
  (140, 14000, 106, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kabuto - Absorb - Level 13
  (140, 14000, 71, 5, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Kabuto - Leer - Level 19
  (140, 14000, 43, 5, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Kabuto - Mud Shot - Level 25
  (140, 14000, 341, 5, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Kabuto - Sand Attack - Level 31
  (140, 14000, 28, 5, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Kabuto - Endure - Level 37
  (140, 14000, 203, 5, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Kabuto - Metal Sound - Level 43
  (140, 14000, 319, 5, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Kabuto - Mega Drain - Level 49
  (140, 14000, 72, 5, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Kabuto - Ancient Power - Level 55
  (140, 14000, 246, 5, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Kabuto - Water Pulse - TM03
  (140, 14000, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 11),
  -- Kabuto - Toxic - TM06
  (140, 14000, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Kabuto - Hail - TM07
  (140, 14000, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 13),
  -- Kabuto - Hidden Power - TM10
  (140, 14000, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Kabuto - Ice Beam - TM13
  (140, 14000, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 15),
  -- Kabuto - Blizzard - TM14
  (140, 14000, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 16),
  -- Kabuto - Protect - TM17
  (140, 14000, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Kabuto - Rain Dance - TM18
  (140, 14000, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 18),
  -- Kabuto - Giga Drain - TM19
  (140, 14000, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 19),
  -- Kabuto - Frustration - TM21
  (140, 14000, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Kabuto - Return - TM27
  (140, 14000, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Kabuto - Dig - TM28
  (140, 14000, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 22),
  -- Kabuto - Double Team - TM32
  (140, 14000, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 23),
  -- Kabuto - Sandstorm - TM37
  (140, 14000, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 24),
  -- Kabuto - Rock Tomb - TM39
  (140, 14000, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 25),
  -- Kabuto - Aerial Ace - TM40
  (140, 14000, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 26),
  -- Kabuto - Facade - TM42
  (140, 14000, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Kabuto - Secret Power - TM43
  (140, 14000, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Kabuto - Rest - TM44
  (140, 14000, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Kabuto - Attract - TM45
  (140, 14000, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 30),
  -- Kabuto - Thief - TM46
  (140, 14000, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 31),
  -- Kabuto - Surf - HM03
  (140, 14000, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 32),
  -- Kabuto - Rock Smash - HM06
  (140, 14000, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 33),
  -- Kabuto - Waterfall - HM07
  (140, 14000, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 34),
  -- Kabuto - Aurora Beam - Egg Move
  (140, 14000, 62, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Kabuto - Bubble Beam - Egg Move
  (140, 14000, 61, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Kabuto - Confuse Ray - Egg Move
  (140, 14000, 109, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Kabuto - Dig - Egg Move
  (140, 14000, 91, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Kabuto - Flail - Egg Move
  (140, 14000, 175, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Kabuto - Knock Off - Egg Move
  (140, 14000, 282, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Kabuto - Rapid Spin - Egg Move
  (140, 14000, 229, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Kabutops - Scratch - Level 1
  (141, 14100, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kabutops - Harden - Level 1
  (141, 14100, 106, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kabutops - Absorb - Level 1
  (141, 14100, 71, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kabutops - Absorb - Level 13
  (141, 14100, 71, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Kabutops - Leer - Level 19
  (141, 14100, 43, 5, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Kabutops - Mud Shot - Level 25
  (141, 14100, 341, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Kabutops - Sand Attack - Level 31
  (141, 14100, 28, 5, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Kabutops - Endure - Level 37
  (141, 14100, 203, 5, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Kabutops - Slash - Level 40
  (141, 14100, 163, 5, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Kabutops - Metal Sound - Level 46
  (141, 14100, 319, 5, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Kabutops - Mega Drain - Level 55
  (141, 14100, 72, 5, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Kabutops - Ancient Power - Level 65
  (141, 14100, 246, 5, NULL, 1, 65, NULL, NULL, NULL, 12),
  -- Kabutops - Water Pulse - TM03
  (141, 14100, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 13),
  -- Kabutops - Toxic - TM06
  (141, 14100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Kabutops - Hail - TM07
  (141, 14100, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 15),
  -- Kabutops - Hidden Power - TM10
  (141, 14100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Kabutops - Ice Beam - TM13
  (141, 14100, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 17),
  -- Kabutops - Blizzard - TM14
  (141, 14100, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 18),
  -- Kabutops - Hyper Beam - TM15
  (141, 14100, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 19),
  -- Kabutops - Protect - TM17
  (141, 14100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 20),
  -- Kabutops - Rain Dance - TM18
  (141, 14100, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 21),
  -- Kabutops - Giga Drain - TM19
  (141, 14100, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 22),
  -- Kabutops - Frustration - TM21
  (141, 14100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 23),
  -- Kabutops - Return - TM27
  (141, 14100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 24),
  -- Kabutops - Dig - TM28
  (141, 14100, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 25),
  -- Kabutops - Brick Break - TM31
  (141, 14100, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 26),
  -- Kabutops - Double Team - TM32
  (141, 14100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 27),
  -- Kabutops - Sandstorm - TM37
  (141, 14100, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 28),
  -- Kabutops - Rock Tomb - TM39
  (141, 14100, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 29),
  -- Kabutops - Aerial Ace - TM40
  (141, 14100, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 30),
  -- Kabutops - Facade - TM42
  (141, 14100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 31),
  -- Kabutops - Secret Power - TM43
  (141, 14100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 32),
  -- Kabutops - Rest - TM44
  (141, 14100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 33),
  -- Kabutops - Attract - TM45
  (141, 14100, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 34),
  -- Kabutops - Thief - TM46
  (141, 14100, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 35),
  -- Kabutops - Cut - HM01
  (141, 14100, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 36),
  -- Kabutops - Surf - HM03
  (141, 14100, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 37),
  -- Kabutops - Rock Smash - HM06
  (141, 14100, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 38),
  -- Kabutops - Waterfall - HM07
  (141, 14100, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 39),
  -- Kabutops - Dive - HM08
  (141, 14100, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 40),
  -- Aerodactyl - Wing Attack - Level 1
  (142, 14200, 17, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aerodactyl - Agility - Level 8
  (142, 14200, 97, 5, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Aerodactyl - Bite - Level 15
  (142, 14200, 44, 5, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Aerodactyl - Supersonic - Level 22
  (142, 14200, 48, 5, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Aerodactyl - Ancient Power - Level 29
  (142, 14200, 246, 5, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Aerodactyl - Scary Face - Level 36
  (142, 14200, 184, 5, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Aerodactyl - Take Down - Level 43
  (142, 14200, 36, 5, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Aerodactyl - Hyper Beam - Level 50
  (142, 14200, 63, 5, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Aerodactyl - Dragon Claw - TM02
  (142, 14200, 337, 5, NULL, 2, NULL, NULL, 5002002, NULL, 9),
  -- Aerodactyl - Roar - TM05
  (142, 14200, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 10),
  -- Aerodactyl - Toxic - TM06
  (142, 14200, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Aerodactyl - Hidden Power - TM10
  (142, 14200, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Aerodactyl - Sunny Day - TM11
  (142, 14200, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 13),
  -- Aerodactyl - Taunt - TM12
  (142, 14200, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 14),
  -- Aerodactyl - Hyper Beam - TM15
  (142, 14200, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 15),
  -- Aerodactyl - Protect - TM17
  (142, 14200, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Aerodactyl - Rain Dance - TM18
  (142, 14200, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Aerodactyl - Frustration - TM21
  (142, 14200, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Aerodactyl - Iron Tail - TM23
  (142, 14200, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 19),
  -- Aerodactyl - Earthquake - TM26
  (142, 14200, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 20),
  -- Aerodactyl - Return - TM27
  (142, 14200, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Aerodactyl - Double Team - TM32
  (142, 14200, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 22),
  -- Aerodactyl - Flamethrower - TM35
  (142, 14200, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 23),
  -- Aerodactyl - Sandstorm - TM37
  (142, 14200, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 24),
  -- Aerodactyl - Fire Blast - TM38
  (142, 14200, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 25),
  -- Aerodactyl - Rock Tomb - TM39
  (142, 14200, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 26),
  -- Aerodactyl - Aerial Ace - TM40
  (142, 14200, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 27),
  -- Aerodactyl - Torment - TM41
  (142, 14200, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 28),
  -- Aerodactyl - Facade - TM42
  (142, 14200, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 29),
  -- Aerodactyl - Secret Power - TM43
  (142, 14200, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 30),
  -- Aerodactyl - Rest - TM44
  (142, 14200, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 31),
  -- Aerodactyl - Attract - TM45
  (142, 14200, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 32),
  -- Aerodactyl - Thief - TM46
  (142, 14200, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 33),
  -- Aerodactyl - Steel Wing - TM47
  (142, 14200, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 34),
  -- Aerodactyl - Fly - HM02
  (142, 14200, 19, 5, NULL, 3, NULL, NULL, 5003002, NULL, 35),
  -- Aerodactyl - Strength - HM04
  (142, 14200, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 36),
  -- Aerodactyl - Rock Smash - HM06
  (142, 14200, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 37),
  -- Aerodactyl - Curse - Egg Move
  (142, 14200, 174, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Aerodactyl - Dragon Breath - Egg Move
  (142, 14200, 225, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Aerodactyl - Foresight - Egg Move
  (142, 14200, 193, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Aerodactyl - Pursuit - Egg Move
  (142, 14200, 228, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Aerodactyl - Steel Wing - Egg Move
  (142, 14200, 211, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Aerodactyl - Whirlwind - Egg Move
  (142, 14200, 18, 5, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Snorlax - Tackle - Level 1
  (143, 14300, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snorlax - Amnesia - Level 6
  (143, 14300, 133, 5, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Snorlax - Defense Curl - Level 10
  (143, 14300, 111, 5, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Snorlax - Belly Drum - Level 15
  (143, 14300, 187, 5, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Snorlax - Headbutt - Level 19
  (143, 14300, 29, 5, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Snorlax - Yawn - Level 24
  (143, 14300, 281, 5, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Snorlax - Rest - Level 28
  (143, 14300, 156, 5, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Snorlax - Snore - Level 28
  (143, 14300, 173, 5, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Snorlax - Body Slam - Level 33
  (143, 14300, 34, 5, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Snorlax - Block - Level 37
  (143, 14300, 335, 5, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Snorlax - Covet - Level 42
  (143, 14300, 343, 5, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Snorlax - Rollout - Level 46
  (143, 14300, 205, 5, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Snorlax - Hyper Beam - Level 51
  (143, 14300, 63, 5, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Snorlax - Focus Punch - TM01
  (143, 14300, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 14),
  -- Snorlax - Water Pulse - TM03
  (143, 14300, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 15),
  -- Snorlax - Toxic - TM06
  (143, 14300, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 16),
  -- Snorlax - Hidden Power - TM10
  (143, 14300, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 17),
  -- Snorlax - Sunny Day - TM11
  (143, 14300, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 18),
  -- Snorlax - Ice Beam - TM13
  (143, 14300, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 19),
  -- Snorlax - Blizzard - TM14
  (143, 14300, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 20),
  -- Snorlax - Hyper Beam - TM15
  (143, 14300, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 21),
  -- Snorlax - Protect - TM17
  (143, 14300, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 22),
  -- Snorlax - Rain Dance - TM18
  (143, 14300, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 23),
  -- Snorlax - Frustration - TM21
  (143, 14300, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 24),
  -- Snorlax - Solar Beam - TM22
  (143, 14300, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 25),
  -- Snorlax - Thunderbolt - TM24
  (143, 14300, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 26),
  -- Snorlax - Thunder - TM25
  (143, 14300, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 27),
  -- Snorlax - Earthquake - TM26
  (143, 14300, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 28),
  -- Snorlax - Return - TM27
  (143, 14300, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 29),
  -- Snorlax - Psychic - TM29
  (143, 14300, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 30),
  -- Snorlax - Shadow Ball - TM30
  (143, 14300, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 31),
  -- Snorlax - Brick Break - TM31
  (143, 14300, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 32),
  -- Snorlax - Double Team - TM32
  (143, 14300, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 33),
  -- Snorlax - Shock Wave - TM34
  (143, 14300, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 34),
  -- Snorlax - Flamethrower - TM35
  (143, 14300, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 35),
  -- Snorlax - Sandstorm - TM37
  (143, 14300, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 36),
  -- Snorlax - Fire Blast - TM38
  (143, 14300, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 37),
  -- Snorlax - Rock Tomb - TM39
  (143, 14300, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 38),
  -- Snorlax - Facade - TM42
  (143, 14300, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 39),
  -- Snorlax - Secret Power - TM43
  (143, 14300, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 40),
  -- Snorlax - Rest - TM44
  (143, 14300, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 41),
  -- Snorlax - Attract - TM45
  (143, 14300, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 42),
  -- Snorlax - Surf - HM03
  (143, 14300, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 43),
  -- Snorlax - Strength - HM04
  (143, 14300, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 44),
  -- Snorlax - Charm - Egg Move
  (143, 14300, 204, 5, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Snorlax - Curse - Egg Move
  (143, 14300, 174, 5, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Snorlax - Double-Edge - Egg Move
  (143, 14300, 38, 5, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Snorlax - Fissure - Egg Move
  (143, 14300, 90, 5, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Snorlax - Lick - Egg Move
  (143, 14300, 122, 5, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Snorlax - Substitute - Egg Move
  (143, 14300, 164, 5, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Articuno - Gust - Level 1
  (144, 14400, 16, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Articuno - Powder Snow - Level 1
  (144, 14400, 181, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Articuno - Mist - Level 13
  (144, 14400, 54, 5, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Articuno - Agility - Level 25
  (144, 14400, 97, 5, NULL, 1, 25, NULL, NULL, NULL, 4),
  -- Articuno - Mind Reader - Level 37
  (144, 14400, 170, 5, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Articuno - Ice Beam - Level 49
  (144, 14400, 58, 5, NULL, 1, 49, NULL, NULL, NULL, 6),
  -- Articuno - Reflect - Level 61
  (144, 14400, 115, 5, NULL, 1, 61, NULL, NULL, NULL, 7),
  -- Articuno - Blizzard - Level 73
  (144, 14400, 59, 5, NULL, 1, 73, NULL, NULL, NULL, 8),
  -- Articuno - Sheer Cold - Level 85
  (144, 14400, 329, 5, NULL, 1, 85, NULL, NULL, NULL, 9),
  -- Articuno - Water Pulse - TM03
  (144, 14400, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 10),
  -- Articuno - Roar - TM05
  (144, 14400, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 11),
  -- Articuno - Toxic - TM06
  (144, 14400, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Articuno - Hail - TM07
  (144, 14400, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 13),
  -- Articuno - Hidden Power - TM10
  (144, 14400, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Articuno - Sunny Day - TM11
  (144, 14400, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Articuno - Ice Beam - TM13
  (144, 14400, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 16),
  -- Articuno - Blizzard - TM14
  (144, 14400, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 17),
  -- Articuno - Hyper Beam - TM15
  (144, 14400, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 18),
  -- Articuno - Protect - TM17
  (144, 14400, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 19),
  -- Articuno - Rain Dance - TM18
  (144, 14400, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 20),
  -- Articuno - Frustration - TM21
  (144, 14400, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 21),
  -- Articuno - Return - TM27
  (144, 14400, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 22),
  -- Articuno - Double Team - TM32
  (144, 14400, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 23),
  -- Articuno - Reflect - TM33
  (144, 14400, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 24),
  -- Articuno - Sandstorm - TM37
  (144, 14400, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 25),
  -- Articuno - Aerial Ace - TM40
  (144, 14400, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 26),
  -- Articuno - Facade - TM42
  (144, 14400, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Articuno - Secret Power - TM43
  (144, 14400, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Articuno - Rest - TM44
  (144, 14400, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Articuno - Steel Wing - TM47
  (144, 14400, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 30),
  -- Articuno - Fly - HM02
  (144, 14400, 19, 5, NULL, 3, NULL, NULL, 5003002, NULL, 31),
  -- Articuno - Rock Smash - HM06
  (144, 14400, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 32),
  -- Zapdos - Peck - Level 1
  (145, 14500, 64, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zapdos - Thunder Shock - Level 1
  (145, 14500, 84, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zapdos - Thunder Wave - Level 13
  (145, 14500, 86, 5, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Zapdos - Agility - Level 25
  (145, 14500, 97, 5, NULL, 1, 25, NULL, NULL, NULL, 4),
  -- Zapdos - Detect - Level 37
  (145, 14500, 197, 5, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Zapdos - Drill Peck - Level 49
  (145, 14500, 65, 5, NULL, 1, 49, NULL, NULL, NULL, 6),
  -- Zapdos - Charge - Level 61
  (145, 14500, 268, 5, NULL, 1, 61, NULL, NULL, NULL, 7),
  -- Zapdos - Light Screen - Level 73
  (145, 14500, 113, 5, NULL, 1, 73, NULL, NULL, NULL, 8),
  -- Zapdos - Thunder - Level 85
  (145, 14500, 87, 5, NULL, 1, 85, NULL, NULL, NULL, 9),
  -- Zapdos - Roar - TM05
  (145, 14500, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 10),
  -- Zapdos - Toxic - TM06
  (145, 14500, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Zapdos - Hidden Power - TM10
  (145, 14500, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Zapdos - Sunny Day - TM11
  (145, 14500, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 13),
  -- Zapdos - Hyper Beam - TM15
  (145, 14500, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 14),
  -- Zapdos - Light Screen - TM16
  (145, 14500, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 15),
  -- Zapdos - Protect - TM17
  (145, 14500, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Zapdos - Rain Dance - TM18
  (145, 14500, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Zapdos - Frustration - TM21
  (145, 14500, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Zapdos - Thunderbolt - TM24
  (145, 14500, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 19),
  -- Zapdos - Thunder - TM25
  (145, 14500, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 20),
  -- Zapdos - Return - TM27
  (145, 14500, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Zapdos - Double Team - TM32
  (145, 14500, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 22),
  -- Zapdos - Shock Wave - TM34
  (145, 14500, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 23),
  -- Zapdos - Sandstorm - TM37
  (145, 14500, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 24),
  -- Zapdos - Aerial Ace - TM40
  (145, 14500, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 25),
  -- Zapdos - Facade - TM42
  (145, 14500, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 26),
  -- Zapdos - Secret Power - TM43
  (145, 14500, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 27),
  -- Zapdos - Rest - TM44
  (145, 14500, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 28),
  -- Zapdos - Steel Wing - TM47
  (145, 14500, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 29),
  -- Zapdos - Fly - HM02
  (145, 14500, 19, 5, NULL, 3, NULL, NULL, 5003002, NULL, 30),
  -- Zapdos - Flash - HM05
  (145, 14500, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 31),
  -- Zapdos - Rock Smash - HM06
  (145, 14500, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 32),
  -- Moltres - Wing Attack - Level 1
  (146, 14600, 17, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Moltres - Ember - Level 1
  (146, 14600, 52, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Moltres - Fire Spin - Level 13
  (146, 14600, 83, 5, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Moltres - Agility - Level 25
  (146, 14600, 97, 5, NULL, 1, 25, NULL, NULL, NULL, 4),
  -- Moltres - Endure - Level 37
  (146, 14600, 203, 5, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Moltres - Flamethrower - Level 49
  (146, 14600, 53, 5, NULL, 1, 49, NULL, NULL, NULL, 6),
  -- Moltres - Safeguard - Level 61
  (146, 14600, 219, 5, NULL, 1, 61, NULL, NULL, NULL, 7),
  -- Moltres - Heat Wave - Level 73
  (146, 14600, 257, 5, NULL, 1, 73, NULL, NULL, NULL, 8),
  -- Moltres - Sky Attack - Level 85
  (146, 14600, 143, 5, NULL, 1, 85, NULL, NULL, NULL, 9),
  -- Moltres - Roar - TM05
  (146, 14600, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 10),
  -- Moltres - Toxic - TM06
  (146, 14600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Moltres - Hidden Power - TM10
  (146, 14600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Moltres - Sunny Day - TM11
  (146, 14600, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 13),
  -- Moltres - Hyper Beam - TM15
  (146, 14600, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 14),
  -- Moltres - Protect - TM17
  (146, 14600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Moltres - Rain Dance - TM18
  (146, 14600, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 16),
  -- Moltres - Safeguard - TM20
  (146, 14600, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 17),
  -- Moltres - Frustration - TM21
  (146, 14600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Moltres - Return - TM27
  (146, 14600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 19),
  -- Moltres - Double Team - TM32
  (146, 14600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 20),
  -- Moltres - Flamethrower - TM35
  (146, 14600, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 21),
  -- Moltres - Sandstorm - TM37
  (146, 14600, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 22),
  -- Moltres - Fire Blast - TM38
  (146, 14600, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 23),
  -- Moltres - Aerial Ace - TM40
  (146, 14600, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 24),
  -- Moltres - Facade - TM42
  (146, 14600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 25),
  -- Moltres - Secret Power - TM43
  (146, 14600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 26),
  -- Moltres - Rest - TM44
  (146, 14600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 27),
  -- Moltres - Steel Wing - TM47
  (146, 14600, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 28),
  -- Moltres - Overheat - TM50
  (146, 14600, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 29),
  -- Moltres - Fly - HM02
  (146, 14600, 19, 5, NULL, 3, NULL, NULL, 5003002, NULL, 30),
  -- Moltres - Rock Smash - HM06
  (146, 14600, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 31),
  -- Dratini - Wrap - Level 1
  (147, 14700, 35, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dratini - Leer - Level 1
  (147, 14700, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dratini - Thunder Wave - Level 8
  (147, 14700, 86, 5, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Dratini - Twister - Level 15
  (147, 14700, 239, 5, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Dratini - Dragon Rage - Level 22
  (147, 14700, 82, 5, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Dratini - Slam - Level 29
  (147, 14700, 21, 5, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Dratini - Agility - Level 36
  (147, 14700, 97, 5, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Dratini - Safeguard - Level 43
  (147, 14700, 219, 5, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Dratini - Outrage - Level 50
  (147, 14700, 200, 5, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Dratini - Hyper Beam - Level 57
  (147, 14700, 63, 5, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Dratini - Water Pulse - TM03
  (147, 14700, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 11),
  -- Dratini - Toxic - TM06
  (147, 14700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Dratini - Hail - TM07
  (147, 14700, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 13),
  -- Dratini - Hidden Power - TM10
  (147, 14700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Dratini - Sunny Day - TM11
  (147, 14700, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Dratini - Ice Beam - TM13
  (147, 14700, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 16),
  -- Dratini - Blizzard - TM14
  (147, 14700, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 17),
  -- Dratini - Hyper Beam - TM15
  (147, 14700, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 18),
  -- Dratini - Protect - TM17
  (147, 14700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 19),
  -- Dratini - Rain Dance - TM18
  (147, 14700, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 20),
  -- Dratini - Safeguard - TM20
  (147, 14700, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 21),
  -- Dratini - Frustration - TM21
  (147, 14700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 22),
  -- Dratini - Iron Tail - TM23
  (147, 14700, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 23),
  -- Dratini - Thunderbolt - TM24
  (147, 14700, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 24),
  -- Dratini - Thunder - TM25
  (147, 14700, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 25),
  -- Dratini - Return - TM27
  (147, 14700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 26),
  -- Dratini - Double Team - TM32
  (147, 14700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 27),
  -- Dratini - Shock Wave - TM34
  (147, 14700, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 28),
  -- Dratini - Flamethrower - TM35
  (147, 14700, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 29),
  -- Dratini - Fire Blast - TM38
  (147, 14700, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 30),
  -- Dratini - Facade - TM42
  (147, 14700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 31),
  -- Dratini - Secret Power - TM43
  (147, 14700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 32),
  -- Dratini - Rest - TM44
  (147, 14700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 33),
  -- Dratini - Attract - TM45
  (147, 14700, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 34),
  -- Dratini - Surf - HM03
  (147, 14700, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 35),
  -- Dratini - Waterfall - HM07
  (147, 14700, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 36),
  -- Dratini - Dragon Breath - Egg Move
  (147, 14700, 225, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Dratini - Dragon Dance - Egg Move
  (147, 14700, 349, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Dratini - Haze - Egg Move
  (147, 14700, 114, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Dratini - Light Screen - Egg Move
  (147, 14700, 113, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Dratini - Mist - Egg Move
  (147, 14700, 54, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Dratini - Supersonic - Egg Move
  (147, 14700, 48, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Dragonair - Wrap - Level 1
  (148, 14800, 35, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonair - Leer - Level 1
  (148, 14800, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonair - Thunder Wave - Level 1
  (148, 14800, 86, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragonair - Twister - Level 1
  (148, 14800, 239, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragonair - Thunder Wave - Level 8
  (148, 14800, 86, 5, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Dragonair - Twister - Level 15
  (148, 14800, 239, 5, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Dragonair - Dragon Rage - Level 22
  (148, 14800, 82, 5, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Dragonair - Slam - Level 29
  (148, 14800, 21, 5, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Dragonair - Agility - Level 38
  (148, 14800, 97, 5, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Dragonair - Safeguard - Level 47
  (148, 14800, 219, 5, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Dragonair - Outrage - Level 56
  (148, 14800, 200, 5, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Dragonair - Hyper Beam - Level 65
  (148, 14800, 63, 5, NULL, 1, 65, NULL, NULL, NULL, 12),
  -- Dragonair - Water Pulse - TM03
  (148, 14800, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 13),
  -- Dragonair - Toxic - TM06
  (148, 14800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Dragonair - Hail - TM07
  (148, 14800, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 15),
  -- Dragonair - Hidden Power - TM10
  (148, 14800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Dragonair - Sunny Day - TM11
  (148, 14800, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 17),
  -- Dragonair - Ice Beam - TM13
  (148, 14800, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 18),
  -- Dragonair - Blizzard - TM14
  (148, 14800, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 19),
  -- Dragonair - Hyper Beam - TM15
  (148, 14800, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 20),
  -- Dragonair - Protect - TM17
  (148, 14800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 21),
  -- Dragonair - Rain Dance - TM18
  (148, 14800, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 22),
  -- Dragonair - Safeguard - TM20
  (148, 14800, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 23),
  -- Dragonair - Frustration - TM21
  (148, 14800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 24),
  -- Dragonair - Iron Tail - TM23
  (148, 14800, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 25),
  -- Dragonair - Thunderbolt - TM24
  (148, 14800, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 26),
  -- Dragonair - Thunder - TM25
  (148, 14800, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 27),
  -- Dragonair - Return - TM27
  (148, 14800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 28),
  -- Dragonair - Double Team - TM32
  (148, 14800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 29),
  -- Dragonair - Shock Wave - TM34
  (148, 14800, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 30),
  -- Dragonair - Flamethrower - TM35
  (148, 14800, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 31),
  -- Dragonair - Fire Blast - TM38
  (148, 14800, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 32),
  -- Dragonair - Facade - TM42
  (148, 14800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 33),
  -- Dragonair - Secret Power - TM43
  (148, 14800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 34),
  -- Dragonair - Rest - TM44
  (148, 14800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 35),
  -- Dragonair - Attract - TM45
  (148, 14800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 36),
  -- Dragonair - Surf - HM03
  (148, 14800, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 37),
  -- Dragonair - Waterfall - HM07
  (148, 14800, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 38),
  -- Dragonite - Wrap - Level 1
  (149, 14900, 35, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dragonite - Leer - Level 1
  (149, 14900, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dragonite - Thunder Wave - Level 1
  (149, 14900, 86, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dragonite - Twister - Level 1
  (149, 14900, 239, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dragonite - Thunder Wave - Level 8
  (149, 14900, 86, 5, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Dragonite - Twister - Level 15
  (149, 14900, 239, 5, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Dragonite - Dragon Rage - Level 22
  (149, 14900, 82, 5, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Dragonite - Slam - Level 29
  (149, 14900, 21, 5, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Dragonite - Agility - Level 38
  (149, 14900, 97, 5, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Dragonite - Safeguard - Level 47
  (149, 14900, 219, 5, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Dragonite - Wing Attack - Level 55
  (149, 14900, 17, 5, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Dragonite - Outrage - Level 61
  (149, 14900, 200, 5, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Dragonite - Hyper Beam - Level 75
  (149, 14900, 63, 5, NULL, 1, 75, NULL, NULL, NULL, 13),
  -- Dragonite - Focus Punch - TM01
  (149, 14900, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 14),
  -- Dragonite - Dragon Claw - TM02
  (149, 14900, 337, 5, NULL, 2, NULL, NULL, 5002002, NULL, 15),
  -- Dragonite - Water Pulse - TM03
  (149, 14900, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 16),
  -- Dragonite - Roar - TM05
  (149, 14900, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 17),
  -- Dragonite - Toxic - TM06
  (149, 14900, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 18),
  -- Dragonite - Hail - TM07
  (149, 14900, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 19),
  -- Dragonite - Hidden Power - TM10
  (149, 14900, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 20),
  -- Dragonite - Sunny Day - TM11
  (149, 14900, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 21),
  -- Dragonite - Ice Beam - TM13
  (149, 14900, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 22),
  -- Dragonite - Blizzard - TM14
  (149, 14900, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 23),
  -- Dragonite - Hyper Beam - TM15
  (149, 14900, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 24),
  -- Dragonite - Protect - TM17
  (149, 14900, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 25),
  -- Dragonite - Rain Dance - TM18
  (149, 14900, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 26),
  -- Dragonite - Safeguard - TM20
  (149, 14900, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 27),
  -- Dragonite - Frustration - TM21
  (149, 14900, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 28),
  -- Dragonite - Iron Tail - TM23
  (149, 14900, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 29),
  -- Dragonite - Thunderbolt - TM24
  (149, 14900, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 30),
  -- Dragonite - Thunder - TM25
  (149, 14900, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 31),
  -- Dragonite - Earthquake - TM26
  (149, 14900, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 32),
  -- Dragonite - Return - TM27
  (149, 14900, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 33),
  -- Dragonite - Brick Break - TM31
  (149, 14900, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 34),
  -- Dragonite - Double Team - TM32
  (149, 14900, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 35),
  -- Dragonite - Shock Wave - TM34
  (149, 14900, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 36),
  -- Dragonite - Flamethrower - TM35
  (149, 14900, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 37),
  -- Dragonite - Sandstorm - TM37
  (149, 14900, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 38),
  -- Dragonite - Fire Blast - TM38
  (149, 14900, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 39),
  -- Dragonite - Rock Tomb - TM39
  (149, 14900, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 40),
  -- Dragonite - Aerial Ace - TM40
  (149, 14900, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 41),
  -- Dragonite - Facade - TM42
  (149, 14900, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 42),
  -- Dragonite - Secret Power - TM43
  (149, 14900, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 43),
  -- Dragonite - Rest - TM44
  (149, 14900, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 44),
  -- Dragonite - Attract - TM45
  (149, 14900, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 45),
  -- Dragonite - Steel Wing - TM47
  (149, 14900, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 46),
  -- Dragonite - Cut - HM01
  (149, 14900, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 47),
  -- Dragonite - Fly - HM02
  (149, 14900, 19, 5, NULL, 3, NULL, NULL, 5003002, NULL, 48),
  -- Dragonite - Surf - HM03
  (149, 14900, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 49),
  -- Dragonite - Strength - HM04
  (149, 14900, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 50),
  -- Dragonite - Rock Smash - HM06
  (149, 14900, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 51),
  -- Dragonite - Waterfall - HM07
  (149, 14900, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 52),
  -- Dragonite - Dive - HM08
  (149, 14900, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 53),
  -- Mewtwo - Confusion - Level 1
  (150, 15000, 93, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mewtwo - Disable - Level 1
  (150, 15000, 50, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mewtwo - Barrier - Level 11
  (150, 15000, 112, 5, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Mewtwo - Swift - Level 22
  (150, 15000, 129, 5, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Mewtwo - Psych Up - Level 33
  (150, 15000, 244, 5, NULL, 1, 33, NULL, NULL, NULL, 5),
  -- Mewtwo - Future Sight - Level 44
  (150, 15000, 248, 5, NULL, 1, 44, NULL, NULL, NULL, 6),
  -- Mewtwo - Mist - Level 55
  (150, 15000, 54, 5, NULL, 1, 55, NULL, NULL, NULL, 7),
  -- Mewtwo - Psychic - Level 66
  (150, 15000, 94, 5, NULL, 1, 66, NULL, NULL, NULL, 8),
  -- Mewtwo - Amnesia - Level 77
  (150, 15000, 133, 5, NULL, 1, 77, NULL, NULL, NULL, 9),
  -- Mewtwo - Recover - Level 88
  (150, 15000, 105, 5, NULL, 1, 88, NULL, NULL, NULL, 10),
  -- Mewtwo - Safeguard - Level 99
  (150, 15000, 219, 5, NULL, 1, 99, NULL, NULL, NULL, 11),
  -- Mewtwo - Focus Punch - TM01
  (150, 15000, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 12),
  -- Mewtwo - Water Pulse - TM03
  (150, 15000, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 13),
  -- Mewtwo - Calm Mind - TM04
  (150, 15000, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 14),
  -- Mewtwo - Toxic - TM06
  (150, 15000, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 15),
  -- Mewtwo - Hail - TM07
  (150, 15000, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 16),
  -- Mewtwo - Bulk Up - TM08
  (150, 15000, 339, 5, NULL, 2, NULL, NULL, 5002008, NULL, 17),
  -- Mewtwo - Hidden Power - TM10
  (150, 15000, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 18),
  -- Mewtwo - Sunny Day - TM11
  (150, 15000, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 19),
  -- Mewtwo - Taunt - TM12
  (150, 15000, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 20),
  -- Mewtwo - Ice Beam - TM13
  (150, 15000, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 21),
  -- Mewtwo - Blizzard - TM14
  (150, 15000, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 22),
  -- Mewtwo - Hyper Beam - TM15
  (150, 15000, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 23),
  -- Mewtwo - Light Screen - TM16
  (150, 15000, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 24),
  -- Mewtwo - Protect - TM17
  (150, 15000, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 25),
  -- Mewtwo - Rain Dance - TM18
  (150, 15000, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 26),
  -- Mewtwo - Safeguard - TM20
  (150, 15000, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 27),
  -- Mewtwo - Frustration - TM21
  (150, 15000, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 28),
  -- Mewtwo - Solar Beam - TM22
  (150, 15000, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 29),
  -- Mewtwo - Iron Tail - TM23
  (150, 15000, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 30),
  -- Mewtwo - Thunderbolt - TM24
  (150, 15000, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 31),
  -- Mewtwo - Thunder - TM25
  (150, 15000, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 32),
  -- Mewtwo - Earthquake - TM26
  (150, 15000, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 33),
  -- Mewtwo - Return - TM27
  (150, 15000, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 34),
  -- Mewtwo - Psychic - TM29
  (150, 15000, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 35),
  -- Mewtwo - Shadow Ball - TM30
  (150, 15000, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 36),
  -- Mewtwo - Brick Break - TM31
  (150, 15000, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 37),
  -- Mewtwo - Double Team - TM32
  (150, 15000, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 38),
  -- Mewtwo - Reflect - TM33
  (150, 15000, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 39),
  -- Mewtwo - Shock Wave - TM34
  (150, 15000, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 40),
  -- Mewtwo - Flamethrower - TM35
  (150, 15000, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 41),
  -- Mewtwo - Sandstorm - TM37
  (150, 15000, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 42),
  -- Mewtwo - Fire Blast - TM38
  (150, 15000, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 43),
  -- Mewtwo - Rock Tomb - TM39
  (150, 15000, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 44),
  -- Mewtwo - Aerial Ace - TM40
  (150, 15000, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 45),
  -- Mewtwo - Torment - TM41
  (150, 15000, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 46),
  -- Mewtwo - Facade - TM42
  (150, 15000, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 47),
  -- Mewtwo - Secret Power - TM43
  (150, 15000, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 48),
  -- Mewtwo - Rest - TM44
  (150, 15000, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 49),
  -- Mewtwo - Skill Swap - TM48
  (150, 15000, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 50),
  -- Mewtwo - Snatch - TM49
  (150, 15000, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 51),
  -- Mewtwo - Strength - HM04
  (150, 15000, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 52),
  -- Mewtwo - Flash - HM05
  (150, 15000, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 53),
  -- Mewtwo - Rock Smash - HM06
  (150, 15000, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 54),
  -- Mew - Pound - Level 1
  (151, 15100, 1, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mew - Transform - Level 10
  (151, 15100, 144, 5, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Mew - Mega Punch - Level 20
  (151, 15100, 5, 5, NULL, 1, 20, NULL, NULL, NULL, 3),
  -- Mew - Metronome - Level 30
  (151, 15100, 118, 5, NULL, 1, 30, NULL, NULL, NULL, 4),
  -- Mew - Psychic - Level 40
  (151, 15100, 94, 5, NULL, 1, 40, NULL, NULL, NULL, 5),
  -- Mew - Ancient Power - Level 50
  (151, 15100, 246, 5, NULL, 1, 50, NULL, NULL, NULL, 6),
  -- Mew - Focus Punch - TM01
  (151, 15100, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 7),
  -- Mew - Dragon Claw - TM02
  (151, 15100, 337, 5, NULL, 2, NULL, NULL, 5002002, NULL, 8),
  -- Mew - Water Pulse - TM03
  (151, 15100, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 9),
  -- Mew - Calm Mind - TM04
  (151, 15100, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 10),
  -- Mew - Roar - TM05
  (151, 15100, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 11),
  -- Mew - Toxic - TM06
  (151, 15100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Mew - Hail - TM07
  (151, 15100, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 13),
  -- Mew - Bulk Up - TM08
  (151, 15100, 339, 5, NULL, 2, NULL, NULL, 5002008, NULL, 14),
  -- Mew - Bullet Seed - TM09
  (151, 15100, 331, 5, NULL, 2, NULL, NULL, 5002009, NULL, 15),
  -- Mew - Hidden Power - TM10
  (151, 15100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Mew - Sunny Day - TM11
  (151, 15100, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 17),
  -- Mew - Taunt - TM12
  (151, 15100, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 18),
  -- Mew - Ice Beam - TM13
  (151, 15100, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 19),
  -- Mew - Blizzard - TM14
  (151, 15100, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 20),
  -- Mew - Hyper Beam - TM15
  (151, 15100, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 21),
  -- Mew - Light Screen - TM16
  (151, 15100, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 22),
  -- Mew - Protect - TM17
  (151, 15100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 23),
  -- Mew - Rain Dance - TM18
  (151, 15100, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 24),
  -- Mew - Giga Drain - TM19
  (151, 15100, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 25),
  -- Mew - Safeguard - TM20
  (151, 15100, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 26),
  -- Mew - Frustration - TM21
  (151, 15100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 27),
  -- Mew - Solar Beam - TM22
  (151, 15100, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 28),
  -- Mew - Iron Tail - TM23
  (151, 15100, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 29),
  -- Mew - Thunderbolt - TM24
  (151, 15100, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 30),
  -- Mew - Thunder - TM25
  (151, 15100, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 31),
  -- Mew - Earthquake - TM26
  (151, 15100, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 32),
  -- Mew - Return - TM27
  (151, 15100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 33),
  -- Mew - Dig - TM28
  (151, 15100, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 34),
  -- Mew - Psychic - TM29
  (151, 15100, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 35),
  -- Mew - Shadow Ball - TM30
  (151, 15100, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 36),
  -- Mew - Brick Break - TM31
  (151, 15100, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 37),
  -- Mew - Double Team - TM32
  (151, 15100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 38),
  -- Mew - Reflect - TM33
  (151, 15100, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 39),
  -- Mew - Shock Wave - TM34
  (151, 15100, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 40),
  -- Mew - Flamethrower - TM35
  (151, 15100, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 41),
  -- Mew - Sludge Bomb - TM36
  (151, 15100, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 42),
  -- Mew - Sandstorm - TM37
  (151, 15100, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 43),
  -- Mew - Fire Blast - TM38
  (151, 15100, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 44),
  -- Mew - Rock Tomb - TM39
  (151, 15100, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 45),
  -- Mew - Aerial Ace - TM40
  (151, 15100, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 46),
  -- Mew - Torment - TM41
  (151, 15100, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 47),
  -- Mew - Facade - TM42
  (151, 15100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 48),
  -- Mew - Secret Power - TM43
  (151, 15100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 49),
  -- Mew - Rest - TM44
  (151, 15100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 50),
  -- Mew - Attract - TM45
  (151, 15100, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 51),
  -- Mew - Thief - TM46
  (151, 15100, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 52),
  -- Mew - Steel Wing - TM47
  (151, 15100, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 53),
  -- Mew - Skill Swap - TM48
  (151, 15100, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 54),
  -- Mew - Snatch - TM49
  (151, 15100, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 55),
  -- Mew - Overheat - TM50
  (151, 15100, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 56),
  -- Mew - Cut - HM01
  (151, 15100, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 57),
  -- Mew - Fly - HM02
  (151, 15100, 19, 5, NULL, 3, NULL, NULL, 5003002, NULL, 58),
  -- Mew - Surf - HM03
  (151, 15100, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 59),
  -- Mew - Strength - HM04
  (151, 15100, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 60),
  -- Mew - Flash - HM05
  (151, 15100, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 61),
  -- Mew - Rock Smash - HM06
  (151, 15100, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 62),
  -- Mew - Waterfall - HM07
  (151, 15100, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 63),
  -- Mew - Dive - HM08
  (151, 15100, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 64);
