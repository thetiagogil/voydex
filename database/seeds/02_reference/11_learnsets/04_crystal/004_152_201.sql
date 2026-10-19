-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation II Pokémon learnset raw pages, using Crystal
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii Crystal Pokedex learnset pages, Serebii Crystal Move
-- Tutor page, and PokemonDB Generation 2 Crystal learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Crystal
-- Pokémon: #152-#201
-- Rows: 1860
-- Scope: level-up, TM, HM, egg move, and Crystal Move Tutor acquisition rows.
-- Event, transfer, impossible breeding, Gold/Silver-only egg rows, and
-- prior-evolution sections are intentionally excluded from this Crystal seed.
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
  -- Chikorita - Tackle - Level 1
  (152, 15200, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chikorita - Growl - Level 1
  (152, 15200, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chikorita - Razor Leaf - Level 8
  (152, 15200, 75, 4, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Chikorita - Reflect - Level 12
  (152, 15200, 115, 4, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Chikorita - Poison Powder - Level 15
  (152, 15200, 77, 4, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Chikorita - Synthesis - Level 22
  (152, 15200, 235, 4, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Chikorita - Body Slam - Level 29
  (152, 15200, 34, 4, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Chikorita - Light Screen - Level 36
  (152, 15200, 113, 4, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Chikorita - Safeguard - Level 43
  (152, 15200, 219, 4, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Chikorita - Solar Beam - Level 50
  (152, 15200, 76, 4, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Chikorita - Headbutt - TM02
  (152, 15200, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 11),
  -- Chikorita - Curse - TM03
  (152, 15200, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 12),
  -- Chikorita - Toxic - TM06
  (152, 15200, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 13),
  -- Chikorita - Hidden Power - TM10
  (152, 15200, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 14),
  -- Chikorita - Sunny Day - TM11
  (152, 15200, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 15),
  -- Chikorita - Sweet Scent - TM12
  (152, 15200, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 16),
  -- Chikorita - Snore - TM13
  (152, 15200, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 17),
  -- Chikorita - Protect - TM17
  (152, 15200, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 18),
  -- Chikorita - Giga Drain - TM19
  (152, 15200, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 19),
  -- Chikorita - Endure - TM20
  (152, 15200, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 20),
  -- Chikorita - Frustration - TM21
  (152, 15200, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 21),
  -- Chikorita - Solar Beam - TM22
  (152, 15200, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 22),
  -- Chikorita - Iron Tail - TM23
  (152, 15200, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 23),
  -- Chikorita - Return - TM27
  (152, 15200, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 24),
  -- Chikorita - Mud-Slap - TM31
  (152, 15200, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 25),
  -- Chikorita - Double Team - TM32
  (152, 15200, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 26),
  -- Chikorita - Swagger - TM34
  (152, 15200, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 27),
  -- Chikorita - Sleep Talk - TM35
  (152, 15200, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 28),
  -- Chikorita - Detect - TM43
  (152, 15200, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 29),
  -- Chikorita - Rest - TM44
  (152, 15200, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 30),
  -- Chikorita - Attract - TM45
  (152, 15200, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 31),
  -- Chikorita - Cut - HM01
  (152, 15200, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 32),
  -- Chikorita - Flash - HM05
  (152, 15200, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 33),
  -- Chikorita - Ancient Power - Egg Move
  (152, 15200, 246, 4, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Chikorita - Counter - Egg Move
  (152, 15200, 68, 4, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Chikorita - Flail - Egg Move
  (152, 15200, 175, 4, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Chikorita - Leech Seed - Egg Move
  (152, 15200, 73, 4, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Chikorita - Swords Dance - Egg Move
  (152, 15200, 14, 4, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Chikorita - Vine Whip - Egg Move
  (152, 15200, 22, 4, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Bayleef - Tackle - Level 1
  (153, 15300, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bayleef - Growl - Level 1
  (153, 15300, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bayleef - Razor Leaf - Level 1
  (153, 15300, 75, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bayleef - Reflect - Level 1
  (153, 15300, 115, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bayleef - Razor Leaf - Level 8
  (153, 15300, 75, 4, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Bayleef - Reflect - Level 12
  (153, 15300, 115, 4, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Bayleef - Poison Powder - Level 15
  (153, 15300, 77, 4, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Bayleef - Synthesis - Level 23
  (153, 15300, 235, 4, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Bayleef - Body Slam - Level 31
  (153, 15300, 34, 4, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Bayleef - Light Screen - Level 39
  (153, 15300, 113, 4, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Bayleef - Safeguard - Level 47
  (153, 15300, 219, 4, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Bayleef - Solar Beam - Level 55
  (153, 15300, 76, 4, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Bayleef - Headbutt - TM02
  (153, 15300, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 13),
  -- Bayleef - Curse - TM03
  (153, 15300, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 14),
  -- Bayleef - Toxic - TM06
  (153, 15300, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 15),
  -- Bayleef - Rock Smash - TM08
  (153, 15300, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 16),
  -- Bayleef - Hidden Power - TM10
  (153, 15300, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 17),
  -- Bayleef - Sunny Day - TM11
  (153, 15300, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 18),
  -- Bayleef - Sweet Scent - TM12
  (153, 15300, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 19),
  -- Bayleef - Snore - TM13
  (153, 15300, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 20),
  -- Bayleef - Protect - TM17
  (153, 15300, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 21),
  -- Bayleef - Giga Drain - TM19
  (153, 15300, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 22),
  -- Bayleef - Endure - TM20
  (153, 15300, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 23),
  -- Bayleef - Frustration - TM21
  (153, 15300, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 24),
  -- Bayleef - Solar Beam - TM22
  (153, 15300, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 25),
  -- Bayleef - Iron Tail - TM23
  (153, 15300, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 26),
  -- Bayleef - Return - TM27
  (153, 15300, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 27),
  -- Bayleef - Mud-Slap - TM31
  (153, 15300, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 28),
  -- Bayleef - Double Team - TM32
  (153, 15300, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 29),
  -- Bayleef - Swagger - TM34
  (153, 15300, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 30),
  -- Bayleef - Sleep Talk - TM35
  (153, 15300, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 31),
  -- Bayleef - Detect - TM43
  (153, 15300, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 32),
  -- Bayleef - Rest - TM44
  (153, 15300, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 33),
  -- Bayleef - Attract - TM45
  (153, 15300, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 34),
  -- Bayleef - Fury Cutter - TM49
  (153, 15300, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 35),
  -- Bayleef - Cut - HM01
  (153, 15300, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 36),
  -- Bayleef - Strength - HM04
  (153, 15300, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 37),
  -- Bayleef - Flash - HM05
  (153, 15300, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 38),
  -- Meganium - Tackle - Level 1
  (154, 15400, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meganium - Growl - Level 1
  (154, 15400, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meganium - Razor Leaf - Level 1
  (154, 15400, 75, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meganium - Reflect - Level 1
  (154, 15400, 115, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Meganium - Razor Leaf - Level 8
  (154, 15400, 75, 4, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Meganium - Reflect - Level 12
  (154, 15400, 115, 4, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Meganium - Poison Powder - Level 15
  (154, 15400, 77, 4, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Meganium - Synthesis - Level 23
  (154, 15400, 235, 4, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Meganium - Body Slam - Level 31
  (154, 15400, 34, 4, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Meganium - Light Screen - Level 41
  (154, 15400, 113, 4, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Meganium - Safeguard - Level 51
  (154, 15400, 219, 4, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Meganium - Solar Beam - Level 61
  (154, 15400, 76, 4, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Meganium - Headbutt - TM02
  (154, 15400, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 13),
  -- Meganium - Curse - TM03
  (154, 15400, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 14),
  -- Meganium - Toxic - TM06
  (154, 15400, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 15),
  -- Meganium - Rock Smash - TM08
  (154, 15400, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 16),
  -- Meganium - Hidden Power - TM10
  (154, 15400, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 17),
  -- Meganium - Sunny Day - TM11
  (154, 15400, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 18),
  -- Meganium - Sweet Scent - TM12
  (154, 15400, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 19),
  -- Meganium - Snore - TM13
  (154, 15400, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 20),
  -- Meganium - Hyper Beam - TM15
  (154, 15400, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 21),
  -- Meganium - Protect - TM17
  (154, 15400, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 22),
  -- Meganium - Giga Drain - TM19
  (154, 15400, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 23),
  -- Meganium - Endure - TM20
  (154, 15400, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 24),
  -- Meganium - Frustration - TM21
  (154, 15400, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 25),
  -- Meganium - Solar Beam - TM22
  (154, 15400, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 26),
  -- Meganium - Iron Tail - TM23
  (154, 15400, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 27),
  -- Meganium - Earthquake - TM26
  (154, 15400, 89, 4, NULL, 2, NULL, NULL, 4002026, NULL, 28),
  -- Meganium - Return - TM27
  (154, 15400, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 29),
  -- Meganium - Mud-Slap - TM31
  (154, 15400, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 30),
  -- Meganium - Double Team - TM32
  (154, 15400, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 31),
  -- Meganium - Swagger - TM34
  (154, 15400, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 32),
  -- Meganium - Sleep Talk - TM35
  (154, 15400, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 33),
  -- Meganium - Detect - TM43
  (154, 15400, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 34),
  -- Meganium - Rest - TM44
  (154, 15400, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 35),
  -- Meganium - Attract - TM45
  (154, 15400, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 36),
  -- Meganium - Fury Cutter - TM49
  (154, 15400, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 37),
  -- Meganium - Cut - HM01
  (154, 15400, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 38),
  -- Meganium - Strength - HM04
  (154, 15400, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 39),
  -- Meganium - Flash - HM05
  (154, 15400, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 40),
  -- Cyndaquil - Tackle - Level 1
  (155, 15500, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cyndaquil - Leer - Level 1
  (155, 15500, 43, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cyndaquil - Smokescreen - Level 6
  (155, 15500, 108, 4, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cyndaquil - Ember - Level 12
  (155, 15500, 52, 4, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Cyndaquil - Quick Attack - Level 19
  (155, 15500, 98, 4, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Cyndaquil - Flame Wheel - Level 27
  (155, 15500, 172, 4, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Cyndaquil - Swift - Level 36
  (155, 15500, 129, 4, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Cyndaquil - Flamethrower - Level 46
  (155, 15500, 53, 4, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Cyndaquil - Headbutt - TM02
  (155, 15500, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 9),
  -- Cyndaquil - Curse - TM03
  (155, 15500, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 10),
  -- Cyndaquil - Rollout - TM04
  (155, 15500, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 11),
  -- Cyndaquil - Toxic - TM06
  (155, 15500, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 12),
  -- Cyndaquil - Hidden Power - TM10
  (155, 15500, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 13),
  -- Cyndaquil - Sunny Day - TM11
  (155, 15500, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 14),
  -- Cyndaquil - Snore - TM13
  (155, 15500, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 15),
  -- Cyndaquil - Protect - TM17
  (155, 15500, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 16),
  -- Cyndaquil - Endure - TM20
  (155, 15500, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 17),
  -- Cyndaquil - Frustration - TM21
  (155, 15500, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 18),
  -- Cyndaquil - Iron Tail - TM23
  (155, 15500, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 19),
  -- Cyndaquil - Return - TM27
  (155, 15500, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 20),
  -- Cyndaquil - Dig - TM28
  (155, 15500, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 21),
  -- Cyndaquil - Mud-Slap - TM31
  (155, 15500, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 22),
  -- Cyndaquil - Double Team - TM32
  (155, 15500, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 23),
  -- Cyndaquil - Swagger - TM34
  (155, 15500, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 24),
  -- Cyndaquil - Sleep Talk - TM35
  (155, 15500, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 25),
  -- Cyndaquil - Fire Blast - TM38
  (155, 15500, 126, 4, NULL, 2, NULL, NULL, 4002038, NULL, 26),
  -- Cyndaquil - Swift - TM39
  (155, 15500, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 27),
  -- Cyndaquil - Defense Curl - TM40
  (155, 15500, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 28),
  -- Cyndaquil - Detect - TM43
  (155, 15500, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 29),
  -- Cyndaquil - Rest - TM44
  (155, 15500, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 30),
  -- Cyndaquil - Attract - TM45
  (155, 15500, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 31),
  -- Cyndaquil - Cut - HM01
  (155, 15500, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 32),
  -- Cyndaquil - Foresight - Egg Move
  (155, 15500, 193, 4, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Cyndaquil - Fury Swipes - Egg Move
  (155, 15500, 154, 4, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Cyndaquil - Quick Attack - Egg Move
  (155, 15500, 98, 4, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Cyndaquil - Reversal - Egg Move
  (155, 15500, 179, 4, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Cyndaquil - Submission - Egg Move
  (155, 15500, 66, 4, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Cyndaquil - Thrash - Egg Move
  (155, 15500, 37, 4, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Cyndaquil - Flamethrower - Move Tutor
  (155, 15500, 53, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 39),
  -- Quilava - Tackle - Level 1
  (156, 15600, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quilava - Leer - Level 1
  (156, 15600, 43, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Quilava - Smokescreen - Level 1
  (156, 15600, 108, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Quilava - Smokescreen - Level 6
  (156, 15600, 108, 4, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Quilava - Ember - Level 12
  (156, 15600, 52, 4, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Quilava - Quick Attack - Level 21
  (156, 15600, 98, 4, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Quilava - Flame Wheel - Level 31
  (156, 15600, 172, 4, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Quilava - Swift - Level 42
  (156, 15600, 129, 4, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Quilava - Flamethrower - Level 54
  (156, 15600, 53, 4, NULL, 1, 54, NULL, NULL, NULL, 9),
  -- Quilava - Headbutt - TM02
  (156, 15600, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 10),
  -- Quilava - Curse - TM03
  (156, 15600, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 11),
  -- Quilava - Rollout - TM04
  (156, 15600, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 12),
  -- Quilava - Roar - TM05
  (156, 15600, 46, 4, NULL, 2, NULL, NULL, 4002005, NULL, 13),
  -- Quilava - Toxic - TM06
  (156, 15600, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 14),
  -- Quilava - Rock Smash - TM08
  (156, 15600, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 15),
  -- Quilava - Hidden Power - TM10
  (156, 15600, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 16),
  -- Quilava - Sunny Day - TM11
  (156, 15600, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 17),
  -- Quilava - Snore - TM13
  (156, 15600, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 18),
  -- Quilava - Protect - TM17
  (156, 15600, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 19),
  -- Quilava - Endure - TM20
  (156, 15600, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 20),
  -- Quilava - Frustration - TM21
  (156, 15600, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 21),
  -- Quilava - Iron Tail - TM23
  (156, 15600, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 22),
  -- Quilava - Return - TM27
  (156, 15600, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 23),
  -- Quilava - Dig - TM28
  (156, 15600, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 24),
  -- Quilava - Mud-Slap - TM31
  (156, 15600, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 25),
  -- Quilava - Double Team - TM32
  (156, 15600, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 26),
  -- Quilava - Swagger - TM34
  (156, 15600, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 27),
  -- Quilava - Sleep Talk - TM35
  (156, 15600, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 28),
  -- Quilava - Fire Blast - TM38
  (156, 15600, 126, 4, NULL, 2, NULL, NULL, 4002038, NULL, 29),
  -- Quilava - Swift - TM39
  (156, 15600, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 30),
  -- Quilava - Defense Curl - TM40
  (156, 15600, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 31),
  -- Quilava - Detect - TM43
  (156, 15600, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 32),
  -- Quilava - Rest - TM44
  (156, 15600, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 33),
  -- Quilava - Attract - TM45
  (156, 15600, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 34),
  -- Quilava - Fury Cutter - TM49
  (156, 15600, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 35),
  -- Quilava - Cut - HM01
  (156, 15600, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 36),
  -- Quilava - Strength - HM04
  (156, 15600, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 37),
  -- Quilava - Flamethrower - Move Tutor
  (156, 15600, 53, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 38),
  -- Typhlosion - Tackle - Level 1
  (157, 15700, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Typhlosion - Leer - Level 1
  (157, 15700, 43, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Typhlosion - Smokescreen - Level 1
  (157, 15700, 108, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Typhlosion - Ember - Level 1
  (157, 15700, 52, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Typhlosion - Smokescreen - Level 6
  (157, 15700, 108, 4, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Typhlosion - Ember - Level 12
  (157, 15700, 52, 4, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Typhlosion - Quick Attack - Level 21
  (157, 15700, 98, 4, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Typhlosion - Flame Wheel - Level 31
  (157, 15700, 172, 4, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Typhlosion - Swift - Level 45
  (157, 15700, 129, 4, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Typhlosion - Flamethrower - Level 60
  (157, 15700, 53, 4, NULL, 1, 60, NULL, NULL, NULL, 10),
  -- Typhlosion - Dynamic Punch - TM01
  (157, 15700, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 11),
  -- Typhlosion - Headbutt - TM02
  (157, 15700, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 12),
  -- Typhlosion - Curse - TM03
  (157, 15700, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 13),
  -- Typhlosion - Rollout - TM04
  (157, 15700, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 14),
  -- Typhlosion - Roar - TM05
  (157, 15700, 46, 4, NULL, 2, NULL, NULL, 4002005, NULL, 15),
  -- Typhlosion - Toxic - TM06
  (157, 15700, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 16),
  -- Typhlosion - Rock Smash - TM08
  (157, 15700, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 17),
  -- Typhlosion - Hidden Power - TM10
  (157, 15700, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 18),
  -- Typhlosion - Sunny Day - TM11
  (157, 15700, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 19),
  -- Typhlosion - Snore - TM13
  (157, 15700, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 20),
  -- Typhlosion - Hyper Beam - TM15
  (157, 15700, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 21),
  -- Typhlosion - Protect - TM17
  (157, 15700, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 22),
  -- Typhlosion - Endure - TM20
  (157, 15700, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 23),
  -- Typhlosion - Frustration - TM21
  (157, 15700, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 24),
  -- Typhlosion - Iron Tail - TM23
  (157, 15700, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 25),
  -- Typhlosion - Earthquake - TM26
  (157, 15700, 89, 4, NULL, 2, NULL, NULL, 4002026, NULL, 26),
  -- Typhlosion - Return - TM27
  (157, 15700, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 27),
  -- Typhlosion - Dig - TM28
  (157, 15700, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 28),
  -- Typhlosion - Mud-Slap - TM31
  (157, 15700, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 29),
  -- Typhlosion - Double Team - TM32
  (157, 15700, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 30),
  -- Typhlosion - Swagger - TM34
  (157, 15700, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 31),
  -- Typhlosion - Sleep Talk - TM35
  (157, 15700, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 32),
  -- Typhlosion - Fire Blast - TM38
  (157, 15700, 126, 4, NULL, 2, NULL, NULL, 4002038, NULL, 33),
  -- Typhlosion - Swift - TM39
  (157, 15700, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 34),
  -- Typhlosion - Defense Curl - TM40
  (157, 15700, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 35),
  -- Typhlosion - Thunder Punch - TM41
  (157, 15700, 9, 4, NULL, 2, NULL, NULL, 4002041, NULL, 36),
  -- Typhlosion - Detect - TM43
  (157, 15700, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 37),
  -- Typhlosion - Rest - TM44
  (157, 15700, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 38),
  -- Typhlosion - Attract - TM45
  (157, 15700, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 39),
  -- Typhlosion - Fire Punch - TM48
  (157, 15700, 7, 4, NULL, 2, NULL, NULL, 4002048, NULL, 40),
  -- Typhlosion - Fury Cutter - TM49
  (157, 15700, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 41),
  -- Typhlosion - Cut - HM01
  (157, 15700, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 42),
  -- Typhlosion - Strength - HM04
  (157, 15700, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 43),
  -- Typhlosion - Flamethrower - Move Tutor
  (157, 15700, 53, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 44),
  -- Totodile - Scratch - Level 1
  (158, 15800, 10, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Totodile - Leer - Level 1
  (158, 15800, 43, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Totodile - Rage - Level 7
  (158, 15800, 99, 4, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Totodile - Water Gun - Level 13
  (158, 15800, 55, 4, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Totodile - Bite - Level 20
  (158, 15800, 44, 4, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Totodile - Scary Face - Level 27
  (158, 15800, 184, 4, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Totodile - Slash - Level 35
  (158, 15800, 163, 4, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Totodile - Screech - Level 43
  (158, 15800, 103, 4, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Totodile - Hydro Pump - Level 52
  (158, 15800, 56, 4, NULL, 1, 52, NULL, NULL, NULL, 9),
  -- Totodile - Dynamic Punch - TM01
  (158, 15800, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 10),
  -- Totodile - Headbutt - TM02
  (158, 15800, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 11),
  -- Totodile - Curse - TM03
  (158, 15800, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 12),
  -- Totodile - Toxic - TM06
  (158, 15800, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 13),
  -- Totodile - Hidden Power - TM10
  (158, 15800, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 14),
  -- Totodile - Snore - TM13
  (158, 15800, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 15),
  -- Totodile - Blizzard - TM14
  (158, 15800, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 16),
  -- Totodile - Icy Wind - TM16
  (158, 15800, 196, 4, NULL, 2, NULL, NULL, 4002016, NULL, 17),
  -- Totodile - Protect - TM17
  (158, 15800, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 18),
  -- Totodile - Rain Dance - TM18
  (158, 15800, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 19),
  -- Totodile - Endure - TM20
  (158, 15800, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 20),
  -- Totodile - Frustration - TM21
  (158, 15800, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 21),
  -- Totodile - Iron Tail - TM23
  (158, 15800, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 22),
  -- Totodile - Return - TM27
  (158, 15800, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 23),
  -- Totodile - Dig - TM28
  (158, 15800, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 24),
  -- Totodile - Mud-Slap - TM31
  (158, 15800, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 25),
  -- Totodile - Double Team - TM32
  (158, 15800, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 26),
  -- Totodile - Ice Punch - TM33
  (158, 15800, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 27),
  -- Totodile - Swagger - TM34
  (158, 15800, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 28),
  -- Totodile - Sleep Talk - TM35
  (158, 15800, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 29),
  -- Totodile - Detect - TM43
  (158, 15800, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 30),
  -- Totodile - Rest - TM44
  (158, 15800, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 31),
  -- Totodile - Attract - TM45
  (158, 15800, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 32),
  -- Totodile - Cut - HM01
  (158, 15800, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 33),
  -- Totodile - Surf - HM03
  (158, 15800, 57, 4, NULL, 3, NULL, NULL, 4003003, NULL, 34),
  -- Totodile - Whirlpool - HM06
  (158, 15800, 250, 4, NULL, 3, NULL, NULL, 4003006, NULL, 35),
  -- Totodile - Ancient Power - Egg Move
  (158, 15800, 246, 4, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Totodile - Crunch - Egg Move
  (158, 15800, 242, 4, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Totodile - Hydro Pump - Egg Move
  (158, 15800, 56, 4, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Totodile - Razor Wind - Egg Move
  (158, 15800, 13, 4, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Totodile - Rock Slide - Egg Move
  (158, 15800, 157, 4, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Totodile - Thrash - Egg Move
  (158, 15800, 37, 4, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Totodile - Ice Beam - Move Tutor
  (158, 15800, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 42),
  -- Croconaw - Scratch - Level 1
  (159, 15900, 10, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Croconaw - Leer - Level 1
  (159, 15900, 43, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Croconaw - Rage - Level 1
  (159, 15900, 99, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Croconaw - Rage - Level 7
  (159, 15900, 99, 4, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Croconaw - Water Gun - Level 13
  (159, 15900, 55, 4, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Croconaw - Bite - Level 21
  (159, 15900, 44, 4, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Croconaw - Scary Face - Level 28
  (159, 15900, 184, 4, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Croconaw - Slash - Level 37
  (159, 15900, 163, 4, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Croconaw - Screech - Level 45
  (159, 15900, 103, 4, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Croconaw - Hydro Pump - Level 55
  (159, 15900, 56, 4, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Croconaw - Dynamic Punch - TM01
  (159, 15900, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 11),
  -- Croconaw - Headbutt - TM02
  (159, 15900, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 12),
  -- Croconaw - Curse - TM03
  (159, 15900, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 13),
  -- Croconaw - Roar - TM05
  (159, 15900, 46, 4, NULL, 2, NULL, NULL, 4002005, NULL, 14),
  -- Croconaw - Toxic - TM06
  (159, 15900, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 15),
  -- Croconaw - Rock Smash - TM08
  (159, 15900, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 16),
  -- Croconaw - Hidden Power - TM10
  (159, 15900, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 17),
  -- Croconaw - Snore - TM13
  (159, 15900, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 18),
  -- Croconaw - Blizzard - TM14
  (159, 15900, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 19),
  -- Croconaw - Icy Wind - TM16
  (159, 15900, 196, 4, NULL, 2, NULL, NULL, 4002016, NULL, 20),
  -- Croconaw - Protect - TM17
  (159, 15900, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 21),
  -- Croconaw - Rain Dance - TM18
  (159, 15900, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 22),
  -- Croconaw - Endure - TM20
  (159, 15900, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 23),
  -- Croconaw - Frustration - TM21
  (159, 15900, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 24),
  -- Croconaw - Iron Tail - TM23
  (159, 15900, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 25),
  -- Croconaw - Return - TM27
  (159, 15900, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 26),
  -- Croconaw - Dig - TM28
  (159, 15900, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 27),
  -- Croconaw - Mud-Slap - TM31
  (159, 15900, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 28),
  -- Croconaw - Double Team - TM32
  (159, 15900, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 29),
  -- Croconaw - Ice Punch - TM33
  (159, 15900, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 30),
  -- Croconaw - Swagger - TM34
  (159, 15900, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 31),
  -- Croconaw - Sleep Talk - TM35
  (159, 15900, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 32),
  -- Croconaw - Detect - TM43
  (159, 15900, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 33),
  -- Croconaw - Rest - TM44
  (159, 15900, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 34),
  -- Croconaw - Attract - TM45
  (159, 15900, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 35),
  -- Croconaw - Fury Cutter - TM49
  (159, 15900, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 36),
  -- Croconaw - Cut - HM01
  (159, 15900, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 37),
  -- Croconaw - Surf - HM03
  (159, 15900, 57, 4, NULL, 3, NULL, NULL, 4003003, NULL, 38),
  -- Croconaw - Strength - HM04
  (159, 15900, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 39),
  -- Croconaw - Whirlpool - HM06
  (159, 15900, 250, 4, NULL, 3, NULL, NULL, 4003006, NULL, 40),
  -- Croconaw - Ice Beam - Move Tutor
  (159, 15900, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 41),
  -- Feraligatr - Scratch - Level 1
  (160, 16000, 10, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Feraligatr - Leer - Level 1
  (160, 16000, 43, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Feraligatr - Rage - Level 1
  (160, 16000, 99, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Feraligatr - Water Gun - Level 1
  (160, 16000, 55, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Feraligatr - Rage - Level 7
  (160, 16000, 99, 4, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Feraligatr - Water Gun - Level 13
  (160, 16000, 55, 4, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Feraligatr - Bite - Level 21
  (160, 16000, 44, 4, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Feraligatr - Scary Face - Level 28
  (160, 16000, 184, 4, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Feraligatr - Slash - Level 38
  (160, 16000, 163, 4, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Feraligatr - Screech - Level 47
  (160, 16000, 103, 4, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Feraligatr - Hydro Pump - Level 58
  (160, 16000, 56, 4, NULL, 1, 58, NULL, NULL, NULL, 11),
  -- Feraligatr - Dynamic Punch - TM01
  (160, 16000, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 12),
  -- Feraligatr - Headbutt - TM02
  (160, 16000, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 13),
  -- Feraligatr - Curse - TM03
  (160, 16000, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 14),
  -- Feraligatr - Roar - TM05
  (160, 16000, 46, 4, NULL, 2, NULL, NULL, 4002005, NULL, 15),
  -- Feraligatr - Toxic - TM06
  (160, 16000, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 16),
  -- Feraligatr - Rock Smash - TM08
  (160, 16000, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 17),
  -- Feraligatr - Hidden Power - TM10
  (160, 16000, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 18),
  -- Feraligatr - Snore - TM13
  (160, 16000, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 19),
  -- Feraligatr - Blizzard - TM14
  (160, 16000, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 20),
  -- Feraligatr - Hyper Beam - TM15
  (160, 16000, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 21),
  -- Feraligatr - Icy Wind - TM16
  (160, 16000, 196, 4, NULL, 2, NULL, NULL, 4002016, NULL, 22),
  -- Feraligatr - Protect - TM17
  (160, 16000, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 23),
  -- Feraligatr - Rain Dance - TM18
  (160, 16000, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 24),
  -- Feraligatr - Endure - TM20
  (160, 16000, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 25),
  -- Feraligatr - Frustration - TM21
  (160, 16000, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 26),
  -- Feraligatr - Iron Tail - TM23
  (160, 16000, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 27),
  -- Feraligatr - Earthquake - TM26
  (160, 16000, 89, 4, NULL, 2, NULL, NULL, 4002026, NULL, 28),
  -- Feraligatr - Return - TM27
  (160, 16000, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 29),
  -- Feraligatr - Dig - TM28
  (160, 16000, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 30),
  -- Feraligatr - Mud-Slap - TM31
  (160, 16000, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 31),
  -- Feraligatr - Double Team - TM32
  (160, 16000, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 32),
  -- Feraligatr - Ice Punch - TM33
  (160, 16000, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 33),
  -- Feraligatr - Swagger - TM34
  (160, 16000, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 34),
  -- Feraligatr - Sleep Talk - TM35
  (160, 16000, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 35),
  -- Feraligatr - Detect - TM43
  (160, 16000, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 36),
  -- Feraligatr - Rest - TM44
  (160, 16000, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 37),
  -- Feraligatr - Attract - TM45
  (160, 16000, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 38),
  -- Feraligatr - Fury Cutter - TM49
  (160, 16000, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 39),
  -- Feraligatr - Cut - HM01
  (160, 16000, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 40),
  -- Feraligatr - Surf - HM03
  (160, 16000, 57, 4, NULL, 3, NULL, NULL, 4003003, NULL, 41),
  -- Feraligatr - Strength - HM04
  (160, 16000, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 42),
  -- Feraligatr - Whirlpool - HM06
  (160, 16000, 250, 4, NULL, 3, NULL, NULL, 4003006, NULL, 43),
  -- Feraligatr - Ice Beam - Move Tutor
  (160, 16000, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 44),
  -- Sentret - Tackle - Level 1
  (161, 16100, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sentret - Defense Curl - Level 5
  (161, 16100, 111, 4, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Sentret - Quick Attack - Level 11
  (161, 16100, 98, 4, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Sentret - Fury Swipes - Level 17
  (161, 16100, 154, 4, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Sentret - Slam - Level 25
  (161, 16100, 21, 4, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Sentret - Rest - Level 33
  (161, 16100, 156, 4, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Sentret - Amnesia - Level 41
  (161, 16100, 133, 4, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Sentret - Dynamic Punch - TM01
  (161, 16100, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 8),
  -- Sentret - Headbutt - TM02
  (161, 16100, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 9),
  -- Sentret - Curse - TM03
  (161, 16100, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 10),
  -- Sentret - Rollout - TM04
  (161, 16100, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 11),
  -- Sentret - Toxic - TM06
  (161, 16100, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 12),
  -- Sentret - Hidden Power - TM10
  (161, 16100, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 13),
  -- Sentret - Sunny Day - TM11
  (161, 16100, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 14),
  -- Sentret - Snore - TM13
  (161, 16100, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 15),
  -- Sentret - Protect - TM17
  (161, 16100, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 16),
  -- Sentret - Endure - TM20
  (161, 16100, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 17),
  -- Sentret - Frustration - TM21
  (161, 16100, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 18),
  -- Sentret - Iron Tail - TM23
  (161, 16100, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 19),
  -- Sentret - Return - TM27
  (161, 16100, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 20),
  -- Sentret - Dig - TM28
  (161, 16100, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 21),
  -- Sentret - Shadow Ball - TM30
  (161, 16100, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 22),
  -- Sentret - Mud-Slap - TM31
  (161, 16100, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 23),
  -- Sentret - Double Team - TM32
  (161, 16100, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 24),
  -- Sentret - Ice Punch - TM33
  (161, 16100, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 25),
  -- Sentret - Swagger - TM34
  (161, 16100, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 26),
  -- Sentret - Sleep Talk - TM35
  (161, 16100, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 27),
  -- Sentret - Swift - TM39
  (161, 16100, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 28),
  -- Sentret - Defense Curl - TM40
  (161, 16100, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 29),
  -- Sentret - Thunder Punch - TM41
  (161, 16100, 9, 4, NULL, 2, NULL, NULL, 4002041, NULL, 30),
  -- Sentret - Detect - TM43
  (161, 16100, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 31),
  -- Sentret - Rest - TM44
  (161, 16100, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 32),
  -- Sentret - Attract - TM45
  (161, 16100, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 33),
  -- Sentret - Thief - TM46
  (161, 16100, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 34),
  -- Sentret - Fire Punch - TM48
  (161, 16100, 7, 4, NULL, 2, NULL, NULL, 4002048, NULL, 35),
  -- Sentret - Fury Cutter - TM49
  (161, 16100, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 36),
  -- Sentret - Cut - HM01
  (161, 16100, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 37),
  -- Sentret - Surf - HM03
  (161, 16100, 57, 4, NULL, 3, NULL, NULL, 4003003, NULL, 38),
  -- Sentret - Double-Edge - Egg Move
  (161, 16100, 38, 4, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Sentret - Focus Energy - Egg Move
  (161, 16100, 116, 4, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Sentret - Pursuit - Egg Move
  (161, 16100, 228, 4, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Sentret - Reversal - Egg Move
  (161, 16100, 179, 4, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Sentret - Slash - Egg Move
  (161, 16100, 163, 4, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Furret - Scratch - Level 1
  (162, 16200, 10, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Furret - Defense Curl - Level 1
  (162, 16200, 111, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Furret - Quick Attack - Level 1
  (162, 16200, 98, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Furret - Defense Curl - Level 5
  (162, 16200, 111, 4, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Furret - Quick Attack - Level 11
  (162, 16200, 98, 4, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Furret - Fury Swipes - Level 18
  (162, 16200, 154, 4, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Furret - Slam - Level 28
  (162, 16200, 21, 4, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Furret - Rest - Level 38
  (162, 16200, 156, 4, NULL, 1, 38, NULL, NULL, NULL, 8),
  -- Furret - Amnesia - Level 48
  (162, 16200, 133, 4, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Furret - Dynamic Punch - TM01
  (162, 16200, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 10),
  -- Furret - Headbutt - TM02
  (162, 16200, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 11),
  -- Furret - Curse - TM03
  (162, 16200, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 12),
  -- Furret - Rollout - TM04
  (162, 16200, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 13),
  -- Furret - Toxic - TM06
  (162, 16200, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 14),
  -- Furret - Hidden Power - TM10
  (162, 16200, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 15),
  -- Furret - Sunny Day - TM11
  (162, 16200, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 16),
  -- Furret - Snore - TM13
  (162, 16200, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 17),
  -- Furret - Hyper Beam - TM15
  (162, 16200, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 18),
  -- Furret - Protect - TM17
  (162, 16200, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 19),
  -- Furret - Endure - TM20
  (162, 16200, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 20),
  -- Furret - Frustration - TM21
  (162, 16200, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 21),
  -- Furret - Iron Tail - TM23
  (162, 16200, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 22),
  -- Furret - Return - TM27
  (162, 16200, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 23),
  -- Furret - Dig - TM28
  (162, 16200, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 24),
  -- Furret - Shadow Ball - TM30
  (162, 16200, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 25),
  -- Furret - Mud-Slap - TM31
  (162, 16200, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 26),
  -- Furret - Double Team - TM32
  (162, 16200, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 27),
  -- Furret - Ice Punch - TM33
  (162, 16200, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 28),
  -- Furret - Swagger - TM34
  (162, 16200, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 29),
  -- Furret - Sleep Talk - TM35
  (162, 16200, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 30),
  -- Furret - Swift - TM39
  (162, 16200, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 31),
  -- Furret - Defense Curl - TM40
  (162, 16200, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 32),
  -- Furret - Thunder Punch - TM41
  (162, 16200, 9, 4, NULL, 2, NULL, NULL, 4002041, NULL, 33),
  -- Furret - Detect - TM43
  (162, 16200, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 34),
  -- Furret - Rest - TM44
  (162, 16200, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 35),
  -- Furret - Attract - TM45
  (162, 16200, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 36),
  -- Furret - Thief - TM46
  (162, 16200, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 37),
  -- Furret - Fire Punch - TM48
  (162, 16200, 7, 4, NULL, 2, NULL, NULL, 4002048, NULL, 38),
  -- Furret - Fury Cutter - TM49
  (162, 16200, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 39),
  -- Furret - Cut - HM01
  (162, 16200, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 40),
  -- Furret - Surf - HM03
  (162, 16200, 57, 4, NULL, 3, NULL, NULL, 4003003, NULL, 41),
  -- Furret - Strength - HM04
  (162, 16200, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 42),
  -- Hoothoot - Tackle - Level 1
  (163, 16300, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoothoot - Growl - Level 1
  (163, 16300, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hoothoot - Foresight - Level 6
  (163, 16300, 193, 4, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Hoothoot - Peck - Level 11
  (163, 16300, 64, 4, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Hoothoot - Hypnosis - Level 16
  (163, 16300, 95, 4, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Hoothoot - Reflect - Level 22
  (163, 16300, 115, 4, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Hoothoot - Take Down - Level 28
  (163, 16300, 36, 4, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Hoothoot - Confusion - Level 34
  (163, 16300, 93, 4, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Hoothoot - Dream Eater - Level 48
  (163, 16300, 138, 4, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Hoothoot - Curse - TM03
  (163, 16300, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 10),
  -- Hoothoot - Toxic - TM06
  (163, 16300, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 11),
  -- Hoothoot - Hidden Power - TM10
  (163, 16300, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 12),
  -- Hoothoot - Sunny Day - TM11
  (163, 16300, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 13),
  -- Hoothoot - Snore - TM13
  (163, 16300, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 14),
  -- Hoothoot - Protect - TM17
  (163, 16300, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 15),
  -- Hoothoot - Endure - TM20
  (163, 16300, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 16),
  -- Hoothoot - Frustration - TM21
  (163, 16300, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 17),
  -- Hoothoot - Return - TM27
  (163, 16300, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 18),
  -- Hoothoot - Mud-Slap - TM31
  (163, 16300, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 19),
  -- Hoothoot - Double Team - TM32
  (163, 16300, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 20),
  -- Hoothoot - Swagger - TM34
  (163, 16300, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 21),
  -- Hoothoot - Sleep Talk - TM35
  (163, 16300, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 22),
  -- Hoothoot - Swift - TM39
  (163, 16300, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 23),
  -- Hoothoot - Dream Eater - TM42
  (163, 16300, 138, 4, NULL, 2, NULL, NULL, 4002042, NULL, 24),
  -- Hoothoot - Detect - TM43
  (163, 16300, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 25),
  -- Hoothoot - Rest - TM44
  (163, 16300, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 26),
  -- Hoothoot - Attract - TM45
  (163, 16300, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 27),
  -- Hoothoot - Thief - TM46
  (163, 16300, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 28),
  -- Hoothoot - Steel Wing - TM47
  (163, 16300, 211, 4, NULL, 2, NULL, NULL, 4002047, NULL, 29),
  -- Hoothoot - Nightmare - TM50
  (163, 16300, 171, 4, NULL, 2, NULL, NULL, 4002050, NULL, 30),
  -- Hoothoot - Fly - HM02
  (163, 16300, 19, 4, NULL, 3, NULL, NULL, 4003002, NULL, 31),
  -- Hoothoot - Flash - HM05
  (163, 16300, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 32),
  -- Hoothoot - Feint Attack - Egg Move
  (163, 16300, 185, 4, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Hoothoot - Mirror Move - Egg Move
  (163, 16300, 119, 4, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Hoothoot - Sky Attack - Egg Move
  (163, 16300, 143, 4, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Hoothoot - Supersonic - Egg Move
  (163, 16300, 48, 4, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Hoothoot - Whirlwind - Egg Move
  (163, 16300, 18, 4, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Hoothoot - Wing Attack - Egg Move
  (163, 16300, 17, 4, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Noctowl - Tackle - Level 1
  (164, 16400, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Noctowl - Growl - Level 1
  (164, 16400, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Noctowl - Foresight - Level 1
  (164, 16400, 193, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Noctowl - Peck - Level 1
  (164, 16400, 64, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Noctowl - Foresight - Level 6
  (164, 16400, 193, 4, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Noctowl - Peck - Level 11
  (164, 16400, 64, 4, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Noctowl - Hypnosis - Level 16
  (164, 16400, 95, 4, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Noctowl - Reflect - Level 25
  (164, 16400, 115, 4, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Noctowl - Take Down - Level 33
  (164, 16400, 36, 4, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Noctowl - Confusion - Level 41
  (164, 16400, 93, 4, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Noctowl - Dream Eater - Level 57
  (164, 16400, 138, 4, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Noctowl - Curse - TM03
  (164, 16400, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 12),
  -- Noctowl - Toxic - TM06
  (164, 16400, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 13),
  -- Noctowl - Hidden Power - TM10
  (164, 16400, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 14),
  -- Noctowl - Sunny Day - TM11
  (164, 16400, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 15),
  -- Noctowl - Snore - TM13
  (164, 16400, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 16),
  -- Noctowl - Hyper Beam - TM15
  (164, 16400, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 17),
  -- Noctowl - Protect - TM17
  (164, 16400, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 18),
  -- Noctowl - Endure - TM20
  (164, 16400, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 19),
  -- Noctowl - Frustration - TM21
  (164, 16400, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 20),
  -- Noctowl - Return - TM27
  (164, 16400, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 21),
  -- Noctowl - Mud-Slap - TM31
  (164, 16400, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 22),
  -- Noctowl - Double Team - TM32
  (164, 16400, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 23),
  -- Noctowl - Swagger - TM34
  (164, 16400, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 24),
  -- Noctowl - Sleep Talk - TM35
  (164, 16400, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 25),
  -- Noctowl - Swift - TM39
  (164, 16400, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 26),
  -- Noctowl - Dream Eater - TM42
  (164, 16400, 138, 4, NULL, 2, NULL, NULL, 4002042, NULL, 27),
  -- Noctowl - Detect - TM43
  (164, 16400, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 28),
  -- Noctowl - Rest - TM44
  (164, 16400, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 29),
  -- Noctowl - Attract - TM45
  (164, 16400, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 30),
  -- Noctowl - Thief - TM46
  (164, 16400, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 31),
  -- Noctowl - Steel Wing - TM47
  (164, 16400, 211, 4, NULL, 2, NULL, NULL, 4002047, NULL, 32),
  -- Noctowl - Nightmare - TM50
  (164, 16400, 171, 4, NULL, 2, NULL, NULL, 4002050, NULL, 33),
  -- Noctowl - Fly - HM02
  (164, 16400, 19, 4, NULL, 3, NULL, NULL, 4003002, NULL, 34),
  -- Noctowl - Flash - HM05
  (164, 16400, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 35),
  -- Ledyba - Tackle - Level 1
  (165, 16500, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ledyba - Supersonic - Level 8
  (165, 16500, 48, 4, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Ledyba - Comet Punch - Level 15
  (165, 16500, 4, 4, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Ledyba - Light Screen - Level 22
  (165, 16500, 113, 4, NULL, 1, 22, NULL, NULL, NULL, 4),
  -- Ledyba - Reflect - Level 22
  (165, 16500, 115, 4, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Ledyba - Safeguard - Level 22
  (165, 16500, 219, 4, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Ledyba - Baton Pass - Level 29
  (165, 16500, 226, 4, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Ledyba - Swift - Level 36
  (165, 16500, 129, 4, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Ledyba - Agility - Level 43
  (165, 16500, 97, 4, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Ledyba - Double-Edge - Level 50
  (165, 16500, 38, 4, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Ledyba - Dynamic Punch - TM01
  (165, 16500, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 11),
  -- Ledyba - Headbutt - TM02
  (165, 16500, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 12),
  -- Ledyba - Curse - TM03
  (165, 16500, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 13),
  -- Ledyba - Rollout - TM04
  (165, 16500, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 14),
  -- Ledyba - Toxic - TM06
  (165, 16500, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 15),
  -- Ledyba - Hidden Power - TM10
  (165, 16500, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 16),
  -- Ledyba - Sunny Day - TM11
  (165, 16500, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 17),
  -- Ledyba - Sweet Scent - TM12
  (165, 16500, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 18),
  -- Ledyba - Snore - TM13
  (165, 16500, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 19),
  -- Ledyba - Protect - TM17
  (165, 16500, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 20),
  -- Ledyba - Giga Drain - TM19
  (165, 16500, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 21),
  -- Ledyba - Endure - TM20
  (165, 16500, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 22),
  -- Ledyba - Frustration - TM21
  (165, 16500, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 23),
  -- Ledyba - Solar Beam - TM22
  (165, 16500, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 24),
  -- Ledyba - Return - TM27
  (165, 16500, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 25),
  -- Ledyba - Dig - TM28
  (165, 16500, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 26),
  -- Ledyba - Double Team - TM32
  (165, 16500, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 27),
  -- Ledyba - Ice Punch - TM33
  (165, 16500, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 28),
  -- Ledyba - Swagger - TM34
  (165, 16500, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 29),
  -- Ledyba - Sleep Talk - TM35
  (165, 16500, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 30),
  -- Ledyba - Swift - TM39
  (165, 16500, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 31),
  -- Ledyba - Thunder Punch - TM41
  (165, 16500, 9, 4, NULL, 2, NULL, NULL, 4002041, NULL, 32),
  -- Ledyba - Rest - TM44
  (165, 16500, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 33),
  -- Ledyba - Attract - TM45
  (165, 16500, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 34),
  -- Ledyba - Thief - TM46
  (165, 16500, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 35),
  -- Ledyba - Flash - HM05
  (165, 16500, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 36),
  -- Ledyba - Bide - Egg Move
  (165, 16500, 117, 4, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Ledyba - Light Screen - Egg Move
  (165, 16500, 113, 4, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Ledyba - Psybeam - Egg Move
  (165, 16500, 60, 4, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Ledian - Tackle - Level 1
  (166, 16600, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ledian - Supersonic - Level 1
  (166, 16600, 48, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ledian - Supersonic - Level 8
  (166, 16600, 48, 4, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Ledian - Comet Punch - Level 15
  (166, 16600, 4, 4, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Ledian - Light Screen - Level 24
  (166, 16600, 113, 4, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Ledian - Reflect - Level 24
  (166, 16600, 115, 4, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Ledian - Safeguard - Level 24
  (166, 16600, 219, 4, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Ledian - Baton Pass - Level 33
  (166, 16600, 226, 4, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Ledian - Swift - Level 42
  (166, 16600, 129, 4, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Ledian - Agility - Level 51
  (166, 16600, 97, 4, NULL, 1, 51, NULL, NULL, NULL, 10),
  -- Ledian - Double-Edge - Level 60
  (166, 16600, 38, 4, NULL, 1, 60, NULL, NULL, NULL, 11),
  -- Ledian - Dynamic Punch - TM01
  (166, 16600, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 12),
  -- Ledian - Headbutt - TM02
  (166, 16600, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 13),
  -- Ledian - Curse - TM03
  (166, 16600, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 14),
  -- Ledian - Rollout - TM04
  (166, 16600, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 15),
  -- Ledian - Toxic - TM06
  (166, 16600, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 16),
  -- Ledian - Hidden Power - TM10
  (166, 16600, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 17),
  -- Ledian - Sunny Day - TM11
  (166, 16600, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 18),
  -- Ledian - Sweet Scent - TM12
  (166, 16600, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 19),
  -- Ledian - Snore - TM13
  (166, 16600, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 20),
  -- Ledian - Hyper Beam - TM15
  (166, 16600, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 21),
  -- Ledian - Protect - TM17
  (166, 16600, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 22),
  -- Ledian - Giga Drain - TM19
  (166, 16600, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 23),
  -- Ledian - Endure - TM20
  (166, 16600, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 24),
  -- Ledian - Frustration - TM21
  (166, 16600, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 25),
  -- Ledian - Solar Beam - TM22
  (166, 16600, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 26),
  -- Ledian - Return - TM27
  (166, 16600, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 27),
  -- Ledian - Dig - TM28
  (166, 16600, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 28),
  -- Ledian - Double Team - TM32
  (166, 16600, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 29),
  -- Ledian - Ice Punch - TM33
  (166, 16600, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 30),
  -- Ledian - Swagger - TM34
  (166, 16600, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 31),
  -- Ledian - Sleep Talk - TM35
  (166, 16600, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 32),
  -- Ledian - Swift - TM39
  (166, 16600, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 33),
  -- Ledian - Thunder Punch - TM41
  (166, 16600, 9, 4, NULL, 2, NULL, NULL, 4002041, NULL, 34),
  -- Ledian - Rest - TM44
  (166, 16600, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 35),
  -- Ledian - Attract - TM45
  (166, 16600, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 36),
  -- Ledian - Thief - TM46
  (166, 16600, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 37),
  -- Ledian - Flash - HM05
  (166, 16600, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 38),
  -- Spinarak - Poison Sting - Level 1
  (167, 16700, 40, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spinarak - String Shot - Level 1
  (167, 16700, 81, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spinarak - Scary Face - Level 6
  (167, 16700, 184, 4, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Spinarak - Constrict - Level 11
  (167, 16700, 132, 4, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Spinarak - Night Shade - Level 17
  (167, 16700, 101, 4, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Spinarak - Leech Life - Level 23
  (167, 16700, 141, 4, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Spinarak - Fury Swipes - Level 30
  (167, 16700, 154, 4, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Spinarak - Spider Web - Level 37
  (167, 16700, 169, 4, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Spinarak - Agility - Level 45
  (167, 16700, 97, 4, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Spinarak - Psychic - Level 53
  (167, 16700, 94, 4, NULL, 1, 53, NULL, NULL, NULL, 10),
  -- Spinarak - Curse - TM03
  (167, 16700, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 11),
  -- Spinarak - Toxic - TM06
  (167, 16700, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 12),
  -- Spinarak - Hidden Power - TM10
  (167, 16700, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 13),
  -- Spinarak - Sunny Day - TM11
  (167, 16700, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 14),
  -- Spinarak - Snore - TM13
  (167, 16700, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 15),
  -- Spinarak - Protect - TM17
  (167, 16700, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 16),
  -- Spinarak - Giga Drain - TM19
  (167, 16700, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 17),
  -- Spinarak - Endure - TM20
  (167, 16700, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 18),
  -- Spinarak - Frustration - TM21
  (167, 16700, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 19),
  -- Spinarak - Solar Beam - TM22
  (167, 16700, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 20),
  -- Spinarak - Return - TM27
  (167, 16700, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 21),
  -- Spinarak - Dig - TM28
  (167, 16700, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 22),
  -- Spinarak - Psychic - TM29
  (167, 16700, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 23),
  -- Spinarak - Double Team - TM32
  (167, 16700, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 24),
  -- Spinarak - Swagger - TM34
  (167, 16700, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 25),
  -- Spinarak - Sleep Talk - TM35
  (167, 16700, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 26),
  -- Spinarak - Sludge Bomb - TM36
  (167, 16700, 188, 4, NULL, 2, NULL, NULL, 4002036, NULL, 27),
  -- Spinarak - Rest - TM44
  (167, 16700, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 28),
  -- Spinarak - Attract - TM45
  (167, 16700, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 29),
  -- Spinarak - Thief - TM46
  (167, 16700, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 30),
  -- Spinarak - Flash - HM05
  (167, 16700, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 31),
  -- Spinarak - Baton Pass - Egg Move
  (167, 16700, 226, 4, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Spinarak - Disable - Egg Move
  (167, 16700, 50, 4, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Spinarak - Psybeam - Egg Move
  (167, 16700, 60, 4, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Spinarak - Pursuit - Egg Move
  (167, 16700, 228, 4, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Spinarak - Sonic Boom - Egg Move
  (167, 16700, 49, 4, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Ariados - Poison Sting - Level 1
  (168, 16800, 40, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ariados - String Shot - Level 1
  (168, 16800, 81, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ariados - Scary Face - Level 1
  (168, 16800, 184, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ariados - Constrict - Level 1
  (168, 16800, 132, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ariados - Scary Face - Level 6
  (168, 16800, 184, 4, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Ariados - Constrict - Level 11
  (168, 16800, 132, 4, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Ariados - Night Shade - Level 17
  (168, 16800, 101, 4, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Ariados - Leech Life - Level 25
  (168, 16800, 141, 4, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Ariados - Fury Swipes - Level 34
  (168, 16800, 154, 4, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Ariados - Spider Web - Level 43
  (168, 16800, 169, 4, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Ariados - Agility - Level 53
  (168, 16800, 97, 4, NULL, 1, 53, NULL, NULL, NULL, 11),
  -- Ariados - Psychic - Level 63
  (168, 16800, 94, 4, NULL, 1, 63, NULL, NULL, NULL, 12),
  -- Ariados - Curse - TM03
  (168, 16800, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 13),
  -- Ariados - Toxic - TM06
  (168, 16800, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 14),
  -- Ariados - Hidden Power - TM10
  (168, 16800, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 15),
  -- Ariados - Sunny Day - TM11
  (168, 16800, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 16),
  -- Ariados - Snore - TM13
  (168, 16800, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 17),
  -- Ariados - Hyper Beam - TM15
  (168, 16800, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 18),
  -- Ariados - Protect - TM17
  (168, 16800, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 19),
  -- Ariados - Giga Drain - TM19
  (168, 16800, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 20),
  -- Ariados - Endure - TM20
  (168, 16800, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 21),
  -- Ariados - Frustration - TM21
  (168, 16800, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 22),
  -- Ariados - Solar Beam - TM22
  (168, 16800, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 23),
  -- Ariados - Return - TM27
  (168, 16800, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 24),
  -- Ariados - Dig - TM28
  (168, 16800, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 25),
  -- Ariados - Psychic - TM29
  (168, 16800, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 26),
  -- Ariados - Double Team - TM32
  (168, 16800, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 27),
  -- Ariados - Swagger - TM34
  (168, 16800, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 28),
  -- Ariados - Sleep Talk - TM35
  (168, 16800, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 29),
  -- Ariados - Sludge Bomb - TM36
  (168, 16800, 188, 4, NULL, 2, NULL, NULL, 4002036, NULL, 30),
  -- Ariados - Rest - TM44
  (168, 16800, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 31),
  -- Ariados - Attract - TM45
  (168, 16800, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 32),
  -- Ariados - Thief - TM46
  (168, 16800, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 33),
  -- Ariados - Flash - HM05
  (168, 16800, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 34),
  -- Crobat - Screech - Level 1
  (169, 16900, 103, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crobat - Leech Life - Level 1
  (169, 16900, 141, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crobat - Supersonic - Level 1
  (169, 16900, 48, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crobat - Supersonic - Level 6
  (169, 16900, 48, 4, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Crobat - Bite - Level 12
  (169, 16900, 44, 4, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Crobat - Confuse Ray - Level 19
  (169, 16900, 109, 4, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Crobat - Wing Attack - Level 30
  (169, 16900, 17, 4, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Crobat - Mean Look - Level 42
  (169, 16900, 212, 4, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Crobat - Haze - Level 55
  (169, 16900, 114, 4, NULL, 1, 55, NULL, NULL, NULL, 9),
  -- Crobat - Curse - TM03
  (169, 16900, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 10),
  -- Crobat - Toxic - TM06
  (169, 16900, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 11),
  -- Crobat - Hidden Power - TM10
  (169, 16900, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 12),
  -- Crobat - Sunny Day - TM11
  (169, 16900, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 13),
  -- Crobat - Snore - TM13
  (169, 16900, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 14),
  -- Crobat - Hyper Beam - TM15
  (169, 16900, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 15),
  -- Crobat - Protect - TM17
  (169, 16900, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 16),
  -- Crobat - Giga Drain - TM19
  (169, 16900, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 17),
  -- Crobat - Endure - TM20
  (169, 16900, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 18),
  -- Crobat - Frustration - TM21
  (169, 16900, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 19),
  -- Crobat - Return - TM27
  (169, 16900, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 20),
  -- Crobat - Double Team - TM32
  (169, 16900, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 21),
  -- Crobat - Swagger - TM34
  (169, 16900, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 22),
  -- Crobat - Sleep Talk - TM35
  (169, 16900, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 23),
  -- Crobat - Swift - TM39
  (169, 16900, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 24),
  -- Crobat - Detect - TM43
  (169, 16900, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 25),
  -- Crobat - Rest - TM44
  (169, 16900, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 26),
  -- Crobat - Attract - TM45
  (169, 16900, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 27),
  -- Crobat - Thief - TM46
  (169, 16900, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 28),
  -- Crobat - Steel Wing - TM47
  (169, 16900, 211, 4, NULL, 2, NULL, NULL, 4002047, NULL, 29),
  -- Crobat - Fly - HM02
  (169, 16900, 19, 4, NULL, 3, NULL, NULL, 4003002, NULL, 30),
  -- Chinchou - Bubble - Level 1
  (170, 17000, 145, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chinchou - Thunder Wave - Level 1
  (170, 17000, 86, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chinchou - Supersonic - Level 5
  (170, 17000, 48, 4, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Chinchou - Flail - Level 13
  (170, 17000, 175, 4, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Chinchou - Water Gun - Level 17
  (170, 17000, 55, 4, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Chinchou - Spark - Level 25
  (170, 17000, 209, 4, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Chinchou - Confuse Ray - Level 29
  (170, 17000, 109, 4, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Chinchou - Take Down - Level 37
  (170, 17000, 36, 4, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Chinchou - Hydro Pump - Level 41
  (170, 17000, 56, 4, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Chinchou - Curse - TM03
  (170, 17000, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 10),
  -- Chinchou - Toxic - TM06
  (170, 17000, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 11),
  -- Chinchou - Zap Cannon - TM07
  (170, 17000, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 12),
  -- Chinchou - Hidden Power - TM10
  (170, 17000, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 13),
  -- Chinchou - Snore - TM13
  (170, 17000, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 14),
  -- Chinchou - Protect - TM17
  (170, 17000, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 15),
  -- Chinchou - Rain Dance - TM18
  (170, 17000, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 16),
  -- Chinchou - Endure - TM20
  (170, 17000, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 17),
  -- Chinchou - Frustration - TM21
  (170, 17000, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 18),
  -- Chinchou - Thunder - TM25
  (170, 17000, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 19),
  -- Chinchou - Return - TM27
  (170, 17000, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 20),
  -- Chinchou - Double Team - TM32
  (170, 17000, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 21),
  -- Chinchou - Swagger - TM34
  (170, 17000, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 22),
  -- Chinchou - Sleep Talk - TM35
  (170, 17000, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 23),
  -- Chinchou - Rest - TM44
  (170, 17000, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 24),
  -- Chinchou - Attract - TM45
  (170, 17000, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 25),
  -- Chinchou - Surf - HM03
  (170, 17000, 57, 4, NULL, 3, NULL, NULL, 4003003, NULL, 26),
  -- Chinchou - Flash - HM05
  (170, 17000, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 27),
  -- Chinchou - Whirlpool - HM06
  (170, 17000, 250, 4, NULL, 3, NULL, NULL, 4003006, NULL, 28),
  -- Chinchou - Waterfall - HM07
  (170, 17000, 127, 4, NULL, 3, NULL, NULL, 4003007, NULL, 29),
  -- Chinchou - Flail - Egg Move
  (170, 17000, 175, 4, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Chinchou - Screech - Egg Move
  (170, 17000, 103, 4, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Chinchou - Supersonic - Egg Move
  (170, 17000, 48, 4, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Chinchou - Ice Beam - Move Tutor
  (170, 17000, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 33),
  -- Chinchou - Thunderbolt - Move Tutor
  (170, 17000, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 34),
  -- Lanturn - Bubble - Level 1
  (171, 17100, 145, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lanturn - Thunder Wave - Level 1
  (171, 17100, 86, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lanturn - Supersonic - Level 1
  (171, 17100, 48, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lanturn - Supersonic - Level 5
  (171, 17100, 48, 4, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Lanturn - Flail - Level 13
  (171, 17100, 175, 4, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Lanturn - Water Gun - Level 17
  (171, 17100, 55, 4, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Lanturn - Spark - Level 25
  (171, 17100, 209, 4, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Lanturn - Confuse Ray - Level 33
  (171, 17100, 109, 4, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Lanturn - Take Down - Level 45
  (171, 17100, 36, 4, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Lanturn - Hydro Pump - Level 53
  (171, 17100, 56, 4, NULL, 1, 53, NULL, NULL, NULL, 10),
  -- Lanturn - Curse - TM03
  (171, 17100, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 11),
  -- Lanturn - Toxic - TM06
  (171, 17100, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 12),
  -- Lanturn - Zap Cannon - TM07
  (171, 17100, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 13),
  -- Lanturn - Hidden Power - TM10
  (171, 17100, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 14),
  -- Lanturn - Snore - TM13
  (171, 17100, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 15),
  -- Lanturn - Hyper Beam - TM15
  (171, 17100, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 16),
  -- Lanturn - Protect - TM17
  (171, 17100, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 17),
  -- Lanturn - Rain Dance - TM18
  (171, 17100, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 18),
  -- Lanturn - Endure - TM20
  (171, 17100, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 19),
  -- Lanturn - Frustration - TM21
  (171, 17100, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 20),
  -- Lanturn - Thunder - TM25
  (171, 17100, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 21),
  -- Lanturn - Return - TM27
  (171, 17100, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 22),
  -- Lanturn - Double Team - TM32
  (171, 17100, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 23),
  -- Lanturn - Swagger - TM34
  (171, 17100, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 24),
  -- Lanturn - Sleep Talk - TM35
  (171, 17100, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 25),
  -- Lanturn - Rest - TM44
  (171, 17100, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 26),
  -- Lanturn - Attract - TM45
  (171, 17100, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 27),
  -- Lanturn - Surf - HM03
  (171, 17100, 57, 4, NULL, 3, NULL, NULL, 4003003, NULL, 28),
  -- Lanturn - Flash - HM05
  (171, 17100, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 29),
  -- Lanturn - Whirlpool - HM06
  (171, 17100, 250, 4, NULL, 3, NULL, NULL, 4003006, NULL, 30),
  -- Lanturn - Waterfall - HM07
  (171, 17100, 127, 4, NULL, 3, NULL, NULL, 4003007, NULL, 31),
  -- Lanturn - Ice Beam - Move Tutor
  (171, 17100, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 32),
  -- Lanturn - Thunderbolt - Move Tutor
  (171, 17100, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 33),
  -- Pichu - Thunder Shock - Level 1
  (172, 17200, 84, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pichu - Charm - Level 1
  (172, 17200, 204, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pichu - Tail Whip - Level 6
  (172, 17200, 39, 4, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Pichu - Thunder Wave - Level 8
  (172, 17200, 86, 4, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Pichu - Sweet Kiss - Level 11
  (172, 17200, 186, 4, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Pichu - Headbutt - TM02
  (172, 17200, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 6),
  -- Pichu - Curse - TM03
  (172, 17200, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 7),
  -- Pichu - Rollout - TM04
  (172, 17200, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 8),
  -- Pichu - Toxic - TM06
  (172, 17200, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 9),
  -- Pichu - Zap Cannon - TM07
  (172, 17200, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 10),
  -- Pichu - Hidden Power - TM10
  (172, 17200, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 11),
  -- Pichu - Snore - TM13
  (172, 17200, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 12),
  -- Pichu - Protect - TM17
  (172, 17200, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 13),
  -- Pichu - Rain Dance - TM18
  (172, 17200, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 14),
  -- Pichu - Endure - TM20
  (172, 17200, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 15),
  -- Pichu - Frustration - TM21
  (172, 17200, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 16),
  -- Pichu - Iron Tail - TM23
  (172, 17200, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 17),
  -- Pichu - Thunder - TM25
  (172, 17200, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 18),
  -- Pichu - Return - TM27
  (172, 17200, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 19),
  -- Pichu - Mud-Slap - TM31
  (172, 17200, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 20),
  -- Pichu - Double Team - TM32
  (172, 17200, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 21),
  -- Pichu - Swagger - TM34
  (172, 17200, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 22),
  -- Pichu - Sleep Talk - TM35
  (172, 17200, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 23),
  -- Pichu - Swift - TM39
  (172, 17200, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 24),
  -- Pichu - Defense Curl - TM40
  (172, 17200, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 25),
  -- Pichu - Detect - TM43
  (172, 17200, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 26),
  -- Pichu - Rest - TM44
  (172, 17200, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 27),
  -- Pichu - Attract - TM45
  (172, 17200, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 28),
  -- Pichu - Flash - HM05
  (172, 17200, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 29),
  -- Pichu - Bide - Egg Move
  (172, 17200, 117, 4, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Pichu - Double Slap - Egg Move
  (172, 17200, 3, 4, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Pichu - Encore - Egg Move
  (172, 17200, 227, 4, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Pichu - Present - Egg Move
  (172, 17200, 217, 4, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Pichu - Reversal - Egg Move
  (172, 17200, 179, 4, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Pichu - Thunderbolt - Move Tutor
  (172, 17200, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 35),
  -- Cleffa - Pound - Level 1
  (173, 17300, 1, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cleffa - Charm - Level 1
  (173, 17300, 204, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cleffa - Encore - Level 4
  (173, 17300, 227, 4, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Cleffa - Sing - Level 8
  (173, 17300, 47, 4, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Cleffa - Sweet Kiss - Level 13
  (173, 17300, 186, 4, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cleffa - Headbutt - TM02
  (173, 17300, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 6),
  -- Cleffa - Curse - TM03
  (173, 17300, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 7),
  -- Cleffa - Rollout - TM04
  (173, 17300, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 8),
  -- Cleffa - Toxic - TM06
  (173, 17300, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 9),
  -- Cleffa - Zap Cannon - TM07
  (173, 17300, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 10),
  -- Cleffa - Psych Up - TM09
  (173, 17300, 244, 4, NULL, 2, NULL, NULL, 4002009, NULL, 11),
  -- Cleffa - Hidden Power - TM10
  (173, 17300, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 12),
  -- Cleffa - Sunny Day - TM11
  (173, 17300, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 13),
  -- Cleffa - Snore - TM13
  (173, 17300, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 14),
  -- Cleffa - Icy Wind - TM16
  (173, 17300, 196, 4, NULL, 2, NULL, NULL, 4002016, NULL, 15),
  -- Cleffa - Protect - TM17
  (173, 17300, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 16),
  -- Cleffa - Rain Dance - TM18
  (173, 17300, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 17),
  -- Cleffa - Endure - TM20
  (173, 17300, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 18),
  -- Cleffa - Frustration - TM21
  (173, 17300, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 19),
  -- Cleffa - Solar Beam - TM22
  (173, 17300, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 20),
  -- Cleffa - Iron Tail - TM23
  (173, 17300, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 21),
  -- Cleffa - Return - TM27
  (173, 17300, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 22),
  -- Cleffa - Psychic - TM29
  (173, 17300, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 23),
  -- Cleffa - Shadow Ball - TM30
  (173, 17300, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 24),
  -- Cleffa - Mud-Slap - TM31
  (173, 17300, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 25),
  -- Cleffa - Double Team - TM32
  (173, 17300, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 26),
  -- Cleffa - Swagger - TM34
  (173, 17300, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 27),
  -- Cleffa - Sleep Talk - TM35
  (173, 17300, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 28),
  -- Cleffa - Fire Blast - TM38
  (173, 17300, 126, 4, NULL, 2, NULL, NULL, 4002038, NULL, 29),
  -- Cleffa - Defense Curl - TM40
  (173, 17300, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 30),
  -- Cleffa - Dream Eater - TM42
  (173, 17300, 138, 4, NULL, 2, NULL, NULL, 4002042, NULL, 31),
  -- Cleffa - Detect - TM43
  (173, 17300, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 32),
  -- Cleffa - Rest - TM44
  (173, 17300, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 33),
  -- Cleffa - Attract - TM45
  (173, 17300, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 34),
  -- Cleffa - Nightmare - TM50
  (173, 17300, 171, 4, NULL, 2, NULL, NULL, 4002050, NULL, 35),
  -- Cleffa - Flash - HM05
  (173, 17300, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 36),
  -- Cleffa - Amnesia - Egg Move
  (173, 17300, 133, 4, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Cleffa - Belly Drum - Egg Move
  (173, 17300, 187, 4, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Cleffa - Metronome - Egg Move
  (173, 17300, 118, 4, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Cleffa - Mimic - Egg Move
  (173, 17300, 102, 4, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Cleffa - Present - Egg Move
  (173, 17300, 217, 4, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Cleffa - Splash - Egg Move
  (173, 17300, 150, 4, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cleffa - Flamethrower - Move Tutor
  (173, 17300, 53, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 43),
  -- Igglybuff - Sing - Level 1
  (174, 17400, 47, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Igglybuff - Charm - Level 1
  (174, 17400, 204, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Igglybuff - Defense Curl - Level 4
  (174, 17400, 111, 4, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Igglybuff - Pound - Level 9
  (174, 17400, 1, 4, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Igglybuff - Sweet Kiss - Level 14
  (174, 17400, 186, 4, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Igglybuff - Headbutt - TM02
  (174, 17400, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 6),
  -- Igglybuff - Curse - TM03
  (174, 17400, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 7),
  -- Igglybuff - Rollout - TM04
  (174, 17400, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 8),
  -- Igglybuff - Toxic - TM06
  (174, 17400, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 9),
  -- Igglybuff - Zap Cannon - TM07
  (174, 17400, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 10),
  -- Igglybuff - Psych Up - TM09
  (174, 17400, 244, 4, NULL, 2, NULL, NULL, 4002009, NULL, 11),
  -- Igglybuff - Hidden Power - TM10
  (174, 17400, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 12),
  -- Igglybuff - Sunny Day - TM11
  (174, 17400, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 13),
  -- Igglybuff - Snore - TM13
  (174, 17400, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 14),
  -- Igglybuff - Icy Wind - TM16
  (174, 17400, 196, 4, NULL, 2, NULL, NULL, 4002016, NULL, 15),
  -- Igglybuff - Protect - TM17
  (174, 17400, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 16),
  -- Igglybuff - Rain Dance - TM18
  (174, 17400, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 17),
  -- Igglybuff - Endure - TM20
  (174, 17400, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 18),
  -- Igglybuff - Frustration - TM21
  (174, 17400, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 19),
  -- Igglybuff - Solar Beam - TM22
  (174, 17400, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 20),
  -- Igglybuff - Return - TM27
  (174, 17400, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 21),
  -- Igglybuff - Psychic - TM29
  (174, 17400, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 22),
  -- Igglybuff - Shadow Ball - TM30
  (174, 17400, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 23),
  -- Igglybuff - Mud-Slap - TM31
  (174, 17400, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 24),
  -- Igglybuff - Double Team - TM32
  (174, 17400, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 25),
  -- Igglybuff - Swagger - TM34
  (174, 17400, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 26),
  -- Igglybuff - Sleep Talk - TM35
  (174, 17400, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 27),
  -- Igglybuff - Fire Blast - TM38
  (174, 17400, 126, 4, NULL, 2, NULL, NULL, 4002038, NULL, 28),
  -- Igglybuff - Defense Curl - TM40
  (174, 17400, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 29),
  -- Igglybuff - Dream Eater - TM42
  (174, 17400, 138, 4, NULL, 2, NULL, NULL, 4002042, NULL, 30),
  -- Igglybuff - Detect - TM43
  (174, 17400, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 31),
  -- Igglybuff - Rest - TM44
  (174, 17400, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 32),
  -- Igglybuff - Attract - TM45
  (174, 17400, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 33),
  -- Igglybuff - Nightmare - TM50
  (174, 17400, 171, 4, NULL, 2, NULL, NULL, 4002050, NULL, 34),
  -- Igglybuff - Flash - HM05
  (174, 17400, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 35),
  -- Igglybuff - Feint Attack - Egg Move
  (174, 17400, 185, 4, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Igglybuff - Perish Song - Egg Move
  (174, 17400, 195, 4, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Igglybuff - Present - Egg Move
  (174, 17400, 217, 4, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Igglybuff - Flamethrower - Move Tutor
  (174, 17400, 53, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 39),
  -- Togepi - Growl - Level 1
  (175, 17500, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togepi - Charm - Level 1
  (175, 17500, 204, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togepi - Metronome - Level 7
  (175, 17500, 118, 4, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Togepi - Sweet Kiss - Level 18
  (175, 17500, 186, 4, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Togepi - Encore - Level 25
  (175, 17500, 227, 4, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Togepi - Safeguard - Level 31
  (175, 17500, 219, 4, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Togepi - Double-Edge - Level 38
  (175, 17500, 38, 4, NULL, 1, 38, NULL, NULL, NULL, 7),
  -- Togepi - Headbutt - TM02
  (175, 17500, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 8),
  -- Togepi - Curse - TM03
  (175, 17500, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 9),
  -- Togepi - Rollout - TM04
  (175, 17500, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 10),
  -- Togepi - Toxic - TM06
  (175, 17500, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 11),
  -- Togepi - Zap Cannon - TM07
  (175, 17500, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 12),
  -- Togepi - Rock Smash - TM08
  (175, 17500, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 13),
  -- Togepi - Psych Up - TM09
  (175, 17500, 244, 4, NULL, 2, NULL, NULL, 4002009, NULL, 14),
  -- Togepi - Hidden Power - TM10
  (175, 17500, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 15),
  -- Togepi - Sunny Day - TM11
  (175, 17500, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 16),
  -- Togepi - Snore - TM13
  (175, 17500, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 17),
  -- Togepi - Protect - TM17
  (175, 17500, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 18),
  -- Togepi - Rain Dance - TM18
  (175, 17500, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 19),
  -- Togepi - Endure - TM20
  (175, 17500, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 20),
  -- Togepi - Frustration - TM21
  (175, 17500, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 21),
  -- Togepi - Solar Beam - TM22
  (175, 17500, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 22),
  -- Togepi - Return - TM27
  (175, 17500, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 23),
  -- Togepi - Psychic - TM29
  (175, 17500, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 24),
  -- Togepi - Shadow Ball - TM30
  (175, 17500, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 25),
  -- Togepi - Mud-Slap - TM31
  (175, 17500, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 26),
  -- Togepi - Double Team - TM32
  (175, 17500, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 27),
  -- Togepi - Swagger - TM34
  (175, 17500, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 28),
  -- Togepi - Sleep Talk - TM35
  (175, 17500, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 29),
  -- Togepi - Fire Blast - TM38
  (175, 17500, 126, 4, NULL, 2, NULL, NULL, 4002038, NULL, 30),
  -- Togepi - Swift - TM39
  (175, 17500, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 31),
  -- Togepi - Defense Curl - TM40
  (175, 17500, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 32),
  -- Togepi - Dream Eater - TM42
  (175, 17500, 138, 4, NULL, 2, NULL, NULL, 4002042, NULL, 33),
  -- Togepi - Detect - TM43
  (175, 17500, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 34),
  -- Togepi - Rest - TM44
  (175, 17500, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 35),
  -- Togepi - Attract - TM45
  (175, 17500, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 36),
  -- Togepi - Flash - HM05
  (175, 17500, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 37),
  -- Togepi - Foresight - Egg Move
  (175, 17500, 193, 4, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Togepi - Future Sight - Egg Move
  (175, 17500, 248, 4, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Togepi - Mirror Move - Egg Move
  (175, 17500, 119, 4, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Togepi - Peck - Egg Move
  (175, 17500, 64, 4, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Togepi - Present - Egg Move
  (175, 17500, 217, 4, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Togepi - Flamethrower - Move Tutor
  (175, 17500, 53, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 43),
  -- Togetic - Growl - Level 1
  (176, 17600, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togetic - Charm - Level 1
  (176, 17600, 204, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togetic - Metronome - Level 7
  (176, 17600, 118, 4, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Togetic - Sweet Kiss - Level 18
  (176, 17600, 186, 4, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Togetic - Encore - Level 25
  (176, 17600, 227, 4, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Togetic - Safeguard - Level 31
  (176, 17600, 219, 4, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Togetic - Double-Edge - Level 38
  (176, 17600, 38, 4, NULL, 1, 38, NULL, NULL, NULL, 7),
  -- Togetic - Headbutt - TM02
  (176, 17600, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 8),
  -- Togetic - Curse - TM03
  (176, 17600, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 9),
  -- Togetic - Rollout - TM04
  (176, 17600, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 10),
  -- Togetic - Toxic - TM06
  (176, 17600, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 11),
  -- Togetic - Zap Cannon - TM07
  (176, 17600, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 12),
  -- Togetic - Rock Smash - TM08
  (176, 17600, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 13),
  -- Togetic - Psych Up - TM09
  (176, 17600, 244, 4, NULL, 2, NULL, NULL, 4002009, NULL, 14),
  -- Togetic - Hidden Power - TM10
  (176, 17600, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 15),
  -- Togetic - Sunny Day - TM11
  (176, 17600, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 16),
  -- Togetic - Snore - TM13
  (176, 17600, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 17),
  -- Togetic - Hyper Beam - TM15
  (176, 17600, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 18),
  -- Togetic - Protect - TM17
  (176, 17600, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 19),
  -- Togetic - Rain Dance - TM18
  (176, 17600, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 20),
  -- Togetic - Endure - TM20
  (176, 17600, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 21),
  -- Togetic - Frustration - TM21
  (176, 17600, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 22),
  -- Togetic - Solar Beam - TM22
  (176, 17600, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 23),
  -- Togetic - Return - TM27
  (176, 17600, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 24),
  -- Togetic - Psychic - TM29
  (176, 17600, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 25),
  -- Togetic - Shadow Ball - TM30
  (176, 17600, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 26),
  -- Togetic - Mud-Slap - TM31
  (176, 17600, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 27),
  -- Togetic - Double Team - TM32
  (176, 17600, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 28),
  -- Togetic - Swagger - TM34
  (176, 17600, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 29),
  -- Togetic - Sleep Talk - TM35
  (176, 17600, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 30),
  -- Togetic - Fire Blast - TM38
  (176, 17600, 126, 4, NULL, 2, NULL, NULL, 4002038, NULL, 31),
  -- Togetic - Swift - TM39
  (176, 17600, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 32),
  -- Togetic - Defense Curl - TM40
  (176, 17600, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 33),
  -- Togetic - Dream Eater - TM42
  (176, 17600, 138, 4, NULL, 2, NULL, NULL, 4002042, NULL, 34),
  -- Togetic - Detect - TM43
  (176, 17600, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 35),
  -- Togetic - Rest - TM44
  (176, 17600, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 36),
  -- Togetic - Attract - TM45
  (176, 17600, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 37),
  -- Togetic - Steel Wing - TM47
  (176, 17600, 211, 4, NULL, 2, NULL, NULL, 4002047, NULL, 38),
  -- Togetic - Fly - HM02
  (176, 17600, 19, 4, NULL, 3, NULL, NULL, 4003002, NULL, 39),
  -- Togetic - Flash - HM05
  (176, 17600, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 40),
  -- Togetic - Flamethrower - Move Tutor
  (176, 17600, 53, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 41),
  -- Natu - Peck - Level 1
  (177, 17700, 64, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Natu - Leer - Level 1
  (177, 17700, 43, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Natu - Night Shade - Level 10
  (177, 17700, 101, 4, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Natu - Teleport - Level 20
  (177, 17700, 100, 4, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Natu - Future Sight - Level 30
  (177, 17700, 248, 4, NULL, 1, 30, NULL, NULL, NULL, 5),
  -- Natu - Confuse Ray - Level 40
  (177, 17700, 109, 4, NULL, 1, 40, NULL, NULL, NULL, 6),
  -- Natu - Psychic - Level 50
  (177, 17700, 94, 4, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Natu - Curse - TM03
  (177, 17700, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 8),
  -- Natu - Toxic - TM06
  (177, 17700, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 9),
  -- Natu - Psych Up - TM09
  (177, 17700, 244, 4, NULL, 2, NULL, NULL, 4002009, NULL, 10),
  -- Natu - Hidden Power - TM10
  (177, 17700, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 11),
  -- Natu - Sunny Day - TM11
  (177, 17700, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 12),
  -- Natu - Snore - TM13
  (177, 17700, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 13),
  -- Natu - Protect - TM17
  (177, 17700, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 14),
  -- Natu - Giga Drain - TM19
  (177, 17700, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 15),
  -- Natu - Endure - TM20
  (177, 17700, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 16),
  -- Natu - Frustration - TM21
  (177, 17700, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 17),
  -- Natu - Solar Beam - TM22
  (177, 17700, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 18),
  -- Natu - Return - TM27
  (177, 17700, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 19),
  -- Natu - Psychic - TM29
  (177, 17700, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 20),
  -- Natu - Double Team - TM32
  (177, 17700, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 21),
  -- Natu - Swagger - TM34
  (177, 17700, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 22),
  -- Natu - Sleep Talk - TM35
  (177, 17700, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 23),
  -- Natu - Swift - TM39
  (177, 17700, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 24),
  -- Natu - Dream Eater - TM42
  (177, 17700, 138, 4, NULL, 2, NULL, NULL, 4002042, NULL, 25),
  -- Natu - Detect - TM43
  (177, 17700, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 26),
  -- Natu - Rest - TM44
  (177, 17700, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 27),
  -- Natu - Attract - TM45
  (177, 17700, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 28),
  -- Natu - Thief - TM46
  (177, 17700, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 29),
  -- Natu - Nightmare - TM50
  (177, 17700, 171, 4, NULL, 2, NULL, NULL, 4002050, NULL, 30),
  -- Natu - Flash - HM05
  (177, 17700, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 31),
  -- Natu - Drill Peck - Egg Move
  (177, 17700, 65, 4, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Natu - Feint Attack - Egg Move
  (177, 17700, 185, 4, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Natu - Haze - Egg Move
  (177, 17700, 114, 4, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Natu - Quick Attack - Egg Move
  (177, 17700, 98, 4, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Natu - Steel Wing - Egg Move
  (177, 17700, 211, 4, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Xatu - Peck - Level 1
  (178, 17800, 64, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Xatu - Leer - Level 1
  (178, 17800, 43, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Xatu - Night Shade - Level 1
  (178, 17800, 101, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Xatu - Night Shade - Level 10
  (178, 17800, 101, 4, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Xatu - Teleport - Level 20
  (178, 17800, 100, 4, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Xatu - Future Sight - Level 35
  (178, 17800, 248, 4, NULL, 1, 35, NULL, NULL, NULL, 6),
  -- Xatu - Confuse Ray - Level 50
  (178, 17800, 109, 4, NULL, 1, 50, NULL, NULL, NULL, 7),
  -- Xatu - Psychic - Level 65
  (178, 17800, 94, 4, NULL, 1, 65, NULL, NULL, NULL, 8),
  -- Xatu - Curse - TM03
  (178, 17800, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 9),
  -- Xatu - Toxic - TM06
  (178, 17800, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 10),
  -- Xatu - Psych Up - TM09
  (178, 17800, 244, 4, NULL, 2, NULL, NULL, 4002009, NULL, 11),
  -- Xatu - Hidden Power - TM10
  (178, 17800, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 12),
  -- Xatu - Sunny Day - TM11
  (178, 17800, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 13),
  -- Xatu - Snore - TM13
  (178, 17800, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 14),
  -- Xatu - Hyper Beam - TM15
  (178, 17800, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 15),
  -- Xatu - Protect - TM17
  (178, 17800, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 16),
  -- Xatu - Giga Drain - TM19
  (178, 17800, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 17),
  -- Xatu - Endure - TM20
  (178, 17800, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 18),
  -- Xatu - Frustration - TM21
  (178, 17800, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 19),
  -- Xatu - Solar Beam - TM22
  (178, 17800, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 20),
  -- Xatu - Return - TM27
  (178, 17800, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 21),
  -- Xatu - Psychic - TM29
  (178, 17800, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 22),
  -- Xatu - Double Team - TM32
  (178, 17800, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 23),
  -- Xatu - Swagger - TM34
  (178, 17800, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 24),
  -- Xatu - Sleep Talk - TM35
  (178, 17800, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 25),
  -- Xatu - Swift - TM39
  (178, 17800, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 26),
  -- Xatu - Dream Eater - TM42
  (178, 17800, 138, 4, NULL, 2, NULL, NULL, 4002042, NULL, 27),
  -- Xatu - Detect - TM43
  (178, 17800, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 28),
  -- Xatu - Rest - TM44
  (178, 17800, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 29),
  -- Xatu - Attract - TM45
  (178, 17800, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 30),
  -- Xatu - Thief - TM46
  (178, 17800, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 31),
  -- Xatu - Nightmare - TM50
  (178, 17800, 171, 4, NULL, 2, NULL, NULL, 4002050, NULL, 32),
  -- Xatu - Fly - HM02
  (178, 17800, 19, 4, NULL, 3, NULL, NULL, 4003002, NULL, 33),
  -- Xatu - Flash - HM05
  (178, 17800, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 34),
  -- Mareep - Tackle - Level 1
  (179, 17900, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mareep - Growl - Level 1
  (179, 17900, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mareep - Thunder Shock - Level 9
  (179, 17900, 84, 4, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Mareep - Thunder Wave - Level 16
  (179, 17900, 86, 4, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Mareep - Cotton Spore - Level 23
  (179, 17900, 178, 4, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Mareep - Light Screen - Level 30
  (179, 17900, 113, 4, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Mareep - Thunder - Level 37
  (179, 17900, 87, 4, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Mareep - Headbutt - TM02
  (179, 17900, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 8),
  -- Mareep - Curse - TM03
  (179, 17900, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 9),
  -- Mareep - Toxic - TM06
  (179, 17900, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 10),
  -- Mareep - Zap Cannon - TM07
  (179, 17900, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 11),
  -- Mareep - Hidden Power - TM10
  (179, 17900, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 12),
  -- Mareep - Snore - TM13
  (179, 17900, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 13),
  -- Mareep - Protect - TM17
  (179, 17900, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 14),
  -- Mareep - Rain Dance - TM18
  (179, 17900, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 15),
  -- Mareep - Endure - TM20
  (179, 17900, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 16),
  -- Mareep - Frustration - TM21
  (179, 17900, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 17),
  -- Mareep - Iron Tail - TM23
  (179, 17900, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 18),
  -- Mareep - Thunder - TM25
  (179, 17900, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 19),
  -- Mareep - Return - TM27
  (179, 17900, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 20),
  -- Mareep - Double Team - TM32
  (179, 17900, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 21),
  -- Mareep - Swagger - TM34
  (179, 17900, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 22),
  -- Mareep - Sleep Talk - TM35
  (179, 17900, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 23),
  -- Mareep - Swift - TM39
  (179, 17900, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 24),
  -- Mareep - Defense Curl - TM40
  (179, 17900, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 25),
  -- Mareep - Rest - TM44
  (179, 17900, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 26),
  -- Mareep - Attract - TM45
  (179, 17900, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 27),
  -- Mareep - Flash - HM05
  (179, 17900, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 28),
  -- Mareep - Body Slam - Egg Move
  (179, 17900, 34, 4, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Mareep - Reflect - Egg Move
  (179, 17900, 115, 4, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Mareep - Safeguard - Egg Move
  (179, 17900, 219, 4, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Mareep - Screech - Egg Move
  (179, 17900, 103, 4, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Mareep - Take Down - Egg Move
  (179, 17900, 36, 4, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Mareep - Thunderbolt - Egg Move
  (179, 17900, 85, 4, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Mareep - Thunderbolt - Move Tutor
  (179, 17900, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 35),
  -- Flaaffy - Tackle - Level 1
  (180, 18000, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flaaffy - Growl - Level 1
  (180, 18000, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flaaffy - Thunder Shock - Level 1
  (180, 18000, 84, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flaaffy - Thunder Shock - Level 9
  (180, 18000, 84, 4, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Flaaffy - Thunder Wave - Level 18
  (180, 18000, 86, 4, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Flaaffy - Cotton Spore - Level 27
  (180, 18000, 178, 4, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Flaaffy - Light Screen - Level 36
  (180, 18000, 113, 4, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Flaaffy - Thunder - Level 45
  (180, 18000, 87, 4, NULL, 1, 45, NULL, NULL, NULL, 8),
  -- Flaaffy - Dynamic Punch - TM01
  (180, 18000, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 9),
  -- Flaaffy - Headbutt - TM02
  (180, 18000, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 10),
  -- Flaaffy - Curse - TM03
  (180, 18000, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 11),
  -- Flaaffy - Toxic - TM06
  (180, 18000, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 12),
  -- Flaaffy - Zap Cannon - TM07
  (180, 18000, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 13),
  -- Flaaffy - Rock Smash - TM08
  (180, 18000, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 14),
  -- Flaaffy - Hidden Power - TM10
  (180, 18000, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 15),
  -- Flaaffy - Snore - TM13
  (180, 18000, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 16),
  -- Flaaffy - Protect - TM17
  (180, 18000, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 17),
  -- Flaaffy - Rain Dance - TM18
  (180, 18000, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 18),
  -- Flaaffy - Endure - TM20
  (180, 18000, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 19),
  -- Flaaffy - Frustration - TM21
  (180, 18000, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 20),
  -- Flaaffy - Iron Tail - TM23
  (180, 18000, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 21),
  -- Flaaffy - Thunder - TM25
  (180, 18000, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 22),
  -- Flaaffy - Return - TM27
  (180, 18000, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 23),
  -- Flaaffy - Double Team - TM32
  (180, 18000, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 24),
  -- Flaaffy - Swagger - TM34
  (180, 18000, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 25),
  -- Flaaffy - Sleep Talk - TM35
  (180, 18000, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 26),
  -- Flaaffy - Swift - TM39
  (180, 18000, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 27),
  -- Flaaffy - Defense Curl - TM40
  (180, 18000, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 28),
  -- Flaaffy - Thunder Punch - TM41
  (180, 18000, 9, 4, NULL, 2, NULL, NULL, 4002041, NULL, 29),
  -- Flaaffy - Rest - TM44
  (180, 18000, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 30),
  -- Flaaffy - Attract - TM45
  (180, 18000, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 31),
  -- Flaaffy - Fire Punch - TM48
  (180, 18000, 7, 4, NULL, 2, NULL, NULL, 4002048, NULL, 32),
  -- Flaaffy - Strength - HM04
  (180, 18000, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 33),
  -- Flaaffy - Flash - HM05
  (180, 18000, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 34),
  -- Flaaffy - Thunderbolt - Move Tutor
  (180, 18000, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 35),
  -- Ampharos - Tackle - Level 1
  (181, 18100, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ampharos - Growl - Level 1
  (181, 18100, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ampharos - Thunder Shock - Level 1
  (181, 18100, 84, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ampharos - Thunder Wave - Level 1
  (181, 18100, 86, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ampharos - Thunder Shock - Level 9
  (181, 18100, 84, 4, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Ampharos - Thunder Wave - Level 18
  (181, 18100, 86, 4, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Ampharos - Cotton Spore - Level 27
  (181, 18100, 178, 4, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Ampharos - Thunder Punch - Level 30
  (181, 18100, 9, 4, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Ampharos - Light Screen - Level 42
  (181, 18100, 113, 4, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Ampharos - Thunder - Level 57
  (181, 18100, 87, 4, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Ampharos - Dynamic Punch - TM01
  (181, 18100, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 11),
  -- Ampharos - Headbutt - TM02
  (181, 18100, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 12),
  -- Ampharos - Curse - TM03
  (181, 18100, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 13),
  -- Ampharos - Toxic - TM06
  (181, 18100, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 14),
  -- Ampharos - Zap Cannon - TM07
  (181, 18100, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 15),
  -- Ampharos - Rock Smash - TM08
  (181, 18100, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 16),
  -- Ampharos - Hidden Power - TM10
  (181, 18100, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 17),
  -- Ampharos - Snore - TM13
  (181, 18100, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 18),
  -- Ampharos - Hyper Beam - TM15
  (181, 18100, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 19),
  -- Ampharos - Protect - TM17
  (181, 18100, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 20),
  -- Ampharos - Rain Dance - TM18
  (181, 18100, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 21),
  -- Ampharos - Endure - TM20
  (181, 18100, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 22),
  -- Ampharos - Frustration - TM21
  (181, 18100, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 23),
  -- Ampharos - Iron Tail - TM23
  (181, 18100, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 24),
  -- Ampharos - Thunder - TM25
  (181, 18100, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 25),
  -- Ampharos - Return - TM27
  (181, 18100, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 26),
  -- Ampharos - Double Team - TM32
  (181, 18100, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 27),
  -- Ampharos - Swagger - TM34
  (181, 18100, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 28),
  -- Ampharos - Sleep Talk - TM35
  (181, 18100, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 29),
  -- Ampharos - Swift - TM39
  (181, 18100, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 30),
  -- Ampharos - Defense Curl - TM40
  (181, 18100, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 31),
  -- Ampharos - Thunder Punch - TM41
  (181, 18100, 9, 4, NULL, 2, NULL, NULL, 4002041, NULL, 32),
  -- Ampharos - Rest - TM44
  (181, 18100, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 33),
  -- Ampharos - Attract - TM45
  (181, 18100, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 34),
  -- Ampharos - Fire Punch - TM48
  (181, 18100, 7, 4, NULL, 2, NULL, NULL, 4002048, NULL, 35),
  -- Ampharos - Strength - HM04
  (181, 18100, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 36),
  -- Ampharos - Flash - HM05
  (181, 18100, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 37),
  -- Ampharos - Thunderbolt - Move Tutor
  (181, 18100, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 38),
  -- Bellossom - Absorb - Level 1
  (182, 18200, 71, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bellossom - Sweet Scent - Level 1
  (182, 18200, 230, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bellossom - Stun Spore - Level 1
  (182, 18200, 78, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bellossom - Petal Dance - Level 1
  (182, 18200, 80, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bellossom - Solar Beam - Level 55
  (182, 18200, 76, 4, NULL, 1, 55, NULL, NULL, NULL, 5),
  -- Bellossom - Curse - TM03
  (182, 18200, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 6),
  -- Bellossom - Toxic - TM06
  (182, 18200, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 7),
  -- Bellossom - Hidden Power - TM10
  (182, 18200, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 8),
  -- Bellossom - Sunny Day - TM11
  (182, 18200, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 9),
  -- Bellossom - Sweet Scent - TM12
  (182, 18200, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 10),
  -- Bellossom - Snore - TM13
  (182, 18200, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 11),
  -- Bellossom - Hyper Beam - TM15
  (182, 18200, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 12),
  -- Bellossom - Protect - TM17
  (182, 18200, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 13),
  -- Bellossom - Giga Drain - TM19
  (182, 18200, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 14),
  -- Bellossom - Endure - TM20
  (182, 18200, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 15),
  -- Bellossom - Frustration - TM21
  (182, 18200, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 16),
  -- Bellossom - Solar Beam - TM22
  (182, 18200, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 17),
  -- Bellossom - Return - TM27
  (182, 18200, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 18),
  -- Bellossom - Double Team - TM32
  (182, 18200, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 19),
  -- Bellossom - Swagger - TM34
  (182, 18200, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 20),
  -- Bellossom - Sleep Talk - TM35
  (182, 18200, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 21),
  -- Bellossom - Rest - TM44
  (182, 18200, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 22),
  -- Bellossom - Attract - TM45
  (182, 18200, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 23),
  -- Bellossom - Cut - HM01
  (182, 18200, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 24),
  -- Bellossom - Flash - HM05
  (182, 18200, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 25),
  -- Marill - Tackle - Level 1
  (183, 18300, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marill - Defense Curl - Level 3
  (183, 18300, 111, 4, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Marill - Tail Whip - Level 6
  (183, 18300, 39, 4, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Marill - Water Gun - Level 10
  (183, 18300, 55, 4, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Marill - Rollout - Level 15
  (183, 18300, 205, 4, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Marill - Bubble Beam - Level 21
  (183, 18300, 61, 4, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Marill - Double-Edge - Level 28
  (183, 18300, 38, 4, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Marill - Rain Dance - Level 36
  (183, 18300, 240, 4, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Marill - Dynamic Punch - TM01
  (183, 18300, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 9),
  -- Marill - Headbutt - TM02
  (183, 18300, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 10),
  -- Marill - Curse - TM03
  (183, 18300, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 11),
  -- Marill - Rollout - TM04
  (183, 18300, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 12),
  -- Marill - Toxic - TM06
  (183, 18300, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 13),
  -- Marill - Hidden Power - TM10
  (183, 18300, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 14),
  -- Marill - Snore - TM13
  (183, 18300, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 15),
  -- Marill - Blizzard - TM14
  (183, 18300, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 16),
  -- Marill - Icy Wind - TM16
  (183, 18300, 196, 4, NULL, 2, NULL, NULL, 4002016, NULL, 17),
  -- Marill - Protect - TM17
  (183, 18300, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 18),
  -- Marill - Rain Dance - TM18
  (183, 18300, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 19),
  -- Marill - Endure - TM20
  (183, 18300, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 20),
  -- Marill - Frustration - TM21
  (183, 18300, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 21),
  -- Marill - Iron Tail - TM23
  (183, 18300, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 22),
  -- Marill - Return - TM27
  (183, 18300, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 23),
  -- Marill - Mud-Slap - TM31
  (183, 18300, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 24),
  -- Marill - Double Team - TM32
  (183, 18300, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 25),
  -- Marill - Ice Punch - TM33
  (183, 18300, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 26),
  -- Marill - Swagger - TM34
  (183, 18300, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 27),
  -- Marill - Sleep Talk - TM35
  (183, 18300, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 28),
  -- Marill - Swift - TM39
  (183, 18300, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 29),
  -- Marill - Defense Curl - TM40
  (183, 18300, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 30),
  -- Marill - Rest - TM44
  (183, 18300, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 31),
  -- Marill - Attract - TM45
  (183, 18300, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 32),
  -- Marill - Surf - HM03
  (183, 18300, 57, 4, NULL, 3, NULL, NULL, 4003003, NULL, 33),
  -- Marill - Whirlpool - HM06
  (183, 18300, 250, 4, NULL, 3, NULL, NULL, 4003006, NULL, 34),
  -- Marill - Waterfall - HM07
  (183, 18300, 127, 4, NULL, 3, NULL, NULL, 4003007, NULL, 35),
  -- Marill - Amnesia - Egg Move
  (183, 18300, 133, 4, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Marill - Belly Drum - Egg Move
  (183, 18300, 187, 4, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Marill - Foresight - Egg Move
  (183, 18300, 193, 4, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Marill - Future Sight - Egg Move
  (183, 18300, 248, 4, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Marill - Light Screen - Egg Move
  (183, 18300, 113, 4, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Marill - Perish Song - Egg Move
  (183, 18300, 195, 4, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Marill - Present - Egg Move
  (183, 18300, 217, 4, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Marill - Supersonic - Egg Move
  (183, 18300, 48, 4, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Marill - Ice Beam - Move Tutor
  (183, 18300, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 44),
  -- Azumarill - Tackle - Level 1
  (184, 18400, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azumarill - Defense Curl - Level 1
  (184, 18400, 111, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Azumarill - Tail Whip - Level 1
  (184, 18400, 39, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Azumarill - Water Gun - Level 1
  (184, 18400, 55, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Azumarill - Defense Curl - Level 3
  (184, 18400, 111, 4, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Azumarill - Tail Whip - Level 6
  (184, 18400, 39, 4, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Azumarill - Water Gun - Level 10
  (184, 18400, 55, 4, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Azumarill - Rollout - Level 15
  (184, 18400, 205, 4, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Azumarill - Bubble Beam - Level 25
  (184, 18400, 61, 4, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Azumarill - Double-Edge - Level 36
  (184, 18400, 38, 4, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Azumarill - Rain Dance - Level 48
  (184, 18400, 240, 4, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Azumarill - Dynamic Punch - TM01
  (184, 18400, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 12),
  -- Azumarill - Headbutt - TM02
  (184, 18400, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 13),
  -- Azumarill - Curse - TM03
  (184, 18400, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 14),
  -- Azumarill - Rollout - TM04
  (184, 18400, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 15),
  -- Azumarill - Toxic - TM06
  (184, 18400, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 16),
  -- Azumarill - Rock Smash - TM08
  (184, 18400, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 17),
  -- Azumarill - Hidden Power - TM10
  (184, 18400, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 18),
  -- Azumarill - Snore - TM13
  (184, 18400, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 19),
  -- Azumarill - Blizzard - TM14
  (184, 18400, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 20),
  -- Azumarill - Hyper Beam - TM15
  (184, 18400, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 21),
  -- Azumarill - Icy Wind - TM16
  (184, 18400, 196, 4, NULL, 2, NULL, NULL, 4002016, NULL, 22),
  -- Azumarill - Protect - TM17
  (184, 18400, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 23),
  -- Azumarill - Rain Dance - TM18
  (184, 18400, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 24),
  -- Azumarill - Endure - TM20
  (184, 18400, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 25),
  -- Azumarill - Frustration - TM21
  (184, 18400, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 26),
  -- Azumarill - Iron Tail - TM23
  (184, 18400, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 27),
  -- Azumarill - Return - TM27
  (184, 18400, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 28),
  -- Azumarill - Mud-Slap - TM31
  (184, 18400, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 29),
  -- Azumarill - Double Team - TM32
  (184, 18400, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 30),
  -- Azumarill - Ice Punch - TM33
  (184, 18400, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 31),
  -- Azumarill - Swagger - TM34
  (184, 18400, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 32),
  -- Azumarill - Sleep Talk - TM35
  (184, 18400, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 33),
  -- Azumarill - Swift - TM39
  (184, 18400, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 34),
  -- Azumarill - Defense Curl - TM40
  (184, 18400, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 35),
  -- Azumarill - Rest - TM44
  (184, 18400, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 36),
  -- Azumarill - Attract - TM45
  (184, 18400, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 37),
  -- Azumarill - Surf - HM03
  (184, 18400, 57, 4, NULL, 3, NULL, NULL, 4003003, NULL, 38),
  -- Azumarill - Strength - HM04
  (184, 18400, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 39),
  -- Azumarill - Whirlpool - HM06
  (184, 18400, 250, 4, NULL, 3, NULL, NULL, 4003006, NULL, 40),
  -- Azumarill - Waterfall - HM07
  (184, 18400, 127, 4, NULL, 3, NULL, NULL, 4003007, NULL, 41),
  -- Azumarill - Ice Beam - Move Tutor
  (184, 18400, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 42),
  -- Sudowoodo - Rock Throw - Level 1
  (185, 18500, 88, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sudowoodo - Mimic - Level 1
  (185, 18500, 102, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sudowoodo - Flail - Level 10
  (185, 18500, 175, 4, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Sudowoodo - Low Kick - Level 19
  (185, 18500, 67, 4, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Sudowoodo - Rock Slide - Level 28
  (185, 18500, 157, 4, NULL, 1, 28, NULL, NULL, NULL, 5),
  -- Sudowoodo - Feint Attack - Level 37
  (185, 18500, 185, 4, NULL, 1, 37, NULL, NULL, NULL, 6),
  -- Sudowoodo - Slam - Level 46
  (185, 18500, 21, 4, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Sudowoodo - Dynamic Punch - TM01
  (185, 18500, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 8),
  -- Sudowoodo - Headbutt - TM02
  (185, 18500, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 9),
  -- Sudowoodo - Curse - TM03
  (185, 18500, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 10),
  -- Sudowoodo - Rollout - TM04
  (185, 18500, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 11),
  -- Sudowoodo - Toxic - TM06
  (185, 18500, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 12),
  -- Sudowoodo - Rock Smash - TM08
  (185, 18500, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 13),
  -- Sudowoodo - Psych Up - TM09
  (185, 18500, 244, 4, NULL, 2, NULL, NULL, 4002009, NULL, 14),
  -- Sudowoodo - Hidden Power - TM10
  (185, 18500, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 15),
  -- Sudowoodo - Sunny Day - TM11
  (185, 18500, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 16),
  -- Sudowoodo - Snore - TM13
  (185, 18500, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 17),
  -- Sudowoodo - Protect - TM17
  (185, 18500, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 18),
  -- Sudowoodo - Endure - TM20
  (185, 18500, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 19),
  -- Sudowoodo - Frustration - TM21
  (185, 18500, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 20),
  -- Sudowoodo - Earthquake - TM26
  (185, 18500, 89, 4, NULL, 2, NULL, NULL, 4002026, NULL, 21),
  -- Sudowoodo - Return - TM27
  (185, 18500, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 22),
  -- Sudowoodo - Dig - TM28
  (185, 18500, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 23),
  -- Sudowoodo - Mud-Slap - TM31
  (185, 18500, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 24),
  -- Sudowoodo - Double Team - TM32
  (185, 18500, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 25),
  -- Sudowoodo - Ice Punch - TM33
  (185, 18500, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 26),
  -- Sudowoodo - Swagger - TM34
  (185, 18500, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 27),
  -- Sudowoodo - Sleep Talk - TM35
  (185, 18500, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 28),
  -- Sudowoodo - Sandstorm - TM37
  (185, 18500, 201, 4, NULL, 2, NULL, NULL, 4002037, NULL, 29),
  -- Sudowoodo - Defense Curl - TM40
  (185, 18500, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 30),
  -- Sudowoodo - Thunder Punch - TM41
  (185, 18500, 9, 4, NULL, 2, NULL, NULL, 4002041, NULL, 31),
  -- Sudowoodo - Rest - TM44
  (185, 18500, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 32),
  -- Sudowoodo - Attract - TM45
  (185, 18500, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 33),
  -- Sudowoodo - Thief - TM46
  (185, 18500, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 34),
  -- Sudowoodo - Fire Punch - TM48
  (185, 18500, 7, 4, NULL, 2, NULL, NULL, 4002048, NULL, 35),
  -- Sudowoodo - Strength - HM04
  (185, 18500, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 36),
  -- Sudowoodo - Self-Destruct - Egg Move
  (185, 18500, 120, 4, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Politoed - Water Gun - Level 1
  (186, 18600, 55, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Politoed - Hypnosis - Level 1
  (186, 18600, 95, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Politoed - Double Slap - Level 1
  (186, 18600, 3, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Politoed - Perish Song - Level 1
  (186, 18600, 195, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Politoed - Perish Song - Level 35
  (186, 18600, 195, 4, NULL, 1, 35, NULL, NULL, NULL, 5),
  -- Politoed - Swagger - Level 51
  (186, 18600, 207, 4, NULL, 1, 51, NULL, NULL, NULL, 6),
  -- Politoed - Dynamic Punch - TM01
  (186, 18600, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 7),
  -- Politoed - Headbutt - TM02
  (186, 18600, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 8),
  -- Politoed - Curse - TM03
  (186, 18600, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 9),
  -- Politoed - Toxic - TM06
  (186, 18600, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 10),
  -- Politoed - Rock Smash - TM08
  (186, 18600, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 11),
  -- Politoed - Hidden Power - TM10
  (186, 18600, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 12),
  -- Politoed - Snore - TM13
  (186, 18600, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 13),
  -- Politoed - Blizzard - TM14
  (186, 18600, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 14),
  -- Politoed - Hyper Beam - TM15
  (186, 18600, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 15),
  -- Politoed - Icy Wind - TM16
  (186, 18600, 196, 4, NULL, 2, NULL, NULL, 4002016, NULL, 16),
  -- Politoed - Protect - TM17
  (186, 18600, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 17),
  -- Politoed - Rain Dance - TM18
  (186, 18600, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 18),
  -- Politoed - Endure - TM20
  (186, 18600, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 19),
  -- Politoed - Frustration - TM21
  (186, 18600, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 20),
  -- Politoed - Earthquake - TM26
  (186, 18600, 89, 4, NULL, 2, NULL, NULL, 4002026, NULL, 21),
  -- Politoed - Return - TM27
  (186, 18600, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 22),
  -- Politoed - Psychic - TM29
  (186, 18600, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 23),
  -- Politoed - Mud-Slap - TM31
  (186, 18600, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 24),
  -- Politoed - Double Team - TM32
  (186, 18600, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 25),
  -- Politoed - Ice Punch - TM33
  (186, 18600, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 26),
  -- Politoed - Swagger - TM34
  (186, 18600, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 27),
  -- Politoed - Sleep Talk - TM35
  (186, 18600, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 28),
  -- Politoed - Defense Curl - TM40
  (186, 18600, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 29),
  -- Politoed - Detect - TM43
  (186, 18600, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 30),
  -- Politoed - Rest - TM44
  (186, 18600, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 31),
  -- Politoed - Attract - TM45
  (186, 18600, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 32),
  -- Politoed - Thief - TM46
  (186, 18600, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 33),
  -- Politoed - Surf - HM03
  (186, 18600, 57, 4, NULL, 3, NULL, NULL, 4003003, NULL, 34),
  -- Politoed - Strength - HM04
  (186, 18600, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 35),
  -- Politoed - Whirlpool - HM06
  (186, 18600, 250, 4, NULL, 3, NULL, NULL, 4003006, NULL, 36),
  -- Politoed - Waterfall - HM07
  (186, 18600, 127, 4, NULL, 3, NULL, NULL, 4003007, NULL, 37),
  -- Politoed - Ice Beam - Move Tutor
  (186, 18600, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 38),
  -- Hoppip - Splash - Level 1
  (187, 18700, 150, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoppip - Synthesis - Level 5
  (187, 18700, 235, 4, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Hoppip - Tail Whip - Level 5
  (187, 18700, 39, 4, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Hoppip - Tackle - Level 10
  (187, 18700, 33, 4, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Hoppip - Poison Powder - Level 13
  (187, 18700, 77, 4, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Hoppip - Stun Spore - Level 15
  (187, 18700, 78, 4, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Hoppip - Sleep Powder - Level 17
  (187, 18700, 79, 4, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Hoppip - Leech Seed - Level 20
  (187, 18700, 73, 4, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Hoppip - Cotton Spore - Level 25
  (187, 18700, 178, 4, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Hoppip - Mega Drain - Level 30
  (187, 18700, 72, 4, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Hoppip - Headbutt - TM02
  (187, 18700, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 11),
  -- Hoppip - Curse - TM03
  (187, 18700, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 12),
  -- Hoppip - Toxic - TM06
  (187, 18700, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 13),
  -- Hoppip - Hidden Power - TM10
  (187, 18700, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 14),
  -- Hoppip - Sunny Day - TM11
  (187, 18700, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 15),
  -- Hoppip - Sweet Scent - TM12
  (187, 18700, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 16),
  -- Hoppip - Snore - TM13
  (187, 18700, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 17),
  -- Hoppip - Protect - TM17
  (187, 18700, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 18),
  -- Hoppip - Giga Drain - TM19
  (187, 18700, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 19),
  -- Hoppip - Endure - TM20
  (187, 18700, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 20),
  -- Hoppip - Frustration - TM21
  (187, 18700, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 21),
  -- Hoppip - Solar Beam - TM22
  (187, 18700, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 22),
  -- Hoppip - Return - TM27
  (187, 18700, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 23),
  -- Hoppip - Double Team - TM32
  (187, 18700, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 24),
  -- Hoppip - Swagger - TM34
  (187, 18700, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 25),
  -- Hoppip - Sleep Talk - TM35
  (187, 18700, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 26),
  -- Hoppip - Defense Curl - TM40
  (187, 18700, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 27),
  -- Hoppip - Rest - TM44
  (187, 18700, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 28),
  -- Hoppip - Attract - TM45
  (187, 18700, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 29),
  -- Hoppip - Flash - HM05
  (187, 18700, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 30),
  -- Hoppip - Amnesia - Egg Move
  (187, 18700, 133, 4, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Hoppip - Confusion - Egg Move
  (187, 18700, 93, 4, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Hoppip - Double-Edge - Egg Move
  (187, 18700, 38, 4, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Hoppip - Encore - Egg Move
  (187, 18700, 227, 4, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Hoppip - Growl - Egg Move
  (187, 18700, 45, 4, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Hoppip - Pay Day - Egg Move
  (187, 18700, 6, 4, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Hoppip - Reflect - Egg Move
  (187, 18700, 115, 4, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Skiploom - Splash - Level 1
  (188, 18800, 150, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skiploom - Synthesis - Level 1
  (188, 18800, 235, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skiploom - Tail Whip - Level 1
  (188, 18800, 39, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skiploom - Tackle - Level 1
  (188, 18800, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Skiploom - Synthesis - Level 5
  (188, 18800, 235, 4, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Skiploom - Tail Whip - Level 5
  (188, 18800, 39, 4, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Skiploom - Tackle - Level 10
  (188, 18800, 33, 4, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Skiploom - Poison Powder - Level 13
  (188, 18800, 77, 4, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Skiploom - Stun Spore - Level 15
  (188, 18800, 78, 4, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Skiploom - Sleep Powder - Level 17
  (188, 18800, 79, 4, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Skiploom - Leech Seed - Level 22
  (188, 18800, 73, 4, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Skiploom - Cotton Spore - Level 29
  (188, 18800, 178, 4, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Skiploom - Mega Drain - Level 36
  (188, 18800, 72, 4, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Skiploom - Headbutt - TM02
  (188, 18800, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 14),
  -- Skiploom - Curse - TM03
  (188, 18800, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 15),
  -- Skiploom - Toxic - TM06
  (188, 18800, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 16),
  -- Skiploom - Hidden Power - TM10
  (188, 18800, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 17),
  -- Skiploom - Sunny Day - TM11
  (188, 18800, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 18),
  -- Skiploom - Sweet Scent - TM12
  (188, 18800, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 19),
  -- Skiploom - Snore - TM13
  (188, 18800, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 20),
  -- Skiploom - Protect - TM17
  (188, 18800, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 21),
  -- Skiploom - Giga Drain - TM19
  (188, 18800, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 22),
  -- Skiploom - Endure - TM20
  (188, 18800, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 23),
  -- Skiploom - Frustration - TM21
  (188, 18800, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 24),
  -- Skiploom - Solar Beam - TM22
  (188, 18800, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 25),
  -- Skiploom - Return - TM27
  (188, 18800, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 26),
  -- Skiploom - Double Team - TM32
  (188, 18800, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 27),
  -- Skiploom - Swagger - TM34
  (188, 18800, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 28),
  -- Skiploom - Sleep Talk - TM35
  (188, 18800, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 29),
  -- Skiploom - Defense Curl - TM40
  (188, 18800, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 30),
  -- Skiploom - Rest - TM44
  (188, 18800, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 31),
  -- Skiploom - Attract - TM45
  (188, 18800, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 32),
  -- Skiploom - Flash - HM05
  (188, 18800, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 33),
  -- Jumpluff - Splash - Level 1
  (189, 18900, 150, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jumpluff - Synthesis - Level 1
  (189, 18900, 235, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jumpluff - Tail Whip - Level 1
  (189, 18900, 39, 4, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jumpluff - Tackle - Level 1
  (189, 18900, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jumpluff - Synthesis - Level 5
  (189, 18900, 235, 4, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Jumpluff - Tail Whip - Level 5
  (189, 18900, 39, 4, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Jumpluff - Tackle - Level 10
  (189, 18900, 33, 4, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Jumpluff - Poison Powder - Level 13
  (189, 18900, 77, 4, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Jumpluff - Stun Spore - Level 15
  (189, 18900, 78, 4, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Jumpluff - Sleep Powder - Level 17
  (189, 18900, 79, 4, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Jumpluff - Leech Seed - Level 22
  (189, 18900, 73, 4, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Jumpluff - Cotton Spore - Level 33
  (189, 18900, 178, 4, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Jumpluff - Mega Drain - Level 44
  (189, 18900, 72, 4, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Jumpluff - Headbutt - TM02
  (189, 18900, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 14),
  -- Jumpluff - Curse - TM03
  (189, 18900, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 15),
  -- Jumpluff - Toxic - TM06
  (189, 18900, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 16),
  -- Jumpluff - Hidden Power - TM10
  (189, 18900, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 17),
  -- Jumpluff - Sunny Day - TM11
  (189, 18900, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 18),
  -- Jumpluff - Sweet Scent - TM12
  (189, 18900, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 19),
  -- Jumpluff - Snore - TM13
  (189, 18900, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 20),
  -- Jumpluff - Hyper Beam - TM15
  (189, 18900, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 21),
  -- Jumpluff - Protect - TM17
  (189, 18900, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 22),
  -- Jumpluff - Giga Drain - TM19
  (189, 18900, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 23),
  -- Jumpluff - Endure - TM20
  (189, 18900, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 24),
  -- Jumpluff - Frustration - TM21
  (189, 18900, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 25),
  -- Jumpluff - Solar Beam - TM22
  (189, 18900, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 26),
  -- Jumpluff - Return - TM27
  (189, 18900, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 27),
  -- Jumpluff - Double Team - TM32
  (189, 18900, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 28),
  -- Jumpluff - Swagger - TM34
  (189, 18900, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 29),
  -- Jumpluff - Sleep Talk - TM35
  (189, 18900, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 30),
  -- Jumpluff - Defense Curl - TM40
  (189, 18900, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 31),
  -- Jumpluff - Rest - TM44
  (189, 18900, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 32),
  -- Jumpluff - Attract - TM45
  (189, 18900, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 33),
  -- Jumpluff - Flash - HM05
  (189, 18900, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 34),
  -- Aipom - Scratch - Level 1
  (190, 19000, 10, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aipom - Tail Whip - Level 1
  (190, 19000, 39, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aipom - Sand Attack - Level 6
  (190, 19000, 28, 4, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Aipom - Baton Pass - Level 12
  (190, 19000, 226, 4, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Aipom - Fury Swipes - Level 19
  (190, 19000, 154, 4, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Aipom - Swift - Level 27
  (190, 19000, 129, 4, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Aipom - Screech - Level 36
  (190, 19000, 103, 4, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Aipom - Agility - Level 46
  (190, 19000, 97, 4, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Aipom - Dynamic Punch - TM01
  (190, 19000, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 9),
  -- Aipom - Headbutt - TM02
  (190, 19000, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 10),
  -- Aipom - Curse - TM03
  (190, 19000, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 11),
  -- Aipom - Toxic - TM06
  (190, 19000, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 12),
  -- Aipom - Zap Cannon - TM07
  (190, 19000, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 13),
  -- Aipom - Rock Smash - TM08
  (190, 19000, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 14),
  -- Aipom - Hidden Power - TM10
  (190, 19000, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 15),
  -- Aipom - Sunny Day - TM11
  (190, 19000, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 16),
  -- Aipom - Snore - TM13
  (190, 19000, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 17),
  -- Aipom - Protect - TM17
  (190, 19000, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 18),
  -- Aipom - Endure - TM20
  (190, 19000, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 19),
  -- Aipom - Frustration - TM21
  (190, 19000, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 20),
  -- Aipom - Iron Tail - TM23
  (190, 19000, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 21),
  -- Aipom - Thunder - TM25
  (190, 19000, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 22),
  -- Aipom - Return - TM27
  (190, 19000, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 23),
  -- Aipom - Shadow Ball - TM30
  (190, 19000, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 24),
  -- Aipom - Mud-Slap - TM31
  (190, 19000, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 25),
  -- Aipom - Double Team - TM32
  (190, 19000, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 26),
  -- Aipom - Ice Punch - TM33
  (190, 19000, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 27),
  -- Aipom - Swagger - TM34
  (190, 19000, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 28),
  -- Aipom - Sleep Talk - TM35
  (190, 19000, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 29),
  -- Aipom - Swift - TM39
  (190, 19000, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 30),
  -- Aipom - Defense Curl - TM40
  (190, 19000, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 31),
  -- Aipom - Thunder Punch - TM41
  (190, 19000, 9, 4, NULL, 2, NULL, NULL, 4002041, NULL, 32),
  -- Aipom - Dream Eater - TM42
  (190, 19000, 138, 4, NULL, 2, NULL, NULL, 4002042, NULL, 33),
  -- Aipom - Detect - TM43
  (190, 19000, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 34),
  -- Aipom - Rest - TM44
  (190, 19000, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 35),
  -- Aipom - Attract - TM45
  (190, 19000, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 36),
  -- Aipom - Thief - TM46
  (190, 19000, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 37),
  -- Aipom - Fire Punch - TM48
  (190, 19000, 7, 4, NULL, 2, NULL, NULL, 4002048, NULL, 38),
  -- Aipom - Fury Cutter - TM49
  (190, 19000, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 39),
  -- Aipom - Nightmare - TM50
  (190, 19000, 171, 4, NULL, 2, NULL, NULL, 4002050, NULL, 40),
  -- Aipom - Cut - HM01
  (190, 19000, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 41),
  -- Aipom - Strength - HM04
  (190, 19000, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 42),
  -- Aipom - Agility - Egg Move
  (190, 19000, 97, 4, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Aipom - Beat Up - Egg Move
  (190, 19000, 251, 4, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Aipom - Counter - Egg Move
  (190, 19000, 68, 4, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Aipom - Double Slap - Egg Move
  (190, 19000, 3, 4, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Aipom - Pursuit - Egg Move
  (190, 19000, 228, 4, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Aipom - Screech - Egg Move
  (190, 19000, 103, 4, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Aipom - Slam - Egg Move
  (190, 19000, 21, 4, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Aipom - Spite - Egg Move
  (190, 19000, 180, 4, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Aipom - Thunderbolt - Move Tutor
  (190, 19000, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 51),
  -- Sunkern - Absorb - Level 1
  (191, 19100, 71, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sunkern - Growth - Level 4
  (191, 19100, 74, 4, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Sunkern - Mega Drain - Level 10
  (191, 19100, 72, 4, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Sunkern - Sunny Day - Level 19
  (191, 19100, 241, 4, NULL, 1, 19, NULL, NULL, NULL, 4),
  -- Sunkern - Synthesis - Level 31
  (191, 19100, 235, 4, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Sunkern - Giga Drain - Level 46
  (191, 19100, 202, 4, NULL, 1, 46, NULL, NULL, NULL, 6),
  -- Sunkern - Curse - TM03
  (191, 19100, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 7),
  -- Sunkern - Toxic - TM06
  (191, 19100, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 8),
  -- Sunkern - Hidden Power - TM10
  (191, 19100, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 9),
  -- Sunkern - Sunny Day - TM11
  (191, 19100, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 10),
  -- Sunkern - Sweet Scent - TM12
  (191, 19100, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 11),
  -- Sunkern - Snore - TM13
  (191, 19100, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 12),
  -- Sunkern - Protect - TM17
  (191, 19100, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 13),
  -- Sunkern - Giga Drain - TM19
  (191, 19100, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 14),
  -- Sunkern - Endure - TM20
  (191, 19100, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 15),
  -- Sunkern - Frustration - TM21
  (191, 19100, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 16),
  -- Sunkern - Solar Beam - TM22
  (191, 19100, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 17),
  -- Sunkern - Return - TM27
  (191, 19100, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 18),
  -- Sunkern - Double Team - TM32
  (191, 19100, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 19),
  -- Sunkern - Swagger - TM34
  (191, 19100, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 20),
  -- Sunkern - Sleep Talk - TM35
  (191, 19100, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 21),
  -- Sunkern - Sludge Bomb - TM36
  (191, 19100, 188, 4, NULL, 2, NULL, NULL, 4002036, NULL, 22),
  -- Sunkern - Rest - TM44
  (191, 19100, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 23),
  -- Sunkern - Attract - TM45
  (191, 19100, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 24),
  -- Sunkern - Cut - HM01
  (191, 19100, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 25),
  -- Sunkern - Flash - HM05
  (191, 19100, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 26),
  -- Sunflora - Absorb - Level 1
  (192, 19200, 71, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sunflora - Pound - Level 1
  (192, 19200, 1, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sunflora - Growth - Level 4
  (192, 19200, 74, 4, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Sunflora - Razor Leaf - Level 10
  (192, 19200, 75, 4, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Sunflora - Sunny Day - Level 19
  (192, 19200, 241, 4, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Sunflora - Petal Dance - Level 31
  (192, 19200, 80, 4, NULL, 1, 31, NULL, NULL, NULL, 6),
  -- Sunflora - Solar Beam - Level 46
  (192, 19200, 76, 4, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Sunflora - Curse - TM03
  (192, 19200, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 8),
  -- Sunflora - Toxic - TM06
  (192, 19200, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 9),
  -- Sunflora - Hidden Power - TM10
  (192, 19200, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 10),
  -- Sunflora - Sunny Day - TM11
  (192, 19200, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 11),
  -- Sunflora - Sweet Scent - TM12
  (192, 19200, 230, 4, NULL, 2, NULL, NULL, 4002012, NULL, 12),
  -- Sunflora - Snore - TM13
  (192, 19200, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 13),
  -- Sunflora - Hyper Beam - TM15
  (192, 19200, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 14),
  -- Sunflora - Protect - TM17
  (192, 19200, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 15),
  -- Sunflora - Giga Drain - TM19
  (192, 19200, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 16),
  -- Sunflora - Endure - TM20
  (192, 19200, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 17),
  -- Sunflora - Frustration - TM21
  (192, 19200, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 18),
  -- Sunflora - Solar Beam - TM22
  (192, 19200, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 19),
  -- Sunflora - Return - TM27
  (192, 19200, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 20),
  -- Sunflora - Double Team - TM32
  (192, 19200, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 21),
  -- Sunflora - Swagger - TM34
  (192, 19200, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 22),
  -- Sunflora - Sleep Talk - TM35
  (192, 19200, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 23),
  -- Sunflora - Sludge Bomb - TM36
  (192, 19200, 188, 4, NULL, 2, NULL, NULL, 4002036, NULL, 24),
  -- Sunflora - Rest - TM44
  (192, 19200, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 25),
  -- Sunflora - Attract - TM45
  (192, 19200, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 26),
  -- Sunflora - Cut - HM01
  (192, 19200, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 27),
  -- Sunflora - Flash - HM05
  (192, 19200, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 28),
  -- Yanma - Tackle - Level 1
  (193, 19300, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yanma - Foresight - Level 1
  (193, 19300, 193, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yanma - Quick Attack - Level 7
  (193, 19300, 98, 4, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Yanma - Double Team - Level 13
  (193, 19300, 104, 4, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Yanma - Sonic Boom - Level 19
  (193, 19300, 49, 4, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Yanma - Detect - Level 25
  (193, 19300, 197, 4, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Yanma - Supersonic - Level 31
  (193, 19300, 48, 4, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Yanma - Wing Attack - Level 37
  (193, 19300, 17, 4, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Yanma - Screech - Level 43
  (193, 19300, 103, 4, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Yanma - Headbutt - TM02
  (193, 19300, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 10),
  -- Yanma - Curse - TM03
  (193, 19300, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 11),
  -- Yanma - Toxic - TM06
  (193, 19300, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 12),
  -- Yanma - Hidden Power - TM10
  (193, 19300, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 13),
  -- Yanma - Sunny Day - TM11
  (193, 19300, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 14),
  -- Yanma - Snore - TM13
  (193, 19300, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 15),
  -- Yanma - Protect - TM17
  (193, 19300, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 16),
  -- Yanma - Giga Drain - TM19
  (193, 19300, 202, 4, NULL, 2, NULL, NULL, 4002019, NULL, 17),
  -- Yanma - Endure - TM20
  (193, 19300, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 18),
  -- Yanma - Frustration - TM21
  (193, 19300, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 19),
  -- Yanma - Solar Beam - TM22
  (193, 19300, 76, 4, NULL, 2, NULL, NULL, 4002022, NULL, 20),
  -- Yanma - Return - TM27
  (193, 19300, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 21),
  -- Yanma - Double Team - TM32
  (193, 19300, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 22),
  -- Yanma - Swagger - TM34
  (193, 19300, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 23),
  -- Yanma - Sleep Talk - TM35
  (193, 19300, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 24),
  -- Yanma - Swift - TM39
  (193, 19300, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 25),
  -- Yanma - Detect - TM43
  (193, 19300, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 26),
  -- Yanma - Rest - TM44
  (193, 19300, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 27),
  -- Yanma - Attract - TM45
  (193, 19300, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 28),
  -- Yanma - Thief - TM46
  (193, 19300, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 29),
  -- Yanma - Flash - HM05
  (193, 19300, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 30),
  -- Yanma - Leech Life - Egg Move
  (193, 19300, 141, 4, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Yanma - Reversal - Egg Move
  (193, 19300, 179, 4, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Yanma - Whirlwind - Egg Move
  (193, 19300, 18, 4, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Wooper - Water Gun - Level 1
  (194, 19400, 55, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wooper - Tail Whip - Level 1
  (194, 19400, 39, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wooper - Slam - Level 11
  (194, 19400, 21, 4, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Wooper - Amnesia - Level 21
  (194, 19400, 133, 4, NULL, 1, 21, NULL, NULL, NULL, 4),
  -- Wooper - Earthquake - Level 31
  (194, 19400, 89, 4, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Wooper - Rain Dance - Level 41
  (194, 19400, 240, 4, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Wooper - Mist - Level 51
  (194, 19400, 54, 4, NULL, 1, 51, NULL, NULL, NULL, 7),
  -- Wooper - Haze - Level 51
  (194, 19400, 114, 4, NULL, 1, 51, NULL, NULL, NULL, 8),
  -- Wooper - Dynamic Punch - TM01
  (194, 19400, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 9),
  -- Wooper - Headbutt - TM02
  (194, 19400, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 10),
  -- Wooper - Curse - TM03
  (194, 19400, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 11),
  -- Wooper - Rollout - TM04
  (194, 19400, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 12),
  -- Wooper - Toxic - TM06
  (194, 19400, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 13),
  -- Wooper - Rock Smash - TM08
  (194, 19400, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 14),
  -- Wooper - Hidden Power - TM10
  (194, 19400, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 15),
  -- Wooper - Snore - TM13
  (194, 19400, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 16),
  -- Wooper - Protect - TM17
  (194, 19400, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 17),
  -- Wooper - Rain Dance - TM18
  (194, 19400, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 18),
  -- Wooper - Endure - TM20
  (194, 19400, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 19),
  -- Wooper - Frustration - TM21
  (194, 19400, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 20),
  -- Wooper - Iron Tail - TM23
  (194, 19400, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 21),
  -- Wooper - Earthquake - TM26
  (194, 19400, 89, 4, NULL, 2, NULL, NULL, 4002026, NULL, 22),
  -- Wooper - Return - TM27
  (194, 19400, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 23),
  -- Wooper - Dig - TM28
  (194, 19400, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 24),
  -- Wooper - Mud-Slap - TM31
  (194, 19400, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 25),
  -- Wooper - Double Team - TM32
  (194, 19400, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 26),
  -- Wooper - Ice Punch - TM33
  (194, 19400, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 27),
  -- Wooper - Swagger - TM34
  (194, 19400, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 28),
  -- Wooper - Sleep Talk - TM35
  (194, 19400, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 29),
  -- Wooper - Sludge Bomb - TM36
  (194, 19400, 188, 4, NULL, 2, NULL, NULL, 4002036, NULL, 30),
  -- Wooper - Sandstorm - TM37
  (194, 19400, 201, 4, NULL, 2, NULL, NULL, 4002037, NULL, 31),
  -- Wooper - Defense Curl - TM40
  (194, 19400, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 32),
  -- Wooper - Rest - TM44
  (194, 19400, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 33),
  -- Wooper - Attract - TM45
  (194, 19400, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 34),
  -- Wooper - Surf - HM03
  (194, 19400, 57, 4, NULL, 3, NULL, NULL, 4003003, NULL, 35),
  -- Wooper - Flash - HM05
  (194, 19400, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 36),
  -- Wooper - Whirlpool - HM06
  (194, 19400, 250, 4, NULL, 3, NULL, NULL, 4003006, NULL, 37),
  -- Wooper - Ancient Power - Egg Move
  (194, 19400, 246, 4, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Wooper - Body Slam - Egg Move
  (194, 19400, 34, 4, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Wooper - Rain Dance - Egg Move
  (194, 19400, 240, 4, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Wooper - Safeguard - Egg Move
  (194, 19400, 219, 4, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Wooper - Ice Beam - Move Tutor
  (194, 19400, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 42),
  -- Quagsire - Water Gun - Level 1
  (195, 19500, 55, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quagsire - Tail Whip - Level 1
  (195, 19500, 39, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Quagsire - Slam - Level 11
  (195, 19500, 21, 4, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Quagsire - Amnesia - Level 23
  (195, 19500, 133, 4, NULL, 1, 23, NULL, NULL, NULL, 4),
  -- Quagsire - Earthquake - Level 35
  (195, 19500, 89, 4, NULL, 1, 35, NULL, NULL, NULL, 5),
  -- Quagsire - Rain Dance - Level 47
  (195, 19500, 240, 4, NULL, 1, 47, NULL, NULL, NULL, 6),
  -- Quagsire - Mist - Level 59
  (195, 19500, 54, 4, NULL, 1, 59, NULL, NULL, NULL, 7),
  -- Quagsire - Haze - Level 59
  (195, 19500, 114, 4, NULL, 1, 59, NULL, NULL, NULL, 8),
  -- Quagsire - Dynamic Punch - TM01
  (195, 19500, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 9),
  -- Quagsire - Headbutt - TM02
  (195, 19500, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 10),
  -- Quagsire - Curse - TM03
  (195, 19500, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 11),
  -- Quagsire - Rollout - TM04
  (195, 19500, 205, 4, NULL, 2, NULL, NULL, 4002004, NULL, 12),
  -- Quagsire - Toxic - TM06
  (195, 19500, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 13),
  -- Quagsire - Rock Smash - TM08
  (195, 19500, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 14),
  -- Quagsire - Hidden Power - TM10
  (195, 19500, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 15),
  -- Quagsire - Snore - TM13
  (195, 19500, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 16),
  -- Quagsire - Hyper Beam - TM15
  (195, 19500, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 17),
  -- Quagsire - Protect - TM17
  (195, 19500, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 18),
  -- Quagsire - Rain Dance - TM18
  (195, 19500, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 19),
  -- Quagsire - Endure - TM20
  (195, 19500, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 20),
  -- Quagsire - Frustration - TM21
  (195, 19500, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 21),
  -- Quagsire - Iron Tail - TM23
  (195, 19500, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 22),
  -- Quagsire - Earthquake - TM26
  (195, 19500, 89, 4, NULL, 2, NULL, NULL, 4002026, NULL, 23),
  -- Quagsire - Return - TM27
  (195, 19500, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 24),
  -- Quagsire - Dig - TM28
  (195, 19500, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 25),
  -- Quagsire - Mud-Slap - TM31
  (195, 19500, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 26),
  -- Quagsire - Double Team - TM32
  (195, 19500, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 27),
  -- Quagsire - Ice Punch - TM33
  (195, 19500, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 28),
  -- Quagsire - Swagger - TM34
  (195, 19500, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 29),
  -- Quagsire - Sleep Talk - TM35
  (195, 19500, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 30),
  -- Quagsire - Sludge Bomb - TM36
  (195, 19500, 188, 4, NULL, 2, NULL, NULL, 4002036, NULL, 31),
  -- Quagsire - Sandstorm - TM37
  (195, 19500, 201, 4, NULL, 2, NULL, NULL, 4002037, NULL, 32),
  -- Quagsire - Defense Curl - TM40
  (195, 19500, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 33),
  -- Quagsire - Rest - TM44
  (195, 19500, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 34),
  -- Quagsire - Attract - TM45
  (195, 19500, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 35),
  -- Quagsire - Surf - HM03
  (195, 19500, 57, 4, NULL, 3, NULL, NULL, 4003003, NULL, 36),
  -- Quagsire - Strength - HM04
  (195, 19500, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 37),
  -- Quagsire - Flash - HM05
  (195, 19500, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 38),
  -- Quagsire - Whirlpool - HM06
  (195, 19500, 250, 4, NULL, 3, NULL, NULL, 4003006, NULL, 39),
  -- Quagsire - Ice Beam - Move Tutor
  (195, 19500, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 40),
  -- Espeon - Tackle - Level 1
  (196, 19600, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Espeon - Tail Whip - Level 1
  (196, 19600, 39, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Espeon - Sand Attack - Level 8
  (196, 19600, 28, 4, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Espeon - Confusion - Level 16
  (196, 19600, 93, 4, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Espeon - Quick Attack - Level 23
  (196, 19600, 98, 4, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Espeon - Swift - Level 30
  (196, 19600, 129, 4, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Espeon - Psybeam - Level 36
  (196, 19600, 60, 4, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Espeon - Psych Up - Level 42
  (196, 19600, 244, 4, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Espeon - Psychic - Level 47
  (196, 19600, 94, 4, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Espeon - Morning Sun - Level 52
  (196, 19600, 234, 4, NULL, 1, 52, NULL, NULL, NULL, 10),
  -- Espeon - Headbutt - TM02
  (196, 19600, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 11),
  -- Espeon - Curse - TM03
  (196, 19600, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 12),
  -- Espeon - Toxic - TM06
  (196, 19600, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 13),
  -- Espeon - Zap Cannon - TM07
  (196, 19600, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 14),
  -- Espeon - Psych Up - TM09
  (196, 19600, 244, 4, NULL, 2, NULL, NULL, 4002009, NULL, 15),
  -- Espeon - Hidden Power - TM10
  (196, 19600, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 16),
  -- Espeon - Sunny Day - TM11
  (196, 19600, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 17),
  -- Espeon - Snore - TM13
  (196, 19600, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 18),
  -- Espeon - Hyper Beam - TM15
  (196, 19600, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 19),
  -- Espeon - Protect - TM17
  (196, 19600, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 20),
  -- Espeon - Rain Dance - TM18
  (196, 19600, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 21),
  -- Espeon - Endure - TM20
  (196, 19600, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 22),
  -- Espeon - Frustration - TM21
  (196, 19600, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 23),
  -- Espeon - Iron Tail - TM23
  (196, 19600, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 24),
  -- Espeon - Return - TM27
  (196, 19600, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 25),
  -- Espeon - Psychic - TM29
  (196, 19600, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 26),
  -- Espeon - Shadow Ball - TM30
  (196, 19600, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 27),
  -- Espeon - Mud-Slap - TM31
  (196, 19600, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 28),
  -- Espeon - Double Team - TM32
  (196, 19600, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 29),
  -- Espeon - Swagger - TM34
  (196, 19600, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 30),
  -- Espeon - Sleep Talk - TM35
  (196, 19600, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 31),
  -- Espeon - Swift - TM39
  (196, 19600, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 32),
  -- Espeon - Dream Eater - TM42
  (196, 19600, 138, 4, NULL, 2, NULL, NULL, 4002042, NULL, 33),
  -- Espeon - Detect - TM43
  (196, 19600, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 34),
  -- Espeon - Rest - TM44
  (196, 19600, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 35),
  -- Espeon - Attract - TM45
  (196, 19600, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 36),
  -- Espeon - Nightmare - TM50
  (196, 19600, 171, 4, NULL, 2, NULL, NULL, 4002050, NULL, 37),
  -- Espeon - Cut - HM01
  (196, 19600, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 38),
  -- Espeon - Flash - HM05
  (196, 19600, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 39),
  -- Umbreon - Tackle - Level 1
  (197, 19700, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Umbreon - Tail Whip - Level 1
  (197, 19700, 39, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Umbreon - Sand Attack - Level 8
  (197, 19700, 28, 4, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Umbreon - Pursuit - Level 16
  (197, 19700, 228, 4, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Umbreon - Quick Attack - Level 23
  (197, 19700, 98, 4, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Umbreon - Confuse Ray - Level 30
  (197, 19700, 109, 4, NULL, 1, 30, NULL, NULL, NULL, 6),
  -- Umbreon - Feint Attack - Level 36
  (197, 19700, 185, 4, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Umbreon - Mean Look - Level 42
  (197, 19700, 212, 4, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Umbreon - Screech - Level 47
  (197, 19700, 103, 4, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Umbreon - Moonlight - Level 52
  (197, 19700, 236, 4, NULL, 1, 52, NULL, NULL, NULL, 10),
  -- Umbreon - Headbutt - TM02
  (197, 19700, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 11),
  -- Umbreon - Curse - TM03
  (197, 19700, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 12),
  -- Umbreon - Toxic - TM06
  (197, 19700, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 13),
  -- Umbreon - Zap Cannon - TM07
  (197, 19700, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 14),
  -- Umbreon - Psych Up - TM09
  (197, 19700, 244, 4, NULL, 2, NULL, NULL, 4002009, NULL, 15),
  -- Umbreon - Hidden Power - TM10
  (197, 19700, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 16),
  -- Umbreon - Sunny Day - TM11
  (197, 19700, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 17),
  -- Umbreon - Snore - TM13
  (197, 19700, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 18),
  -- Umbreon - Hyper Beam - TM15
  (197, 19700, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 19),
  -- Umbreon - Protect - TM17
  (197, 19700, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 20),
  -- Umbreon - Rain Dance - TM18
  (197, 19700, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 21),
  -- Umbreon - Endure - TM20
  (197, 19700, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 22),
  -- Umbreon - Frustration - TM21
  (197, 19700, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 23),
  -- Umbreon - Iron Tail - TM23
  (197, 19700, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 24),
  -- Umbreon - Return - TM27
  (197, 19700, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 25),
  -- Umbreon - Psychic - TM29
  (197, 19700, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 26),
  -- Umbreon - Shadow Ball - TM30
  (197, 19700, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 27),
  -- Umbreon - Mud-Slap - TM31
  (197, 19700, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 28),
  -- Umbreon - Double Team - TM32
  (197, 19700, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 29),
  -- Umbreon - Swagger - TM34
  (197, 19700, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 30),
  -- Umbreon - Sleep Talk - TM35
  (197, 19700, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 31),
  -- Umbreon - Swift - TM39
  (197, 19700, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 32),
  -- Umbreon - Dream Eater - TM42
  (197, 19700, 138, 4, NULL, 2, NULL, NULL, 4002042, NULL, 33),
  -- Umbreon - Detect - TM43
  (197, 19700, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 34),
  -- Umbreon - Rest - TM44
  (197, 19700, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 35),
  -- Umbreon - Attract - TM45
  (197, 19700, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 36),
  -- Umbreon - Nightmare - TM50
  (197, 19700, 171, 4, NULL, 2, NULL, NULL, 4002050, NULL, 37),
  -- Umbreon - Cut - HM01
  (197, 19700, 15, 4, NULL, 3, NULL, NULL, 4003001, NULL, 38),
  -- Umbreon - Flash - HM05
  (197, 19700, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 39),
  -- Murkrow - Peck - Level 1
  (198, 19800, 64, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Murkrow - Pursuit - Level 11
  (198, 19800, 228, 4, NULL, 1, 11, NULL, NULL, NULL, 2),
  -- Murkrow - Haze - Level 16
  (198, 19800, 114, 4, NULL, 1, 16, NULL, NULL, NULL, 3),
  -- Murkrow - Night Shade - Level 26
  (198, 19800, 101, 4, NULL, 1, 26, NULL, NULL, NULL, 4),
  -- Murkrow - Feint Attack - Level 31
  (198, 19800, 185, 4, NULL, 1, 31, NULL, NULL, NULL, 5),
  -- Murkrow - Mean Look - Level 41
  (198, 19800, 212, 4, NULL, 1, 41, NULL, NULL, NULL, 6),
  -- Murkrow - Curse - TM03
  (198, 19800, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 7),
  -- Murkrow - Toxic - TM06
  (198, 19800, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 8),
  -- Murkrow - Psych Up - TM09
  (198, 19800, 244, 4, NULL, 2, NULL, NULL, 4002009, NULL, 9),
  -- Murkrow - Hidden Power - TM10
  (198, 19800, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 10),
  -- Murkrow - Sunny Day - TM11
  (198, 19800, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 11),
  -- Murkrow - Snore - TM13
  (198, 19800, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 12),
  -- Murkrow - Icy Wind - TM16
  (198, 19800, 196, 4, NULL, 2, NULL, NULL, 4002016, NULL, 13),
  -- Murkrow - Protect - TM17
  (198, 19800, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 14),
  -- Murkrow - Endure - TM20
  (198, 19800, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 15),
  -- Murkrow - Frustration - TM21
  (198, 19800, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 16),
  -- Murkrow - Return - TM27
  (198, 19800, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 17),
  -- Murkrow - Shadow Ball - TM30
  (198, 19800, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 18),
  -- Murkrow - Mud-Slap - TM31
  (198, 19800, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 19),
  -- Murkrow - Double Team - TM32
  (198, 19800, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 20),
  -- Murkrow - Swagger - TM34
  (198, 19800, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 21),
  -- Murkrow - Sleep Talk - TM35
  (198, 19800, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 22),
  -- Murkrow - Swift - TM39
  (198, 19800, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 23),
  -- Murkrow - Dream Eater - TM42
  (198, 19800, 138, 4, NULL, 2, NULL, NULL, 4002042, NULL, 24),
  -- Murkrow - Detect - TM43
  (198, 19800, 197, 4, NULL, 2, NULL, NULL, 4002043, NULL, 25),
  -- Murkrow - Rest - TM44
  (198, 19800, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 26),
  -- Murkrow - Attract - TM45
  (198, 19800, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 27),
  -- Murkrow - Thief - TM46
  (198, 19800, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 28),
  -- Murkrow - Steel Wing - TM47
  (198, 19800, 211, 4, NULL, 2, NULL, NULL, 4002047, NULL, 29),
  -- Murkrow - Nightmare - TM50
  (198, 19800, 171, 4, NULL, 2, NULL, NULL, 4002050, NULL, 30),
  -- Murkrow - Fly - HM02
  (198, 19800, 19, 4, NULL, 3, NULL, NULL, 4003002, NULL, 31),
  -- Murkrow - Drill Peck - Egg Move
  (198, 19800, 65, 4, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Murkrow - Mirror Move - Egg Move
  (198, 19800, 119, 4, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Murkrow - Quick Attack - Egg Move
  (198, 19800, 98, 4, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Murkrow - Sky Attack - Egg Move
  (198, 19800, 143, 4, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Murkrow - Whirlwind - Egg Move
  (198, 19800, 18, 4, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Murkrow - Wing Attack - Egg Move
  (198, 19800, 17, 4, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Slowking - Curse - Level 1
  (199, 19900, 174, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowking - Tackle - Level 1
  (199, 19900, 33, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowking - Growl - Level 6
  (199, 19900, 45, 4, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Slowking - Water Gun - Level 15
  (199, 19900, 55, 4, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Slowking - Confusion - Level 20
  (199, 19900, 93, 4, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Slowking - Disable - Level 29
  (199, 19900, 50, 4, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Slowking - Headbutt - Level 34
  (199, 19900, 29, 4, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Slowking - Swagger - Level 43
  (199, 19900, 207, 4, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Slowking - Psychic - Level 48
  (199, 19900, 94, 4, NULL, 1, 48, NULL, NULL, NULL, 9),
  -- Slowking - Dynamic Punch - TM01
  (199, 19900, 223, 4, NULL, 2, NULL, NULL, 4002001, NULL, 10),
  -- Slowking - Headbutt - TM02
  (199, 19900, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 11),
  -- Slowking - Curse - TM03
  (199, 19900, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 12),
  -- Slowking - Toxic - TM06
  (199, 19900, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 13),
  -- Slowking - Zap Cannon - TM07
  (199, 19900, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 14),
  -- Slowking - Rock Smash - TM08
  (199, 19900, 249, 4, NULL, 2, NULL, NULL, 4002008, NULL, 15),
  -- Slowking - Psych Up - TM09
  (199, 19900, 244, 4, NULL, 2, NULL, NULL, 4002009, NULL, 16),
  -- Slowking - Hidden Power - TM10
  (199, 19900, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 17),
  -- Slowking - Sunny Day - TM11
  (199, 19900, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 18),
  -- Slowking - Snore - TM13
  (199, 19900, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 19),
  -- Slowking - Blizzard - TM14
  (199, 19900, 59, 4, NULL, 2, NULL, NULL, 4002014, NULL, 20),
  -- Slowking - Hyper Beam - TM15
  (199, 19900, 63, 4, NULL, 2, NULL, NULL, 4002015, NULL, 21),
  -- Slowking - Icy Wind - TM16
  (199, 19900, 196, 4, NULL, 2, NULL, NULL, 4002016, NULL, 22),
  -- Slowking - Protect - TM17
  (199, 19900, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 23),
  -- Slowking - Rain Dance - TM18
  (199, 19900, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 24),
  -- Slowking - Endure - TM20
  (199, 19900, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 25),
  -- Slowking - Frustration - TM21
  (199, 19900, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 26),
  -- Slowking - Iron Tail - TM23
  (199, 19900, 231, 4, NULL, 2, NULL, NULL, 4002023, NULL, 27),
  -- Slowking - Earthquake - TM26
  (199, 19900, 89, 4, NULL, 2, NULL, NULL, 4002026, NULL, 28),
  -- Slowking - Return - TM27
  (199, 19900, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 29),
  -- Slowking - Dig - TM28
  (199, 19900, 91, 4, NULL, 2, NULL, NULL, 4002028, NULL, 30),
  -- Slowking - Psychic - TM29
  (199, 19900, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 31),
  -- Slowking - Shadow Ball - TM30
  (199, 19900, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 32),
  -- Slowking - Mud-Slap - TM31
  (199, 19900, 189, 4, NULL, 2, NULL, NULL, 4002031, NULL, 33),
  -- Slowking - Double Team - TM32
  (199, 19900, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 34),
  -- Slowking - Ice Punch - TM33
  (199, 19900, 8, 4, NULL, 2, NULL, NULL, 4002033, NULL, 35),
  -- Slowking - Swagger - TM34
  (199, 19900, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 36),
  -- Slowking - Sleep Talk - TM35
  (199, 19900, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 37),
  -- Slowking - Fire Blast - TM38
  (199, 19900, 126, 4, NULL, 2, NULL, NULL, 4002038, NULL, 38),
  -- Slowking - Swift - TM39
  (199, 19900, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 39),
  -- Slowking - Dream Eater - TM42
  (199, 19900, 138, 4, NULL, 2, NULL, NULL, 4002042, NULL, 40),
  -- Slowking - Rest - TM44
  (199, 19900, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 41),
  -- Slowking - Attract - TM45
  (199, 19900, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 42),
  -- Slowking - Fury Cutter - TM49
  (199, 19900, 210, 4, NULL, 2, NULL, NULL, 4002049, NULL, 43),
  -- Slowking - Nightmare - TM50
  (199, 19900, 171, 4, NULL, 2, NULL, NULL, 4002050, NULL, 44),
  -- Slowking - Surf - HM03
  (199, 19900, 57, 4, NULL, 3, NULL, NULL, 4003003, NULL, 45),
  -- Slowking - Strength - HM04
  (199, 19900, 70, 4, NULL, 3, NULL, NULL, 4003004, NULL, 46),
  -- Slowking - Flash - HM05
  (199, 19900, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 47),
  -- Slowking - Whirlpool - HM06
  (199, 19900, 250, 4, NULL, 3, NULL, NULL, 4003006, NULL, 48),
  -- Slowking - Flamethrower - Move Tutor
  (199, 19900, 53, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 49),
  -- Slowking - Ice Beam - Move Tutor
  (199, 19900, 58, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 50),
  -- Misdreavus - Growl - Level 1
  (200, 20000, 45, 4, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Misdreavus - Psywave - Level 1
  (200, 20000, 149, 4, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Misdreavus - Spite - Level 6
  (200, 20000, 180, 4, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Misdreavus - Confuse Ray - Level 12
  (200, 20000, 109, 4, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Misdreavus - Mean Look - Level 19
  (200, 20000, 212, 4, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Misdreavus - Psybeam - Level 27
  (200, 20000, 60, 4, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Misdreavus - Pain Split - Level 36
  (200, 20000, 220, 4, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Misdreavus - Perish Song - Level 46
  (200, 20000, 195, 4, NULL, 1, 46, NULL, NULL, NULL, 8),
  -- Misdreavus - Headbutt - TM02
  (200, 20000, 29, 4, NULL, 2, NULL, NULL, 4002002, NULL, 9),
  -- Misdreavus - Curse - TM03
  (200, 20000, 174, 4, NULL, 2, NULL, NULL, 4002003, NULL, 10),
  -- Misdreavus - Toxic - TM06
  (200, 20000, 92, 4, NULL, 2, NULL, NULL, 4002006, NULL, 11),
  -- Misdreavus - Zap Cannon - TM07
  (200, 20000, 192, 4, NULL, 2, NULL, NULL, 4002007, NULL, 12),
  -- Misdreavus - Psych Up - TM09
  (200, 20000, 244, 4, NULL, 2, NULL, NULL, 4002009, NULL, 13),
  -- Misdreavus - Hidden Power - TM10
  (200, 20000, 237, 4, NULL, 2, NULL, NULL, 4002010, NULL, 14),
  -- Misdreavus - Sunny Day - TM11
  (200, 20000, 241, 4, NULL, 2, NULL, NULL, 4002011, NULL, 15),
  -- Misdreavus - Snore - TM13
  (200, 20000, 173, 4, NULL, 2, NULL, NULL, 4002013, NULL, 16),
  -- Misdreavus - Protect - TM17
  (200, 20000, 182, 4, NULL, 2, NULL, NULL, 4002017, NULL, 17),
  -- Misdreavus - Rain Dance - TM18
  (200, 20000, 240, 4, NULL, 2, NULL, NULL, 4002018, NULL, 18),
  -- Misdreavus - Endure - TM20
  (200, 20000, 203, 4, NULL, 2, NULL, NULL, 4002020, NULL, 19),
  -- Misdreavus - Frustration - TM21
  (200, 20000, 218, 4, NULL, 2, NULL, NULL, 4002021, NULL, 20),
  -- Misdreavus - Thunder - TM25
  (200, 20000, 87, 4, NULL, 2, NULL, NULL, 4002025, NULL, 21),
  -- Misdreavus - Return - TM27
  (200, 20000, 216, 4, NULL, 2, NULL, NULL, 4002027, NULL, 22),
  -- Misdreavus - Psychic - TM29
  (200, 20000, 94, 4, NULL, 2, NULL, NULL, 4002029, NULL, 23),
  -- Misdreavus - Shadow Ball - TM30
  (200, 20000, 247, 4, NULL, 2, NULL, NULL, 4002030, NULL, 24),
  -- Misdreavus - Double Team - TM32
  (200, 20000, 104, 4, NULL, 2, NULL, NULL, 4002032, NULL, 25),
  -- Misdreavus - Swagger - TM34
  (200, 20000, 207, 4, NULL, 2, NULL, NULL, 4002034, NULL, 26),
  -- Misdreavus - Sleep Talk - TM35
  (200, 20000, 214, 4, NULL, 2, NULL, NULL, 4002035, NULL, 27),
  -- Misdreavus - Swift - TM39
  (200, 20000, 129, 4, NULL, 2, NULL, NULL, 4002039, NULL, 28),
  -- Misdreavus - Defense Curl - TM40
  (200, 20000, 111, 4, NULL, 2, NULL, NULL, 4002040, NULL, 29),
  -- Misdreavus - Dream Eater - TM42
  (200, 20000, 138, 4, NULL, 2, NULL, NULL, 4002042, NULL, 30),
  -- Misdreavus - Rest - TM44
  (200, 20000, 156, 4, NULL, 2, NULL, NULL, 4002044, NULL, 31),
  -- Misdreavus - Attract - TM45
  (200, 20000, 213, 4, NULL, 2, NULL, NULL, 4002045, NULL, 32),
  -- Misdreavus - Thief - TM46
  (200, 20000, 168, 4, NULL, 2, NULL, NULL, 4002046, NULL, 33),
  -- Misdreavus - Nightmare - TM50
  (200, 20000, 171, 4, NULL, 2, NULL, NULL, 4002050, NULL, 34),
  -- Misdreavus - Flash - HM05
  (200, 20000, 148, 4, NULL, 3, NULL, NULL, 4003005, NULL, 35),
  -- Misdreavus - Destiny Bond - Egg Move
  (200, 20000, 194, 4, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Misdreavus - Screech - Egg Move
  (200, 20000, 103, 4, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Misdreavus - Thunderbolt - Move Tutor
  (200, 20000, 85, 4, NULL, 6, NULL, NULL, NULL, 'Goldenrod Game Corner Move Tutor after entering the Hall of Fame; appears Wednesday/Saturday and charges 4000 coins.', 38),
  -- Unown - Hidden Power - Level 1
  (201, 20100, 237, 4, NULL, 1, 1, NULL, NULL, NULL, 1);
