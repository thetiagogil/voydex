-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation V Pokémon learnset raw pages, using Black / White
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii Black / White Pokedex learnset pages, Serebii Black / White
-- Move Tutor pages, and PokemonDB Generation 5 Black / White learnset pages.
-- Migration source: generated from source-verified Voydex audit tooling.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Black / White
-- Pokémon: #152-#201
-- Rows: 2499
-- Scope: level-up, TM, HM, egg move, and Move Tutor acquisition rows.
-- Event, transfer, prior-evolution, Dream World, and form-change event sections
-- are intentionally excluded from this Black / White seed.
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
  (152, 15200, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chikorita - Growl - Level 1
  (152, 15200, 45, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chikorita - Razor Leaf - Level 6
  (152, 15200, 75, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Chikorita - Poison Powder - Level 9
  (152, 15200, 77, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Chikorita - Synthesis - Level 12
  (152, 15200, 235, 11, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Chikorita - Reflect - Level 17
  (152, 15200, 115, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Chikorita - Magical Leaf - Level 20
  (152, 15200, 345, 11, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Chikorita - Natural Gift - Level 23
  (152, 15200, 363, 11, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Chikorita - Sweet Scent - Level 28
  (152, 15200, 230, 11, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Chikorita - Light Screen - Level 31
  (152, 15200, 113, 11, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Chikorita - Body Slam - Level 34
  (152, 15200, 34, 11, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Chikorita - Safeguard - Level 39
  (152, 15200, 219, 11, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Chikorita - Aromatherapy - Level 42
  (152, 15200, 312, 11, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Chikorita - Solar Beam - Level 45
  (152, 15200, 76, 11, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Chikorita - Toxic - TM06
  (152, 15200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Chikorita - Hidden Power - TM10
  (152, 15200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Chikorita - Sunny Day - TM11
  (152, 15200, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Chikorita - Light Screen - TM16
  (152, 15200, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 18),
  -- Chikorita - Protect - TM17
  (152, 15200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Chikorita - Safeguard - TM20
  (152, 15200, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 20),
  -- Chikorita - Frustration - TM21
  (152, 15200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 21),
  -- Chikorita - Solar Beam - TM22
  (152, 15200, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 22),
  -- Chikorita - Return - TM27
  (152, 15200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 23),
  -- Chikorita - Double Team - TM32
  (152, 15200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 24),
  -- Chikorita - Reflect - TM33
  (152, 15200, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 25),
  -- Chikorita - Facade - TM42
  (152, 15200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 26),
  -- Chikorita - Rest - TM44
  (152, 15200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 27),
  -- Chikorita - Attract - TM45
  (152, 15200, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 28),
  -- Chikorita - Round - TM48
  (152, 15200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 29),
  -- Chikorita - Echoed Voice - TM49
  (152, 15200, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 30),
  -- Chikorita - Energy Ball - TM53
  (152, 15200, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 31),
  -- Chikorita - Flash - TM70
  (152, 15200, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 32),
  -- Chikorita - Swords Dance - TM75
  (152, 15200, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 33),
  -- Chikorita - Grass Knot - TM86
  (152, 15200, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 34),
  -- Chikorita - Swagger - TM87
  (152, 15200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 35),
  -- Chikorita - Substitute - TM90
  (152, 15200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 36),
  -- Chikorita - Cut - HM01
  (152, 15200, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 37),
  -- Chikorita - Ancient Power - Egg Move
  (152, 15200, 246, 11, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Chikorita - Aromatherapy - Egg Move
  (152, 15200, 312, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Chikorita - Body Slam - Egg Move
  (152, 15200, 34, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Chikorita - Counter - Egg Move
  (152, 15200, 68, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Chikorita - Flail - Egg Move
  (152, 15200, 175, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Chikorita - Grass Whistle - Egg Move
  (152, 15200, 320, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Chikorita - Heal Pulse - Egg Move
  (152, 15200, 505, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Chikorita - Ingrain - Egg Move
  (152, 15200, 275, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Chikorita - Leaf Storm - Egg Move
  (152, 15200, 437, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Chikorita - Leech Seed - Egg Move
  (152, 15200, 73, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Chikorita - Nature Power - Egg Move
  (152, 15200, 267, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Chikorita - Refresh - Egg Move
  (152, 15200, 287, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Chikorita - Vine Whip - Egg Move
  (152, 15200, 22, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Chikorita - Wring Out - Egg Move
  (152, 15200, 378, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Chikorita - Grass Pledge - Move Tutor
  (152, 15200, 520, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 52),
  -- Bayleef - Tackle - Level 1
  (153, 15300, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bayleef - Growl - Level 1
  (153, 15300, 45, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bayleef - Razor Leaf - Level 1
  (153, 15300, 75, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bayleef - Poison Powder - Level 1
  (153, 15300, 77, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bayleef - Razor Leaf - Level 6
  (153, 15300, 75, 11, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Bayleef - Poison Powder - Level 9
  (153, 15300, 77, 11, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Bayleef - Synthesis - Level 12
  (153, 15300, 235, 11, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Bayleef - Reflect - Level 18
  (153, 15300, 115, 11, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Bayleef - Magical Leaf - Level 22
  (153, 15300, 345, 11, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Bayleef - Natural Gift - Level 26
  (153, 15300, 363, 11, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Bayleef - Sweet Scent - Level 32
  (153, 15300, 230, 11, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Bayleef - Light Screen - Level 36
  (153, 15300, 113, 11, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Bayleef - Body Slam - Level 40
  (153, 15300, 34, 11, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Bayleef - Safeguard - Level 46
  (153, 15300, 219, 11, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Bayleef - Aromatherapy - Level 50
  (153, 15300, 312, 11, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Bayleef - Solar Beam - Level 54
  (153, 15300, 76, 11, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Bayleef - Toxic - TM06
  (153, 15300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Bayleef - Hidden Power - TM10
  (153, 15300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Bayleef - Sunny Day - TM11
  (153, 15300, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Bayleef - Light Screen - TM16
  (153, 15300, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 20),
  -- Bayleef - Protect - TM17
  (153, 15300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Bayleef - Safeguard - TM20
  (153, 15300, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 22),
  -- Bayleef - Frustration - TM21
  (153, 15300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Bayleef - Solar Beam - TM22
  (153, 15300, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 24),
  -- Bayleef - Return - TM27
  (153, 15300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Bayleef - Double Team - TM32
  (153, 15300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Bayleef - Reflect - TM33
  (153, 15300, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 27),
  -- Bayleef - Facade - TM42
  (153, 15300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 28),
  -- Bayleef - Rest - TM44
  (153, 15300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 29),
  -- Bayleef - Attract - TM45
  (153, 15300, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 30),
  -- Bayleef - Round - TM48
  (153, 15300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 31),
  -- Bayleef - Echoed Voice - TM49
  (153, 15300, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 32),
  -- Bayleef - Energy Ball - TM53
  (153, 15300, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 33),
  -- Bayleef - Flash - TM70
  (153, 15300, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 34),
  -- Bayleef - Swords Dance - TM75
  (153, 15300, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 35),
  -- Bayleef - Grass Knot - TM86
  (153, 15300, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 36),
  -- Bayleef - Swagger - TM87
  (153, 15300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 37),
  -- Bayleef - Substitute - TM90
  (153, 15300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 38),
  -- Bayleef - Rock Smash - TM94
  (153, 15300, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 39),
  -- Bayleef - Cut - HM01
  (153, 15300, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 40),
  -- Bayleef - Strength - HM04
  (153, 15300, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 41),
  -- Bayleef - Grass Pledge - Move Tutor
  (153, 15300, 520, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 42),
  -- Meganium - Tackle - Level 1
  (154, 15400, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meganium - Growl - Level 1
  (154, 15400, 45, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meganium - Razor Leaf - Level 1
  (154, 15400, 75, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meganium - Poison Powder - Level 1
  (154, 15400, 77, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Meganium - Razor Leaf - Level 6
  (154, 15400, 75, 11, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Meganium - Poison Powder - Level 9
  (154, 15400, 77, 11, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Meganium - Synthesis - Level 12
  (154, 15400, 235, 11, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Meganium - Reflect - Level 18
  (154, 15400, 115, 11, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Meganium - Magical Leaf - Level 22
  (154, 15400, 345, 11, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Meganium - Natural Gift - Level 26
  (154, 15400, 363, 11, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Meganium - Petal Dance - Level 32
  (154, 15400, 80, 11, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Meganium - Sweet Scent - Level 34
  (154, 15400, 230, 11, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Meganium - Light Screen - Level 40
  (154, 15400, 113, 11, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Meganium - Body Slam - Level 46
  (154, 15400, 34, 11, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Meganium - Safeguard - Level 54
  (154, 15400, 219, 11, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Meganium - Aromatherapy - Level 60
  (154, 15400, 312, 11, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Meganium - Solar Beam - Level 66
  (154, 15400, 76, 11, NULL, 1, 66, NULL, NULL, NULL, 17),
  -- Meganium - Toxic - TM06
  (154, 15400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Meganium - Hidden Power - TM10
  (154, 15400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Meganium - Sunny Day - TM11
  (154, 15400, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Meganium - Hyper Beam - TM15
  (154, 15400, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 21),
  -- Meganium - Light Screen - TM16
  (154, 15400, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 22),
  -- Meganium - Protect - TM17
  (154, 15400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Meganium - Safeguard - TM20
  (154, 15400, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 24),
  -- Meganium - Frustration - TM21
  (154, 15400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Meganium - Solar Beam - TM22
  (154, 15400, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 26),
  -- Meganium - Earthquake - TM26
  (154, 15400, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 27),
  -- Meganium - Return - TM27
  (154, 15400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Meganium - Double Team - TM32
  (154, 15400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 29),
  -- Meganium - Reflect - TM33
  (154, 15400, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 30),
  -- Meganium - Facade - TM42
  (154, 15400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 31),
  -- Meganium - Rest - TM44
  (154, 15400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 32),
  -- Meganium - Attract - TM45
  (154, 15400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 33),
  -- Meganium - Round - TM48
  (154, 15400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 34),
  -- Meganium - Echoed Voice - TM49
  (154, 15400, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 35),
  -- Meganium - Energy Ball - TM53
  (154, 15400, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 36),
  -- Meganium - Giga Impact - TM68
  (154, 15400, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 37),
  -- Meganium - Flash - TM70
  (154, 15400, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 38),
  -- Meganium - Swords Dance - TM75
  (154, 15400, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 39),
  -- Meganium - Bulldoze - TM78
  (154, 15400, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 40),
  -- Meganium - Dragon Tail - TM82
  (154, 15400, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 41),
  -- Meganium - Grass Knot - TM86
  (154, 15400, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 42),
  -- Meganium - Swagger - TM87
  (154, 15400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 43),
  -- Meganium - Substitute - TM90
  (154, 15400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 44),
  -- Meganium - Rock Smash - TM94
  (154, 15400, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 45),
  -- Meganium - Cut - HM01
  (154, 15400, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 46),
  -- Meganium - Strength - HM04
  (154, 15400, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 47),
  -- Meganium - Frenzy Plant - Move Tutor
  (154, 15400, 338, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 48),
  -- Meganium - Grass Pledge - Move Tutor
  (154, 15400, 520, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 49),
  -- Cyndaquil - Tackle - Level 1
  (155, 15500, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cyndaquil - Leer - Level 1
  (155, 15500, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cyndaquil - Smokescreen - Level 6
  (155, 15500, 108, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cyndaquil - Ember - Level 10
  (155, 15500, 52, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Cyndaquil - Quick Attack - Level 13
  (155, 15500, 98, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cyndaquil - Flame Wheel - Level 19
  (155, 15500, 172, 11, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Cyndaquil - Defense Curl - Level 22
  (155, 15500, 111, 11, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Cyndaquil - Flame Charge - Level 28
  (155, 15500, 488, 11, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Cyndaquil - Swift - Level 31
  (155, 15500, 129, 11, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Cyndaquil - Lava Plume - Level 37
  (155, 15500, 436, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Cyndaquil - Flamethrower - Level 40
  (155, 15500, 53, 11, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Cyndaquil - Inferno - Level 46
  (155, 15500, 517, 11, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Cyndaquil - Rollout - Level 49
  (155, 15500, 205, 11, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Cyndaquil - Double-Edge - Level 55
  (155, 15500, 38, 11, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Cyndaquil - Eruption - Level 58
  (155, 15500, 284, 11, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Cyndaquil - Toxic - TM06
  (155, 15500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Cyndaquil - Hidden Power - TM10
  (155, 15500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Cyndaquil - Sunny Day - TM11
  (155, 15500, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 18),
  -- Cyndaquil - Protect - TM17
  (155, 15500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Cyndaquil - Frustration - TM21
  (155, 15500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 20),
  -- Cyndaquil - Return - TM27
  (155, 15500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 21),
  -- Cyndaquil - Dig - TM28
  (155, 15500, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 22),
  -- Cyndaquil - Double Team - TM32
  (155, 15500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 23),
  -- Cyndaquil - Flamethrower - TM35
  (155, 15500, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 24),
  -- Cyndaquil - Fire Blast - TM38
  (155, 15500, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 25),
  -- Cyndaquil - Aerial Ace - TM40
  (155, 15500, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 26),
  -- Cyndaquil - Facade - TM42
  (155, 15500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 27),
  -- Cyndaquil - Flame Charge - TM43
  (155, 15500, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 28),
  -- Cyndaquil - Rest - TM44
  (155, 15500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 29),
  -- Cyndaquil - Attract - TM45
  (155, 15500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 30),
  -- Cyndaquil - Round - TM48
  (155, 15500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 31),
  -- Cyndaquil - Overheat - TM50
  (155, 15500, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 32),
  -- Cyndaquil - Incinerate - TM59
  (155, 15500, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 33),
  -- Cyndaquil - Will-O-Wisp - TM61
  (155, 15500, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 34),
  -- Cyndaquil - Swagger - TM87
  (155, 15500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 35),
  -- Cyndaquil - Substitute - TM90
  (155, 15500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 36),
  -- Cyndaquil - Wild Charge - TM93
  (155, 15500, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 37),
  -- Cyndaquil - Cut - HM01
  (155, 15500, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 38),
  -- Cyndaquil - Covet - Egg Move
  (155, 15500, 343, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Cyndaquil - Crush Claw - Egg Move
  (155, 15500, 306, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Cyndaquil - Double-Edge - Egg Move
  (155, 15500, 38, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Cyndaquil - Double Kick - Egg Move
  (155, 15500, 24, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cyndaquil - Extrasensory - Egg Move
  (155, 15500, 326, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cyndaquil - Flame Burst - Egg Move
  (155, 15500, 481, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cyndaquil - Flare Blitz - Egg Move
  (155, 15500, 394, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cyndaquil - Foresight - Egg Move
  (155, 15500, 193, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cyndaquil - Fury Swipes - Egg Move
  (155, 15500, 154, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cyndaquil - Howl - Egg Move
  (155, 15500, 336, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cyndaquil - Nature Power - Egg Move
  (155, 15500, 267, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cyndaquil - Quick Attack - Egg Move
  (155, 15500, 98, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cyndaquil - Reversal - Egg Move
  (155, 15500, 179, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cyndaquil - Thrash - Egg Move
  (155, 15500, 37, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cyndaquil - Fire Pledge - Move Tutor
  (155, 15500, 519, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 53),
  -- Quilava - Tackle - Level 1
  (156, 15600, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quilava - Leer - Level 1
  (156, 15600, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Quilava - Smokescreen - Level 1
  (156, 15600, 108, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Quilava - Smokescreen - Level 6
  (156, 15600, 108, 11, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Quilava - Ember - Level 10
  (156, 15600, 52, 11, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Quilava - Quick Attack - Level 13
  (156, 15600, 98, 11, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Quilava - Flame Wheel - Level 20
  (156, 15600, 172, 11, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Quilava - Defense Curl - Level 24
  (156, 15600, 111, 11, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Quilava - Swift - Level 31
  (156, 15600, 129, 11, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Quilava - Flame Charge - Level 35
  (156, 15600, 488, 11, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Quilava - Lava Plume - Level 42
  (156, 15600, 436, 11, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Quilava - Flamethrower - Level 46
  (156, 15600, 53, 11, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Quilava - Inferno - Level 53
  (156, 15600, 517, 11, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Quilava - Rollout - Level 57
  (156, 15600, 205, 11, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Quilava - Double-Edge - Level 64
  (156, 15600, 38, 11, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Quilava - Eruption - Level 68
  (156, 15600, 284, 11, NULL, 1, 68, NULL, NULL, NULL, 16),
  -- Quilava - Roar - TM05
  (156, 15600, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 17),
  -- Quilava - Toxic - TM06
  (156, 15600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Quilava - Hidden Power - TM10
  (156, 15600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Quilava - Sunny Day - TM11
  (156, 15600, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Quilava - Protect - TM17
  (156, 15600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Quilava - Frustration - TM21
  (156, 15600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Quilava - Return - TM27
  (156, 15600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 23),
  -- Quilava - Dig - TM28
  (156, 15600, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 24),
  -- Quilava - Brick Break - TM31
  (156, 15600, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 25),
  -- Quilava - Double Team - TM32
  (156, 15600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Quilava - Flamethrower - TM35
  (156, 15600, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 27),
  -- Quilava - Fire Blast - TM38
  (156, 15600, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 28),
  -- Quilava - Aerial Ace - TM40
  (156, 15600, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 29),
  -- Quilava - Facade - TM42
  (156, 15600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 30),
  -- Quilava - Flame Charge - TM43
  (156, 15600, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 31),
  -- Quilava - Rest - TM44
  (156, 15600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 32),
  -- Quilava - Attract - TM45
  (156, 15600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 33),
  -- Quilava - Round - TM48
  (156, 15600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 34),
  -- Quilava - Overheat - TM50
  (156, 15600, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 35),
  -- Quilava - Incinerate - TM59
  (156, 15600, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 36),
  -- Quilava - Will-O-Wisp - TM61
  (156, 15600, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 37),
  -- Quilava - Swagger - TM87
  (156, 15600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 38),
  -- Quilava - Substitute - TM90
  (156, 15600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 39),
  -- Quilava - Wild Charge - TM93
  (156, 15600, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 40),
  -- Quilava - Rock Smash - TM94
  (156, 15600, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 41),
  -- Quilava - Cut - HM01
  (156, 15600, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 42),
  -- Quilava - Strength - HM04
  (156, 15600, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 43),
  -- Quilava - Fire Pledge - Move Tutor
  (156, 15600, 519, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 44),
  -- Typhlosion - Gyro Ball - Level 1
  (157, 15700, 360, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Typhlosion - Tackle - Level 1
  (157, 15700, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Typhlosion - Leer - Level 1
  (157, 15700, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Typhlosion - Smokescreen - Level 1
  (157, 15700, 108, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Typhlosion - Ember - Level 1
  (157, 15700, 52, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Typhlosion - Smokescreen - Level 6
  (157, 15700, 108, 11, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Typhlosion - Ember - Level 10
  (157, 15700, 52, 11, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Typhlosion - Quick Attack - Level 13
  (157, 15700, 98, 11, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Typhlosion - Flame Wheel - Level 20
  (157, 15700, 172, 11, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Typhlosion - Defense Curl - Level 24
  (157, 15700, 111, 11, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Typhlosion - Swift - Level 31
  (157, 15700, 129, 11, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Typhlosion - Flame Charge - Level 35
  (157, 15700, 488, 11, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Typhlosion - Lava Plume - Level 43
  (157, 15700, 436, 11, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Typhlosion - Flamethrower - Level 48
  (157, 15700, 53, 11, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Typhlosion - Inferno - Level 56
  (157, 15700, 517, 11, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Typhlosion - Rollout - Level 61
  (157, 15700, 205, 11, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Typhlosion - Double-Edge - Level 69
  (157, 15700, 38, 11, NULL, 1, 69, NULL, NULL, NULL, 17),
  -- Typhlosion - Eruption - Level 74
  (157, 15700, 284, 11, NULL, 1, 74, NULL, NULL, NULL, 18),
  -- Typhlosion - Roar - TM05
  (157, 15700, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 19),
  -- Typhlosion - Toxic - TM06
  (157, 15700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Typhlosion - Hidden Power - TM10
  (157, 15700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Typhlosion - Sunny Day - TM11
  (157, 15700, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 22),
  -- Typhlosion - Hyper Beam - TM15
  (157, 15700, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 23),
  -- Typhlosion - Protect - TM17
  (157, 15700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Typhlosion - Frustration - TM21
  (157, 15700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Typhlosion - Solar Beam - TM22
  (157, 15700, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 26),
  -- Typhlosion - Earthquake - TM26
  (157, 15700, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 27),
  -- Typhlosion - Return - TM27
  (157, 15700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Typhlosion - Dig - TM28
  (157, 15700, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 29),
  -- Typhlosion - Brick Break - TM31
  (157, 15700, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 30),
  -- Typhlosion - Double Team - TM32
  (157, 15700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Typhlosion - Flamethrower - TM35
  (157, 15700, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 32),
  -- Typhlosion - Fire Blast - TM38
  (157, 15700, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 33),
  -- Typhlosion - Rock Tomb - TM39
  (157, 15700, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 34),
  -- Typhlosion - Aerial Ace - TM40
  (157, 15700, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 35),
  -- Typhlosion - Facade - TM42
  (157, 15700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Typhlosion - Flame Charge - TM43
  (157, 15700, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 37),
  -- Typhlosion - Rest - TM44
  (157, 15700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 38),
  -- Typhlosion - Attract - TM45
  (157, 15700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 39),
  -- Typhlosion - Round - TM48
  (157, 15700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 40),
  -- Typhlosion - Overheat - TM50
  (157, 15700, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 41),
  -- Typhlosion - Focus Blast - TM52
  (157, 15700, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 42),
  -- Typhlosion - Fling - TM56
  (157, 15700, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 43),
  -- Typhlosion - Incinerate - TM59
  (157, 15700, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 44),
  -- Typhlosion - Will-O-Wisp - TM61
  (157, 15700, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 45),
  -- Typhlosion - Shadow Claw - TM65
  (157, 15700, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 46),
  -- Typhlosion - Giga Impact - TM68
  (157, 15700, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 47),
  -- Typhlosion - Gyro Ball - TM74
  (157, 15700, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 48),
  -- Typhlosion - Bulldoze - TM78
  (157, 15700, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 49),
  -- Typhlosion - Rock Slide - TM80
  (157, 15700, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 50),
  -- Typhlosion - Swagger - TM87
  (157, 15700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 51),
  -- Typhlosion - Substitute - TM90
  (157, 15700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 52),
  -- Typhlosion - Wild Charge - TM93
  (157, 15700, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 53),
  -- Typhlosion - Rock Smash - TM94
  (157, 15700, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 54),
  -- Typhlosion - Cut - HM01
  (157, 15700, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 55),
  -- Typhlosion - Strength - HM04
  (157, 15700, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 56),
  -- Typhlosion - Blast Burn - Move Tutor
  (157, 15700, 307, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 57),
  -- Typhlosion - Fire Pledge - Move Tutor
  (157, 15700, 519, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 58),
  -- Totodile - Scratch - Level 1
  (158, 15800, 10, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Totodile - Leer - Level 1
  (158, 15800, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Totodile - Water Gun - Level 6
  (158, 15800, 55, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Totodile - Rage - Level 8
  (158, 15800, 99, 11, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Totodile - Bite - Level 13
  (158, 15800, 44, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Totodile - Scary Face - Level 15
  (158, 15800, 184, 11, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Totodile - Ice Fang - Level 20
  (158, 15800, 423, 11, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Totodile - Flail - Level 22
  (158, 15800, 175, 11, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Totodile - Crunch - Level 27
  (158, 15800, 242, 11, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Totodile - Chip Away - Level 29
  (158, 15800, 498, 11, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Totodile - Slash - Level 34
  (158, 15800, 163, 11, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Totodile - Screech - Level 36
  (158, 15800, 103, 11, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Totodile - Thrash - Level 41
  (158, 15800, 37, 11, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Totodile - Aqua Tail - Level 43
  (158, 15800, 401, 11, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Totodile - Superpower - Level 48
  (158, 15800, 276, 11, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Totodile - Hydro Pump - Level 50
  (158, 15800, 56, 11, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Totodile - Hone Claws - TM01
  (158, 15800, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 17),
  -- Totodile - Dragon Claw - TM02
  (158, 15800, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 18),
  -- Totodile - Toxic - TM06
  (158, 15800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Totodile - Hail - TM07
  (158, 15800, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 20),
  -- Totodile - Hidden Power - TM10
  (158, 15800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Totodile - Ice Beam - TM13
  (158, 15800, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 22),
  -- Totodile - Blizzard - TM14
  (158, 15800, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 23),
  -- Totodile - Protect - TM17
  (158, 15800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Totodile - Rain Dance - TM18
  (158, 15800, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Totodile - Frustration - TM21
  (158, 15800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Totodile - Return - TM27
  (158, 15800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Totodile - Dig - TM28
  (158, 15800, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 28),
  -- Totodile - Brick Break - TM31
  (158, 15800, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 29),
  -- Totodile - Double Team - TM32
  (158, 15800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Totodile - Rock Tomb - TM39
  (158, 15800, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 31),
  -- Totodile - Aerial Ace - TM40
  (158, 15800, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 32),
  -- Totodile - Facade - TM42
  (158, 15800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Totodile - Rest - TM44
  (158, 15800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Totodile - Attract - TM45
  (158, 15800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Totodile - Round - TM48
  (158, 15800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Totodile - Scald - TM55
  (158, 15800, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 37),
  -- Totodile - Fling - TM56
  (158, 15800, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 38),
  -- Totodile - Shadow Claw - TM65
  (158, 15800, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 39),
  -- Totodile - Swords Dance - TM75
  (158, 15800, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 40),
  -- Totodile - Rock Slide - TM80
  (158, 15800, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 41),
  -- Totodile - Swagger - TM87
  (158, 15800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 42),
  -- Totodile - Substitute - TM90
  (158, 15800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 43),
  -- Totodile - Cut - HM01
  (158, 15800, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 44),
  -- Totodile - Surf - HM03
  (158, 15800, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 45),
  -- Totodile - Waterfall - HM05
  (158, 15800, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 46),
  -- Totodile - Dive - HM06
  (158, 15800, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 47),
  -- Totodile - Ancient Power - Egg Move
  (158, 15800, 246, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Totodile - Aqua Jet - Egg Move
  (158, 15800, 453, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Totodile - Block - Egg Move
  (158, 15800, 335, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Totodile - Crunch - Egg Move
  (158, 15800, 242, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Totodile - Dragon Dance - Egg Move
  (158, 15800, 349, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Totodile - Fake Tears - Egg Move
  (158, 15800, 313, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Totodile - Hydro Pump - Egg Move
  (158, 15800, 56, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Totodile - Ice Punch - Egg Move
  (158, 15800, 8, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Totodile - Metal Claw - Egg Move
  (158, 15800, 232, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Totodile - Mud Sport - Egg Move
  (158, 15800, 300, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Totodile - Thrash - Egg Move
  (158, 15800, 37, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Totodile - Water Pulse - Egg Move
  (158, 15800, 352, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Totodile - Water Sport - Egg Move
  (158, 15800, 346, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Totodile - Water Pledge - Move Tutor
  (158, 15800, 518, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 61),
  -- Croconaw - Scratch - Level 1
  (159, 15900, 10, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Croconaw - Leer - Level 1
  (159, 15900, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Croconaw - Water Gun - Level 1
  (159, 15900, 55, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Croconaw - Water Gun - Level 6
  (159, 15900, 55, 11, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Croconaw - Rage - Level 8
  (159, 15900, 99, 11, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Croconaw - Bite - Level 13
  (159, 15900, 44, 11, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Croconaw - Scary Face - Level 15
  (159, 15900, 184, 11, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Croconaw - Ice Fang - Level 21
  (159, 15900, 423, 11, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Croconaw - Flail - Level 24
  (159, 15900, 175, 11, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Croconaw - Crunch - Level 30
  (159, 15900, 242, 11, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Croconaw - Chip Away - Level 33
  (159, 15900, 498, 11, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Croconaw - Slash - Level 39
  (159, 15900, 163, 11, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Croconaw - Screech - Level 42
  (159, 15900, 103, 11, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Croconaw - Thrash - Level 48
  (159, 15900, 37, 11, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Croconaw - Aqua Tail - Level 51
  (159, 15900, 401, 11, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Croconaw - Superpower - Level 57
  (159, 15900, 276, 11, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Croconaw - Hydro Pump - Level 60
  (159, 15900, 56, 11, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Croconaw - Hone Claws - TM01
  (159, 15900, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 18),
  -- Croconaw - Dragon Claw - TM02
  (159, 15900, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 19),
  -- Croconaw - Roar - TM05
  (159, 15900, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 20),
  -- Croconaw - Toxic - TM06
  (159, 15900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 21),
  -- Croconaw - Hail - TM07
  (159, 15900, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 22),
  -- Croconaw - Hidden Power - TM10
  (159, 15900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 23),
  -- Croconaw - Ice Beam - TM13
  (159, 15900, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 24),
  -- Croconaw - Blizzard - TM14
  (159, 15900, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 25),
  -- Croconaw - Protect - TM17
  (159, 15900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 26),
  -- Croconaw - Rain Dance - TM18
  (159, 15900, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 27),
  -- Croconaw - Frustration - TM21
  (159, 15900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Croconaw - Return - TM27
  (159, 15900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Croconaw - Dig - TM28
  (159, 15900, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 30),
  -- Croconaw - Brick Break - TM31
  (159, 15900, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 31),
  -- Croconaw - Double Team - TM32
  (159, 15900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 32),
  -- Croconaw - Rock Tomb - TM39
  (159, 15900, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 33),
  -- Croconaw - Aerial Ace - TM40
  (159, 15900, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 34),
  -- Croconaw - Facade - TM42
  (159, 15900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 35),
  -- Croconaw - Rest - TM44
  (159, 15900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 36),
  -- Croconaw - Attract - TM45
  (159, 15900, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 37),
  -- Croconaw - Round - TM48
  (159, 15900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 38),
  -- Croconaw - Scald - TM55
  (159, 15900, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 39),
  -- Croconaw - Fling - TM56
  (159, 15900, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 40),
  -- Croconaw - Shadow Claw - TM65
  (159, 15900, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 41),
  -- Croconaw - Swords Dance - TM75
  (159, 15900, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 42),
  -- Croconaw - Rock Slide - TM80
  (159, 15900, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 43),
  -- Croconaw - Swagger - TM87
  (159, 15900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 44),
  -- Croconaw - Substitute - TM90
  (159, 15900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 45),
  -- Croconaw - Rock Smash - TM94
  (159, 15900, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 46),
  -- Croconaw - Cut - HM01
  (159, 15900, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 47),
  -- Croconaw - Surf - HM03
  (159, 15900, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 48),
  -- Croconaw - Strength - HM04
  (159, 15900, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 49),
  -- Croconaw - Waterfall - HM05
  (159, 15900, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 50),
  -- Croconaw - Dive - HM06
  (159, 15900, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 51),
  -- Croconaw - Water Pledge - Move Tutor
  (159, 15900, 518, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 52),
  -- Feraligatr - Scratch - Level 1
  (160, 16000, 10, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Feraligatr - Leer - Level 1
  (160, 16000, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Feraligatr - Water Gun - Level 1
  (160, 16000, 55, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Feraligatr - Rage - Level 1
  (160, 16000, 99, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Feraligatr - Water Gun - Level 6
  (160, 16000, 55, 11, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Feraligatr - Rage - Level 8
  (160, 16000, 99, 11, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Feraligatr - Bite - Level 13
  (160, 16000, 44, 11, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Feraligatr - Scary Face - Level 15
  (160, 16000, 184, 11, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Feraligatr - Ice Fang - Level 21
  (160, 16000, 423, 11, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Feraligatr - Flail - Level 24
  (160, 16000, 175, 11, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Feraligatr - Agility - Level 30
  (160, 16000, 97, 11, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Feraligatr - Crunch - Level 32
  (160, 16000, 242, 11, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Feraligatr - Chip Away - Level 37
  (160, 16000, 498, 11, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Feraligatr - Slash - Level 45
  (160, 16000, 163, 11, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Feraligatr - Screech - Level 50
  (160, 16000, 103, 11, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Feraligatr - Thrash - Level 58
  (160, 16000, 37, 11, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Feraligatr - Aqua Tail - Level 63
  (160, 16000, 401, 11, NULL, 1, 63, NULL, NULL, NULL, 17),
  -- Feraligatr - Superpower - Level 71
  (160, 16000, 276, 11, NULL, 1, 71, NULL, NULL, NULL, 18),
  -- Feraligatr - Hydro Pump - Level 76
  (160, 16000, 56, 11, NULL, 1, 76, NULL, NULL, NULL, 19),
  -- Feraligatr - Hone Claws - TM01
  (160, 16000, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 20),
  -- Feraligatr - Dragon Claw - TM02
  (160, 16000, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 21),
  -- Feraligatr - Roar - TM05
  (160, 16000, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 22),
  -- Feraligatr - Toxic - TM06
  (160, 16000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 23),
  -- Feraligatr - Hail - TM07
  (160, 16000, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 24),
  -- Feraligatr - Hidden Power - TM10
  (160, 16000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 25),
  -- Feraligatr - Ice Beam - TM13
  (160, 16000, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 26),
  -- Feraligatr - Blizzard - TM14
  (160, 16000, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 27),
  -- Feraligatr - Hyper Beam - TM15
  (160, 16000, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 28),
  -- Feraligatr - Protect - TM17
  (160, 16000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 29),
  -- Feraligatr - Rain Dance - TM18
  (160, 16000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 30),
  -- Feraligatr - Frustration - TM21
  (160, 16000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 31),
  -- Feraligatr - Earthquake - TM26
  (160, 16000, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 32),
  -- Feraligatr - Return - TM27
  (160, 16000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 33),
  -- Feraligatr - Dig - TM28
  (160, 16000, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 34),
  -- Feraligatr - Brick Break - TM31
  (160, 16000, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 35),
  -- Feraligatr - Double Team - TM32
  (160, 16000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 36),
  -- Feraligatr - Rock Tomb - TM39
  (160, 16000, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 37),
  -- Feraligatr - Aerial Ace - TM40
  (160, 16000, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 38),
  -- Feraligatr - Facade - TM42
  (160, 16000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 39),
  -- Feraligatr - Rest - TM44
  (160, 16000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 40),
  -- Feraligatr - Attract - TM45
  (160, 16000, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 41),
  -- Feraligatr - Round - TM48
  (160, 16000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 42),
  -- Feraligatr - Focus Blast - TM52
  (160, 16000, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 43),
  -- Feraligatr - Scald - TM55
  (160, 16000, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 44),
  -- Feraligatr - Fling - TM56
  (160, 16000, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 45),
  -- Feraligatr - Shadow Claw - TM65
  (160, 16000, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 46),
  -- Feraligatr - Giga Impact - TM68
  (160, 16000, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 47),
  -- Feraligatr - Swords Dance - TM75
  (160, 16000, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 48),
  -- Feraligatr - Bulldoze - TM78
  (160, 16000, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 49),
  -- Feraligatr - Rock Slide - TM80
  (160, 16000, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 50),
  -- Feraligatr - Dragon Tail - TM82
  (160, 16000, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 51),
  -- Feraligatr - Swagger - TM87
  (160, 16000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 52),
  -- Feraligatr - Substitute - TM90
  (160, 16000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 53),
  -- Feraligatr - Rock Smash - TM94
  (160, 16000, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 54),
  -- Feraligatr - Cut - HM01
  (160, 16000, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 55),
  -- Feraligatr - Surf - HM03
  (160, 16000, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 56),
  -- Feraligatr - Strength - HM04
  (160, 16000, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 57),
  -- Feraligatr - Waterfall - HM05
  (160, 16000, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 58),
  -- Feraligatr - Dive - HM06
  (160, 16000, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 59),
  -- Feraligatr - Hydro Cannon - Move Tutor
  (160, 16000, 308, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 60),
  -- Feraligatr - Water Pledge - Move Tutor
  (160, 16000, 518, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 61),
  -- Sentret - Scratch - Level 1
  (161, 16100, 10, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sentret - Foresight - Level 1
  (161, 16100, 193, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sentret - Defense Curl - Level 4
  (161, 16100, 111, 11, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Sentret - Quick Attack - Level 7
  (161, 16100, 98, 11, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Sentret - Fury Swipes - Level 13
  (161, 16100, 154, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Sentret - Helping Hand - Level 16
  (161, 16100, 270, 11, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Sentret - Follow Me - Level 19
  (161, 16100, 266, 11, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Sentret - Slam - Level 25
  (161, 16100, 21, 11, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Sentret - Rest - Level 28
  (161, 16100, 156, 11, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Sentret - Sucker Punch - Level 31
  (161, 16100, 389, 11, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Sentret - Amnesia - Level 36
  (161, 16100, 133, 11, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Sentret - Baton Pass - Level 39
  (161, 16100, 226, 11, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Sentret - Me First - Level 42
  (161, 16100, 382, 11, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Sentret - Hyper Voice - Level 47
  (161, 16100, 304, 11, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Sentret - Hone Claws - TM01
  (161, 16100, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 15),
  -- Sentret - Toxic - TM06
  (161, 16100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Sentret - Hidden Power - TM10
  (161, 16100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Sentret - Sunny Day - TM11
  (161, 16100, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 18),
  -- Sentret - Ice Beam - TM13
  (161, 16100, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 19),
  -- Sentret - Protect - TM17
  (161, 16100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 20),
  -- Sentret - Rain Dance - TM18
  (161, 16100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 21),
  -- Sentret - Frustration - TM21
  (161, 16100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Sentret - Solar Beam - TM22
  (161, 16100, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 23),
  -- Sentret - Thunderbolt - TM24
  (161, 16100, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 24),
  -- Sentret - Return - TM27
  (161, 16100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Sentret - Dig - TM28
  (161, 16100, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 26),
  -- Sentret - Shadow Ball - TM30
  (161, 16100, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 27),
  -- Sentret - Brick Break - TM31
  (161, 16100, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 28),
  -- Sentret - Double Team - TM32
  (161, 16100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 29),
  -- Sentret - Flamethrower - TM35
  (161, 16100, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 30),
  -- Sentret - Facade - TM42
  (161, 16100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 31),
  -- Sentret - Rest - TM44
  (161, 16100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 32),
  -- Sentret - Attract - TM45
  (161, 16100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 33),
  -- Sentret - Thief - TM46
  (161, 16100, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 34),
  -- Sentret - Round - TM48
  (161, 16100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 35),
  -- Sentret - Echoed Voice - TM49
  (161, 16100, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 36),
  -- Sentret - Fling - TM56
  (161, 16100, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 37),
  -- Sentret - Charge Beam - TM57
  (161, 16100, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 38),
  -- Sentret - Shadow Claw - TM65
  (161, 16100, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 39),
  -- Sentret - Retaliate - TM67
  (161, 16100, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 40),
  -- Sentret - Work Up - TM83
  (161, 16100, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 41),
  -- Sentret - Grass Knot - TM86
  (161, 16100, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 42),
  -- Sentret - Swagger - TM87
  (161, 16100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 43),
  -- Sentret - U-turn - TM89
  (161, 16100, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 44),
  -- Sentret - Substitute - TM90
  (161, 16100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 45),
  -- Sentret - Cut - HM01
  (161, 16100, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 46),
  -- Sentret - Surf - HM03
  (161, 16100, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 47),
  -- Sentret - Assist - Egg Move
  (161, 16100, 274, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Sentret - Charm - Egg Move
  (161, 16100, 204, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Sentret - Covet - Egg Move
  (161, 16100, 343, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Sentret - Double-Edge - Egg Move
  (161, 16100, 38, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Sentret - Focus Energy - Egg Move
  (161, 16100, 116, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Sentret - Iron Tail - Egg Move
  (161, 16100, 231, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sentret - Last Resort - Egg Move
  (161, 16100, 387, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sentret - Natural Gift - Egg Move
  (161, 16100, 363, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sentret - Pursuit - Egg Move
  (161, 16100, 228, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sentret - Reversal - Egg Move
  (161, 16100, 179, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sentret - Slash - Egg Move
  (161, 16100, 163, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sentret - Trick - Egg Move
  (161, 16100, 271, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Furret - Scratch - Level 1
  (162, 16200, 10, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Furret - Foresight - Level 1
  (162, 16200, 193, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Furret - Defense Curl - Level 1
  (162, 16200, 111, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Furret - Quick Attack - Level 1
  (162, 16200, 98, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Furret - Defense Curl - Level 4
  (162, 16200, 111, 11, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Furret - Quick Attack - Level 7
  (162, 16200, 98, 11, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Furret - Fury Swipes - Level 13
  (162, 16200, 154, 11, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Furret - Helping Hand - Level 17
  (162, 16200, 270, 11, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Furret - Follow Me - Level 21
  (162, 16200, 266, 11, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Furret - Slam - Level 28
  (162, 16200, 21, 11, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Furret - Rest - Level 32
  (162, 16200, 156, 11, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Furret - Sucker Punch - Level 36
  (162, 16200, 389, 11, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Furret - Amnesia - Level 42
  (162, 16200, 133, 11, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Furret - Baton Pass - Level 46
  (162, 16200, 226, 11, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Furret - Me First - Level 50
  (162, 16200, 382, 11, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Furret - Hyper Voice - Level 56
  (162, 16200, 304, 11, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Furret - Hone Claws - TM01
  (162, 16200, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 17),
  -- Furret - Toxic - TM06
  (162, 16200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Furret - Hidden Power - TM10
  (162, 16200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Furret - Sunny Day - TM11
  (162, 16200, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Furret - Ice Beam - TM13
  (162, 16200, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 21),
  -- Furret - Blizzard - TM14
  (162, 16200, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 22),
  -- Furret - Hyper Beam - TM15
  (162, 16200, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 23),
  -- Furret - Protect - TM17
  (162, 16200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Furret - Rain Dance - TM18
  (162, 16200, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Furret - Frustration - TM21
  (162, 16200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Furret - Solar Beam - TM22
  (162, 16200, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 27),
  -- Furret - Thunderbolt - TM24
  (162, 16200, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 28),
  -- Furret - Thunder - TM25
  (162, 16200, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 29),
  -- Furret - Return - TM27
  (162, 16200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Furret - Dig - TM28
  (162, 16200, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 31),
  -- Furret - Shadow Ball - TM30
  (162, 16200, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 32),
  -- Furret - Brick Break - TM31
  (162, 16200, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 33),
  -- Furret - Double Team - TM32
  (162, 16200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 34),
  -- Furret - Flamethrower - TM35
  (162, 16200, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 35),
  -- Furret - Facade - TM42
  (162, 16200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Furret - Rest - TM44
  (162, 16200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 37),
  -- Furret - Attract - TM45
  (162, 16200, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 38),
  -- Furret - Thief - TM46
  (162, 16200, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 39),
  -- Furret - Round - TM48
  (162, 16200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 40),
  -- Furret - Echoed Voice - TM49
  (162, 16200, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 41),
  -- Furret - Focus Blast - TM52
  (162, 16200, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 42),
  -- Furret - Fling - TM56
  (162, 16200, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 43),
  -- Furret - Charge Beam - TM57
  (162, 16200, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 44),
  -- Furret - Shadow Claw - TM65
  (162, 16200, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 45),
  -- Furret - Retaliate - TM67
  (162, 16200, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 46),
  -- Furret - Giga Impact - TM68
  (162, 16200, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 47),
  -- Furret - Work Up - TM83
  (162, 16200, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 48),
  -- Furret - Grass Knot - TM86
  (162, 16200, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 49),
  -- Furret - Swagger - TM87
  (162, 16200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 50),
  -- Furret - U-turn - TM89
  (162, 16200, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 51),
  -- Furret - Substitute - TM90
  (162, 16200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 52),
  -- Furret - Rock Smash - TM94
  (162, 16200, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 53),
  -- Furret - Cut - HM01
  (162, 16200, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 54),
  -- Furret - Surf - HM03
  (162, 16200, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 55),
  -- Furret - Strength - HM04
  (162, 16200, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 56),
  -- Hoothoot - Tackle - Level 1
  (163, 16300, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoothoot - Growl - Level 1
  (163, 16300, 45, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hoothoot - Foresight - Level 1
  (163, 16300, 193, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hoothoot - Hypnosis - Level 5
  (163, 16300, 95, 11, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Hoothoot - Peck - Level 9
  (163, 16300, 64, 11, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Hoothoot - Uproar - Level 13
  (163, 16300, 253, 11, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Hoothoot - Reflect - Level 17
  (163, 16300, 115, 11, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Hoothoot - Confusion - Level 21
  (163, 16300, 93, 11, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Hoothoot - Echoed Voice - Level 25
  (163, 16300, 497, 11, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Hoothoot - Take Down - Level 29
  (163, 16300, 36, 11, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Hoothoot - Air Slash - Level 33
  (163, 16300, 403, 11, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Hoothoot - Zen Headbutt - Level 37
  (163, 16300, 428, 11, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Hoothoot - Synchronoise - Level 41
  (163, 16300, 485, 11, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Hoothoot - Extrasensory - Level 45
  (163, 16300, 326, 11, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Hoothoot - Psycho Shift - Level 49
  (163, 16300, 375, 11, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Hoothoot - Roost - Level 53
  (163, 16300, 355, 11, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Hoothoot - Dream Eater - Level 57
  (163, 16300, 138, 11, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Hoothoot - Toxic - TM06
  (163, 16300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Hoothoot - Hidden Power - TM10
  (163, 16300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Hoothoot - Sunny Day - TM11
  (163, 16300, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Hoothoot - Protect - TM17
  (163, 16300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Hoothoot - Rain Dance - TM18
  (163, 16300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 22),
  -- Hoothoot - Frustration - TM21
  (163, 16300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Hoothoot - Return - TM27
  (163, 16300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Hoothoot - Psychic - TM29
  (163, 16300, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 25),
  -- Hoothoot - Shadow Ball - TM30
  (163, 16300, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 26),
  -- Hoothoot - Double Team - TM32
  (163, 16300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Hoothoot - Reflect - TM33
  (163, 16300, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 28),
  -- Hoothoot - Aerial Ace - TM40
  (163, 16300, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 29),
  -- Hoothoot - Facade - TM42
  (163, 16300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 30),
  -- Hoothoot - Rest - TM44
  (163, 16300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 31),
  -- Hoothoot - Attract - TM45
  (163, 16300, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 32),
  -- Hoothoot - Thief - TM46
  (163, 16300, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 33),
  -- Hoothoot - Round - TM48
  (163, 16300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 34),
  -- Hoothoot - Echoed Voice - TM49
  (163, 16300, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 35),
  -- Hoothoot - Psych Up - TM77
  (163, 16300, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 36),
  -- Hoothoot - Work Up - TM83
  (163, 16300, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 37),
  -- Hoothoot - Dream Eater - TM85
  (163, 16300, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 38),
  -- Hoothoot - Swagger - TM87
  (163, 16300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 39),
  -- Hoothoot - Pluck - TM88
  (163, 16300, 365, 11, NULL, 2, NULL, NULL, 11002088, NULL, 40),
  -- Hoothoot - Substitute - TM90
  (163, 16300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 41),
  -- Hoothoot - Fly - HM02
  (163, 16300, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 42),
  -- Hoothoot - Agility - Egg Move
  (163, 16300, 97, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Hoothoot - Defog - Egg Move
  (163, 16300, 432, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Hoothoot - Feint Attack - Egg Move
  (163, 16300, 185, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Hoothoot - Feather Dance - Egg Move
  (163, 16300, 297, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Hoothoot - Mirror Move - Egg Move
  (163, 16300, 119, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Hoothoot - Night Shade - Egg Move
  (163, 16300, 101, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Hoothoot - Sky Attack - Egg Move
  (163, 16300, 143, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Hoothoot - Supersonic - Egg Move
  (163, 16300, 48, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Hoothoot - Whirlwind - Egg Move
  (163, 16300, 18, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Hoothoot - Wing Attack - Egg Move
  (163, 16300, 17, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Noctowl - Sky Attack - Level 1
  (164, 16400, 143, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Noctowl - Tackle - Level 1
  (164, 16400, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Noctowl - Growl - Level 1
  (164, 16400, 45, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Noctowl - Foresight - Level 1
  (164, 16400, 193, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Noctowl - Hypnosis - Level 1
  (164, 16400, 95, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Noctowl - Hypnosis - Level 5
  (164, 16400, 95, 11, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Noctowl - Peck - Level 9
  (164, 16400, 64, 11, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Noctowl - Uproar - Level 13
  (164, 16400, 253, 11, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Noctowl - Reflect - Level 17
  (164, 16400, 115, 11, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Noctowl - Confusion - Level 22
  (164, 16400, 93, 11, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Noctowl - Echoed Voice - Level 27
  (164, 16400, 497, 11, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Noctowl - Take Down - Level 32
  (164, 16400, 36, 11, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Noctowl - Air Slash - Level 37
  (164, 16400, 403, 11, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Noctowl - Zen Headbutt - Level 42
  (164, 16400, 428, 11, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Noctowl - Synchronoise - Level 47
  (164, 16400, 485, 11, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Noctowl - Extrasensory - Level 52
  (164, 16400, 326, 11, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Noctowl - Psycho Shift - Level 57
  (164, 16400, 375, 11, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Noctowl - Roost - Level 62
  (164, 16400, 355, 11, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Noctowl - Dream Eater - Level 67
  (164, 16400, 138, 11, NULL, 1, 67, NULL, NULL, NULL, 19),
  -- Noctowl - Toxic - TM06
  (164, 16400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Noctowl - Hidden Power - TM10
  (164, 16400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Noctowl - Sunny Day - TM11
  (164, 16400, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 22),
  -- Noctowl - Hyper Beam - TM15
  (164, 16400, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 23),
  -- Noctowl - Protect - TM17
  (164, 16400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Noctowl - Rain Dance - TM18
  (164, 16400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Noctowl - Frustration - TM21
  (164, 16400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Noctowl - Return - TM27
  (164, 16400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Noctowl - Psychic - TM29
  (164, 16400, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 28),
  -- Noctowl - Shadow Ball - TM30
  (164, 16400, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 29),
  -- Noctowl - Double Team - TM32
  (164, 16400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Noctowl - Reflect - TM33
  (164, 16400, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 31),
  -- Noctowl - Aerial Ace - TM40
  (164, 16400, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 32),
  -- Noctowl - Facade - TM42
  (164, 16400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Noctowl - Rest - TM44
  (164, 16400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Noctowl - Attract - TM45
  (164, 16400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Noctowl - Thief - TM46
  (164, 16400, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 36),
  -- Noctowl - Round - TM48
  (164, 16400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Noctowl - Echoed Voice - TM49
  (164, 16400, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 38),
  -- Noctowl - Giga Impact - TM68
  (164, 16400, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 39),
  -- Noctowl - Psych Up - TM77
  (164, 16400, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 40),
  -- Noctowl - Work Up - TM83
  (164, 16400, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 41),
  -- Noctowl - Dream Eater - TM85
  (164, 16400, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 42),
  -- Noctowl - Swagger - TM87
  (164, 16400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 43),
  -- Noctowl - Pluck - TM88
  (164, 16400, 365, 11, NULL, 2, NULL, NULL, 11002088, NULL, 44),
  -- Noctowl - Substitute - TM90
  (164, 16400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 45),
  -- Noctowl - Fly - HM02
  (164, 16400, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 46),
  -- Ledyba - Tackle - Level 1
  (165, 16500, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ledyba - Supersonic - Level 6
  (165, 16500, 48, 11, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Ledyba - Comet Punch - Level 9
  (165, 16500, 4, 11, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Ledyba - Light Screen - Level 14
  (165, 16500, 113, 11, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Ledyba - Reflect - Level 14
  (165, 16500, 115, 11, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Ledyba - Safeguard - Level 14
  (165, 16500, 219, 11, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Ledyba - Mach Punch - Level 17
  (165, 16500, 183, 11, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Ledyba - Baton Pass - Level 22
  (165, 16500, 226, 11, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Ledyba - Silver Wind - Level 25
  (165, 16500, 318, 11, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Ledyba - Agility - Level 30
  (165, 16500, 97, 11, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Ledyba - Swift - Level 33
  (165, 16500, 129, 11, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Ledyba - Double-Edge - Level 38
  (165, 16500, 38, 11, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Ledyba - Bug Buzz - Level 41
  (165, 16500, 405, 11, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Ledyba - Toxic - TM06
  (165, 16500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 14),
  -- Ledyba - Hidden Power - TM10
  (165, 16500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 15),
  -- Ledyba - Sunny Day - TM11
  (165, 16500, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 16),
  -- Ledyba - Light Screen - TM16
  (165, 16500, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 17),
  -- Ledyba - Protect - TM17
  (165, 16500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 18),
  -- Ledyba - Safeguard - TM20
  (165, 16500, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 19),
  -- Ledyba - Frustration - TM21
  (165, 16500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 20),
  -- Ledyba - Solar Beam - TM22
  (165, 16500, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 21),
  -- Ledyba - Return - TM27
  (165, 16500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 22),
  -- Ledyba - Dig - TM28
  (165, 16500, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 23),
  -- Ledyba - Brick Break - TM31
  (165, 16500, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 24),
  -- Ledyba - Double Team - TM32
  (165, 16500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 25),
  -- Ledyba - Reflect - TM33
  (165, 16500, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 26),
  -- Ledyba - Aerial Ace - TM40
  (165, 16500, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 27),
  -- Ledyba - Facade - TM42
  (165, 16500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 28),
  -- Ledyba - Rest - TM44
  (165, 16500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 29),
  -- Ledyba - Attract - TM45
  (165, 16500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 30),
  -- Ledyba - Thief - TM46
  (165, 16500, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 31),
  -- Ledyba - Round - TM48
  (165, 16500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Ledyba - Fling - TM56
  (165, 16500, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 33),
  -- Ledyba - Acrobatics - TM62
  (165, 16500, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 34),
  -- Ledyba - Flash - TM70
  (165, 16500, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 35),
  -- Ledyba - Swords Dance - TM75
  (165, 16500, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 36),
  -- Ledyba - Struggle Bug - TM76
  (165, 16500, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 37),
  -- Ledyba - Swagger - TM87
  (165, 16500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 38),
  -- Ledyba - U-turn - TM89
  (165, 16500, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 39),
  -- Ledyba - Substitute - TM90
  (165, 16500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 40),
  -- Ledyba - Bide - Egg Move
  (165, 16500, 117, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Ledyba - Bug Bite - Egg Move
  (165, 16500, 450, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Ledyba - Bug Buzz - Egg Move
  (165, 16500, 405, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Ledyba - Dizzy Punch - Egg Move
  (165, 16500, 146, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Ledyba - Drain Punch - Egg Move
  (165, 16500, 409, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Ledyba - Encore - Egg Move
  (165, 16500, 227, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Ledyba - Focus Punch - Egg Move
  (165, 16500, 264, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ledyba - Knock Off - Egg Move
  (165, 16500, 282, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ledyba - Psybeam - Egg Move
  (165, 16500, 60, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Ledyba - Screech - Egg Move
  (165, 16500, 103, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Ledyba - Silver Wind - Egg Move
  (165, 16500, 318, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Ledian - Tackle - Level 1
  (166, 16600, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ledian - Supersonic - Level 1
  (166, 16600, 48, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ledian - Comet Punch - Level 1
  (166, 16600, 4, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ledian - Supersonic - Level 6
  (166, 16600, 48, 11, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Ledian - Comet Punch - Level 9
  (166, 16600, 4, 11, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Ledian - Light Screen - Level 14
  (166, 16600, 113, 11, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Ledian - Reflect - Level 14
  (166, 16600, 115, 11, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Ledian - Safeguard - Level 14
  (166, 16600, 219, 11, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Ledian - Mach Punch - Level 17
  (166, 16600, 183, 11, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Ledian - Baton Pass - Level 24
  (166, 16600, 226, 11, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Ledian - Silver Wind - Level 29
  (166, 16600, 318, 11, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Ledian - Agility - Level 36
  (166, 16600, 97, 11, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Ledian - Swift - Level 41
  (166, 16600, 129, 11, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Ledian - Double-Edge - Level 48
  (166, 16600, 38, 11, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Ledian - Bug Buzz - Level 53
  (166, 16600, 405, 11, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Ledian - Toxic - TM06
  (166, 16600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Ledian - Hidden Power - TM10
  (166, 16600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Ledian - Sunny Day - TM11
  (166, 16600, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 18),
  -- Ledian - Hyper Beam - TM15
  (166, 16600, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 19),
  -- Ledian - Light Screen - TM16
  (166, 16600, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 20),
  -- Ledian - Protect - TM17
  (166, 16600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Ledian - Safeguard - TM20
  (166, 16600, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 22),
  -- Ledian - Frustration - TM21
  (166, 16600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Ledian - Solar Beam - TM22
  (166, 16600, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 24),
  -- Ledian - Return - TM27
  (166, 16600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Ledian - Dig - TM28
  (166, 16600, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 26),
  -- Ledian - Brick Break - TM31
  (166, 16600, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 27),
  -- Ledian - Double Team - TM32
  (166, 16600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Ledian - Reflect - TM33
  (166, 16600, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 29),
  -- Ledian - Aerial Ace - TM40
  (166, 16600, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 30),
  -- Ledian - Facade - TM42
  (166, 16600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 31),
  -- Ledian - Rest - TM44
  (166, 16600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 32),
  -- Ledian - Attract - TM45
  (166, 16600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 33),
  -- Ledian - Thief - TM46
  (166, 16600, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 34),
  -- Ledian - Round - TM48
  (166, 16600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 35),
  -- Ledian - Focus Blast - TM52
  (166, 16600, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 36),
  -- Ledian - Fling - TM56
  (166, 16600, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 37),
  -- Ledian - Acrobatics - TM62
  (166, 16600, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 38),
  -- Ledian - Giga Impact - TM68
  (166, 16600, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 39),
  -- Ledian - Flash - TM70
  (166, 16600, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 40),
  -- Ledian - Swords Dance - TM75
  (166, 16600, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 41),
  -- Ledian - Struggle Bug - TM76
  (166, 16600, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 42),
  -- Ledian - Swagger - TM87
  (166, 16600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 43),
  -- Ledian - U-turn - TM89
  (166, 16600, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 44),
  -- Ledian - Substitute - TM90
  (166, 16600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 45),
  -- Ledian - Rock Smash - TM94
  (166, 16600, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 46),
  -- Ledian - Strength - HM04
  (166, 16600, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 47),
  -- Spinarak - Poison Sting - Level 1
  (167, 16700, 40, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spinarak - String Shot - Level 1
  (167, 16700, 81, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Spinarak - Scary Face - Level 5
  (167, 16700, 184, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Spinarak - Constrict - Level 8
  (167, 16700, 132, 11, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Spinarak - Leech Life - Level 12
  (167, 16700, 141, 11, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Spinarak - Night Shade - Level 15
  (167, 16700, 101, 11, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Spinarak - Shadow Sneak - Level 19
  (167, 16700, 425, 11, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Spinarak - Fury Swipes - Level 22
  (167, 16700, 154, 11, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Spinarak - Sucker Punch - Level 26
  (167, 16700, 389, 11, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Spinarak - Spider Web - Level 29
  (167, 16700, 169, 11, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Spinarak - Agility - Level 33
  (167, 16700, 97, 11, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Spinarak - Pin Missile - Level 36
  (167, 16700, 42, 11, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Spinarak - Psychic - Level 40
  (167, 16700, 94, 11, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Spinarak - Poison Jab - Level 43
  (167, 16700, 398, 11, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Spinarak - Cross Poison - Level 47
  (167, 16700, 440, 11, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Spinarak - Hone Claws - TM01
  (167, 16700, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 16),
  -- Spinarak - Toxic - TM06
  (167, 16700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Spinarak - Venoshock - TM09
  (167, 16700, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 18),
  -- Spinarak - Hidden Power - TM10
  (167, 16700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Spinarak - Sunny Day - TM11
  (167, 16700, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Spinarak - Protect - TM17
  (167, 16700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Spinarak - Frustration - TM21
  (167, 16700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Spinarak - Solar Beam - TM22
  (167, 16700, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 23),
  -- Spinarak - Return - TM27
  (167, 16700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Spinarak - Dig - TM28
  (167, 16700, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 25),
  -- Spinarak - Psychic - TM29
  (167, 16700, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 26),
  -- Spinarak - Double Team - TM32
  (167, 16700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Spinarak - Sludge Bomb - TM36
  (167, 16700, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 28),
  -- Spinarak - Facade - TM42
  (167, 16700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 29),
  -- Spinarak - Rest - TM44
  (167, 16700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 30),
  -- Spinarak - Attract - TM45
  (167, 16700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 31),
  -- Spinarak - Thief - TM46
  (167, 16700, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 32),
  -- Spinarak - Round - TM48
  (167, 16700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 33),
  -- Spinarak - Flash - TM70
  (167, 16700, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 34),
  -- Spinarak - Struggle Bug - TM76
  (167, 16700, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 35),
  -- Spinarak - X-Scissor - TM81
  (167, 16700, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 36),
  -- Spinarak - Poison Jab - TM84
  (167, 16700, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 37),
  -- Spinarak - Swagger - TM87
  (167, 16700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 38),
  -- Spinarak - Substitute - TM90
  (167, 16700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 39),
  -- Spinarak - Baton Pass - Egg Move
  (167, 16700, 226, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Spinarak - Disable - Egg Move
  (167, 16700, 50, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Spinarak - Electroweb - Egg Move
  (167, 16700, 527, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Spinarak - Night Slash - Egg Move
  (167, 16700, 400, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Spinarak - Psybeam - Egg Move
  (167, 16700, 60, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Spinarak - Pursuit - Egg Move
  (167, 16700, 228, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Spinarak - Rage Powder - Egg Move
  (167, 16700, 476, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Spinarak - Signal Beam - Egg Move
  (167, 16700, 324, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Spinarak - Sonic Boom - Egg Move
  (167, 16700, 49, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Spinarak - Toxic Spikes - Egg Move
  (167, 16700, 390, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spinarak - Twineedle - Egg Move
  (167, 16700, 41, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Ariados - Bug Bite - Level 1
  (168, 16800, 450, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ariados - Poison Sting - Level 1
  (168, 16800, 40, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ariados - String Shot - Level 1
  (168, 16800, 81, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ariados - Scary Face - Level 1
  (168, 16800, 184, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ariados - Constrict - Level 1
  (168, 16800, 132, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ariados - Scary Face - Level 5
  (168, 16800, 184, 11, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Ariados - Constrict - Level 8
  (168, 16800, 132, 11, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Ariados - Leech Life - Level 12
  (168, 16800, 141, 11, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Ariados - Night Shade - Level 15
  (168, 16800, 101, 11, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Ariados - Shadow Sneak - Level 19
  (168, 16800, 425, 11, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Ariados - Fury Swipes - Level 23
  (168, 16800, 154, 11, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Ariados - Sucker Punch - Level 28
  (168, 16800, 389, 11, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Ariados - Spider Web - Level 32
  (168, 16800, 169, 11, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Ariados - Agility - Level 37
  (168, 16800, 97, 11, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Ariados - Pin Missile - Level 41
  (168, 16800, 42, 11, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Ariados - Psychic - Level 46
  (168, 16800, 94, 11, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Ariados - Poison Jab - Level 50
  (168, 16800, 398, 11, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Ariados - Cross Poison - Level 55
  (168, 16800, 440, 11, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Ariados - Hone Claws - TM01
  (168, 16800, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 19),
  -- Ariados - Toxic - TM06
  (168, 16800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Ariados - Venoshock - TM09
  (168, 16800, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 21),
  -- Ariados - Hidden Power - TM10
  (168, 16800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 22),
  -- Ariados - Sunny Day - TM11
  (168, 16800, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 23),
  -- Ariados - Hyper Beam - TM15
  (168, 16800, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 24),
  -- Ariados - Protect - TM17
  (168, 16800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Ariados - Frustration - TM21
  (168, 16800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Ariados - Solar Beam - TM22
  (168, 16800, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 27),
  -- Ariados - Return - TM27
  (168, 16800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Ariados - Dig - TM28
  (168, 16800, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 29),
  -- Ariados - Psychic - TM29
  (168, 16800, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 30),
  -- Ariados - Double Team - TM32
  (168, 16800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Ariados - Sludge Bomb - TM36
  (168, 16800, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 32),
  -- Ariados - Facade - TM42
  (168, 16800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Ariados - Rest - TM44
  (168, 16800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Ariados - Attract - TM45
  (168, 16800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Ariados - Thief - TM46
  (168, 16800, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 36),
  -- Ariados - Round - TM48
  (168, 16800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Ariados - Giga Impact - TM68
  (168, 16800, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 38),
  -- Ariados - Flash - TM70
  (168, 16800, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 39),
  -- Ariados - Struggle Bug - TM76
  (168, 16800, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 40),
  -- Ariados - X-Scissor - TM81
  (168, 16800, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 41),
  -- Ariados - Poison Jab - TM84
  (168, 16800, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 42),
  -- Ariados - Swagger - TM87
  (168, 16800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 43),
  -- Ariados - Substitute - TM90
  (168, 16800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 44),
  -- Crobat - Cross Poison - Level 1
  (169, 16900, 440, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crobat - Screech - Level 1
  (169, 16900, 103, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crobat - Leech Life - Level 1
  (169, 16900, 141, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crobat - Supersonic - Level 1
  (169, 16900, 48, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Crobat - Astonish - Level 1
  (169, 16900, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Crobat - Supersonic - Level 5
  (169, 16900, 48, 11, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Crobat - Astonish - Level 9
  (169, 16900, 310, 11, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Crobat - Bite - Level 13
  (169, 16900, 44, 11, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Crobat - Wing Attack - Level 17
  (169, 16900, 17, 11, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Crobat - Confuse Ray - Level 21
  (169, 16900, 109, 11, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Crobat - Air Cutter - Level 27
  (169, 16900, 314, 11, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Crobat - Acrobatics - Level 39
  (169, 16900, 512, 11, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Crobat - Mean Look - Level 33
  (169, 16900, 212, 11, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Crobat - Poison Fang - Level 45
  (169, 16900, 305, 11, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Crobat - Haze - Level 51
  (169, 16900, 114, 11, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Crobat - Air Slash - Level 57
  (169, 16900, 403, 11, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Crobat - Toxic - TM06
  (169, 16900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Crobat - Venoshock - TM09
  (169, 16900, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 18),
  -- Crobat - Hidden Power - TM10
  (169, 16900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Crobat - Sunny Day - TM11
  (169, 16900, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Crobat - Taunt - TM12
  (169, 16900, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 21),
  -- Crobat - Hyper Beam - TM15
  (169, 16900, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Crobat - Protect - TM17
  (169, 16900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Crobat - Rain Dance - TM18
  (169, 16900, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Crobat - Frustration - TM21
  (169, 16900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Crobat - Return - TM27
  (169, 16900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Crobat - Shadow Ball - TM30
  (169, 16900, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 27),
  -- Crobat - Double Team - TM32
  (169, 16900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Crobat - Sludge Bomb - TM36
  (169, 16900, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 29),
  -- Crobat - Aerial Ace - TM40
  (169, 16900, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 30),
  -- Crobat - Torment - TM41
  (169, 16900, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 31),
  -- Crobat - Facade - TM42
  (169, 16900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 32),
  -- Crobat - Rest - TM44
  (169, 16900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 33),
  -- Crobat - Attract - TM45
  (169, 16900, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 34),
  -- Crobat - Thief - TM46
  (169, 16900, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 35),
  -- Crobat - Round - TM48
  (169, 16900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Crobat - Acrobatics - TM62
  (169, 16900, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 37),
  -- Crobat - Payback - TM66
  (169, 16900, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 38),
  -- Crobat - Giga Impact - TM68
  (169, 16900, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 39),
  -- Crobat - X-Scissor - TM81
  (169, 16900, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 40),
  -- Crobat - Swagger - TM87
  (169, 16900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 41),
  -- Crobat - Pluck - TM88
  (169, 16900, 365, 11, NULL, 2, NULL, NULL, 11002088, NULL, 42),
  -- Crobat - U-turn - TM89
  (169, 16900, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 43),
  -- Crobat - Substitute - TM90
  (169, 16900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 44),
  -- Crobat - Fly - HM02
  (169, 16900, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 45),
  -- Chinchou - Supersonic - Level 1
  (170, 17000, 48, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chinchou - Bubble - Level 1
  (170, 17000, 145, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chinchou - Thunder Wave - Level 6
  (170, 17000, 86, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Chinchou - Flail - Level 9
  (170, 17000, 175, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Chinchou - Confuse Ray - Level 12
  (170, 17000, 109, 11, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Chinchou - Water Gun - Level 17
  (170, 17000, 55, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Chinchou - Spark - Level 20
  (170, 17000, 209, 11, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Chinchou - Take Down - Level 23
  (170, 17000, 36, 11, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Chinchou - Electro Ball - Level 28
  (170, 17000, 486, 11, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Chinchou - Bubble Beam - Level 31
  (170, 17000, 61, 11, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Chinchou - Signal Beam - Level 34
  (170, 17000, 324, 11, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Chinchou - Discharge - Level 39
  (170, 17000, 435, 11, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Chinchou - Aqua Ring - Level 42
  (170, 17000, 392, 11, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Chinchou - Hydro Pump - Level 45
  (170, 17000, 56, 11, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Chinchou - Charge - Level 50
  (170, 17000, 268, 11, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Chinchou - Toxic - TM06
  (170, 17000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Chinchou - Hail - TM07
  (170, 17000, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 17),
  -- Chinchou - Hidden Power - TM10
  (170, 17000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Chinchou - Ice Beam - TM13
  (170, 17000, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 19),
  -- Chinchou - Blizzard - TM14
  (170, 17000, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 20),
  -- Chinchou - Protect - TM17
  (170, 17000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Chinchou - Rain Dance - TM18
  (170, 17000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 22),
  -- Chinchou - Frustration - TM21
  (170, 17000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Chinchou - Thunderbolt - TM24
  (170, 17000, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 24),
  -- Chinchou - Thunder - TM25
  (170, 17000, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 25),
  -- Chinchou - Return - TM27
  (170, 17000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Chinchou - Double Team - TM32
  (170, 17000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Chinchou - Facade - TM42
  (170, 17000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 28),
  -- Chinchou - Rest - TM44
  (170, 17000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 29),
  -- Chinchou - Attract - TM45
  (170, 17000, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 30),
  -- Chinchou - Round - TM48
  (170, 17000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 31),
  -- Chinchou - Scald - TM55
  (170, 17000, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 32),
  -- Chinchou - Charge Beam - TM57
  (170, 17000, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 33),
  -- Chinchou - Flash - TM70
  (170, 17000, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 34),
  -- Chinchou - Volt Switch - TM72
  (170, 17000, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 35),
  -- Chinchou - Thunder Wave - TM73
  (170, 17000, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 36),
  -- Chinchou - Swagger - TM87
  (170, 17000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 37),
  -- Chinchou - Substitute - TM90
  (170, 17000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 38),
  -- Chinchou - Wild Charge - TM93
  (170, 17000, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 39),
  -- Chinchou - Surf - HM03
  (170, 17000, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 40),
  -- Chinchou - Waterfall - HM05
  (170, 17000, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 41),
  -- Chinchou - Dive - HM06
  (170, 17000, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 42),
  -- Chinchou - Agility - Egg Move
  (170, 17000, 97, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Chinchou - Amnesia - Egg Move
  (170, 17000, 133, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Chinchou - Brine - Egg Move
  (170, 17000, 362, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Chinchou - Flail - Egg Move
  (170, 17000, 175, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Chinchou - Mist - Egg Move
  (170, 17000, 54, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Chinchou - Psybeam - Egg Move
  (170, 17000, 60, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Chinchou - Screech - Egg Move
  (170, 17000, 103, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Chinchou - Shock Wave - Egg Move
  (170, 17000, 351, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Chinchou - Water Pulse - Egg Move
  (170, 17000, 352, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Chinchou - Whirlpool - Egg Move
  (170, 17000, 250, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Lanturn - Bubble - Level 1
  (171, 17100, 145, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lanturn - Supersonic - Level 1
  (171, 17100, 48, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lanturn - Thunder Wave - Level 1
  (171, 17100, 86, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lanturn - Thunder Wave - Level 6
  (171, 17100, 86, 11, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Lanturn - Flail - Level 9
  (171, 17100, 175, 11, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Lanturn - Water Gun - Level 12
  (171, 17100, 55, 11, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Lanturn - Confuse Ray - Level 17
  (171, 17100, 109, 11, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Lanturn - Spark - Level 20
  (171, 17100, 209, 11, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Lanturn - Take Down - Level 23
  (171, 17100, 36, 11, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Lanturn - Stockpile - Level 27
  (171, 17100, 254, 11, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Lanturn - Swallow - Level 27
  (171, 17100, 256, 11, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Lanturn - Spit Up - Level 27
  (171, 17100, 255, 11, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Lanturn - Electro Ball - Level 30
  (171, 17100, 486, 11, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Lanturn - Bubble Beam - Level 35
  (171, 17100, 61, 11, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Lanturn - Signal Beam - Level 40
  (171, 17100, 324, 11, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Lanturn - Discharge - Level 47
  (171, 17100, 435, 11, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Lanturn - Aqua Ring - Level 52
  (171, 17100, 392, 11, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Lanturn - Hydro Pump - Level 57
  (171, 17100, 56, 11, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Lanturn - Charge - Level 64
  (171, 17100, 268, 11, NULL, 1, 64, NULL, NULL, NULL, 19),
  -- Lanturn - Toxic - TM06
  (171, 17100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Lanturn - Hail - TM07
  (171, 17100, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 21),
  -- Lanturn - Hidden Power - TM10
  (171, 17100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 22),
  -- Lanturn - Ice Beam - TM13
  (171, 17100, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 23),
  -- Lanturn - Blizzard - TM14
  (171, 17100, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 24),
  -- Lanturn - Hyper Beam - TM15
  (171, 17100, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 25),
  -- Lanturn - Protect - TM17
  (171, 17100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 26),
  -- Lanturn - Rain Dance - TM18
  (171, 17100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 27),
  -- Lanturn - Frustration - TM21
  (171, 17100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Lanturn - Thunderbolt - TM24
  (171, 17100, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 29),
  -- Lanturn - Thunder - TM25
  (171, 17100, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 30),
  -- Lanturn - Return - TM27
  (171, 17100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 31),
  -- Lanturn - Double Team - TM32
  (171, 17100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 32),
  -- Lanturn - Facade - TM42
  (171, 17100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Lanturn - Rest - TM44
  (171, 17100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Lanturn - Attract - TM45
  (171, 17100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Lanturn - Round - TM48
  (171, 17100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Lanturn - Scald - TM55
  (171, 17100, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 37),
  -- Lanturn - Charge Beam - TM57
  (171, 17100, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 38),
  -- Lanturn - Giga Impact - TM68
  (171, 17100, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 39),
  -- Lanturn - Flash - TM70
  (171, 17100, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 40),
  -- Lanturn - Volt Switch - TM72
  (171, 17100, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 41),
  -- Lanturn - Thunder Wave - TM73
  (171, 17100, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 42),
  -- Lanturn - Swagger - TM87
  (171, 17100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 43),
  -- Lanturn - Substitute - TM90
  (171, 17100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 44),
  -- Lanturn - Wild Charge - TM93
  (171, 17100, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 45),
  -- Lanturn - Surf - HM03
  (171, 17100, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 46),
  -- Lanturn - Waterfall - HM05
  (171, 17100, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 47),
  -- Lanturn - Dive - HM06
  (171, 17100, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 48),
  -- Pichu - Thunder Shock - Level 1
  (172, 17200, 84, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pichu - Charm - Level 1
  (172, 17200, 204, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pichu - Tail Whip - Level 5
  (172, 17200, 39, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Pichu - Thunder Wave - Level 10
  (172, 17200, 86, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Pichu - Sweet Kiss - Level 13
  (172, 17200, 186, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Pichu - Nasty Plot - Level 18
  (172, 17200, 417, 11, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Pichu - Toxic - TM06
  (172, 17200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 7),
  -- Pichu - Hidden Power - TM10
  (172, 17200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 8),
  -- Pichu - Light Screen - TM16
  (172, 17200, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 9),
  -- Pichu - Protect - TM17
  (172, 17200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 10),
  -- Pichu - Rain Dance - TM18
  (172, 17200, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 11),
  -- Pichu - Frustration - TM21
  (172, 17200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 12),
  -- Pichu - Thunderbolt - TM24
  (172, 17200, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 13),
  -- Pichu - Thunder - TM25
  (172, 17200, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 14),
  -- Pichu - Return - TM27
  (172, 17200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 15),
  -- Pichu - Double Team - TM32
  (172, 17200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 16),
  -- Pichu - Facade - TM42
  (172, 17200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 17),
  -- Pichu - Rest - TM44
  (172, 17200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 18),
  -- Pichu - Attract - TM45
  (172, 17200, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 19),
  -- Pichu - Round - TM48
  (172, 17200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 20),
  -- Pichu - Echoed Voice - TM49
  (172, 17200, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 21),
  -- Pichu - Fling - TM56
  (172, 17200, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 22),
  -- Pichu - Charge Beam - TM57
  (172, 17200, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 23),
  -- Pichu - Flash - TM70
  (172, 17200, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 24),
  -- Pichu - Volt Switch - TM72
  (172, 17200, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 25),
  -- Pichu - Thunder Wave - TM73
  (172, 17200, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 26),
  -- Pichu - Grass Knot - TM86
  (172, 17200, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 27),
  -- Pichu - Swagger - TM87
  (172, 17200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 28),
  -- Pichu - Substitute - TM90
  (172, 17200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 29),
  -- Pichu - Wild Charge - TM93
  (172, 17200, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 30),
  -- Pichu - Bestow - Egg Move
  (172, 17200, 516, 11, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Pichu - Bide - Egg Move
  (172, 17200, 117, 11, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Pichu - Charge - Egg Move
  (172, 17200, 268, 11, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Pichu - Double Slap - Egg Move
  (172, 17200, 3, 11, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Pichu - Encore - Egg Move
  (172, 17200, 227, 11, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Pichu - Endure - Egg Move
  (172, 17200, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Pichu - Fake Out - Egg Move
  (172, 17200, 252, 11, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Pichu - Flail - Egg Move
  (172, 17200, 175, 11, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Pichu - Lucky Chant - Egg Move
  (172, 17200, 381, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Pichu - Present - Egg Move
  (172, 17200, 217, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Pichu - Reversal - Egg Move
  (172, 17200, 179, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Pichu - Thunder Punch - Egg Move
  (172, 17200, 9, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Pichu - Tickle - Egg Move
  (172, 17200, 321, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Pichu - Volt Tackle - Egg Move
  (172, 17200, 344, 11, NULL, 5, NULL, 364, NULL, 'Requires either parent to hold Light Ball in Black / White.', 44),
  -- Pichu - Wish - Egg Move
  (172, 17200, 273, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cleffa - Pound - Level 1
  (173, 17300, 1, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cleffa - Charm - Level 1
  (173, 17300, 204, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cleffa - Encore - Level 4
  (173, 17300, 227, 11, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Cleffa - Sing - Level 7
  (173, 17300, 47, 11, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Cleffa - Sweet Kiss - Level 10
  (173, 17300, 186, 11, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Cleffa - Copycat - Level 13
  (173, 17300, 383, 11, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Cleffa - Magical Leaf - Level 16
  (173, 17300, 345, 11, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Cleffa - Psyshock - TM03
  (173, 17300, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 8),
  -- Cleffa - Toxic - TM06
  (173, 17300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 9),
  -- Cleffa - Hidden Power - TM10
  (173, 17300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 10),
  -- Cleffa - Sunny Day - TM11
  (173, 17300, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 11),
  -- Cleffa - Light Screen - TM16
  (173, 17300, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 12),
  -- Cleffa - Protect - TM17
  (173, 17300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 13),
  -- Cleffa - Rain Dance - TM18
  (173, 17300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 14),
  -- Cleffa - Telekinesis - TM19
  (173, 17300, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 15),
  -- Cleffa - Safeguard - TM20
  (173, 17300, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 16),
  -- Cleffa - Frustration - TM21
  (173, 17300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 17),
  -- Cleffa - Solar Beam - TM22
  (173, 17300, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 18),
  -- Cleffa - Return - TM27
  (173, 17300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 19),
  -- Cleffa - Dig - TM28
  (173, 17300, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 20),
  -- Cleffa - Psychic - TM29
  (173, 17300, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 21),
  -- Cleffa - Shadow Ball - TM30
  (173, 17300, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 22),
  -- Cleffa - Double Team - TM32
  (173, 17300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 23),
  -- Cleffa - Reflect - TM33
  (173, 17300, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 24),
  -- Cleffa - Flamethrower - TM35
  (173, 17300, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 25),
  -- Cleffa - Fire Blast - TM38
  (173, 17300, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 26),
  -- Cleffa - Facade - TM42
  (173, 17300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 27),
  -- Cleffa - Rest - TM44
  (173, 17300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 28),
  -- Cleffa - Attract - TM45
  (173, 17300, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 29),
  -- Cleffa - Round - TM48
  (173, 17300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 30),
  -- Cleffa - Echoed Voice - TM49
  (173, 17300, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 31),
  -- Cleffa - Fling - TM56
  (173, 17300, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 32),
  -- Cleffa - Incinerate - TM59
  (173, 17300, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 33),
  -- Cleffa - Flash - TM70
  (173, 17300, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 34),
  -- Cleffa - Thunder Wave - TM73
  (173, 17300, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 35),
  -- Cleffa - Psych Up - TM77
  (173, 17300, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 36),
  -- Cleffa - Work Up - TM83
  (173, 17300, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 37),
  -- Cleffa - Dream Eater - TM85
  (173, 17300, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 38),
  -- Cleffa - Grass Knot - TM86
  (173, 17300, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 39),
  -- Cleffa - Swagger - TM87
  (173, 17300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 40),
  -- Cleffa - Substitute - TM90
  (173, 17300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 41),
  -- Cleffa - Amnesia - Egg Move
  (173, 17300, 133, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cleffa - Aromatherapy - Egg Move
  (173, 17300, 312, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cleffa - Belly Drum - Egg Move
  (173, 17300, 187, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cleffa - Covet - Egg Move
  (173, 17300, 343, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cleffa - Fake Tears - Egg Move
  (173, 17300, 313, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cleffa - Metronome - Egg Move
  (173, 17300, 118, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cleffa - Mimic - Egg Move
  (173, 17300, 102, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cleffa - Present - Egg Move
  (173, 17300, 217, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cleffa - Splash - Egg Move
  (173, 17300, 150, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cleffa - Stored Power - Egg Move
  (173, 17300, 500, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cleffa - Tickle - Egg Move
  (173, 17300, 321, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cleffa - Wish - Egg Move
  (173, 17300, 273, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Igglybuff - Sing - Level 1
  (174, 17400, 47, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Igglybuff - Charm - Level 1
  (174, 17400, 204, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Igglybuff - Defense Curl - Level 5
  (174, 17400, 111, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Igglybuff - Pound - Level 9
  (174, 17400, 1, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Igglybuff - Sweet Kiss - Level 13
  (174, 17400, 186, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Igglybuff - Copycat - Level 17
  (174, 17400, 383, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Igglybuff - Toxic - TM06
  (174, 17400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 7),
  -- Igglybuff - Hidden Power - TM10
  (174, 17400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 8),
  -- Igglybuff - Sunny Day - TM11
  (174, 17400, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 9),
  -- Igglybuff - Light Screen - TM16
  (174, 17400, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 10),
  -- Igglybuff - Protect - TM17
  (174, 17400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 11),
  -- Igglybuff - Rain Dance - TM18
  (174, 17400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 12),
  -- Igglybuff - Safeguard - TM20
  (174, 17400, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 13),
  -- Igglybuff - Frustration - TM21
  (174, 17400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 14),
  -- Igglybuff - Solar Beam - TM22
  (174, 17400, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 15),
  -- Igglybuff - Return - TM27
  (174, 17400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 16),
  -- Igglybuff - Dig - TM28
  (174, 17400, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 17),
  -- Igglybuff - Psychic - TM29
  (174, 17400, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 18),
  -- Igglybuff - Shadow Ball - TM30
  (174, 17400, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 19),
  -- Igglybuff - Double Team - TM32
  (174, 17400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 20),
  -- Igglybuff - Reflect - TM33
  (174, 17400, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 21),
  -- Igglybuff - Flamethrower - TM35
  (174, 17400, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 22),
  -- Igglybuff - Fire Blast - TM38
  (174, 17400, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 23),
  -- Igglybuff - Facade - TM42
  (174, 17400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 24),
  -- Igglybuff - Rest - TM44
  (174, 17400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 25),
  -- Igglybuff - Attract - TM45
  (174, 17400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 26),
  -- Igglybuff - Round - TM48
  (174, 17400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 27),
  -- Igglybuff - Echoed Voice - TM49
  (174, 17400, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 28),
  -- Igglybuff - Fling - TM56
  (174, 17400, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 29),
  -- Igglybuff - Incinerate - TM59
  (174, 17400, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 30),
  -- Igglybuff - Flash - TM70
  (174, 17400, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 31),
  -- Igglybuff - Thunder Wave - TM73
  (174, 17400, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 32),
  -- Igglybuff - Psych Up - TM77
  (174, 17400, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 33),
  -- Igglybuff - Work Up - TM83
  (174, 17400, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 34),
  -- Igglybuff - Dream Eater - TM85
  (174, 17400, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 35),
  -- Igglybuff - Grass Knot - TM86
  (174, 17400, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 36),
  -- Igglybuff - Swagger - TM87
  (174, 17400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 37),
  -- Igglybuff - Substitute - TM90
  (174, 17400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 38),
  -- Igglybuff - Wild Charge - TM93
  (174, 17400, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 39),
  -- Igglybuff - Captivate - Egg Move
  (174, 17400, 445, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Igglybuff - Covet - Egg Move
  (174, 17400, 343, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Igglybuff - Feint Attack - Egg Move
  (174, 17400, 185, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Igglybuff - Fake Tears - Egg Move
  (174, 17400, 313, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Igglybuff - Gravity - Egg Move
  (174, 17400, 356, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Igglybuff - Last Resort - Egg Move
  (174, 17400, 387, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Igglybuff - Perish Song - Egg Move
  (174, 17400, 195, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Igglybuff - Present - Egg Move
  (174, 17400, 217, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Igglybuff - Punishment - Egg Move
  (174, 17400, 386, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Igglybuff - Sleep Talk - Egg Move
  (174, 17400, 214, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Igglybuff - Wish - Egg Move
  (174, 17400, 273, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Togepi - Growl - Level 1
  (175, 17500, 45, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togepi - Charm - Level 1
  (175, 17500, 204, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togepi - Metronome - Level 5
  (175, 17500, 118, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Togepi - Sweet Kiss - Level 9
  (175, 17500, 186, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Togepi - Yawn - Level 13
  (175, 17500, 281, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Togepi - Encore - Level 17
  (175, 17500, 227, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Togepi - Follow Me - Level 21
  (175, 17500, 266, 11, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Togepi - Bestow - Level 25
  (175, 17500, 516, 11, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Togepi - Wish - Level 29
  (175, 17500, 273, 11, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Togepi - Ancient Power - Level 33
  (175, 17500, 246, 11, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Togepi - Safeguard - Level 37
  (175, 17500, 219, 11, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Togepi - Baton Pass - Level 41
  (175, 17500, 226, 11, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Togepi - Double-Edge - Level 45
  (175, 17500, 38, 11, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Togepi - Last Resort - Level 49
  (175, 17500, 387, 11, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Togepi - After You - Level 53
  (175, 17500, 495, 11, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Togepi - Psyshock - TM03
  (175, 17500, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 16),
  -- Togepi - Toxic - TM06
  (175, 17500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Togepi - Hidden Power - TM10
  (175, 17500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Togepi - Sunny Day - TM11
  (175, 17500, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Togepi - Light Screen - TM16
  (175, 17500, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 20),
  -- Togepi - Protect - TM17
  (175, 17500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Togepi - Rain Dance - TM18
  (175, 17500, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 22),
  -- Togepi - Telekinesis - TM19
  (175, 17500, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 23),
  -- Togepi - Safeguard - TM20
  (175, 17500, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 24),
  -- Togepi - Frustration - TM21
  (175, 17500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Togepi - Solar Beam - TM22
  (175, 17500, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 26),
  -- Togepi - Return - TM27
  (175, 17500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Togepi - Psychic - TM29
  (175, 17500, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 28),
  -- Togepi - Shadow Ball - TM30
  (175, 17500, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 29),
  -- Togepi - Double Team - TM32
  (175, 17500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Togepi - Reflect - TM33
  (175, 17500, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 31),
  -- Togepi - Flamethrower - TM35
  (175, 17500, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 32),
  -- Togepi - Fire Blast - TM38
  (175, 17500, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 33),
  -- Togepi - Facade - TM42
  (175, 17500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 34),
  -- Togepi - Rest - TM44
  (175, 17500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 35),
  -- Togepi - Attract - TM45
  (175, 17500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 36),
  -- Togepi - Round - TM48
  (175, 17500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Togepi - Echoed Voice - TM49
  (175, 17500, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 38),
  -- Togepi - Fling - TM56
  (175, 17500, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 39),
  -- Togepi - Incinerate - TM59
  (175, 17500, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 40),
  -- Togepi - Flash - TM70
  (175, 17500, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 41),
  -- Togepi - Thunder Wave - TM73
  (175, 17500, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 42),
  -- Togepi - Psych Up - TM77
  (175, 17500, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 43),
  -- Togepi - Work Up - TM83
  (175, 17500, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 44),
  -- Togepi - Dream Eater - TM85
  (175, 17500, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 45),
  -- Togepi - Grass Knot - TM86
  (175, 17500, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 46),
  -- Togepi - Swagger - TM87
  (175, 17500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 47),
  -- Togepi - Substitute - TM90
  (175, 17500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 48),
  -- Togepi - Rock Smash - TM94
  (175, 17500, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 49),
  -- Togepi - Extrasensory - Egg Move
  (175, 17500, 326, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Togepi - Foresight - Egg Move
  (175, 17500, 193, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Togepi - Future Sight - Egg Move
  (175, 17500, 248, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Togepi - Lucky Chant - Egg Move
  (175, 17500, 381, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Togepi - Mirror Move - Egg Move
  (175, 17500, 119, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Togepi - Morning Sun - Egg Move
  (175, 17500, 234, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Togepi - Nasty Plot - Egg Move
  (175, 17500, 417, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Togepi - Peck - Egg Move
  (175, 17500, 64, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Togepi - Present - Egg Move
  (175, 17500, 217, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Togepi - Psycho Shift - Egg Move
  (175, 17500, 375, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Togepi - Secret Power - Egg Move
  (175, 17500, 290, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Togepi - Stored Power - Egg Move
  (175, 17500, 500, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Togetic - Magical Leaf - Level 1
  (176, 17600, 345, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togetic - Growl - Level 1
  (176, 17600, 45, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togetic - Charm - Level 1
  (176, 17600, 204, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Togetic - Metronome - Level 1
  (176, 17600, 118, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Togetic - Sweet Kiss - Level 1
  (176, 17600, 186, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Togetic - Metronome - Level 5
  (176, 17600, 118, 11, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Togetic - Sweet Kiss - Level 9
  (176, 17600, 186, 11, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Togetic - Yawn - Level 13
  (176, 17600, 281, 11, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Togetic - Encore - Level 17
  (176, 17600, 227, 11, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Togetic - Follow Me - Level 21
  (176, 17600, 266, 11, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Togetic - Bestow - Level 25
  (176, 17600, 516, 11, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Togetic - Wish - Level 29
  (176, 17600, 273, 11, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Togetic - Ancient Power - Level 33
  (176, 17600, 246, 11, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Togetic - Safeguard - Level 37
  (176, 17600, 219, 11, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Togetic - Baton Pass - Level 41
  (176, 17600, 226, 11, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Togetic - Double-Edge - Level 45
  (176, 17600, 38, 11, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Togetic - Last Resort - Level 49
  (176, 17600, 387, 11, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Togetic - After You - Level 53
  (176, 17600, 495, 11, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Togetic - Psyshock - TM03
  (176, 17600, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 19),
  -- Togetic - Toxic - TM06
  (176, 17600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Togetic - Hidden Power - TM10
  (176, 17600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Togetic - Sunny Day - TM11
  (176, 17600, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 22),
  -- Togetic - Hyper Beam - TM15
  (176, 17600, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 23),
  -- Togetic - Light Screen - TM16
  (176, 17600, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 24),
  -- Togetic - Protect - TM17
  (176, 17600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Togetic - Rain Dance - TM18
  (176, 17600, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 26),
  -- Togetic - Telekinesis - TM19
  (176, 17600, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 27),
  -- Togetic - Safeguard - TM20
  (176, 17600, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 28),
  -- Togetic - Frustration - TM21
  (176, 17600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 29),
  -- Togetic - Solar Beam - TM22
  (176, 17600, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 30),
  -- Togetic - Return - TM27
  (176, 17600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 31),
  -- Togetic - Psychic - TM29
  (176, 17600, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 32),
  -- Togetic - Shadow Ball - TM30
  (176, 17600, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 33),
  -- Togetic - Brick Break - TM31
  (176, 17600, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 34),
  -- Togetic - Double Team - TM32
  (176, 17600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 35),
  -- Togetic - Reflect - TM33
  (176, 17600, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 36),
  -- Togetic - Flamethrower - TM35
  (176, 17600, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 37),
  -- Togetic - Fire Blast - TM38
  (176, 17600, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 38),
  -- Togetic - Aerial Ace - TM40
  (176, 17600, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 39),
  -- Togetic - Facade - TM42
  (176, 17600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 40),
  -- Togetic - Rest - TM44
  (176, 17600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 41),
  -- Togetic - Attract - TM45
  (176, 17600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 42),
  -- Togetic - Round - TM48
  (176, 17600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 43),
  -- Togetic - Echoed Voice - TM49
  (176, 17600, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 44),
  -- Togetic - Fling - TM56
  (176, 17600, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 45),
  -- Togetic - Incinerate - TM59
  (176, 17600, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 46),
  -- Togetic - Retaliate - TM67
  (176, 17600, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 47),
  -- Togetic - Giga Impact - TM68
  (176, 17600, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 48),
  -- Togetic - Flash - TM70
  (176, 17600, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 49),
  -- Togetic - Thunder Wave - TM73
  (176, 17600, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 50),
  -- Togetic - Psych Up - TM77
  (176, 17600, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 51),
  -- Togetic - Work Up - TM83
  (176, 17600, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 52),
  -- Togetic - Dream Eater - TM85
  (176, 17600, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 53),
  -- Togetic - Grass Knot - TM86
  (176, 17600, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 54),
  -- Togetic - Swagger - TM87
  (176, 17600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 55),
  -- Togetic - Substitute - TM90
  (176, 17600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 56),
  -- Togetic - Rock Smash - TM94
  (176, 17600, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 57),
  -- Togetic - Fly - HM02
  (176, 17600, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 58),
  -- Natu - Peck - Level 1
  (177, 17700, 64, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Natu - Leer - Level 1
  (177, 17700, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Natu - Night Shade - Level 6
  (177, 17700, 101, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Natu - Teleport - Level 9
  (177, 17700, 100, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Natu - Lucky Chant - Level 12
  (177, 17700, 381, 11, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Natu - Miracle Eye - Level 17
  (177, 17700, 357, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Natu - Me First - Level 20
  (177, 17700, 382, 11, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Natu - Confuse Ray - Level 23
  (177, 17700, 109, 11, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Natu - Wish - Level 28
  (177, 17700, 273, 11, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Natu - Psycho Shift - Level 33
  (177, 17700, 375, 11, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Natu - Future Sight - Level 36
  (177, 17700, 248, 11, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Natu - Stored Power - Level 39
  (177, 17700, 500, 11, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Natu - Ominous Wind - Level 44
  (177, 17700, 466, 11, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Natu - Power Swap - Level 47
  (177, 17700, 384, 11, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Natu - Guard Swap - Level 47
  (177, 17700, 385, 11, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Natu - Psychic - Level 50
  (177, 17700, 94, 11, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Natu - Psyshock - TM03
  (177, 17700, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 17),
  -- Natu - Calm Mind - TM04
  (177, 17700, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 18),
  -- Natu - Toxic - TM06
  (177, 17700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Natu - Hidden Power - TM10
  (177, 17700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Natu - Sunny Day - TM11
  (177, 17700, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Natu - Light Screen - TM16
  (177, 17700, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 22),
  -- Natu - Protect - TM17
  (177, 17700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Natu - Rain Dance - TM18
  (177, 17700, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Natu - Telekinesis - TM19
  (177, 17700, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 25),
  -- Natu - Frustration - TM21
  (177, 17700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Natu - Solar Beam - TM22
  (177, 17700, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 27),
  -- Natu - Return - TM27
  (177, 17700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Natu - Psychic - TM29
  (177, 17700, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 29),
  -- Natu - Shadow Ball - TM30
  (177, 17700, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 30),
  -- Natu - Double Team - TM32
  (177, 17700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Natu - Reflect - TM33
  (177, 17700, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 32),
  -- Natu - Aerial Ace - TM40
  (177, 17700, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 33),
  -- Natu - Facade - TM42
  (177, 17700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 34),
  -- Natu - Rest - TM44
  (177, 17700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 35),
  -- Natu - Attract - TM45
  (177, 17700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 36),
  -- Natu - Thief - TM46
  (177, 17700, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 37),
  -- Natu - Round - TM48
  (177, 17700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 38),
  -- Natu - Ally Switch - TM51
  (177, 17700, 502, 11, NULL, 2, NULL, NULL, 11002051, NULL, 39),
  -- Natu - Flash - TM70
  (177, 17700, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 40),
  -- Natu - Thunder Wave - TM73
  (177, 17700, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 41),
  -- Natu - Psych Up - TM77
  (177, 17700, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 42),
  -- Natu - Dream Eater - TM85
  (177, 17700, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 43),
  -- Natu - Grass Knot - TM86
  (177, 17700, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 44),
  -- Natu - Swagger - TM87
  (177, 17700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 45),
  -- Natu - Pluck - TM88
  (177, 17700, 365, 11, NULL, 2, NULL, NULL, 11002088, NULL, 46),
  -- Natu - U-turn - TM89
  (177, 17700, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 47),
  -- Natu - Substitute - TM90
  (177, 17700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 48),
  -- Natu - Trick Room - TM92
  (177, 17700, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 49),
  -- Natu - Drill Peck - Egg Move
  (177, 17700, 65, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Natu - Feint Attack - Egg Move
  (177, 17700, 185, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Natu - Feather Dance - Egg Move
  (177, 17700, 297, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Natu - Haze - Egg Move
  (177, 17700, 114, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Natu - Quick Attack - Egg Move
  (177, 17700, 98, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Natu - Refresh - Egg Move
  (177, 17700, 287, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Natu - Roost - Egg Move
  (177, 17700, 355, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Natu - Skill Swap - Egg Move
  (177, 17700, 285, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Natu - Steel Wing - Egg Move
  (177, 17700, 211, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Natu - Sucker Punch - Egg Move
  (177, 17700, 389, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Natu - Synchronoise - Egg Move
  (177, 17700, 485, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Natu - Zen Headbutt - Egg Move
  (177, 17700, 428, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Xatu - Peck - Level 1
  (178, 17800, 64, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Xatu - Leer - Level 1
  (178, 17800, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Xatu - Night Shade - Level 6
  (178, 17800, 101, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Xatu - Teleport - Level 9
  (178, 17800, 100, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Xatu - Lucky Chant - Level 12
  (178, 17800, 381, 11, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Xatu - Miracle Eye - Level 17
  (178, 17800, 357, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Xatu - Me First - Level 20
  (178, 17800, 382, 11, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Xatu - Confuse Ray - Level 23
  (178, 17800, 109, 11, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Xatu - Tailwind - Level 27
  (178, 17800, 366, 11, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Xatu - Wish - Level 30
  (178, 17800, 273, 11, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Xatu - Psycho Shift - Level 37
  (178, 17800, 375, 11, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Xatu - Future Sight - Level 42
  (178, 17800, 248, 11, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Xatu - Stored Power - Level 47
  (178, 17800, 500, 11, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Xatu - Ominous Wind - Level 54
  (178, 17800, 466, 11, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Xatu - Power Swap - Level 54
  (178, 17800, 384, 11, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Xatu - Guard Swap - Level 59
  (178, 17800, 385, 11, NULL, 1, 59, NULL, NULL, NULL, 16),
  -- Xatu - Psychic - Level 66
  (178, 17800, 94, 11, NULL, 1, 66, NULL, NULL, NULL, 17),
  -- Xatu - Psyshock - TM03
  (178, 17800, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 18),
  -- Xatu - Calm Mind - TM04
  (178, 17800, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 19),
  -- Xatu - Toxic - TM06
  (178, 17800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Xatu - Hidden Power - TM10
  (178, 17800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Xatu - Sunny Day - TM11
  (178, 17800, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 22),
  -- Xatu - Hyper Beam - TM15
  (178, 17800, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 23),
  -- Xatu - Light Screen - TM16
  (178, 17800, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 24),
  -- Xatu - Protect - TM17
  (178, 17800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Xatu - Rain Dance - TM18
  (178, 17800, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 26),
  -- Xatu - Telekinesis - TM19
  (178, 17800, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 27),
  -- Xatu - Frustration - TM21
  (178, 17800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Xatu - Solar Beam - TM22
  (178, 17800, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 29),
  -- Xatu - Return - TM27
  (178, 17800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Xatu - Psychic - TM29
  (178, 17800, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 31),
  -- Xatu - Shadow Ball - TM30
  (178, 17800, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 32),
  -- Xatu - Double Team - TM32
  (178, 17800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 33),
  -- Xatu - Reflect - TM33
  (178, 17800, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 34),
  -- Xatu - Aerial Ace - TM40
  (178, 17800, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 35),
  -- Xatu - Facade - TM42
  (178, 17800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Xatu - Rest - TM44
  (178, 17800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 37),
  -- Xatu - Attract - TM45
  (178, 17800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 38),
  -- Xatu - Thief - TM46
  (178, 17800, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 39),
  -- Xatu - Round - TM48
  (178, 17800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 40),
  -- Xatu - Ally Switch - TM51
  (178, 17800, 502, 11, NULL, 2, NULL, NULL, 11002051, NULL, 41),
  -- Xatu - Giga Impact - TM68
  (178, 17800, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 42),
  -- Xatu - Flash - TM70
  (178, 17800, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 43),
  -- Xatu - Thunder Wave - TM73
  (178, 17800, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 44),
  -- Xatu - Psych Up - TM77
  (178, 17800, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 45),
  -- Xatu - Dream Eater - TM85
  (178, 17800, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 46),
  -- Xatu - Grass Knot - TM86
  (178, 17800, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 47),
  -- Xatu - Swagger - TM87
  (178, 17800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 48),
  -- Xatu - Pluck - TM88
  (178, 17800, 365, 11, NULL, 2, NULL, NULL, 11002088, NULL, 49),
  -- Xatu - U-turn - TM89
  (178, 17800, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 50),
  -- Xatu - Substitute - TM90
  (178, 17800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 51),
  -- Xatu - Trick Room - TM92
  (178, 17800, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 52),
  -- Xatu - Fly - HM02
  (178, 17800, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 53),
  -- Mareep - Tackle - Level 1
  (179, 17900, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mareep - Growl - Level 5
  (179, 17900, 45, 11, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Mareep - Thunder Wave - Level 14
  (179, 17900, 86, 11, NULL, 1, 14, NULL, NULL, NULL, 3),
  -- Mareep - Thunder Shock - Level 10
  (179, 17900, 84, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Mareep - Cotton Spore - Level 19
  (179, 17900, 178, 11, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Mareep - Charge - Level 23
  (179, 17900, 268, 11, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Mareep - Electro Ball - Level 28
  (179, 17900, 486, 11, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Mareep - Power Gem - Level 50
  (179, 17900, 408, 11, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Mareep - Discharge - Level 37
  (179, 17900, 435, 11, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Mareep - Cotton Guard - Level 32
  (179, 17900, 538, 11, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Mareep - Signal Beam - Level 41
  (179, 17900, 324, 11, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Mareep - Light Screen - Level 46
  (179, 17900, 113, 11, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Mareep - Thunder - Level 55
  (179, 17900, 87, 11, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Mareep - Toxic - TM06
  (179, 17900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 14),
  -- Mareep - Hidden Power - TM10
  (179, 17900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 15),
  -- Mareep - Light Screen - TM16
  (179, 17900, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 16),
  -- Mareep - Protect - TM17
  (179, 17900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 17),
  -- Mareep - Rain Dance - TM18
  (179, 17900, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 18),
  -- Mareep - Safeguard - TM20
  (179, 17900, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 19),
  -- Mareep - Frustration - TM21
  (179, 17900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 20),
  -- Mareep - Thunderbolt - TM24
  (179, 17900, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 21),
  -- Mareep - Thunder - TM25
  (179, 17900, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 22),
  -- Mareep - Return - TM27
  (179, 17900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 23),
  -- Mareep - Double Team - TM32
  (179, 17900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 24),
  -- Mareep - Facade - TM42
  (179, 17900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 25),
  -- Mareep - Rest - TM44
  (179, 17900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 26),
  -- Mareep - Attract - TM45
  (179, 17900, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 27),
  -- Mareep - Round - TM48
  (179, 17900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 28),
  -- Mareep - Echoed Voice - TM49
  (179, 17900, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 29),
  -- Mareep - Charge Beam - TM57
  (179, 17900, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 30),
  -- Mareep - Flash - TM70
  (179, 17900, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 31),
  -- Mareep - Thunder Wave - TM73
  (179, 17900, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 32),
  -- Mareep - Swagger - TM87
  (179, 17900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 33),
  -- Mareep - Substitute - TM90
  (179, 17900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 34),
  -- Mareep - Wild Charge - TM93
  (179, 17900, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 35),
  -- Mareep - After You - Egg Move
  (179, 17900, 495, 11, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Mareep - Agility - Egg Move
  (179, 17900, 97, 11, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Mareep - Body Slam - Egg Move
  (179, 17900, 34, 11, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Mareep - Charge - Egg Move
  (179, 17900, 268, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Mareep - Flatter - Egg Move
  (179, 17900, 260, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Mareep - Iron Tail - Egg Move
  (179, 17900, 231, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Mareep - Odor Sleuth - Egg Move
  (179, 17900, 316, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Mareep - Sand Attack - Egg Move
  (179, 17900, 28, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Mareep - Screech - Egg Move
  (179, 17900, 103, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Mareep - Take Down - Egg Move
  (179, 17900, 36, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Flaaffy - Tackle - Level 1
  (180, 18000, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flaaffy - Growl - Level 1
  (180, 18000, 45, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flaaffy - Thunder Shock - Level 1
  (180, 18000, 84, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flaaffy - Thunder Wave - Level 14
  (180, 18000, 86, 11, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Flaaffy - Thunder Shock - Level 10
  (180, 18000, 84, 11, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Flaaffy - Cotton Spore - Level 20
  (180, 18000, 178, 11, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Flaaffy - Charge - Level 25
  (180, 18000, 268, 11, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Flaaffy - Electro Ball - Level 31
  (180, 18000, 486, 11, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Flaaffy - Power Gem - Level 59
  (180, 18000, 408, 11, NULL, 1, 59, NULL, NULL, NULL, 9),
  -- Flaaffy - Discharge - Level 42
  (180, 18000, 435, 11, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Flaaffy - Cotton Guard - Level 36
  (180, 18000, 538, 11, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Flaaffy - Signal Beam - Level 47
  (180, 18000, 324, 11, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Flaaffy - Light Screen - Level 53
  (180, 18000, 113, 11, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Flaaffy - Thunder - Level 65
  (180, 18000, 87, 11, NULL, 1, 65, NULL, NULL, NULL, 14),
  -- Flaaffy - Growl - Level 5
  (180, 18000, 45, 11, NULL, 1, 5, NULL, NULL, NULL, 15),
  -- Flaaffy - Toxic - TM06
  (180, 18000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Flaaffy - Hidden Power - TM10
  (180, 18000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Flaaffy - Light Screen - TM16
  (180, 18000, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 18),
  -- Flaaffy - Protect - TM17
  (180, 18000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Flaaffy - Rain Dance - TM18
  (180, 18000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 20),
  -- Flaaffy - Safeguard - TM20
  (180, 18000, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 21),
  -- Flaaffy - Frustration - TM21
  (180, 18000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Flaaffy - Thunderbolt - TM24
  (180, 18000, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 23),
  -- Flaaffy - Thunder - TM25
  (180, 18000, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 24),
  -- Flaaffy - Return - TM27
  (180, 18000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Flaaffy - Brick Break - TM31
  (180, 18000, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 26),
  -- Flaaffy - Double Team - TM32
  (180, 18000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Flaaffy - Facade - TM42
  (180, 18000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 28),
  -- Flaaffy - Rest - TM44
  (180, 18000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 29),
  -- Flaaffy - Attract - TM45
  (180, 18000, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 30),
  -- Flaaffy - Round - TM48
  (180, 18000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 31),
  -- Flaaffy - Echoed Voice - TM49
  (180, 18000, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 32),
  -- Flaaffy - Fling - TM56
  (180, 18000, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 33),
  -- Flaaffy - Charge Beam - TM57
  (180, 18000, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 34),
  -- Flaaffy - Flash - TM70
  (180, 18000, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 35),
  -- Flaaffy - Volt Switch - TM72
  (180, 18000, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 36),
  -- Flaaffy - Thunder Wave - TM73
  (180, 18000, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 37),
  -- Flaaffy - Swagger - TM87
  (180, 18000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 38),
  -- Flaaffy - Substitute - TM90
  (180, 18000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 39),
  -- Flaaffy - Wild Charge - TM93
  (180, 18000, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 40),
  -- Flaaffy - Rock Smash - TM94
  (180, 18000, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 41),
  -- Flaaffy - Strength - HM04
  (180, 18000, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 42),
  -- Ampharos - Fire Punch - Level 1
  (181, 18100, 7, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ampharos - Tackle - Level 1
  (181, 18100, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ampharos - Growl - Level 1
  (181, 18100, 45, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ampharos - Thunder Wave - Level 1
  (181, 18100, 86, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ampharos - Thunder Shock - Level 1
  (181, 18100, 84, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ampharos - Growl - Level 5
  (181, 18100, 45, 11, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Ampharos - Thunder Wave - Level 14
  (181, 18100, 86, 11, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Ampharos - Thunder Shock - Level 10
  (181, 18100, 84, 11, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Ampharos - Cotton Spore - Level 20
  (181, 18100, 178, 11, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Ampharos - Charge - Level 25
  (181, 18100, 268, 11, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Ampharos - Electro Ball - Level 33
  (181, 18100, 486, 11, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Ampharos - Thunder Punch - Level 30
  (181, 18100, 9, 11, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Ampharos - Power Gem - Level 71
  (181, 18100, 408, 11, NULL, 1, 71, NULL, NULL, NULL, 13),
  -- Ampharos - Discharge - Level 48
  (181, 18100, 435, 11, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Ampharos - Cotton Guard - Level 40
  (181, 18100, 538, 11, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Ampharos - Signal Beam - Level 55
  (181, 18100, 324, 11, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Ampharos - Light Screen - Level 63
  (181, 18100, 113, 11, NULL, 1, 63, NULL, NULL, NULL, 17),
  -- Ampharos - Thunder - Level 79
  (181, 18100, 87, 11, NULL, 1, 79, NULL, NULL, NULL, 18),
  -- Ampharos - Toxic - TM06
  (181, 18100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Ampharos - Hidden Power - TM10
  (181, 18100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Ampharos - Hyper Beam - TM15
  (181, 18100, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 21),
  -- Ampharos - Light Screen - TM16
  (181, 18100, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 22),
  -- Ampharos - Protect - TM17
  (181, 18100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Ampharos - Rain Dance - TM18
  (181, 18100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Ampharos - Safeguard - TM20
  (181, 18100, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 25),
  -- Ampharos - Frustration - TM21
  (181, 18100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Ampharos - Thunderbolt - TM24
  (181, 18100, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 27),
  -- Ampharos - Thunder - TM25
  (181, 18100, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 28),
  -- Ampharos - Return - TM27
  (181, 18100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Ampharos - Brick Break - TM31
  (181, 18100, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 30),
  -- Ampharos - Double Team - TM32
  (181, 18100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Ampharos - Facade - TM42
  (181, 18100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 32),
  -- Ampharos - Rest - TM44
  (181, 18100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 33),
  -- Ampharos - Attract - TM45
  (181, 18100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 34),
  -- Ampharos - Round - TM48
  (181, 18100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 35),
  -- Ampharos - Echoed Voice - TM49
  (181, 18100, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 36),
  -- Ampharos - Focus Blast - TM52
  (181, 18100, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 37),
  -- Ampharos - Fling - TM56
  (181, 18100, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 38),
  -- Ampharos - Charge Beam - TM57
  (181, 18100, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 39),
  -- Ampharos - Giga Impact - TM68
  (181, 18100, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 40),
  -- Ampharos - Flash - TM70
  (181, 18100, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 41),
  -- Ampharos - Volt Switch - TM72
  (181, 18100, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 42),
  -- Ampharos - Thunder Wave - TM73
  (181, 18100, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 43),
  -- Ampharos - Bulldoze - TM78
  (181, 18100, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 44),
  -- Ampharos - Swagger - TM87
  (181, 18100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 45),
  -- Ampharos - Substitute - TM90
  (181, 18100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 46),
  -- Ampharos - Wild Charge - TM93
  (181, 18100, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 47),
  -- Ampharos - Rock Smash - TM94
  (181, 18100, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 48),
  -- Ampharos - Strength - HM04
  (181, 18100, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 49),
  -- Bellossom - Leaf Blade - Level 1
  (182, 18200, 348, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bellossom - Mega Drain - Level 1
  (182, 18200, 72, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bellossom - Sweet Scent - Level 1
  (182, 18200, 230, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bellossom - Stun Spore - Level 1
  (182, 18200, 78, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Bellossom - Sunny Day - Level 1
  (182, 18200, 241, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Bellossom - Magical Leaf - Level 23
  (182, 18200, 345, 11, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Bellossom - Leaf Storm - Level 53
  (182, 18200, 437, 11, NULL, 1, 53, NULL, NULL, NULL, 7),
  -- Bellossom - Toxic - TM06
  (182, 18200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 8),
  -- Bellossom - Venoshock - TM09
  (182, 18200, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 9),
  -- Bellossom - Hidden Power - TM10
  (182, 18200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 10),
  -- Bellossom - Sunny Day - TM11
  (182, 18200, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 11),
  -- Bellossom - Hyper Beam - TM15
  (182, 18200, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 12),
  -- Bellossom - Protect - TM17
  (182, 18200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 13),
  -- Bellossom - Safeguard - TM20
  (182, 18200, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 14),
  -- Bellossom - Frustration - TM21
  (182, 18200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 15),
  -- Bellossom - Solar Beam - TM22
  (182, 18200, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 16),
  -- Bellossom - Return - TM27
  (182, 18200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 17),
  -- Bellossom - Double Team - TM32
  (182, 18200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 18),
  -- Bellossom - Sludge Bomb - TM36
  (182, 18200, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 19),
  -- Bellossom - Facade - TM42
  (182, 18200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 20),
  -- Bellossom - Rest - TM44
  (182, 18200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 21),
  -- Bellossom - Attract - TM45
  (182, 18200, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 22),
  -- Bellossom - Round - TM48
  (182, 18200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 23),
  -- Bellossom - Energy Ball - TM53
  (182, 18200, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 24),
  -- Bellossom - Fling - TM56
  (182, 18200, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 25),
  -- Bellossom - Giga Impact - TM68
  (182, 18200, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 26),
  -- Bellossom - Flash - TM70
  (182, 18200, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 27),
  -- Bellossom - Swords Dance - TM75
  (182, 18200, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 28),
  -- Bellossom - Grass Knot - TM86
  (182, 18200, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 29),
  -- Bellossom - Swagger - TM87
  (182, 18200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 30),
  -- Bellossom - Substitute - TM90
  (182, 18200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 31),
  -- Bellossom - Cut - HM01
  (182, 18200, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 32),
  -- Marill - Tackle - Level 1
  (183, 18300, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marill - Tail Whip - Level 7
  (183, 18300, 39, 11, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Marill - Water Gun - Level 10
  (183, 18300, 55, 11, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Marill - Defense Curl - Level 2
  (183, 18300, 111, 11, NULL, 1, 2, NULL, NULL, NULL, 4),
  -- Marill - Rollout - Level 15
  (183, 18300, 205, 11, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Marill - Bubble Beam - Level 18
  (183, 18300, 61, 11, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Marill - Aqua Tail - Level 37
  (183, 18300, 401, 11, NULL, 1, 37, NULL, NULL, NULL, 7),
  -- Marill - Double-Edge - Level 27
  (183, 18300, 38, 11, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Marill - Aqua Ring - Level 23
  (183, 18300, 392, 11, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Marill - Rain Dance - Level 32
  (183, 18300, 240, 11, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Marill - Hydro Pump - Level 42
  (183, 18300, 56, 11, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Marill - Toxic - TM06
  (183, 18300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 12),
  -- Marill - Hail - TM07
  (183, 18300, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 13),
  -- Marill - Hidden Power - TM10
  (183, 18300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 14),
  -- Marill - Ice Beam - TM13
  (183, 18300, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 15),
  -- Marill - Blizzard - TM14
  (183, 18300, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 16),
  -- Marill - Light Screen - TM16
  (183, 18300, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 17),
  -- Marill - Protect - TM17
  (183, 18300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 18),
  -- Marill - Rain Dance - TM18
  (183, 18300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 19),
  -- Marill - Frustration - TM21
  (183, 18300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 20),
  -- Marill - Return - TM27
  (183, 18300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 21),
  -- Marill - Dig - TM28
  (183, 18300, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 22),
  -- Marill - Brick Break - TM31
  (183, 18300, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 23),
  -- Marill - Double Team - TM32
  (183, 18300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 24),
  -- Marill - Facade - TM42
  (183, 18300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 25),
  -- Marill - Rest - TM44
  (183, 18300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 26),
  -- Marill - Attract - TM45
  (183, 18300, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 27),
  -- Marill - Round - TM48
  (183, 18300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 28),
  -- Marill - Scald - TM55
  (183, 18300, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 29),
  -- Marill - Fling - TM56
  (183, 18300, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 30),
  -- Marill - Work Up - TM83
  (183, 18300, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 31),
  -- Marill - Grass Knot - TM86
  (183, 18300, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 32),
  -- Marill - Swagger - TM87
  (183, 18300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 33),
  -- Marill - Substitute - TM90
  (183, 18300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 34),
  -- Marill - Rock Smash - TM94
  (183, 18300, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 35),
  -- Marill - Surf - HM03
  (183, 18300, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 36),
  -- Marill - Strength - HM04
  (183, 18300, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 37),
  -- Marill - Waterfall - HM05
  (183, 18300, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 38),
  -- Marill - Dive - HM06
  (183, 18300, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 39),
  -- Marill - Amnesia - Egg Move
  (183, 18300, 133, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Marill - Aqua Jet - Egg Move
  (183, 18300, 453, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Marill - Belly Drum - Egg Move
  (183, 18300, 187, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Marill - Body Slam - Egg Move
  (183, 18300, 34, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Marill - Encore - Egg Move
  (183, 18300, 227, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Marill - Fake Tears - Egg Move
  (183, 18300, 313, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Marill - Future Sight - Egg Move
  (183, 18300, 248, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Marill - Muddy Water - Egg Move
  (183, 18300, 330, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Marill - Perish Song - Egg Move
  (183, 18300, 195, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Marill - Present - Egg Move
  (183, 18300, 217, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Marill - Refresh - Egg Move
  (183, 18300, 287, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Marill - Sing - Egg Move
  (183, 18300, 47, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Marill - Slam - Egg Move
  (183, 18300, 21, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Marill - Soak - Egg Move
  (183, 18300, 487, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Marill - Superpower - Egg Move
  (183, 18300, 276, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Marill - Supersonic - Egg Move
  (183, 18300, 48, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Marill - Tickle - Egg Move
  (183, 18300, 321, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Marill - Water Sport - Egg Move
  (183, 18300, 346, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Azumarill - Tackle - Level 1
  (184, 18400, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azumarill - Tail Whip - Level 1
  (184, 18400, 39, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Azumarill - Water Gun - Level 1
  (184, 18400, 55, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Azumarill - Defense Curl - Level 1
  (184, 18400, 111, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Azumarill - Tail Whip - Level 7
  (184, 18400, 39, 11, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Azumarill - Water Gun - Level 10
  (184, 18400, 55, 11, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Azumarill - Defense Curl - Level 2
  (184, 18400, 111, 11, NULL, 1, 2, NULL, NULL, NULL, 7),
  -- Azumarill - Rollout - Level 15
  (184, 18400, 205, 11, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Azumarill - Bubble Beam - Level 20
  (184, 18400, 61, 11, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Azumarill - Aqua Tail - Level 47
  (184, 18400, 401, 11, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Azumarill - Double-Edge - Level 33
  (184, 18400, 38, 11, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Azumarill - Aqua Ring - Level 27
  (184, 18400, 392, 11, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Azumarill - Rain Dance - Level 40
  (184, 18400, 240, 11, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Azumarill - Hydro Pump - Level 54
  (184, 18400, 56, 11, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Azumarill - Toxic - TM06
  (184, 18400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Azumarill - Hail - TM07
  (184, 18400, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 16),
  -- Azumarill - Hidden Power - TM10
  (184, 18400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Azumarill - Ice Beam - TM13
  (184, 18400, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 18),
  -- Azumarill - Blizzard - TM14
  (184, 18400, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 19),
  -- Azumarill - Hyper Beam - TM15
  (184, 18400, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 20),
  -- Azumarill - Light Screen - TM16
  (184, 18400, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 21),
  -- Azumarill - Protect - TM17
  (184, 18400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Azumarill - Rain Dance - TM18
  (184, 18400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Azumarill - Frustration - TM21
  (184, 18400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Azumarill - Return - TM27
  (184, 18400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Azumarill - Dig - TM28
  (184, 18400, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 26),
  -- Azumarill - Brick Break - TM31
  (184, 18400, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 27),
  -- Azumarill - Double Team - TM32
  (184, 18400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Azumarill - Facade - TM42
  (184, 18400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 29),
  -- Azumarill - Rest - TM44
  (184, 18400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 30),
  -- Azumarill - Attract - TM45
  (184, 18400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 31),
  -- Azumarill - Round - TM48
  (184, 18400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Azumarill - Focus Blast - TM52
  (184, 18400, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 33),
  -- Azumarill - Scald - TM55
  (184, 18400, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 34),
  -- Azumarill - Fling - TM56
  (184, 18400, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 35),
  -- Azumarill - Giga Impact - TM68
  (184, 18400, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 36),
  -- Azumarill - Bulldoze - TM78
  (184, 18400, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 37),
  -- Azumarill - Work Up - TM83
  (184, 18400, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 38),
  -- Azumarill - Grass Knot - TM86
  (184, 18400, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 39),
  -- Azumarill - Swagger - TM87
  (184, 18400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 40),
  -- Azumarill - Substitute - TM90
  (184, 18400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 41),
  -- Azumarill - Rock Smash - TM94
  (184, 18400, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 42),
  -- Azumarill - Surf - HM03
  (184, 18400, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 43),
  -- Azumarill - Strength - HM04
  (184, 18400, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 44),
  -- Azumarill - Waterfall - HM05
  (184, 18400, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 45),
  -- Azumarill - Dive - HM06
  (184, 18400, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 46),
  -- Sudowoodo - Wood Hammer - Level 1
  (185, 18500, 452, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sudowoodo - Copycat - Level 1
  (185, 18500, 383, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sudowoodo - Flail - Level 1
  (185, 18500, 175, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sudowoodo - Low Kick - Level 1
  (185, 18500, 67, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sudowoodo - Rock Throw - Level 1
  (185, 18500, 88, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sudowoodo - Flail - Level 6
  (185, 18500, 175, 11, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Sudowoodo - Low Kick - Level 9
  (185, 18500, 67, 11, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Sudowoodo - Rock Throw - Level 14
  (185, 18500, 88, 11, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Sudowoodo - Mimic - Level 17
  (185, 18500, 102, 11, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Sudowoodo - Slam - Level 38
  (185, 18500, 21, 11, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Sudowoodo - Feint Attack - Level 25
  (185, 18500, 185, 11, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Sudowoodo - Rock Tomb - Level 30
  (185, 18500, 317, 11, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Sudowoodo - Block - Level 22
  (185, 18500, 335, 11, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Sudowoodo - Rock Slide - Level 33
  (185, 18500, 157, 11, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Sudowoodo - Sucker Punch - Level 41
  (185, 18500, 389, 11, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Sudowoodo - Double-Edge - Level 46
  (185, 18500, 38, 11, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Sudowoodo - Hammer Arm - Level 49
  (185, 18500, 359, 11, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Sudowoodo - Calm Mind - TM04
  (185, 18500, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 18),
  -- Sudowoodo - Toxic - TM06
  (185, 18500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Sudowoodo - Hidden Power - TM10
  (185, 18500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Sudowoodo - Sunny Day - TM11
  (185, 18500, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Sudowoodo - Taunt - TM12
  (185, 18500, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 22),
  -- Sudowoodo - Protect - TM17
  (185, 18500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Sudowoodo - Frustration - TM21
  (185, 18500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Sudowoodo - Smack Down - TM23
  (185, 18500, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 25),
  -- Sudowoodo - Earthquake - TM26
  (185, 18500, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 26),
  -- Sudowoodo - Return - TM27
  (185, 18500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Sudowoodo - Dig - TM28
  (185, 18500, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 28),
  -- Sudowoodo - Brick Break - TM31
  (185, 18500, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 29),
  -- Sudowoodo - Double Team - TM32
  (185, 18500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Sudowoodo - Sandstorm - TM37
  (185, 18500, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 31),
  -- Sudowoodo - Rock Tomb - TM39
  (185, 18500, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 32),
  -- Sudowoodo - Torment - TM41
  (185, 18500, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 33),
  -- Sudowoodo - Facade - TM42
  (185, 18500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 34),
  -- Sudowoodo - Rest - TM44
  (185, 18500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 35),
  -- Sudowoodo - Attract - TM45
  (185, 18500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 36),
  -- Sudowoodo - Thief - TM46
  (185, 18500, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 37),
  -- Sudowoodo - Round - TM48
  (185, 18500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 38),
  -- Sudowoodo - Fling - TM56
  (185, 18500, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 39),
  -- Sudowoodo - Explosion - TM64
  (185, 18500, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 40),
  -- Sudowoodo - Rock Polish - TM69
  (185, 18500, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 41),
  -- Sudowoodo - Stone Edge - TM71
  (185, 18500, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 42),
  -- Sudowoodo - Psych Up - TM77
  (185, 18500, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 43),
  -- Sudowoodo - Bulldoze - TM78
  (185, 18500, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 44),
  -- Sudowoodo - Rock Slide - TM80
  (185, 18500, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 45),
  -- Sudowoodo - Swagger - TM87
  (185, 18500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 46),
  -- Sudowoodo - Substitute - TM90
  (185, 18500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 47),
  -- Sudowoodo - Rock Smash - TM94
  (185, 18500, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 48),
  -- Sudowoodo - Strength - HM04
  (185, 18500, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 49),
  -- Sudowoodo - Curse - Egg Move
  (185, 18500, 174, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Sudowoodo - Defense Curl - Egg Move
  (185, 18500, 111, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Sudowoodo - Endure - Egg Move
  (185, 18500, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Sudowoodo - Harden - Egg Move
  (185, 18500, 106, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sudowoodo - Headbutt - Egg Move
  (185, 18500, 29, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sudowoodo - Rollout - Egg Move
  (185, 18500, 205, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sudowoodo - Sand Tomb - Egg Move
  (185, 18500, 328, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sudowoodo - Self-Destruct - Egg Move
  (185, 18500, 120, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sudowoodo - Stealth Rock - Egg Move
  (185, 18500, 446, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Politoed - Bubble Beam - Level 1
  (186, 18600, 61, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Politoed - Hypnosis - Level 1
  (186, 18600, 95, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Politoed - Double Slap - Level 1
  (186, 18600, 3, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Politoed - Perish Song - Level 1
  (186, 18600, 195, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Politoed - Swagger - Level 27
  (186, 18600, 207, 11, NULL, 1, 27, NULL, NULL, NULL, 5),
  -- Politoed - Bounce - Level 37
  (186, 18600, 340, 11, NULL, 1, 37, NULL, NULL, NULL, 6),
  -- Politoed - Hyper Voice - Level 48
  (186, 18600, 304, 11, NULL, 1, 48, NULL, NULL, NULL, 7),
  -- Politoed - Toxic - TM06
  (186, 18600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 8),
  -- Politoed - Hail - TM07
  (186, 18600, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 9),
  -- Politoed - Hidden Power - TM10
  (186, 18600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 10),
  -- Politoed - Ice Beam - TM13
  (186, 18600, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 11),
  -- Politoed - Blizzard - TM14
  (186, 18600, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 12),
  -- Politoed - Hyper Beam - TM15
  (186, 18600, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 13),
  -- Politoed - Protect - TM17
  (186, 18600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 14),
  -- Politoed - Rain Dance - TM18
  (186, 18600, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 15),
  -- Politoed - Frustration - TM21
  (186, 18600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 16),
  -- Politoed - Earthquake - TM26
  (186, 18600, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 17),
  -- Politoed - Return - TM27
  (186, 18600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 18),
  -- Politoed - Dig - TM28
  (186, 18600, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 19),
  -- Politoed - Psychic - TM29
  (186, 18600, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 20),
  -- Politoed - Brick Break - TM31
  (186, 18600, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 21),
  -- Politoed - Double Team - TM32
  (186, 18600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 22),
  -- Politoed - Facade - TM42
  (186, 18600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 23),
  -- Politoed - Rest - TM44
  (186, 18600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 24),
  -- Politoed - Attract - TM45
  (186, 18600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 25),
  -- Politoed - Thief - TM46
  (186, 18600, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 26),
  -- Politoed - Round - TM48
  (186, 18600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 27),
  -- Politoed - Echoed Voice - TM49
  (186, 18600, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 28),
  -- Politoed - Focus Blast - TM52
  (186, 18600, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 29),
  -- Politoed - Scald - TM55
  (186, 18600, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 30),
  -- Politoed - Fling - TM56
  (186, 18600, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 31),
  -- Politoed - Payback - TM66
  (186, 18600, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 32),
  -- Politoed - Giga Impact - TM68
  (186, 18600, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 33),
  -- Politoed - Bulldoze - TM78
  (186, 18600, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 34),
  -- Politoed - Swagger - TM87
  (186, 18600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 35),
  -- Politoed - Substitute - TM90
  (186, 18600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 36),
  -- Politoed - Rock Smash - TM94
  (186, 18600, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 37),
  -- Politoed - Surf - HM03
  (186, 18600, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 38),
  -- Politoed - Strength - HM04
  (186, 18600, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 39),
  -- Politoed - Waterfall - HM05
  (186, 18600, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 40),
  -- Politoed - Dive - HM06
  (186, 18600, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 41),
  -- Hoppip - Splash - Level 1
  (187, 18700, 150, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hoppip - Synthesis - Level 4
  (187, 18700, 235, 11, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Hoppip - Tail Whip - Level 7
  (187, 18700, 39, 11, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Hoppip - Tackle - Level 10
  (187, 18700, 33, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Hoppip - Poison Powder - Level 12
  (187, 18700, 77, 11, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Hoppip - Stun Spore - Level 14
  (187, 18700, 78, 11, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Hoppip - Sleep Powder - Level 16
  (187, 18700, 79, 11, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Hoppip - Bullet Seed - Level 19
  (187, 18700, 331, 11, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Hoppip - Leech Seed - Level 22
  (187, 18700, 73, 11, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Hoppip - Mega Drain - Level 25
  (187, 18700, 72, 11, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Hoppip - Acrobatics - Level 28
  (187, 18700, 512, 11, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Hoppip - Rage Powder - Level 31
  (187, 18700, 476, 11, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Hoppip - Cotton Spore - Level 34
  (187, 18700, 178, 11, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Hoppip - U-turn - Level 37
  (187, 18700, 369, 11, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Hoppip - Worry Seed - Level 40
  (187, 18700, 388, 11, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Hoppip - Giga Drain - Level 43
  (187, 18700, 202, 11, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Hoppip - Bounce - Level 46
  (187, 18700, 340, 11, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Hoppip - Memento - Level 49
  (187, 18700, 262, 11, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Hoppip - Toxic - TM06
  (187, 18700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Hoppip - Hidden Power - TM10
  (187, 18700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Hoppip - Sunny Day - TM11
  (187, 18700, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Hoppip - Protect - TM17
  (187, 18700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Hoppip - Frustration - TM21
  (187, 18700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Hoppip - Solar Beam - TM22
  (187, 18700, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 24),
  -- Hoppip - Return - TM27
  (187, 18700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Hoppip - Double Team - TM32
  (187, 18700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Hoppip - Reflect - TM33
  (187, 18700, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 27),
  -- Hoppip - Aerial Ace - TM40
  (187, 18700, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 28),
  -- Hoppip - Facade - TM42
  (187, 18700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 29),
  -- Hoppip - Rest - TM44
  (187, 18700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 30),
  -- Hoppip - Attract - TM45
  (187, 18700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 31),
  -- Hoppip - Round - TM48
  (187, 18700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Hoppip - Energy Ball - TM53
  (187, 18700, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 33),
  -- Hoppip - Acrobatics - TM62
  (187, 18700, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 34),
  -- Hoppip - Flash - TM70
  (187, 18700, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 35),
  -- Hoppip - Swords Dance - TM75
  (187, 18700, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 36),
  -- Hoppip - Psych Up - TM77
  (187, 18700, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 37),
  -- Hoppip - Grass Knot - TM86
  (187, 18700, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 38),
  -- Hoppip - Swagger - TM87
  (187, 18700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 39),
  -- Hoppip - U-turn - TM89
  (187, 18700, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 40),
  -- Hoppip - Substitute - TM90
  (187, 18700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 41),
  -- Hoppip - Amnesia - Egg Move
  (187, 18700, 133, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Hoppip - Aromatherapy - Egg Move
  (187, 18700, 312, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Hoppip - Confusion - Egg Move
  (187, 18700, 93, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Hoppip - Cotton Guard - Egg Move
  (187, 18700, 538, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Hoppip - Double-Edge - Egg Move
  (187, 18700, 38, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Hoppip - Encore - Egg Move
  (187, 18700, 227, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Hoppip - Endure - Egg Move
  (187, 18700, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Hoppip - Helping Hand - Egg Move
  (187, 18700, 270, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Hoppip - Seed Bomb - Egg Move
  (187, 18700, 402, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Hoppip - Worry Seed - Egg Move
  (187, 18700, 388, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Skiploom - Splash - Level 1
  (188, 18800, 150, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skiploom - Synthesis - Level 1
  (188, 18800, 235, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skiploom - Tail Whip - Level 1
  (188, 18800, 39, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Skiploom - Tackle - Level 1
  (188, 18800, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Skiploom - Synthesis - Level 4
  (188, 18800, 235, 11, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Skiploom - Tail Whip - Level 7
  (188, 18800, 39, 11, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Skiploom - Tackle - Level 10
  (188, 18800, 33, 11, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Skiploom - Poison Powder - Level 12
  (188, 18800, 77, 11, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Skiploom - Stun Spore - Level 14
  (188, 18800, 78, 11, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Skiploom - Sleep Powder - Level 16
  (188, 18800, 79, 11, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Skiploom - Bullet Seed - Level 20
  (188, 18800, 331, 11, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Skiploom - Leech Seed - Level 24
  (188, 18800, 73, 11, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Skiploom - Mega Drain - Level 28
  (188, 18800, 72, 11, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Skiploom - Acrobatics - Level 32
  (188, 18800, 512, 11, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Skiploom - Rage Powder - Level 36
  (188, 18800, 476, 11, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Skiploom - Cotton Spore - Level 40
  (188, 18800, 178, 11, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Skiploom - U-turn - Level 44
  (188, 18800, 369, 11, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Skiploom - Worry Seed - Level 48
  (188, 18800, 388, 11, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Skiploom - Giga Drain - Level 52
  (188, 18800, 202, 11, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Skiploom - Bounce - Level 56
  (188, 18800, 340, 11, NULL, 1, 56, NULL, NULL, NULL, 20),
  -- Skiploom - Memento - Level 60
  (188, 18800, 262, 11, NULL, 1, 60, NULL, NULL, NULL, 21),
  -- Skiploom - Toxic - TM06
  (188, 18800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 22),
  -- Skiploom - Hidden Power - TM10
  (188, 18800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 23),
  -- Skiploom - Sunny Day - TM11
  (188, 18800, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 24),
  -- Skiploom - Protect - TM17
  (188, 18800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Skiploom - Frustration - TM21
  (188, 18800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Skiploom - Solar Beam - TM22
  (188, 18800, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 27),
  -- Skiploom - Return - TM27
  (188, 18800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Skiploom - Double Team - TM32
  (188, 18800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 29),
  -- Skiploom - Reflect - TM33
  (188, 18800, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 30),
  -- Skiploom - Aerial Ace - TM40
  (188, 18800, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 31),
  -- Skiploom - Facade - TM42
  (188, 18800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 32),
  -- Skiploom - Rest - TM44
  (188, 18800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 33),
  -- Skiploom - Attract - TM45
  (188, 18800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 34),
  -- Skiploom - Round - TM48
  (188, 18800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 35),
  -- Skiploom - Energy Ball - TM53
  (188, 18800, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 36),
  -- Skiploom - Acrobatics - TM62
  (188, 18800, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 37),
  -- Skiploom - Flash - TM70
  (188, 18800, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 38),
  -- Skiploom - Swords Dance - TM75
  (188, 18800, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 39),
  -- Skiploom - Psych Up - TM77
  (188, 18800, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 40),
  -- Skiploom - Grass Knot - TM86
  (188, 18800, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 41),
  -- Skiploom - Swagger - TM87
  (188, 18800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 42),
  -- Skiploom - U-turn - TM89
  (188, 18800, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 43),
  -- Skiploom - Substitute - TM90
  (188, 18800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 44),
  -- Jumpluff - Splash - Level 1
  (189, 18900, 150, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jumpluff - Synthesis - Level 1
  (189, 18900, 235, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jumpluff - Tail Whip - Level 1
  (189, 18900, 39, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jumpluff - Tackle - Level 1
  (189, 18900, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jumpluff - Synthesis - Level 4
  (189, 18900, 235, 11, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Jumpluff - Tail Whip - Level 7
  (189, 18900, 39, 11, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Jumpluff - Tackle - Level 10
  (189, 18900, 33, 11, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Jumpluff - Poison Powder - Level 12
  (189, 18900, 77, 11, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Jumpluff - Stun Spore - Level 14
  (189, 18900, 78, 11, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Jumpluff - Sleep Powder - Level 16
  (189, 18900, 79, 11, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Jumpluff - Bullet Seed - Level 20
  (189, 18900, 331, 11, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Jumpluff - Leech Seed - Level 24
  (189, 18900, 73, 11, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Jumpluff - Mega Drain - Level 29
  (189, 18900, 72, 11, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Jumpluff - Acrobatics - Level 34
  (189, 18900, 512, 11, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Jumpluff - Rage Powder - Level 39
  (189, 18900, 476, 11, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Jumpluff - Cotton Spore - Level 44
  (189, 18900, 178, 11, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Jumpluff - U-turn - Level 49
  (189, 18900, 369, 11, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Jumpluff - Worry Seed - Level 54
  (189, 18900, 388, 11, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Jumpluff - Giga Drain - Level 59
  (189, 18900, 202, 11, NULL, 1, 59, NULL, NULL, NULL, 19),
  -- Jumpluff - Bounce - Level 64
  (189, 18900, 340, 11, NULL, 1, 64, NULL, NULL, NULL, 20),
  -- Jumpluff - Memento - Level 69
  (189, 18900, 262, 11, NULL, 1, 69, NULL, NULL, NULL, 21),
  -- Jumpluff - Toxic - TM06
  (189, 18900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 22),
  -- Jumpluff - Hidden Power - TM10
  (189, 18900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 23),
  -- Jumpluff - Sunny Day - TM11
  (189, 18900, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 24),
  -- Jumpluff - Hyper Beam - TM15
  (189, 18900, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 25),
  -- Jumpluff - Protect - TM17
  (189, 18900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 26),
  -- Jumpluff - Frustration - TM21
  (189, 18900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 27),
  -- Jumpluff - Solar Beam - TM22
  (189, 18900, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 28),
  -- Jumpluff - Return - TM27
  (189, 18900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Jumpluff - Double Team - TM32
  (189, 18900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Jumpluff - Reflect - TM33
  (189, 18900, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 31),
  -- Jumpluff - Aerial Ace - TM40
  (189, 18900, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 32),
  -- Jumpluff - Facade - TM42
  (189, 18900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Jumpluff - Rest - TM44
  (189, 18900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Jumpluff - Attract - TM45
  (189, 18900, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Jumpluff - Round - TM48
  (189, 18900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Jumpluff - Energy Ball - TM53
  (189, 18900, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 37),
  -- Jumpluff - Acrobatics - TM62
  (189, 18900, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 38),
  -- Jumpluff - Giga Impact - TM68
  (189, 18900, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 39),
  -- Jumpluff - Flash - TM70
  (189, 18900, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 40),
  -- Jumpluff - Swords Dance - TM75
  (189, 18900, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 41),
  -- Jumpluff - Psych Up - TM77
  (189, 18900, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 42),
  -- Jumpluff - Grass Knot - TM86
  (189, 18900, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 43),
  -- Jumpluff - Swagger - TM87
  (189, 18900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 44),
  -- Jumpluff - U-turn - TM89
  (189, 18900, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 45),
  -- Jumpluff - Substitute - TM90
  (189, 18900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 46),
  -- Aipom - Scratch - Level 1
  (190, 19000, 10, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aipom - Tail Whip - Level 1
  (190, 19000, 39, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aipom - Sand Attack - Level 4
  (190, 19000, 28, 11, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Aipom - Astonish - Level 8
  (190, 19000, 310, 11, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Aipom - Baton Pass - Level 11
  (190, 19000, 226, 11, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Aipom - Tickle - Level 15
  (190, 19000, 321, 11, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Aipom - Fury Swipes - Level 18
  (190, 19000, 154, 11, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Aipom - Swift - Level 22
  (190, 19000, 129, 11, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Aipom - Screech - Level 25
  (190, 19000, 103, 11, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Aipom - Agility - Level 29
  (190, 19000, 97, 11, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Aipom - Double Hit - Level 32
  (190, 19000, 458, 11, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Aipom - Fling - Level 36
  (190, 19000, 374, 11, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Aipom - Nasty Plot - Level 39
  (190, 19000, 417, 11, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Aipom - Last Resort - Level 43
  (190, 19000, 387, 11, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Aipom - Hone Claws - TM01
  (190, 19000, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 15),
  -- Aipom - Toxic - TM06
  (190, 19000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Aipom - Hidden Power - TM10
  (190, 19000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Aipom - Sunny Day - TM11
  (190, 19000, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 18),
  -- Aipom - Taunt - TM12
  (190, 19000, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 19),
  -- Aipom - Protect - TM17
  (190, 19000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 20),
  -- Aipom - Rain Dance - TM18
  (190, 19000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 21),
  -- Aipom - Frustration - TM21
  (190, 19000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Aipom - Solar Beam - TM22
  (190, 19000, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 23),
  -- Aipom - Thunderbolt - TM24
  (190, 19000, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 24),
  -- Aipom - Thunder - TM25
  (190, 19000, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 25),
  -- Aipom - Return - TM27
  (190, 19000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Aipom - Dig - TM28
  (190, 19000, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 27),
  -- Aipom - Shadow Ball - TM30
  (190, 19000, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 28),
  -- Aipom - Brick Break - TM31
  (190, 19000, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 29),
  -- Aipom - Double Team - TM32
  (190, 19000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Aipom - Aerial Ace - TM40
  (190, 19000, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 31),
  -- Aipom - Facade - TM42
  (190, 19000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 32),
  -- Aipom - Rest - TM44
  (190, 19000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 33),
  -- Aipom - Attract - TM45
  (190, 19000, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 34),
  -- Aipom - Thief - TM46
  (190, 19000, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 35),
  -- Aipom - Low Sweep - TM47
  (190, 19000, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 36),
  -- Aipom - Round - TM48
  (190, 19000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Aipom - Fling - TM56
  (190, 19000, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 38),
  -- Aipom - Acrobatics - TM62
  (190, 19000, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 39),
  -- Aipom - Shadow Claw - TM65
  (190, 19000, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 40),
  -- Aipom - Payback - TM66
  (190, 19000, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 41),
  -- Aipom - Retaliate - TM67
  (190, 19000, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 42),
  -- Aipom - Thunder Wave - TM73
  (190, 19000, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 43),
  -- Aipom - Work Up - TM83
  (190, 19000, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 44),
  -- Aipom - Dream Eater - TM85
  (190, 19000, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 45),
  -- Aipom - Grass Knot - TM86
  (190, 19000, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 46),
  -- Aipom - Swagger - TM87
  (190, 19000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 47),
  -- Aipom - U-turn - TM89
  (190, 19000, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 48),
  -- Aipom - Substitute - TM90
  (190, 19000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 49),
  -- Aipom - Rock Smash - TM94
  (190, 19000, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 50),
  -- Aipom - Cut - HM01
  (190, 19000, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 51),
  -- Aipom - Strength - HM04
  (190, 19000, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 52),
  -- Aipom - Agility - Egg Move
  (190, 19000, 97, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Aipom - Beat Up - Egg Move
  (190, 19000, 251, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Aipom - Bounce - Egg Move
  (190, 19000, 340, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Aipom - Counter - Egg Move
  (190, 19000, 68, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Aipom - Covet - Egg Move
  (190, 19000, 343, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Aipom - Double Slap - Egg Move
  (190, 19000, 3, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Aipom - Fake Out - Egg Move
  (190, 19000, 252, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Aipom - Pursuit - Egg Move
  (190, 19000, 228, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Aipom - Revenge - Egg Move
  (190, 19000, 279, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Aipom - Screech - Egg Move
  (190, 19000, 103, 11, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Aipom - Slam - Egg Move
  (190, 19000, 21, 11, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Aipom - Spite - Egg Move
  (190, 19000, 180, 11, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Aipom - Switcheroo - Egg Move
  (190, 19000, 415, 11, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sunkern - Absorb - Level 1
  (191, 19100, 71, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sunkern - Growth - Level 1
  (191, 19100, 74, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sunkern - Ingrain - Level 9
  (191, 19100, 275, 11, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Sunkern - Grass Whistle - Level 13
  (191, 19100, 320, 11, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Sunkern - Mega Drain - Level 5
  (191, 19100, 72, 11, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Sunkern - Leech Seed - Level 17
  (191, 19100, 73, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Sunkern - Razor Leaf - Level 29
  (191, 19100, 75, 11, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Sunkern - Worry Seed - Level 25
  (191, 19100, 388, 11, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Sunkern - Giga Drain - Level 41
  (191, 19100, 202, 11, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Sunkern - Endeavor - Level 21
  (191, 19100, 283, 11, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Sunkern - Synthesis - Level 33
  (191, 19100, 235, 11, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Sunkern - Sunny Day - Level 37
  (191, 19100, 241, 11, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Sunkern - Seed Bomb - Level 45
  (191, 19100, 402, 11, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Sunkern - Toxic - TM06
  (191, 19100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 14),
  -- Sunkern - Hidden Power - TM10
  (191, 19100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 15),
  -- Sunkern - Sunny Day - TM11
  (191, 19100, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 16),
  -- Sunkern - Light Screen - TM16
  (191, 19100, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 17),
  -- Sunkern - Protect - TM17
  (191, 19100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 18),
  -- Sunkern - Safeguard - TM20
  (191, 19100, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 19),
  -- Sunkern - Frustration - TM21
  (191, 19100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 20),
  -- Sunkern - Solar Beam - TM22
  (191, 19100, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 21),
  -- Sunkern - Return - TM27
  (191, 19100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 22),
  -- Sunkern - Double Team - TM32
  (191, 19100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 23),
  -- Sunkern - Sludge Bomb - TM36
  (191, 19100, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 24),
  -- Sunkern - Facade - TM42
  (191, 19100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 25),
  -- Sunkern - Rest - TM44
  (191, 19100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 26),
  -- Sunkern - Attract - TM45
  (191, 19100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 27),
  -- Sunkern - Round - TM48
  (191, 19100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 28),
  -- Sunkern - Energy Ball - TM53
  (191, 19100, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 29),
  -- Sunkern - Flash - TM70
  (191, 19100, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 30),
  -- Sunkern - Swords Dance - TM75
  (191, 19100, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 31),
  -- Sunkern - Grass Knot - TM86
  (191, 19100, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 32),
  -- Sunkern - Swagger - TM87
  (191, 19100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 33),
  -- Sunkern - Substitute - TM90
  (191, 19100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 34),
  -- Sunkern - Cut - HM01
  (191, 19100, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 35),
  -- Sunkern - Bide - Egg Move
  (191, 19100, 117, 11, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Sunkern - Curse - Egg Move
  (191, 19100, 174, 11, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Sunkern - Encore - Egg Move
  (191, 19100, 227, 11, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Sunkern - Endure - Egg Move
  (191, 19100, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Sunkern - Grass Whistle - Egg Move
  (191, 19100, 320, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Sunkern - Helping Hand - Egg Move
  (191, 19100, 270, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Sunkern - Ingrain - Egg Move
  (191, 19100, 275, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Sunkern - Leech Seed - Egg Move
  (191, 19100, 73, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Sunkern - Morning Sun - Egg Move
  (191, 19100, 234, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Sunkern - Natural Gift - Egg Move
  (191, 19100, 363, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Sunkern - Nature Power - Egg Move
  (191, 19100, 267, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Sunkern - Sweet Scent - Egg Move
  (191, 19100, 230, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Sunflora - Absorb - Level 1
  (192, 19200, 71, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sunflora - Pound - Level 1
  (192, 19200, 1, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sunflora - Growth - Level 1
  (192, 19200, 74, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sunflora - Ingrain - Level 9
  (192, 19200, 275, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Sunflora - Grass Whistle - Level 13
  (192, 19200, 320, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Sunflora - Mega Drain - Level 5
  (192, 19200, 72, 11, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Sunflora - Leech Seed - Level 17
  (192, 19200, 73, 11, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Sunflora - Razor Leaf - Level 29
  (192, 19200, 75, 11, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Sunflora - Worry Seed - Level 25
  (192, 19200, 388, 11, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Sunflora - Bullet Seed - Level 21
  (192, 19200, 331, 11, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Sunflora - Petal Dance - Level 33
  (192, 19200, 80, 11, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Sunflora - Solar Beam - Level 41
  (192, 19200, 76, 11, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Sunflora - Sunny Day - Level 37
  (192, 19200, 241, 11, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Sunflora - Leaf Storm - Level 45
  (192, 19200, 437, 11, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Sunflora - Toxic - TM06
  (192, 19200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Sunflora - Hidden Power - TM10
  (192, 19200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Sunflora - Sunny Day - TM11
  (192, 19200, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Sunflora - Hyper Beam - TM15
  (192, 19200, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 18),
  -- Sunflora - Light Screen - TM16
  (192, 19200, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 19),
  -- Sunflora - Protect - TM17
  (192, 19200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 20),
  -- Sunflora - Safeguard - TM20
  (192, 19200, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 21),
  -- Sunflora - Frustration - TM21
  (192, 19200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Sunflora - Solar Beam - TM22
  (192, 19200, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 23),
  -- Sunflora - Return - TM27
  (192, 19200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Sunflora - Double Team - TM32
  (192, 19200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 25),
  -- Sunflora - Sludge Bomb - TM36
  (192, 19200, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 26),
  -- Sunflora - Facade - TM42
  (192, 19200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 27),
  -- Sunflora - Rest - TM44
  (192, 19200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 28),
  -- Sunflora - Attract - TM45
  (192, 19200, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 29),
  -- Sunflora - Round - TM48
  (192, 19200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 30),
  -- Sunflora - Energy Ball - TM53
  (192, 19200, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 31),
  -- Sunflora - Giga Impact - TM68
  (192, 19200, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 32),
  -- Sunflora - Flash - TM70
  (192, 19200, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 33),
  -- Sunflora - Swords Dance - TM75
  (192, 19200, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 34),
  -- Sunflora - Grass Knot - TM86
  (192, 19200, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 35),
  -- Sunflora - Swagger - TM87
  (192, 19200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 36),
  -- Sunflora - Substitute - TM90
  (192, 19200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 37),
  -- Sunflora - Cut - HM01
  (192, 19200, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 38),
  -- Yanma - Tackle - Level 1
  (193, 19300, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yanma - Foresight - Level 1
  (193, 19300, 193, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yanma - Quick Attack - Level 6
  (193, 19300, 98, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Yanma - Double Team - Level 11
  (193, 19300, 104, 11, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Yanma - Sonic Boom - Level 14
  (193, 19300, 49, 11, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Yanma - Detect - Level 17
  (193, 19300, 197, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Yanma - Supersonic - Level 22
  (193, 19300, 48, 11, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Yanma - Uproar - Level 27
  (193, 19300, 253, 11, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Yanma - Pursuit - Level 30
  (193, 19300, 228, 11, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Yanma - Ancient Power - Level 33
  (193, 19300, 246, 11, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Yanma - Hypnosis - Level 38
  (193, 19300, 95, 11, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Yanma - Wing Attack - Level 43
  (193, 19300, 17, 11, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Yanma - Screech - Level 46
  (193, 19300, 103, 11, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Yanma - U-turn - Level 49
  (193, 19300, 369, 11, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Yanma - Air Slash - Level 54
  (193, 19300, 403, 11, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Yanma - Bug Buzz - Level 57
  (193, 19300, 405, 11, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Yanma - Toxic - TM06
  (193, 19300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Yanma - Hidden Power - TM10
  (193, 19300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Yanma - Sunny Day - TM11
  (193, 19300, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Yanma - Protect - TM17
  (193, 19300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 20),
  -- Yanma - Frustration - TM21
  (193, 19300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 21),
  -- Yanma - Solar Beam - TM22
  (193, 19300, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 22),
  -- Yanma - Return - TM27
  (193, 19300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 23),
  -- Yanma - Psychic - TM29
  (193, 19300, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 24),
  -- Yanma - Shadow Ball - TM30
  (193, 19300, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 25),
  -- Yanma - Double Team - TM32
  (193, 19300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Yanma - Aerial Ace - TM40
  (193, 19300, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 27),
  -- Yanma - Facade - TM42
  (193, 19300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 28),
  -- Yanma - Rest - TM44
  (193, 19300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 29),
  -- Yanma - Attract - TM45
  (193, 19300, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 30),
  -- Yanma - Thief - TM46
  (193, 19300, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 31),
  -- Yanma - Round - TM48
  (193, 19300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Yanma - Flash - TM70
  (193, 19300, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 33),
  -- Yanma - Dream Eater - TM85
  (193, 19300, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 34),
  -- Yanma - Swagger - TM87
  (193, 19300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 35),
  -- Yanma - U-turn - TM89
  (193, 19300, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 36),
  -- Yanma - Substitute - TM90
  (193, 19300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 37),
  -- Yanma - Double-Edge - Egg Move
  (193, 19300, 38, 11, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Yanma - Feint Attack - Egg Move
  (193, 19300, 185, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Yanma - Feint - Egg Move
  (193, 19300, 364, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Yanma - Leech Life - Egg Move
  (193, 19300, 141, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Yanma - Pursuit - Egg Move
  (193, 19300, 228, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Yanma - Reversal - Egg Move
  (193, 19300, 179, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Yanma - Secret Power - Egg Move
  (193, 19300, 290, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Yanma - Signal Beam - Egg Move
  (193, 19300, 324, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Yanma - Silver Wind - Egg Move
  (193, 19300, 318, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Yanma - Whirlwind - Egg Move
  (193, 19300, 18, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Wooper - Water Gun - Level 1
  (194, 19400, 55, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wooper - Tail Whip - Level 1
  (194, 19400, 39, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wooper - Mud Sport - Level 5
  (194, 19400, 300, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Wooper - Mud Shot - Level 9
  (194, 19400, 341, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Wooper - Slam - Level 15
  (194, 19400, 21, 11, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Wooper - Mud Bomb - Level 19
  (194, 19400, 426, 11, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Wooper - Amnesia - Level 23
  (194, 19400, 133, 11, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Wooper - Yawn - Level 29
  (194, 19400, 281, 11, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Wooper - Earthquake - Level 33
  (194, 19400, 89, 11, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Wooper - Rain Dance - Level 37
  (194, 19400, 240, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Wooper - Mist - Level 43
  (194, 19400, 54, 11, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Wooper - Haze - Level 43
  (194, 19400, 114, 11, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Wooper - Muddy Water - Level 47
  (194, 19400, 330, 11, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Wooper - Toxic - TM06
  (194, 19400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 14),
  -- Wooper - Hail - TM07
  (194, 19400, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 15),
  -- Wooper - Hidden Power - TM10
  (194, 19400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Wooper - Ice Beam - TM13
  (194, 19400, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 17),
  -- Wooper - Blizzard - TM14
  (194, 19400, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 18),
  -- Wooper - Protect - TM17
  (194, 19400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Wooper - Rain Dance - TM18
  (194, 19400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 20),
  -- Wooper - Safeguard - TM20
  (194, 19400, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 21),
  -- Wooper - Frustration - TM21
  (194, 19400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Wooper - Earthquake - TM26
  (194, 19400, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 23),
  -- Wooper - Return - TM27
  (194, 19400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Wooper - Dig - TM28
  (194, 19400, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 25),
  -- Wooper - Double Team - TM32
  (194, 19400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Wooper - Sludge Wave - TM34
  (194, 19400, 482, 11, NULL, 2, NULL, NULL, 11002034, NULL, 27),
  -- Wooper - Sludge Bomb - TM36
  (194, 19400, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 28),
  -- Wooper - Sandstorm - TM37
  (194, 19400, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 29),
  -- Wooper - Facade - TM42
  (194, 19400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 30),
  -- Wooper - Rest - TM44
  (194, 19400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 31),
  -- Wooper - Attract - TM45
  (194, 19400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 32),
  -- Wooper - Round - TM48
  (194, 19400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 33),
  -- Wooper - Scald - TM55
  (194, 19400, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 34),
  -- Wooper - Flash - TM70
  (194, 19400, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 35),
  -- Wooper - Bulldoze - TM78
  (194, 19400, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 36),
  -- Wooper - Swagger - TM87
  (194, 19400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 37),
  -- Wooper - Substitute - TM90
  (194, 19400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 38),
  -- Wooper - Rock Smash - TM94
  (194, 19400, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 39),
  -- Wooper - Surf - HM03
  (194, 19400, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 40),
  -- Wooper - Waterfall - HM05
  (194, 19400, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 41),
  -- Wooper - Dive - HM06
  (194, 19400, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 42),
  -- Wooper - Acid Spray - Egg Move
  (194, 19400, 491, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Wooper - After You - Egg Move
  (194, 19400, 495, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Wooper - Ancient Power - Egg Move
  (194, 19400, 246, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Wooper - Body Slam - Egg Move
  (194, 19400, 34, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Wooper - Counter - Egg Move
  (194, 19400, 68, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Wooper - Curse - Egg Move
  (194, 19400, 174, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Wooper - Double Kick - Egg Move
  (194, 19400, 24, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Wooper - Encore - Egg Move
  (194, 19400, 227, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Wooper - Mud Sport - Egg Move
  (194, 19400, 300, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Wooper - Recover - Egg Move
  (194, 19400, 105, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Wooper - Sleep Talk - Egg Move
  (194, 19400, 214, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Wooper - Spit Up - Egg Move
  (194, 19400, 255, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Wooper - Stockpile - Egg Move
  (194, 19400, 254, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Wooper - Swallow - Egg Move
  (194, 19400, 256, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Quagsire - Water Gun - Level 1
  (195, 19500, 55, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Quagsire - Tail Whip - Level 1
  (195, 19500, 39, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Quagsire - Mud Sport - Level 1
  (195, 19500, 300, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Quagsire - Mud Sport - Level 5
  (195, 19500, 300, 11, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Quagsire - Mud Shot - Level 9
  (195, 19500, 341, 11, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Quagsire - Slam - Level 15
  (195, 19500, 21, 11, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Quagsire - Mud Bomb - Level 19
  (195, 19500, 426, 11, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Quagsire - Amnesia - Level 24
  (195, 19500, 133, 11, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Quagsire - Yawn - Level 31
  (195, 19500, 281, 11, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Quagsire - Earthquake - Level 36
  (195, 19500, 89, 11, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Quagsire - Rain Dance - Level 41
  (195, 19500, 240, 11, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Quagsire - Mist - Level 48
  (195, 19500, 54, 11, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Quagsire - Haze - Level 48
  (195, 19500, 114, 11, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Quagsire - Muddy Water - Level 53
  (195, 19500, 330, 11, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Quagsire - Toxic - TM06
  (195, 19500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Quagsire - Hail - TM07
  (195, 19500, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 16),
  -- Quagsire - Hidden Power - TM10
  (195, 19500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Quagsire - Ice Beam - TM13
  (195, 19500, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 18),
  -- Quagsire - Blizzard - TM14
  (195, 19500, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 19),
  -- Quagsire - Hyper Beam - TM15
  (195, 19500, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 20),
  -- Quagsire - Protect - TM17
  (195, 19500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Quagsire - Rain Dance - TM18
  (195, 19500, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 22),
  -- Quagsire - Safeguard - TM20
  (195, 19500, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 23),
  -- Quagsire - Frustration - TM21
  (195, 19500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Quagsire - Earthquake - TM26
  (195, 19500, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 25),
  -- Quagsire - Return - TM27
  (195, 19500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Quagsire - Dig - TM28
  (195, 19500, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 27),
  -- Quagsire - Brick Break - TM31
  (195, 19500, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 28),
  -- Quagsire - Double Team - TM32
  (195, 19500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 29),
  -- Quagsire - Sludge Wave - TM34
  (195, 19500, 482, 11, NULL, 2, NULL, NULL, 11002034, NULL, 30),
  -- Quagsire - Sludge Bomb - TM36
  (195, 19500, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 31),
  -- Quagsire - Sandstorm - TM37
  (195, 19500, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 32),
  -- Quagsire - Rock Tomb - TM39
  (195, 19500, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 33),
  -- Quagsire - Facade - TM42
  (195, 19500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 34),
  -- Quagsire - Rest - TM44
  (195, 19500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 35),
  -- Quagsire - Attract - TM45
  (195, 19500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 36),
  -- Quagsire - Thief - TM46
  (195, 19500, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 37),
  -- Quagsire - Round - TM48
  (195, 19500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 38),
  -- Quagsire - Focus Blast - TM52
  (195, 19500, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 39),
  -- Quagsire - Scald - TM55
  (195, 19500, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 40),
  -- Quagsire - Fling - TM56
  (195, 19500, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 41),
  -- Quagsire - Giga Impact - TM68
  (195, 19500, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 42),
  -- Quagsire - Flash - TM70
  (195, 19500, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 43),
  -- Quagsire - Stone Edge - TM71
  (195, 19500, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 44),
  -- Quagsire - Bulldoze - TM78
  (195, 19500, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 45),
  -- Quagsire - Rock Slide - TM80
  (195, 19500, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 46),
  -- Quagsire - Swagger - TM87
  (195, 19500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 47),
  -- Quagsire - Substitute - TM90
  (195, 19500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 48),
  -- Quagsire - Rock Smash - TM94
  (195, 19500, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 49),
  -- Quagsire - Surf - HM03
  (195, 19500, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 50),
  -- Quagsire - Strength - HM04
  (195, 19500, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 51),
  -- Quagsire - Waterfall - HM05
  (195, 19500, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 52),
  -- Quagsire - Dive - HM06
  (195, 19500, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 53),
  -- Espeon - Helping Hand - Level 1
  (196, 19600, 270, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Espeon - Tackle - Level 1
  (196, 19600, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Espeon - Tail Whip - Level 1
  (196, 19600, 39, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Espeon - Sand Attack - Level 8
  (196, 19600, 28, 11, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Espeon - Confusion - Level 15
  (196, 19600, 93, 11, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Espeon - Quick Attack - Level 22
  (196, 19600, 98, 11, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Espeon - Swift - Level 29
  (196, 19600, 129, 11, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Espeon - Psybeam - Level 36
  (196, 19600, 60, 11, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Espeon - Future Sight - Level 43
  (196, 19600, 248, 11, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Espeon - Psych Up - Level 57
  (196, 19600, 244, 11, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Espeon - Morning Sun - Level 71
  (196, 19600, 234, 11, NULL, 1, 71, NULL, NULL, NULL, 11),
  -- Espeon - Psychic - Level 64
  (196, 19600, 94, 11, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Espeon - Last Resort - Level 50
  (196, 19600, 387, 11, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Espeon - Power Swap - Level 78
  (196, 19600, 384, 11, NULL, 1, 78, NULL, NULL, NULL, 14),
  -- Espeon - Psyshock - TM03
  (196, 19600, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 15),
  -- Espeon - Calm Mind - TM04
  (196, 19600, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 16),
  -- Espeon - Toxic - TM06
  (196, 19600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Espeon - Hidden Power - TM10
  (196, 19600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Espeon - Sunny Day - TM11
  (196, 19600, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Espeon - Hyper Beam - TM15
  (196, 19600, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 20),
  -- Espeon - Light Screen - TM16
  (196, 19600, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 21),
  -- Espeon - Protect - TM17
  (196, 19600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Espeon - Rain Dance - TM18
  (196, 19600, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Espeon - Telekinesis - TM19
  (196, 19600, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 24),
  -- Espeon - Frustration - TM21
  (196, 19600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Espeon - Return - TM27
  (196, 19600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Espeon - Dig - TM28
  (196, 19600, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 27),
  -- Espeon - Psychic - TM29
  (196, 19600, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 28),
  -- Espeon - Shadow Ball - TM30
  (196, 19600, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 29),
  -- Espeon - Double Team - TM32
  (196, 19600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Espeon - Reflect - TM33
  (196, 19600, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 31),
  -- Espeon - Facade - TM42
  (196, 19600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 32),
  -- Espeon - Rest - TM44
  (196, 19600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 33),
  -- Espeon - Attract - TM45
  (196, 19600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 34),
  -- Espeon - Round - TM48
  (196, 19600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 35),
  -- Espeon - Echoed Voice - TM49
  (196, 19600, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 36),
  -- Espeon - Retaliate - TM67
  (196, 19600, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 37),
  -- Espeon - Giga Impact - TM68
  (196, 19600, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 38),
  -- Espeon - Flash - TM70
  (196, 19600, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 39),
  -- Espeon - Psych Up - TM77
  (196, 19600, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 40),
  -- Espeon - Work Up - TM83
  (196, 19600, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 41),
  -- Espeon - Dream Eater - TM85
  (196, 19600, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 42),
  -- Espeon - Grass Knot - TM86
  (196, 19600, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 43),
  -- Espeon - Swagger - TM87
  (196, 19600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 44),
  -- Espeon - Substitute - TM90
  (196, 19600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 45),
  -- Espeon - Trick Room - TM92
  (196, 19600, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 46),
  -- Espeon - Cut - HM01
  (196, 19600, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 47),
  -- Umbreon - Helping Hand - Level 1
  (197, 19700, 270, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Umbreon - Tackle - Level 1
  (197, 19700, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Umbreon - Tail Whip - Level 1
  (197, 19700, 39, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Umbreon - Sand Attack - Level 8
  (197, 19700, 28, 11, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Umbreon - Pursuit - Level 15
  (197, 19700, 228, 11, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Umbreon - Quick Attack - Level 22
  (197, 19700, 98, 11, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Umbreon - Confuse Ray - Level 29
  (197, 19700, 109, 11, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Umbreon - Feint Attack - Level 36
  (197, 19700, 185, 11, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Umbreon - Assurance - Level 43
  (197, 19700, 372, 11, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Umbreon - Screech - Level 64
  (197, 19700, 103, 11, NULL, 1, 64, NULL, NULL, NULL, 10),
  -- Umbreon - Moonlight - Level 71
  (197, 19700, 236, 11, NULL, 1, 71, NULL, NULL, NULL, 11),
  -- Umbreon - Mean Look - Level 57
  (197, 19700, 212, 11, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Umbreon - Last Resort - Level 50
  (197, 19700, 387, 11, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Umbreon - Guard Swap - Level 78
  (197, 19700, 385, 11, NULL, 1, 78, NULL, NULL, NULL, 14),
  -- Umbreon - Toxic - TM06
  (197, 19700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Umbreon - Hidden Power - TM10
  (197, 19700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Umbreon - Sunny Day - TM11
  (197, 19700, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Umbreon - Taunt - TM12
  (197, 19700, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 18),
  -- Umbreon - Hyper Beam - TM15
  (197, 19700, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 19),
  -- Umbreon - Protect - TM17
  (197, 19700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 20),
  -- Umbreon - Rain Dance - TM18
  (197, 19700, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 21),
  -- Umbreon - Frustration - TM21
  (197, 19700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Umbreon - Return - TM27
  (197, 19700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 23),
  -- Umbreon - Dig - TM28
  (197, 19700, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 24),
  -- Umbreon - Psychic - TM29
  (197, 19700, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 25),
  -- Umbreon - Shadow Ball - TM30
  (197, 19700, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 26),
  -- Umbreon - Double Team - TM32
  (197, 19700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Umbreon - Torment - TM41
  (197, 19700, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 28),
  -- Umbreon - Facade - TM42
  (197, 19700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 29),
  -- Umbreon - Rest - TM44
  (197, 19700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 30),
  -- Umbreon - Attract - TM45
  (197, 19700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 31),
  -- Umbreon - Round - TM48
  (197, 19700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Umbreon - Echoed Voice - TM49
  (197, 19700, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 33),
  -- Umbreon - Payback - TM66
  (197, 19700, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 34),
  -- Umbreon - Retaliate - TM67
  (197, 19700, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 35),
  -- Umbreon - Giga Impact - TM68
  (197, 19700, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 36),
  -- Umbreon - Flash - TM70
  (197, 19700, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 37),
  -- Umbreon - Psych Up - TM77
  (197, 19700, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 38),
  -- Umbreon - Work Up - TM83
  (197, 19700, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 39),
  -- Umbreon - Dream Eater - TM85
  (197, 19700, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 40),
  -- Umbreon - Swagger - TM87
  (197, 19700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 41),
  -- Umbreon - Substitute - TM90
  (197, 19700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 42),
  -- Umbreon - Snarl - TM95
  (197, 19700, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 43),
  -- Umbreon - Cut - HM01
  (197, 19700, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 44),
  -- Murkrow - Peck - Level 1
  (198, 19800, 64, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Murkrow - Astonish - Level 1
  (198, 19800, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Murkrow - Pursuit - Level 5
  (198, 19800, 228, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Murkrow - Haze - Level 11
  (198, 19800, 114, 11, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Murkrow - Wing Attack - Level 15
  (198, 19800, 17, 11, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Murkrow - Night Shade - Level 21
  (198, 19800, 101, 11, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Murkrow - Assurance - Level 25
  (198, 19800, 372, 11, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Murkrow - Taunt - Level 31
  (198, 19800, 269, 11, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Murkrow - Feint Attack - Level 35
  (198, 19800, 185, 11, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Murkrow - Mean Look - Level 41
  (198, 19800, 212, 11, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Murkrow - Foul Play - Level 45
  (198, 19800, 492, 11, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Murkrow - Tailwind - Level 51
  (198, 19800, 366, 11, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Murkrow - Sucker Punch - Level 55
  (198, 19800, 389, 11, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Murkrow - Torment - Level 61
  (198, 19800, 259, 11, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Murkrow - Quash - Level 65
  (198, 19800, 511, 11, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Murkrow - Calm Mind - TM04
  (198, 19800, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 16),
  -- Murkrow - Toxic - TM06
  (198, 19800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Murkrow - Hidden Power - TM10
  (198, 19800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Murkrow - Sunny Day - TM11
  (198, 19800, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Murkrow - Taunt - TM12
  (198, 19800, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 20),
  -- Murkrow - Protect - TM17
  (198, 19800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Murkrow - Rain Dance - TM18
  (198, 19800, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 22),
  -- Murkrow - Frustration - TM21
  (198, 19800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Murkrow - Return - TM27
  (198, 19800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Murkrow - Psychic - TM29
  (198, 19800, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 25),
  -- Murkrow - Shadow Ball - TM30
  (198, 19800, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 26),
  -- Murkrow - Double Team - TM32
  (198, 19800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Murkrow - Aerial Ace - TM40
  (198, 19800, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 28),
  -- Murkrow - Torment - TM41
  (198, 19800, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 29),
  -- Murkrow - Facade - TM42
  (198, 19800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 30),
  -- Murkrow - Rest - TM44
  (198, 19800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 31),
  -- Murkrow - Attract - TM45
  (198, 19800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 32),
  -- Murkrow - Thief - TM46
  (198, 19800, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 33),
  -- Murkrow - Round - TM48
  (198, 19800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 34),
  -- Murkrow - Quash - TM60
  (198, 19800, 511, 11, NULL, 2, NULL, NULL, 11002060, NULL, 35),
  -- Murkrow - Embargo - TM63
  (198, 19800, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 36),
  -- Murkrow - Payback - TM66
  (198, 19800, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 37),
  -- Murkrow - Retaliate - TM67
  (198, 19800, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 38),
  -- Murkrow - Thunder Wave - TM73
  (198, 19800, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 39),
  -- Murkrow - Psych Up - TM77
  (198, 19800, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 40),
  -- Murkrow - Dream Eater - TM85
  (198, 19800, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 41),
  -- Murkrow - Swagger - TM87
  (198, 19800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 42),
  -- Murkrow - Pluck - TM88
  (198, 19800, 365, 11, NULL, 2, NULL, NULL, 11002088, NULL, 43),
  -- Murkrow - Substitute - TM90
  (198, 19800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 44),
  -- Murkrow - Snarl - TM95
  (198, 19800, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 45),
  -- Murkrow - Fly - HM02
  (198, 19800, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 46),
  -- Murkrow - Assurance - Egg Move
  (198, 19800, 372, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Murkrow - Brave Bird - Egg Move
  (198, 19800, 413, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Murkrow - Confuse Ray - Egg Move
  (198, 19800, 109, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Murkrow - Drill Peck - Egg Move
  (198, 19800, 65, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Murkrow - Feint Attack - Egg Move
  (198, 19800, 185, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Murkrow - Feather Dance - Egg Move
  (198, 19800, 297, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Murkrow - Mirror Move - Egg Move
  (198, 19800, 119, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Murkrow - Perish Song - Egg Move
  (198, 19800, 195, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Murkrow - Psycho Shift - Egg Move
  (198, 19800, 375, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Murkrow - Roost - Egg Move
  (198, 19800, 355, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Murkrow - Screech - Egg Move
  (198, 19800, 103, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Murkrow - Sky Attack - Egg Move
  (198, 19800, 143, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Murkrow - Whirlwind - Egg Move
  (198, 19800, 18, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Murkrow - Wing Attack - Egg Move
  (198, 19800, 17, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Slowking - Power Gem - Level 1
  (199, 19900, 408, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowking - Hidden Power - Level 1
  (199, 19900, 237, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowking - Curse - Level 1
  (199, 19900, 174, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowking - Yawn - Level 1
  (199, 19900, 281, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowking - Tackle - Level 1
  (199, 19900, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Slowking - Growl - Level 5
  (199, 19900, 45, 11, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Slowking - Water Gun - Level 9
  (199, 19900, 55, 11, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Slowking - Confusion - Level 14
  (199, 19900, 93, 11, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Slowking - Disable - Level 19
  (199, 19900, 50, 11, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Slowking - Headbutt - Level 23
  (199, 19900, 29, 11, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Slowking - Water Pulse - Level 28
  (199, 19900, 352, 11, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Slowking - Zen Headbutt - Level 32
  (199, 19900, 428, 11, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Slowking - Nasty Plot - Level 36
  (199, 19900, 417, 11, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Slowking - Swagger - Level 41
  (199, 19900, 207, 11, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Slowking - Psychic - Level 45
  (199, 19900, 94, 11, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Slowking - Trump Card - Level 49
  (199, 19900, 376, 11, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Slowking - Psych Up - Level 54
  (199, 19900, 244, 11, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Slowking - Heal Pulse - Level 58
  (199, 19900, 505, 11, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Slowking - Psyshock - TM03
  (199, 19900, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 19),
  -- Slowking - Calm Mind - TM04
  (199, 19900, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 20),
  -- Slowking - Toxic - TM06
  (199, 19900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 21),
  -- Slowking - Hail - TM07
  (199, 19900, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 22),
  -- Slowking - Hidden Power - TM10
  (199, 19900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 23),
  -- Slowking - Sunny Day - TM11
  (199, 19900, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 24),
  -- Slowking - Ice Beam - TM13
  (199, 19900, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 25),
  -- Slowking - Blizzard - TM14
  (199, 19900, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 26),
  -- Slowking - Hyper Beam - TM15
  (199, 19900, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 27),
  -- Slowking - Light Screen - TM16
  (199, 19900, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 28),
  -- Slowking - Protect - TM17
  (199, 19900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 29),
  -- Slowking - Rain Dance - TM18
  (199, 19900, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 30),
  -- Slowking - Telekinesis - TM19
  (199, 19900, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 31),
  -- Slowking - Safeguard - TM20
  (199, 19900, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 32),
  -- Slowking - Frustration - TM21
  (199, 19900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 33),
  -- Slowking - Earthquake - TM26
  (199, 19900, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 34),
  -- Slowking - Return - TM27
  (199, 19900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 35),
  -- Slowking - Dig - TM28
  (199, 19900, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 36),
  -- Slowking - Psychic - TM29
  (199, 19900, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 37),
  -- Slowking - Shadow Ball - TM30
  (199, 19900, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 38),
  -- Slowking - Brick Break - TM31
  (199, 19900, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 39),
  -- Slowking - Double Team - TM32
  (199, 19900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 40),
  -- Slowking - Flamethrower - TM35
  (199, 19900, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 41),
  -- Slowking - Fire Blast - TM38
  (199, 19900, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 42),
  -- Slowking - Facade - TM42
  (199, 19900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 43),
  -- Slowking - Rest - TM44
  (199, 19900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 44),
  -- Slowking - Attract - TM45
  (199, 19900, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 45),
  -- Slowking - Round - TM48
  (199, 19900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 46),
  -- Slowking - Echoed Voice - TM49
  (199, 19900, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 47),
  -- Slowking - Focus Blast - TM52
  (199, 19900, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 48),
  -- Slowking - Scald - TM55
  (199, 19900, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 49),
  -- Slowking - Fling - TM56
  (199, 19900, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 50),
  -- Slowking - Incinerate - TM59
  (199, 19900, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 51),
  -- Slowking - Quash - TM60
  (199, 19900, 511, 11, NULL, 2, NULL, NULL, 11002060, NULL, 52),
  -- Slowking - Giga Impact - TM68
  (199, 19900, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 53),
  -- Slowking - Flash - TM70
  (199, 19900, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 54),
  -- Slowking - Thunder Wave - TM73
  (199, 19900, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 55),
  -- Slowking - Psych Up - TM77
  (199, 19900, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 56),
  -- Slowking - Bulldoze - TM78
  (199, 19900, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 57),
  -- Slowking - Dragon Tail - TM82
  (199, 19900, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 58),
  -- Slowking - Dream Eater - TM85
  (199, 19900, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 59),
  -- Slowking - Grass Knot - TM86
  (199, 19900, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 60),
  -- Slowking - Swagger - TM87
  (199, 19900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 61),
  -- Slowking - Substitute - TM90
  (199, 19900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 62),
  -- Slowking - Trick Room - TM92
  (199, 19900, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 63),
  -- Slowking - Rock Smash - TM94
  (199, 19900, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 64),
  -- Slowking - Surf - HM03
  (199, 19900, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 65),
  -- Slowking - Strength - HM04
  (199, 19900, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 66),
  -- Slowking - Dive - HM06
  (199, 19900, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 67),
  -- Misdreavus - Growl - Level 1
  (200, 20000, 45, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Misdreavus - Psywave - Level 1
  (200, 20000, 149, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Misdreavus - Spite - Level 5
  (200, 20000, 180, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Misdreavus - Astonish - Level 10
  (200, 20000, 310, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Misdreavus - Confuse Ray - Level 14
  (200, 20000, 109, 11, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Misdreavus - Mean Look - Level 19
  (200, 20000, 212, 11, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Misdreavus - Hex - Level 23
  (200, 20000, 506, 11, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Misdreavus - Psybeam - Level 28
  (200, 20000, 60, 11, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Misdreavus - Pain Split - Level 32
  (200, 20000, 220, 11, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Misdreavus - Payback - Level 37
  (200, 20000, 371, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Misdreavus - Shadow Ball - Level 41
  (200, 20000, 247, 11, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Misdreavus - Perish Song - Level 46
  (200, 20000, 195, 11, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Misdreavus - Grudge - Level 50
  (200, 20000, 288, 11, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Misdreavus - Power Gem - Level 55
  (200, 20000, 408, 11, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Misdreavus - Calm Mind - TM04
  (200, 20000, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 15),
  -- Misdreavus - Toxic - TM06
  (200, 20000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Misdreavus - Hidden Power - TM10
  (200, 20000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Misdreavus - Sunny Day - TM11
  (200, 20000, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 18),
  -- Misdreavus - Taunt - TM12
  (200, 20000, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 19),
  -- Misdreavus - Protect - TM17
  (200, 20000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 20),
  -- Misdreavus - Rain Dance - TM18
  (200, 20000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 21),
  -- Misdreavus - Telekinesis - TM19
  (200, 20000, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 22),
  -- Misdreavus - Frustration - TM21
  (200, 20000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Misdreavus - Thunderbolt - TM24
  (200, 20000, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 24),
  -- Misdreavus - Thunder - TM25
  (200, 20000, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 25),
  -- Misdreavus - Return - TM27
  (200, 20000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Misdreavus - Psychic - TM29
  (200, 20000, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 27),
  -- Misdreavus - Shadow Ball - TM30
  (200, 20000, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 28),
  -- Misdreavus - Double Team - TM32
  (200, 20000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 29),
  -- Misdreavus - Aerial Ace - TM40
  (200, 20000, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 30),
  -- Misdreavus - Torment - TM41
  (200, 20000, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 31),
  -- Misdreavus - Facade - TM42
  (200, 20000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 32),
  -- Misdreavus - Rest - TM44
  (200, 20000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 33),
  -- Misdreavus - Attract - TM45
  (200, 20000, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 34),
  -- Misdreavus - Thief - TM46
  (200, 20000, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 35),
  -- Misdreavus - Round - TM48
  (200, 20000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Misdreavus - Echoed Voice - TM49
  (200, 20000, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 37),
  -- Misdreavus - Charge Beam - TM57
  (200, 20000, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 38),
  -- Misdreavus - Will-O-Wisp - TM61
  (200, 20000, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 39),
  -- Misdreavus - Embargo - TM63
  (200, 20000, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 40),
  -- Misdreavus - Payback - TM66
  (200, 20000, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 41),
  -- Misdreavus - Flash - TM70
  (200, 20000, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 42),
  -- Misdreavus - Thunder Wave - TM73
  (200, 20000, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 43),
  -- Misdreavus - Psych Up - TM77
  (200, 20000, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 44),
  -- Misdreavus - Dream Eater - TM85
  (200, 20000, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 45),
  -- Misdreavus - Swagger - TM87
  (200, 20000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 46),
  -- Misdreavus - Substitute - TM90
  (200, 20000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 47),
  -- Misdreavus - Trick Room - TM92
  (200, 20000, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 48),
  -- Misdreavus - Curse - Egg Move
  (200, 20000, 174, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Misdreavus - Destiny Bond - Egg Move
  (200, 20000, 194, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Misdreavus - Imprison - Egg Move
  (200, 20000, 286, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Misdreavus - Memento - Egg Move
  (200, 20000, 262, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Misdreavus - Nasty Plot - Egg Move
  (200, 20000, 417, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Misdreavus - Ominous Wind - Egg Move
  (200, 20000, 466, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Misdreavus - Screech - Egg Move
  (200, 20000, 103, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Misdreavus - Shadow Sneak - Egg Move
  (200, 20000, 425, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Misdreavus - Skill Swap - Egg Move
  (200, 20000, 285, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Misdreavus - Spite - Egg Move
  (200, 20000, 180, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Misdreavus - Sucker Punch - Egg Move
  (200, 20000, 389, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Misdreavus - Wonder Room - Egg Move
  (200, 20000, 472, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Unown - Hidden Power - Level 1
  (201, 20100, 237, 11, NULL, 1, 1, NULL, NULL, NULL, 1);
