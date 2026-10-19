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
-- Pokémon: #202-#251
-- Rows: 1828
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
  -- Wobbuffet - Counter - Level 1
  (202, 20200, 68, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wobbuffet - Mirror Coat - Level 1
  (202, 20200, 243, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wobbuffet - Safeguard - Level 1
  (202, 20200, 219, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wobbuffet - Destiny Bond - Level 1
  (202, 20200, 194, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Girafarig - Tackle - Level 1
  (203, 20300, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Girafarig - Growl - Level 1
  (203, 20300, 45, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Girafarig - Confusion - Level 1
  (203, 20300, 93, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Girafarig - Stomp - Level 1
  (203, 20300, 23, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Girafarig - Confusion - Level 7
  (203, 20300, 93, 3, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Girafarig - Stomp - Level 13
  (203, 20300, 23, 3, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Girafarig - Agility - Level 20
  (203, 20300, 97, 3, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Girafarig - Baton Pass - Level 30
  (203, 20300, 226, 3, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Girafarig - Psybeam - Level 41
  (203, 20300, 60, 3, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Girafarig - Crunch - Level 54
  (203, 20300, 242, 3, NULL, 1, 54, NULL, NULL, NULL, 10),
  -- Girafarig - Headbutt - TM02
  (203, 20300, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Girafarig - Curse - TM03
  (203, 20300, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Girafarig - Toxic - TM06
  (203, 20300, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Girafarig - Zap Cannon - TM07
  (203, 20300, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 14),
  -- Girafarig - Rock Smash - TM08
  (203, 20300, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 15),
  -- Girafarig - Psych Up - TM09
  (203, 20300, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 16),
  -- Girafarig - Hidden Power - TM10
  (203, 20300, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 17),
  -- Girafarig - Sunny Day - TM11
  (203, 20300, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 18),
  -- Girafarig - Snore - TM13
  (203, 20300, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 19),
  -- Girafarig - Protect - TM17
  (203, 20300, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Girafarig - Endure - TM20
  (203, 20300, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Girafarig - Frustration - TM21
  (203, 20300, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Girafarig - Iron Tail - TM23
  (203, 20300, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 23),
  -- Girafarig - Thunder - TM25
  (203, 20300, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 24),
  -- Girafarig - Earthquake - TM26
  (203, 20300, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 25),
  -- Girafarig - Return - TM27
  (203, 20300, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 26),
  -- Girafarig - Psychic - TM29
  (203, 20300, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 27),
  -- Girafarig - Shadow Ball - TM30
  (203, 20300, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 28),
  -- Girafarig - Mud-Slap - TM31
  (203, 20300, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 29),
  -- Girafarig - Double Team - TM32
  (203, 20300, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 30),
  -- Girafarig - Swagger - TM34
  (203, 20300, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 31),
  -- Girafarig - Sleep Talk - TM35
  (203, 20300, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 32),
  -- Girafarig - Swift - TM39
  (203, 20300, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 33),
  -- Girafarig - Dream Eater - TM42
  (203, 20300, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 34),
  -- Girafarig - Rest - TM44
  (203, 20300, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 35),
  -- Girafarig - Attract - TM45
  (203, 20300, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 36),
  -- Girafarig - Thief - TM46
  (203, 20300, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 37),
  -- Girafarig - Nightmare - TM50
  (203, 20300, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 38),
  -- Girafarig - Strength - HM04
  (203, 20300, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 39),
  -- Girafarig - Amnesia - Egg Move
  (203, 20300, 133, 3, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Girafarig - Beat Up - Egg Move
  (203, 20300, 251, 3, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Girafarig - Foresight - Egg Move
  (203, 20300, 193, 3, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Girafarig - Future Sight - Egg Move
  (203, 20300, 248, 3, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Girafarig - Take Down - Egg Move
  (203, 20300, 36, 3, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Pineco - Tackle - Level 1
  (204, 20400, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pineco - Protect - Level 1
  (204, 20400, 182, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pineco - Self-Destruct - Level 8
  (204, 20400, 120, 3, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Pineco - Take Down - Level 15
  (204, 20400, 36, 3, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Pineco - Rapid Spin - Level 22
  (204, 20400, 229, 3, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Pineco - Bide - Level 29
  (204, 20400, 117, 3, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Pineco - Explosion - Level 36
  (204, 20400, 153, 3, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Pineco - Spikes - Level 43
  (204, 20400, 191, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Pineco - Double-Edge - Level 50
  (204, 20400, 38, 3, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Pineco - Headbutt - TM02
  (204, 20400, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 10),
  -- Pineco - Curse - TM03
  (204, 20400, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Pineco - Rollout - TM04
  (204, 20400, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 12),
  -- Pineco - Toxic - TM06
  (204, 20400, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Pineco - Rock Smash - TM08
  (204, 20400, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 14),
  -- Pineco - Hidden Power - TM10
  (204, 20400, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Pineco - Sunny Day - TM11
  (204, 20400, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 16),
  -- Pineco - Sweet Scent - TM12
  (204, 20400, 230, 3, NULL, 2, NULL, NULL, 3002012, NULL, 17),
  -- Pineco - Snore - TM13
  (204, 20400, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 18),
  -- Pineco - Protect - TM17
  (204, 20400, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Pineco - Giga Drain - TM19
  (204, 20400, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 20),
  -- Pineco - Endure - TM20
  (204, 20400, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Pineco - Frustration - TM21
  (204, 20400, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Pineco - Solar Beam - TM22
  (204, 20400, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 23),
  -- Pineco - Return - TM27
  (204, 20400, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 24),
  -- Pineco - Double Team - TM32
  (204, 20400, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 25),
  -- Pineco - Swagger - TM34
  (204, 20400, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Pineco - Sleep Talk - TM35
  (204, 20400, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Pineco - Defense Curl - TM40
  (204, 20400, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 28),
  -- Pineco - Rest - TM44
  (204, 20400, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 29),
  -- Pineco - Attract - TM45
  (204, 20400, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 30),
  -- Pineco - Strength - HM04
  (204, 20400, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 31),
  -- Pineco - Flail - Egg Move
  (204, 20400, 175, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Pineco - Pin Missile - Egg Move
  (204, 20400, 42, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Pineco - Reflect - Egg Move
  (204, 20400, 115, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Pineco - Swift - Egg Move
  (204, 20400, 129, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Forretress - Tackle - Level 1
  (205, 20500, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Forretress - Protect - Level 1
  (205, 20500, 182, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Forretress - Self-Destruct - Level 1
  (205, 20500, 120, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Forretress - Self-Destruct - Level 8
  (205, 20500, 120, 3, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Forretress - Take Down - Level 15
  (205, 20500, 36, 3, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Forretress - Rapid Spin - Level 22
  (205, 20500, 229, 3, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Forretress - Bide - Level 29
  (205, 20500, 117, 3, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Forretress - Explosion - Level 39
  (205, 20500, 153, 3, NULL, 1, 39, NULL, NULL, NULL, 8),
  -- Forretress - Spikes - Level 49
  (205, 20500, 191, 3, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Forretress - Double-Edge - Level 59
  (205, 20500, 38, 3, NULL, 1, 59, NULL, NULL, NULL, 10),
  -- Forretress - Headbutt - TM02
  (205, 20500, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Forretress - Curse - TM03
  (205, 20500, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Forretress - Rollout - TM04
  (205, 20500, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 13),
  -- Forretress - Toxic - TM06
  (205, 20500, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Forretress - Rock Smash - TM08
  (205, 20500, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 15),
  -- Forretress - Hidden Power - TM10
  (205, 20500, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 16),
  -- Forretress - Sunny Day - TM11
  (205, 20500, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 17),
  -- Forretress - Sweet Scent - TM12
  (205, 20500, 230, 3, NULL, 2, NULL, NULL, 3002012, NULL, 18),
  -- Forretress - Snore - TM13
  (205, 20500, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 19),
  -- Forretress - Hyper Beam - TM15
  (205, 20500, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 20),
  -- Forretress - Protect - TM17
  (205, 20500, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 21),
  -- Forretress - Giga Drain - TM19
  (205, 20500, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 22),
  -- Forretress - Endure - TM20
  (205, 20500, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 23),
  -- Forretress - Frustration - TM21
  (205, 20500, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 24),
  -- Forretress - Solar Beam - TM22
  (205, 20500, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 25),
  -- Forretress - Return - TM27
  (205, 20500, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 26),
  -- Forretress - Double Team - TM32
  (205, 20500, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 27),
  -- Forretress - Swagger - TM34
  (205, 20500, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 28),
  -- Forretress - Sleep Talk - TM35
  (205, 20500, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 29),
  -- Forretress - Sandstorm - TM37
  (205, 20500, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 30),
  -- Forretress - Defense Curl - TM40
  (205, 20500, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 31),
  -- Forretress - Rest - TM44
  (205, 20500, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 32),
  -- Forretress - Attract - TM45
  (205, 20500, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 33),
  -- Forretress - Strength - HM04
  (205, 20500, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 34),
  -- Dunsparce - Rage - Level 1
  (206, 20600, 99, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dunsparce - Defense Curl - Level 5
  (206, 20600, 111, 3, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Dunsparce - Glare - Level 13
  (206, 20600, 137, 3, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Dunsparce - Spite - Level 18
  (206, 20600, 180, 3, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Dunsparce - Pursuit - Level 26
  (206, 20600, 228, 3, NULL, 1, 26, NULL, NULL, NULL, 5),
  -- Dunsparce - Screech - Level 30
  (206, 20600, 103, 3, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Dunsparce - Take Down - Level 38
  (206, 20600, 36, 3, NULL, 1, 38, NULL, NULL, NULL, 7),
  -- Dunsparce - Headbutt - TM02
  (206, 20600, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 8),
  -- Dunsparce - Curse - TM03
  (206, 20600, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 9),
  -- Dunsparce - Rollout - TM04
  (206, 20600, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 10),
  -- Dunsparce - Toxic - TM06
  (206, 20600, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Dunsparce - Zap Cannon - TM07
  (206, 20600, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 12),
  -- Dunsparce - Rock Smash - TM08
  (206, 20600, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 13),
  -- Dunsparce - Psych Up - TM09
  (206, 20600, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 14),
  -- Dunsparce - Hidden Power - TM10
  (206, 20600, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Dunsparce - Sunny Day - TM11
  (206, 20600, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 16),
  -- Dunsparce - Snore - TM13
  (206, 20600, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 17),
  -- Dunsparce - Protect - TM17
  (206, 20600, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 18),
  -- Dunsparce - Rain Dance - TM18
  (206, 20600, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 19),
  -- Dunsparce - Endure - TM20
  (206, 20600, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 20),
  -- Dunsparce - Frustration - TM21
  (206, 20600, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 21),
  -- Dunsparce - Solar Beam - TM22
  (206, 20600, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 22),
  -- Dunsparce - Iron Tail - TM23
  (206, 20600, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 23),
  -- Dunsparce - Thunder - TM25
  (206, 20600, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 24),
  -- Dunsparce - Return - TM27
  (206, 20600, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 25),
  -- Dunsparce - Dig - TM28
  (206, 20600, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 26),
  -- Dunsparce - Mud-Slap - TM31
  (206, 20600, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 27),
  -- Dunsparce - Double Team - TM32
  (206, 20600, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 28),
  -- Dunsparce - Swagger - TM34
  (206, 20600, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 29),
  -- Dunsparce - Sleep Talk - TM35
  (206, 20600, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 30),
  -- Dunsparce - Defense Curl - TM40
  (206, 20600, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 31),
  -- Dunsparce - Dream Eater - TM42
  (206, 20600, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 32),
  -- Dunsparce - Rest - TM44
  (206, 20600, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 33),
  -- Dunsparce - Attract - TM45
  (206, 20600, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 34),
  -- Dunsparce - Thief - TM46
  (206, 20600, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 35),
  -- Dunsparce - Nightmare - TM50
  (206, 20600, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 36),
  -- Dunsparce - Strength - HM04
  (206, 20600, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 37),
  -- Dunsparce - Ancient Power - Egg Move
  (206, 20600, 246, 3, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Dunsparce - Bide - Egg Move
  (206, 20600, 117, 3, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Dunsparce - Bite - Egg Move
  (206, 20600, 44, 3, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Dunsparce - Rage - Egg Move
  (206, 20600, 99, 3, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Dunsparce - Rock Slide - Egg Move
  (206, 20600, 157, 3, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Gligar - Poison Sting - Level 1
  (207, 20700, 40, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gligar - Sand Attack - Level 6
  (207, 20700, 28, 3, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Gligar - Harden - Level 13
  (207, 20700, 106, 3, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Gligar - Quick Attack - Level 20
  (207, 20700, 98, 3, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Gligar - Feint Attack - Level 28
  (207, 20700, 185, 3, NULL, 1, 28, NULL, NULL, NULL, 5),
  -- Gligar - Slash - Level 36
  (207, 20700, 163, 3, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Gligar - Screech - Level 44
  (207, 20700, 103, 3, NULL, 1, 44, NULL, NULL, NULL, 7),
  -- Gligar - Guillotine - Level 52
  (207, 20700, 12, 3, NULL, 1, 52, NULL, NULL, NULL, 8),
  -- Gligar - Headbutt - TM02
  (207, 20700, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 9),
  -- Gligar - Curse - TM03
  (207, 20700, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Gligar - Toxic - TM06
  (207, 20700, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Gligar - Rock Smash - TM08
  (207, 20700, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 12),
  -- Gligar - Hidden Power - TM10
  (207, 20700, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 13),
  -- Gligar - Sunny Day - TM11
  (207, 20700, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 14),
  -- Gligar - Snore - TM13
  (207, 20700, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 15),
  -- Gligar - Protect - TM17
  (207, 20700, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 16),
  -- Gligar - Endure - TM20
  (207, 20700, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 17),
  -- Gligar - Frustration - TM21
  (207, 20700, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 18),
  -- Gligar - Iron Tail - TM23
  (207, 20700, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 19),
  -- Gligar - Return - TM27
  (207, 20700, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 20),
  -- Gligar - Double Team - TM32
  (207, 20700, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 21),
  -- Gligar - Swagger - TM34
  (207, 20700, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 22),
  -- Gligar - Sleep Talk - TM35
  (207, 20700, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 23),
  -- Gligar - Sludge Bomb - TM36
  (207, 20700, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 24),
  -- Gligar - Sandstorm - TM37
  (207, 20700, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 25),
  -- Gligar - Swift - TM39
  (207, 20700, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 26),
  -- Gligar - Detect - TM43
  (207, 20700, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 27),
  -- Gligar - Rest - TM44
  (207, 20700, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 28),
  -- Gligar - Attract - TM45
  (207, 20700, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 29),
  -- Gligar - Thief - TM46
  (207, 20700, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 30),
  -- Gligar - Fury Cutter - TM49
  (207, 20700, 210, 3, NULL, 2, NULL, NULL, 3002049, NULL, 31),
  -- Gligar - Cut - HM01
  (207, 20700, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 32),
  -- Gligar - Strength - HM04
  (207, 20700, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 33),
  -- Gligar - Counter - Egg Move
  (207, 20700, 68, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Gligar - Metal Claw - Egg Move
  (207, 20700, 232, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Gligar - Razor Wind - Egg Move
  (207, 20700, 13, 3, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Gligar - Wing Attack - Egg Move
  (207, 20700, 17, 3, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Steelix - Tackle - Level 1
  (208, 20800, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Steelix - Screech - Level 1
  (208, 20800, 103, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Steelix - Bind - Level 10
  (208, 20800, 20, 3, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Steelix - Rock Throw - Level 14
  (208, 20800, 88, 3, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Steelix - Harden - Level 23
  (208, 20800, 106, 3, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Steelix - Rage - Level 27
  (208, 20800, 99, 3, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Steelix - Sandstorm - Level 36
  (208, 20800, 201, 3, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Steelix - Slam - Level 40
  (208, 20800, 21, 3, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Steelix - Crunch - Level 49
  (208, 20800, 242, 3, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Steelix - Headbutt - TM02
  (208, 20800, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 10),
  -- Steelix - Curse - TM03
  (208, 20800, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Steelix - Rollout - TM04
  (208, 20800, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 12),
  -- Steelix - Roar - TM05
  (208, 20800, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 13),
  -- Steelix - Toxic - TM06
  (208, 20800, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Steelix - Rock Smash - TM08
  (208, 20800, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 15),
  -- Steelix - Hidden Power - TM10
  (208, 20800, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 16),
  -- Steelix - Sunny Day - TM11
  (208, 20800, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 17),
  -- Steelix - Snore - TM13
  (208, 20800, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 18),
  -- Steelix - Hyper Beam - TM15
  (208, 20800, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 19),
  -- Steelix - Protect - TM17
  (208, 20800, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Steelix - Endure - TM20
  (208, 20800, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Steelix - Frustration - TM21
  (208, 20800, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Steelix - Iron Tail - TM23
  (208, 20800, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 23),
  -- Steelix - Dragon Breath - TM24
  (208, 20800, 225, 3, NULL, 2, NULL, NULL, 3002024, NULL, 24),
  -- Steelix - Earthquake - TM26
  (208, 20800, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 25),
  -- Steelix - Return - TM27
  (208, 20800, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 26),
  -- Steelix - Dig - TM28
  (208, 20800, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 27),
  -- Steelix - Mud-Slap - TM31
  (208, 20800, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 28),
  -- Steelix - Double Team - TM32
  (208, 20800, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 29),
  -- Steelix - Swagger - TM34
  (208, 20800, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 30),
  -- Steelix - Sleep Talk - TM35
  (208, 20800, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 31),
  -- Steelix - Sandstorm - TM37
  (208, 20800, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 32),
  -- Steelix - Defense Curl - TM40
  (208, 20800, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 33),
  -- Steelix - Rest - TM44
  (208, 20800, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 34),
  -- Steelix - Attract - TM45
  (208, 20800, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 35),
  -- Steelix - Cut - HM01
  (208, 20800, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 36),
  -- Steelix - Strength - HM04
  (208, 20800, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 37),
  -- Snubbull - Tackle - Level 1
  (209, 20900, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snubbull - Scary Face - Level 1
  (209, 20900, 184, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snubbull - Tail Whip - Level 4
  (209, 20900, 39, 3, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Snubbull - Charm - Level 8
  (209, 20900, 204, 3, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Snubbull - Bite - Level 13
  (209, 20900, 44, 3, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Snubbull - Lick - Level 19
  (209, 20900, 122, 3, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Snubbull - Roar - Level 26
  (209, 20900, 46, 3, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Snubbull - Rage - Level 34
  (209, 20900, 99, 3, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Snubbull - Take Down - Level 43
  (209, 20900, 36, 3, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Snubbull - Dynamic Punch - TM01
  (209, 20900, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 10),
  -- Snubbull - Headbutt - TM02
  (209, 20900, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Snubbull - Curse - TM03
  (209, 20900, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Snubbull - Roar - TM05
  (209, 20900, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 13),
  -- Snubbull - Toxic - TM06
  (209, 20900, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Snubbull - Zap Cannon - TM07
  (209, 20900, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 15),
  -- Snubbull - Rock Smash - TM08
  (209, 20900, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 16),
  -- Snubbull - Hidden Power - TM10
  (209, 20900, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 17),
  -- Snubbull - Sunny Day - TM11
  (209, 20900, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 18),
  -- Snubbull - Snore - TM13
  (209, 20900, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 19),
  -- Snubbull - Protect - TM17
  (209, 20900, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Snubbull - Rain Dance - TM18
  (209, 20900, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 21),
  -- Snubbull - Endure - TM20
  (209, 20900, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Snubbull - Frustration - TM21
  (209, 20900, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Snubbull - Thunder - TM25
  (209, 20900, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 24),
  -- Snubbull - Return - TM27
  (209, 20900, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 25),
  -- Snubbull - Shadow Ball - TM30
  (209, 20900, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 26),
  -- Snubbull - Mud-Slap - TM31
  (209, 20900, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 27),
  -- Snubbull - Double Team - TM32
  (209, 20900, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 28),
  -- Snubbull - Ice Punch - TM33
  (209, 20900, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 29),
  -- Snubbull - Swagger - TM34
  (209, 20900, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 30),
  -- Snubbull - Sleep Talk - TM35
  (209, 20900, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 31),
  -- Snubbull - Sludge Bomb - TM36
  (209, 20900, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 32),
  -- Snubbull - Defense Curl - TM40
  (209, 20900, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 33),
  -- Snubbull - Thunder Punch - TM41
  (209, 20900, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 34),
  -- Snubbull - Detect - TM43
  (209, 20900, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 35),
  -- Snubbull - Rest - TM44
  (209, 20900, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 36),
  -- Snubbull - Attract - TM45
  (209, 20900, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 37),
  -- Snubbull - Thief - TM46
  (209, 20900, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 38),
  -- Snubbull - Fire Punch - TM48
  (209, 20900, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 39),
  -- Snubbull - Strength - HM04
  (209, 20900, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 40),
  -- Snubbull - Crunch - Egg Move
  (209, 20900, 242, 3, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Snubbull - Feint Attack - Egg Move
  (209, 20900, 185, 3, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Snubbull - Heal Bell - Egg Move
  (209, 20900, 215, 3, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Snubbull - Leer - Egg Move
  (209, 20900, 43, 3, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Snubbull - Lick - Egg Move
  (209, 20900, 122, 3, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Snubbull - Metronome - Egg Move
  (209, 20900, 118, 3, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Snubbull - Present - Egg Move
  (209, 20900, 217, 3, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Snubbull - Reflect - Egg Move
  (209, 20900, 115, 3, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Granbull - Tackle - Level 1
  (210, 21000, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Granbull - Scary Face - Level 1
  (210, 21000, 184, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Granbull - Tail Whip - Level 4
  (210, 21000, 39, 3, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Granbull - Charm - Level 8
  (210, 21000, 204, 3, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Granbull - Bite - Level 13
  (210, 21000, 44, 3, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Granbull - Lick - Level 19
  (210, 21000, 122, 3, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Granbull - Roar - Level 28
  (210, 21000, 46, 3, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Granbull - Rage - Level 38
  (210, 21000, 99, 3, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Granbull - Take Down - Level 51
  (210, 21000, 36, 3, NULL, 1, 51, NULL, NULL, NULL, 9),
  -- Granbull - Dynamic Punch - TM01
  (210, 21000, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 10),
  -- Granbull - Headbutt - TM02
  (210, 21000, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Granbull - Curse - TM03
  (210, 21000, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Granbull - Roar - TM05
  (210, 21000, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 13),
  -- Granbull - Toxic - TM06
  (210, 21000, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Granbull - Zap Cannon - TM07
  (210, 21000, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 15),
  -- Granbull - Rock Smash - TM08
  (210, 21000, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 16),
  -- Granbull - Hidden Power - TM10
  (210, 21000, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 17),
  -- Granbull - Sunny Day - TM11
  (210, 21000, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 18),
  -- Granbull - Snore - TM13
  (210, 21000, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 19),
  -- Granbull - Hyper Beam - TM15
  (210, 21000, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 20),
  -- Granbull - Protect - TM17
  (210, 21000, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 21),
  -- Granbull - Rain Dance - TM18
  (210, 21000, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 22),
  -- Granbull - Endure - TM20
  (210, 21000, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 23),
  -- Granbull - Frustration - TM21
  (210, 21000, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 24),
  -- Granbull - Thunder - TM25
  (210, 21000, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 25),
  -- Granbull - Return - TM27
  (210, 21000, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 26),
  -- Granbull - Shadow Ball - TM30
  (210, 21000, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 27),
  -- Granbull - Mud-Slap - TM31
  (210, 21000, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 28),
  -- Granbull - Double Team - TM32
  (210, 21000, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 29),
  -- Granbull - Ice Punch - TM33
  (210, 21000, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 30),
  -- Granbull - Swagger - TM34
  (210, 21000, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 31),
  -- Granbull - Sleep Talk - TM35
  (210, 21000, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 32),
  -- Granbull - Sludge Bomb - TM36
  (210, 21000, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 33),
  -- Granbull - Defense Curl - TM40
  (210, 21000, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 34),
  -- Granbull - Thunder Punch - TM41
  (210, 21000, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 35),
  -- Granbull - Detect - TM43
  (210, 21000, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 36),
  -- Granbull - Rest - TM44
  (210, 21000, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 37),
  -- Granbull - Attract - TM45
  (210, 21000, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 38),
  -- Granbull - Thief - TM46
  (210, 21000, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 39),
  -- Granbull - Fire Punch - TM48
  (210, 21000, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 40),
  -- Granbull - Strength - HM04
  (210, 21000, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 41),
  -- Qwilfish - Tackle - Level 1
  (211, 21100, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Qwilfish - Poison Sting - Level 1
  (211, 21100, 40, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Qwilfish - Harden - Level 10
  (211, 21100, 106, 3, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Qwilfish - Minimize - Level 10
  (211, 21100, 107, 3, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Qwilfish - Water Gun - Level 19
  (211, 21100, 55, 3, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Qwilfish - Pin Missile - Level 28
  (211, 21100, 42, 3, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Qwilfish - Take Down - Level 37
  (211, 21100, 36, 3, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Qwilfish - Hydro Pump - Level 46
  (211, 21100, 56, 3, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Qwilfish - Headbutt - TM02
  (211, 21100, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 9),
  -- Qwilfish - Curse - TM03
  (211, 21100, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Qwilfish - Rollout - TM04
  (211, 21100, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 11),
  -- Qwilfish - Toxic - TM06
  (211, 21100, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Qwilfish - Hidden Power - TM10
  (211, 21100, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 13),
  -- Qwilfish - Snore - TM13
  (211, 21100, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 14),
  -- Qwilfish - Blizzard - TM14
  (211, 21100, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 15),
  -- Qwilfish - Icy Wind - TM16
  (211, 21100, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 16),
  -- Qwilfish - Protect - TM17
  (211, 21100, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Qwilfish - Rain Dance - TM18
  (211, 21100, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 18),
  -- Qwilfish - Endure - TM20
  (211, 21100, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 19),
  -- Qwilfish - Frustration - TM21
  (211, 21100, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 20),
  -- Qwilfish - Return - TM27
  (211, 21100, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 21),
  -- Qwilfish - Double Team - TM32
  (211, 21100, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 22),
  -- Qwilfish - Swagger - TM34
  (211, 21100, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 23),
  -- Qwilfish - Sleep Talk - TM35
  (211, 21100, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 24),
  -- Qwilfish - Sludge Bomb - TM36
  (211, 21100, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 25),
  -- Qwilfish - Swift - TM39
  (211, 21100, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 26),
  -- Qwilfish - Defense Curl - TM40
  (211, 21100, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 27),
  -- Qwilfish - Rest - TM44
  (211, 21100, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 28),
  -- Qwilfish - Attract - TM45
  (211, 21100, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 29),
  -- Qwilfish - Surf - HM03
  (211, 21100, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 30),
  -- Qwilfish - Whirlpool - HM06
  (211, 21100, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 31),
  -- Qwilfish - Waterfall - HM07
  (211, 21100, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 32),
  -- Qwilfish - Bubble Beam - Egg Move
  (211, 21100, 61, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Qwilfish - Flail - Egg Move
  (211, 21100, 175, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Qwilfish - Haze - Egg Move
  (211, 21100, 114, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Qwilfish - Supersonic - Egg Move
  (211, 21100, 48, 3, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Scizor - Quick Attack - Level 1
  (212, 21200, 98, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scizor - Leer - Level 1
  (212, 21200, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scizor - Focus Energy - Level 6
  (212, 21200, 116, 3, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Scizor - Pursuit - Level 12
  (212, 21200, 228, 3, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Scizor - False Swipe - Level 18
  (212, 21200, 206, 3, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Scizor - Agility - Level 24
  (212, 21200, 97, 3, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Scizor - Metal Claw - Level 30
  (212, 21200, 232, 3, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Scizor - Slash - Level 36
  (212, 21200, 163, 3, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Scizor - Swords Dance - Level 42
  (212, 21200, 14, 3, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Scizor - Double Team - Level 48
  (212, 21200, 104, 3, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Scizor - Headbutt - TM02
  (212, 21200, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Scizor - Curse - TM03
  (212, 21200, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Scizor - Toxic - TM06
  (212, 21200, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Scizor - Rock Smash - TM08
  (212, 21200, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 14),
  -- Scizor - Hidden Power - TM10
  (212, 21200, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Scizor - Sunny Day - TM11
  (212, 21200, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 16),
  -- Scizor - Snore - TM13
  (212, 21200, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 17),
  -- Scizor - Hyper Beam - TM15
  (212, 21200, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 18),
  -- Scizor - Protect - TM17
  (212, 21200, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Scizor - Endure - TM20
  (212, 21200, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 20),
  -- Scizor - Frustration - TM21
  (212, 21200, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 21),
  -- Scizor - Return - TM27
  (212, 21200, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 22),
  -- Scizor - Double Team - TM32
  (212, 21200, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 23),
  -- Scizor - Swagger - TM34
  (212, 21200, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 24),
  -- Scizor - Sleep Talk - TM35
  (212, 21200, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 25),
  -- Scizor - Sandstorm - TM37
  (212, 21200, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 26),
  -- Scizor - Swift - TM39
  (212, 21200, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 27),
  -- Scizor - Detect - TM43
  (212, 21200, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 28),
  -- Scizor - Rest - TM44
  (212, 21200, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 29),
  -- Scizor - Attract - TM45
  (212, 21200, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 30),
  -- Scizor - Thief - TM46
  (212, 21200, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 31),
  -- Scizor - Steel Wing - TM47
  (212, 21200, 211, 3, NULL, 2, NULL, NULL, 3002047, NULL, 32),
  -- Scizor - Fury Cutter - TM49
  (212, 21200, 210, 3, NULL, 2, NULL, NULL, 3002049, NULL, 33),
  -- Scizor - Cut - HM01
  (212, 21200, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 34),
  -- Scizor - Strength - HM04
  (212, 21200, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 35),
  -- Shuckle - Constrict - Level 1
  (213, 21300, 132, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shuckle - Withdraw - Level 1
  (213, 21300, 110, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shuckle - Wrap - Level 9
  (213, 21300, 35, 3, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Shuckle - Encore - Level 14
  (213, 21300, 227, 3, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Shuckle - Safeguard - Level 23
  (213, 21300, 219, 3, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Shuckle - Bide - Level 28
  (213, 21300, 117, 3, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Shuckle - Rest - Level 37
  (213, 21300, 156, 3, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Shuckle - Headbutt - TM02
  (213, 21300, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 8),
  -- Shuckle - Curse - TM03
  (213, 21300, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 9),
  -- Shuckle - Rollout - TM04
  (213, 21300, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 10),
  -- Shuckle - Toxic - TM06
  (213, 21300, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Shuckle - Rock Smash - TM08
  (213, 21300, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 12),
  -- Shuckle - Hidden Power - TM10
  (213, 21300, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 13),
  -- Shuckle - Sunny Day - TM11
  (213, 21300, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 14),
  -- Shuckle - Snore - TM13
  (213, 21300, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 15),
  -- Shuckle - Protect - TM17
  (213, 21300, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 16),
  -- Shuckle - Endure - TM20
  (213, 21300, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 17),
  -- Shuckle - Frustration - TM21
  (213, 21300, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 18),
  -- Shuckle - Earthquake - TM26
  (213, 21300, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 19),
  -- Shuckle - Return - TM27
  (213, 21300, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 20),
  -- Shuckle - Dig - TM28
  (213, 21300, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 21),
  -- Shuckle - Mud-Slap - TM31
  (213, 21300, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 22),
  -- Shuckle - Double Team - TM32
  (213, 21300, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 23),
  -- Shuckle - Swagger - TM34
  (213, 21300, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 24),
  -- Shuckle - Sleep Talk - TM35
  (213, 21300, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 25),
  -- Shuckle - Sludge Bomb - TM36
  (213, 21300, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 26),
  -- Shuckle - Sandstorm - TM37
  (213, 21300, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 27),
  -- Shuckle - Defense Curl - TM40
  (213, 21300, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 28),
  -- Shuckle - Rest - TM44
  (213, 21300, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 29),
  -- Shuckle - Attract - TM45
  (213, 21300, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 30),
  -- Shuckle - Strength - HM04
  (213, 21300, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 31),
  -- Shuckle - Flash - HM05
  (213, 21300, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 32),
  -- Shuckle - Sweet Scent - Egg Move
  (213, 21300, 230, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Heracross - Tackle - Level 1
  (214, 21400, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heracross - Leer - Level 1
  (214, 21400, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Heracross - Horn Attack - Level 6
  (214, 21400, 30, 3, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Heracross - Endure - Level 12
  (214, 21400, 203, 3, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Heracross - Fury Attack - Level 19
  (214, 21400, 31, 3, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Heracross - Counter - Level 27
  (214, 21400, 68, 3, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Heracross - Take Down - Level 35
  (214, 21400, 36, 3, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Heracross - Reversal - Level 44
  (214, 21400, 179, 3, NULL, 1, 44, NULL, NULL, NULL, 8),
  -- Heracross - Megahorn - Level 54
  (214, 21400, 224, 3, NULL, 1, 54, NULL, NULL, NULL, 9),
  -- Heracross - Headbutt - TM02
  (214, 21400, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 10),
  -- Heracross - Curse - TM03
  (214, 21400, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Heracross - Toxic - TM06
  (214, 21400, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Heracross - Rock Smash - TM08
  (214, 21400, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 13),
  -- Heracross - Hidden Power - TM10
  (214, 21400, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Heracross - Sunny Day - TM11
  (214, 21400, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 15),
  -- Heracross - Snore - TM13
  (214, 21400, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Heracross - Protect - TM17
  (214, 21400, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Heracross - Endure - TM20
  (214, 21400, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 18),
  -- Heracross - Frustration - TM21
  (214, 21400, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 19),
  -- Heracross - Earthquake - TM26
  (214, 21400, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 20),
  -- Heracross - Return - TM27
  (214, 21400, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 21),
  -- Heracross - Double Team - TM32
  (214, 21400, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 22),
  -- Heracross - Swagger - TM34
  (214, 21400, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 23),
  -- Heracross - Sleep Talk - TM35
  (214, 21400, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 24),
  -- Heracross - Detect - TM43
  (214, 21400, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 25),
  -- Heracross - Rest - TM44
  (214, 21400, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 26),
  -- Heracross - Attract - TM45
  (214, 21400, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 27),
  -- Heracross - Thief - TM46
  (214, 21400, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 28),
  -- Heracross - Fury Cutter - TM49
  (214, 21400, 210, 3, NULL, 2, NULL, NULL, 3002049, NULL, 29),
  -- Heracross - Cut - HM01
  (214, 21400, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 30),
  -- Heracross - Strength - HM04
  (214, 21400, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 31),
  -- Heracross - Bide - Egg Move
  (214, 21400, 117, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Heracross - Flail - Egg Move
  (214, 21400, 175, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Heracross - Harden - Egg Move
  (214, 21400, 106, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Sneasel - Scratch - Level 1
  (215, 21500, 10, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sneasel - Leer - Level 1
  (215, 21500, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sneasel - Quick Attack - Level 9
  (215, 21500, 98, 3, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Sneasel - Screech - Level 17
  (215, 21500, 103, 3, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Sneasel - Feint Attack - Level 25
  (215, 21500, 185, 3, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Sneasel - Fury Swipes - Level 33
  (215, 21500, 154, 3, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Sneasel - Agility - Level 41
  (215, 21500, 97, 3, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Sneasel - Slash - Level 49
  (215, 21500, 163, 3, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Sneasel - Beat Up - Level 57
  (215, 21500, 251, 3, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Sneasel - Dynamic Punch - TM01
  (215, 21500, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 10),
  -- Sneasel - Headbutt - TM02
  (215, 21500, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Sneasel - Curse - TM03
  (215, 21500, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Sneasel - Toxic - TM06
  (215, 21500, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Sneasel - Rock Smash - TM08
  (215, 21500, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 14),
  -- Sneasel - Psych Up - TM09
  (215, 21500, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 15),
  -- Sneasel - Hidden Power - TM10
  (215, 21500, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 16),
  -- Sneasel - Snore - TM13
  (215, 21500, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 17),
  -- Sneasel - Blizzard - TM14
  (215, 21500, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 18),
  -- Sneasel - Icy Wind - TM16
  (215, 21500, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 19),
  -- Sneasel - Protect - TM17
  (215, 21500, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Sneasel - Rain Dance - TM18
  (215, 21500, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 21),
  -- Sneasel - Endure - TM20
  (215, 21500, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Sneasel - Frustration - TM21
  (215, 21500, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Sneasel - Iron Tail - TM23
  (215, 21500, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 24),
  -- Sneasel - Return - TM27
  (215, 21500, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 25),
  -- Sneasel - Dig - TM28
  (215, 21500, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 26),
  -- Sneasel - Shadow Ball - TM30
  (215, 21500, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 27),
  -- Sneasel - Mud-Slap - TM31
  (215, 21500, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 28),
  -- Sneasel - Double Team - TM32
  (215, 21500, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 29),
  -- Sneasel - Ice Punch - TM33
  (215, 21500, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 30),
  -- Sneasel - Swagger - TM34
  (215, 21500, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 31),
  -- Sneasel - Sleep Talk - TM35
  (215, 21500, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 32),
  -- Sneasel - Swift - TM39
  (215, 21500, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 33),
  -- Sneasel - Defense Curl - TM40
  (215, 21500, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 34),
  -- Sneasel - Dream Eater - TM42
  (215, 21500, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 35),
  -- Sneasel - Detect - TM43
  (215, 21500, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 36),
  -- Sneasel - Rest - TM44
  (215, 21500, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 37),
  -- Sneasel - Attract - TM45
  (215, 21500, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 38),
  -- Sneasel - Thief - TM46
  (215, 21500, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 39),
  -- Sneasel - Fury Cutter - TM49
  (215, 21500, 210, 3, NULL, 2, NULL, NULL, 3002049, NULL, 40),
  -- Sneasel - Nightmare - TM50
  (215, 21500, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 41),
  -- Sneasel - Cut - HM01
  (215, 21500, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 42),
  -- Sneasel - Surf - HM03
  (215, 21500, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 43),
  -- Sneasel - Strength - HM04
  (215, 21500, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 44),
  -- Sneasel - Bite - Egg Move
  (215, 21500, 44, 3, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Sneasel - Counter - Egg Move
  (215, 21500, 68, 3, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Sneasel - Foresight - Egg Move
  (215, 21500, 193, 3, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Sneasel - Reflect - Egg Move
  (215, 21500, 115, 3, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Sneasel - Spite - Egg Move
  (215, 21500, 180, 3, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Teddiursa - Scratch - Level 1
  (216, 21600, 10, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Teddiursa - Leer - Level 1
  (216, 21600, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Teddiursa - Lick - Level 8
  (216, 21600, 122, 3, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Teddiursa - Fury Swipes - Level 15
  (216, 21600, 154, 3, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Teddiursa - Feint Attack - Level 22
  (216, 21600, 185, 3, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Teddiursa - Rest - Level 29
  (216, 21600, 156, 3, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Teddiursa - Slash - Level 36
  (216, 21600, 163, 3, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Teddiursa - Snore - Level 43
  (216, 21600, 173, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Teddiursa - Thrash - Level 50
  (216, 21600, 37, 3, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Teddiursa - Dynamic Punch - TM01
  (216, 21600, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 10),
  -- Teddiursa - Headbutt - TM02
  (216, 21600, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Teddiursa - Curse - TM03
  (216, 21600, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Teddiursa - Rollout - TM04
  (216, 21600, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 13),
  -- Teddiursa - Roar - TM05
  (216, 21600, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 14),
  -- Teddiursa - Toxic - TM06
  (216, 21600, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 15),
  -- Teddiursa - Zap Cannon - TM07
  (216, 21600, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 16),
  -- Teddiursa - Rock Smash - TM08
  (216, 21600, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 17),
  -- Teddiursa - Hidden Power - TM10
  (216, 21600, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 18),
  -- Teddiursa - Sunny Day - TM11
  (216, 21600, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 19),
  -- Teddiursa - Snore - TM13
  (216, 21600, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 20),
  -- Teddiursa - Protect - TM17
  (216, 21600, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 21),
  -- Teddiursa - Endure - TM20
  (216, 21600, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Teddiursa - Frustration - TM21
  (216, 21600, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Teddiursa - Earthquake - TM26
  (216, 21600, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 24),
  -- Teddiursa - Return - TM27
  (216, 21600, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 25),
  -- Teddiursa - Dig - TM28
  (216, 21600, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 26),
  -- Teddiursa - Mud-Slap - TM31
  (216, 21600, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 27),
  -- Teddiursa - Double Team - TM32
  (216, 21600, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 28),
  -- Teddiursa - Ice Punch - TM33
  (216, 21600, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 29),
  -- Teddiursa - Swagger - TM34
  (216, 21600, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 30),
  -- Teddiursa - Sleep Talk - TM35
  (216, 21600, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 31),
  -- Teddiursa - Swift - TM39
  (216, 21600, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 32),
  -- Teddiursa - Defense Curl - TM40
  (216, 21600, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 33),
  -- Teddiursa - Thunder Punch - TM41
  (216, 21600, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 34),
  -- Teddiursa - Rest - TM44
  (216, 21600, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 35),
  -- Teddiursa - Attract - TM45
  (216, 21600, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 36),
  -- Teddiursa - Thief - TM46
  (216, 21600, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 37),
  -- Teddiursa - Fire Punch - TM48
  (216, 21600, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 38),
  -- Teddiursa - Fury Cutter - TM49
  (216, 21600, 210, 3, NULL, 2, NULL, NULL, 3002049, NULL, 39),
  -- Teddiursa - Cut - HM01
  (216, 21600, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 40),
  -- Teddiursa - Strength - HM04
  (216, 21600, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 41),
  -- Teddiursa - Counter - Egg Move
  (216, 21600, 68, 3, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Teddiursa - Crunch - Egg Move
  (216, 21600, 242, 3, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Teddiursa - Focus Energy - Egg Move
  (216, 21600, 116, 3, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Teddiursa - Metal Claw - Egg Move
  (216, 21600, 232, 3, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Teddiursa - Seismic Toss - Egg Move
  (216, 21600, 69, 3, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Teddiursa - Take Down - Egg Move
  (216, 21600, 36, 3, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ursaring - Scratch - Level 1
  (217, 21700, 10, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ursaring - Leer - Level 1
  (217, 21700, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ursaring - Lick - Level 1
  (217, 21700, 122, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ursaring - Fury Swipes - Level 1
  (217, 21700, 154, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ursaring - Lick - Level 8
  (217, 21700, 122, 3, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Ursaring - Fury Swipes - Level 15
  (217, 21700, 154, 3, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Ursaring - Feint Attack - Level 22
  (217, 21700, 185, 3, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Ursaring - Rest - Level 29
  (217, 21700, 156, 3, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Ursaring - Slash - Level 39
  (217, 21700, 163, 3, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Ursaring - Snore - Level 49
  (217, 21700, 173, 3, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Ursaring - Thrash - Level 59
  (217, 21700, 37, 3, NULL, 1, 59, NULL, NULL, NULL, 11),
  -- Ursaring - Dynamic Punch - TM01
  (217, 21700, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 12),
  -- Ursaring - Headbutt - TM02
  (217, 21700, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 13),
  -- Ursaring - Curse - TM03
  (217, 21700, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 14),
  -- Ursaring - Rollout - TM04
  (217, 21700, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 15),
  -- Ursaring - Roar - TM05
  (217, 21700, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 16),
  -- Ursaring - Toxic - TM06
  (217, 21700, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 17),
  -- Ursaring - Zap Cannon - TM07
  (217, 21700, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 18),
  -- Ursaring - Rock Smash - TM08
  (217, 21700, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 19),
  -- Ursaring - Hidden Power - TM10
  (217, 21700, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 20),
  -- Ursaring - Sunny Day - TM11
  (217, 21700, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 21),
  -- Ursaring - Snore - TM13
  (217, 21700, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 22),
  -- Ursaring - Hyper Beam - TM15
  (217, 21700, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 23),
  -- Ursaring - Protect - TM17
  (217, 21700, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 24),
  -- Ursaring - Endure - TM20
  (217, 21700, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 25),
  -- Ursaring - Frustration - TM21
  (217, 21700, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 26),
  -- Ursaring - Earthquake - TM26
  (217, 21700, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 27),
  -- Ursaring - Return - TM27
  (217, 21700, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 28),
  -- Ursaring - Dig - TM28
  (217, 21700, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 29),
  -- Ursaring - Mud-Slap - TM31
  (217, 21700, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 30),
  -- Ursaring - Double Team - TM32
  (217, 21700, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 31),
  -- Ursaring - Ice Punch - TM33
  (217, 21700, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 32),
  -- Ursaring - Swagger - TM34
  (217, 21700, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 33),
  -- Ursaring - Sleep Talk - TM35
  (217, 21700, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 34),
  -- Ursaring - Swift - TM39
  (217, 21700, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 35),
  -- Ursaring - Defense Curl - TM40
  (217, 21700, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 36),
  -- Ursaring - Thunder Punch - TM41
  (217, 21700, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 37),
  -- Ursaring - Rest - TM44
  (217, 21700, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 38),
  -- Ursaring - Attract - TM45
  (217, 21700, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 39),
  -- Ursaring - Thief - TM46
  (217, 21700, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 40),
  -- Ursaring - Fire Punch - TM48
  (217, 21700, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 41),
  -- Ursaring - Fury Cutter - TM49
  (217, 21700, 210, 3, NULL, 2, NULL, NULL, 3002049, NULL, 42),
  -- Ursaring - Cut - HM01
  (217, 21700, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 43),
  -- Ursaring - Strength - HM04
  (217, 21700, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 44),
  -- Slugma - Smog - Level 1
  (218, 21800, 123, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slugma - Ember - Level 8
  (218, 21800, 52, 3, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Slugma - Rock Throw - Level 15
  (218, 21800, 88, 3, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Slugma - Harden - Level 22
  (218, 21800, 106, 3, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Slugma - Amnesia - Level 29
  (218, 21800, 133, 3, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Slugma - Flamethrower - Level 36
  (218, 21800, 53, 3, NULL, 1, 36, NULL, NULL, NULL, 6),
  -- Slugma - Rock Slide - Level 43
  (218, 21800, 157, 3, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Slugma - Body Slam - Level 50
  (218, 21800, 34, 3, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Slugma - Curse - TM03
  (218, 21800, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 9),
  -- Slugma - Rollout - TM04
  (218, 21800, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 10),
  -- Slugma - Toxic - TM06
  (218, 21800, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Slugma - Rock Smash - TM08
  (218, 21800, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 12),
  -- Slugma - Hidden Power - TM10
  (218, 21800, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 13),
  -- Slugma - Sunny Day - TM11
  (218, 21800, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 14),
  -- Slugma - Snore - TM13
  (218, 21800, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 15),
  -- Slugma - Protect - TM17
  (218, 21800, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 16),
  -- Slugma - Endure - TM20
  (218, 21800, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 17),
  -- Slugma - Frustration - TM21
  (218, 21800, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 18),
  -- Slugma - Return - TM27
  (218, 21800, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 19),
  -- Slugma - Mud-Slap - TM31
  (218, 21800, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 20),
  -- Slugma - Double Team - TM32
  (218, 21800, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 21),
  -- Slugma - Swagger - TM34
  (218, 21800, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 22),
  -- Slugma - Sleep Talk - TM35
  (218, 21800, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 23),
  -- Slugma - Fire Blast - TM38
  (218, 21800, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 24),
  -- Slugma - Defense Curl - TM40
  (218, 21800, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 25),
  -- Slugma - Rest - TM44
  (218, 21800, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 26),
  -- Slugma - Attract - TM45
  (218, 21800, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 27),
  -- Slugma - Acid Armor - Egg Move
  (218, 21800, 151, 3, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Magcargo - Smog - Level 1
  (219, 21900, 123, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magcargo - Ember - Level 1
  (219, 21900, 52, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magcargo - Rock Throw - Level 1
  (219, 21900, 88, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magcargo - Ember - Level 8
  (219, 21900, 52, 3, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Magcargo - Rock Throw - Level 15
  (219, 21900, 88, 3, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Magcargo - Harden - Level 22
  (219, 21900, 106, 3, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Magcargo - Amnesia - Level 29
  (219, 21900, 133, 3, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Magcargo - Flamethrower - Level 36
  (219, 21900, 53, 3, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Magcargo - Rock Slide - Level 48
  (219, 21900, 157, 3, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Magcargo - Body Slam - Level 60
  (219, 21900, 34, 3, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Magcargo - Curse - TM03
  (219, 21900, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Magcargo - Rollout - TM04
  (219, 21900, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 12),
  -- Magcargo - Toxic - TM06
  (219, 21900, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Magcargo - Rock Smash - TM08
  (219, 21900, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 14),
  -- Magcargo - Hidden Power - TM10
  (219, 21900, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Magcargo - Sunny Day - TM11
  (219, 21900, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 16),
  -- Magcargo - Snore - TM13
  (219, 21900, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 17),
  -- Magcargo - Hyper Beam - TM15
  (219, 21900, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 18),
  -- Magcargo - Protect - TM17
  (219, 21900, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Magcargo - Endure - TM20
  (219, 21900, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 20),
  -- Magcargo - Frustration - TM21
  (219, 21900, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 21),
  -- Magcargo - Earthquake - TM26
  (219, 21900, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 22),
  -- Magcargo - Return - TM27
  (219, 21900, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 23),
  -- Magcargo - Mud-Slap - TM31
  (219, 21900, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 24),
  -- Magcargo - Double Team - TM32
  (219, 21900, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 25),
  -- Magcargo - Swagger - TM34
  (219, 21900, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Magcargo - Sleep Talk - TM35
  (219, 21900, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Magcargo - Fire Blast - TM38
  (219, 21900, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 28),
  -- Magcargo - Defense Curl - TM40
  (219, 21900, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 29),
  -- Magcargo - Rest - TM44
  (219, 21900, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 30),
  -- Magcargo - Attract - TM45
  (219, 21900, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 31),
  -- Magcargo - Strength - HM04
  (219, 21900, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 32),
  -- Swinub - Tackle - Level 1
  (220, 22000, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swinub - Powder Snow - Level 10
  (220, 22000, 181, 3, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Swinub - Endure - Level 19
  (220, 22000, 203, 3, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Swinub - Take Down - Level 28
  (220, 22000, 36, 3, NULL, 1, 28, NULL, NULL, NULL, 4),
  -- Swinub - Mist - Level 37
  (220, 22000, 54, 3, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Swinub - Blizzard - Level 46
  (220, 22000, 59, 3, NULL, 1, 46, NULL, NULL, NULL, 6),
  -- Swinub - Headbutt - TM02
  (220, 22000, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 7),
  -- Swinub - Curse - TM03
  (220, 22000, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 8),
  -- Swinub - Roar - TM05
  (220, 22000, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 9),
  -- Swinub - Toxic - TM06
  (220, 22000, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 10),
  -- Swinub - Rock Smash - TM08
  (220, 22000, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 11),
  -- Swinub - Hidden Power - TM10
  (220, 22000, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 12),
  -- Swinub - Snore - TM13
  (220, 22000, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 13),
  -- Swinub - Blizzard - TM14
  (220, 22000, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 14),
  -- Swinub - Icy Wind - TM16
  (220, 22000, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 15),
  -- Swinub - Protect - TM17
  (220, 22000, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 16),
  -- Swinub - Rain Dance - TM18
  (220, 22000, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 17),
  -- Swinub - Endure - TM20
  (220, 22000, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 18),
  -- Swinub - Frustration - TM21
  (220, 22000, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 19),
  -- Swinub - Earthquake - TM26
  (220, 22000, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 20),
  -- Swinub - Return - TM27
  (220, 22000, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 21),
  -- Swinub - Mud-Slap - TM31
  (220, 22000, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 22),
  -- Swinub - Double Team - TM32
  (220, 22000, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 23),
  -- Swinub - Swagger - TM34
  (220, 22000, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 24),
  -- Swinub - Sleep Talk - TM35
  (220, 22000, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 25),
  -- Swinub - Defense Curl - TM40
  (220, 22000, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 26),
  -- Swinub - Detect - TM43
  (220, 22000, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 27),
  -- Swinub - Rest - TM44
  (220, 22000, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 28),
  -- Swinub - Attract - TM45
  (220, 22000, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 29),
  -- Swinub - Strength - HM04
  (220, 22000, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 30),
  -- Swinub - Ancient Power - Egg Move
  (220, 22000, 246, 3, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Swinub - Bite - Egg Move
  (220, 22000, 44, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Swinub - Body Slam - Egg Move
  (220, 22000, 34, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Swinub - Rock Slide - Egg Move
  (220, 22000, 157, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Swinub - Take Down - Egg Move
  (220, 22000, 36, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Piloswine - Horn Attack - Level 1
  (221, 22100, 30, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Piloswine - Powder Snow - Level 1
  (221, 22100, 181, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Piloswine - Endure - Level 1
  (221, 22100, 203, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Piloswine - Powder Snow - Level 10
  (221, 22100, 181, 3, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Piloswine - Endure - Level 19
  (221, 22100, 203, 3, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Piloswine - Take Down - Level 28
  (221, 22100, 36, 3, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Piloswine - Fury Attack - Level 33
  (221, 22100, 31, 3, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Piloswine - Mist - Level 42
  (221, 22100, 54, 3, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Piloswine - Blizzard - Level 56
  (221, 22100, 59, 3, NULL, 1, 56, NULL, NULL, NULL, 9),
  -- Piloswine - Headbutt - TM02
  (221, 22100, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 10),
  -- Piloswine - Curse - TM03
  (221, 22100, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Piloswine - Roar - TM05
  (221, 22100, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 12),
  -- Piloswine - Toxic - TM06
  (221, 22100, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Piloswine - Rock Smash - TM08
  (221, 22100, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 14),
  -- Piloswine - Hidden Power - TM10
  (221, 22100, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Piloswine - Snore - TM13
  (221, 22100, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Piloswine - Blizzard - TM14
  (221, 22100, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 17),
  -- Piloswine - Hyper Beam - TM15
  (221, 22100, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 18),
  -- Piloswine - Icy Wind - TM16
  (221, 22100, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 19),
  -- Piloswine - Protect - TM17
  (221, 22100, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Piloswine - Rain Dance - TM18
  (221, 22100, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 21),
  -- Piloswine - Endure - TM20
  (221, 22100, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Piloswine - Frustration - TM21
  (221, 22100, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Piloswine - Earthquake - TM26
  (221, 22100, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 24),
  -- Piloswine - Return - TM27
  (221, 22100, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 25),
  -- Piloswine - Mud-Slap - TM31
  (221, 22100, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 26),
  -- Piloswine - Double Team - TM32
  (221, 22100, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 27),
  -- Piloswine - Swagger - TM34
  (221, 22100, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 28),
  -- Piloswine - Sleep Talk - TM35
  (221, 22100, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 29),
  -- Piloswine - Defense Curl - TM40
  (221, 22100, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 30),
  -- Piloswine - Detect - TM43
  (221, 22100, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 31),
  -- Piloswine - Rest - TM44
  (221, 22100, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 32),
  -- Piloswine - Attract - TM45
  (221, 22100, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 33),
  -- Piloswine - Strength - HM04
  (221, 22100, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 34),
  -- Corsola - Tackle - Level 1
  (222, 22200, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corsola - Harden - Level 7
  (222, 22200, 106, 3, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Corsola - Bubble - Level 13
  (222, 22200, 145, 3, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Corsola - Recover - Level 19
  (222, 22200, 105, 3, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Corsola - Bubble Beam - Level 25
  (222, 22200, 61, 3, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Corsola - Spike Cannon - Level 31
  (222, 22200, 131, 3, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Corsola - Mirror Coat - Level 37
  (222, 22200, 243, 3, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Corsola - Ancient Power - Level 43
  (222, 22200, 246, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Corsola - Headbutt - TM02
  (222, 22200, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 9),
  -- Corsola - Curse - TM03
  (222, 22200, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Corsola - Rollout - TM04
  (222, 22200, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 11),
  -- Corsola - Toxic - TM06
  (222, 22200, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Corsola - Rock Smash - TM08
  (222, 22200, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 13),
  -- Corsola - Hidden Power - TM10
  (222, 22200, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Corsola - Sunny Day - TM11
  (222, 22200, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 15),
  -- Corsola - Snore - TM13
  (222, 22200, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Corsola - Protect - TM17
  (222, 22200, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Corsola - Rain Dance - TM18
  (222, 22200, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 18),
  -- Corsola - Endure - TM20
  (222, 22200, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 19),
  -- Corsola - Frustration - TM21
  (222, 22200, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 20),
  -- Corsola - Earthquake - TM26
  (222, 22200, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 21),
  -- Corsola - Return - TM27
  (222, 22200, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 22),
  -- Corsola - Psychic - TM29
  (222, 22200, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 23),
  -- Corsola - Mud-Slap - TM31
  (222, 22200, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 24),
  -- Corsola - Double Team - TM32
  (222, 22200, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 25),
  -- Corsola - Swagger - TM34
  (222, 22200, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Corsola - Sleep Talk - TM35
  (222, 22200, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Corsola - Sandstorm - TM37
  (222, 22200, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 28),
  -- Corsola - Defense Curl - TM40
  (222, 22200, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 29),
  -- Corsola - Rest - TM44
  (222, 22200, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 30),
  -- Corsola - Attract - TM45
  (222, 22200, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 31),
  -- Corsola - Surf - HM03
  (222, 22200, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 32),
  -- Corsola - Strength - HM04
  (222, 22200, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 33),
  -- Corsola - Whirlpool - HM06
  (222, 22200, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 34),
  -- Corsola - Amnesia - Egg Move
  (222, 22200, 133, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Corsola - Mist - Egg Move
  (222, 22200, 54, 3, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Corsola - Rock Slide - Egg Move
  (222, 22200, 157, 3, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Corsola - Safeguard - Egg Move
  (222, 22200, 219, 3, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Corsola - Screech - Egg Move
  (222, 22200, 103, 3, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Remoraid - Water Gun - Level 1
  (223, 22300, 55, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Remoraid - Lock-On - Level 11
  (223, 22300, 199, 3, NULL, 1, 11, NULL, NULL, NULL, 2),
  -- Remoraid - Psybeam - Level 22
  (223, 22300, 60, 3, NULL, 1, 22, NULL, NULL, NULL, 3),
  -- Remoraid - Aurora Beam - Level 22
  (223, 22300, 62, 3, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Remoraid - Bubble Beam - Level 22
  (223, 22300, 61, 3, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Remoraid - Focus Energy - Level 33
  (223, 22300, 116, 3, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Remoraid - Ice Beam - Level 44
  (223, 22300, 58, 3, NULL, 1, 44, NULL, NULL, NULL, 7),
  -- Remoraid - Hyper Beam - Level 55
  (223, 22300, 63, 3, NULL, 1, 55, NULL, NULL, NULL, 8),
  -- Remoraid - Curse - TM03
  (223, 22300, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 9),
  -- Remoraid - Toxic - TM06
  (223, 22300, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 10),
  -- Remoraid - Hidden Power - TM10
  (223, 22300, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 11),
  -- Remoraid - Snore - TM13
  (223, 22300, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 12),
  -- Remoraid - Hyper Beam - TM15
  (223, 22300, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 13),
  -- Remoraid - Protect - TM17
  (223, 22300, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 14),
  -- Remoraid - Rain Dance - TM18
  (223, 22300, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 15),
  -- Remoraid - Endure - TM20
  (223, 22300, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 16),
  -- Remoraid - Frustration - TM21
  (223, 22300, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 17),
  -- Remoraid - Return - TM27
  (223, 22300, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 18),
  -- Remoraid - Mud-Slap - TM31
  (223, 22300, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 19),
  -- Remoraid - Double Team - TM32
  (223, 22300, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 20),
  -- Remoraid - Swagger - TM34
  (223, 22300, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 21),
  -- Remoraid - Sleep Talk - TM35
  (223, 22300, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 22),
  -- Remoraid - Swift - TM39
  (223, 22300, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 23),
  -- Remoraid - Defense Curl - TM40
  (223, 22300, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 24),
  -- Remoraid - Rest - TM44
  (223, 22300, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 25),
  -- Remoraid - Attract - TM45
  (223, 22300, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 26),
  -- Remoraid - Thief - TM46
  (223, 22300, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 27),
  -- Remoraid - Surf - HM03
  (223, 22300, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 28),
  -- Remoraid - Whirlpool - HM06
  (223, 22300, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 29),
  -- Remoraid - Aurora Beam - Egg Move
  (223, 22300, 62, 3, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Remoraid - Haze - Egg Move
  (223, 22300, 114, 3, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Remoraid - Octazooka - Egg Move
  (223, 22300, 190, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Remoraid - Screech - Egg Move
  (223, 22300, 103, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Remoraid - Supersonic - Egg Move
  (223, 22300, 48, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Octillery - Water Gun - Level 1
  (224, 22400, 55, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Octillery - Constrict - Level 11
  (224, 22400, 132, 3, NULL, 1, 11, NULL, NULL, NULL, 2),
  -- Octillery - Psybeam - Level 22
  (224, 22400, 60, 3, NULL, 1, 22, NULL, NULL, NULL, 3),
  -- Octillery - Aurora Beam - Level 22
  (224, 22400, 62, 3, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Octillery - Bubble Beam - Level 22
  (224, 22400, 61, 3, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Octillery - Octazooka - Level 25
  (224, 22400, 190, 3, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Octillery - Focus Energy - Level 38
  (224, 22400, 116, 3, NULL, 1, 38, NULL, NULL, NULL, 7),
  -- Octillery - Ice Beam - Level 54
  (224, 22400, 58, 3, NULL, 1, 54, NULL, NULL, NULL, 8),
  -- Octillery - Hyper Beam - Level 70
  (224, 22400, 63, 3, NULL, 1, 70, NULL, NULL, NULL, 9),
  -- Octillery - Curse - TM03
  (224, 22400, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Octillery - Toxic - TM06
  (224, 22400, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Octillery - Hidden Power - TM10
  (224, 22400, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 12),
  -- Octillery - Snore - TM13
  (224, 22400, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 13),
  -- Octillery - Hyper Beam - TM15
  (224, 22400, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 14),
  -- Octillery - Protect - TM17
  (224, 22400, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 15),
  -- Octillery - Rain Dance - TM18
  (224, 22400, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 16),
  -- Octillery - Endure - TM20
  (224, 22400, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 17),
  -- Octillery - Frustration - TM21
  (224, 22400, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 18),
  -- Octillery - Return - TM27
  (224, 22400, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 19),
  -- Octillery - Mud-Slap - TM31
  (224, 22400, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 20),
  -- Octillery - Double Team - TM32
  (224, 22400, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 21),
  -- Octillery - Swagger - TM34
  (224, 22400, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 22),
  -- Octillery - Sleep Talk - TM35
  (224, 22400, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 23),
  -- Octillery - Swift - TM39
  (224, 22400, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 24),
  -- Octillery - Defense Curl - TM40
  (224, 22400, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 25),
  -- Octillery - Rest - TM44
  (224, 22400, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 26),
  -- Octillery - Attract - TM45
  (224, 22400, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 27),
  -- Octillery - Thief - TM46
  (224, 22400, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 28),
  -- Octillery - Surf - HM03
  (224, 22400, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 29),
  -- Octillery - Whirlpool - HM06
  (224, 22400, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 30),
  -- Delibird - Present - Level 1
  (225, 22500, 217, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Delibird - Headbutt - TM02
  (225, 22500, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 2),
  -- Delibird - Curse - TM03
  (225, 22500, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 3),
  -- Delibird - Toxic - TM06
  (225, 22500, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 4),
  -- Delibird - Hidden Power - TM10
  (225, 22500, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 5),
  -- Delibird - Snore - TM13
  (225, 22500, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 6),
  -- Delibird - Blizzard - TM14
  (225, 22500, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 7),
  -- Delibird - Icy Wind - TM16
  (225, 22500, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 8),
  -- Delibird - Protect - TM17
  (225, 22500, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 9),
  -- Delibird - Rain Dance - TM18
  (225, 22500, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 10),
  -- Delibird - Endure - TM20
  (225, 22500, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 11),
  -- Delibird - Frustration - TM21
  (225, 22500, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 12),
  -- Delibird - Return - TM27
  (225, 22500, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 13),
  -- Delibird - Mud-Slap - TM31
  (225, 22500, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 14),
  -- Delibird - Double Team - TM32
  (225, 22500, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 15),
  -- Delibird - Swagger - TM34
  (225, 22500, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 16),
  -- Delibird - Sleep Talk - TM35
  (225, 22500, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 17),
  -- Delibird - Swift - TM39
  (225, 22500, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 18),
  -- Delibird - Detect - TM43
  (225, 22500, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 19),
  -- Delibird - Rest - TM44
  (225, 22500, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 20),
  -- Delibird - Attract - TM45
  (225, 22500, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 21),
  -- Delibird - Thief - TM46
  (225, 22500, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 22),
  -- Delibird - Fly - HM02
  (225, 22500, 19, 3, NULL, 3, NULL, NULL, 3003002, NULL, 23),
  -- Delibird - Aurora Beam - Egg Move
  (225, 22500, 62, 3, NULL, 5, NULL, NULL, NULL, NULL, 24),
  -- Delibird - Future Sight - Egg Move
  (225, 22500, 248, 3, NULL, 5, NULL, NULL, NULL, NULL, 25),
  -- Delibird - Quick Attack - Egg Move
  (225, 22500, 98, 3, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Delibird - Rapid Spin - Egg Move
  (225, 22500, 229, 3, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Delibird - Splash - Egg Move
  (225, 22500, 150, 3, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Mantine - Tackle - Level 1
  (226, 22600, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mantine - Bubble - Level 1
  (226, 22600, 145, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mantine - Supersonic - Level 10
  (226, 22600, 48, 3, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Mantine - Bubble Beam - Level 18
  (226, 22600, 61, 3, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Mantine - Take Down - Level 25
  (226, 22600, 36, 3, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Mantine - Agility - Level 32
  (226, 22600, 97, 3, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Mantine - Wing Attack - Level 40
  (226, 22600, 17, 3, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Mantine - Confuse Ray - Level 49
  (226, 22600, 109, 3, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Mantine - Headbutt - TM02
  (226, 22600, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 9),
  -- Mantine - Curse - TM03
  (226, 22600, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Mantine - Toxic - TM06
  (226, 22600, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Mantine - Hidden Power - TM10
  (226, 22600, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 12),
  -- Mantine - Snore - TM13
  (226, 22600, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 13),
  -- Mantine - Blizzard - TM14
  (226, 22600, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 14),
  -- Mantine - Icy Wind - TM16
  (226, 22600, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 15),
  -- Mantine - Protect - TM17
  (226, 22600, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 16),
  -- Mantine - Rain Dance - TM18
  (226, 22600, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 17),
  -- Mantine - Endure - TM20
  (226, 22600, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 18),
  -- Mantine - Frustration - TM21
  (226, 22600, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 19),
  -- Mantine - Return - TM27
  (226, 22600, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 20),
  -- Mantine - Mud-Slap - TM31
  (226, 22600, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 21),
  -- Mantine - Double Team - TM32
  (226, 22600, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 22),
  -- Mantine - Swagger - TM34
  (226, 22600, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 23),
  -- Mantine - Sleep Talk - TM35
  (226, 22600, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 24),
  -- Mantine - Swift - TM39
  (226, 22600, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 25),
  -- Mantine - Rest - TM44
  (226, 22600, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 26),
  -- Mantine - Attract - TM45
  (226, 22600, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 27),
  -- Mantine - Surf - HM03
  (226, 22600, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 28),
  -- Mantine - Whirlpool - HM06
  (226, 22600, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 29),
  -- Mantine - Waterfall - HM07
  (226, 22600, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 30),
  -- Mantine - Haze - Egg Move
  (226, 22600, 114, 3, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Mantine - Hydro Pump - Egg Move
  (226, 22600, 56, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Mantine - Slam - Egg Move
  (226, 22600, 21, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Mantine - Twister - Egg Move
  (226, 22600, 239, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Skarmory - Leer - Level 1
  (227, 22700, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skarmory - Peck - Level 1
  (227, 22700, 64, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skarmory - Sand Attack - Level 13
  (227, 22700, 28, 3, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Skarmory - Swift - Level 19
  (227, 22700, 129, 3, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Skarmory - Agility - Level 25
  (227, 22700, 97, 3, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Skarmory - Fury Attack - Level 37
  (227, 22700, 31, 3, NULL, 1, 37, NULL, NULL, NULL, 6),
  -- Skarmory - Steel Wing - Level 49
  (227, 22700, 211, 3, NULL, 1, 49, NULL, NULL, NULL, 7),
  -- Skarmory - Curse - TM03
  (227, 22700, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 8),
  -- Skarmory - Toxic - TM06
  (227, 22700, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 9),
  -- Skarmory - Hidden Power - TM10
  (227, 22700, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 10),
  -- Skarmory - Sunny Day - TM11
  (227, 22700, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 11),
  -- Skarmory - Snore - TM13
  (227, 22700, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 12),
  -- Skarmory - Protect - TM17
  (227, 22700, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 13),
  -- Skarmory - Endure - TM20
  (227, 22700, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 14),
  -- Skarmory - Frustration - TM21
  (227, 22700, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 15),
  -- Skarmory - Return - TM27
  (227, 22700, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 16),
  -- Skarmory - Mud-Slap - TM31
  (227, 22700, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 17),
  -- Skarmory - Double Team - TM32
  (227, 22700, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 18),
  -- Skarmory - Swagger - TM34
  (227, 22700, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 19),
  -- Skarmory - Sleep Talk - TM35
  (227, 22700, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 20),
  -- Skarmory - Sandstorm - TM37
  (227, 22700, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 21),
  -- Skarmory - Swift - TM39
  (227, 22700, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 22),
  -- Skarmory - Detect - TM43
  (227, 22700, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 23),
  -- Skarmory - Rest - TM44
  (227, 22700, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 24),
  -- Skarmory - Attract - TM45
  (227, 22700, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 25),
  -- Skarmory - Thief - TM46
  (227, 22700, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 26),
  -- Skarmory - Steel Wing - TM47
  (227, 22700, 211, 3, NULL, 2, NULL, NULL, 3002047, NULL, 27),
  -- Skarmory - Cut - HM01
  (227, 22700, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 28),
  -- Skarmory - Fly - HM02
  (227, 22700, 19, 3, NULL, 3, NULL, NULL, 3003002, NULL, 29),
  -- Skarmory - Drill Peck - Egg Move
  (227, 22700, 65, 3, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Skarmory - Pursuit - Egg Move
  (227, 22700, 228, 3, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Skarmory - Whirlwind - Egg Move
  (227, 22700, 18, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Houndour - Leer - Level 1
  (228, 22800, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Houndour - Ember - Level 1
  (228, 22800, 52, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Houndour - Roar - Level 7
  (228, 22800, 46, 3, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Houndour - Smog - Level 13
  (228, 22800, 123, 3, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Houndour - Bite - Level 20
  (228, 22800, 44, 3, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Houndour - Feint Attack - Level 27
  (228, 22800, 185, 3, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Houndour - Flamethrower - Level 35
  (228, 22800, 53, 3, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Houndour - Crunch - Level 43
  (228, 22800, 242, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Houndour - Headbutt - TM02
  (228, 22800, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 9),
  -- Houndour - Curse - TM03
  (228, 22800, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Houndour - Roar - TM05
  (228, 22800, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 11),
  -- Houndour - Toxic - TM06
  (228, 22800, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Houndour - Rock Smash - TM08
  (228, 22800, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 13),
  -- Houndour - Hidden Power - TM10
  (228, 22800, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Houndour - Sunny Day - TM11
  (228, 22800, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 15),
  -- Houndour - Snore - TM13
  (228, 22800, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Houndour - Protect - TM17
  (228, 22800, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Houndour - Endure - TM20
  (228, 22800, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 18),
  -- Houndour - Frustration - TM21
  (228, 22800, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 19),
  -- Houndour - Solar Beam - TM22
  (228, 22800, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 20),
  -- Houndour - Iron Tail - TM23
  (228, 22800, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 21),
  -- Houndour - Return - TM27
  (228, 22800, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 22),
  -- Houndour - Shadow Ball - TM30
  (228, 22800, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 23),
  -- Houndour - Mud-Slap - TM31
  (228, 22800, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 24),
  -- Houndour - Double Team - TM32
  (228, 22800, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 25),
  -- Houndour - Swagger - TM34
  (228, 22800, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Houndour - Sleep Talk - TM35
  (228, 22800, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Houndour - Sludge Bomb - TM36
  (228, 22800, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 28),
  -- Houndour - Fire Blast - TM38
  (228, 22800, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 29),
  -- Houndour - Swift - TM39
  (228, 22800, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 30),
  -- Houndour - Dream Eater - TM42
  (228, 22800, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 31),
  -- Houndour - Detect - TM43
  (228, 22800, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 32),
  -- Houndour - Rest - TM44
  (228, 22800, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 33),
  -- Houndour - Attract - TM45
  (228, 22800, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 34),
  -- Houndour - Thief - TM46
  (228, 22800, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 35),
  -- Houndour - Nightmare - TM50
  (228, 22800, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 36),
  -- Houndour - Beat Up - Egg Move
  (228, 22800, 251, 3, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Houndour - Counter - Egg Move
  (228, 22800, 68, 3, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Houndour - Fire Spin - Egg Move
  (228, 22800, 83, 3, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Houndour - Pursuit - Egg Move
  (228, 22800, 228, 3, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Houndour - Rage - Egg Move
  (228, 22800, 99, 3, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Houndour - Reversal - Egg Move
  (228, 22800, 179, 3, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Houndour - Spite - Egg Move
  (228, 22800, 180, 3, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Houndoom - Leer - Level 1
  (229, 22900, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Houndoom - Ember - Level 1
  (229, 22900, 52, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Houndoom - Roar - Level 7
  (229, 22900, 46, 3, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Houndoom - Smog - Level 13
  (229, 22900, 123, 3, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Houndoom - Bite - Level 20
  (229, 22900, 44, 3, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Houndoom - Feint Attack - Level 30
  (229, 22900, 185, 3, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Houndoom - Flamethrower - Level 41
  (229, 22900, 53, 3, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Houndoom - Crunch - Level 52
  (229, 22900, 242, 3, NULL, 1, 52, NULL, NULL, NULL, 8),
  -- Houndoom - Headbutt - TM02
  (229, 22900, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 9),
  -- Houndoom - Curse - TM03
  (229, 22900, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Houndoom - Roar - TM05
  (229, 22900, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 11),
  -- Houndoom - Toxic - TM06
  (229, 22900, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Houndoom - Rock Smash - TM08
  (229, 22900, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 13),
  -- Houndoom - Hidden Power - TM10
  (229, 22900, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Houndoom - Sunny Day - TM11
  (229, 22900, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 15),
  -- Houndoom - Snore - TM13
  (229, 22900, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Houndoom - Hyper Beam - TM15
  (229, 22900, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 17),
  -- Houndoom - Protect - TM17
  (229, 22900, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 18),
  -- Houndoom - Endure - TM20
  (229, 22900, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 19),
  -- Houndoom - Frustration - TM21
  (229, 22900, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 20),
  -- Houndoom - Solar Beam - TM22
  (229, 22900, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 21),
  -- Houndoom - Iron Tail - TM23
  (229, 22900, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 22),
  -- Houndoom - Return - TM27
  (229, 22900, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 23),
  -- Houndoom - Shadow Ball - TM30
  (229, 22900, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 24),
  -- Houndoom - Mud-Slap - TM31
  (229, 22900, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 25),
  -- Houndoom - Double Team - TM32
  (229, 22900, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 26),
  -- Houndoom - Swagger - TM34
  (229, 22900, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 27),
  -- Houndoom - Sleep Talk - TM35
  (229, 22900, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 28),
  -- Houndoom - Sludge Bomb - TM36
  (229, 22900, 188, 3, NULL, 2, NULL, NULL, 3002036, NULL, 29),
  -- Houndoom - Fire Blast - TM38
  (229, 22900, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 30),
  -- Houndoom - Swift - TM39
  (229, 22900, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 31),
  -- Houndoom - Dream Eater - TM42
  (229, 22900, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 32),
  -- Houndoom - Detect - TM43
  (229, 22900, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 33),
  -- Houndoom - Rest - TM44
  (229, 22900, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 34),
  -- Houndoom - Attract - TM45
  (229, 22900, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 35),
  -- Houndoom - Thief - TM46
  (229, 22900, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 36),
  -- Houndoom - Nightmare - TM50
  (229, 22900, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 37),
  -- Houndoom - Strength - HM04
  (229, 22900, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 38),
  -- Kingdra - Bubble - Level 1
  (230, 23000, 145, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kingdra - Smokescreen - Level 1
  (230, 23000, 108, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kingdra - Leer - Level 1
  (230, 23000, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kingdra - Water Gun - Level 1
  (230, 23000, 55, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kingdra - Smokescreen - Level 8
  (230, 23000, 108, 3, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Kingdra - Leer - Level 15
  (230, 23000, 43, 3, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Kingdra - Water Gun - Level 22
  (230, 23000, 55, 3, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Kingdra - Twister - Level 29
  (230, 23000, 239, 3, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Kingdra - Agility - Level 40
  (230, 23000, 97, 3, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Kingdra - Hydro Pump - Level 51
  (230, 23000, 56, 3, NULL, 1, 51, NULL, NULL, NULL, 10),
  -- Kingdra - Headbutt - TM02
  (230, 23000, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Kingdra - Curse - TM03
  (230, 23000, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Kingdra - Toxic - TM06
  (230, 23000, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Kingdra - Hidden Power - TM10
  (230, 23000, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Kingdra - Snore - TM13
  (230, 23000, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 15),
  -- Kingdra - Blizzard - TM14
  (230, 23000, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 16),
  -- Kingdra - Hyper Beam - TM15
  (230, 23000, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 17),
  -- Kingdra - Icy Wind - TM16
  (230, 23000, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 18),
  -- Kingdra - Protect - TM17
  (230, 23000, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Kingdra - Rain Dance - TM18
  (230, 23000, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 20),
  -- Kingdra - Endure - TM20
  (230, 23000, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Kingdra - Frustration - TM21
  (230, 23000, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Kingdra - Dragon Breath - TM24
  (230, 23000, 225, 3, NULL, 2, NULL, NULL, 3002024, NULL, 23),
  -- Kingdra - Return - TM27
  (230, 23000, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 24),
  -- Kingdra - Double Team - TM32
  (230, 23000, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 25),
  -- Kingdra - Swagger - TM34
  (230, 23000, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Kingdra - Sleep Talk - TM35
  (230, 23000, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Kingdra - Swift - TM39
  (230, 23000, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 28),
  -- Kingdra - Rest - TM44
  (230, 23000, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 29),
  -- Kingdra - Attract - TM45
  (230, 23000, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 30),
  -- Kingdra - Surf - HM03
  (230, 23000, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 31),
  -- Kingdra - Whirlpool - HM06
  (230, 23000, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 32),
  -- Kingdra - Waterfall - HM07
  (230, 23000, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 33),
  -- Phanpy - Tackle - Level 1
  (231, 23100, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Phanpy - Growl - Level 1
  (231, 23100, 45, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Phanpy - Defense Curl - Level 9
  (231, 23100, 111, 3, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Phanpy - Flail - Level 17
  (231, 23100, 175, 3, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Phanpy - Take Down - Level 25
  (231, 23100, 36, 3, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Phanpy - Rollout - Level 33
  (231, 23100, 205, 3, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Phanpy - Endure - Level 41
  (231, 23100, 203, 3, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Phanpy - Double-Edge - Level 49
  (231, 23100, 38, 3, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Phanpy - Headbutt - TM02
  (231, 23100, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 9),
  -- Phanpy - Curse - TM03
  (231, 23100, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Phanpy - Rollout - TM04
  (231, 23100, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 11),
  -- Phanpy - Roar - TM05
  (231, 23100, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 12),
  -- Phanpy - Toxic - TM06
  (231, 23100, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Phanpy - Rock Smash - TM08
  (231, 23100, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 14),
  -- Phanpy - Hidden Power - TM10
  (231, 23100, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Phanpy - Sunny Day - TM11
  (231, 23100, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 16),
  -- Phanpy - Snore - TM13
  (231, 23100, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 17),
  -- Phanpy - Protect - TM17
  (231, 23100, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 18),
  -- Phanpy - Endure - TM20
  (231, 23100, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 19),
  -- Phanpy - Frustration - TM21
  (231, 23100, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 20),
  -- Phanpy - Earthquake - TM26
  (231, 23100, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 21),
  -- Phanpy - Return - TM27
  (231, 23100, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 22),
  -- Phanpy - Mud-Slap - TM31
  (231, 23100, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 23),
  -- Phanpy - Double Team - TM32
  (231, 23100, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 24),
  -- Phanpy - Swagger - TM34
  (231, 23100, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 25),
  -- Phanpy - Sleep Talk - TM35
  (231, 23100, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 26),
  -- Phanpy - Sandstorm - TM37
  (231, 23100, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 27),
  -- Phanpy - Defense Curl - TM40
  (231, 23100, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 28),
  -- Phanpy - Rest - TM44
  (231, 23100, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 29),
  -- Phanpy - Attract - TM45
  (231, 23100, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 30),
  -- Phanpy - Strength - HM04
  (231, 23100, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 31),
  -- Phanpy - Ancient Power - Egg Move
  (231, 23100, 246, 3, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Phanpy - Body Slam - Egg Move
  (231, 23100, 34, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Phanpy - Focus Energy - Egg Move
  (231, 23100, 116, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Donphan - Horn Attack - Level 1
  (232, 23200, 30, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Donphan - Growl - Level 1
  (232, 23200, 45, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Donphan - Defense Curl - Level 9
  (232, 23200, 111, 3, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Donphan - Flail - Level 17
  (232, 23200, 175, 3, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Donphan - Fury Attack - Level 25
  (232, 23200, 31, 3, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Donphan - Rollout - Level 33
  (232, 23200, 205, 3, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Donphan - Rapid Spin - Level 41
  (232, 23200, 229, 3, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Donphan - Earthquake - Level 49
  (232, 23200, 89, 3, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Donphan - Headbutt - TM02
  (232, 23200, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 9),
  -- Donphan - Curse - TM03
  (232, 23200, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Donphan - Rollout - TM04
  (232, 23200, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 11),
  -- Donphan - Roar - TM05
  (232, 23200, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 12),
  -- Donphan - Toxic - TM06
  (232, 23200, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Donphan - Rock Smash - TM08
  (232, 23200, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 14),
  -- Donphan - Hidden Power - TM10
  (232, 23200, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Donphan - Sunny Day - TM11
  (232, 23200, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 16),
  -- Donphan - Snore - TM13
  (232, 23200, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 17),
  -- Donphan - Hyper Beam - TM15
  (232, 23200, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 18),
  -- Donphan - Protect - TM17
  (232, 23200, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 19),
  -- Donphan - Endure - TM20
  (232, 23200, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 20),
  -- Donphan - Frustration - TM21
  (232, 23200, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 21),
  -- Donphan - Earthquake - TM26
  (232, 23200, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 22),
  -- Donphan - Return - TM27
  (232, 23200, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 23),
  -- Donphan - Mud-Slap - TM31
  (232, 23200, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 24),
  -- Donphan - Double Team - TM32
  (232, 23200, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 25),
  -- Donphan - Swagger - TM34
  (232, 23200, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Donphan - Sleep Talk - TM35
  (232, 23200, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Donphan - Sandstorm - TM37
  (232, 23200, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 28),
  -- Donphan - Defense Curl - TM40
  (232, 23200, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 29),
  -- Donphan - Rest - TM44
  (232, 23200, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 30),
  -- Donphan - Attract - TM45
  (232, 23200, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 31),
  -- Donphan - Strength - HM04
  (232, 23200, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 32),
  -- Porygon2 - Conversion 2 - Level 1
  (233, 23300, 176, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon2 - Tackle - Level 1
  (233, 23300, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon2 - Conversion - Level 1
  (233, 23300, 160, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon2 - Agility - Level 9
  (233, 23300, 97, 3, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Porygon2 - Psybeam - Level 12
  (233, 23300, 60, 3, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Porygon2 - Recover - Level 20
  (233, 23300, 105, 3, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Porygon2 - Defense Curl - Level 24
  (233, 23300, 111, 3, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Porygon2 - Lock-On - Level 32
  (233, 23300, 199, 3, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Porygon2 - Tri Attack - Level 36
  (233, 23300, 161, 3, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Porygon2 - Zap Cannon - Level 44
  (233, 23300, 192, 3, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Porygon2 - Curse - TM03
  (233, 23300, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Porygon2 - Toxic - TM06
  (233, 23300, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Porygon2 - Zap Cannon - TM07
  (233, 23300, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 13),
  -- Porygon2 - Psych Up - TM09
  (233, 23300, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 14),
  -- Porygon2 - Hidden Power - TM10
  (233, 23300, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Porygon2 - Sunny Day - TM11
  (233, 23300, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 16),
  -- Porygon2 - Snore - TM13
  (233, 23300, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 17),
  -- Porygon2 - Blizzard - TM14
  (233, 23300, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 18),
  -- Porygon2 - Hyper Beam - TM15
  (233, 23300, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 19),
  -- Porygon2 - Icy Wind - TM16
  (233, 23300, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 20),
  -- Porygon2 - Protect - TM17
  (233, 23300, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 21),
  -- Porygon2 - Rain Dance - TM18
  (233, 23300, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 22),
  -- Porygon2 - Endure - TM20
  (233, 23300, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 23),
  -- Porygon2 - Frustration - TM21
  (233, 23300, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 24),
  -- Porygon2 - Iron Tail - TM23
  (233, 23300, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 25),
  -- Porygon2 - Thunder - TM25
  (233, 23300, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 26),
  -- Porygon2 - Return - TM27
  (233, 23300, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 27),
  -- Porygon2 - Psychic - TM29
  (233, 23300, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 28),
  -- Porygon2 - Double Team - TM32
  (233, 23300, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 29),
  -- Porygon2 - Swagger - TM34
  (233, 23300, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 30),
  -- Porygon2 - Sleep Talk - TM35
  (233, 23300, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 31),
  -- Porygon2 - Swift - TM39
  (233, 23300, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 32),
  -- Porygon2 - Defense Curl - TM40
  (233, 23300, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 33),
  -- Porygon2 - Dream Eater - TM42
  (233, 23300, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 34),
  -- Porygon2 - Rest - TM44
  (233, 23300, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 35),
  -- Porygon2 - Thief - TM46
  (233, 23300, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 36),
  -- Porygon2 - Nightmare - TM50
  (233, 23300, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 37),
  -- Porygon2 - Flash - HM05
  (233, 23300, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 38),
  -- Stantler - Tackle - Level 1
  (234, 23400, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stantler - Leer - Level 8
  (234, 23400, 43, 3, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Stantler - Hypnosis - Level 15
  (234, 23400, 95, 3, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Stantler - Stomp - Level 23
  (234, 23400, 23, 3, NULL, 1, 23, NULL, NULL, NULL, 4),
  -- Stantler - Sand Attack - Level 31
  (234, 23400, 28, 3, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Stantler - Take Down - Level 40
  (234, 23400, 36, 3, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Stantler - Confuse Ray - Level 49
  (234, 23400, 109, 3, NULL, 1, 49, NULL, NULL, NULL, 7),
  -- Stantler - Headbutt - TM02
  (234, 23400, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 8),
  -- Stantler - Curse - TM03
  (234, 23400, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 9),
  -- Stantler - Roar - TM05
  (234, 23400, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 10),
  -- Stantler - Toxic - TM06
  (234, 23400, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Stantler - Psych Up - TM09
  (234, 23400, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 12),
  -- Stantler - Hidden Power - TM10
  (234, 23400, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 13),
  -- Stantler - Sunny Day - TM11
  (234, 23400, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 14),
  -- Stantler - Snore - TM13
  (234, 23400, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 15),
  -- Stantler - Protect - TM17
  (234, 23400, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 16),
  -- Stantler - Rain Dance - TM18
  (234, 23400, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 17),
  -- Stantler - Endure - TM20
  (234, 23400, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 18),
  -- Stantler - Frustration - TM21
  (234, 23400, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 19),
  -- Stantler - Earthquake - TM26
  (234, 23400, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 20),
  -- Stantler - Return - TM27
  (234, 23400, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 21),
  -- Stantler - Psychic - TM29
  (234, 23400, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 22),
  -- Stantler - Mud-Slap - TM31
  (234, 23400, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 23),
  -- Stantler - Double Team - TM32
  (234, 23400, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 24),
  -- Stantler - Swagger - TM34
  (234, 23400, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 25),
  -- Stantler - Sleep Talk - TM35
  (234, 23400, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 26),
  -- Stantler - Swift - TM39
  (234, 23400, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 27),
  -- Stantler - Dream Eater - TM42
  (234, 23400, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 28),
  -- Stantler - Detect - TM43
  (234, 23400, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 29),
  -- Stantler - Rest - TM44
  (234, 23400, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 30),
  -- Stantler - Attract - TM45
  (234, 23400, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 31),
  -- Stantler - Thief - TM46
  (234, 23400, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 32),
  -- Stantler - Nightmare - TM50
  (234, 23400, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 33),
  -- Stantler - Flash - HM05
  (234, 23400, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 34),
  -- Stantler - Bite - Egg Move
  (234, 23400, 44, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Stantler - Disable - Egg Move
  (234, 23400, 50, 3, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Stantler - Light Screen - Egg Move
  (234, 23400, 113, 3, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Stantler - Reflect - Egg Move
  (234, 23400, 115, 3, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Stantler - Spite - Egg Move
  (234, 23400, 180, 3, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Smeargle - Sketch - Level 1
  (235, 23500, 166, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Smeargle - Sketch - Level 11
  (235, 23500, 166, 3, NULL, 1, 11, NULL, NULL, NULL, 2),
  -- Smeargle - Sketch - Level 21
  (235, 23500, 166, 3, NULL, 1, 21, NULL, NULL, NULL, 3),
  -- Smeargle - Sketch - Level 31
  (235, 23500, 166, 3, NULL, 1, 31, NULL, NULL, NULL, 4),
  -- Smeargle - Sketch - Level 41
  (235, 23500, 166, 3, NULL, 1, 41, NULL, NULL, NULL, 5),
  -- Smeargle - Sketch - Level 51
  (235, 23500, 166, 3, NULL, 1, 51, NULL, NULL, NULL, 6),
  -- Smeargle - Sketch - Level 61
  (235, 23500, 166, 3, NULL, 1, 61, NULL, NULL, NULL, 7),
  -- Smeargle - Sketch - Level 71
  (235, 23500, 166, 3, NULL, 1, 71, NULL, NULL, NULL, 8),
  -- Smeargle - Sketch - Level 81
  (235, 23500, 166, 3, NULL, 1, 81, NULL, NULL, NULL, 9),
  -- Smeargle - Sketch - Level 91
  (235, 23500, 166, 3, NULL, 1, 91, NULL, NULL, NULL, 10),
  -- Tyrogue - Tackle - Level 1
  (236, 23600, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyrogue - Headbutt - TM02
  (236, 23600, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 2),
  -- Tyrogue - Curse - TM03
  (236, 23600, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 3),
  -- Tyrogue - Toxic - TM06
  (236, 23600, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 4),
  -- Tyrogue - Rock Smash - TM08
  (236, 23600, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 5),
  -- Tyrogue - Hidden Power - TM10
  (236, 23600, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 6),
  -- Tyrogue - Sunny Day - TM11
  (236, 23600, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 7),
  -- Tyrogue - Snore - TM13
  (236, 23600, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 8),
  -- Tyrogue - Protect - TM17
  (236, 23600, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 9),
  -- Tyrogue - Endure - TM20
  (236, 23600, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 10),
  -- Tyrogue - Frustration - TM21
  (236, 23600, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 11),
  -- Tyrogue - Return - TM27
  (236, 23600, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 12),
  -- Tyrogue - Mud-Slap - TM31
  (236, 23600, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 13),
  -- Tyrogue - Double Team - TM32
  (236, 23600, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 14),
  -- Tyrogue - Swagger - TM34
  (236, 23600, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 15),
  -- Tyrogue - Sleep Talk - TM35
  (236, 23600, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 16),
  -- Tyrogue - Swift - TM39
  (236, 23600, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 17),
  -- Tyrogue - Detect - TM43
  (236, 23600, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 18),
  -- Tyrogue - Rest - TM44
  (236, 23600, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 19),
  -- Tyrogue - Attract - TM45
  (236, 23600, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 20),
  -- Tyrogue - Thief - TM46
  (236, 23600, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 21),
  -- Tyrogue - Strength - HM04
  (236, 23600, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 22),
  -- Tyrogue - High Jump Kick - Egg Move
  (236, 23600, 136, 3, NULL, 5, NULL, NULL, NULL, NULL, 23),
  -- Tyrogue - Mach Punch - Egg Move
  (236, 23600, 183, 3, NULL, 5, NULL, NULL, NULL, NULL, 24),
  -- Tyrogue - Mind Reader - Egg Move
  (236, 23600, 170, 3, NULL, 5, NULL, NULL, NULL, NULL, 25),
  -- Tyrogue - Rapid Spin - Egg Move
  (236, 23600, 229, 3, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Hitmontop - Rolling Kick - Level 1
  (237, 23700, 27, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmontop - Focus Energy - Level 7
  (237, 23700, 116, 3, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Hitmontop - Pursuit - Level 13
  (237, 23700, 228, 3, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Hitmontop - Quick Attack - Level 19
  (237, 23700, 98, 3, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Hitmontop - Rapid Spin - Level 25
  (237, 23700, 229, 3, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Hitmontop - Counter - Level 31
  (237, 23700, 68, 3, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Hitmontop - Agility - Level 37
  (237, 23700, 97, 3, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Hitmontop - Detect - Level 43
  (237, 23700, 197, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Hitmontop - Triple Kick - Level 49
  (237, 23700, 167, 3, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Hitmontop - Headbutt - TM02
  (237, 23700, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 10),
  -- Hitmontop - Curse - TM03
  (237, 23700, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Hitmontop - Toxic - TM06
  (237, 23700, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Hitmontop - Rock Smash - TM08
  (237, 23700, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 13),
  -- Hitmontop - Hidden Power - TM10
  (237, 23700, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Hitmontop - Sunny Day - TM11
  (237, 23700, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 15),
  -- Hitmontop - Snore - TM13
  (237, 23700, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Hitmontop - Protect - TM17
  (237, 23700, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Hitmontop - Endure - TM20
  (237, 23700, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 18),
  -- Hitmontop - Frustration - TM21
  (237, 23700, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 19),
  -- Hitmontop - Return - TM27
  (237, 23700, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 20),
  -- Hitmontop - Dig - TM28
  (237, 23700, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 21),
  -- Hitmontop - Mud-Slap - TM31
  (237, 23700, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 22),
  -- Hitmontop - Double Team - TM32
  (237, 23700, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 23),
  -- Hitmontop - Swagger - TM34
  (237, 23700, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 24),
  -- Hitmontop - Sleep Talk - TM35
  (237, 23700, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 25),
  -- Hitmontop - Swift - TM39
  (237, 23700, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 26),
  -- Hitmontop - Detect - TM43
  (237, 23700, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 27),
  -- Hitmontop - Rest - TM44
  (237, 23700, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 28),
  -- Hitmontop - Attract - TM45
  (237, 23700, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 29),
  -- Hitmontop - Thief - TM46
  (237, 23700, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 30),
  -- Hitmontop - Strength - HM04
  (237, 23700, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 31),
  -- Smoochum - Pound - Level 1
  (238, 23800, 1, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Smoochum - Lick - Level 1
  (238, 23800, 122, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Smoochum - Sweet Kiss - Level 9
  (238, 23800, 186, 3, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Smoochum - Powder Snow - Level 13
  (238, 23800, 181, 3, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Smoochum - Confusion - Level 21
  (238, 23800, 93, 3, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Smoochum - Sing - Level 25
  (238, 23800, 47, 3, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Smoochum - Mean Look - Level 33
  (238, 23800, 212, 3, NULL, 1, 33, NULL, NULL, NULL, 7),
  -- Smoochum - Psychic - Level 37
  (238, 23800, 94, 3, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Smoochum - Perish Song - Level 45
  (238, 23800, 195, 3, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Smoochum - Blizzard - Level 49
  (238, 23800, 59, 3, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Smoochum - Dynamic Punch - TM01
  (238, 23800, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 11),
  -- Smoochum - Curse - TM03
  (238, 23800, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Smoochum - Toxic - TM06
  (238, 23800, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Smoochum - Psych Up - TM09
  (238, 23800, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 14),
  -- Smoochum - Hidden Power - TM10
  (238, 23800, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 15),
  -- Smoochum - Sweet Scent - TM12
  (238, 23800, 230, 3, NULL, 2, NULL, NULL, 3002012, NULL, 16),
  -- Smoochum - Snore - TM13
  (238, 23800, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 17),
  -- Smoochum - Blizzard - TM14
  (238, 23800, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 18),
  -- Smoochum - Icy Wind - TM16
  (238, 23800, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 19),
  -- Smoochum - Protect - TM17
  (238, 23800, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Smoochum - Rain Dance - TM18
  (238, 23800, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 21),
  -- Smoochum - Endure - TM20
  (238, 23800, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Smoochum - Frustration - TM21
  (238, 23800, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Smoochum - Return - TM27
  (238, 23800, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 24),
  -- Smoochum - Psychic - TM29
  (238, 23800, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 25),
  -- Smoochum - Shadow Ball - TM30
  (238, 23800, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 26),
  -- Smoochum - Mud-Slap - TM31
  (238, 23800, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 27),
  -- Smoochum - Double Team - TM32
  (238, 23800, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 28),
  -- Smoochum - Ice Punch - TM33
  (238, 23800, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 29),
  -- Smoochum - Swagger - TM34
  (238, 23800, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 30),
  -- Smoochum - Sleep Talk - TM35
  (238, 23800, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 31),
  -- Smoochum - Dream Eater - TM42
  (238, 23800, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 32),
  -- Smoochum - Rest - TM44
  (238, 23800, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 33),
  -- Smoochum - Attract - TM45
  (238, 23800, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 34),
  -- Smoochum - Thief - TM46
  (238, 23800, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 35),
  -- Smoochum - Nightmare - TM50
  (238, 23800, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 36),
  -- Smoochum - Meditate - Egg Move
  (238, 23800, 96, 3, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Elekid - Quick Attack - Level 1
  (239, 23900, 98, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Elekid - Leer - Level 1
  (239, 23900, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Elekid - Thunder Punch - Level 9
  (239, 23900, 9, 3, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Elekid - Light Screen - Level 17
  (239, 23900, 113, 3, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Elekid - Swift - Level 25
  (239, 23900, 129, 3, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Elekid - Screech - Level 33
  (239, 23900, 103, 3, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Elekid - Thunderbolt - Level 41
  (239, 23900, 85, 3, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Elekid - Thunder - Level 49
  (239, 23900, 87, 3, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Elekid - Dynamic Punch - TM01
  (239, 23900, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 9),
  -- Elekid - Headbutt - TM02
  (239, 23900, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 10),
  -- Elekid - Curse - TM03
  (239, 23900, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Elekid - Toxic - TM06
  (239, 23900, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 12),
  -- Elekid - Zap Cannon - TM07
  (239, 23900, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 13),
  -- Elekid - Hidden Power - TM10
  (239, 23900, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Elekid - Snore - TM13
  (239, 23900, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 15),
  -- Elekid - Protect - TM17
  (239, 23900, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 16),
  -- Elekid - Rain Dance - TM18
  (239, 23900, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 17),
  -- Elekid - Endure - TM20
  (239, 23900, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 18),
  -- Elekid - Frustration - TM21
  (239, 23900, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 19),
  -- Elekid - Thunder - TM25
  (239, 23900, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 20),
  -- Elekid - Return - TM27
  (239, 23900, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 21),
  -- Elekid - Psychic - TM29
  (239, 23900, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 22),
  -- Elekid - Mud-Slap - TM31
  (239, 23900, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 23),
  -- Elekid - Double Team - TM32
  (239, 23900, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 24),
  -- Elekid - Ice Punch - TM33
  (239, 23900, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 25),
  -- Elekid - Swagger - TM34
  (239, 23900, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 26),
  -- Elekid - Sleep Talk - TM35
  (239, 23900, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 27),
  -- Elekid - Swift - TM39
  (239, 23900, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 28),
  -- Elekid - Thunder Punch - TM41
  (239, 23900, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 29),
  -- Elekid - Detect - TM43
  (239, 23900, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 30),
  -- Elekid - Rest - TM44
  (239, 23900, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 31),
  -- Elekid - Attract - TM45
  (239, 23900, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 32),
  -- Elekid - Thief - TM46
  (239, 23900, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 33),
  -- Elekid - Fire Punch - TM48
  (239, 23900, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 34),
  -- Elekid - Flash - HM05
  (239, 23900, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 35),
  -- Elekid - Barrier - Egg Move
  (239, 23900, 112, 3, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Elekid - Karate Chop - Egg Move
  (239, 23900, 2, 3, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Elekid - Meditate - Egg Move
  (239, 23900, 96, 3, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Elekid - Rolling Kick - Egg Move
  (239, 23900, 27, 3, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Magby - Ember - Level 1
  (240, 24000, 52, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magby - Leer - Level 7
  (240, 24000, 43, 3, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Magby - Smog - Level 13
  (240, 24000, 123, 3, NULL, 1, 13, NULL, NULL, NULL, 3),
  -- Magby - Fire Punch - Level 19
  (240, 24000, 7, 3, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Magby - Smokescreen - Level 25
  (240, 24000, 108, 3, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Magby - Sunny Day - Level 31
  (240, 24000, 241, 3, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Magby - Flamethrower - Level 37
  (240, 24000, 53, 3, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Magby - Confuse Ray - Level 43
  (240, 24000, 109, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Magby - Fire Blast - Level 49
  (240, 24000, 126, 3, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Magby - Dynamic Punch - TM01
  (240, 24000, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 10),
  -- Magby - Headbutt - TM02
  (240, 24000, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Magby - Curse - TM03
  (240, 24000, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Magby - Toxic - TM06
  (240, 24000, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Magby - Hidden Power - TM10
  (240, 24000, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Magby - Sunny Day - TM11
  (240, 24000, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 15),
  -- Magby - Snore - TM13
  (240, 24000, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Magby - Protect - TM17
  (240, 24000, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 17),
  -- Magby - Endure - TM20
  (240, 24000, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 18),
  -- Magby - Frustration - TM21
  (240, 24000, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 19),
  -- Magby - Iron Tail - TM23
  (240, 24000, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 20),
  -- Magby - Return - TM27
  (240, 24000, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 21),
  -- Magby - Psychic - TM29
  (240, 24000, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 22),
  -- Magby - Mud-Slap - TM31
  (240, 24000, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 23),
  -- Magby - Double Team - TM32
  (240, 24000, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 24),
  -- Magby - Swagger - TM34
  (240, 24000, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 25),
  -- Magby - Sleep Talk - TM35
  (240, 24000, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 26),
  -- Magby - Fire Blast - TM38
  (240, 24000, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 27),
  -- Magby - Thunder Punch - TM41
  (240, 24000, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 28),
  -- Magby - Detect - TM43
  (240, 24000, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 29),
  -- Magby - Rest - TM44
  (240, 24000, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 30),
  -- Magby - Attract - TM45
  (240, 24000, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 31),
  -- Magby - Thief - TM46
  (240, 24000, 168, 3, NULL, 2, NULL, NULL, 3002046, NULL, 32),
  -- Magby - Fire Punch - TM48
  (240, 24000, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 33),
  -- Magby - Barrier - Egg Move
  (240, 24000, 112, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Magby - Karate Chop - Egg Move
  (240, 24000, 2, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Magby - Mega Punch - Egg Move
  (240, 24000, 5, 3, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Magby - Screech - Egg Move
  (240, 24000, 103, 3, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Miltank - Tackle - Level 1
  (241, 24100, 33, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Miltank - Growl - Level 4
  (241, 24100, 45, 3, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Miltank - Defense Curl - Level 8
  (241, 24100, 111, 3, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Miltank - Stomp - Level 13
  (241, 24100, 23, 3, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Miltank - Milk Drink - Level 19
  (241, 24100, 208, 3, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Miltank - Bide - Level 26
  (241, 24100, 117, 3, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Miltank - Rollout - Level 34
  (241, 24100, 205, 3, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Miltank - Body Slam - Level 43
  (241, 24100, 34, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Miltank - Heal Bell - Level 53
  (241, 24100, 215, 3, NULL, 1, 53, NULL, NULL, NULL, 9),
  -- Miltank - Dynamic Punch - TM01
  (241, 24100, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 10),
  -- Miltank - Headbutt - TM02
  (241, 24100, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Miltank - Curse - TM03
  (241, 24100, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Miltank - Rollout - TM04
  (241, 24100, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 13),
  -- Miltank - Toxic - TM06
  (241, 24100, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Miltank - Zap Cannon - TM07
  (241, 24100, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 15),
  -- Miltank - Rock Smash - TM08
  (241, 24100, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 16),
  -- Miltank - Psych Up - TM09
  (241, 24100, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 17),
  -- Miltank - Hidden Power - TM10
  (241, 24100, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 18),
  -- Miltank - Sunny Day - TM11
  (241, 24100, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 19),
  -- Miltank - Sweet Scent - TM12
  (241, 24100, 230, 3, NULL, 2, NULL, NULL, 3002012, NULL, 20),
  -- Miltank - Snore - TM13
  (241, 24100, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 21),
  -- Miltank - Blizzard - TM14
  (241, 24100, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 22),
  -- Miltank - Hyper Beam - TM15
  (241, 24100, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 23),
  -- Miltank - Icy Wind - TM16
  (241, 24100, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 24),
  -- Miltank - Protect - TM17
  (241, 24100, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 25),
  -- Miltank - Rain Dance - TM18
  (241, 24100, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 26),
  -- Miltank - Endure - TM20
  (241, 24100, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 27),
  -- Miltank - Frustration - TM21
  (241, 24100, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 28),
  -- Miltank - Iron Tail - TM23
  (241, 24100, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 29),
  -- Miltank - Thunder - TM25
  (241, 24100, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 30),
  -- Miltank - Earthquake - TM26
  (241, 24100, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 31),
  -- Miltank - Return - TM27
  (241, 24100, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 32),
  -- Miltank - Shadow Ball - TM30
  (241, 24100, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 33),
  -- Miltank - Mud-Slap - TM31
  (241, 24100, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 34),
  -- Miltank - Double Team - TM32
  (241, 24100, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 35),
  -- Miltank - Ice Punch - TM33
  (241, 24100, 8, 3, NULL, 2, NULL, NULL, 3002033, NULL, 36),
  -- Miltank - Swagger - TM34
  (241, 24100, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 37),
  -- Miltank - Sleep Talk - TM35
  (241, 24100, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 38),
  -- Miltank - Sandstorm - TM37
  (241, 24100, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 39),
  -- Miltank - Defense Curl - TM40
  (241, 24100, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 40),
  -- Miltank - Thunder Punch - TM41
  (241, 24100, 9, 3, NULL, 2, NULL, NULL, 3002041, NULL, 41),
  -- Miltank - Rest - TM44
  (241, 24100, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 42),
  -- Miltank - Attract - TM45
  (241, 24100, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 43),
  -- Miltank - Fire Punch - TM48
  (241, 24100, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 44),
  -- Miltank - Surf - HM03
  (241, 24100, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 45),
  -- Miltank - Strength - HM04
  (241, 24100, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 46),
  -- Miltank - Present - Egg Move
  (241, 24100, 217, 3, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Miltank - Reversal - Egg Move
  (241, 24100, 179, 3, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Miltank - Seismic Toss - Egg Move
  (241, 24100, 69, 3, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Blissey - Pound - Level 1
  (242, 24200, 1, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blissey - Growl - Level 4
  (242, 24200, 45, 3, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Blissey - Tail Whip - Level 7
  (242, 24200, 39, 3, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Blissey - Soft-Boiled - Level 10
  (242, 24200, 135, 3, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Blissey - Double Slap - Level 13
  (242, 24200, 3, 3, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Blissey - Minimize - Level 18
  (242, 24200, 107, 3, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Blissey - Sing - Level 23
  (242, 24200, 47, 3, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Blissey - Egg Bomb - Level 28
  (242, 24200, 121, 3, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Blissey - Defense Curl - Level 33
  (242, 24200, 111, 3, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Blissey - Light Screen - Level 40
  (242, 24200, 113, 3, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Blissey - Double-Edge - Level 47
  (242, 24200, 38, 3, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Blissey - Dynamic Punch - TM01
  (242, 24200, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 12),
  -- Blissey - Headbutt - TM02
  (242, 24200, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 13),
  -- Blissey - Curse - TM03
  (242, 24200, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 14),
  -- Blissey - Rollout - TM04
  (242, 24200, 205, 3, NULL, 2, NULL, NULL, 3002004, NULL, 15),
  -- Blissey - Toxic - TM06
  (242, 24200, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 16),
  -- Blissey - Zap Cannon - TM07
  (242, 24200, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 17),
  -- Blissey - Rock Smash - TM08
  (242, 24200, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 18),
  -- Blissey - Hidden Power - TM10
  (242, 24200, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 19),
  -- Blissey - Sunny Day - TM11
  (242, 24200, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 20),
  -- Blissey - Snore - TM13
  (242, 24200, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 21),
  -- Blissey - Blizzard - TM14
  (242, 24200, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 22),
  -- Blissey - Hyper Beam - TM15
  (242, 24200, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 23),
  -- Blissey - Icy Wind - TM16
  (242, 24200, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 24),
  -- Blissey - Protect - TM17
  (242, 24200, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 25),
  -- Blissey - Rain Dance - TM18
  (242, 24200, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 26),
  -- Blissey - Endure - TM20
  (242, 24200, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 27),
  -- Blissey - Frustration - TM21
  (242, 24200, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 28),
  -- Blissey - Solar Beam - TM22
  (242, 24200, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 29),
  -- Blissey - Thunder - TM25
  (242, 24200, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 30),
  -- Blissey - Return - TM27
  (242, 24200, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 31),
  -- Blissey - Psychic - TM29
  (242, 24200, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 32),
  -- Blissey - Shadow Ball - TM30
  (242, 24200, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 33),
  -- Blissey - Mud-Slap - TM31
  (242, 24200, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 34),
  -- Blissey - Double Team - TM32
  (242, 24200, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 35),
  -- Blissey - Swagger - TM34
  (242, 24200, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 36),
  -- Blissey - Sleep Talk - TM35
  (242, 24200, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 37),
  -- Blissey - Sandstorm - TM37
  (242, 24200, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 38),
  -- Blissey - Fire Blast - TM38
  (242, 24200, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 39),
  -- Blissey - Defense Curl - TM40
  (242, 24200, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 40),
  -- Blissey - Dream Eater - TM42
  (242, 24200, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 41),
  -- Blissey - Rest - TM44
  (242, 24200, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 42),
  -- Blissey - Attract - TM45
  (242, 24200, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 43),
  -- Blissey - Strength - HM04
  (242, 24200, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 44),
  -- Blissey - Flash - HM05
  (242, 24200, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 45),
  -- Raikou - Bite - Level 1
  (243, 24300, 44, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raikou - Leer - Level 1
  (243, 24300, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raikou - Thunder Shock - Level 11
  (243, 24300, 84, 3, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Raikou - Roar - Level 21
  (243, 24300, 46, 3, NULL, 1, 21, NULL, NULL, NULL, 4),
  -- Raikou - Quick Attack - Level 31
  (243, 24300, 98, 3, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Raikou - Spark - Level 41
  (243, 24300, 209, 3, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Raikou - Reflect - Level 51
  (243, 24300, 115, 3, NULL, 1, 51, NULL, NULL, NULL, 7),
  -- Raikou - Crunch - Level 61
  (243, 24300, 242, 3, NULL, 1, 61, NULL, NULL, NULL, 8),
  -- Raikou - Thunder - Level 71
  (243, 24300, 87, 3, NULL, 1, 71, NULL, NULL, NULL, 9),
  -- Raikou - Headbutt - TM02
  (243, 24300, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 10),
  -- Raikou - Curse - TM03
  (243, 24300, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Raikou - Roar - TM05
  (243, 24300, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 12),
  -- Raikou - Toxic - TM06
  (243, 24300, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Raikou - Zap Cannon - TM07
  (243, 24300, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 14),
  -- Raikou - Rock Smash - TM08
  (243, 24300, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 15),
  -- Raikou - Psych Up - TM09
  (243, 24300, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 16),
  -- Raikou - Hidden Power - TM10
  (243, 24300, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 17),
  -- Raikou - Sunny Day - TM11
  (243, 24300, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 18),
  -- Raikou - Snore - TM13
  (243, 24300, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 19),
  -- Raikou - Hyper Beam - TM15
  (243, 24300, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 20),
  -- Raikou - Protect - TM17
  (243, 24300, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 21),
  -- Raikou - Rain Dance - TM18
  (243, 24300, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 22),
  -- Raikou - Endure - TM20
  (243, 24300, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 23),
  -- Raikou - Frustration - TM21
  (243, 24300, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 24),
  -- Raikou - Iron Tail - TM23
  (243, 24300, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 25),
  -- Raikou - Thunder - TM25
  (243, 24300, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 26),
  -- Raikou - Return - TM27
  (243, 24300, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 27),
  -- Raikou - Dig - TM28
  (243, 24300, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 28),
  -- Raikou - Mud-Slap - TM31
  (243, 24300, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 29),
  -- Raikou - Double Team - TM32
  (243, 24300, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 30),
  -- Raikou - Swagger - TM34
  (243, 24300, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 31),
  -- Raikou - Sleep Talk - TM35
  (243, 24300, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 32),
  -- Raikou - Sandstorm - TM37
  (243, 24300, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 33),
  -- Raikou - Swift - TM39
  (243, 24300, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 34),
  -- Raikou - Detect - TM43
  (243, 24300, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 35),
  -- Raikou - Rest - TM44
  (243, 24300, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 36),
  -- Raikou - Cut - HM01
  (243, 24300, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 37),
  -- Raikou - Strength - HM04
  (243, 24300, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 38),
  -- Raikou - Flash - HM05
  (243, 24300, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 39),
  -- Entei - Bite - Level 1
  (244, 24400, 44, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Entei - Leer - Level 1
  (244, 24400, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Entei - Ember - Level 11
  (244, 24400, 52, 3, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Entei - Roar - Level 21
  (244, 24400, 46, 3, NULL, 1, 21, NULL, NULL, NULL, 4),
  -- Entei - Fire Spin - Level 31
  (244, 24400, 83, 3, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Entei - Stomp - Level 41
  (244, 24400, 23, 3, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Entei - Flamethrower - Level 51
  (244, 24400, 53, 3, NULL, 1, 51, NULL, NULL, NULL, 7),
  -- Entei - Swagger - Level 61
  (244, 24400, 207, 3, NULL, 1, 61, NULL, NULL, NULL, 8),
  -- Entei - Fire Blast - Level 71
  (244, 24400, 126, 3, NULL, 1, 71, NULL, NULL, NULL, 9),
  -- Entei - Headbutt - TM02
  (244, 24400, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 10),
  -- Entei - Curse - TM03
  (244, 24400, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Entei - Roar - TM05
  (244, 24400, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 12),
  -- Entei - Toxic - TM06
  (244, 24400, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Entei - Rock Smash - TM08
  (244, 24400, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 14),
  -- Entei - Psych Up - TM09
  (244, 24400, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 15),
  -- Entei - Hidden Power - TM10
  (244, 24400, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 16),
  -- Entei - Sunny Day - TM11
  (244, 24400, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 17),
  -- Entei - Snore - TM13
  (244, 24400, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 18),
  -- Entei - Hyper Beam - TM15
  (244, 24400, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 19),
  -- Entei - Protect - TM17
  (244, 24400, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Entei - Rain Dance - TM18
  (244, 24400, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 21),
  -- Entei - Endure - TM20
  (244, 24400, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Entei - Frustration - TM21
  (244, 24400, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Entei - Solar Beam - TM22
  (244, 24400, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 24),
  -- Entei - Iron Tail - TM23
  (244, 24400, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 25),
  -- Entei - Return - TM27
  (244, 24400, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 26),
  -- Entei - Dig - TM28
  (244, 24400, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 27),
  -- Entei - Mud-Slap - TM31
  (244, 24400, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 28),
  -- Entei - Double Team - TM32
  (244, 24400, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 29),
  -- Entei - Swagger - TM34
  (244, 24400, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 30),
  -- Entei - Sleep Talk - TM35
  (244, 24400, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 31),
  -- Entei - Sandstorm - TM37
  (244, 24400, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 32),
  -- Entei - Fire Blast - TM38
  (244, 24400, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 33),
  -- Entei - Swift - TM39
  (244, 24400, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 34),
  -- Entei - Detect - TM43
  (244, 24400, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 35),
  -- Entei - Rest - TM44
  (244, 24400, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 36),
  -- Entei - Cut - HM01
  (244, 24400, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 37),
  -- Entei - Strength - HM04
  (244, 24400, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 38),
  -- Entei - Flash - HM05
  (244, 24400, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 39),
  -- Suicune - Bite - Level 1
  (245, 24500, 44, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Suicune - Leer - Level 1
  (245, 24500, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Suicune - Water Gun - Level 11
  (245, 24500, 55, 3, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Suicune - Roar - Level 21
  (245, 24500, 46, 3, NULL, 1, 21, NULL, NULL, NULL, 4),
  -- Suicune - Gust - Level 31
  (245, 24500, 16, 3, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Suicune - Bubble Beam - Level 41
  (245, 24500, 61, 3, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Suicune - Mist - Level 51
  (245, 24500, 54, 3, NULL, 1, 51, NULL, NULL, NULL, 7),
  -- Suicune - Mirror Coat - Level 61
  (245, 24500, 243, 3, NULL, 1, 61, NULL, NULL, NULL, 8),
  -- Suicune - Hydro Pump - Level 71
  (245, 24500, 56, 3, NULL, 1, 71, NULL, NULL, NULL, 9),
  -- Suicune - Headbutt - TM02
  (245, 24500, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 10),
  -- Suicune - Curse - TM03
  (245, 24500, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Suicune - Roar - TM05
  (245, 24500, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 12),
  -- Suicune - Toxic - TM06
  (245, 24500, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Suicune - Rock Smash - TM08
  (245, 24500, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 14),
  -- Suicune - Psych Up - TM09
  (245, 24500, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 15),
  -- Suicune - Hidden Power - TM10
  (245, 24500, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 16),
  -- Suicune - Sunny Day - TM11
  (245, 24500, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 17),
  -- Suicune - Snore - TM13
  (245, 24500, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 18),
  -- Suicune - Blizzard - TM14
  (245, 24500, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 19),
  -- Suicune - Hyper Beam - TM15
  (245, 24500, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 20),
  -- Suicune - Icy Wind - TM16
  (245, 24500, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 21),
  -- Suicune - Protect - TM17
  (245, 24500, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 22),
  -- Suicune - Rain Dance - TM18
  (245, 24500, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 23),
  -- Suicune - Endure - TM20
  (245, 24500, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 24),
  -- Suicune - Frustration - TM21
  (245, 24500, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 25),
  -- Suicune - Iron Tail - TM23
  (245, 24500, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 26),
  -- Suicune - Return - TM27
  (245, 24500, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 27),
  -- Suicune - Dig - TM28
  (245, 24500, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 28),
  -- Suicune - Mud-Slap - TM31
  (245, 24500, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 29),
  -- Suicune - Double Team - TM32
  (245, 24500, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 30),
  -- Suicune - Swagger - TM34
  (245, 24500, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 31),
  -- Suicune - Sleep Talk - TM35
  (245, 24500, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 32),
  -- Suicune - Sandstorm - TM37
  (245, 24500, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 33),
  -- Suicune - Swift - TM39
  (245, 24500, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 34),
  -- Suicune - Detect - TM43
  (245, 24500, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 35),
  -- Suicune - Rest - TM44
  (245, 24500, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 36),
  -- Suicune - Cut - HM01
  (245, 24500, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 37),
  -- Suicune - Surf - HM03
  (245, 24500, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 38),
  -- Suicune - Whirlpool - HM06
  (245, 24500, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 39),
  -- Suicune - Waterfall - HM07
  (245, 24500, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 40),
  -- Larvitar - Bite - Level 1
  (246, 24600, 44, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Larvitar - Leer - Level 1
  (246, 24600, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Larvitar - Sandstorm - Level 8
  (246, 24600, 201, 3, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Larvitar - Screech - Level 15
  (246, 24600, 103, 3, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Larvitar - Rock Slide - Level 22
  (246, 24600, 157, 3, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Larvitar - Thrash - Level 29
  (246, 24600, 37, 3, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Larvitar - Scary Face - Level 36
  (246, 24600, 184, 3, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Larvitar - Crunch - Level 43
  (246, 24600, 242, 3, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Larvitar - Earthquake - Level 50
  (246, 24600, 89, 3, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Larvitar - Hyper Beam - Level 57
  (246, 24600, 63, 3, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Larvitar - Headbutt - TM02
  (246, 24600, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Larvitar - Curse - TM03
  (246, 24600, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Larvitar - Toxic - TM06
  (246, 24600, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Larvitar - Hidden Power - TM10
  (246, 24600, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 14),
  -- Larvitar - Sunny Day - TM11
  (246, 24600, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 15),
  -- Larvitar - Snore - TM13
  (246, 24600, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Larvitar - Hyper Beam - TM15
  (246, 24600, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 17),
  -- Larvitar - Protect - TM17
  (246, 24600, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 18),
  -- Larvitar - Rain Dance - TM18
  (246, 24600, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 19),
  -- Larvitar - Endure - TM20
  (246, 24600, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 20),
  -- Larvitar - Frustration - TM21
  (246, 24600, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 21),
  -- Larvitar - Earthquake - TM26
  (246, 24600, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 22),
  -- Larvitar - Return - TM27
  (246, 24600, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 23),
  -- Larvitar - Dig - TM28
  (246, 24600, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 24),
  -- Larvitar - Mud-Slap - TM31
  (246, 24600, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 25),
  -- Larvitar - Double Team - TM32
  (246, 24600, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 26),
  -- Larvitar - Swagger - TM34
  (246, 24600, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 27),
  -- Larvitar - Sleep Talk - TM35
  (246, 24600, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 28),
  -- Larvitar - Sandstorm - TM37
  (246, 24600, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 29),
  -- Larvitar - Detect - TM43
  (246, 24600, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 30),
  -- Larvitar - Rest - TM44
  (246, 24600, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 31),
  -- Larvitar - Attract - TM45
  (246, 24600, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 32),
  -- Larvitar - Ancient Power - Egg Move
  (246, 24600, 246, 3, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Larvitar - Focus Energy - Egg Move
  (246, 24600, 116, 3, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Larvitar - Outrage - Egg Move
  (246, 24600, 200, 3, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Larvitar - Pursuit - Egg Move
  (246, 24600, 228, 3, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Larvitar - Stomp - Egg Move
  (246, 24600, 23, 3, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Pupitar - Bite - Level 1
  (247, 24700, 44, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pupitar - Leer - Level 1
  (247, 24700, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pupitar - Sandstorm - Level 1
  (247, 24700, 201, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pupitar - Screech - Level 1
  (247, 24700, 103, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pupitar - Sandstorm - Level 8
  (247, 24700, 201, 3, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Pupitar - Screech - Level 15
  (247, 24700, 103, 3, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Pupitar - Rock Slide - Level 22
  (247, 24700, 157, 3, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Pupitar - Thrash - Level 29
  (247, 24700, 37, 3, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Pupitar - Scary Face - Level 38
  (247, 24700, 184, 3, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Pupitar - Crunch - Level 47
  (247, 24700, 242, 3, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Pupitar - Earthquake - Level 56
  (247, 24700, 89, 3, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Pupitar - Hyper Beam - Level 65
  (247, 24700, 63, 3, NULL, 1, 65, NULL, NULL, NULL, 12),
  -- Pupitar - Headbutt - TM02
  (247, 24700, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 13),
  -- Pupitar - Curse - TM03
  (247, 24700, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 14),
  -- Pupitar - Toxic - TM06
  (247, 24700, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 15),
  -- Pupitar - Hidden Power - TM10
  (247, 24700, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 16),
  -- Pupitar - Sunny Day - TM11
  (247, 24700, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 17),
  -- Pupitar - Snore - TM13
  (247, 24700, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 18),
  -- Pupitar - Hyper Beam - TM15
  (247, 24700, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 19),
  -- Pupitar - Protect - TM17
  (247, 24700, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 20),
  -- Pupitar - Rain Dance - TM18
  (247, 24700, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 21),
  -- Pupitar - Endure - TM20
  (247, 24700, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 22),
  -- Pupitar - Frustration - TM21
  (247, 24700, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 23),
  -- Pupitar - Earthquake - TM26
  (247, 24700, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 24),
  -- Pupitar - Return - TM27
  (247, 24700, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 25),
  -- Pupitar - Dig - TM28
  (247, 24700, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 26),
  -- Pupitar - Mud-Slap - TM31
  (247, 24700, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 27),
  -- Pupitar - Double Team - TM32
  (247, 24700, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 28),
  -- Pupitar - Swagger - TM34
  (247, 24700, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 29),
  -- Pupitar - Sleep Talk - TM35
  (247, 24700, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 30),
  -- Pupitar - Sandstorm - TM37
  (247, 24700, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 31),
  -- Pupitar - Detect - TM43
  (247, 24700, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 32),
  -- Pupitar - Rest - TM44
  (247, 24700, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 33),
  -- Pupitar - Attract - TM45
  (247, 24700, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 34),
  -- Tyranitar - Bite - Level 1
  (248, 24800, 44, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyranitar - Leer - Level 1
  (248, 24800, 43, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tyranitar - Sandstorm - Level 1
  (248, 24800, 201, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tyranitar - Screech - Level 1
  (248, 24800, 103, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tyranitar - Sandstorm - Level 8
  (248, 24800, 201, 3, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Tyranitar - Screech - Level 15
  (248, 24800, 103, 3, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Tyranitar - Rock Slide - Level 22
  (248, 24800, 157, 3, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Tyranitar - Thrash - Level 29
  (248, 24800, 37, 3, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Tyranitar - Scary Face - Level 38
  (248, 24800, 184, 3, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Tyranitar - Crunch - Level 47
  (248, 24800, 242, 3, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Tyranitar - Earthquake - Level 61
  (248, 24800, 89, 3, NULL, 1, 61, NULL, NULL, NULL, 11),
  -- Tyranitar - Hyper Beam - Level 75
  (248, 24800, 63, 3, NULL, 1, 75, NULL, NULL, NULL, 12),
  -- Tyranitar - Dynamic Punch - TM01
  (248, 24800, 223, 3, NULL, 2, NULL, NULL, 3002001, NULL, 13),
  -- Tyranitar - Headbutt - TM02
  (248, 24800, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 14),
  -- Tyranitar - Curse - TM03
  (248, 24800, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 15),
  -- Tyranitar - Roar - TM05
  (248, 24800, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 16),
  -- Tyranitar - Toxic - TM06
  (248, 24800, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 17),
  -- Tyranitar - Rock Smash - TM08
  (248, 24800, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 18),
  -- Tyranitar - Hidden Power - TM10
  (248, 24800, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 19),
  -- Tyranitar - Sunny Day - TM11
  (248, 24800, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 20),
  -- Tyranitar - Snore - TM13
  (248, 24800, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 21),
  -- Tyranitar - Hyper Beam - TM15
  (248, 24800, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 22),
  -- Tyranitar - Protect - TM17
  (248, 24800, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 23),
  -- Tyranitar - Rain Dance - TM18
  (248, 24800, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 24),
  -- Tyranitar - Endure - TM20
  (248, 24800, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 25),
  -- Tyranitar - Frustration - TM21
  (248, 24800, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 26),
  -- Tyranitar - Iron Tail - TM23
  (248, 24800, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 27),
  -- Tyranitar - Dragon Breath - TM24
  (248, 24800, 225, 3, NULL, 2, NULL, NULL, 3002024, NULL, 28),
  -- Tyranitar - Earthquake - TM26
  (248, 24800, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 29),
  -- Tyranitar - Return - TM27
  (248, 24800, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 30),
  -- Tyranitar - Dig - TM28
  (248, 24800, 91, 3, NULL, 2, NULL, NULL, 3002028, NULL, 31),
  -- Tyranitar - Mud-Slap - TM31
  (248, 24800, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 32),
  -- Tyranitar - Double Team - TM32
  (248, 24800, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 33),
  -- Tyranitar - Swagger - TM34
  (248, 24800, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 34),
  -- Tyranitar - Sleep Talk - TM35
  (248, 24800, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 35),
  -- Tyranitar - Sandstorm - TM37
  (248, 24800, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 36),
  -- Tyranitar - Fire Blast - TM38
  (248, 24800, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 37),
  -- Tyranitar - Detect - TM43
  (248, 24800, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 38),
  -- Tyranitar - Rest - TM44
  (248, 24800, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 39),
  -- Tyranitar - Attract - TM45
  (248, 24800, 213, 3, NULL, 2, NULL, NULL, 3002045, NULL, 40),
  -- Tyranitar - Fire Punch - TM48
  (248, 24800, 7, 3, NULL, 2, NULL, NULL, 3002048, NULL, 41),
  -- Tyranitar - Fury Cutter - TM49
  (248, 24800, 210, 3, NULL, 2, NULL, NULL, 3002049, NULL, 42),
  -- Tyranitar - Nightmare - TM50
  (248, 24800, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 43),
  -- Tyranitar - Cut - HM01
  (248, 24800, 15, 3, NULL, 3, NULL, NULL, 3003001, NULL, 44),
  -- Tyranitar - Surf - HM03
  (248, 24800, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 45),
  -- Tyranitar - Strength - HM04
  (248, 24800, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 46),
  -- Lugia - Aeroblast - Level 1
  (249, 24900, 177, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lugia - Safeguard - Level 11
  (249, 24900, 219, 3, NULL, 1, 11, NULL, NULL, NULL, 2),
  -- Lugia - Gust - Level 22
  (249, 24900, 16, 3, NULL, 1, 22, NULL, NULL, NULL, 3),
  -- Lugia - Recover - Level 33
  (249, 24900, 105, 3, NULL, 1, 33, NULL, NULL, NULL, 4),
  -- Lugia - Hydro Pump - Level 44
  (249, 24900, 56, 3, NULL, 1, 44, NULL, NULL, NULL, 5),
  -- Lugia - Rain Dance - Level 55
  (249, 24900, 240, 3, NULL, 1, 55, NULL, NULL, NULL, 6),
  -- Lugia - Swift - Level 66
  (249, 24900, 129, 3, NULL, 1, 66, NULL, NULL, NULL, 7),
  -- Lugia - Whirlwind - Level 77
  (249, 24900, 18, 3, NULL, 1, 77, NULL, NULL, NULL, 8),
  -- Lugia - Ancient Power - Level 88
  (249, 24900, 246, 3, NULL, 1, 88, NULL, NULL, NULL, 9),
  -- Lugia - Future Sight - Level 99
  (249, 24900, 248, 3, NULL, 1, 99, NULL, NULL, NULL, 10),
  -- Lugia - Headbutt - TM02
  (249, 24900, 29, 3, NULL, 2, NULL, NULL, 3002002, NULL, 11),
  -- Lugia - Curse - TM03
  (249, 24900, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 12),
  -- Lugia - Roar - TM05
  (249, 24900, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 13),
  -- Lugia - Toxic - TM06
  (249, 24900, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 14),
  -- Lugia - Zap Cannon - TM07
  (249, 24900, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 15),
  -- Lugia - Rock Smash - TM08
  (249, 24900, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 16),
  -- Lugia - Psych Up - TM09
  (249, 24900, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 17),
  -- Lugia - Hidden Power - TM10
  (249, 24900, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 18),
  -- Lugia - Sunny Day - TM11
  (249, 24900, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 19),
  -- Lugia - Snore - TM13
  (249, 24900, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 20),
  -- Lugia - Blizzard - TM14
  (249, 24900, 59, 3, NULL, 2, NULL, NULL, 3002014, NULL, 21),
  -- Lugia - Hyper Beam - TM15
  (249, 24900, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 22),
  -- Lugia - Icy Wind - TM16
  (249, 24900, 196, 3, NULL, 2, NULL, NULL, 3002016, NULL, 23),
  -- Lugia - Protect - TM17
  (249, 24900, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 24),
  -- Lugia - Rain Dance - TM18
  (249, 24900, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 25),
  -- Lugia - Giga Drain - TM19
  (249, 24900, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 26),
  -- Lugia - Endure - TM20
  (249, 24900, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 27),
  -- Lugia - Frustration - TM21
  (249, 24900, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 28),
  -- Lugia - Iron Tail - TM23
  (249, 24900, 231, 3, NULL, 2, NULL, NULL, 3002023, NULL, 29),
  -- Lugia - Dragon Breath - TM24
  (249, 24900, 225, 3, NULL, 2, NULL, NULL, 3002024, NULL, 30),
  -- Lugia - Thunder - TM25
  (249, 24900, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 31),
  -- Lugia - Earthquake - TM26
  (249, 24900, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 32),
  -- Lugia - Return - TM27
  (249, 24900, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 33),
  -- Lugia - Psychic - TM29
  (249, 24900, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 34),
  -- Lugia - Shadow Ball - TM30
  (249, 24900, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 35),
  -- Lugia - Mud-Slap - TM31
  (249, 24900, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 36),
  -- Lugia - Double Team - TM32
  (249, 24900, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 37),
  -- Lugia - Swagger - TM34
  (249, 24900, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 38),
  -- Lugia - Sleep Talk - TM35
  (249, 24900, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 39),
  -- Lugia - Sandstorm - TM37
  (249, 24900, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 40),
  -- Lugia - Swift - TM39
  (249, 24900, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 41),
  -- Lugia - Dream Eater - TM42
  (249, 24900, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 42),
  -- Lugia - Detect - TM43
  (249, 24900, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 43),
  -- Lugia - Rest - TM44
  (249, 24900, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 44),
  -- Lugia - Steel Wing - TM47
  (249, 24900, 211, 3, NULL, 2, NULL, NULL, 3002047, NULL, 45),
  -- Lugia - Nightmare - TM50
  (249, 24900, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 46),
  -- Lugia - Fly - HM02
  (249, 24900, 19, 3, NULL, 3, NULL, NULL, 3003002, NULL, 47),
  -- Lugia - Surf - HM03
  (249, 24900, 57, 3, NULL, 3, NULL, NULL, 3003003, NULL, 48),
  -- Lugia - Strength - HM04
  (249, 24900, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 49),
  -- Lugia - Whirlpool - HM06
  (249, 24900, 250, 3, NULL, 3, NULL, NULL, 3003006, NULL, 50),
  -- Lugia - Waterfall - HM07
  (249, 24900, 127, 3, NULL, 3, NULL, NULL, 3003007, NULL, 51),
  -- Ho-Oh - Sacred Fire - Level 1
  (250, 25000, 221, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ho-Oh - Safeguard - Level 11
  (250, 25000, 219, 3, NULL, 1, 11, NULL, NULL, NULL, 2),
  -- Ho-Oh - Gust - Level 22
  (250, 25000, 16, 3, NULL, 1, 22, NULL, NULL, NULL, 3),
  -- Ho-Oh - Recover - Level 33
  (250, 25000, 105, 3, NULL, 1, 33, NULL, NULL, NULL, 4),
  -- Ho-Oh - Fire Blast - Level 44
  (250, 25000, 126, 3, NULL, 1, 44, NULL, NULL, NULL, 5),
  -- Ho-Oh - Sunny Day - Level 55
  (250, 25000, 241, 3, NULL, 1, 55, NULL, NULL, NULL, 6),
  -- Ho-Oh - Swift - Level 66
  (250, 25000, 129, 3, NULL, 1, 66, NULL, NULL, NULL, 7),
  -- Ho-Oh - Whirlwind - Level 77
  (250, 25000, 18, 3, NULL, 1, 77, NULL, NULL, NULL, 8),
  -- Ho-Oh - Ancient Power - Level 88
  (250, 25000, 246, 3, NULL, 1, 88, NULL, NULL, NULL, 9),
  -- Ho-Oh - Future Sight - Level 99
  (250, 25000, 248, 3, NULL, 1, 99, NULL, NULL, NULL, 10),
  -- Ho-Oh - Curse - TM03
  (250, 25000, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 11),
  -- Ho-Oh - Roar - TM05
  (250, 25000, 46, 3, NULL, 2, NULL, NULL, 3002005, NULL, 12),
  -- Ho-Oh - Toxic - TM06
  (250, 25000, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 13),
  -- Ho-Oh - Zap Cannon - TM07
  (250, 25000, 192, 3, NULL, 2, NULL, NULL, 3002007, NULL, 14),
  -- Ho-Oh - Rock Smash - TM08
  (250, 25000, 249, 3, NULL, 2, NULL, NULL, 3002008, NULL, 15),
  -- Ho-Oh - Psych Up - TM09
  (250, 25000, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 16),
  -- Ho-Oh - Hidden Power - TM10
  (250, 25000, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 17),
  -- Ho-Oh - Sunny Day - TM11
  (250, 25000, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 18),
  -- Ho-Oh - Snore - TM13
  (250, 25000, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 19),
  -- Ho-Oh - Hyper Beam - TM15
  (250, 25000, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 20),
  -- Ho-Oh - Protect - TM17
  (250, 25000, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 21),
  -- Ho-Oh - Rain Dance - TM18
  (250, 25000, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 22),
  -- Ho-Oh - Giga Drain - TM19
  (250, 25000, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 23),
  -- Ho-Oh - Endure - TM20
  (250, 25000, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 24),
  -- Ho-Oh - Frustration - TM21
  (250, 25000, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 25),
  -- Ho-Oh - Solar Beam - TM22
  (250, 25000, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 26),
  -- Ho-Oh - Dragon Breath - TM24
  (250, 25000, 225, 3, NULL, 2, NULL, NULL, 3002024, NULL, 27),
  -- Ho-Oh - Thunder - TM25
  (250, 25000, 87, 3, NULL, 2, NULL, NULL, 3002025, NULL, 28),
  -- Ho-Oh - Earthquake - TM26
  (250, 25000, 89, 3, NULL, 2, NULL, NULL, 3002026, NULL, 29),
  -- Ho-Oh - Return - TM27
  (250, 25000, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 30),
  -- Ho-Oh - Psychic - TM29
  (250, 25000, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 31),
  -- Ho-Oh - Shadow Ball - TM30
  (250, 25000, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 32),
  -- Ho-Oh - Mud-Slap - TM31
  (250, 25000, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 33),
  -- Ho-Oh - Double Team - TM32
  (250, 25000, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 34),
  -- Ho-Oh - Swagger - TM34
  (250, 25000, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 35),
  -- Ho-Oh - Sleep Talk - TM35
  (250, 25000, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 36),
  -- Ho-Oh - Sandstorm - TM37
  (250, 25000, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 37),
  -- Ho-Oh - Fire Blast - TM38
  (250, 25000, 126, 3, NULL, 2, NULL, NULL, 3002038, NULL, 38),
  -- Ho-Oh - Swift - TM39
  (250, 25000, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 39),
  -- Ho-Oh - Dream Eater - TM42
  (250, 25000, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 40),
  -- Ho-Oh - Detect - TM43
  (250, 25000, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 41),
  -- Ho-Oh - Rest - TM44
  (250, 25000, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 42),
  -- Ho-Oh - Steel Wing - TM47
  (250, 25000, 211, 3, NULL, 2, NULL, NULL, 3002047, NULL, 43),
  -- Ho-Oh - Nightmare - TM50
  (250, 25000, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 44),
  -- Ho-Oh - Fly - HM02
  (250, 25000, 19, 3, NULL, 3, NULL, NULL, 3003002, NULL, 45),
  -- Ho-Oh - Strength - HM04
  (250, 25000, 70, 3, NULL, 3, NULL, NULL, 3003004, NULL, 46),
  -- Ho-Oh - Flash - HM05
  (250, 25000, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 47),
  -- Celebi - Leech Seed - Level 1
  (251, 25100, 73, 3, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Celebi - Confusion - Level 1
  (251, 25100, 93, 3, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Celebi - Recover - Level 1
  (251, 25100, 105, 3, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Celebi - Heal Bell - Level 1
  (251, 25100, 215, 3, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Celebi - Safeguard - Level 10
  (251, 25100, 219, 3, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Celebi - Ancient Power - Level 20
  (251, 25100, 246, 3, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Celebi - Future Sight - Level 30
  (251, 25100, 248, 3, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Celebi - Baton Pass - Level 40
  (251, 25100, 226, 3, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Celebi - Perish Song - Level 50
  (251, 25100, 195, 3, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Celebi - Curse - TM03
  (251, 25100, 174, 3, NULL, 2, NULL, NULL, 3002003, NULL, 10),
  -- Celebi - Toxic - TM06
  (251, 25100, 92, 3, NULL, 2, NULL, NULL, 3002006, NULL, 11),
  -- Celebi - Psych Up - TM09
  (251, 25100, 244, 3, NULL, 2, NULL, NULL, 3002009, NULL, 12),
  -- Celebi - Hidden Power - TM10
  (251, 25100, 237, 3, NULL, 2, NULL, NULL, 3002010, NULL, 13),
  -- Celebi - Sunny Day - TM11
  (251, 25100, 241, 3, NULL, 2, NULL, NULL, 3002011, NULL, 14),
  -- Celebi - Sweet Scent - TM12
  (251, 25100, 230, 3, NULL, 2, NULL, NULL, 3002012, NULL, 15),
  -- Celebi - Snore - TM13
  (251, 25100, 173, 3, NULL, 2, NULL, NULL, 3002013, NULL, 16),
  -- Celebi - Hyper Beam - TM15
  (251, 25100, 63, 3, NULL, 2, NULL, NULL, 3002015, NULL, 17),
  -- Celebi - Protect - TM17
  (251, 25100, 182, 3, NULL, 2, NULL, NULL, 3002017, NULL, 18),
  -- Celebi - Rain Dance - TM18
  (251, 25100, 240, 3, NULL, 2, NULL, NULL, 3002018, NULL, 19),
  -- Celebi - Giga Drain - TM19
  (251, 25100, 202, 3, NULL, 2, NULL, NULL, 3002019, NULL, 20),
  -- Celebi - Endure - TM20
  (251, 25100, 203, 3, NULL, 2, NULL, NULL, 3002020, NULL, 21),
  -- Celebi - Frustration - TM21
  (251, 25100, 218, 3, NULL, 2, NULL, NULL, 3002021, NULL, 22),
  -- Celebi - Solar Beam - TM22
  (251, 25100, 76, 3, NULL, 2, NULL, NULL, 3002022, NULL, 23),
  -- Celebi - Return - TM27
  (251, 25100, 216, 3, NULL, 2, NULL, NULL, 3002027, NULL, 24),
  -- Celebi - Psychic - TM29
  (251, 25100, 94, 3, NULL, 2, NULL, NULL, 3002029, NULL, 25),
  -- Celebi - Shadow Ball - TM30
  (251, 25100, 247, 3, NULL, 2, NULL, NULL, 3002030, NULL, 26),
  -- Celebi - Mud-Slap - TM31
  (251, 25100, 189, 3, NULL, 2, NULL, NULL, 3002031, NULL, 27),
  -- Celebi - Double Team - TM32
  (251, 25100, 104, 3, NULL, 2, NULL, NULL, 3002032, NULL, 28),
  -- Celebi - Swagger - TM34
  (251, 25100, 207, 3, NULL, 2, NULL, NULL, 3002034, NULL, 29),
  -- Celebi - Sleep Talk - TM35
  (251, 25100, 214, 3, NULL, 2, NULL, NULL, 3002035, NULL, 30),
  -- Celebi - Sandstorm - TM37
  (251, 25100, 201, 3, NULL, 2, NULL, NULL, 3002037, NULL, 31),
  -- Celebi - Swift - TM39
  (251, 25100, 129, 3, NULL, 2, NULL, NULL, 3002039, NULL, 32),
  -- Celebi - Defense Curl - TM40
  (251, 25100, 111, 3, NULL, 2, NULL, NULL, 3002040, NULL, 33),
  -- Celebi - Dream Eater - TM42
  (251, 25100, 138, 3, NULL, 2, NULL, NULL, 3002042, NULL, 34),
  -- Celebi - Detect - TM43
  (251, 25100, 197, 3, NULL, 2, NULL, NULL, 3002043, NULL, 35),
  -- Celebi - Rest - TM44
  (251, 25100, 156, 3, NULL, 2, NULL, NULL, 3002044, NULL, 36),
  -- Celebi - Nightmare - TM50
  (251, 25100, 171, 3, NULL, 2, NULL, NULL, 3002050, NULL, 37),
  -- Celebi - Flash - HM05
  (251, 25100, 148, 3, NULL, 3, NULL, NULL, 3003005, NULL, 38);
