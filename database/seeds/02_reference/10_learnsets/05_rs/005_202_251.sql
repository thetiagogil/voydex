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
-- Pokémon: #202-#251
-- Rows: 1816
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
  -- Wobbuffet - Counter - Level 1
  (202, 20200, 68, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wobbuffet - Mirror Coat - Level 1
  (202, 20200, 243, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wobbuffet - Safeguard - Level 1
  (202, 20200, 219, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wobbuffet - Destiny Bond - Level 1
  (202, 20200, 194, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Girafarig - Tackle - Level 1
  (203, 20300, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Girafarig - Growl - Level 1
  (203, 20300, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Girafarig - Astonish - Level 7
  (203, 20300, 310, 5, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Girafarig - Confusion - Level 13
  (203, 20300, 93, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Girafarig - Stomp - Level 19
  (203, 20300, 23, 5, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Girafarig - Odor Sleuth - Level 25
  (203, 20300, 316, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Girafarig - Agility - Level 31
  (203, 20300, 97, 5, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Girafarig - Baton Pass - Level 37
  (203, 20300, 226, 5, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Girafarig - Psybeam - Level 43
  (203, 20300, 60, 5, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Girafarig - Crunch - Level 49
  (203, 20300, 242, 5, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Girafarig - Calm Mind - TM04
  (203, 20300, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 11),
  -- Girafarig - Toxic - TM06
  (203, 20300, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Girafarig - Hidden Power - TM10
  (203, 20300, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Girafarig - Sunny Day - TM11
  (203, 20300, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Girafarig - Light Screen - TM16
  (203, 20300, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 15),
  -- Girafarig - Protect - TM17
  (203, 20300, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Girafarig - Rain Dance - TM18
  (203, 20300, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Girafarig - Frustration - TM21
  (203, 20300, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Girafarig - Iron Tail - TM23
  (203, 20300, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 19),
  -- Girafarig - Thunderbolt - TM24
  (203, 20300, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 20),
  -- Girafarig - Thunder - TM25
  (203, 20300, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 21),
  -- Girafarig - Earthquake - TM26
  (203, 20300, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 22),
  -- Girafarig - Return - TM27
  (203, 20300, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Girafarig - Psychic - TM29
  (203, 20300, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 24),
  -- Girafarig - Shadow Ball - TM30
  (203, 20300, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 25),
  -- Girafarig - Double Team - TM32
  (203, 20300, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 26),
  -- Girafarig - Reflect - TM33
  (203, 20300, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 27),
  -- Girafarig - Shock Wave - TM34
  (203, 20300, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 28),
  -- Girafarig - Facade - TM42
  (203, 20300, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 29),
  -- Girafarig - Secret Power - TM43
  (203, 20300, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 30),
  -- Girafarig - Rest - TM44
  (203, 20300, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 31),
  -- Girafarig - Attract - TM45
  (203, 20300, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 32),
  -- Girafarig - Thief - TM46
  (203, 20300, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 33),
  -- Girafarig - Skill Swap - TM48
  (203, 20300, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 34),
  -- Girafarig - Strength - HM04
  (203, 20300, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 35),
  -- Girafarig - Flash - HM05
  (203, 20300, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 36),
  -- Girafarig - Rock Smash - HM06
  (203, 20300, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 37),
  -- Girafarig - Amnesia - Egg Move
  (203, 20300, 133, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Girafarig - Beat Up - Egg Move
  (203, 20300, 251, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Girafarig - Foresight - Egg Move
  (203, 20300, 193, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Girafarig - Future Sight - Egg Move
  (203, 20300, 248, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Girafarig - Magic Coat - Egg Move
  (203, 20300, 277, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Girafarig - Psych Up - Egg Move
  (203, 20300, 244, 5, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Girafarig - Take Down - Egg Move
  (203, 20300, 36, 5, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Girafarig - Wish - Egg Move
  (203, 20300, 273, 5, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Pineco - Tackle - Level 1
  (204, 20400, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pineco - Protect - Level 1
  (204, 20400, 182, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pineco - Self-Destruct - Level 8
  (204, 20400, 120, 5, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Pineco - Take Down - Level 15
  (204, 20400, 36, 5, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Pineco - Rapid Spin - Level 22
  (204, 20400, 229, 5, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Pineco - Bide - Level 29
  (204, 20400, 117, 5, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Pineco - Explosion - Level 36
  (204, 20400, 153, 5, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Pineco - Spikes - Level 43
  (204, 20400, 191, 5, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Pineco - Double-Edge - Level 50
  (204, 20400, 38, 5, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Pineco - Toxic - TM06
  (204, 20400, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 10),
  -- Pineco - Hidden Power - TM10
  (204, 20400, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 11),
  -- Pineco - Sunny Day - TM11
  (204, 20400, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 12),
  -- Pineco - Light Screen - TM16
  (204, 20400, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 13),
  -- Pineco - Protect - TM17
  (204, 20400, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 14),
  -- Pineco - Giga Drain - TM19
  (204, 20400, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 15),
  -- Pineco - Frustration - TM21
  (204, 20400, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 16),
  -- Pineco - Solar Beam - TM22
  (204, 20400, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 17),
  -- Pineco - Earthquake - TM26
  (204, 20400, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 18),
  -- Pineco - Return - TM27
  (204, 20400, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 19),
  -- Pineco - Dig - TM28
  (204, 20400, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 20),
  -- Pineco - Double Team - TM32
  (204, 20400, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 21),
  -- Pineco - Reflect - TM33
  (204, 20400, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 22),
  -- Pineco - Sandstorm - TM37
  (204, 20400, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 23),
  -- Pineco - Facade - TM42
  (204, 20400, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 24),
  -- Pineco - Secret Power - TM43
  (204, 20400, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 25),
  -- Pineco - Rest - TM44
  (204, 20400, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 26),
  -- Pineco - Attract - TM45
  (204, 20400, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 27),
  -- Pineco - Strength - HM04
  (204, 20400, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 28),
  -- Pineco - Rock Smash - HM06
  (204, 20400, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 29),
  -- Pineco - Counter - Egg Move
  (204, 20400, 68, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Pineco - Flail - Egg Move
  (204, 20400, 175, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Pineco - Pin Missile - Egg Move
  (204, 20400, 42, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Pineco - Reflect - Egg Move
  (204, 20400, 115, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Pineco - Sand Tomb - Egg Move
  (204, 20400, 328, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Pineco - Swift - Egg Move
  (204, 20400, 129, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Forretress - Tackle - Level 1
  (205, 20500, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Forretress - Protect - Level 1
  (205, 20500, 182, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Forretress - Self-Destruct - Level 1
  (205, 20500, 120, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Forretress - Self-Destruct - Level 8
  (205, 20500, 120, 5, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Forretress - Take Down - Level 15
  (205, 20500, 36, 5, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Forretress - Rapid Spin - Level 22
  (205, 20500, 229, 5, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Forretress - Bide - Level 29
  (205, 20500, 117, 5, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Forretress - Explosion - Level 39
  (205, 20500, 153, 5, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Forretress - Spikes - Level 49
  (205, 20500, 191, 5, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Forretress - Double-Edge - Level 59
  (205, 20500, 38, 5, NULL, 1, 59, NULL, NULL, NULL, 10),
  -- Forretress - Toxic - TM06
  (205, 20500, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Forretress - Hidden Power - TM10
  (205, 20500, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Forretress - Sunny Day - TM11
  (205, 20500, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 13),
  -- Forretress - Hyper Beam - TM15
  (205, 20500, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 14),
  -- Forretress - Light Screen - TM16
  (205, 20500, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 15),
  -- Forretress - Protect - TM17
  (205, 20500, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Forretress - Giga Drain - TM19
  (205, 20500, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 17),
  -- Forretress - Frustration - TM21
  (205, 20500, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Forretress - Solar Beam - TM22
  (205, 20500, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 19),
  -- Forretress - Earthquake - TM26
  (205, 20500, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 20),
  -- Forretress - Return - TM27
  (205, 20500, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Forretress - Dig - TM28
  (205, 20500, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 22),
  -- Forretress - Double Team - TM32
  (205, 20500, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 23),
  -- Forretress - Reflect - TM33
  (205, 20500, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 24),
  -- Forretress - Sandstorm - TM37
  (205, 20500, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 25),
  -- Forretress - Facade - TM42
  (205, 20500, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 26),
  -- Forretress - Secret Power - TM43
  (205, 20500, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 27),
  -- Forretress - Rest - TM44
  (205, 20500, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 28),
  -- Forretress - Attract - TM45
  (205, 20500, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 29),
  -- Forretress - Strength - HM04
  (205, 20500, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 30),
  -- Forretress - Rock Smash - HM06
  (205, 20500, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 31),
  -- Dunsparce - Rage - Level 1
  (206, 20600, 99, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dunsparce - Defense Curl - Level 4
  (206, 20600, 111, 5, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Dunsparce - Yawn - Level 11
  (206, 20600, 281, 5, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Dunsparce - Glare - Level 14
  (206, 20600, 137, 5, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Dunsparce - Spite - Level 21
  (206, 20600, 180, 5, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Dunsparce - Pursuit - Level 24
  (206, 20600, 228, 5, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Dunsparce - Screech - Level 31
  (206, 20600, 103, 5, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Dunsparce - Take Down - Level 34
  (206, 20600, 36, 5, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Dunsparce - Endeavor - Level 41
  (206, 20600, 283, 5, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Dunsparce - Water Pulse - TM03
  (206, 20600, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 10),
  -- Dunsparce - Calm Mind - TM04
  (206, 20600, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 11),
  -- Dunsparce - Toxic - TM06
  (206, 20600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Dunsparce - Hidden Power - TM10
  (206, 20600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Dunsparce - Sunny Day - TM11
  (206, 20600, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Dunsparce - Ice Beam - TM13
  (206, 20600, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 15),
  -- Dunsparce - Blizzard - TM14
  (206, 20600, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 16),
  -- Dunsparce - Protect - TM17
  (206, 20600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Dunsparce - Rain Dance - TM18
  (206, 20600, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 18),
  -- Dunsparce - Frustration - TM21
  (206, 20600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Dunsparce - Solar Beam - TM22
  (206, 20600, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 20),
  -- Dunsparce - Iron Tail - TM23
  (206, 20600, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 21),
  -- Dunsparce - Thunderbolt - TM24
  (206, 20600, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 22),
  -- Dunsparce - Thunder - TM25
  (206, 20600, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 23),
  -- Dunsparce - Earthquake - TM26
  (206, 20600, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 24),
  -- Dunsparce - Return - TM27
  (206, 20600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 25),
  -- Dunsparce - Dig - TM28
  (206, 20600, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 26),
  -- Dunsparce - Shadow Ball - TM30
  (206, 20600, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 27),
  -- Dunsparce - Double Team - TM32
  (206, 20600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 28),
  -- Dunsparce - Shock Wave - TM34
  (206, 20600, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 29),
  -- Dunsparce - Flamethrower - TM35
  (206, 20600, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 30),
  -- Dunsparce - Fire Blast - TM38
  (206, 20600, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 31),
  -- Dunsparce - Rock Tomb - TM39
  (206, 20600, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 32),
  -- Dunsparce - Facade - TM42
  (206, 20600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 33),
  -- Dunsparce - Secret Power - TM43
  (206, 20600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 34),
  -- Dunsparce - Rest - TM44
  (206, 20600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 35),
  -- Dunsparce - Attract - TM45
  (206, 20600, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 36),
  -- Dunsparce - Thief - TM46
  (206, 20600, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 37),
  -- Dunsparce - Strength - HM04
  (206, 20600, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 38),
  -- Dunsparce - Rock Smash - HM06
  (206, 20600, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 39),
  -- Dunsparce - Ancient Power - Egg Move
  (206, 20600, 246, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Dunsparce - Astonish - Egg Move
  (206, 20600, 310, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Dunsparce - Bide - Egg Move
  (206, 20600, 117, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Dunsparce - Bite - Egg Move
  (206, 20600, 44, 5, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Dunsparce - Curse - Egg Move
  (206, 20600, 174, 5, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Dunsparce - Headbutt - Egg Move
  (206, 20600, 29, 5, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Dunsparce - Rock Slide - Egg Move
  (206, 20600, 157, 5, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gligar - Poison Sting - Level 1
  (207, 20700, 40, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gligar - Sand Attack - Level 6
  (207, 20700, 28, 5, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Gligar - Harden - Level 13
  (207, 20700, 106, 5, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Gligar - Quick Attack - Level 20
  (207, 20700, 98, 5, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Gligar - Feint Attack - Level 28
  (207, 20700, 185, 5, NULL, 1, 28, NULL, NULL, NULL, 5),
  -- Gligar - Slash - Level 36
  (207, 20700, 163, 5, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Gligar - Screech - Level 44
  (207, 20700, 103, 5, NULL, 1, 44, NULL, NULL, NULL, 7),
  -- Gligar - Guillotine - Level 52
  (207, 20700, 12, 5, NULL, 1, 52, NULL, NULL, NULL, 8),
  -- Gligar - Toxic - TM06
  (207, 20700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 9),
  -- Gligar - Hidden Power - TM10
  (207, 20700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 10),
  -- Gligar - Sunny Day - TM11
  (207, 20700, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 11),
  -- Gligar - Protect - TM17
  (207, 20700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 12),
  -- Gligar - Rain Dance - TM18
  (207, 20700, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 13),
  -- Gligar - Frustration - TM21
  (207, 20700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 14),
  -- Gligar - Iron Tail - TM23
  (207, 20700, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 15),
  -- Gligar - Earthquake - TM26
  (207, 20700, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 16),
  -- Gligar - Return - TM27
  (207, 20700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 17),
  -- Gligar - Dig - TM28
  (207, 20700, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 18),
  -- Gligar - Double Team - TM32
  (207, 20700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 19),
  -- Gligar - Sludge Bomb - TM36
  (207, 20700, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 20),
  -- Gligar - Sandstorm - TM37
  (207, 20700, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 21),
  -- Gligar - Rock Tomb - TM39
  (207, 20700, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 22),
  -- Gligar - Aerial Ace - TM40
  (207, 20700, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 23),
  -- Gligar - Facade - TM42
  (207, 20700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 24),
  -- Gligar - Secret Power - TM43
  (207, 20700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 25),
  -- Gligar - Rest - TM44
  (207, 20700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 26),
  -- Gligar - Attract - TM45
  (207, 20700, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 27),
  -- Gligar - Thief - TM46
  (207, 20700, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 28),
  -- Gligar - Steel Wing - TM47
  (207, 20700, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 29),
  -- Gligar - Cut - HM01
  (207, 20700, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 30),
  -- Gligar - Strength - HM04
  (207, 20700, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 31),
  -- Gligar - Rock Smash - HM06
  (207, 20700, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 32),
  -- Gligar - Counter - Egg Move
  (207, 20700, 68, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Gligar - Metal Claw - Egg Move
  (207, 20700, 232, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Gligar - Razor Wind - Egg Move
  (207, 20700, 13, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Gligar - Sand Tomb - Egg Move
  (207, 20700, 328, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Gligar - Wing Attack - Egg Move
  (207, 20700, 17, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Steelix - Tackle - Level 1
  (208, 20800, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Steelix - Screech - Level 1
  (208, 20800, 103, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Steelix - Bind - Level 9
  (208, 20800, 20, 5, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Steelix - Rock Throw - Level 13
  (208, 20800, 88, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Steelix - Harden - Level 21
  (208, 20800, 106, 5, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Steelix - Rage - Level 25
  (208, 20800, 99, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Steelix - Sandstorm - Level 33
  (208, 20800, 201, 5, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Steelix - Slam - Level 37
  (208, 20800, 21, 5, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Steelix - Iron Tail - Level 45
  (208, 20800, 231, 5, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Steelix - Crunch - Level 49
  (208, 20800, 242, 5, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Steelix - Double-Edge - Level 57
  (208, 20800, 38, 5, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Steelix - Roar - TM05
  (208, 20800, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 12),
  -- Steelix - Toxic - TM06
  (208, 20800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Steelix - Hidden Power - TM10
  (208, 20800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Steelix - Sunny Day - TM11
  (208, 20800, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Steelix - Taunt - TM12
  (208, 20800, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 16),
  -- Steelix - Hyper Beam - TM15
  (208, 20800, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 17),
  -- Steelix - Protect - TM17
  (208, 20800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Steelix - Frustration - TM21
  (208, 20800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Steelix - Iron Tail - TM23
  (208, 20800, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 20),
  -- Steelix - Earthquake - TM26
  (208, 20800, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 21),
  -- Steelix - Return - TM27
  (208, 20800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 22),
  -- Steelix - Dig - TM28
  (208, 20800, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 23),
  -- Steelix - Double Team - TM32
  (208, 20800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Steelix - Sandstorm - TM37
  (208, 20800, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 25),
  -- Steelix - Rock Tomb - TM39
  (208, 20800, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 26),
  -- Steelix - Torment - TM41
  (208, 20800, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 27),
  -- Steelix - Facade - TM42
  (208, 20800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 28),
  -- Steelix - Secret Power - TM43
  (208, 20800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 29),
  -- Steelix - Rest - TM44
  (208, 20800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 30),
  -- Steelix - Attract - TM45
  (208, 20800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 31),
  -- Steelix - Cut - HM01
  (208, 20800, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 32),
  -- Steelix - Strength - HM04
  (208, 20800, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 33),
  -- Steelix - Rock Smash - HM06
  (208, 20800, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 34),
  -- Snubbull - Tackle - Level 1
  (209, 20900, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snubbull - Scary Face - Level 1
  (209, 20900, 184, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snubbull - Tail Whip - Level 4
  (209, 20900, 39, 5, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Snubbull - Charm - Level 8
  (209, 20900, 204, 5, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Snubbull - Bite - Level 13
  (209, 20900, 44, 5, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Snubbull - Lick - Level 19
  (209, 20900, 122, 5, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Snubbull - Roar - Level 26
  (209, 20900, 46, 5, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Snubbull - Rage - Level 34
  (209, 20900, 99, 5, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Snubbull - Take Down - Level 43
  (209, 20900, 36, 5, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Snubbull - Crunch - Level 53
  (209, 20900, 242, 5, NULL, 1, 53, NULL, NULL, NULL, 10),
  -- Snubbull - Focus Punch - TM01
  (209, 20900, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 11),
  -- Snubbull - Water Pulse - TM03
  (209, 20900, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 12),
  -- Snubbull - Roar - TM05
  (209, 20900, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 13),
  -- Snubbull - Toxic - TM06
  (209, 20900, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Snubbull - Bulk Up - TM08
  (209, 20900, 339, 5, NULL, 2, NULL, NULL, 5002008, NULL, 15),
  -- Snubbull - Hidden Power - TM10
  (209, 20900, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Snubbull - Sunny Day - TM11
  (209, 20900, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 17),
  -- Snubbull - Taunt - TM12
  (209, 20900, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 18),
  -- Snubbull - Protect - TM17
  (209, 20900, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 19),
  -- Snubbull - Rain Dance - TM18
  (209, 20900, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 20),
  -- Snubbull - Frustration - TM21
  (209, 20900, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 21),
  -- Snubbull - Solar Beam - TM22
  (209, 20900, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 22),
  -- Snubbull - Thunderbolt - TM24
  (209, 20900, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 23),
  -- Snubbull - Thunder - TM25
  (209, 20900, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 24),
  -- Snubbull - Earthquake - TM26
  (209, 20900, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 25),
  -- Snubbull - Return - TM27
  (209, 20900, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 26),
  -- Snubbull - Dig - TM28
  (209, 20900, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 27),
  -- Snubbull - Shadow Ball - TM30
  (209, 20900, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 28),
  -- Snubbull - Brick Break - TM31
  (209, 20900, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 29),
  -- Snubbull - Double Team - TM32
  (209, 20900, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 30),
  -- Snubbull - Shock Wave - TM34
  (209, 20900, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 31),
  -- Snubbull - Flamethrower - TM35
  (209, 20900, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 32),
  -- Snubbull - Sludge Bomb - TM36
  (209, 20900, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 33),
  -- Snubbull - Fire Blast - TM38
  (209, 20900, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 34),
  -- Snubbull - Torment - TM41
  (209, 20900, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 35),
  -- Snubbull - Facade - TM42
  (209, 20900, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 36),
  -- Snubbull - Secret Power - TM43
  (209, 20900, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 37),
  -- Snubbull - Rest - TM44
  (209, 20900, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 38),
  -- Snubbull - Attract - TM45
  (209, 20900, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 39),
  -- Snubbull - Thief - TM46
  (209, 20900, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 40),
  -- Snubbull - Overheat - TM50
  (209, 20900, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 41),
  -- Snubbull - Strength - HM04
  (209, 20900, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 42),
  -- Snubbull - Rock Smash - HM06
  (209, 20900, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 43),
  -- Snubbull - Crunch - Egg Move
  (209, 20900, 242, 5, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Snubbull - Feint Attack - Egg Move
  (209, 20900, 185, 5, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Snubbull - Heal Bell - Egg Move
  (209, 20900, 215, 5, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Snubbull - Metronome - Egg Move
  (209, 20900, 118, 5, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Snubbull - Present - Egg Move
  (209, 20900, 217, 5, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Snubbull - Reflect - Egg Move
  (209, 20900, 115, 5, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Snubbull - Smelling Salts - Egg Move
  (209, 20900, 265, 5, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Snubbull - Snore - Egg Move
  (209, 20900, 173, 5, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Granbull - Tackle - Level 1
  (210, 21000, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Granbull - Scary Face - Level 1
  (210, 21000, 184, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Granbull - Tail Whip - Level 4
  (210, 21000, 39, 5, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Granbull - Charm - Level 8
  (210, 21000, 204, 5, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Granbull - Bite - Level 13
  (210, 21000, 44, 5, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Granbull - Lick - Level 19
  (210, 21000, 122, 5, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Granbull - Roar - Level 28
  (210, 21000, 46, 5, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Granbull - Rage - Level 38
  (210, 21000, 99, 5, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Granbull - Take Down - Level 49
  (210, 21000, 36, 5, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Granbull - Crunch - Level 61
  (210, 21000, 242, 5, NULL, 1, 61, NULL, NULL, NULL, 10),
  -- Granbull - Focus Punch - TM01
  (210, 21000, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 11),
  -- Granbull - Water Pulse - TM03
  (210, 21000, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 12),
  -- Granbull - Roar - TM05
  (210, 21000, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 13),
  -- Granbull - Toxic - TM06
  (210, 21000, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Granbull - Bulk Up - TM08
  (210, 21000, 339, 5, NULL, 2, NULL, NULL, 5002008, NULL, 15),
  -- Granbull - Hidden Power - TM10
  (210, 21000, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Granbull - Sunny Day - TM11
  (210, 21000, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 17),
  -- Granbull - Taunt - TM12
  (210, 21000, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 18),
  -- Granbull - Hyper Beam - TM15
  (210, 21000, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 19),
  -- Granbull - Protect - TM17
  (210, 21000, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 20),
  -- Granbull - Rain Dance - TM18
  (210, 21000, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 21),
  -- Granbull - Frustration - TM21
  (210, 21000, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 22),
  -- Granbull - Solar Beam - TM22
  (210, 21000, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 23),
  -- Granbull - Iron Tail - TM23
  (210, 21000, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 24),
  -- Granbull - Thunderbolt - TM24
  (210, 21000, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 25),
  -- Granbull - Thunder - TM25
  (210, 21000, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 26),
  -- Granbull - Earthquake - TM26
  (210, 21000, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 27),
  -- Granbull - Return - TM27
  (210, 21000, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 28),
  -- Granbull - Dig - TM28
  (210, 21000, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 29),
  -- Granbull - Shadow Ball - TM30
  (210, 21000, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 30),
  -- Granbull - Brick Break - TM31
  (210, 21000, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 31),
  -- Granbull - Double Team - TM32
  (210, 21000, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 32),
  -- Granbull - Shock Wave - TM34
  (210, 21000, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 33),
  -- Granbull - Flamethrower - TM35
  (210, 21000, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 34),
  -- Granbull - Sludge Bomb - TM36
  (210, 21000, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 35),
  -- Granbull - Fire Blast - TM38
  (210, 21000, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 36),
  -- Granbull - Rock Tomb - TM39
  (210, 21000, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 37),
  -- Granbull - Torment - TM41
  (210, 21000, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 38),
  -- Granbull - Facade - TM42
  (210, 21000, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 39),
  -- Granbull - Secret Power - TM43
  (210, 21000, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 40),
  -- Granbull - Rest - TM44
  (210, 21000, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 41),
  -- Granbull - Attract - TM45
  (210, 21000, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 42),
  -- Granbull - Thief - TM46
  (210, 21000, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 43),
  -- Granbull - Overheat - TM50
  (210, 21000, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 44),
  -- Granbull - Strength - HM04
  (210, 21000, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 45),
  -- Granbull - Rock Smash - HM06
  (210, 21000, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 46),
  -- Qwilfish - Spikes - Level 1
  (211, 21100, 191, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Qwilfish - Tackle - Level 1
  (211, 21100, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Qwilfish - Poison Sting - Level 1
  (211, 21100, 40, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Qwilfish - Harden - Level 10
  (211, 21100, 106, 5, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Qwilfish - Minimize - Level 10
  (211, 21100, 107, 5, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Qwilfish - Water Gun - Level 19
  (211, 21100, 55, 5, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Qwilfish - Pin Missile - Level 28
  (211, 21100, 42, 5, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Qwilfish - Take Down - Level 37
  (211, 21100, 36, 5, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Qwilfish - Hydro Pump - Level 46
  (211, 21100, 56, 5, NULL, 1, 46, NULL, NULL, NULL, 9),
  -- Qwilfish - Water Pulse - TM03
  (211, 21100, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 10),
  -- Qwilfish - Toxic - TM06
  (211, 21100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Qwilfish - Hail - TM07
  (211, 21100, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 12),
  -- Qwilfish - Hidden Power - TM10
  (211, 21100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Qwilfish - Ice Beam - TM13
  (211, 21100, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 14),
  -- Qwilfish - Blizzard - TM14
  (211, 21100, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 15),
  -- Qwilfish - Protect - TM17
  (211, 21100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Qwilfish - Rain Dance - TM18
  (211, 21100, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Qwilfish - Frustration - TM21
  (211, 21100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Qwilfish - Return - TM27
  (211, 21100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 19),
  -- Qwilfish - Shadow Ball - TM30
  (211, 21100, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 20),
  -- Qwilfish - Double Team - TM32
  (211, 21100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 21),
  -- Qwilfish - Shock Wave - TM34
  (211, 21100, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 22),
  -- Qwilfish - Sludge Bomb - TM36
  (211, 21100, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 23),
  -- Qwilfish - Facade - TM42
  (211, 21100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 24),
  -- Qwilfish - Secret Power - TM43
  (211, 21100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 25),
  -- Qwilfish - Rest - TM44
  (211, 21100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 26),
  -- Qwilfish - Attract - TM45
  (211, 21100, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 27),
  -- Qwilfish - Surf - HM03
  (211, 21100, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 28),
  -- Qwilfish - Waterfall - HM07
  (211, 21100, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 29),
  -- Qwilfish - Dive - HM08
  (211, 21100, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 30),
  -- Qwilfish - Astonish - Egg Move
  (211, 21100, 310, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Qwilfish - Bubble Beam - Egg Move
  (211, 21100, 61, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Qwilfish - Flail - Egg Move
  (211, 21100, 175, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Qwilfish - Haze - Egg Move
  (211, 21100, 114, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Qwilfish - Supersonic - Egg Move
  (211, 21100, 48, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Scizor - Quick Attack - Level 1
  (212, 21200, 98, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scizor - Leer - Level 1
  (212, 21200, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scizor - Focus Energy - Level 6
  (212, 21200, 116, 5, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Scizor - Pursuit - Level 11
  (212, 21200, 228, 5, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Scizor - False Swipe - Level 16
  (212, 21200, 206, 5, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Scizor - Agility - Level 21
  (212, 21200, 97, 5, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Scizor - Metal Claw - Level 26
  (212, 21200, 232, 5, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Scizor - Slash - Level 31
  (212, 21200, 163, 5, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Scizor - Swords Dance - Level 36
  (212, 21200, 14, 5, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Scizor - Double Team - Level 41
  (212, 21200, 104, 5, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Scizor - Fury Cutter - Level 46
  (212, 21200, 210, 5, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Scizor - Toxic - TM06
  (212, 21200, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Scizor - Hidden Power - TM10
  (212, 21200, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Scizor - Sunny Day - TM11
  (212, 21200, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Scizor - Hyper Beam - TM15
  (212, 21200, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 15),
  -- Scizor - Protect - TM17
  (212, 21200, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Scizor - Rain Dance - TM18
  (212, 21200, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Scizor - Frustration - TM21
  (212, 21200, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Scizor - Return - TM27
  (212, 21200, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 19),
  -- Scizor - Double Team - TM32
  (212, 21200, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 20),
  -- Scizor - Sandstorm - TM37
  (212, 21200, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 21),
  -- Scizor - Aerial Ace - TM40
  (212, 21200, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 22),
  -- Scizor - Facade - TM42
  (212, 21200, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 23),
  -- Scizor - Secret Power - TM43
  (212, 21200, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 24),
  -- Scizor - Rest - TM44
  (212, 21200, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 25),
  -- Scizor - Attract - TM45
  (212, 21200, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 26),
  -- Scizor - Thief - TM46
  (212, 21200, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 27),
  -- Scizor - Steel Wing - TM47
  (212, 21200, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 28),
  -- Scizor - Cut - HM01
  (212, 21200, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 29),
  -- Scizor - Strength - HM04
  (212, 21200, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 30),
  -- Scizor - Rock Smash - HM06
  (212, 21200, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 31),
  -- Shuckle - Constrict - Level 1
  (213, 21300, 132, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shuckle - Withdraw - Level 1
  (213, 21300, 110, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shuckle - Wrap - Level 9
  (213, 21300, 35, 5, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Shuckle - Encore - Level 14
  (213, 21300, 227, 5, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Shuckle - Safeguard - Level 23
  (213, 21300, 219, 5, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Shuckle - Bide - Level 28
  (213, 21300, 117, 5, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Shuckle - Rest - Level 37
  (213, 21300, 156, 5, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Shuckle - Toxic - TM06
  (213, 21300, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 8),
  -- Shuckle - Hidden Power - TM10
  (213, 21300, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 9),
  -- Shuckle - Sunny Day - TM11
  (213, 21300, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 10),
  -- Shuckle - Protect - TM17
  (213, 21300, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 11),
  -- Shuckle - Safeguard - TM20
  (213, 21300, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 12),
  -- Shuckle - Frustration - TM21
  (213, 21300, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 13),
  -- Shuckle - Earthquake - TM26
  (213, 21300, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 14),
  -- Shuckle - Return - TM27
  (213, 21300, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 15),
  -- Shuckle - Dig - TM28
  (213, 21300, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 16),
  -- Shuckle - Double Team - TM32
  (213, 21300, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 17),
  -- Shuckle - Sludge Bomb - TM36
  (213, 21300, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 18),
  -- Shuckle - Sandstorm - TM37
  (213, 21300, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 19),
  -- Shuckle - Rock Tomb - TM39
  (213, 21300, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 20),
  -- Shuckle - Facade - TM42
  (213, 21300, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 21),
  -- Shuckle - Secret Power - TM43
  (213, 21300, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 22),
  -- Shuckle - Rest - TM44
  (213, 21300, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 23),
  -- Shuckle - Attract - TM45
  (213, 21300, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 24),
  -- Shuckle - Strength - HM04
  (213, 21300, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 25),
  -- Shuckle - Flash - HM05
  (213, 21300, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 26),
  -- Shuckle - Rock Smash - HM06
  (213, 21300, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 27),
  -- Shuckle - Sweet Scent - Egg Move
  (213, 21300, 230, 5, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Heracross - Tackle - Level 1
  (214, 21400, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heracross - Leer - Level 1
  (214, 21400, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Heracross - Horn Attack - Level 6
  (214, 21400, 30, 5, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Heracross - Endure - Level 11
  (214, 21400, 203, 5, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Heracross - Fury Attack - Level 17
  (214, 21400, 31, 5, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Heracross - Brick Break - Level 23
  (214, 21400, 280, 5, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Heracross - Counter - Level 30
  (214, 21400, 68, 5, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Heracross - Take Down - Level 37
  (214, 21400, 36, 5, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Heracross - Reversal - Level 45
  (214, 21400, 179, 5, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Heracross - Megahorn - Level 53
  (214, 21400, 224, 5, NULL, 1, 53, NULL, NULL, NULL, 10),
  -- Heracross - Focus Punch - TM01
  (214, 21400, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 11),
  -- Heracross - Toxic - TM06
  (214, 21400, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Heracross - Bulk Up - TM08
  (214, 21400, 339, 5, NULL, 2, NULL, NULL, 5002008, NULL, 13),
  -- Heracross - Hidden Power - TM10
  (214, 21400, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Heracross - Sunny Day - TM11
  (214, 21400, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Heracross - Hyper Beam - TM15
  (214, 21400, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 16),
  -- Heracross - Protect - TM17
  (214, 21400, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Heracross - Rain Dance - TM18
  (214, 21400, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 18),
  -- Heracross - Frustration - TM21
  (214, 21400, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Heracross - Earthquake - TM26
  (214, 21400, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 20),
  -- Heracross - Return - TM27
  (214, 21400, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Heracross - Dig - TM28
  (214, 21400, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 22),
  -- Heracross - Brick Break - TM31
  (214, 21400, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 23),
  -- Heracross - Double Team - TM32
  (214, 21400, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Heracross - Rock Tomb - TM39
  (214, 21400, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 25),
  -- Heracross - Facade - TM42
  (214, 21400, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 26),
  -- Heracross - Secret Power - TM43
  (214, 21400, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 27),
  -- Heracross - Rest - TM44
  (214, 21400, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 28),
  -- Heracross - Attract - TM45
  (214, 21400, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 29),
  -- Heracross - Thief - TM46
  (214, 21400, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 30),
  -- Heracross - Cut - HM01
  (214, 21400, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 31),
  -- Heracross - Strength - HM04
  (214, 21400, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 32),
  -- Heracross - Rock Smash - HM06
  (214, 21400, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 33),
  -- Heracross - Bide - Egg Move
  (214, 21400, 117, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Heracross - False Swipe - Egg Move
  (214, 21400, 206, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Heracross - Flail - Egg Move
  (214, 21400, 175, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Heracross - Harden - Egg Move
  (214, 21400, 106, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Sneasel - Scratch - Level 1
  (215, 21500, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sneasel - Leer - Level 1
  (215, 21500, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sneasel - Taunt - Level 1
  (215, 21500, 269, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sneasel - Quick Attack - Level 8
  (215, 21500, 98, 5, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Sneasel - Screech - Level 15
  (215, 21500, 103, 5, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Sneasel - Feint Attack - Level 22
  (215, 21500, 185, 5, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Sneasel - Fury Swipes - Level 29
  (215, 21500, 154, 5, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Sneasel - Agility - Level 36
  (215, 21500, 97, 5, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Sneasel - Icy Wind - Level 43
  (215, 21500, 196, 5, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Sneasel - Slash - Level 50
  (215, 21500, 163, 5, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Sneasel - Beat Up - Level 57
  (215, 21500, 251, 5, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Sneasel - Metal Claw - Level 64
  (215, 21500, 232, 5, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Sneasel - Focus Punch - TM01
  (215, 21500, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 13),
  -- Sneasel - Calm Mind - TM04
  (215, 21500, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 14),
  -- Sneasel - Toxic - TM06
  (215, 21500, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 15),
  -- Sneasel - Hail - TM07
  (215, 21500, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 16),
  -- Sneasel - Hidden Power - TM10
  (215, 21500, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 17),
  -- Sneasel - Sunny Day - TM11
  (215, 21500, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 18),
  -- Sneasel - Taunt - TM12
  (215, 21500, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 19),
  -- Sneasel - Ice Beam - TM13
  (215, 21500, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 20),
  -- Sneasel - Blizzard - TM14
  (215, 21500, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 21),
  -- Sneasel - Protect - TM17
  (215, 21500, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 22),
  -- Sneasel - Rain Dance - TM18
  (215, 21500, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 23),
  -- Sneasel - Frustration - TM21
  (215, 21500, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 24),
  -- Sneasel - Iron Tail - TM23
  (215, 21500, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 25),
  -- Sneasel - Return - TM27
  (215, 21500, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 26),
  -- Sneasel - Dig - TM28
  (215, 21500, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 27),
  -- Sneasel - Shadow Ball - TM30
  (215, 21500, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 28),
  -- Sneasel - Brick Break - TM31
  (215, 21500, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 29),
  -- Sneasel - Double Team - TM32
  (215, 21500, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 30),
  -- Sneasel - Aerial Ace - TM40
  (215, 21500, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 31),
  -- Sneasel - Torment - TM41
  (215, 21500, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 32),
  -- Sneasel - Facade - TM42
  (215, 21500, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 33),
  -- Sneasel - Secret Power - TM43
  (215, 21500, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 34),
  -- Sneasel - Rest - TM44
  (215, 21500, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 35),
  -- Sneasel - Attract - TM45
  (215, 21500, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 36),
  -- Sneasel - Thief - TM46
  (215, 21500, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 37),
  -- Sneasel - Snatch - TM49
  (215, 21500, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 38),
  -- Sneasel - Cut - HM01
  (215, 21500, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 39),
  -- Sneasel - Surf - HM03
  (215, 21500, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 40),
  -- Sneasel - Strength - HM04
  (215, 21500, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 41),
  -- Sneasel - Rock Smash - HM06
  (215, 21500, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 42),
  -- Sneasel - Bite - Egg Move
  (215, 21500, 44, 5, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Sneasel - Counter - Egg Move
  (215, 21500, 68, 5, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Sneasel - Crush Claw - Egg Move
  (215, 21500, 306, 5, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Sneasel - Fake Out - Egg Move
  (215, 21500, 252, 5, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Sneasel - Foresight - Egg Move
  (215, 21500, 193, 5, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Sneasel - Reflect - Egg Move
  (215, 21500, 115, 5, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Sneasel - Spite - Egg Move
  (215, 21500, 180, 5, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Teddiursa - Scratch - Level 1
  (216, 21600, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Teddiursa - Leer - Level 1
  (216, 21600, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Teddiursa - Lick - Level 7
  (216, 21600, 122, 5, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Teddiursa - Fury Swipes - Level 13
  (216, 21600, 154, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Teddiursa - Fake Tears - Level 19
  (216, 21600, 313, 5, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Teddiursa - Feint Attack - Level 25
  (216, 21600, 185, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Teddiursa - Rest - Level 31
  (216, 21600, 156, 5, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Teddiursa - Slash - Level 37
  (216, 21600, 163, 5, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Teddiursa - Snore - Level 43
  (216, 21600, 173, 5, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Teddiursa - Thrash - Level 49
  (216, 21600, 37, 5, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Teddiursa - Focus Punch - TM01
  (216, 21600, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 11),
  -- Teddiursa - Roar - TM05
  (216, 21600, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 12),
  -- Teddiursa - Toxic - TM06
  (216, 21600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Teddiursa - Bulk Up - TM08
  (216, 21600, 339, 5, NULL, 2, NULL, NULL, 5002008, NULL, 14),
  -- Teddiursa - Hidden Power - TM10
  (216, 21600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Teddiursa - Sunny Day - TM11
  (216, 21600, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 16),
  -- Teddiursa - Taunt - TM12
  (216, 21600, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 17),
  -- Teddiursa - Protect - TM17
  (216, 21600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Teddiursa - Rain Dance - TM18
  (216, 21600, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 19),
  -- Teddiursa - Frustration - TM21
  (216, 21600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Teddiursa - Earthquake - TM26
  (216, 21600, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 21),
  -- Teddiursa - Return - TM27
  (216, 21600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 22),
  -- Teddiursa - Dig - TM28
  (216, 21600, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 23),
  -- Teddiursa - Brick Break - TM31
  (216, 21600, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 24),
  -- Teddiursa - Double Team - TM32
  (216, 21600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 25),
  -- Teddiursa - Aerial Ace - TM40
  (216, 21600, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 26),
  -- Teddiursa - Torment - TM41
  (216, 21600, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 27),
  -- Teddiursa - Facade - TM42
  (216, 21600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 28),
  -- Teddiursa - Secret Power - TM43
  (216, 21600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 29),
  -- Teddiursa - Rest - TM44
  (216, 21600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 30),
  -- Teddiursa - Attract - TM45
  (216, 21600, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 31),
  -- Teddiursa - Thief - TM46
  (216, 21600, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 32),
  -- Teddiursa - Cut - HM01
  (216, 21600, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 33),
  -- Teddiursa - Strength - HM04
  (216, 21600, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 34),
  -- Teddiursa - Rock Smash - HM06
  (216, 21600, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 35),
  -- Teddiursa - Counter - Egg Move
  (216, 21600, 68, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Teddiursa - Crunch - Egg Move
  (216, 21600, 242, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Teddiursa - Fake Tears - Egg Move
  (216, 21600, 313, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Teddiursa - Metal Claw - Egg Move
  (216, 21600, 232, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Teddiursa - Seismic Toss - Egg Move
  (216, 21600, 69, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Teddiursa - Sleep Talk - Egg Move
  (216, 21600, 214, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Teddiursa - Take Down - Egg Move
  (216, 21600, 36, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Teddiursa - Yawn - Egg Move
  (216, 21600, 281, 5, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Ursaring - Scratch - Level 1
  (217, 21700, 10, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ursaring - Leer - Level 1
  (217, 21700, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ursaring - Lick - Level 1
  (217, 21700, 122, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ursaring - Fury Swipes - Level 1
  (217, 21700, 154, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ursaring - Lick - Level 7
  (217, 21700, 122, 5, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Ursaring - Fury Swipes - Level 13
  (217, 21700, 154, 5, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Ursaring - Fake Tears - Level 19
  (217, 21700, 313, 5, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Ursaring - Feint Attack - Level 25
  (217, 21700, 185, 5, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Ursaring - Rest - Level 31
  (217, 21700, 156, 5, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Ursaring - Slash - Level 37
  (217, 21700, 163, 5, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Ursaring - Snore - Level 43
  (217, 21700, 173, 5, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Ursaring - Thrash - Level 49
  (217, 21700, 37, 5, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Ursaring - Focus Punch - TM01
  (217, 21700, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 13),
  -- Ursaring - Roar - TM05
  (217, 21700, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 14),
  -- Ursaring - Toxic - TM06
  (217, 21700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 15),
  -- Ursaring - Bulk Up - TM08
  (217, 21700, 339, 5, NULL, 2, NULL, NULL, 5002008, NULL, 16),
  -- Ursaring - Hidden Power - TM10
  (217, 21700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 17),
  -- Ursaring - Sunny Day - TM11
  (217, 21700, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 18),
  -- Ursaring - Taunt - TM12
  (217, 21700, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 19),
  -- Ursaring - Hyper Beam - TM15
  (217, 21700, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 20),
  -- Ursaring - Protect - TM17
  (217, 21700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 21),
  -- Ursaring - Rain Dance - TM18
  (217, 21700, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 22),
  -- Ursaring - Frustration - TM21
  (217, 21700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 23),
  -- Ursaring - Earthquake - TM26
  (217, 21700, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 24),
  -- Ursaring - Return - TM27
  (217, 21700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 25),
  -- Ursaring - Dig - TM28
  (217, 21700, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 26),
  -- Ursaring - Brick Break - TM31
  (217, 21700, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 27),
  -- Ursaring - Double Team - TM32
  (217, 21700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 28),
  -- Ursaring - Rock Tomb - TM39
  (217, 21700, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 29),
  -- Ursaring - Aerial Ace - TM40
  (217, 21700, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 30),
  -- Ursaring - Torment - TM41
  (217, 21700, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 31),
  -- Ursaring - Facade - TM42
  (217, 21700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 32),
  -- Ursaring - Secret Power - TM43
  (217, 21700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 33),
  -- Ursaring - Rest - TM44
  (217, 21700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 34),
  -- Ursaring - Attract - TM45
  (217, 21700, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 35),
  -- Ursaring - Thief - TM46
  (217, 21700, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 36),
  -- Ursaring - Cut - HM01
  (217, 21700, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 37),
  -- Ursaring - Strength - HM04
  (217, 21700, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 38),
  -- Ursaring - Rock Smash - HM06
  (217, 21700, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 39),
  -- Slugma - Yawn - Level 1
  (218, 21800, 281, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slugma - Smog - Level 1
  (218, 21800, 123, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slugma - Ember - Level 8
  (218, 21800, 52, 5, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Slugma - Rock Throw - Level 15
  (218, 21800, 88, 5, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Slugma - Harden - Level 22
  (218, 21800, 106, 5, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Slugma - Amnesia - Level 29
  (218, 21800, 133, 5, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Slugma - Flamethrower - Level 36
  (218, 21800, 53, 5, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Slugma - Rock Slide - Level 43
  (218, 21800, 157, 5, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Slugma - Body Slam - Level 50
  (218, 21800, 34, 5, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Slugma - Toxic - TM06
  (218, 21800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 10),
  -- Slugma - Hidden Power - TM10
  (218, 21800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 11),
  -- Slugma - Sunny Day - TM11
  (218, 21800, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 12),
  -- Slugma - Light Screen - TM16
  (218, 21800, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 13),
  -- Slugma - Protect - TM17
  (218, 21800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 14),
  -- Slugma - Frustration - TM21
  (218, 21800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 15),
  -- Slugma - Return - TM27
  (218, 21800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 16),
  -- Slugma - Double Team - TM32
  (218, 21800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 17),
  -- Slugma - Reflect - TM33
  (218, 21800, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 18),
  -- Slugma - Flamethrower - TM35
  (218, 21800, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 19),
  -- Slugma - Fire Blast - TM38
  (218, 21800, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 20),
  -- Slugma - Facade - TM42
  (218, 21800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 21),
  -- Slugma - Secret Power - TM43
  (218, 21800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 22),
  -- Slugma - Rest - TM44
  (218, 21800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 23),
  -- Slugma - Attract - TM45
  (218, 21800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 24),
  -- Slugma - Overheat - TM50
  (218, 21800, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 25),
  -- Slugma - Rock Smash - HM06
  (218, 21800, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 26),
  -- Slugma - Acid Armor - Egg Move
  (218, 21800, 151, 5, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Slugma - Heat Wave - Egg Move
  (218, 21800, 257, 5, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Magcargo - Smog - Level 1
  (219, 21900, 123, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magcargo - Yawn - Level 1
  (219, 21900, 281, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magcargo - Ember - Level 1
  (219, 21900, 52, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magcargo - Rock Throw - Level 1
  (219, 21900, 88, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magcargo - Ember - Level 8
  (219, 21900, 52, 5, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Magcargo - Rock Throw - Level 15
  (219, 21900, 88, 5, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Magcargo - Harden - Level 22
  (219, 21900, 106, 5, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Magcargo - Amnesia - Level 29
  (219, 21900, 133, 5, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Magcargo - Flamethrower - Level 36
  (219, 21900, 53, 5, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Magcargo - Rock Slide - Level 48
  (219, 21900, 157, 5, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Magcargo - Body Slam - Level 60
  (219, 21900, 34, 5, NULL, 1, 60, NULL, NULL, NULL, 11),
  -- Magcargo - Toxic - TM06
  (219, 21900, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Magcargo - Hidden Power - TM10
  (219, 21900, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Magcargo - Sunny Day - TM11
  (219, 21900, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Magcargo - Hyper Beam - TM15
  (219, 21900, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 15),
  -- Magcargo - Light Screen - TM16
  (219, 21900, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 16),
  -- Magcargo - Protect - TM17
  (219, 21900, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Magcargo - Frustration - TM21
  (219, 21900, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Magcargo - Earthquake - TM26
  (219, 21900, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 19),
  -- Magcargo - Return - TM27
  (219, 21900, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 20),
  -- Magcargo - Double Team - TM32
  (219, 21900, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 21),
  -- Magcargo - Reflect - TM33
  (219, 21900, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 22),
  -- Magcargo - Flamethrower - TM35
  (219, 21900, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 23),
  -- Magcargo - Sandstorm - TM37
  (219, 21900, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 24),
  -- Magcargo - Fire Blast - TM38
  (219, 21900, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 25),
  -- Magcargo - Rock Tomb - TM39
  (219, 21900, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 26),
  -- Magcargo - Facade - TM42
  (219, 21900, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Magcargo - Secret Power - TM43
  (219, 21900, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Magcargo - Rest - TM44
  (219, 21900, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Magcargo - Attract - TM45
  (219, 21900, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 30),
  -- Magcargo - Overheat - TM50
  (219, 21900, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 31),
  -- Magcargo - Strength - HM04
  (219, 21900, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 32),
  -- Magcargo - Rock Smash - HM06
  (219, 21900, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 33),
  -- Swinub - Tackle - Level 1
  (220, 22000, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swinub - Odor Sleuth - Level 1
  (220, 22000, 316, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swinub - Powder Snow - Level 10
  (220, 22000, 181, 5, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Swinub - Endure - Level 19
  (220, 22000, 203, 5, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Swinub - Take Down - Level 28
  (220, 22000, 36, 5, NULL, 1, 28, NULL, NULL, NULL, 5),
  -- Swinub - Mist - Level 37
  (220, 22000, 54, 5, NULL, 1, 37, NULL, NULL, NULL, 6),
  -- Swinub - Blizzard - Level 46
  (220, 22000, 59, 5, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Swinub - Amnesia - Level 55
  (220, 22000, 133, 5, NULL, 1, 55, NULL, NULL, NULL, 8),
  -- Swinub - Roar - TM05
  (220, 22000, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 9),
  -- Swinub - Toxic - TM06
  (220, 22000, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 10),
  -- Swinub - Hail - TM07
  (220, 22000, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 11),
  -- Swinub - Hidden Power - TM10
  (220, 22000, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Swinub - Ice Beam - TM13
  (220, 22000, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 13),
  -- Swinub - Blizzard - TM14
  (220, 22000, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 14),
  -- Swinub - Light Screen - TM16
  (220, 22000, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 15),
  -- Swinub - Protect - TM17
  (220, 22000, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Swinub - Rain Dance - TM18
  (220, 22000, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Swinub - Frustration - TM21
  (220, 22000, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Swinub - Earthquake - TM26
  (220, 22000, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 19),
  -- Swinub - Return - TM27
  (220, 22000, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 20),
  -- Swinub - Dig - TM28
  (220, 22000, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 21),
  -- Swinub - Double Team - TM32
  (220, 22000, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 22),
  -- Swinub - Reflect - TM33
  (220, 22000, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 23),
  -- Swinub - Sandstorm - TM37
  (220, 22000, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 24),
  -- Swinub - Rock Tomb - TM39
  (220, 22000, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 25),
  -- Swinub - Facade - TM42
  (220, 22000, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 26),
  -- Swinub - Secret Power - TM43
  (220, 22000, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 27),
  -- Swinub - Rest - TM44
  (220, 22000, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 28),
  -- Swinub - Attract - TM45
  (220, 22000, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 29),
  -- Swinub - Strength - HM04
  (220, 22000, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 30),
  -- Swinub - Rock Smash - HM06
  (220, 22000, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 31),
  -- Swinub - Ancient Power - Egg Move
  (220, 22000, 246, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Swinub - Bite - Egg Move
  (220, 22000, 44, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Swinub - Body Slam - Egg Move
  (220, 22000, 34, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Swinub - Double-Edge - Egg Move
  (220, 22000, 38, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Swinub - Icicle Spear - Egg Move
  (220, 22000, 333, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Swinub - Mud Shot - Egg Move
  (220, 22000, 341, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Swinub - Rock Slide - Egg Move
  (220, 22000, 157, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Swinub - Take Down - Egg Move
  (220, 22000, 36, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Piloswine - Horn Attack - Level 1
  (221, 22100, 30, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Piloswine - Odor Sleuth - Level 1
  (221, 22100, 316, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Piloswine - Powder Snow - Level 1
  (221, 22100, 181, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Piloswine - Endure - Level 1
  (221, 22100, 203, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Piloswine - Powder Snow - Level 10
  (221, 22100, 181, 5, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Piloswine - Endure - Level 19
  (221, 22100, 203, 5, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Piloswine - Take Down - Level 28
  (221, 22100, 36, 5, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Piloswine - Fury Attack - Level 33
  (221, 22100, 31, 5, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Piloswine - Mist - Level 42
  (221, 22100, 54, 5, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Piloswine - Blizzard - Level 56
  (221, 22100, 59, 5, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Piloswine - Amnesia - Level 70
  (221, 22100, 133, 5, NULL, 1, 70, NULL, NULL, NULL, 11),
  -- Piloswine - Roar - TM05
  (221, 22100, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 12),
  -- Piloswine - Toxic - TM06
  (221, 22100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Piloswine - Hail - TM07
  (221, 22100, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 14),
  -- Piloswine - Hidden Power - TM10
  (221, 22100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Piloswine - Ice Beam - TM13
  (221, 22100, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 16),
  -- Piloswine - Blizzard - TM14
  (221, 22100, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 17),
  -- Piloswine - Hyper Beam - TM15
  (221, 22100, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 18),
  -- Piloswine - Light Screen - TM16
  (221, 22100, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 19),
  -- Piloswine - Protect - TM17
  (221, 22100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 20),
  -- Piloswine - Rain Dance - TM18
  (221, 22100, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 21),
  -- Piloswine - Frustration - TM21
  (221, 22100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 22),
  -- Piloswine - Earthquake - TM26
  (221, 22100, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 23),
  -- Piloswine - Return - TM27
  (221, 22100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 24),
  -- Piloswine - Dig - TM28
  (221, 22100, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 25),
  -- Piloswine - Double Team - TM32
  (221, 22100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 26),
  -- Piloswine - Reflect - TM33
  (221, 22100, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 27),
  -- Piloswine - Sandstorm - TM37
  (221, 22100, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 28),
  -- Piloswine - Rock Tomb - TM39
  (221, 22100, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 29),
  -- Piloswine - Facade - TM42
  (221, 22100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 30),
  -- Piloswine - Secret Power - TM43
  (221, 22100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 31),
  -- Piloswine - Rest - TM44
  (221, 22100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 32),
  -- Piloswine - Attract - TM45
  (221, 22100, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 33),
  -- Piloswine - Strength - HM04
  (221, 22100, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 34),
  -- Piloswine - Rock Smash - HM06
  (221, 22100, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 35),
  -- Corsola - Tackle - Level 1
  (222, 22200, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corsola - Harden - Level 6
  (222, 22200, 106, 5, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Corsola - Bubble - Level 12
  (222, 22200, 145, 5, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Corsola - Recover - Level 17
  (222, 22200, 105, 5, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Corsola - Refresh - Level 17
  (222, 22200, 287, 5, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Corsola - Bubble Beam - Level 23
  (222, 22200, 61, 5, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Corsola - Spike Cannon - Level 28
  (222, 22200, 131, 5, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Corsola - Rock Blast - Level 34
  (222, 22200, 350, 5, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Corsola - Mirror Coat - Level 39
  (222, 22200, 243, 5, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Corsola - Ancient Power - Level 45
  (222, 22200, 246, 5, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Corsola - Water Pulse - TM03
  (222, 22200, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 11),
  -- Corsola - Calm Mind - TM04
  (222, 22200, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 12),
  -- Corsola - Toxic - TM06
  (222, 22200, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Corsola - Hail - TM07
  (222, 22200, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 14),
  -- Corsola - Hidden Power - TM10
  (222, 22200, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Corsola - Sunny Day - TM11
  (222, 22200, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 16),
  -- Corsola - Ice Beam - TM13
  (222, 22200, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 17),
  -- Corsola - Blizzard - TM14
  (222, 22200, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 18),
  -- Corsola - Light Screen - TM16
  (222, 22200, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 19),
  -- Corsola - Protect - TM17
  (222, 22200, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 20),
  -- Corsola - Rain Dance - TM18
  (222, 22200, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 21),
  -- Corsola - Safeguard - TM20
  (222, 22200, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 22),
  -- Corsola - Frustration - TM21
  (222, 22200, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 23),
  -- Corsola - Earthquake - TM26
  (222, 22200, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 24),
  -- Corsola - Return - TM27
  (222, 22200, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 25),
  -- Corsola - Dig - TM28
  (222, 22200, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 26),
  -- Corsola - Psychic - TM29
  (222, 22200, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 27),
  -- Corsola - Shadow Ball - TM30
  (222, 22200, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 28),
  -- Corsola - Double Team - TM32
  (222, 22200, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 29),
  -- Corsola - Reflect - TM33
  (222, 22200, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 30),
  -- Corsola - Sandstorm - TM37
  (222, 22200, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 31),
  -- Corsola - Rock Tomb - TM39
  (222, 22200, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 32),
  -- Corsola - Facade - TM42
  (222, 22200, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 33),
  -- Corsola - Secret Power - TM43
  (222, 22200, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 34),
  -- Corsola - Rest - TM44
  (222, 22200, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 35),
  -- Corsola - Attract - TM45
  (222, 22200, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 36),
  -- Corsola - Surf - HM03
  (222, 22200, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 37),
  -- Corsola - Strength - HM04
  (222, 22200, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 38),
  -- Corsola - Rock Smash - HM06
  (222, 22200, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 39),
  -- Corsola - Amnesia - Egg Move
  (222, 22200, 133, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Corsola - Barrier - Egg Move
  (222, 22200, 112, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Corsola - Confuse Ray - Egg Move
  (222, 22200, 109, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Corsola - Icicle Spear - Egg Move
  (222, 22200, 333, 5, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Corsola - Ingrain - Egg Move
  (222, 22200, 275, 5, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Corsola - Mist - Egg Move
  (222, 22200, 54, 5, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Corsola - Rock Slide - Egg Move
  (222, 22200, 157, 5, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Corsola - Screech - Egg Move
  (222, 22200, 103, 5, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Remoraid - Water Gun - Level 1
  (223, 22300, 55, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Remoraid - Lock-On - Level 11
  (223, 22300, 199, 5, NULL, 1, 11, NULL, NULL, NULL, 2),
  -- Remoraid - Psybeam - Level 22
  (223, 22300, 60, 5, NULL, 1, 22, NULL, NULL, NULL, 3),
  -- Remoraid - Aurora Beam - Level 22
  (223, 22300, 62, 5, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Remoraid - Bubble Beam - Level 22
  (223, 22300, 61, 5, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Remoraid - Focus Energy - Level 33
  (223, 22300, 116, 5, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Remoraid - Ice Beam - Level 44
  (223, 22300, 58, 5, NULL, 1, 44, NULL, NULL, NULL, 7),
  -- Remoraid - Hyper Beam - Level 55
  (223, 22300, 63, 5, NULL, 1, 55, NULL, NULL, NULL, 8),
  -- Remoraid - Water Pulse - TM03
  (223, 22300, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 9),
  -- Remoraid - Toxic - TM06
  (223, 22300, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 10),
  -- Remoraid - Hidden Power - TM10
  (223, 22300, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 11),
  -- Remoraid - Sunny Day - TM11
  (223, 22300, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 12),
  -- Remoraid - Ice Beam - TM13
  (223, 22300, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 13),
  -- Remoraid - Blizzard - TM14
  (223, 22300, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 14),
  -- Remoraid - Hyper Beam - TM15
  (223, 22300, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 15),
  -- Remoraid - Protect - TM17
  (223, 22300, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Remoraid - Rain Dance - TM18
  (223, 22300, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Remoraid - Frustration - TM21
  (223, 22300, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Remoraid - Return - TM27
  (223, 22300, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 19),
  -- Remoraid - Psychic - TM29
  (223, 22300, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 20),
  -- Remoraid - Double Team - TM32
  (223, 22300, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 21),
  -- Remoraid - Flamethrower - TM35
  (223, 22300, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 22),
  -- Remoraid - Fire Blast - TM38
  (223, 22300, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 23),
  -- Remoraid - Facade - TM42
  (223, 22300, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 24),
  -- Remoraid - Secret Power - TM43
  (223, 22300, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 25),
  -- Remoraid - Rest - TM44
  (223, 22300, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 26),
  -- Remoraid - Attract - TM45
  (223, 22300, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 27),
  -- Remoraid - Thief - TM46
  (223, 22300, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 28),
  -- Remoraid - Surf - HM03
  (223, 22300, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 29),
  -- Remoraid - Waterfall - HM07
  (223, 22300, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 30),
  -- Remoraid - Dive - HM08
  (223, 22300, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 31),
  -- Remoraid - Aurora Beam - Egg Move
  (223, 22300, 62, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Remoraid - Haze - Egg Move
  (223, 22300, 114, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Remoraid - Octazooka - Egg Move
  (223, 22300, 190, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Remoraid - Rock Blast - Egg Move
  (223, 22300, 350, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Remoraid - Screech - Egg Move
  (223, 22300, 103, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Remoraid - Supersonic - Egg Move
  (223, 22300, 48, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Remoraid - Thunder Wave - Egg Move
  (223, 22300, 86, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Octillery - Water Gun - Level 1
  (224, 22400, 55, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Octillery - Constrict - Level 11
  (224, 22400, 132, 5, NULL, 1, 11, NULL, NULL, NULL, 2),
  -- Octillery - Psybeam - Level 22
  (224, 22400, 60, 5, NULL, 1, 22, NULL, NULL, NULL, 3),
  -- Octillery - Aurora Beam - Level 22
  (224, 22400, 62, 5, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Octillery - Bubble Beam - Level 22
  (224, 22400, 61, 5, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Octillery - Octazooka - Level 25
  (224, 22400, 190, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Octillery - Focus Energy - Level 38
  (224, 22400, 116, 5, NULL, 1, 38, NULL, NULL, NULL, 7),
  -- Octillery - Ice Beam - Level 54
  (224, 22400, 58, 5, NULL, 1, 54, NULL, NULL, NULL, 8),
  -- Octillery - Hyper Beam - Level 70
  (224, 22400, 63, 5, NULL, 1, 70, NULL, NULL, NULL, 9),
  -- Octillery - Water Pulse - TM03
  (224, 22400, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 10),
  -- Octillery - Toxic - TM06
  (224, 22400, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Octillery - Bullet Seed - TM09
  (224, 22400, 331, 5, NULL, 2, NULL, NULL, 5002009, NULL, 12),
  -- Octillery - Hidden Power - TM10
  (224, 22400, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Octillery - Sunny Day - TM11
  (224, 22400, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Octillery - Ice Beam - TM13
  (224, 22400, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 15),
  -- Octillery - Blizzard - TM14
  (224, 22400, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 16),
  -- Octillery - Hyper Beam - TM15
  (224, 22400, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 17),
  -- Octillery - Protect - TM17
  (224, 22400, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Octillery - Rain Dance - TM18
  (224, 22400, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 19),
  -- Octillery - Frustration - TM21
  (224, 22400, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Octillery - Return - TM27
  (224, 22400, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 21),
  -- Octillery - Psychic - TM29
  (224, 22400, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 22),
  -- Octillery - Double Team - TM32
  (224, 22400, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 23),
  -- Octillery - Flamethrower - TM35
  (224, 22400, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 24),
  -- Octillery - Sludge Bomb - TM36
  (224, 22400, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 25),
  -- Octillery - Fire Blast - TM38
  (224, 22400, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 26),
  -- Octillery - Facade - TM42
  (224, 22400, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Octillery - Secret Power - TM43
  (224, 22400, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Octillery - Rest - TM44
  (224, 22400, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Octillery - Attract - TM45
  (224, 22400, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 30),
  -- Octillery - Thief - TM46
  (224, 22400, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 31),
  -- Octillery - Surf - HM03
  (224, 22400, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 32),
  -- Octillery - Waterfall - HM07
  (224, 22400, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 33),
  -- Octillery - Dive - HM08
  (224, 22400, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 34),
  -- Delibird - Present - Level 1
  (225, 22500, 217, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Delibird - Focus Punch - TM01
  (225, 22500, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 2),
  -- Delibird - Water Pulse - TM03
  (225, 22500, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 3),
  -- Delibird - Toxic - TM06
  (225, 22500, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 4),
  -- Delibird - Hail - TM07
  (225, 22500, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 5),
  -- Delibird - Hidden Power - TM10
  (225, 22500, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 6),
  -- Delibird - Ice Beam - TM13
  (225, 22500, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 7),
  -- Delibird - Blizzard - TM14
  (225, 22500, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 8),
  -- Delibird - Protect - TM17
  (225, 22500, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 9),
  -- Delibird - Rain Dance - TM18
  (225, 22500, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 10),
  -- Delibird - Frustration - TM21
  (225, 22500, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 11),
  -- Delibird - Return - TM27
  (225, 22500, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 12),
  -- Delibird - Double Team - TM32
  (225, 22500, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 13),
  -- Delibird - Aerial Ace - TM40
  (225, 22500, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 14),
  -- Delibird - Facade - TM42
  (225, 22500, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 15),
  -- Delibird - Secret Power - TM43
  (225, 22500, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 16),
  -- Delibird - Rest - TM44
  (225, 22500, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 17),
  -- Delibird - Attract - TM45
  (225, 22500, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 18),
  -- Delibird - Thief - TM46
  (225, 22500, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 19),
  -- Delibird - Fly - HM02
  (225, 22500, 19, 5, NULL, 3, NULL, NULL, 5003002, NULL, 20),
  -- Delibird - Aurora Beam - Egg Move
  (225, 22500, 62, 5, NULL, 5, NULL, NULL, NULL, NULL, 21),
  -- Delibird - Future Sight - Egg Move
  (225, 22500, 248, 5, NULL, 5, NULL, NULL, NULL, NULL, 22),
  -- Delibird - Ice Ball - Egg Move
  (225, 22500, 301, 5, NULL, 5, NULL, NULL, NULL, NULL, 23),
  -- Delibird - Quick Attack - Egg Move
  (225, 22500, 98, 5, NULL, 5, NULL, NULL, NULL, NULL, 24),
  -- Delibird - Rapid Spin - Egg Move
  (225, 22500, 229, 5, NULL, 5, NULL, NULL, NULL, NULL, 25),
  -- Delibird - Splash - Egg Move
  (225, 22500, 150, 5, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Mantine - Tackle - Level 1
  (226, 22600, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mantine - Bubble - Level 1
  (226, 22600, 145, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mantine - Supersonic - Level 8
  (226, 22600, 48, 5, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Mantine - Bubble Beam - Level 15
  (226, 22600, 61, 5, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Mantine - Take Down - Level 22
  (226, 22600, 36, 5, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Mantine - Agility - Level 29
  (226, 22600, 97, 5, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Mantine - Wing Attack - Level 36
  (226, 22600, 17, 5, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Mantine - Water Pulse - Level 43
  (226, 22600, 352, 5, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Mantine - Confuse Ray - Level 50
  (226, 22600, 109, 5, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Mantine - Water Pulse - TM03
  (226, 22600, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 10),
  -- Mantine - Toxic - TM06
  (226, 22600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Mantine - Hail - TM07
  (226, 22600, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 12),
  -- Mantine - Hidden Power - TM10
  (226, 22600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Mantine - Ice Beam - TM13
  (226, 22600, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 14),
  -- Mantine - Blizzard - TM14
  (226, 22600, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 15),
  -- Mantine - Protect - TM17
  (226, 22600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Mantine - Rain Dance - TM18
  (226, 22600, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Mantine - Frustration - TM21
  (226, 22600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Mantine - Earthquake - TM26
  (226, 22600, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 19),
  -- Mantine - Return - TM27
  (226, 22600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 20),
  -- Mantine - Double Team - TM32
  (226, 22600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 21),
  -- Mantine - Aerial Ace - TM40
  (226, 22600, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 22),
  -- Mantine - Facade - TM42
  (226, 22600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 23),
  -- Mantine - Secret Power - TM43
  (226, 22600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 24),
  -- Mantine - Rest - TM44
  (226, 22600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 25),
  -- Mantine - Attract - TM45
  (226, 22600, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 26),
  -- Mantine - Surf - HM03
  (226, 22600, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 27),
  -- Mantine - Waterfall - HM07
  (226, 22600, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 28),
  -- Mantine - Dive - HM08
  (226, 22600, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 29),
  -- Mantine - Haze - Egg Move
  (226, 22600, 114, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Mantine - Hydro Pump - Egg Move
  (226, 22600, 56, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Mantine - Mud Sport - Egg Move
  (226, 22600, 300, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Mantine - Rock Slide - Egg Move
  (226, 22600, 157, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Mantine - Slam - Egg Move
  (226, 22600, 21, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Mantine - Twister - Egg Move
  (226, 22600, 239, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Skarmory - Leer - Level 1
  (227, 22700, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skarmory - Peck - Level 1
  (227, 22700, 64, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skarmory - Sand Attack - Level 10
  (227, 22700, 28, 5, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Skarmory - Swift - Level 13
  (227, 22700, 129, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Skarmory - Agility - Level 16
  (227, 22700, 97, 5, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Skarmory - Fury Attack - Level 26
  (227, 22700, 31, 5, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Skarmory - Air Cutter - Level 29
  (227, 22700, 314, 5, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Skarmory - Steel Wing - Level 32
  (227, 22700, 211, 5, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Skarmory - Spikes - Level 42
  (227, 22700, 191, 5, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Skarmory - Metal Sound - Level 45
  (227, 22700, 319, 5, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Skarmory - Roar - TM05
  (227, 22700, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 11),
  -- Skarmory - Toxic - TM06
  (227, 22700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Skarmory - Hidden Power - TM10
  (227, 22700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Skarmory - Sunny Day - TM11
  (227, 22700, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Skarmory - Taunt - TM12
  (227, 22700, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 15),
  -- Skarmory - Protect - TM17
  (227, 22700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Skarmory - Frustration - TM21
  (227, 22700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 17),
  -- Skarmory - Return - TM27
  (227, 22700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 18),
  -- Skarmory - Double Team - TM32
  (227, 22700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 19),
  -- Skarmory - Sandstorm - TM37
  (227, 22700, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 20),
  -- Skarmory - Aerial Ace - TM40
  (227, 22700, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 21),
  -- Skarmory - Torment - TM41
  (227, 22700, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 22),
  -- Skarmory - Facade - TM42
  (227, 22700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 23),
  -- Skarmory - Secret Power - TM43
  (227, 22700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 24),
  -- Skarmory - Rest - TM44
  (227, 22700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 25),
  -- Skarmory - Attract - TM45
  (227, 22700, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 26),
  -- Skarmory - Thief - TM46
  (227, 22700, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 27),
  -- Skarmory - Steel Wing - TM47
  (227, 22700, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 28),
  -- Skarmory - Cut - HM01
  (227, 22700, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 29),
  -- Skarmory - Fly - HM02
  (227, 22700, 19, 5, NULL, 3, NULL, NULL, 5003002, NULL, 30),
  -- Skarmory - Rock Smash - HM06
  (227, 22700, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 31),
  -- Skarmory - Curse - Egg Move
  (227, 22700, 174, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Skarmory - Drill Peck - Egg Move
  (227, 22700, 65, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Skarmory - Pursuit - Egg Move
  (227, 22700, 228, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Skarmory - Sky Attack - Egg Move
  (227, 22700, 143, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Skarmory - Whirlwind - Egg Move
  (227, 22700, 18, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Houndour - Leer - Level 1
  (228, 22800, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Houndour - Ember - Level 1
  (228, 22800, 52, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Houndour - Howl - Level 7
  (228, 22800, 336, 5, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Houndour - Smog - Level 13
  (228, 22800, 123, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Houndour - Roar - Level 19
  (228, 22800, 46, 5, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Houndour - Bite - Level 25
  (228, 22800, 44, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Houndour - Odor Sleuth - Level 31
  (228, 22800, 316, 5, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Houndour - Feint Attack - Level 37
  (228, 22800, 185, 5, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Houndour - Flamethrower - Level 43
  (228, 22800, 53, 5, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Houndour - Crunch - Level 49
  (228, 22800, 242, 5, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Houndour - Roar - TM05
  (228, 22800, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 11),
  -- Houndour - Toxic - TM06
  (228, 22800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Houndour - Hidden Power - TM10
  (228, 22800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Houndour - Sunny Day - TM11
  (228, 22800, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Houndour - Taunt - TM12
  (228, 22800, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 15),
  -- Houndour - Protect - TM17
  (228, 22800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Houndour - Frustration - TM21
  (228, 22800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 17),
  -- Houndour - Solar Beam - TM22
  (228, 22800, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 18),
  -- Houndour - Iron Tail - TM23
  (228, 22800, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 19),
  -- Houndour - Return - TM27
  (228, 22800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 20),
  -- Houndour - Shadow Ball - TM30
  (228, 22800, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 21),
  -- Houndour - Double Team - TM32
  (228, 22800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 22),
  -- Houndour - Flamethrower - TM35
  (228, 22800, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 23),
  -- Houndour - Sludge Bomb - TM36
  (228, 22800, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 24),
  -- Houndour - Fire Blast - TM38
  (228, 22800, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 25),
  -- Houndour - Torment - TM41
  (228, 22800, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 26),
  -- Houndour - Facade - TM42
  (228, 22800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 27),
  -- Houndour - Secret Power - TM43
  (228, 22800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 28),
  -- Houndour - Rest - TM44
  (228, 22800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 29),
  -- Houndour - Attract - TM45
  (228, 22800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 30),
  -- Houndour - Thief - TM46
  (228, 22800, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 31),
  -- Houndour - Snatch - TM49
  (228, 22800, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 32),
  -- Houndour - Overheat - TM50
  (228, 22800, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 33),
  -- Houndour - Rock Smash - HM06
  (228, 22800, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 34),
  -- Houndour - Beat Up - Egg Move
  (228, 22800, 251, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Houndour - Counter - Egg Move
  (228, 22800, 68, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Houndour - Fire Spin - Egg Move
  (228, 22800, 83, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Houndour - Pursuit - Egg Move
  (228, 22800, 228, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Houndour - Rage - Egg Move
  (228, 22800, 99, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Houndour - Reversal - Egg Move
  (228, 22800, 179, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Houndour - Spite - Egg Move
  (228, 22800, 180, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Houndour - Will-O-Wisp - Egg Move
  (228, 22800, 261, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Houndoom - Leer - Level 1
  (229, 22900, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Houndoom - Ember - Level 1
  (229, 22900, 52, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Houndoom - Howl - Level 1
  (229, 22900, 336, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Houndoom - Howl - Level 7
  (229, 22900, 336, 5, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Houndoom - Smog - Level 13
  (229, 22900, 123, 5, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Houndoom - Roar - Level 19
  (229, 22900, 46, 5, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Houndoom - Bite - Level 27
  (229, 22900, 44, 5, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Houndoom - Odor Sleuth - Level 35
  (229, 22900, 316, 5, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Houndoom - Feint Attack - Level 43
  (229, 22900, 185, 5, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Houndoom - Flamethrower - Level 51
  (229, 22900, 53, 5, NULL, 1, 51, NULL, NULL, NULL, 10),
  -- Houndoom - Crunch - Level 59
  (229, 22900, 242, 5, NULL, 1, 59, NULL, NULL, NULL, 11),
  -- Houndoom - Roar - TM05
  (229, 22900, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 12),
  -- Houndoom - Toxic - TM06
  (229, 22900, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Houndoom - Hidden Power - TM10
  (229, 22900, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Houndoom - Sunny Day - TM11
  (229, 22900, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Houndoom - Taunt - TM12
  (229, 22900, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 16),
  -- Houndoom - Hyper Beam - TM15
  (229, 22900, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 17),
  -- Houndoom - Protect - TM17
  (229, 22900, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Houndoom - Frustration - TM21
  (229, 22900, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Houndoom - Solar Beam - TM22
  (229, 22900, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 20),
  -- Houndoom - Iron Tail - TM23
  (229, 22900, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 21),
  -- Houndoom - Return - TM27
  (229, 22900, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 22),
  -- Houndoom - Shadow Ball - TM30
  (229, 22900, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 23),
  -- Houndoom - Double Team - TM32
  (229, 22900, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Houndoom - Flamethrower - TM35
  (229, 22900, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 25),
  -- Houndoom - Sludge Bomb - TM36
  (229, 22900, 188, 5, NULL, 2, NULL, NULL, 5002036, NULL, 26),
  -- Houndoom - Fire Blast - TM38
  (229, 22900, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 27),
  -- Houndoom - Torment - TM41
  (229, 22900, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 28),
  -- Houndoom - Facade - TM42
  (229, 22900, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 29),
  -- Houndoom - Secret Power - TM43
  (229, 22900, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 30),
  -- Houndoom - Rest - TM44
  (229, 22900, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 31),
  -- Houndoom - Attract - TM45
  (229, 22900, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 32),
  -- Houndoom - Thief - TM46
  (229, 22900, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 33),
  -- Houndoom - Snatch - TM49
  (229, 22900, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 34),
  -- Houndoom - Overheat - TM50
  (229, 22900, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 35),
  -- Houndoom - Strength - HM04
  (229, 22900, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 36),
  -- Houndoom - Rock Smash - HM06
  (229, 22900, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 37),
  -- Kingdra - Bubble - Level 1
  (230, 23000, 145, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kingdra - Smokescreen - Level 1
  (230, 23000, 108, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kingdra - Leer - Level 1
  (230, 23000, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kingdra - Water Gun - Level 1
  (230, 23000, 55, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kingdra - Smokescreen - Level 8
  (230, 23000, 108, 5, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Kingdra - Leer - Level 15
  (230, 23000, 43, 5, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Kingdra - Water Gun - Level 22
  (230, 23000, 55, 5, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Kingdra - Twister - Level 29
  (230, 23000, 239, 5, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Kingdra - Agility - Level 40
  (230, 23000, 97, 5, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Kingdra - Hydro Pump - Level 51
  (230, 23000, 56, 5, NULL, 1, 51, NULL, NULL, NULL, 10),
  -- Kingdra - Dragon Dance - Level 62
  (230, 23000, 349, 5, NULL, 1, 62, NULL, NULL, NULL, 11),
  -- Kingdra - Water Pulse - TM03
  (230, 23000, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 12),
  -- Kingdra - Toxic - TM06
  (230, 23000, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Kingdra - Hail - TM07
  (230, 23000, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 14),
  -- Kingdra - Hidden Power - TM10
  (230, 23000, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 15),
  -- Kingdra - Ice Beam - TM13
  (230, 23000, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 16),
  -- Kingdra - Blizzard - TM14
  (230, 23000, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 17),
  -- Kingdra - Hyper Beam - TM15
  (230, 23000, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 18),
  -- Kingdra - Protect - TM17
  (230, 23000, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 19),
  -- Kingdra - Rain Dance - TM18
  (230, 23000, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 20),
  -- Kingdra - Frustration - TM21
  (230, 23000, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 21),
  -- Kingdra - Return - TM27
  (230, 23000, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 22),
  -- Kingdra - Double Team - TM32
  (230, 23000, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 23),
  -- Kingdra - Facade - TM42
  (230, 23000, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 24),
  -- Kingdra - Secret Power - TM43
  (230, 23000, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 25),
  -- Kingdra - Rest - TM44
  (230, 23000, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 26),
  -- Kingdra - Attract - TM45
  (230, 23000, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 27),
  -- Kingdra - Surf - HM03
  (230, 23000, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 28),
  -- Kingdra - Waterfall - HM07
  (230, 23000, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 29),
  -- Kingdra - Dive - HM08
  (230, 23000, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 30),
  -- Phanpy - Odor Sleuth - Level 1
  (231, 23100, 316, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Phanpy - Tackle - Level 1
  (231, 23100, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Phanpy - Growl - Level 1
  (231, 23100, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Phanpy - Defense Curl - Level 9
  (231, 23100, 111, 5, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Phanpy - Flail - Level 17
  (231, 23100, 175, 5, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Phanpy - Take Down - Level 25
  (231, 23100, 36, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Phanpy - Rollout - Level 33
  (231, 23100, 205, 5, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Phanpy - Endure - Level 41
  (231, 23100, 203, 5, NULL, 1, 41, NULL, NULL, NULL, 8),
  -- Phanpy - Double-Edge - Level 49
  (231, 23100, 38, 5, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Phanpy - Roar - TM05
  (231, 23100, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 10),
  -- Phanpy - Toxic - TM06
  (231, 23100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Phanpy - Hidden Power - TM10
  (231, 23100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Phanpy - Sunny Day - TM11
  (231, 23100, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 13),
  -- Phanpy - Protect - TM17
  (231, 23100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 14),
  -- Phanpy - Frustration - TM21
  (231, 23100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 15),
  -- Phanpy - Iron Tail - TM23
  (231, 23100, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 16),
  -- Phanpy - Earthquake - TM26
  (231, 23100, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 17),
  -- Phanpy - Return - TM27
  (231, 23100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 18),
  -- Phanpy - Double Team - TM32
  (231, 23100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 19),
  -- Phanpy - Sandstorm - TM37
  (231, 23100, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 20),
  -- Phanpy - Rock Tomb - TM39
  (231, 23100, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 21),
  -- Phanpy - Facade - TM42
  (231, 23100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 22),
  -- Phanpy - Secret Power - TM43
  (231, 23100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 23),
  -- Phanpy - Rest - TM44
  (231, 23100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 24),
  -- Phanpy - Attract - TM45
  (231, 23100, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 25),
  -- Phanpy - Strength - HM04
  (231, 23100, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 26),
  -- Phanpy - Rock Smash - HM06
  (231, 23100, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 27),
  -- Phanpy - Ancient Power - Egg Move
  (231, 23100, 246, 5, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Phanpy - Body Slam - Egg Move
  (231, 23100, 34, 5, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Phanpy - Counter - Egg Move
  (231, 23100, 68, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Phanpy - Fissure - Egg Move
  (231, 23100, 90, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Phanpy - Focus Energy - Egg Move
  (231, 23100, 116, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Phanpy - Snore - Egg Move
  (231, 23100, 173, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Donphan - Odor Sleuth - Level 1
  (232, 23200, 316, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Donphan - Horn Attack - Level 1
  (232, 23200, 30, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Donphan - Growl - Level 1
  (232, 23200, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Donphan - Defense Curl - Level 9
  (232, 23200, 111, 5, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Donphan - Flail - Level 17
  (232, 23200, 175, 5, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Donphan - Fury Attack - Level 25
  (232, 23200, 31, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Donphan - Rollout - Level 33
  (232, 23200, 205, 5, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Donphan - Rapid Spin - Level 41
  (232, 23200, 229, 5, NULL, 1, 41, NULL, NULL, NULL, 8),
  -- Donphan - Earthquake - Level 49
  (232, 23200, 89, 5, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Donphan - Roar - TM05
  (232, 23200, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 10),
  -- Donphan - Toxic - TM06
  (232, 23200, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Donphan - Hidden Power - TM10
  (232, 23200, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Donphan - Sunny Day - TM11
  (232, 23200, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 13),
  -- Donphan - Hyper Beam - TM15
  (232, 23200, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 14),
  -- Donphan - Protect - TM17
  (232, 23200, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 15),
  -- Donphan - Frustration - TM21
  (232, 23200, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 16),
  -- Donphan - Iron Tail - TM23
  (232, 23200, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 17),
  -- Donphan - Earthquake - TM26
  (232, 23200, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 18),
  -- Donphan - Return - TM27
  (232, 23200, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 19),
  -- Donphan - Double Team - TM32
  (232, 23200, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 20),
  -- Donphan - Sandstorm - TM37
  (232, 23200, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 21),
  -- Donphan - Rock Tomb - TM39
  (232, 23200, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 22),
  -- Donphan - Facade - TM42
  (232, 23200, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 23),
  -- Donphan - Secret Power - TM43
  (232, 23200, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 24),
  -- Donphan - Rest - TM44
  (232, 23200, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 25),
  -- Donphan - Attract - TM45
  (232, 23200, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 26),
  -- Donphan - Strength - HM04
  (232, 23200, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 27),
  -- Donphan - Rock Smash - HM06
  (232, 23200, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 28),
  -- Porygon2 - Tackle - Level 1
  (233, 23300, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon2 - Conversion - Level 1
  (233, 23300, 160, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon2 - Conversion 2 - Level 1
  (233, 23300, 176, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon2 - Agility - Level 9
  (233, 23300, 97, 5, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Porygon2 - Psybeam - Level 12
  (233, 23300, 60, 5, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Porygon2 - Recover - Level 20
  (233, 23300, 105, 5, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Porygon2 - Defense Curl - Level 24
  (233, 23300, 111, 5, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Porygon2 - Lock-On - Level 32
  (233, 23300, 199, 5, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Porygon2 - Tri Attack - Level 36
  (233, 23300, 161, 5, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Porygon2 - Recycle - Level 44
  (233, 23300, 278, 5, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Porygon2 - Zap Cannon - Level 48
  (233, 23300, 192, 5, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Porygon2 - Toxic - TM06
  (233, 23300, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Porygon2 - Hidden Power - TM10
  (233, 23300, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Porygon2 - Sunny Day - TM11
  (233, 23300, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Porygon2 - Ice Beam - TM13
  (233, 23300, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 15),
  -- Porygon2 - Blizzard - TM14
  (233, 23300, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 16),
  -- Porygon2 - Hyper Beam - TM15
  (233, 23300, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 17),
  -- Porygon2 - Protect - TM17
  (233, 23300, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Porygon2 - Rain Dance - TM18
  (233, 23300, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 19),
  -- Porygon2 - Frustration - TM21
  (233, 23300, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Porygon2 - Solar Beam - TM22
  (233, 23300, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 21),
  -- Porygon2 - Iron Tail - TM23
  (233, 23300, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 22),
  -- Porygon2 - Thunderbolt - TM24
  (233, 23300, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 23),
  -- Porygon2 - Thunder - TM25
  (233, 23300, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 24),
  -- Porygon2 - Return - TM27
  (233, 23300, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 25),
  -- Porygon2 - Psychic - TM29
  (233, 23300, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 26),
  -- Porygon2 - Shadow Ball - TM30
  (233, 23300, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 27),
  -- Porygon2 - Double Team - TM32
  (233, 23300, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 28),
  -- Porygon2 - Shock Wave - TM34
  (233, 23300, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 29),
  -- Porygon2 - Aerial Ace - TM40
  (233, 23300, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 30),
  -- Porygon2 - Facade - TM42
  (233, 23300, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 31),
  -- Porygon2 - Secret Power - TM43
  (233, 23300, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 32),
  -- Porygon2 - Rest - TM44
  (233, 23300, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 33),
  -- Porygon2 - Thief - TM46
  (233, 23300, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 34),
  -- Porygon2 - Flash - HM05
  (233, 23300, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 35),
  -- Stantler - Tackle - Level 1
  (234, 23400, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stantler - Leer - Level 7
  (234, 23400, 43, 5, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Stantler - Astonish - Level 13
  (234, 23400, 310, 5, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Stantler - Hypnosis - Level 19
  (234, 23400, 95, 5, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Stantler - Stomp - Level 25
  (234, 23400, 23, 5, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Stantler - Sand Attack - Level 31
  (234, 23400, 28, 5, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Stantler - Take Down - Level 37
  (234, 23400, 36, 5, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Stantler - Confuse Ray - Level 43
  (234, 23400, 109, 5, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Stantler - Calm Mind - Level 49
  (234, 23400, 347, 5, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Stantler - Calm Mind - TM04
  (234, 23400, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 10),
  -- Stantler - Roar - TM05
  (234, 23400, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 11),
  -- Stantler - Toxic - TM06
  (234, 23400, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Stantler - Hidden Power - TM10
  (234, 23400, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Stantler - Sunny Day - TM11
  (234, 23400, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Stantler - Light Screen - TM16
  (234, 23400, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 15),
  -- Stantler - Protect - TM17
  (234, 23400, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Stantler - Rain Dance - TM18
  (234, 23400, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Stantler - Frustration - TM21
  (234, 23400, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Stantler - Solar Beam - TM22
  (234, 23400, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 19),
  -- Stantler - Iron Tail - TM23
  (234, 23400, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 20),
  -- Stantler - Thunderbolt - TM24
  (234, 23400, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 21),
  -- Stantler - Thunder - TM25
  (234, 23400, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 22),
  -- Stantler - Earthquake - TM26
  (234, 23400, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 23),
  -- Stantler - Return - TM27
  (234, 23400, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 24),
  -- Stantler - Psychic - TM29
  (234, 23400, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 25),
  -- Stantler - Shadow Ball - TM30
  (234, 23400, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 26),
  -- Stantler - Double Team - TM32
  (234, 23400, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 27),
  -- Stantler - Reflect - TM33
  (234, 23400, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 28),
  -- Stantler - Shock Wave - TM34
  (234, 23400, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 29),
  -- Stantler - Facade - TM42
  (234, 23400, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 30),
  -- Stantler - Secret Power - TM43
  (234, 23400, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 31),
  -- Stantler - Rest - TM44
  (234, 23400, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 32),
  -- Stantler - Attract - TM45
  (234, 23400, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 33),
  -- Stantler - Thief - TM46
  (234, 23400, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 34),
  -- Stantler - Skill Swap - TM48
  (234, 23400, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 35),
  -- Stantler - Flash - HM05
  (234, 23400, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 36),
  -- Stantler - Bite - Egg Move
  (234, 23400, 44, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Stantler - Disable - Egg Move
  (234, 23400, 50, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Stantler - Extrasensory - Egg Move
  (234, 23400, 326, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Stantler - Psych Up - Egg Move
  (234, 23400, 244, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Stantler - Spite - Egg Move
  (234, 23400, 180, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Stantler - Swagger - Egg Move
  (234, 23400, 207, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Smeargle - Sketch - Level 1
  (235, 23500, 166, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Smeargle - Sketch - Level 11
  (235, 23500, 166, 5, NULL, 1, 11, NULL, NULL, NULL, 2),
  -- Smeargle - Sketch - Level 21
  (235, 23500, 166, 5, NULL, 1, 21, NULL, NULL, NULL, 3),
  -- Smeargle - Sketch - Level 31
  (235, 23500, 166, 5, NULL, 1, 31, NULL, NULL, NULL, 4),
  -- Smeargle - Sketch - Level 41
  (235, 23500, 166, 5, NULL, 1, 41, NULL, NULL, NULL, 5),
  -- Smeargle - Sketch - Level 51
  (235, 23500, 166, 5, NULL, 1, 51, NULL, NULL, NULL, 6),
  -- Smeargle - Sketch - Level 61
  (235, 23500, 166, 5, NULL, 1, 61, NULL, NULL, NULL, 7),
  -- Smeargle - Sketch - Level 71
  (235, 23500, 166, 5, NULL, 1, 71, NULL, NULL, NULL, 8),
  -- Smeargle - Sketch - Level 81
  (235, 23500, 166, 5, NULL, 1, 81, NULL, NULL, NULL, 9),
  -- Smeargle - Sketch - Level 91
  (235, 23500, 166, 5, NULL, 1, 91, NULL, NULL, NULL, 10),
  -- Tyrogue - Tackle - Level 1
  (236, 23600, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyrogue - Toxic - TM06
  (236, 23600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 2),
  -- Tyrogue - Bulk Up - TM08
  (236, 23600, 339, 5, NULL, 2, NULL, NULL, 5002008, NULL, 3),
  -- Tyrogue - Hidden Power - TM10
  (236, 23600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 4),
  -- Tyrogue - Sunny Day - TM11
  (236, 23600, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 5),
  -- Tyrogue - Protect - TM17
  (236, 23600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 6),
  -- Tyrogue - Rain Dance - TM18
  (236, 23600, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 7),
  -- Tyrogue - Frustration - TM21
  (236, 23600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 8),
  -- Tyrogue - Earthquake - TM26
  (236, 23600, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 9),
  -- Tyrogue - Return - TM27
  (236, 23600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 10),
  -- Tyrogue - Brick Break - TM31
  (236, 23600, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 11),
  -- Tyrogue - Double Team - TM32
  (236, 23600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 12),
  -- Tyrogue - Facade - TM42
  (236, 23600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 13),
  -- Tyrogue - Secret Power - TM43
  (236, 23600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 14),
  -- Tyrogue - Rest - TM44
  (236, 23600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 15),
  -- Tyrogue - Attract - TM45
  (236, 23600, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 16),
  -- Tyrogue - Thief - TM46
  (236, 23600, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 17),
  -- Tyrogue - Strength - HM04
  (236, 23600, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 18),
  -- Tyrogue - Rock Smash - HM06
  (236, 23600, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 19),
  -- Tyrogue - High Jump Kick - Egg Move
  (236, 23600, 136, 5, NULL, 5, NULL, NULL, NULL, NULL, 20),
  -- Tyrogue - Helping Hand - Egg Move
  (236, 23600, 270, 5, NULL, 5, NULL, NULL, NULL, NULL, 21),
  -- Tyrogue - Mach Punch - Egg Move
  (236, 23600, 183, 5, NULL, 5, NULL, NULL, NULL, NULL, 22),
  -- Tyrogue - Mind Reader - Egg Move
  (236, 23600, 170, 5, NULL, 5, NULL, NULL, NULL, NULL, 23),
  -- Tyrogue - Rapid Spin - Egg Move
  (236, 23600, 229, 5, NULL, 5, NULL, NULL, NULL, NULL, 24),
  -- Hitmontop - Rolling Kick - Level 1
  (237, 23700, 27, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmontop - Revenge - Level 1
  (237, 23700, 279, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmontop - Focus Energy - Level 7
  (237, 23700, 116, 5, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Hitmontop - Pursuit - Level 13
  (237, 23700, 228, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Hitmontop - Quick Attack - Level 19
  (237, 23700, 98, 5, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Hitmontop - Triple Kick - Level 20
  (237, 23700, 167, 5, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Hitmontop - Rapid Spin - Level 25
  (237, 23700, 229, 5, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Hitmontop - Counter - Level 31
  (237, 23700, 68, 5, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Hitmontop - Agility - Level 37
  (237, 23700, 97, 5, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Hitmontop - Detect - Level 43
  (237, 23700, 197, 5, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Hitmontop - Endeavor - Level 49
  (237, 23700, 283, 5, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Hitmontop - Toxic - TM06
  (237, 23700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Hitmontop - Bulk Up - TM08
  (237, 23700, 339, 5, NULL, 2, NULL, NULL, 5002008, NULL, 13),
  -- Hitmontop - Hidden Power - TM10
  (237, 23700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Hitmontop - Sunny Day - TM11
  (237, 23700, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Hitmontop - Protect - TM17
  (237, 23700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Hitmontop - Rain Dance - TM18
  (237, 23700, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Hitmontop - Frustration - TM21
  (237, 23700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Hitmontop - Earthquake - TM26
  (237, 23700, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 19),
  -- Hitmontop - Return - TM27
  (237, 23700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 20),
  -- Hitmontop - Dig - TM28
  (237, 23700, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 21),
  -- Hitmontop - Brick Break - TM31
  (237, 23700, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 22),
  -- Hitmontop - Double Team - TM32
  (237, 23700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 23),
  -- Hitmontop - Sandstorm - TM37
  (237, 23700, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 24),
  -- Hitmontop - Facade - TM42
  (237, 23700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 25),
  -- Hitmontop - Secret Power - TM43
  (237, 23700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 26),
  -- Hitmontop - Rest - TM44
  (237, 23700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 27),
  -- Hitmontop - Attract - TM45
  (237, 23700, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 28),
  -- Hitmontop - Thief - TM46
  (237, 23700, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 29),
  -- Hitmontop - Strength - HM04
  (237, 23700, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 30),
  -- Hitmontop - Rock Smash - HM06
  (237, 23700, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 31),
  -- Smoochum - Pound - Level 1
  (238, 23800, 1, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Smoochum - Lick - Level 1
  (238, 23800, 122, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Smoochum - Sweet Kiss - Level 9
  (238, 23800, 186, 5, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Smoochum - Powder Snow - Level 13
  (238, 23800, 181, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Smoochum - Confusion - Level 21
  (238, 23800, 93, 5, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Smoochum - Sing - Level 25
  (238, 23800, 47, 5, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Smoochum - Mean Look - Level 33
  (238, 23800, 212, 5, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Smoochum - Fake Tears - Level 37
  (238, 23800, 313, 5, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Smoochum - Psychic - Level 45
  (238, 23800, 94, 5, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Smoochum - Perish Song - Level 49
  (238, 23800, 195, 5, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Smoochum - Blizzard - Level 57
  (238, 23800, 59, 5, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Smoochum - Water Pulse - TM03
  (238, 23800, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 12),
  -- Smoochum - Calm Mind - TM04
  (238, 23800, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 13),
  -- Smoochum - Toxic - TM06
  (238, 23800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Smoochum - Hail - TM07
  (238, 23800, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 15),
  -- Smoochum - Hidden Power - TM10
  (238, 23800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Smoochum - Ice Beam - TM13
  (238, 23800, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 17),
  -- Smoochum - Blizzard - TM14
  (238, 23800, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 18),
  -- Smoochum - Light Screen - TM16
  (238, 23800, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 19),
  -- Smoochum - Protect - TM17
  (238, 23800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 20),
  -- Smoochum - Rain Dance - TM18
  (238, 23800, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 21),
  -- Smoochum - Frustration - TM21
  (238, 23800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 22),
  -- Smoochum - Return - TM27
  (238, 23800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Smoochum - Psychic - TM29
  (238, 23800, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 24),
  -- Smoochum - Shadow Ball - TM30
  (238, 23800, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 25),
  -- Smoochum - Double Team - TM32
  (238, 23800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 26),
  -- Smoochum - Reflect - TM33
  (238, 23800, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 27),
  -- Smoochum - Facade - TM42
  (238, 23800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 28),
  -- Smoochum - Secret Power - TM43
  (238, 23800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 29),
  -- Smoochum - Rest - TM44
  (238, 23800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 30),
  -- Smoochum - Attract - TM45
  (238, 23800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 31),
  -- Smoochum - Thief - TM46
  (238, 23800, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 32),
  -- Smoochum - Skill Swap - TM48
  (238, 23800, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 33),
  -- Smoochum - Flash - HM05
  (238, 23800, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 34),
  -- Smoochum - Fake Out - Egg Move
  (238, 23800, 252, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Smoochum - Ice Punch - Egg Move
  (238, 23800, 8, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Smoochum - Meditate - Egg Move
  (238, 23800, 96, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Smoochum - Psych Up - Egg Move
  (238, 23800, 244, 5, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Smoochum - Wish - Egg Move
  (238, 23800, 273, 5, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Elekid - Quick Attack - Level 1
  (239, 23900, 98, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Elekid - Leer - Level 1
  (239, 23900, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Elekid - Thunder Punch - Level 9
  (239, 23900, 9, 5, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Elekid - Light Screen - Level 17
  (239, 23900, 113, 5, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Elekid - Swift - Level 25
  (239, 23900, 129, 5, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Elekid - Screech - Level 33
  (239, 23900, 103, 5, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Elekid - Thunderbolt - Level 41
  (239, 23900, 85, 5, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Elekid - Thunder - Level 49
  (239, 23900, 87, 5, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Elekid - Focus Punch - TM01
  (239, 23900, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 9),
  -- Elekid - Toxic - TM06
  (239, 23900, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 10),
  -- Elekid - Hidden Power - TM10
  (239, 23900, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 11),
  -- Elekid - Light Screen - TM16
  (239, 23900, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 12),
  -- Elekid - Protect - TM17
  (239, 23900, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 13),
  -- Elekid - Rain Dance - TM18
  (239, 23900, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 14),
  -- Elekid - Frustration - TM21
  (239, 23900, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 15),
  -- Elekid - Thunderbolt - TM24
  (239, 23900, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 16),
  -- Elekid - Thunder - TM25
  (239, 23900, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 17),
  -- Elekid - Return - TM27
  (239, 23900, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 18),
  -- Elekid - Psychic - TM29
  (239, 23900, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 19),
  -- Elekid - Brick Break - TM31
  (239, 23900, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 20),
  -- Elekid - Double Team - TM32
  (239, 23900, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 21),
  -- Elekid - Shock Wave - TM34
  (239, 23900, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 22),
  -- Elekid - Facade - TM42
  (239, 23900, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 23),
  -- Elekid - Secret Power - TM43
  (239, 23900, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 24),
  -- Elekid - Rest - TM44
  (239, 23900, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 25),
  -- Elekid - Attract - TM45
  (239, 23900, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 26),
  -- Elekid - Thief - TM46
  (239, 23900, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 27),
  -- Elekid - Flash - HM05
  (239, 23900, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 28),
  -- Elekid - Rock Smash - HM06
  (239, 23900, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 29),
  -- Elekid - Barrier - Egg Move
  (239, 23900, 112, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Elekid - Cross Chop - Egg Move
  (239, 23900, 238, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Elekid - Fire Punch - Egg Move
  (239, 23900, 7, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Elekid - Ice Punch - Egg Move
  (239, 23900, 8, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Elekid - Karate Chop - Egg Move
  (239, 23900, 2, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Elekid - Meditate - Egg Move
  (239, 23900, 96, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Elekid - Rolling Kick - Egg Move
  (239, 23900, 27, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Magby - Ember - Level 1
  (240, 24000, 52, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magby - Leer - Level 7
  (240, 24000, 43, 5, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Magby - Smog - Level 13
  (240, 24000, 123, 5, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Magby - Fire Punch - Level 19
  (240, 24000, 7, 5, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Magby - Smokescreen - Level 25
  (240, 24000, 108, 5, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Magby - Sunny Day - Level 31
  (240, 24000, 241, 5, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Magby - Flamethrower - Level 37
  (240, 24000, 53, 5, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Magby - Confuse Ray - Level 43
  (240, 24000, 109, 5, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Magby - Fire Blast - Level 49
  (240, 24000, 126, 5, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Magby - Focus Punch - TM01
  (240, 24000, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 10),
  -- Magby - Toxic - TM06
  (240, 24000, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Magby - Hidden Power - TM10
  (240, 24000, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Magby - Sunny Day - TM11
  (240, 24000, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 13),
  -- Magby - Protect - TM17
  (240, 24000, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 14),
  -- Magby - Frustration - TM21
  (240, 24000, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 15),
  -- Magby - Iron Tail - TM23
  (240, 24000, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 16),
  -- Magby - Return - TM27
  (240, 24000, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 17),
  -- Magby - Psychic - TM29
  (240, 24000, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 18),
  -- Magby - Brick Break - TM31
  (240, 24000, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 19),
  -- Magby - Double Team - TM32
  (240, 24000, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 20),
  -- Magby - Flamethrower - TM35
  (240, 24000, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 21),
  -- Magby - Fire Blast - TM38
  (240, 24000, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 22),
  -- Magby - Facade - TM42
  (240, 24000, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 23),
  -- Magby - Secret Power - TM43
  (240, 24000, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 24),
  -- Magby - Rest - TM44
  (240, 24000, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 25),
  -- Magby - Attract - TM45
  (240, 24000, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 26),
  -- Magby - Thief - TM46
  (240, 24000, 168, 5, NULL, 2, NULL, NULL, 5002046, NULL, 27),
  -- Magby - Rock Smash - HM06
  (240, 24000, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 28),
  -- Magby - Barrier - Egg Move
  (240, 24000, 112, 5, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Magby - Cross Chop - Egg Move
  (240, 24000, 238, 5, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Magby - Karate Chop - Egg Move
  (240, 24000, 2, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Magby - Mega Punch - Egg Move
  (240, 24000, 5, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Magby - Screech - Egg Move
  (240, 24000, 103, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Magby - Thunder Punch - Egg Move
  (240, 24000, 9, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Miltank - Tackle - Level 1
  (241, 24100, 33, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Miltank - Growl - Level 4
  (241, 24100, 45, 5, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Miltank - Defense Curl - Level 8
  (241, 24100, 111, 5, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Miltank - Stomp - Level 13
  (241, 24100, 23, 5, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Miltank - Milk Drink - Level 19
  (241, 24100, 208, 5, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Miltank - Bide - Level 26
  (241, 24100, 117, 5, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Miltank - Rollout - Level 34
  (241, 24100, 205, 5, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Miltank - Body Slam - Level 43
  (241, 24100, 34, 5, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Miltank - Heal Bell - Level 53
  (241, 24100, 215, 5, NULL, 1, 53, NULL, NULL, NULL, 9),
  -- Miltank - Focus Punch - TM01
  (241, 24100, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 10),
  -- Miltank - Water Pulse - TM03
  (241, 24100, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 11),
  -- Miltank - Toxic - TM06
  (241, 24100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Miltank - Hidden Power - TM10
  (241, 24100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Miltank - Sunny Day - TM11
  (241, 24100, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Miltank - Ice Beam - TM13
  (241, 24100, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 15),
  -- Miltank - Blizzard - TM14
  (241, 24100, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 16),
  -- Miltank - Hyper Beam - TM15
  (241, 24100, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 17),
  -- Miltank - Protect - TM17
  (241, 24100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Miltank - Rain Dance - TM18
  (241, 24100, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 19),
  -- Miltank - Frustration - TM21
  (241, 24100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Miltank - Solar Beam - TM22
  (241, 24100, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 21),
  -- Miltank - Iron Tail - TM23
  (241, 24100, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 22),
  -- Miltank - Thunderbolt - TM24
  (241, 24100, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 23),
  -- Miltank - Thunder - TM25
  (241, 24100, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 24),
  -- Miltank - Earthquake - TM26
  (241, 24100, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 25),
  -- Miltank - Return - TM27
  (241, 24100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 26),
  -- Miltank - Shadow Ball - TM30
  (241, 24100, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 27),
  -- Miltank - Brick Break - TM31
  (241, 24100, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 28),
  -- Miltank - Double Team - TM32
  (241, 24100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 29),
  -- Miltank - Shock Wave - TM34
  (241, 24100, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 30),
  -- Miltank - Sandstorm - TM37
  (241, 24100, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 31),
  -- Miltank - Rock Tomb - TM39
  (241, 24100, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 32),
  -- Miltank - Facade - TM42
  (241, 24100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 33),
  -- Miltank - Secret Power - TM43
  (241, 24100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 34),
  -- Miltank - Rest - TM44
  (241, 24100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 35),
  -- Miltank - Attract - TM45
  (241, 24100, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 36),
  -- Miltank - Surf - HM03
  (241, 24100, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 37),
  -- Miltank - Strength - HM04
  (241, 24100, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 38),
  -- Miltank - Rock Smash - HM06
  (241, 24100, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 39),
  -- Miltank - Curse - Egg Move
  (241, 24100, 174, 5, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Miltank - Endure - Egg Move
  (241, 24100, 203, 5, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Miltank - Helping Hand - Egg Move
  (241, 24100, 270, 5, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Miltank - Present - Egg Move
  (241, 24100, 217, 5, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Miltank - Psych Up - Egg Move
  (241, 24100, 244, 5, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Miltank - Reversal - Egg Move
  (241, 24100, 179, 5, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Miltank - Seismic Toss - Egg Move
  (241, 24100, 69, 5, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Miltank - Sleep Talk - Egg Move
  (241, 24100, 214, 5, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Blissey - Pound - Level 1
  (242, 24200, 1, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blissey - Growl - Level 1
  (242, 24200, 45, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blissey - Tail Whip - Level 4
  (242, 24200, 39, 5, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Blissey - Refresh - Level 7
  (242, 24200, 287, 5, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Blissey - Soft-Boiled - Level 10
  (242, 24200, 135, 5, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Blissey - Double Slap - Level 13
  (242, 24200, 3, 5, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Blissey - Minimize - Level 18
  (242, 24200, 107, 5, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Blissey - Sing - Level 23
  (242, 24200, 47, 5, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Blissey - Egg Bomb - Level 28
  (242, 24200, 121, 5, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Blissey - Defense Curl - Level 33
  (242, 24200, 111, 5, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Blissey - Light Screen - Level 40
  (242, 24200, 113, 5, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Blissey - Double-Edge - Level 47
  (242, 24200, 38, 5, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Blissey - Focus Punch - TM01
  (242, 24200, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 13),
  -- Blissey - Water Pulse - TM03
  (242, 24200, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 14),
  -- Blissey - Calm Mind - TM04
  (242, 24200, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 15),
  -- Blissey - Toxic - TM06
  (242, 24200, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 16),
  -- Blissey - Hail - TM07
  (242, 24200, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 17),
  -- Blissey - Hidden Power - TM10
  (242, 24200, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 18),
  -- Blissey - Sunny Day - TM11
  (242, 24200, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 19),
  -- Blissey - Ice Beam - TM13
  (242, 24200, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 20),
  -- Blissey - Blizzard - TM14
  (242, 24200, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 21),
  -- Blissey - Hyper Beam - TM15
  (242, 24200, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 22),
  -- Blissey - Light Screen - TM16
  (242, 24200, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 23),
  -- Blissey - Protect - TM17
  (242, 24200, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 24),
  -- Blissey - Rain Dance - TM18
  (242, 24200, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 25),
  -- Blissey - Safeguard - TM20
  (242, 24200, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 26),
  -- Blissey - Frustration - TM21
  (242, 24200, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 27),
  -- Blissey - Solar Beam - TM22
  (242, 24200, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 28),
  -- Blissey - Iron Tail - TM23
  (242, 24200, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 29),
  -- Blissey - Thunderbolt - TM24
  (242, 24200, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 30),
  -- Blissey - Thunder - TM25
  (242, 24200, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 31),
  -- Blissey - Earthquake - TM26
  (242, 24200, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 32),
  -- Blissey - Return - TM27
  (242, 24200, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 33),
  -- Blissey - Psychic - TM29
  (242, 24200, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 34),
  -- Blissey - Shadow Ball - TM30
  (242, 24200, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 35),
  -- Blissey - Brick Break - TM31
  (242, 24200, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 36),
  -- Blissey - Double Team - TM32
  (242, 24200, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 37),
  -- Blissey - Shock Wave - TM34
  (242, 24200, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 38),
  -- Blissey - Flamethrower - TM35
  (242, 24200, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 39),
  -- Blissey - Sandstorm - TM37
  (242, 24200, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 40),
  -- Blissey - Fire Blast - TM38
  (242, 24200, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 41),
  -- Blissey - Rock Tomb - TM39
  (242, 24200, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 42),
  -- Blissey - Facade - TM42
  (242, 24200, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 43),
  -- Blissey - Secret Power - TM43
  (242, 24200, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 44),
  -- Blissey - Rest - TM44
  (242, 24200, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 45),
  -- Blissey - Attract - TM45
  (242, 24200, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 46),
  -- Blissey - Skill Swap - TM48
  (242, 24200, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 47),
  -- Blissey - Snatch - TM49
  (242, 24200, 289, 5, NULL, 2, NULL, NULL, 5002049, NULL, 48),
  -- Blissey - Strength - HM04
  (242, 24200, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 49),
  -- Blissey - Flash - HM05
  (242, 24200, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 50),
  -- Blissey - Rock Smash - HM06
  (242, 24200, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 51),
  -- Raikou - Bite - Level 1
  (243, 24300, 44, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raikou - Leer - Level 1
  (243, 24300, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raikou - Thunder Shock - Level 11
  (243, 24300, 84, 5, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Raikou - Roar - Level 21
  (243, 24300, 46, 5, NULL, 1, 21, NULL, NULL, NULL, 4),
  -- Raikou - Quick Attack - Level 31
  (243, 24300, 98, 5, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Raikou - Spark - Level 41
  (243, 24300, 209, 5, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Raikou - Reflect - Level 51
  (243, 24300, 115, 5, NULL, 1, 51, NULL, NULL, NULL, 7),
  -- Raikou - Crunch - Level 61
  (243, 24300, 242, 5, NULL, 1, 61, NULL, NULL, NULL, 8),
  -- Raikou - Thunder - Level 71
  (243, 24300, 87, 5, NULL, 1, 71, NULL, NULL, NULL, 9),
  -- Raikou - Calm Mind - Level 81
  (243, 24300, 347, 5, NULL, 1, 81, NULL, NULL, NULL, 10),
  -- Raikou - Calm Mind - TM04
  (243, 24300, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 11),
  -- Raikou - Roar - TM05
  (243, 24300, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 12),
  -- Raikou - Toxic - TM06
  (243, 24300, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Raikou - Hidden Power - TM10
  (243, 24300, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Raikou - Sunny Day - TM11
  (243, 24300, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Raikou - Hyper Beam - TM15
  (243, 24300, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 16),
  -- Raikou - Protect - TM17
  (243, 24300, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Raikou - Rain Dance - TM18
  (243, 24300, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 18),
  -- Raikou - Frustration - TM21
  (243, 24300, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Raikou - Iron Tail - TM23
  (243, 24300, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 20),
  -- Raikou - Thunderbolt - TM24
  (243, 24300, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 21),
  -- Raikou - Thunder - TM25
  (243, 24300, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 22),
  -- Raikou - Return - TM27
  (243, 24300, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Raikou - Dig - TM28
  (243, 24300, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 24),
  -- Raikou - Double Team - TM32
  (243, 24300, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 25),
  -- Raikou - Reflect - TM33
  (243, 24300, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 26),
  -- Raikou - Shock Wave - TM34
  (243, 24300, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 27),
  -- Raikou - Sandstorm - TM37
  (243, 24300, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 28),
  -- Raikou - Facade - TM42
  (243, 24300, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 29),
  -- Raikou - Secret Power - TM43
  (243, 24300, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 30),
  -- Raikou - Rest - TM44
  (243, 24300, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 31),
  -- Raikou - Cut - HM01
  (243, 24300, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 32),
  -- Raikou - Strength - HM04
  (243, 24300, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 33),
  -- Raikou - Flash - HM05
  (243, 24300, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 34),
  -- Raikou - Rock Smash - HM06
  (243, 24300, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 35),
  -- Entei - Bite - Level 1
  (244, 24400, 44, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Entei - Leer - Level 1
  (244, 24400, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Entei - Ember - Level 11
  (244, 24400, 52, 5, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Entei - Roar - Level 21
  (244, 24400, 46, 5, NULL, 1, 21, NULL, NULL, NULL, 4),
  -- Entei - Fire Spin - Level 31
  (244, 24400, 83, 5, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Entei - Stomp - Level 41
  (244, 24400, 23, 5, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Entei - Flamethrower - Level 51
  (244, 24400, 53, 5, NULL, 1, 51, NULL, NULL, NULL, 7),
  -- Entei - Swagger - Level 61
  (244, 24400, 207, 5, NULL, 1, 61, NULL, NULL, NULL, 8),
  -- Entei - Fire Blast - Level 71
  (244, 24400, 126, 5, NULL, 1, 71, NULL, NULL, NULL, 9),
  -- Entei - Calm Mind - Level 81
  (244, 24400, 347, 5, NULL, 1, 81, NULL, NULL, NULL, 10),
  -- Entei - Calm Mind - TM04
  (244, 24400, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 11),
  -- Entei - Roar - TM05
  (244, 24400, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 12),
  -- Entei - Toxic - TM06
  (244, 24400, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Entei - Hidden Power - TM10
  (244, 24400, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Entei - Sunny Day - TM11
  (244, 24400, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Entei - Hyper Beam - TM15
  (244, 24400, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 16),
  -- Entei - Protect - TM17
  (244, 24400, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Entei - Rain Dance - TM18
  (244, 24400, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 18),
  -- Entei - Frustration - TM21
  (244, 24400, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 19),
  -- Entei - Solar Beam - TM22
  (244, 24400, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 20),
  -- Entei - Iron Tail - TM23
  (244, 24400, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 21),
  -- Entei - Return - TM27
  (244, 24400, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 22),
  -- Entei - Dig - TM28
  (244, 24400, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 23),
  -- Entei - Double Team - TM32
  (244, 24400, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 24),
  -- Entei - Reflect - TM33
  (244, 24400, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 25),
  -- Entei - Flamethrower - TM35
  (244, 24400, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 26),
  -- Entei - Sandstorm - TM37
  (244, 24400, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 27),
  -- Entei - Fire Blast - TM38
  (244, 24400, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 28),
  -- Entei - Facade - TM42
  (244, 24400, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 29),
  -- Entei - Secret Power - TM43
  (244, 24400, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 30),
  -- Entei - Rest - TM44
  (244, 24400, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 31),
  -- Entei - Cut - HM01
  (244, 24400, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 32),
  -- Entei - Strength - HM04
  (244, 24400, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 33),
  -- Entei - Flash - HM05
  (244, 24400, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 34),
  -- Entei - Rock Smash - HM06
  (244, 24400, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 35),
  -- Suicune - Bite - Level 1
  (245, 24500, 44, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Suicune - Leer - Level 1
  (245, 24500, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Suicune - Bubble Beam - Level 11
  (245, 24500, 61, 5, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Suicune - Rain Dance - Level 21
  (245, 24500, 240, 5, NULL, 1, 21, NULL, NULL, NULL, 4),
  -- Suicune - Gust - Level 31
  (245, 24500, 16, 5, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Suicune - Aurora Beam - Level 41
  (245, 24500, 62, 5, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Suicune - Mist - Level 51
  (245, 24500, 54, 5, NULL, 1, 51, NULL, NULL, NULL, 7),
  -- Suicune - Mirror Coat - Level 61
  (245, 24500, 243, 5, NULL, 1, 61, NULL, NULL, NULL, 8),
  -- Suicune - Hydro Pump - Level 71
  (245, 24500, 56, 5, NULL, 1, 71, NULL, NULL, NULL, 9),
  -- Suicune - Calm Mind - Level 81
  (245, 24500, 347, 5, NULL, 1, 81, NULL, NULL, NULL, 10),
  -- Suicune - Water Pulse - TM03
  (245, 24500, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 11),
  -- Suicune - Calm Mind - TM04
  (245, 24500, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 12),
  -- Suicune - Roar - TM05
  (245, 24500, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 13),
  -- Suicune - Toxic - TM06
  (245, 24500, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Suicune - Hail - TM07
  (245, 24500, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 15),
  -- Suicune - Hidden Power - TM10
  (245, 24500, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Suicune - Sunny Day - TM11
  (245, 24500, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 17),
  -- Suicune - Ice Beam - TM13
  (245, 24500, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 18),
  -- Suicune - Blizzard - TM14
  (245, 24500, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 19),
  -- Suicune - Hyper Beam - TM15
  (245, 24500, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 20),
  -- Suicune - Protect - TM17
  (245, 24500, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 21),
  -- Suicune - Rain Dance - TM18
  (245, 24500, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 22),
  -- Suicune - Frustration - TM21
  (245, 24500, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 23),
  -- Suicune - Iron Tail - TM23
  (245, 24500, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 24),
  -- Suicune - Return - TM27
  (245, 24500, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 25),
  -- Suicune - Dig - TM28
  (245, 24500, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 26),
  -- Suicune - Double Team - TM32
  (245, 24500, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 27),
  -- Suicune - Reflect - TM33
  (245, 24500, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 28),
  -- Suicune - Sandstorm - TM37
  (245, 24500, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 29),
  -- Suicune - Facade - TM42
  (245, 24500, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 30),
  -- Suicune - Secret Power - TM43
  (245, 24500, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 31),
  -- Suicune - Rest - TM44
  (245, 24500, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 32),
  -- Suicune - Cut - HM01
  (245, 24500, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 33),
  -- Suicune - Surf - HM03
  (245, 24500, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 34),
  -- Suicune - Rock Smash - HM06
  (245, 24500, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 35),
  -- Suicune - Waterfall - HM07
  (245, 24500, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 36),
  -- Suicune - Dive - HM08
  (245, 24500, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 37),
  -- Larvitar - Bite - Level 1
  (246, 24600, 44, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Larvitar - Leer - Level 1
  (246, 24600, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Larvitar - Sandstorm - Level 8
  (246, 24600, 201, 5, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Larvitar - Screech - Level 15
  (246, 24600, 103, 5, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Larvitar - Rock Slide - Level 22
  (246, 24600, 157, 5, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Larvitar - Thrash - Level 29
  (246, 24600, 37, 5, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Larvitar - Scary Face - Level 36
  (246, 24600, 184, 5, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Larvitar - Crunch - Level 43
  (246, 24600, 242, 5, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Larvitar - Earthquake - Level 50
  (246, 24600, 89, 5, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Larvitar - Hyper Beam - Level 57
  (246, 24600, 63, 5, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Larvitar - Toxic - TM06
  (246, 24600, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 11),
  -- Larvitar - Hidden Power - TM10
  (246, 24600, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 12),
  -- Larvitar - Sunny Day - TM11
  (246, 24600, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 13),
  -- Larvitar - Taunt - TM12
  (246, 24600, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 14),
  -- Larvitar - Hyper Beam - TM15
  (246, 24600, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 15),
  -- Larvitar - Protect - TM17
  (246, 24600, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 16),
  -- Larvitar - Rain Dance - TM18
  (246, 24600, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 17),
  -- Larvitar - Frustration - TM21
  (246, 24600, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 18),
  -- Larvitar - Earthquake - TM26
  (246, 24600, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 19),
  -- Larvitar - Return - TM27
  (246, 24600, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 20),
  -- Larvitar - Dig - TM28
  (246, 24600, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 21),
  -- Larvitar - Brick Break - TM31
  (246, 24600, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 22),
  -- Larvitar - Double Team - TM32
  (246, 24600, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 23),
  -- Larvitar - Sandstorm - TM37
  (246, 24600, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 24),
  -- Larvitar - Torment - TM41
  (246, 24600, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 25),
  -- Larvitar - Facade - TM42
  (246, 24600, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 26),
  -- Larvitar - Secret Power - TM43
  (246, 24600, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 27),
  -- Larvitar - Rest - TM44
  (246, 24600, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 28),
  -- Larvitar - Attract - TM45
  (246, 24600, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 29),
  -- Larvitar - Rock Smash - HM06
  (246, 24600, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 30),
  -- Larvitar - Ancient Power - Egg Move
  (246, 24600, 246, 5, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Larvitar - Curse - Egg Move
  (246, 24600, 174, 5, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Larvitar - Dragon Dance - Egg Move
  (246, 24600, 349, 5, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Larvitar - Focus Energy - Egg Move
  (246, 24600, 116, 5, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Larvitar - Outrage - Egg Move
  (246, 24600, 200, 5, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Larvitar - Pursuit - Egg Move
  (246, 24600, 228, 5, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Larvitar - Stomp - Egg Move
  (246, 24600, 23, 5, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Pupitar - Bite - Level 1
  (247, 24700, 44, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pupitar - Leer - Level 1
  (247, 24700, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pupitar - Sandstorm - Level 1
  (247, 24700, 201, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pupitar - Screech - Level 1
  (247, 24700, 103, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pupitar - Sandstorm - Level 8
  (247, 24700, 201, 5, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Pupitar - Screech - Level 15
  (247, 24700, 103, 5, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Pupitar - Rock Slide - Level 22
  (247, 24700, 157, 5, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Pupitar - Thrash - Level 29
  (247, 24700, 37, 5, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Pupitar - Scary Face - Level 38
  (247, 24700, 184, 5, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Pupitar - Crunch - Level 47
  (247, 24700, 242, 5, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Pupitar - Earthquake - Level 56
  (247, 24700, 89, 5, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Pupitar - Hyper Beam - Level 65
  (247, 24700, 63, 5, NULL, 1, 65, NULL, NULL, NULL, 12),
  -- Pupitar - Toxic - TM06
  (247, 24700, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Pupitar - Hidden Power - TM10
  (247, 24700, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Pupitar - Sunny Day - TM11
  (247, 24700, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Pupitar - Taunt - TM12
  (247, 24700, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 16),
  -- Pupitar - Hyper Beam - TM15
  (247, 24700, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 17),
  -- Pupitar - Protect - TM17
  (247, 24700, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Pupitar - Rain Dance - TM18
  (247, 24700, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 19),
  -- Pupitar - Frustration - TM21
  (247, 24700, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 20),
  -- Pupitar - Earthquake - TM26
  (247, 24700, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 21),
  -- Pupitar - Return - TM27
  (247, 24700, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 22),
  -- Pupitar - Dig - TM28
  (247, 24700, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 23),
  -- Pupitar - Brick Break - TM31
  (247, 24700, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 24),
  -- Pupitar - Double Team - TM32
  (247, 24700, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 25),
  -- Pupitar - Sandstorm - TM37
  (247, 24700, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 26),
  -- Pupitar - Torment - TM41
  (247, 24700, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 27),
  -- Pupitar - Facade - TM42
  (247, 24700, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 28),
  -- Pupitar - Secret Power - TM43
  (247, 24700, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 29),
  -- Pupitar - Rest - TM44
  (247, 24700, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 30),
  -- Pupitar - Attract - TM45
  (247, 24700, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 31),
  -- Pupitar - Rock Smash - HM06
  (247, 24700, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 32),
  -- Tyranitar - Bite - Level 1
  (248, 24800, 44, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyranitar - Leer - Level 1
  (248, 24800, 43, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tyranitar - Sandstorm - Level 1
  (248, 24800, 201, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tyranitar - Screech - Level 1
  (248, 24800, 103, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tyranitar - Sandstorm - Level 8
  (248, 24800, 201, 5, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Tyranitar - Screech - Level 15
  (248, 24800, 103, 5, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Tyranitar - Rock Slide - Level 22
  (248, 24800, 157, 5, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Tyranitar - Thrash - Level 29
  (248, 24800, 37, 5, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Tyranitar - Scary Face - Level 38
  (248, 24800, 184, 5, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Tyranitar - Crunch - Level 47
  (248, 24800, 242, 5, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Tyranitar - Earthquake - Level 61
  (248, 24800, 89, 5, NULL, 1, 61, NULL, NULL, NULL, 11),
  -- Tyranitar - Hyper Beam - Level 75
  (248, 24800, 63, 5, NULL, 1, 75, NULL, NULL, NULL, 12),
  -- Tyranitar - Focus Punch - TM01
  (248, 24800, 264, 5, NULL, 2, NULL, NULL, 5002001, NULL, 13),
  -- Tyranitar - Dragon Claw - TM02
  (248, 24800, 337, 5, NULL, 2, NULL, NULL, 5002002, NULL, 14),
  -- Tyranitar - Water Pulse - TM03
  (248, 24800, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 15),
  -- Tyranitar - Roar - TM05
  (248, 24800, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 16),
  -- Tyranitar - Toxic - TM06
  (248, 24800, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 17),
  -- Tyranitar - Hidden Power - TM10
  (248, 24800, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 18),
  -- Tyranitar - Sunny Day - TM11
  (248, 24800, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 19),
  -- Tyranitar - Taunt - TM12
  (248, 24800, 269, 5, NULL, 2, NULL, NULL, 5002012, NULL, 20),
  -- Tyranitar - Ice Beam - TM13
  (248, 24800, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 21),
  -- Tyranitar - Blizzard - TM14
  (248, 24800, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 22),
  -- Tyranitar - Hyper Beam - TM15
  (248, 24800, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 23),
  -- Tyranitar - Protect - TM17
  (248, 24800, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 24),
  -- Tyranitar - Rain Dance - TM18
  (248, 24800, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 25),
  -- Tyranitar - Frustration - TM21
  (248, 24800, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 26),
  -- Tyranitar - Iron Tail - TM23
  (248, 24800, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 27),
  -- Tyranitar - Thunderbolt - TM24
  (248, 24800, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 28),
  -- Tyranitar - Thunder - TM25
  (248, 24800, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 29),
  -- Tyranitar - Earthquake - TM26
  (248, 24800, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 30),
  -- Tyranitar - Return - TM27
  (248, 24800, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 31),
  -- Tyranitar - Dig - TM28
  (248, 24800, 91, 5, NULL, 2, NULL, NULL, 5002028, NULL, 32),
  -- Tyranitar - Brick Break - TM31
  (248, 24800, 280, 5, NULL, 2, NULL, NULL, 5002031, NULL, 33),
  -- Tyranitar - Double Team - TM32
  (248, 24800, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 34),
  -- Tyranitar - Shock Wave - TM34
  (248, 24800, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 35),
  -- Tyranitar - Flamethrower - TM35
  (248, 24800, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 36),
  -- Tyranitar - Sandstorm - TM37
  (248, 24800, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 37),
  -- Tyranitar - Fire Blast - TM38
  (248, 24800, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 38),
  -- Tyranitar - Rock Tomb - TM39
  (248, 24800, 317, 5, NULL, 2, NULL, NULL, 5002039, NULL, 39),
  -- Tyranitar - Aerial Ace - TM40
  (248, 24800, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 40),
  -- Tyranitar - Torment - TM41
  (248, 24800, 259, 5, NULL, 2, NULL, NULL, 5002041, NULL, 41),
  -- Tyranitar - Facade - TM42
  (248, 24800, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 42),
  -- Tyranitar - Secret Power - TM43
  (248, 24800, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 43),
  -- Tyranitar - Rest - TM44
  (248, 24800, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 44),
  -- Tyranitar - Attract - TM45
  (248, 24800, 213, 5, NULL, 2, NULL, NULL, 5002045, NULL, 45),
  -- Tyranitar - Cut - HM01
  (248, 24800, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 46),
  -- Tyranitar - Surf - HM03
  (248, 24800, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 47),
  -- Tyranitar - Strength - HM04
  (248, 24800, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 48),
  -- Tyranitar - Rock Smash - HM06
  (248, 24800, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 49),
  -- Lugia - Whirlwind - Level 1
  (249, 24900, 18, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lugia - Safeguard - Level 11
  (249, 24900, 219, 5, NULL, 1, 11, NULL, NULL, NULL, 2),
  -- Lugia - Gust - Level 22
  (249, 24900, 16, 5, NULL, 1, 22, NULL, NULL, NULL, 3),
  -- Lugia - Recover - Level 33
  (249, 24900, 105, 5, NULL, 1, 33, NULL, NULL, NULL, 4),
  -- Lugia - Hydro Pump - Level 44
  (249, 24900, 56, 5, NULL, 1, 44, NULL, NULL, NULL, 5),
  -- Lugia - Rain Dance - Level 55
  (249, 24900, 240, 5, NULL, 1, 55, NULL, NULL, NULL, 6),
  -- Lugia - Swift - Level 66
  (249, 24900, 129, 5, NULL, 1, 66, NULL, NULL, NULL, 7),
  -- Lugia - Aeroblast - Level 77
  (249, 24900, 177, 5, NULL, 1, 77, NULL, NULL, NULL, 8),
  -- Lugia - Ancient Power - Level 88
  (249, 24900, 246, 5, NULL, 1, 88, NULL, NULL, NULL, 9),
  -- Lugia - Future Sight - Level 99
  (249, 24900, 248, 5, NULL, 1, 99, NULL, NULL, NULL, 10),
  -- Lugia - Water Pulse - TM03
  (249, 24900, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 11),
  -- Lugia - Calm Mind - TM04
  (249, 24900, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 12),
  -- Lugia - Roar - TM05
  (249, 24900, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 13),
  -- Lugia - Toxic - TM06
  (249, 24900, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 14),
  -- Lugia - Hail - TM07
  (249, 24900, 258, 5, NULL, 2, NULL, NULL, 5002007, NULL, 15),
  -- Lugia - Hidden Power - TM10
  (249, 24900, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 16),
  -- Lugia - Sunny Day - TM11
  (249, 24900, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 17),
  -- Lugia - Ice Beam - TM13
  (249, 24900, 58, 5, NULL, 2, NULL, NULL, 5002013, NULL, 18),
  -- Lugia - Blizzard - TM14
  (249, 24900, 59, 5, NULL, 2, NULL, NULL, 5002014, NULL, 19),
  -- Lugia - Hyper Beam - TM15
  (249, 24900, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 20),
  -- Lugia - Light Screen - TM16
  (249, 24900, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 21),
  -- Lugia - Protect - TM17
  (249, 24900, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 22),
  -- Lugia - Rain Dance - TM18
  (249, 24900, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 23),
  -- Lugia - Giga Drain - TM19
  (249, 24900, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 24),
  -- Lugia - Safeguard - TM20
  (249, 24900, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 25),
  -- Lugia - Frustration - TM21
  (249, 24900, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 26),
  -- Lugia - Iron Tail - TM23
  (249, 24900, 231, 5, NULL, 2, NULL, NULL, 5002023, NULL, 27),
  -- Lugia - Thunderbolt - TM24
  (249, 24900, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 28),
  -- Lugia - Thunder - TM25
  (249, 24900, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 29),
  -- Lugia - Earthquake - TM26
  (249, 24900, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 30),
  -- Lugia - Return - TM27
  (249, 24900, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 31),
  -- Lugia - Psychic - TM29
  (249, 24900, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 32),
  -- Lugia - Shadow Ball - TM30
  (249, 24900, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 33),
  -- Lugia - Double Team - TM32
  (249, 24900, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 34),
  -- Lugia - Reflect - TM33
  (249, 24900, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 35),
  -- Lugia - Shock Wave - TM34
  (249, 24900, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 36),
  -- Lugia - Sandstorm - TM37
  (249, 24900, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 37),
  -- Lugia - Aerial Ace - TM40
  (249, 24900, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 38),
  -- Lugia - Facade - TM42
  (249, 24900, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 39),
  -- Lugia - Secret Power - TM43
  (249, 24900, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 40),
  -- Lugia - Rest - TM44
  (249, 24900, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 41),
  -- Lugia - Steel Wing - TM47
  (249, 24900, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 42),
  -- Lugia - Skill Swap - TM48
  (249, 24900, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 43),
  -- Lugia - Fly - HM02
  (249, 24900, 19, 5, NULL, 3, NULL, NULL, 5003002, NULL, 44),
  -- Lugia - Surf - HM03
  (249, 24900, 57, 5, NULL, 3, NULL, NULL, 5003003, NULL, 45),
  -- Lugia - Strength - HM04
  (249, 24900, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 46),
  -- Lugia - Rock Smash - HM06
  (249, 24900, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 47),
  -- Lugia - Waterfall - HM07
  (249, 24900, 127, 5, NULL, 3, NULL, NULL, 5003007, NULL, 48),
  -- Lugia - Dive - HM08
  (249, 24900, 291, 5, NULL, 3, NULL, NULL, 5003008, NULL, 49),
  -- Ho-Oh - Whirlwind - Level 1
  (250, 25000, 18, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ho-Oh - Safeguard - Level 11
  (250, 25000, 219, 5, NULL, 1, 11, NULL, NULL, NULL, 2),
  -- Ho-Oh - Gust - Level 22
  (250, 25000, 16, 5, NULL, 1, 22, NULL, NULL, NULL, 3),
  -- Ho-Oh - Recover - Level 33
  (250, 25000, 105, 5, NULL, 1, 33, NULL, NULL, NULL, 4),
  -- Ho-Oh - Fire Blast - Level 44
  (250, 25000, 126, 5, NULL, 1, 44, NULL, NULL, NULL, 5),
  -- Ho-Oh - Sunny Day - Level 55
  (250, 25000, 241, 5, NULL, 1, 55, NULL, NULL, NULL, 6),
  -- Ho-Oh - Swift - Level 66
  (250, 25000, 129, 5, NULL, 1, 66, NULL, NULL, NULL, 7),
  -- Ho-Oh - Sacred Fire - Level 77
  (250, 25000, 221, 5, NULL, 1, 77, NULL, NULL, NULL, 8),
  -- Ho-Oh - Ancient Power - Level 88
  (250, 25000, 246, 5, NULL, 1, 88, NULL, NULL, NULL, 9),
  -- Ho-Oh - Future Sight - Level 99
  (250, 25000, 248, 5, NULL, 1, 99, NULL, NULL, NULL, 10),
  -- Ho-Oh - Calm Mind - TM04
  (250, 25000, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 11),
  -- Ho-Oh - Roar - TM05
  (250, 25000, 46, 5, NULL, 2, NULL, NULL, 5002005, NULL, 12),
  -- Ho-Oh - Toxic - TM06
  (250, 25000, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 13),
  -- Ho-Oh - Hidden Power - TM10
  (250, 25000, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 14),
  -- Ho-Oh - Sunny Day - TM11
  (250, 25000, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 15),
  -- Ho-Oh - Hyper Beam - TM15
  (250, 25000, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 16),
  -- Ho-Oh - Light Screen - TM16
  (250, 25000, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 17),
  -- Ho-Oh - Protect - TM17
  (250, 25000, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 18),
  -- Ho-Oh - Rain Dance - TM18
  (250, 25000, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 19),
  -- Ho-Oh - Giga Drain - TM19
  (250, 25000, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 20),
  -- Ho-Oh - Safeguard - TM20
  (250, 25000, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 21),
  -- Ho-Oh - Frustration - TM21
  (250, 25000, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 22),
  -- Ho-Oh - Solar Beam - TM22
  (250, 25000, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 23),
  -- Ho-Oh - Thunderbolt - TM24
  (250, 25000, 85, 5, NULL, 2, NULL, NULL, 5002024, NULL, 24),
  -- Ho-Oh - Thunder - TM25
  (250, 25000, 87, 5, NULL, 2, NULL, NULL, 5002025, NULL, 25),
  -- Ho-Oh - Earthquake - TM26
  (250, 25000, 89, 5, NULL, 2, NULL, NULL, 5002026, NULL, 26),
  -- Ho-Oh - Return - TM27
  (250, 25000, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 27),
  -- Ho-Oh - Psychic - TM29
  (250, 25000, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 28),
  -- Ho-Oh - Shadow Ball - TM30
  (250, 25000, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 29),
  -- Ho-Oh - Double Team - TM32
  (250, 25000, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 30),
  -- Ho-Oh - Reflect - TM33
  (250, 25000, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 31),
  -- Ho-Oh - Shock Wave - TM34
  (250, 25000, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 32),
  -- Ho-Oh - Flamethrower - TM35
  (250, 25000, 53, 5, NULL, 2, NULL, NULL, 5002035, NULL, 33),
  -- Ho-Oh - Sandstorm - TM37
  (250, 25000, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 34),
  -- Ho-Oh - Fire Blast - TM38
  (250, 25000, 126, 5, NULL, 2, NULL, NULL, 5002038, NULL, 35),
  -- Ho-Oh - Aerial Ace - TM40
  (250, 25000, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 36),
  -- Ho-Oh - Facade - TM42
  (250, 25000, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 37),
  -- Ho-Oh - Secret Power - TM43
  (250, 25000, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 38),
  -- Ho-Oh - Rest - TM44
  (250, 25000, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 39),
  -- Ho-Oh - Steel Wing - TM47
  (250, 25000, 211, 5, NULL, 2, NULL, NULL, 5002047, NULL, 40),
  -- Ho-Oh - Overheat - TM50
  (250, 25000, 315, 5, NULL, 2, NULL, NULL, 5002050, NULL, 41),
  -- Ho-Oh - Fly - HM02
  (250, 25000, 19, 5, NULL, 3, NULL, NULL, 5003002, NULL, 42),
  -- Ho-Oh - Strength - HM04
  (250, 25000, 70, 5, NULL, 3, NULL, NULL, 5003004, NULL, 43),
  -- Ho-Oh - Flash - HM05
  (250, 25000, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 44),
  -- Ho-Oh - Rock Smash - HM06
  (250, 25000, 249, 5, NULL, 3, NULL, NULL, 5003006, NULL, 45),
  -- Celebi - Leech Seed - Level 1
  (251, 25100, 73, 5, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Celebi - Confusion - Level 1
  (251, 25100, 93, 5, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Celebi - Recover - Level 1
  (251, 25100, 105, 5, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Celebi - Heal Bell - Level 1
  (251, 25100, 215, 5, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Celebi - Safeguard - Level 10
  (251, 25100, 219, 5, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Celebi - Ancient Power - Level 20
  (251, 25100, 246, 5, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Celebi - Future Sight - Level 30
  (251, 25100, 248, 5, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Celebi - Baton Pass - Level 40
  (251, 25100, 226, 5, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Celebi - Perish Song - Level 50
  (251, 25100, 195, 5, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Celebi - Water Pulse - TM03
  (251, 25100, 352, 5, NULL, 2, NULL, NULL, 5002003, NULL, 10),
  -- Celebi - Calm Mind - TM04
  (251, 25100, 347, 5, NULL, 2, NULL, NULL, 5002004, NULL, 11),
  -- Celebi - Toxic - TM06
  (251, 25100, 92, 5, NULL, 2, NULL, NULL, 5002006, NULL, 12),
  -- Celebi - Hidden Power - TM10
  (251, 25100, 237, 5, NULL, 2, NULL, NULL, 5002010, NULL, 13),
  -- Celebi - Sunny Day - TM11
  (251, 25100, 241, 5, NULL, 2, NULL, NULL, 5002011, NULL, 14),
  -- Celebi - Hyper Beam - TM15
  (251, 25100, 63, 5, NULL, 2, NULL, NULL, 5002015, NULL, 15),
  -- Celebi - Light Screen - TM16
  (251, 25100, 113, 5, NULL, 2, NULL, NULL, 5002016, NULL, 16),
  -- Celebi - Protect - TM17
  (251, 25100, 182, 5, NULL, 2, NULL, NULL, 5002017, NULL, 17),
  -- Celebi - Rain Dance - TM18
  (251, 25100, 240, 5, NULL, 2, NULL, NULL, 5002018, NULL, 18),
  -- Celebi - Giga Drain - TM19
  (251, 25100, 202, 5, NULL, 2, NULL, NULL, 5002019, NULL, 19),
  -- Celebi - Safeguard - TM20
  (251, 25100, 219, 5, NULL, 2, NULL, NULL, 5002020, NULL, 20),
  -- Celebi - Frustration - TM21
  (251, 25100, 218, 5, NULL, 2, NULL, NULL, 5002021, NULL, 21),
  -- Celebi - Solar Beam - TM22
  (251, 25100, 76, 5, NULL, 2, NULL, NULL, 5002022, NULL, 22),
  -- Celebi - Return - TM27
  (251, 25100, 216, 5, NULL, 2, NULL, NULL, 5002027, NULL, 23),
  -- Celebi - Psychic - TM29
  (251, 25100, 94, 5, NULL, 2, NULL, NULL, 5002029, NULL, 24),
  -- Celebi - Shadow Ball - TM30
  (251, 25100, 247, 5, NULL, 2, NULL, NULL, 5002030, NULL, 25),
  -- Celebi - Double Team - TM32
  (251, 25100, 104, 5, NULL, 2, NULL, NULL, 5002032, NULL, 26),
  -- Celebi - Reflect - TM33
  (251, 25100, 115, 5, NULL, 2, NULL, NULL, 5002033, NULL, 27),
  -- Celebi - Shock Wave - TM34
  (251, 25100, 351, 5, NULL, 2, NULL, NULL, 5002034, NULL, 28),
  -- Celebi - Sandstorm - TM37
  (251, 25100, 201, 5, NULL, 2, NULL, NULL, 5002037, NULL, 29),
  -- Celebi - Aerial Ace - TM40
  (251, 25100, 332, 5, NULL, 2, NULL, NULL, 5002040, NULL, 30),
  -- Celebi - Facade - TM42
  (251, 25100, 263, 5, NULL, 2, NULL, NULL, 5002042, NULL, 31),
  -- Celebi - Secret Power - TM43
  (251, 25100, 290, 5, NULL, 2, NULL, NULL, 5002043, NULL, 32),
  -- Celebi - Rest - TM44
  (251, 25100, 156, 5, NULL, 2, NULL, NULL, 5002044, NULL, 33),
  -- Celebi - Skill Swap - TM48
  (251, 25100, 285, 5, NULL, 2, NULL, NULL, 5002048, NULL, 34),
  -- Celebi - Cut - HM01
  (251, 25100, 15, 5, NULL, 3, NULL, NULL, 5003001, NULL, 35),
  -- Celebi - Flash - HM05
  (251, 25100, 148, 5, NULL, 3, NULL, NULL, 5003005, NULL, 36);
