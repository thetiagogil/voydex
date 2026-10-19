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
-- Pokémon: #551-#600
-- Rows: 2568
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
  -- Sandile - Leer - Level 1
  (551, 55100, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandile - Rage - Level 1
  (551, 55100, 99, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandile - Bite - Level 4
  (551, 55100, 44, 11, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Sandile - Sand Attack - Level 7
  (551, 55100, 28, 11, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Sandile - Torment - Level 10
  (551, 55100, 259, 11, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Sandile - Sand Tomb - Level 13
  (551, 55100, 328, 11, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Sandile - Assurance - Level 16
  (551, 55100, 372, 11, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Sandile - Mud-Slap - Level 19
  (551, 55100, 189, 11, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Sandile - Embargo - Level 22
  (551, 55100, 373, 11, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Sandile - Swagger - Level 25
  (551, 55100, 207, 11, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Sandile - Crunch - Level 28
  (551, 55100, 242, 11, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Sandile - Dig - Level 31
  (551, 55100, 91, 11, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Sandile - Scary Face - Level 34
  (551, 55100, 184, 11, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Sandile - Foul Play - Level 37
  (551, 55100, 492, 11, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Sandile - Sandstorm - Level 40
  (551, 55100, 201, 11, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Sandile - Earthquake - Level 43
  (551, 55100, 89, 11, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Sandile - Thrash - Level 46
  (551, 55100, 37, 11, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Sandile - Hone Claws - TM01
  (551, 55100, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 18),
  -- Sandile - Roar - TM05
  (551, 55100, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 19),
  -- Sandile - Toxic - TM06
  (551, 55100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Sandile - Hidden Power - TM10
  (551, 55100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Sandile - Taunt - TM12
  (551, 55100, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 22),
  -- Sandile - Protect - TM17
  (551, 55100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Sandile - Frustration - TM21
  (551, 55100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Sandile - Earthquake - TM26
  (551, 55100, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 25),
  -- Sandile - Return - TM27
  (551, 55100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Sandile - Dig - TM28
  (551, 55100, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 27),
  -- Sandile - Double Team - TM32
  (551, 55100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Sandile - Sludge Bomb - TM36
  (551, 55100, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 29),
  -- Sandile - Sandstorm - TM37
  (551, 55100, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 30),
  -- Sandile - Rock Tomb - TM39
  (551, 55100, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 31),
  -- Sandile - Torment - TM41
  (551, 55100, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 32),
  -- Sandile - Facade - TM42
  (551, 55100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Sandile - Rest - TM44
  (551, 55100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Sandile - Attract - TM45
  (551, 55100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Sandile - Thief - TM46
  (551, 55100, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 36),
  -- Sandile - Round - TM48
  (551, 55100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Sandile - Incinerate - TM59
  (551, 55100, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 38),
  -- Sandile - Embargo - TM63
  (551, 55100, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 39),
  -- Sandile - Payback - TM66
  (551, 55100, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 40),
  -- Sandile - Retaliate - TM67
  (551, 55100, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 41),
  -- Sandile - Stone Edge - TM71
  (551, 55100, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 42),
  -- Sandile - Bulldoze - TM78
  (551, 55100, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 43),
  -- Sandile - Rock Slide - TM80
  (551, 55100, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 44),
  -- Sandile - Swagger - TM87
  (551, 55100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 45),
  -- Sandile - Substitute - TM90
  (551, 55100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 46),
  -- Sandile - Snarl - TM95
  (551, 55100, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 47),
  -- Sandile - Cut - HM01
  (551, 55100, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 48),
  -- Sandile - Beat Up - Egg Move
  (551, 55100, 251, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Sandile - Counter - Egg Move
  (551, 55100, 68, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Sandile - Double-Edge - Egg Move
  (551, 55100, 38, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Sandile - Fire Fang - Egg Move
  (551, 55100, 424, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Sandile - Focus Energy - Egg Move
  (551, 55100, 116, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sandile - Mean Look - Egg Move
  (551, 55100, 212, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sandile - Pursuit - Egg Move
  (551, 55100, 228, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sandile - Rock Climb - Egg Move
  (551, 55100, 431, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sandile - Thunder Fang - Egg Move
  (551, 55100, 422, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sandile - Uproar - Egg Move
  (551, 55100, 253, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Krokorok - Leer - Level 1
  (552, 55200, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krokorok - Rage - Level 1
  (552, 55200, 99, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Krokorok - Bite - Level 1
  (552, 55200, 44, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Krokorok - Sand Attack - Level 1
  (552, 55200, 28, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Krokorok - Bite - Level 4
  (552, 55200, 44, 11, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Krokorok - Sand Attack - Level 7
  (552, 55200, 28, 11, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Krokorok - Torment - Level 10
  (552, 55200, 259, 11, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Krokorok - Sand Tomb - Level 13
  (552, 55200, 328, 11, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Krokorok - Assurance - Level 16
  (552, 55200, 372, 11, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Krokorok - Mud-Slap - Level 19
  (552, 55200, 189, 11, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Krokorok - Embargo - Level 22
  (552, 55200, 373, 11, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Krokorok - Swagger - Level 25
  (552, 55200, 207, 11, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Krokorok - Crunch - Level 28
  (552, 55200, 242, 11, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Krokorok - Dig - Level 32
  (552, 55200, 91, 11, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Krokorok - Scary Face - Level 36
  (552, 55200, 184, 11, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Krokorok - Foul Play - Level 40
  (552, 55200, 492, 11, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Krokorok - Sandstorm - Level 44
  (552, 55200, 201, 11, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Krokorok - Earthquake - Level 48
  (552, 55200, 89, 11, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Krokorok - Thrash - Level 52
  (552, 55200, 37, 11, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Krokorok - Hone Claws - TM01
  (552, 55200, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 20),
  -- Krokorok - Roar - TM05
  (552, 55200, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 21),
  -- Krokorok - Toxic - TM06
  (552, 55200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 22),
  -- Krokorok - Hidden Power - TM10
  (552, 55200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 23),
  -- Krokorok - Taunt - TM12
  (552, 55200, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 24),
  -- Krokorok - Protect - TM17
  (552, 55200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Krokorok - Frustration - TM21
  (552, 55200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Krokorok - Earthquake - TM26
  (552, 55200, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 27),
  -- Krokorok - Return - TM27
  (552, 55200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Krokorok - Dig - TM28
  (552, 55200, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 29),
  -- Krokorok - Brick Break - TM31
  (552, 55200, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 30),
  -- Krokorok - Double Team - TM32
  (552, 55200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Krokorok - Sludge Bomb - TM36
  (552, 55200, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 32),
  -- Krokorok - Sandstorm - TM37
  (552, 55200, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 33),
  -- Krokorok - Rock Tomb - TM39
  (552, 55200, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 34),
  -- Krokorok - Torment - TM41
  (552, 55200, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 35),
  -- Krokorok - Facade - TM42
  (552, 55200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Krokorok - Rest - TM44
  (552, 55200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 37),
  -- Krokorok - Attract - TM45
  (552, 55200, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 38),
  -- Krokorok - Thief - TM46
  (552, 55200, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 39),
  -- Krokorok - Low Sweep - TM47
  (552, 55200, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 40),
  -- Krokorok - Round - TM48
  (552, 55200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 41),
  -- Krokorok - Fling - TM56
  (552, 55200, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 42),
  -- Krokorok - Incinerate - TM59
  (552, 55200, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 43),
  -- Krokorok - Embargo - TM63
  (552, 55200, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 44),
  -- Krokorok - Shadow Claw - TM65
  (552, 55200, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 45),
  -- Krokorok - Payback - TM66
  (552, 55200, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 46),
  -- Krokorok - Retaliate - TM67
  (552, 55200, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 47),
  -- Krokorok - Stone Edge - TM71
  (552, 55200, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 48),
  -- Krokorok - Bulldoze - TM78
  (552, 55200, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 49),
  -- Krokorok - Rock Slide - TM80
  (552, 55200, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 50),
  -- Krokorok - Grass Knot - TM86
  (552, 55200, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 51),
  -- Krokorok - Swagger - TM87
  (552, 55200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 52),
  -- Krokorok - Substitute - TM90
  (552, 55200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 53),
  -- Krokorok - Rock Smash - TM94
  (552, 55200, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 54),
  -- Krokorok - Snarl - TM95
  (552, 55200, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 55),
  -- Krokorok - Cut - HM01
  (552, 55200, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 56),
  -- Krokorok - Strength - HM04
  (552, 55200, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 57),
  -- Krookodile - Leer - Level 1
  (553, 55300, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krookodile - Rage - Level 1
  (553, 55300, 99, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Krookodile - Bite - Level 1
  (553, 55300, 44, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Krookodile - Sand Attack - Level 1
  (553, 55300, 28, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Krookodile - Bite - Level 4
  (553, 55300, 44, 11, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Krookodile - Sand Attack - Level 7
  (553, 55300, 28, 11, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Krookodile - Torment - Level 10
  (553, 55300, 259, 11, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Krookodile - Sand Tomb - Level 13
  (553, 55300, 328, 11, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Krookodile - Assurance - Level 16
  (553, 55300, 372, 11, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Krookodile - Mud-Slap - Level 19
  (553, 55300, 189, 11, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Krookodile - Embargo - Level 22
  (553, 55300, 373, 11, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Krookodile - Swagger - Level 25
  (553, 55300, 207, 11, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Krookodile - Crunch - Level 28
  (553, 55300, 242, 11, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Krookodile - Dig - Level 32
  (553, 55300, 91, 11, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Krookodile - Scary Face - Level 36
  (553, 55300, 184, 11, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Krookodile - Foul Play - Level 42
  (553, 55300, 492, 11, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Krookodile - Sandstorm - Level 48
  (553, 55300, 201, 11, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Krookodile - Earthquake - Level 54
  (553, 55300, 89, 11, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Krookodile - Outrage - Level 60
  (553, 55300, 200, 11, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Krookodile - Hone Claws - TM01
  (553, 55300, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 20),
  -- Krookodile - Dragon Claw - TM02
  (553, 55300, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 21),
  -- Krookodile - Roar - TM05
  (553, 55300, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 22),
  -- Krookodile - Toxic - TM06
  (553, 55300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 23),
  -- Krookodile - Bulk Up - TM08
  (553, 55300, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 24),
  -- Krookodile - Hidden Power - TM10
  (553, 55300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 25),
  -- Krookodile - Taunt - TM12
  (553, 55300, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 26),
  -- Krookodile - Hyper Beam - TM15
  (553, 55300, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 27),
  -- Krookodile - Protect - TM17
  (553, 55300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 28),
  -- Krookodile - Frustration - TM21
  (553, 55300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 29),
  -- Krookodile - Smack Down - TM23
  (553, 55300, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 30),
  -- Krookodile - Earthquake - TM26
  (553, 55300, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 31),
  -- Krookodile - Return - TM27
  (553, 55300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 32),
  -- Krookodile - Dig - TM28
  (553, 55300, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 33),
  -- Krookodile - Brick Break - TM31
  (553, 55300, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 34),
  -- Krookodile - Double Team - TM32
  (553, 55300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 35),
  -- Krookodile - Sludge Bomb - TM36
  (553, 55300, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 36),
  -- Krookodile - Sandstorm - TM37
  (553, 55300, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 37),
  -- Krookodile - Rock Tomb - TM39
  (553, 55300, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 38),
  -- Krookodile - Aerial Ace - TM40
  (553, 55300, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 39),
  -- Krookodile - Torment - TM41
  (553, 55300, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 40),
  -- Krookodile - Facade - TM42
  (553, 55300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 41),
  -- Krookodile - Rest - TM44
  (553, 55300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 42),
  -- Krookodile - Attract - TM45
  (553, 55300, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 43),
  -- Krookodile - Thief - TM46
  (553, 55300, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 44),
  -- Krookodile - Low Sweep - TM47
  (553, 55300, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 45),
  -- Krookodile - Round - TM48
  (553, 55300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 46),
  -- Krookodile - Focus Blast - TM52
  (553, 55300, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 47),
  -- Krookodile - Fling - TM56
  (553, 55300, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 48),
  -- Krookodile - Incinerate - TM59
  (553, 55300, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 49),
  -- Krookodile - Embargo - TM63
  (553, 55300, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 50),
  -- Krookodile - Shadow Claw - TM65
  (553, 55300, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 51),
  -- Krookodile - Payback - TM66
  (553, 55300, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 52),
  -- Krookodile - Retaliate - TM67
  (553, 55300, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 53),
  -- Krookodile - Giga Impact - TM68
  (553, 55300, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 54),
  -- Krookodile - Stone Edge - TM71
  (553, 55300, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 55),
  -- Krookodile - Bulldoze - TM78
  (553, 55300, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 56),
  -- Krookodile - Rock Slide - TM80
  (553, 55300, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 57),
  -- Krookodile - Dragon Tail - TM82
  (553, 55300, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 58),
  -- Krookodile - Grass Knot - TM86
  (553, 55300, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 59),
  -- Krookodile - Swagger - TM87
  (553, 55300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 60),
  -- Krookodile - Substitute - TM90
  (553, 55300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 61),
  -- Krookodile - Rock Smash - TM94
  (553, 55300, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 62),
  -- Krookodile - Snarl - TM95
  (553, 55300, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 63),
  -- Krookodile - Cut - HM01
  (553, 55300, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 64),
  -- Krookodile - Strength - HM04
  (553, 55300, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 65),
  -- Darumaka - Tackle - Level 1
  (554, 55400, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Darumaka - Rollout - Level 3
  (554, 55400, 205, 11, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Darumaka - Incinerate - Level 6
  (554, 55400, 510, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Darumaka - Rage - Level 9
  (554, 55400, 99, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Darumaka - Fire Fang - Level 11
  (554, 55400, 424, 11, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Darumaka - Headbutt - Level 14
  (554, 55400, 29, 11, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Darumaka - Uproar - Level 17
  (554, 55400, 253, 11, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Darumaka - Facade - Level 19
  (554, 55400, 263, 11, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Darumaka - Fire Punch - Level 22
  (554, 55400, 7, 11, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Darumaka - Work Up - Level 25
  (554, 55400, 526, 11, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Darumaka - Thrash - Level 27
  (554, 55400, 37, 11, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Darumaka - Belly Drum - Level 30
  (554, 55400, 187, 11, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Darumaka - Flare Blitz - Level 33
  (554, 55400, 394, 11, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Darumaka - Taunt - Level 35
  (554, 55400, 269, 11, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Darumaka - Superpower - Level 39
  (554, 55400, 276, 11, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Darumaka - Overheat - Level 42
  (554, 55400, 315, 11, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Darumaka - Roar - TM05
  (554, 55400, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 17),
  -- Darumaka - Toxic - TM06
  (554, 55400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Darumaka - Hidden Power - TM10
  (554, 55400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Darumaka - Sunny Day - TM11
  (554, 55400, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Darumaka - Taunt - TM12
  (554, 55400, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 21),
  -- Darumaka - Protect - TM17
  (554, 55400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Darumaka - Frustration - TM21
  (554, 55400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Darumaka - Solar Beam - TM22
  (554, 55400, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 24),
  -- Darumaka - Return - TM27
  (554, 55400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Darumaka - Dig - TM28
  (554, 55400, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 26),
  -- Darumaka - Brick Break - TM31
  (554, 55400, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 27),
  -- Darumaka - Double Team - TM32
  (554, 55400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Darumaka - Flamethrower - TM35
  (554, 55400, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 29),
  -- Darumaka - Fire Blast - TM38
  (554, 55400, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 30),
  -- Darumaka - Rock Tomb - TM39
  (554, 55400, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 31),
  -- Darumaka - Facade - TM42
  (554, 55400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 32),
  -- Darumaka - Flame Charge - TM43
  (554, 55400, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 33),
  -- Darumaka - Rest - TM44
  (554, 55400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Darumaka - Attract - TM45
  (554, 55400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Darumaka - Thief - TM46
  (554, 55400, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 36),
  -- Darumaka - Round - TM48
  (554, 55400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Darumaka - Overheat - TM50
  (554, 55400, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 38),
  -- Darumaka - Fling - TM56
  (554, 55400, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 39),
  -- Darumaka - Incinerate - TM59
  (554, 55400, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 40),
  -- Darumaka - Will-O-Wisp - TM61
  (554, 55400, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 41),
  -- Darumaka - Gyro Ball - TM74
  (554, 55400, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 42),
  -- Darumaka - Rock Slide - TM80
  (554, 55400, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 43),
  -- Darumaka - Work Up - TM83
  (554, 55400, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 44),
  -- Darumaka - Grass Knot - TM86
  (554, 55400, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 45),
  -- Darumaka - Swagger - TM87
  (554, 55400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 46),
  -- Darumaka - U-turn - TM89
  (554, 55400, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 47),
  -- Darumaka - Substitute - TM90
  (554, 55400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 48),
  -- Darumaka - Rock Smash - TM94
  (554, 55400, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 49),
  -- Darumaka - Strength - HM04
  (554, 55400, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 50),
  -- Darumaka - Encore - Egg Move
  (554, 55400, 227, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Darumaka - Endure - Egg Move
  (554, 55400, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Darumaka - Flame Wheel - Egg Move
  (554, 55400, 172, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Darumaka - Focus Energy - Egg Move
  (554, 55400, 116, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Darumaka - Focus Punch - Egg Move
  (554, 55400, 264, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Darumaka - Hammer Arm - Egg Move
  (554, 55400, 359, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Darumaka - Sleep Talk - Egg Move
  (554, 55400, 214, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Darumaka - Take Down - Egg Move
  (554, 55400, 36, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Darumaka - Yawn - Egg Move
  (554, 55400, 281, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Darmanitan - Tackle - Level 1
  (555, 55500, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Darmanitan - Rollout - Level 1
  (555, 55500, 205, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Darmanitan - Incinerate - Level 1
  (555, 55500, 510, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Darmanitan - Rage - Level 1
  (555, 55500, 99, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Darmanitan - Rollout - Level 3
  (555, 55500, 205, 11, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Darmanitan - Incinerate - Level 6
  (555, 55500, 510, 11, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Darmanitan - Rage - Level 9
  (555, 55500, 99, 11, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Darmanitan - Fire Fang - Level 11
  (555, 55500, 424, 11, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Darmanitan - Headbutt - Level 14
  (555, 55500, 29, 11, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Darmanitan - Swagger - Level 17
  (555, 55500, 207, 11, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Darmanitan - Facade - Level 19
  (555, 55500, 263, 11, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Darmanitan - Fire Punch - Level 22
  (555, 55500, 7, 11, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Darmanitan - Work Up - Level 25
  (555, 55500, 526, 11, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Darmanitan - Thrash - Level 27
  (555, 55500, 37, 11, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Darmanitan - Belly Drum - Level 30
  (555, 55500, 187, 11, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Darmanitan - Flare Blitz - Level 33
  (555, 55500, 394, 11, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Darmanitan - Hammer Arm - Level 35
  (555, 55500, 359, 11, NULL, 1, 35, NULL, NULL, NULL, 17),
  -- Darmanitan - Taunt - Level 39
  (555, 55500, 269, 11, NULL, 1, 39, NULL, NULL, NULL, 18),
  -- Darmanitan - Superpower - Level 47
  (555, 55500, 276, 11, NULL, 1, 47, NULL, NULL, NULL, 19),
  -- Darmanitan - Overheat - Level 54
  (555, 55500, 315, 11, NULL, 1, 54, NULL, NULL, NULL, 20),
  -- Darmanitan - Roar - TM05
  (555, 55500, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 21),
  -- Darmanitan - Toxic - TM06
  (555, 55500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 22),
  -- Darmanitan - Bulk Up - TM08
  (555, 55500, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 23),
  -- Darmanitan - Hidden Power - TM10
  (555, 55500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 24),
  -- Darmanitan - Sunny Day - TM11
  (555, 55500, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 25),
  -- Darmanitan - Taunt - TM12
  (555, 55500, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 26),
  -- Darmanitan - Hyper Beam - TM15
  (555, 55500, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 27),
  -- Darmanitan - Protect - TM17
  (555, 55500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 28),
  -- Darmanitan - Frustration - TM21
  (555, 55500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 29),
  -- Darmanitan - Solar Beam - TM22
  (555, 55500, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 30),
  -- Darmanitan - Smack Down - TM23
  (555, 55500, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 31),
  -- Darmanitan - Earthquake - TM26
  (555, 55500, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 32),
  -- Darmanitan - Return - TM27
  (555, 55500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 33),
  -- Darmanitan - Dig - TM28
  (555, 55500, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 34),
  -- Darmanitan - Psychic - TM29
  (555, 55500, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 35),
  -- Darmanitan - Brick Break - TM31
  (555, 55500, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 36),
  -- Darmanitan - Double Team - TM32
  (555, 55500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 37),
  -- Darmanitan - Flamethrower - TM35
  (555, 55500, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 38),
  -- Darmanitan - Fire Blast - TM38
  (555, 55500, 126, 11, NULL, 2, NULL, NULL, 11002038, NULL, 39),
  -- Darmanitan - Rock Tomb - TM39
  (555, 55500, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 40),
  -- Darmanitan - Torment - TM41
  (555, 55500, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 41),
  -- Darmanitan - Facade - TM42
  (555, 55500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 42),
  -- Darmanitan - Flame Charge - TM43
  (555, 55500, 488, 11, NULL, 2, NULL, NULL, 11002043, NULL, 43),
  -- Darmanitan - Rest - TM44
  (555, 55500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 44),
  -- Darmanitan - Attract - TM45
  (555, 55500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 45),
  -- Darmanitan - Thief - TM46
  (555, 55500, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 46),
  -- Darmanitan - Round - TM48
  (555, 55500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 47),
  -- Darmanitan - Overheat - TM50
  (555, 55500, 315, 11, NULL, 2, NULL, NULL, 11002050, NULL, 48),
  -- Darmanitan - Focus Blast - TM52
  (555, 55500, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 49),
  -- Darmanitan - Fling - TM56
  (555, 55500, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 50),
  -- Darmanitan - Incinerate - TM59
  (555, 55500, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 51),
  -- Darmanitan - Will-O-Wisp - TM61
  (555, 55500, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 52),
  -- Darmanitan - Payback - TM66
  (555, 55500, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 53),
  -- Darmanitan - Giga Impact - TM68
  (555, 55500, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 54),
  -- Darmanitan - Stone Edge - TM71
  (555, 55500, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 55),
  -- Darmanitan - Gyro Ball - TM74
  (555, 55500, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 56),
  -- Darmanitan - Bulldoze - TM78
  (555, 55500, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 57),
  -- Darmanitan - Rock Slide - TM80
  (555, 55500, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 58),
  -- Darmanitan - Work Up - TM83
  (555, 55500, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 59),
  -- Darmanitan - Grass Knot - TM86
  (555, 55500, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 60),
  -- Darmanitan - Swagger - TM87
  (555, 55500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 61),
  -- Darmanitan - U-turn - TM89
  (555, 55500, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 62),
  -- Darmanitan - Substitute - TM90
  (555, 55500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 63),
  -- Darmanitan - Rock Smash - TM94
  (555, 55500, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 64),
  -- Darmanitan - Strength - HM04
  (555, 55500, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 65),
  -- Maractus - Peck - Level 1
  (556, 55600, 64, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Maractus - Absorb - Level 1
  (556, 55600, 71, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Maractus - Sweet Scent - Level 3
  (556, 55600, 230, 11, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Maractus - Growth - Level 6
  (556, 55600, 74, 11, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Maractus - Pin Missile - Level 10
  (556, 55600, 42, 11, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Maractus - Mega Drain - Level 13
  (556, 55600, 72, 11, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Maractus - Synthesis - Level 15
  (556, 55600, 235, 11, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Maractus - Cotton Spore - Level 18
  (556, 55600, 178, 11, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Maractus - Needle Arm - Level 22
  (556, 55600, 302, 11, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Maractus - Giga Drain - Level 26
  (556, 55600, 202, 11, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Maractus - Acupressure - Level 29
  (556, 55600, 367, 11, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Maractus - Ingrain - Level 33
  (556, 55600, 275, 11, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Maractus - Petal Dance - Level 38
  (556, 55600, 80, 11, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Maractus - Sucker Punch - Level 42
  (556, 55600, 389, 11, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Maractus - Sunny Day - Level 45
  (556, 55600, 241, 11, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Maractus - Solar Beam - Level 50
  (556, 55600, 76, 11, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Maractus - Cotton Guard - Level 55
  (556, 55600, 538, 11, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Maractus - After You - Level 57
  (556, 55600, 495, 11, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Maractus - Toxic - TM06
  (556, 55600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Maractus - Hidden Power - TM10
  (556, 55600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Maractus - Sunny Day - TM11
  (556, 55600, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Maractus - Protect - TM17
  (556, 55600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Maractus - Safeguard - TM20
  (556, 55600, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 23),
  -- Maractus - Frustration - TM21
  (556, 55600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Maractus - Solar Beam - TM22
  (556, 55600, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 25),
  -- Maractus - Return - TM27
  (556, 55600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Maractus - Double Team - TM32
  (556, 55600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Maractus - Aerial Ace - TM40
  (556, 55600, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 28),
  -- Maractus - Facade - TM42
  (556, 55600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 29),
  -- Maractus - Rest - TM44
  (556, 55600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 30),
  -- Maractus - Attract - TM45
  (556, 55600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 31),
  -- Maractus - Round - TM48
  (556, 55600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Maractus - Energy Ball - TM53
  (556, 55600, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 33),
  -- Maractus - Poison Jab - TM84
  (556, 55600, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 34),
  -- Maractus - Grass Knot - TM86
  (556, 55600, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 35),
  -- Maractus - Swagger - TM87
  (556, 55600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 36),
  -- Maractus - Substitute - TM90
  (556, 55600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 37),
  -- Maractus - Bounce - Egg Move
  (556, 55600, 340, 11, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Maractus - Bullet Seed - Egg Move
  (556, 55600, 331, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Maractus - Grass Whistle - Egg Move
  (556, 55600, 320, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Maractus - Leech Seed - Egg Move
  (556, 55600, 73, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Maractus - Seed Bomb - Egg Move
  (556, 55600, 402, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Maractus - Spikes - Egg Move
  (556, 55600, 191, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Maractus - Wood Hammer - Egg Move
  (556, 55600, 452, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Maractus - Worry Seed - Egg Move
  (556, 55600, 388, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Dwebble - Fury Cutter - Level 1
  (557, 55700, 210, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dwebble - Rock Blast - Level 5
  (557, 55700, 350, 11, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Dwebble - Withdraw - Level 7
  (557, 55700, 110, 11, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Dwebble - Sand Attack - Level 11
  (557, 55700, 28, 11, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Dwebble - Feint Attack - Level 13
  (557, 55700, 185, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Dwebble - Smack Down - Level 17
  (557, 55700, 479, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Dwebble - Rock Polish - Level 19
  (557, 55700, 397, 11, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Dwebble - Bug Bite - Level 23
  (557, 55700, 450, 11, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Dwebble - Stealth Rock - Level 24
  (557, 55700, 446, 11, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Dwebble - Rock Slide - Level 29
  (557, 55700, 157, 11, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Dwebble - Slash - Level 31
  (557, 55700, 163, 11, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Dwebble - X-Scissor - Level 35
  (557, 55700, 404, 11, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Dwebble - Shell Smash - Level 37
  (557, 55700, 504, 11, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Dwebble - Flail - Level 41
  (557, 55700, 175, 11, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Dwebble - Rock Wrecker - Level 43
  (557, 55700, 439, 11, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Dwebble - Hone Claws - TM01
  (557, 55700, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 16),
  -- Dwebble - Toxic - TM06
  (557, 55700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Dwebble - Hidden Power - TM10
  (557, 55700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Dwebble - Protect - TM17
  (557, 55700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Dwebble - Frustration - TM21
  (557, 55700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 20),
  -- Dwebble - Solar Beam - TM22
  (557, 55700, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 21),
  -- Dwebble - Smack Down - TM23
  (557, 55700, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 22),
  -- Dwebble - Earthquake - TM26
  (557, 55700, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 23),
  -- Dwebble - Return - TM27
  (557, 55700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Dwebble - Dig - TM28
  (557, 55700, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 25),
  -- Dwebble - Double Team - TM32
  (557, 55700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Dwebble - Sandstorm - TM37
  (557, 55700, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 27),
  -- Dwebble - Rock Tomb - TM39
  (557, 55700, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 28),
  -- Dwebble - Aerial Ace - TM40
  (557, 55700, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 29),
  -- Dwebble - Facade - TM42
  (557, 55700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 30),
  -- Dwebble - Rest - TM44
  (557, 55700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 31),
  -- Dwebble - Attract - TM45
  (557, 55700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 32),
  -- Dwebble - Round - TM48
  (557, 55700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 33),
  -- Dwebble - Shadow Claw - TM65
  (557, 55700, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 34),
  -- Dwebble - Rock Polish - TM69
  (557, 55700, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 35),
  -- Dwebble - Stone Edge - TM71
  (557, 55700, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 36),
  -- Dwebble - Swords Dance - TM75
  (557, 55700, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 37),
  -- Dwebble - Struggle Bug - TM76
  (557, 55700, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 38),
  -- Dwebble - Bulldoze - TM78
  (557, 55700, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 39),
  -- Dwebble - Rock Slide - TM80
  (557, 55700, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 40),
  -- Dwebble - X-Scissor - TM81
  (557, 55700, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 41),
  -- Dwebble - Poison Jab - TM84
  (557, 55700, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 42),
  -- Dwebble - Swagger - TM87
  (557, 55700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 43),
  -- Dwebble - Substitute - TM90
  (557, 55700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 44),
  -- Dwebble - Rock Smash - TM94
  (557, 55700, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 45),
  -- Dwebble - Cut - HM01
  (557, 55700, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 46),
  -- Dwebble - Strength - HM04
  (557, 55700, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 47),
  -- Dwebble - Block - Egg Move
  (557, 55700, 335, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Dwebble - Counter - Egg Move
  (557, 55700, 68, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Dwebble - Curse - Egg Move
  (557, 55700, 174, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Dwebble - Endure - Egg Move
  (557, 55700, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Dwebble - Iron Defense - Egg Move
  (557, 55700, 334, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Dwebble - Night Slash - Egg Move
  (557, 55700, 400, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Dwebble - Sand Tomb - Egg Move
  (557, 55700, 328, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Dwebble - Spikes - Egg Move
  (557, 55700, 191, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Crustle - Shell Smash - Level 1
  (558, 55800, 504, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crustle - Rock Blast - Level 1
  (558, 55800, 350, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crustle - Withdraw - Level 1
  (558, 55800, 110, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crustle - Sand Attack - Level 1
  (558, 55800, 28, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Crustle - Rock Blast - Level 5
  (558, 55800, 350, 11, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Crustle - Withdraw - Level 7
  (558, 55800, 110, 11, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Crustle - Sand Attack - Level 11
  (558, 55800, 28, 11, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Crustle - Feint Attack - Level 13
  (558, 55800, 185, 11, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Crustle - Smack Down - Level 17
  (558, 55800, 479, 11, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Crustle - Rock Polish - Level 19
  (558, 55800, 397, 11, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Crustle - Bug Bite - Level 23
  (558, 55800, 450, 11, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Crustle - Stealth Rock - Level 24
  (558, 55800, 446, 11, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Crustle - Rock Slide - Level 29
  (558, 55800, 157, 11, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Crustle - Slash - Level 31
  (558, 55800, 163, 11, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Crustle - X-Scissor - Level 38
  (558, 55800, 404, 11, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Crustle - Shell Smash - Level 43
  (558, 55800, 504, 11, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Crustle - Flail - Level 50
  (558, 55800, 175, 11, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Crustle - Rock Wrecker - Level 55
  (558, 55800, 439, 11, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Crustle - Hone Claws - TM01
  (558, 55800, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 19),
  -- Crustle - Toxic - TM06
  (558, 55800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Crustle - Hidden Power - TM10
  (558, 55800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Crustle - Hyper Beam - TM15
  (558, 55800, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Crustle - Protect - TM17
  (558, 55800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Crustle - Frustration - TM21
  (558, 55800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Crustle - Solar Beam - TM22
  (558, 55800, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 25),
  -- Crustle - Smack Down - TM23
  (558, 55800, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 26),
  -- Crustle - Earthquake - TM26
  (558, 55800, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 27),
  -- Crustle - Return - TM27
  (558, 55800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Crustle - Dig - TM28
  (558, 55800, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 29),
  -- Crustle - Double Team - TM32
  (558, 55800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Crustle - Sandstorm - TM37
  (558, 55800, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 31),
  -- Crustle - Rock Tomb - TM39
  (558, 55800, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 32),
  -- Crustle - Aerial Ace - TM40
  (558, 55800, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 33),
  -- Crustle - Facade - TM42
  (558, 55800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 34),
  -- Crustle - Rest - TM44
  (558, 55800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 35),
  -- Crustle - Attract - TM45
  (558, 55800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 36),
  -- Crustle - Round - TM48
  (558, 55800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Crustle - Shadow Claw - TM65
  (558, 55800, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 38),
  -- Crustle - Giga Impact - TM68
  (558, 55800, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 39),
  -- Crustle - Rock Polish - TM69
  (558, 55800, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 40),
  -- Crustle - Stone Edge - TM71
  (558, 55800, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 41),
  -- Crustle - Swords Dance - TM75
  (558, 55800, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 42),
  -- Crustle - Struggle Bug - TM76
  (558, 55800, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 43),
  -- Crustle - Bulldoze - TM78
  (558, 55800, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 44),
  -- Crustle - Rock Slide - TM80
  (558, 55800, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 45),
  -- Crustle - X-Scissor - TM81
  (558, 55800, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 46),
  -- Crustle - Poison Jab - TM84
  (558, 55800, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 47),
  -- Crustle - Swagger - TM87
  (558, 55800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 48),
  -- Crustle - Substitute - TM90
  (558, 55800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 49),
  -- Crustle - Rock Smash - TM94
  (558, 55800, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 50),
  -- Crustle - Cut - HM01
  (558, 55800, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 51),
  -- Crustle - Strength - HM04
  (558, 55800, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 52),
  -- Scraggy - Leer - Level 1
  (559, 55900, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scraggy - Low Kick - Level 1
  (559, 55900, 67, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scraggy - Sand Attack - Level 5
  (559, 55900, 28, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Scraggy - Feint Attack - Level 9
  (559, 55900, 185, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Scraggy - Headbutt - Level 12
  (559, 55900, 29, 11, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Scraggy - Swagger - Level 16
  (559, 55900, 207, 11, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Scraggy - Brick Break - Level 20
  (559, 55900, 280, 11, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Scraggy - Payback - Level 23
  (559, 55900, 371, 11, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Scraggy - Chip Away - Level 27
  (559, 55900, 498, 11, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Scraggy - High Jump Kick - Level 31
  (559, 55900, 136, 11, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Scraggy - Scary Face - Level 34
  (559, 55900, 184, 11, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Scraggy - Crunch - Level 38
  (559, 55900, 242, 11, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Scraggy - Facade - Level 42
  (559, 55900, 263, 11, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Scraggy - Rock Climb - Level 45
  (559, 55900, 431, 11, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Scraggy - Focus Punch - Level 49
  (559, 55900, 264, 11, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Scraggy - Head Smash - Level 53
  (559, 55900, 457, 11, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Scraggy - Dragon Claw - TM02
  (559, 55900, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 17),
  -- Scraggy - Roar - TM05
  (559, 55900, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 18),
  -- Scraggy - Toxic - TM06
  (559, 55900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Scraggy - Bulk Up - TM08
  (559, 55900, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 20),
  -- Scraggy - Hidden Power - TM10
  (559, 55900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Scraggy - Sunny Day - TM11
  (559, 55900, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 22),
  -- Scraggy - Taunt - TM12
  (559, 55900, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 23),
  -- Scraggy - Protect - TM17
  (559, 55900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Scraggy - Rain Dance - TM18
  (559, 55900, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Scraggy - Frustration - TM21
  (559, 55900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Scraggy - Smack Down - TM23
  (559, 55900, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 27),
  -- Scraggy - Return - TM27
  (559, 55900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Scraggy - Dig - TM28
  (559, 55900, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 29),
  -- Scraggy - Brick Break - TM31
  (559, 55900, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 30),
  -- Scraggy - Double Team - TM32
  (559, 55900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Scraggy - Sludge Bomb - TM36
  (559, 55900, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 32),
  -- Scraggy - Rock Tomb - TM39
  (559, 55900, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 33),
  -- Scraggy - Torment - TM41
  (559, 55900, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 34),
  -- Scraggy - Facade - TM42
  (559, 55900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 35),
  -- Scraggy - Rest - TM44
  (559, 55900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 36),
  -- Scraggy - Attract - TM45
  (559, 55900, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 37),
  -- Scraggy - Low Sweep - TM47
  (559, 55900, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 38),
  -- Scraggy - Round - TM48
  (559, 55900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 39),
  -- Scraggy - Focus Blast - TM52
  (559, 55900, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 40),
  -- Scraggy - Fling - TM56
  (559, 55900, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 41),
  -- Scraggy - Incinerate - TM59
  (559, 55900, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 42),
  -- Scraggy - Payback - TM66
  (559, 55900, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 43),
  -- Scraggy - Retaliate - TM67
  (559, 55900, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 44),
  -- Scraggy - Stone Edge - TM71
  (559, 55900, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 45),
  -- Scraggy - Rock Slide - TM80
  (559, 55900, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 46),
  -- Scraggy - Dragon Tail - TM82
  (559, 55900, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 47),
  -- Scraggy - Work Up - TM83
  (559, 55900, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 48),
  -- Scraggy - Poison Jab - TM84
  (559, 55900, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 49),
  -- Scraggy - Grass Knot - TM86
  (559, 55900, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 50),
  -- Scraggy - Swagger - TM87
  (559, 55900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 51),
  -- Scraggy - Substitute - TM90
  (559, 55900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 52),
  -- Scraggy - Rock Smash - TM94
  (559, 55900, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 53),
  -- Scraggy - Snarl - TM95
  (559, 55900, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 54),
  -- Scraggy - Strength - HM04
  (559, 55900, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 55),
  -- Scraggy - Amnesia - Egg Move
  (559, 55900, 133, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Scraggy - Counter - Egg Move
  (559, 55900, 68, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Scraggy - Detect - Egg Move
  (559, 55900, 197, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Scraggy - Dragon Dance - Egg Move
  (559, 55900, 349, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Scraggy - Drain Punch - Egg Move
  (559, 55900, 409, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Scraggy - Feint Attack - Egg Move
  (559, 55900, 185, 11, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Scraggy - Fake Out - Egg Move
  (559, 55900, 252, 11, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Scraggy - Fire Punch - Egg Move
  (559, 55900, 7, 11, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Scraggy - Ice Punch - Egg Move
  (559, 55900, 8, 11, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Scraggy - Thunder Punch - Egg Move
  (559, 55900, 9, 11, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Scraggy - Zen Headbutt - Egg Move
  (559, 55900, 428, 11, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Scrafty - Leer - Level 1
  (560, 56000, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scrafty - Low Kick - Level 1
  (560, 56000, 67, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scrafty - Sand Attack - Level 1
  (560, 56000, 28, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Scrafty - Feint Attack - Level 1
  (560, 56000, 185, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Scrafty - Sand Attack - Level 5
  (560, 56000, 28, 11, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Scrafty - Feint Attack - Level 9
  (560, 56000, 185, 11, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Scrafty - Headbutt - Level 12
  (560, 56000, 29, 11, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Scrafty - Swagger - Level 16
  (560, 56000, 207, 11, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Scrafty - Brick Break - Level 20
  (560, 56000, 280, 11, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Scrafty - Payback - Level 23
  (560, 56000, 371, 11, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Scrafty - Chip Away - Level 27
  (560, 56000, 498, 11, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Scrafty - High Jump Kick - Level 31
  (560, 56000, 136, 11, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Scrafty - Scary Face - Level 34
  (560, 56000, 184, 11, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Scrafty - Crunch - Level 38
  (560, 56000, 242, 11, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Scrafty - Facade - Level 45
  (560, 56000, 263, 11, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Scrafty - Rock Climb - Level 51
  (560, 56000, 431, 11, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Scrafty - Focus Punch - Level 58
  (560, 56000, 264, 11, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Scrafty - Head Smash - Level 65
  (560, 56000, 457, 11, NULL, 1, 65, NULL, NULL, NULL, 18),
  -- Scrafty - Dragon Claw - TM02
  (560, 56000, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 19),
  -- Scrafty - Roar - TM05
  (560, 56000, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 20),
  -- Scrafty - Toxic - TM06
  (560, 56000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 21),
  -- Scrafty - Bulk Up - TM08
  (560, 56000, 339, 11, NULL, 2, NULL, NULL, 11002008, NULL, 22),
  -- Scrafty - Hidden Power - TM10
  (560, 56000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 23),
  -- Scrafty - Sunny Day - TM11
  (560, 56000, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 24),
  -- Scrafty - Taunt - TM12
  (560, 56000, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 25),
  -- Scrafty - Hyper Beam - TM15
  (560, 56000, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 26),
  -- Scrafty - Protect - TM17
  (560, 56000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 27),
  -- Scrafty - Rain Dance - TM18
  (560, 56000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 28),
  -- Scrafty - Frustration - TM21
  (560, 56000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 29),
  -- Scrafty - Smack Down - TM23
  (560, 56000, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 30),
  -- Scrafty - Return - TM27
  (560, 56000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 31),
  -- Scrafty - Dig - TM28
  (560, 56000, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 32),
  -- Scrafty - Brick Break - TM31
  (560, 56000, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 33),
  -- Scrafty - Double Team - TM32
  (560, 56000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 34),
  -- Scrafty - Sludge Bomb - TM36
  (560, 56000, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 35),
  -- Scrafty - Rock Tomb - TM39
  (560, 56000, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 36),
  -- Scrafty - Torment - TM41
  (560, 56000, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 37),
  -- Scrafty - Facade - TM42
  (560, 56000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 38),
  -- Scrafty - Rest - TM44
  (560, 56000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 39),
  -- Scrafty - Attract - TM45
  (560, 56000, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 40),
  -- Scrafty - Thief - TM46
  (560, 56000, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 41),
  -- Scrafty - Low Sweep - TM47
  (560, 56000, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 42),
  -- Scrafty - Round - TM48
  (560, 56000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 43),
  -- Scrafty - Focus Blast - TM52
  (560, 56000, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 44),
  -- Scrafty - Fling - TM56
  (560, 56000, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 45),
  -- Scrafty - Incinerate - TM59
  (560, 56000, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 46),
  -- Scrafty - Payback - TM66
  (560, 56000, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 47),
  -- Scrafty - Retaliate - TM67
  (560, 56000, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 48),
  -- Scrafty - Giga Impact - TM68
  (560, 56000, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 49),
  -- Scrafty - Stone Edge - TM71
  (560, 56000, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 50),
  -- Scrafty - Rock Slide - TM80
  (560, 56000, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 51),
  -- Scrafty - Dragon Tail - TM82
  (560, 56000, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 52),
  -- Scrafty - Work Up - TM83
  (560, 56000, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 53),
  -- Scrafty - Poison Jab - TM84
  (560, 56000, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 54),
  -- Scrafty - Grass Knot - TM86
  (560, 56000, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 55),
  -- Scrafty - Swagger - TM87
  (560, 56000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 56),
  -- Scrafty - Substitute - TM90
  (560, 56000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 57),
  -- Scrafty - Rock Smash - TM94
  (560, 56000, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 58),
  -- Scrafty - Snarl - TM95
  (560, 56000, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 59),
  -- Scrafty - Strength - HM04
  (560, 56000, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 60),
  -- Sigilyph - Gust - Level 1
  (561, 56100, 16, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sigilyph - Miracle Eye - Level 1
  (561, 56100, 357, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sigilyph - Hypnosis - Level 4
  (561, 56100, 95, 11, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Sigilyph - Psywave - Level 8
  (561, 56100, 149, 11, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Sigilyph - Tailwind - Level 11
  (561, 56100, 366, 11, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Sigilyph - Whirlwind - Level 14
  (561, 56100, 18, 11, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Sigilyph - Psybeam - Level 18
  (561, 56100, 60, 11, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Sigilyph - Air Cutter - Level 21
  (561, 56100, 314, 11, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Sigilyph - Light Screen - Level 24
  (561, 56100, 113, 11, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Sigilyph - Reflect - Level 28
  (561, 56100, 115, 11, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Sigilyph - Synchronoise - Level 31
  (561, 56100, 485, 11, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Sigilyph - Mirror Move - Level 34
  (561, 56100, 119, 11, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Sigilyph - Gravity - Level 38
  (561, 56100, 356, 11, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Sigilyph - Air Slash - Level 41
  (561, 56100, 403, 11, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Sigilyph - Psychic - Level 44
  (561, 56100, 94, 11, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Sigilyph - Cosmic Power - Level 48
  (561, 56100, 322, 11, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Sigilyph - Sky Attack - Level 51
  (561, 56100, 143, 11, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Sigilyph - Psyshock - TM03
  (561, 56100, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 18),
  -- Sigilyph - Calm Mind - TM04
  (561, 56100, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 19),
  -- Sigilyph - Toxic - TM06
  (561, 56100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Sigilyph - Hidden Power - TM10
  (561, 56100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Sigilyph - Ice Beam - TM13
  (561, 56100, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 22),
  -- Sigilyph - Hyper Beam - TM15
  (561, 56100, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 23),
  -- Sigilyph - Light Screen - TM16
  (561, 56100, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 24),
  -- Sigilyph - Protect - TM17
  (561, 56100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Sigilyph - Rain Dance - TM18
  (561, 56100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 26),
  -- Sigilyph - Telekinesis - TM19
  (561, 56100, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 27),
  -- Sigilyph - Safeguard - TM20
  (561, 56100, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 28),
  -- Sigilyph - Frustration - TM21
  (561, 56100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 29),
  -- Sigilyph - Solar Beam - TM22
  (561, 56100, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 30),
  -- Sigilyph - Smack Down - TM23
  (561, 56100, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 31),
  -- Sigilyph - Return - TM27
  (561, 56100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 32),
  -- Sigilyph - Psychic - TM29
  (561, 56100, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 33),
  -- Sigilyph - Shadow Ball - TM30
  (561, 56100, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 34),
  -- Sigilyph - Double Team - TM32
  (561, 56100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 35),
  -- Sigilyph - Reflect - TM33
  (561, 56100, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 36),
  -- Sigilyph - Aerial Ace - TM40
  (561, 56100, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 37),
  -- Sigilyph - Facade - TM42
  (561, 56100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 38),
  -- Sigilyph - Rest - TM44
  (561, 56100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 39),
  -- Sigilyph - Attract - TM45
  (561, 56100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 40),
  -- Sigilyph - Thief - TM46
  (561, 56100, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 41),
  -- Sigilyph - Round - TM48
  (561, 56100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 42),
  -- Sigilyph - Energy Ball - TM53
  (561, 56100, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 43),
  -- Sigilyph - Charge Beam - TM57
  (561, 56100, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 44),
  -- Sigilyph - Flash - TM70
  (561, 56100, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 45),
  -- Sigilyph - Thunder Wave - TM73
  (561, 56100, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 46),
  -- Sigilyph - Psych Up - TM77
  (561, 56100, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 47),
  -- Sigilyph - Dream Eater - TM85
  (561, 56100, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 48),
  -- Sigilyph - Swagger - TM87
  (561, 56100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 49),
  -- Sigilyph - Pluck - TM88
  (561, 56100, 365, 11, NULL, 2, NULL, NULL, 11002088, NULL, 50),
  -- Sigilyph - Substitute - TM90
  (561, 56100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 51),
  -- Sigilyph - Flash Cannon - TM91
  (561, 56100, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 52),
  -- Sigilyph - Trick Room - TM92
  (561, 56100, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 53),
  -- Sigilyph - Fly - HM02
  (561, 56100, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 54),
  -- Sigilyph - Ancient Power - Egg Move
  (561, 56100, 246, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sigilyph - Psycho Shift - Egg Move
  (561, 56100, 375, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sigilyph - Roost - Egg Move
  (561, 56100, 355, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sigilyph - Skill Swap - Egg Move
  (561, 56100, 285, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sigilyph - Steel Wing - Egg Move
  (561, 56100, 211, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sigilyph - Stored Power - Egg Move
  (561, 56100, 500, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Yamask - Astonish - Level 1
  (562, 56200, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yamask - Protect - Level 1
  (562, 56200, 182, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yamask - Disable - Level 5
  (562, 56200, 50, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Yamask - Haze - Level 9
  (562, 56200, 114, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Yamask - Night Shade - Level 13
  (562, 56200, 101, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Yamask - Hex - Level 17
  (562, 56200, 506, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Yamask - Will-O-Wisp - Level 21
  (562, 56200, 261, 11, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Yamask - Ominous Wind - Level 25
  (562, 56200, 466, 11, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Yamask - Curse - Level 29
  (562, 56200, 174, 11, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Yamask - Power Split - Level 33
  (562, 56200, 471, 11, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Yamask - Guard Split - Level 33
  (562, 56200, 470, 11, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Yamask - Shadow Ball - Level 37
  (562, 56200, 247, 11, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Yamask - Grudge - Level 41
  (562, 56200, 288, 11, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Yamask - Mean Look - Level 45
  (562, 56200, 212, 11, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Yamask - Destiny Bond - Level 49
  (562, 56200, 194, 11, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Yamask - Calm Mind - TM04
  (562, 56200, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 16),
  -- Yamask - Toxic - TM06
  (562, 56200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Yamask - Hidden Power - TM10
  (562, 56200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Yamask - Protect - TM17
  (562, 56200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Yamask - Rain Dance - TM18
  (562, 56200, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 20),
  -- Yamask - Telekinesis - TM19
  (562, 56200, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 21),
  -- Yamask - Safeguard - TM20
  (562, 56200, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 22),
  -- Yamask - Frustration - TM21
  (562, 56200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Yamask - Return - TM27
  (562, 56200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Yamask - Psychic - TM29
  (562, 56200, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 25),
  -- Yamask - Shadow Ball - TM30
  (562, 56200, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 26),
  -- Yamask - Double Team - TM32
  (562, 56200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Yamask - Facade - TM42
  (562, 56200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 28),
  -- Yamask - Rest - TM44
  (562, 56200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 29),
  -- Yamask - Attract - TM45
  (562, 56200, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 30),
  -- Yamask - Thief - TM46
  (562, 56200, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 31),
  -- Yamask - Round - TM48
  (562, 56200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Yamask - Energy Ball - TM53
  (562, 56200, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 33),
  -- Yamask - Will-O-Wisp - TM61
  (562, 56200, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 34),
  -- Yamask - Embargo - TM63
  (562, 56200, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 35),
  -- Yamask - Payback - TM66
  (562, 56200, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 36),
  -- Yamask - Flash - TM70
  (562, 56200, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 37),
  -- Yamask - Psych Up - TM77
  (562, 56200, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 38),
  -- Yamask - Dream Eater - TM85
  (562, 56200, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 39),
  -- Yamask - Swagger - TM87
  (562, 56200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 40),
  -- Yamask - Substitute - TM90
  (562, 56200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 41),
  -- Yamask - Trick Room - TM92
  (562, 56200, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 42),
  -- Yamask - Disable - Egg Move
  (562, 56200, 50, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Yamask - Endure - Egg Move
  (562, 56200, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Yamask - Fake Tears - Egg Move
  (562, 56200, 313, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Yamask - Heal Block - Egg Move
  (562, 56200, 377, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Yamask - Imprison - Egg Move
  (562, 56200, 286, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Yamask - Memento - Egg Move
  (562, 56200, 262, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Yamask - Nasty Plot - Egg Move
  (562, 56200, 417, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Yamask - Nightmare - Egg Move
  (562, 56200, 171, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cofagrigus - Astonish - Level 1
  (563, 56300, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cofagrigus - Protect - Level 1
  (563, 56300, 182, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cofagrigus - Disable - Level 1
  (563, 56300, 50, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cofagrigus - Haze - Level 1
  (563, 56300, 114, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cofagrigus - Disable - Level 5
  (563, 56300, 50, 11, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Cofagrigus - Haze - Level 9
  (563, 56300, 114, 11, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Cofagrigus - Night Shade - Level 13
  (563, 56300, 101, 11, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Cofagrigus - Hex - Level 17
  (563, 56300, 506, 11, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Cofagrigus - Will-O-Wisp - Level 21
  (563, 56300, 261, 11, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Cofagrigus - Ominous Wind - Level 25
  (563, 56300, 466, 11, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Cofagrigus - Curse - Level 29
  (563, 56300, 174, 11, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Cofagrigus - Power Split - Level 33
  (563, 56300, 471, 11, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Cofagrigus - Guard Split - Level 33
  (563, 56300, 470, 11, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Cofagrigus - Scary Face - Level 34
  (563, 56300, 184, 11, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Cofagrigus - Shadow Ball - Level 39
  (563, 56300, 247, 11, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Cofagrigus - Grudge - Level 45
  (563, 56300, 288, 11, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Cofagrigus - Mean Look - Level 51
  (563, 56300, 212, 11, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Cofagrigus - Destiny Bond - Level 57
  (563, 56300, 194, 11, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Cofagrigus - Calm Mind - TM04
  (563, 56300, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 19),
  -- Cofagrigus - Toxic - TM06
  (563, 56300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Cofagrigus - Hidden Power - TM10
  (563, 56300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Cofagrigus - Hyper Beam - TM15
  (563, 56300, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Cofagrigus - Protect - TM17
  (563, 56300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Cofagrigus - Rain Dance - TM18
  (563, 56300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Cofagrigus - Telekinesis - TM19
  (563, 56300, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 25),
  -- Cofagrigus - Safeguard - TM20
  (563, 56300, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 26),
  -- Cofagrigus - Frustration - TM21
  (563, 56300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 27),
  -- Cofagrigus - Return - TM27
  (563, 56300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Cofagrigus - Psychic - TM29
  (563, 56300, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 29),
  -- Cofagrigus - Shadow Ball - TM30
  (563, 56300, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 30),
  -- Cofagrigus - Double Team - TM32
  (563, 56300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Cofagrigus - Facade - TM42
  (563, 56300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 32),
  -- Cofagrigus - Rest - TM44
  (563, 56300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 33),
  -- Cofagrigus - Attract - TM45
  (563, 56300, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 34),
  -- Cofagrigus - Thief - TM46
  (563, 56300, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 35),
  -- Cofagrigus - Round - TM48
  (563, 56300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Cofagrigus - Energy Ball - TM53
  (563, 56300, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 37),
  -- Cofagrigus - Will-O-Wisp - TM61
  (563, 56300, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 38),
  -- Cofagrigus - Embargo - TM63
  (563, 56300, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 39),
  -- Cofagrigus - Payback - TM66
  (563, 56300, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 40),
  -- Cofagrigus - Giga Impact - TM68
  (563, 56300, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 41),
  -- Cofagrigus - Flash - TM70
  (563, 56300, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 42),
  -- Cofagrigus - Psych Up - TM77
  (563, 56300, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 43),
  -- Cofagrigus - Dream Eater - TM85
  (563, 56300, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 44),
  -- Cofagrigus - Grass Knot - TM86
  (563, 56300, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 45),
  -- Cofagrigus - Swagger - TM87
  (563, 56300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 46),
  -- Cofagrigus - Substitute - TM90
  (563, 56300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 47),
  -- Cofagrigus - Trick Room - TM92
  (563, 56300, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 48),
  -- Tirtouga - Bide - Level 1
  (564, 56400, 117, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tirtouga - Withdraw - Level 1
  (564, 56400, 110, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tirtouga - Water Gun - Level 1
  (564, 56400, 55, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tirtouga - Rollout - Level 5
  (564, 56400, 205, 11, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Tirtouga - Bite - Level 8
  (564, 56400, 44, 11, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Tirtouga - Protect - Level 11
  (564, 56400, 182, 11, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Tirtouga - Aqua Jet - Level 15
  (564, 56400, 453, 11, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Tirtouga - Ancient Power - Level 18
  (564, 56400, 246, 11, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Tirtouga - Crunch - Level 21
  (564, 56400, 242, 11, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Tirtouga - Wide Guard - Level 25
  (564, 56400, 469, 11, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Tirtouga - Brine - Level 28
  (564, 56400, 362, 11, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Tirtouga - Smack Down - Level 31
  (564, 56400, 479, 11, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Tirtouga - Curse - Level 35
  (564, 56400, 174, 11, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Tirtouga - Shell Smash - Level 38
  (564, 56400, 504, 11, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Tirtouga - Aqua Tail - Level 41
  (564, 56400, 401, 11, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Tirtouga - Rock Slide - Level 45
  (564, 56400, 157, 11, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Tirtouga - Rain Dance - Level 48
  (564, 56400, 240, 11, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Tirtouga - Hydro Pump - Level 51
  (564, 56400, 56, 11, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Tirtouga - Toxic - TM06
  (564, 56400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Tirtouga - Hidden Power - TM10
  (564, 56400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Tirtouga - Ice Beam - TM13
  (564, 56400, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 21),
  -- Tirtouga - Blizzard - TM14
  (564, 56400, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 22),
  -- Tirtouga - Protect - TM17
  (564, 56400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Tirtouga - Rain Dance - TM18
  (564, 56400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Tirtouga - Frustration - TM21
  (564, 56400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Tirtouga - Smack Down - TM23
  (564, 56400, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 26),
  -- Tirtouga - Earthquake - TM26
  (564, 56400, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 27),
  -- Tirtouga - Return - TM27
  (564, 56400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Tirtouga - Dig - TM28
  (564, 56400, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 29),
  -- Tirtouga - Double Team - TM32
  (564, 56400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Tirtouga - Sandstorm - TM37
  (564, 56400, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 31),
  -- Tirtouga - Rock Tomb - TM39
  (564, 56400, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 32),
  -- Tirtouga - Facade - TM42
  (564, 56400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Tirtouga - Rest - TM44
  (564, 56400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Tirtouga - Attract - TM45
  (564, 56400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Tirtouga - Round - TM48
  (564, 56400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Tirtouga - Scald - TM55
  (564, 56400, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 37),
  -- Tirtouga - Rock Polish - TM69
  (564, 56400, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 38),
  -- Tirtouga - Stone Edge - TM71
  (564, 56400, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 39),
  -- Tirtouga - Bulldoze - TM78
  (564, 56400, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 40),
  -- Tirtouga - Rock Slide - TM80
  (564, 56400, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 41),
  -- Tirtouga - Swagger - TM87
  (564, 56400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 42),
  -- Tirtouga - Substitute - TM90
  (564, 56400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 43),
  -- Tirtouga - Rock Smash - TM94
  (564, 56400, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 44),
  -- Tirtouga - Surf - HM03
  (564, 56400, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 45),
  -- Tirtouga - Strength - HM04
  (564, 56400, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 46),
  -- Tirtouga - Waterfall - HM05
  (564, 56400, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 47),
  -- Tirtouga - Dive - HM06
  (564, 56400, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 48),
  -- Tirtouga - Bide - Egg Move
  (564, 56400, 117, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Tirtouga - Body Slam - Egg Move
  (564, 56400, 34, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tirtouga - Flail - Egg Move
  (564, 56400, 175, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tirtouga - Iron Defense - Egg Move
  (564, 56400, 334, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tirtouga - Knock Off - Egg Move
  (564, 56400, 282, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tirtouga - Rock Throw - Egg Move
  (564, 56400, 88, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tirtouga - Slam - Egg Move
  (564, 56400, 21, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Tirtouga - Water Pulse - Egg Move
  (564, 56400, 352, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tirtouga - Whirlpool - Egg Move
  (564, 56400, 250, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Carracosta - Bide - Level 1
  (565, 56500, 117, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carracosta - Withdraw - Level 1
  (565, 56500, 110, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carracosta - Water Gun - Level 1
  (565, 56500, 55, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Carracosta - Rollout - Level 1
  (565, 56500, 205, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Carracosta - Rollout - Level 5
  (565, 56500, 205, 11, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Carracosta - Bite - Level 8
  (565, 56500, 44, 11, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Carracosta - Protect - Level 11
  (565, 56500, 182, 11, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Carracosta - Aqua Jet - Level 15
  (565, 56500, 453, 11, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Carracosta - Ancient Power - Level 18
  (565, 56500, 246, 11, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Carracosta - Crunch - Level 21
  (565, 56500, 242, 11, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Carracosta - Wide Guard - Level 25
  (565, 56500, 469, 11, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Carracosta - Brine - Level 28
  (565, 56500, 362, 11, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Carracosta - Smack Down - Level 31
  (565, 56500, 479, 11, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Carracosta - Curse - Level 35
  (565, 56500, 174, 11, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Carracosta - Shell Smash - Level 40
  (565, 56500, 504, 11, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Carracosta - Aqua Tail - Level 45
  (565, 56500, 401, 11, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Carracosta - Rock Slide - Level 51
  (565, 56500, 157, 11, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Carracosta - Rain Dance - Level 56
  (565, 56500, 240, 11, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Carracosta - Hydro Pump - Level 61
  (565, 56500, 56, 11, NULL, 1, 61, NULL, NULL, NULL, 19),
  -- Carracosta - Toxic - TM06
  (565, 56500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Carracosta - Hidden Power - TM10
  (565, 56500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Carracosta - Ice Beam - TM13
  (565, 56500, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 22),
  -- Carracosta - Blizzard - TM14
  (565, 56500, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 23),
  -- Carracosta - Hyper Beam - TM15
  (565, 56500, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 24),
  -- Carracosta - Protect - TM17
  (565, 56500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Carracosta - Rain Dance - TM18
  (565, 56500, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 26),
  -- Carracosta - Frustration - TM21
  (565, 56500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 27),
  -- Carracosta - Smack Down - TM23
  (565, 56500, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 28),
  -- Carracosta - Earthquake - TM26
  (565, 56500, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 29),
  -- Carracosta - Return - TM27
  (565, 56500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Carracosta - Dig - TM28
  (565, 56500, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 31),
  -- Carracosta - Double Team - TM32
  (565, 56500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 32),
  -- Carracosta - Sandstorm - TM37
  (565, 56500, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 33),
  -- Carracosta - Rock Tomb - TM39
  (565, 56500, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 34),
  -- Carracosta - Facade - TM42
  (565, 56500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 35),
  -- Carracosta - Rest - TM44
  (565, 56500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 36),
  -- Carracosta - Attract - TM45
  (565, 56500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 37),
  -- Carracosta - Round - TM48
  (565, 56500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 38),
  -- Carracosta - Focus Blast - TM52
  (565, 56500, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 39),
  -- Carracosta - Scald - TM55
  (565, 56500, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 40),
  -- Carracosta - Giga Impact - TM68
  (565, 56500, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 41),
  -- Carracosta - Rock Polish - TM69
  (565, 56500, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 42),
  -- Carracosta - Stone Edge - TM71
  (565, 56500, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 43),
  -- Carracosta - Bulldoze - TM78
  (565, 56500, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 44),
  -- Carracosta - Rock Slide - TM80
  (565, 56500, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 45),
  -- Carracosta - Swagger - TM87
  (565, 56500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 46),
  -- Carracosta - Substitute - TM90
  (565, 56500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 47),
  -- Carracosta - Rock Smash - TM94
  (565, 56500, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 48),
  -- Carracosta - Surf - HM03
  (565, 56500, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 49),
  -- Carracosta - Strength - HM04
  (565, 56500, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 50),
  -- Carracosta - Waterfall - HM05
  (565, 56500, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 51),
  -- Carracosta - Dive - HM06
  (565, 56500, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 52),
  -- Archen - Quick Attack - Level 1
  (566, 56600, 98, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Archen - Leer - Level 1
  (566, 56600, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Archen - Wing Attack - Level 1
  (566, 56600, 17, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Archen - Rock Throw - Level 5
  (566, 56600, 88, 11, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Archen - Double Team - Level 8
  (566, 56600, 104, 11, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Archen - Scary Face - Level 11
  (566, 56600, 184, 11, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Archen - Pluck - Level 15
  (566, 56600, 365, 11, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Archen - Ancient Power - Level 18
  (566, 56600, 246, 11, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Archen - Agility - Level 21
  (566, 56600, 97, 11, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Archen - Quick Guard - Level 25
  (566, 56600, 501, 11, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Archen - Acrobatics - Level 28
  (566, 56600, 512, 11, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Archen - Dragon Breath - Level 31
  (566, 56600, 225, 11, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Archen - Crunch - Level 35
  (566, 56600, 242, 11, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Archen - Endeavor - Level 38
  (566, 56600, 283, 11, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Archen - U-turn - Level 41
  (566, 56600, 369, 11, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Archen - Rock Slide - Level 45
  (566, 56600, 157, 11, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Archen - Dragon Claw - Level 48
  (566, 56600, 337, 11, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Archen - Thrash - Level 51
  (566, 56600, 37, 11, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Archen - Hone Claws - TM01
  (566, 56600, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 19),
  -- Archen - Dragon Claw - TM02
  (566, 56600, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 20),
  -- Archen - Roar - TM05
  (566, 56600, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 21),
  -- Archen - Toxic - TM06
  (566, 56600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 22),
  -- Archen - Hidden Power - TM10
  (566, 56600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 23),
  -- Archen - Taunt - TM12
  (566, 56600, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 24),
  -- Archen - Protect - TM17
  (566, 56600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Archen - Frustration - TM21
  (566, 56600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Archen - Smack Down - TM23
  (566, 56600, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 27),
  -- Archen - Earthquake - TM26
  (566, 56600, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 28),
  -- Archen - Return - TM27
  (566, 56600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Archen - Dig - TM28
  (566, 56600, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 30),
  -- Archen - Double Team - TM32
  (566, 56600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Archen - Sandstorm - TM37
  (566, 56600, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 32),
  -- Archen - Rock Tomb - TM39
  (566, 56600, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 33),
  -- Archen - Aerial Ace - TM40
  (566, 56600, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 34),
  -- Archen - Torment - TM41
  (566, 56600, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 35),
  -- Archen - Facade - TM42
  (566, 56600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Archen - Rest - TM44
  (566, 56600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 37),
  -- Archen - Attract - TM45
  (566, 56600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 38),
  -- Archen - Round - TM48
  (566, 56600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 39),
  -- Archen - Acrobatics - TM62
  (566, 56600, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 40),
  -- Archen - Shadow Claw - TM65
  (566, 56600, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 41),
  -- Archen - Rock Polish - TM69
  (566, 56600, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 42),
  -- Archen - Stone Edge - TM71
  (566, 56600, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 43),
  -- Archen - Bulldoze - TM78
  (566, 56600, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 44),
  -- Archen - Rock Slide - TM80
  (566, 56600, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 45),
  -- Archen - Swagger - TM87
  (566, 56600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 46),
  -- Archen - Pluck - TM88
  (566, 56600, 365, 11, NULL, 2, NULL, NULL, 11002088, NULL, 47),
  -- Archen - U-turn - TM89
  (566, 56600, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 48),
  -- Archen - Substitute - TM90
  (566, 56600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 49),
  -- Archen - Rock Smash - TM94
  (566, 56600, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 50),
  -- Archen - Cut - HM01
  (566, 56600, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 51),
  -- Archen - Bite - Egg Move
  (566, 56600, 44, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Archen - Defog - Egg Move
  (566, 56600, 432, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Archen - Dragon Pulse - Egg Move
  (566, 56600, 406, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Archen - Earth Power - Egg Move
  (566, 56600, 414, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Archen - Head Smash - Egg Move
  (566, 56600, 457, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Archen - Knock Off - Egg Move
  (566, 56600, 282, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Archen - Steel Wing - Egg Move
  (566, 56600, 211, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Archeops - Quick Attack - Level 1
  (567, 56700, 98, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Archeops - Leer - Level 1
  (567, 56700, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Archeops - Wing Attack - Level 1
  (567, 56700, 17, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Archeops - Rock Throw - Level 1
  (567, 56700, 88, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Archeops - Rock Throw - Level 5
  (567, 56700, 88, 11, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Archeops - Double Team - Level 8
  (567, 56700, 104, 11, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Archeops - Scary Face - Level 11
  (567, 56700, 184, 11, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Archeops - Pluck - Level 15
  (567, 56700, 365, 11, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Archeops - Ancient Power - Level 18
  (567, 56700, 246, 11, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Archeops - Agility - Level 21
  (567, 56700, 97, 11, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Archeops - Quick Guard - Level 25
  (567, 56700, 501, 11, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Archeops - Acrobatics - Level 28
  (567, 56700, 512, 11, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Archeops - Dragon Breath - Level 31
  (567, 56700, 225, 11, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Archeops - Crunch - Level 35
  (567, 56700, 242, 11, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Archeops - Endeavor - Level 40
  (567, 56700, 283, 11, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Archeops - U-turn - Level 45
  (567, 56700, 369, 11, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Archeops - Rock Slide - Level 51
  (567, 56700, 157, 11, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Archeops - Dragon Claw - Level 56
  (567, 56700, 337, 11, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Archeops - Thrash - Level 61
  (567, 56700, 37, 11, NULL, 1, 61, NULL, NULL, NULL, 19),
  -- Archeops - Hone Claws - TM01
  (567, 56700, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 20),
  -- Archeops - Dragon Claw - TM02
  (567, 56700, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 21),
  -- Archeops - Roar - TM05
  (567, 56700, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 22),
  -- Archeops - Toxic - TM06
  (567, 56700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 23),
  -- Archeops - Hidden Power - TM10
  (567, 56700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 24),
  -- Archeops - Taunt - TM12
  (567, 56700, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 25),
  -- Archeops - Hyper Beam - TM15
  (567, 56700, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 26),
  -- Archeops - Protect - TM17
  (567, 56700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 27),
  -- Archeops - Frustration - TM21
  (567, 56700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Archeops - Smack Down - TM23
  (567, 56700, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 29),
  -- Archeops - Earthquake - TM26
  (567, 56700, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 30),
  -- Archeops - Return - TM27
  (567, 56700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 31),
  -- Archeops - Dig - TM28
  (567, 56700, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 32),
  -- Archeops - Double Team - TM32
  (567, 56700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 33),
  -- Archeops - Sandstorm - TM37
  (567, 56700, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 34),
  -- Archeops - Rock Tomb - TM39
  (567, 56700, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 35),
  -- Archeops - Aerial Ace - TM40
  (567, 56700, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 36),
  -- Archeops - Torment - TM41
  (567, 56700, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 37),
  -- Archeops - Facade - TM42
  (567, 56700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 38),
  -- Archeops - Rest - TM44
  (567, 56700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 39),
  -- Archeops - Attract - TM45
  (567, 56700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 40),
  -- Archeops - Round - TM48
  (567, 56700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 41),
  -- Archeops - Focus Blast - TM52
  (567, 56700, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 42),
  -- Archeops - Acrobatics - TM62
  (567, 56700, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 43),
  -- Archeops - Shadow Claw - TM65
  (567, 56700, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 44),
  -- Archeops - Giga Impact - TM68
  (567, 56700, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 45),
  -- Archeops - Rock Polish - TM69
  (567, 56700, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 46),
  -- Archeops - Stone Edge - TM71
  (567, 56700, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 47),
  -- Archeops - Bulldoze - TM78
  (567, 56700, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 48),
  -- Archeops - Rock Slide - TM80
  (567, 56700, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 49),
  -- Archeops - Dragon Tail - TM82
  (567, 56700, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 50),
  -- Archeops - Swagger - TM87
  (567, 56700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 51),
  -- Archeops - Pluck - TM88
  (567, 56700, 365, 11, NULL, 2, NULL, NULL, 11002088, NULL, 52),
  -- Archeops - U-turn - TM89
  (567, 56700, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 53),
  -- Archeops - Substitute - TM90
  (567, 56700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 54),
  -- Archeops - Rock Smash - TM94
  (567, 56700, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 55),
  -- Archeops - Cut - HM01
  (567, 56700, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 56),
  -- Archeops - Fly - HM02
  (567, 56700, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 57),
  -- Trubbish - Pound - Level 1
  (568, 56800, 1, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Trubbish - Poison Gas - Level 1
  (568, 56800, 139, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Trubbish - Recycle - Level 3
  (568, 56800, 278, 11, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Trubbish - Toxic Spikes - Level 7
  (568, 56800, 390, 11, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Trubbish - Acid Spray - Level 12
  (568, 56800, 491, 11, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Trubbish - Double Slap - Level 14
  (568, 56800, 3, 11, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Trubbish - Sludge - Level 18
  (568, 56800, 124, 11, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Trubbish - Stockpile - Level 23
  (568, 56800, 254, 11, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Trubbish - Swallow - Level 23
  (568, 56800, 256, 11, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Trubbish - Take Down - Level 25
  (568, 56800, 36, 11, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Trubbish - Sludge Bomb - Level 29
  (568, 56800, 188, 11, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Trubbish - Clear Smog - Level 34
  (568, 56800, 499, 11, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Trubbish - Toxic - Level 36
  (568, 56800, 92, 11, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Trubbish - Amnesia - Level 40
  (568, 56800, 133, 11, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Trubbish - Gunk Shot - Level 45
  (568, 56800, 441, 11, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Trubbish - Explosion - Level 47
  (568, 56800, 153, 11, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Trubbish - Toxic - TM06
  (568, 56800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Trubbish - Venoshock - TM09
  (568, 56800, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 18),
  -- Trubbish - Hidden Power - TM10
  (568, 56800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Trubbish - Sunny Day - TM11
  (568, 56800, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Trubbish - Protect - TM17
  (568, 56800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Trubbish - Rain Dance - TM18
  (568, 56800, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 22),
  -- Trubbish - Frustration - TM21
  (568, 56800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Trubbish - Return - TM27
  (568, 56800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Trubbish - Double Team - TM32
  (568, 56800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 25),
  -- Trubbish - Sludge Wave - TM34
  (568, 56800, 482, 11, NULL, 2, NULL, NULL, 11002034, NULL, 26),
  -- Trubbish - Sludge Bomb - TM36
  (568, 56800, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 27),
  -- Trubbish - Facade - TM42
  (568, 56800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 28),
  -- Trubbish - Rest - TM44
  (568, 56800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 29),
  -- Trubbish - Attract - TM45
  (568, 56800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 30),
  -- Trubbish - Thief - TM46
  (568, 56800, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 31),
  -- Trubbish - Round - TM48
  (568, 56800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Trubbish - Explosion - TM64
  (568, 56800, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 33),
  -- Trubbish - Payback - TM66
  (568, 56800, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 34),
  -- Trubbish - Swagger - TM87
  (568, 56800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 35),
  -- Trubbish - Substitute - TM90
  (568, 56800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 36),
  -- Trubbish - Curse - Egg Move
  (568, 56800, 174, 11, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Trubbish - Haze - Egg Move
  (568, 56800, 114, 11, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Trubbish - Mud Sport - Egg Move
  (568, 56800, 300, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Trubbish - Rock Blast - Egg Move
  (568, 56800, 350, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Trubbish - Rollout - Egg Move
  (568, 56800, 205, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Trubbish - Sand Attack - Egg Move
  (568, 56800, 28, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Trubbish - Self-Destruct - Egg Move
  (568, 56800, 120, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Trubbish - Spikes - Egg Move
  (568, 56800, 191, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Garbodor - Pound - Level 1
  (569, 56900, 1, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Garbodor - Poison Gas - Level 1
  (569, 56900, 139, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Garbodor - Recycle - Level 1
  (569, 56900, 278, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Garbodor - Toxic Spikes - Level 1
  (569, 56900, 390, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Garbodor - Recycle - Level 3
  (569, 56900, 278, 11, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Garbodor - Toxic Spikes - Level 7
  (569, 56900, 390, 11, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Garbodor - Acid Spray - Level 12
  (569, 56900, 491, 11, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Garbodor - Double Slap - Level 14
  (569, 56900, 3, 11, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Garbodor - Sludge - Level 18
  (569, 56900, 124, 11, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Garbodor - Stockpile - Level 23
  (569, 56900, 254, 11, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Garbodor - Swallow - Level 23
  (569, 56900, 256, 11, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Garbodor - Body Slam - Level 25
  (569, 56900, 34, 11, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Garbodor - Sludge Bomb - Level 29
  (569, 56900, 188, 11, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Garbodor - Clear Smog - Level 34
  (569, 56900, 499, 11, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Garbodor - Toxic - Level 39
  (569, 56900, 92, 11, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Garbodor - Amnesia - Level 46
  (569, 56900, 133, 11, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Garbodor - Gunk Shot - Level 54
  (569, 56900, 441, 11, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Garbodor - Explosion - Level 59
  (569, 56900, 153, 11, NULL, 1, 59, NULL, NULL, NULL, 18),
  -- Garbodor - Toxic - TM06
  (569, 56900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Garbodor - Venoshock - TM09
  (569, 56900, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 20),
  -- Garbodor - Hidden Power - TM10
  (569, 56900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Garbodor - Sunny Day - TM11
  (569, 56900, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 22),
  -- Garbodor - Hyper Beam - TM15
  (569, 56900, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 23),
  -- Garbodor - Protect - TM17
  (569, 56900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Garbodor - Rain Dance - TM18
  (569, 56900, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Garbodor - Frustration - TM21
  (569, 56900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Garbodor - Solar Beam - TM22
  (569, 56900, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 27),
  -- Garbodor - Smack Down - TM23
  (569, 56900, 479, 11, NULL, 2, NULL, NULL, 11002023, NULL, 28),
  -- Garbodor - Thunderbolt - TM24
  (569, 56900, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 29),
  -- Garbodor - Return - TM27
  (569, 56900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Garbodor - Psychic - TM29
  (569, 56900, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 31),
  -- Garbodor - Double Team - TM32
  (569, 56900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 32),
  -- Garbodor - Sludge Wave - TM34
  (569, 56900, 482, 11, NULL, 2, NULL, NULL, 11002034, NULL, 33),
  -- Garbodor - Sludge Bomb - TM36
  (569, 56900, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 34),
  -- Garbodor - Facade - TM42
  (569, 56900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 35),
  -- Garbodor - Rest - TM44
  (569, 56900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 36),
  -- Garbodor - Attract - TM45
  (569, 56900, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 37),
  -- Garbodor - Thief - TM46
  (569, 56900, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 38),
  -- Garbodor - Round - TM48
  (569, 56900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 39),
  -- Garbodor - Focus Blast - TM52
  (569, 56900, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 40),
  -- Garbodor - Fling - TM56
  (569, 56900, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 41),
  -- Garbodor - Explosion - TM64
  (569, 56900, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 42),
  -- Garbodor - Payback - TM66
  (569, 56900, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 43),
  -- Garbodor - Giga Impact - TM68
  (569, 56900, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 44),
  -- Garbodor - Rock Polish - TM69
  (569, 56900, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 45),
  -- Garbodor - Swagger - TM87
  (569, 56900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 46),
  -- Garbodor - Substitute - TM90
  (569, 56900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 47),
  -- Zorua - Scratch - Level 1
  (570, 57000, 10, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zorua - Leer - Level 1
  (570, 57000, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zorua - Pursuit - Level 5
  (570, 57000, 228, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zorua - Fake Tears - Level 9
  (570, 57000, 313, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Zorua - Fury Swipes - Level 13
  (570, 57000, 154, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Zorua - Feint Attack - Level 17
  (570, 57000, 185, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Zorua - Scary Face - Level 21
  (570, 57000, 184, 11, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Zorua - Taunt - Level 25
  (570, 57000, 269, 11, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Zorua - Foul Play - Level 29
  (570, 57000, 492, 11, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Zorua - Torment - Level 33
  (570, 57000, 259, 11, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Zorua - Agility - Level 37
  (570, 57000, 97, 11, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Zorua - Embargo - Level 41
  (570, 57000, 373, 11, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Zorua - Punishment - Level 45
  (570, 57000, 386, 11, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Zorua - Nasty Plot - Level 49
  (570, 57000, 417, 11, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Zorua - Imprison - Level 53
  (570, 57000, 286, 11, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Zorua - Night Daze - Level 57
  (570, 57000, 539, 11, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Zorua - Hone Claws - TM01
  (570, 57000, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 17),
  -- Zorua - Calm Mind - TM04
  (570, 57000, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 18),
  -- Zorua - Roar - TM05
  (570, 57000, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 19),
  -- Zorua - Toxic - TM06
  (570, 57000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Zorua - Hidden Power - TM10
  (570, 57000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Zorua - Sunny Day - TM11
  (570, 57000, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 22),
  -- Zorua - Taunt - TM12
  (570, 57000, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 23),
  -- Zorua - Protect - TM17
  (570, 57000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Zorua - Rain Dance - TM18
  (570, 57000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Zorua - Frustration - TM21
  (570, 57000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Zorua - Return - TM27
  (570, 57000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Zorua - Dig - TM28
  (570, 57000, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 28),
  -- Zorua - Shadow Ball - TM30
  (570, 57000, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 29),
  -- Zorua - Double Team - TM32
  (570, 57000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Zorua - Aerial Ace - TM40
  (570, 57000, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 31),
  -- Zorua - Torment - TM41
  (570, 57000, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 32),
  -- Zorua - Facade - TM42
  (570, 57000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Zorua - Rest - TM44
  (570, 57000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Zorua - Attract - TM45
  (570, 57000, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Zorua - Thief - TM46
  (570, 57000, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 36),
  -- Zorua - Round - TM48
  (570, 57000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Zorua - Fling - TM56
  (570, 57000, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 38),
  -- Zorua - Incinerate - TM59
  (570, 57000, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 39),
  -- Zorua - Embargo - TM63
  (570, 57000, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 40),
  -- Zorua - Payback - TM66
  (570, 57000, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 41),
  -- Zorua - Retaliate - TM67
  (570, 57000, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 42),
  -- Zorua - Swords Dance - TM75
  (570, 57000, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 43),
  -- Zorua - Psych Up - TM77
  (570, 57000, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 44),
  -- Zorua - Grass Knot - TM86
  (570, 57000, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 45),
  -- Zorua - Swagger - TM87
  (570, 57000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 46),
  -- Zorua - U-turn - TM89
  (570, 57000, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 47),
  -- Zorua - Substitute - TM90
  (570, 57000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 48),
  -- Zorua - Snarl - TM95
  (570, 57000, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 49),
  -- Zorua - Cut - HM01
  (570, 57000, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 50),
  -- Zorua - Captivate - Egg Move
  (570, 57000, 445, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Zorua - Counter - Egg Move
  (570, 57000, 68, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Zorua - Dark Pulse - Egg Move
  (570, 57000, 399, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Zorua - Detect - Egg Move
  (570, 57000, 197, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Zorua - Extrasensory - Egg Move
  (570, 57000, 326, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Zorua - Memento - Egg Move
  (570, 57000, 262, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Zorua - Snatch - Egg Move
  (570, 57000, 289, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Zorua - Sucker Punch - Egg Move
  (570, 57000, 389, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Zoroark - U-turn - Level 1
  (571, 57100, 369, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zoroark - Scratch - Level 1
  (571, 57100, 10, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zoroark - Leer - Level 1
  (571, 57100, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zoroark - Pursuit - Level 1
  (571, 57100, 228, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zoroark - Hone Claws - Level 1
  (571, 57100, 468, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Zoroark - Pursuit - Level 5
  (571, 57100, 228, 11, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Zoroark - Hone Claws - Level 9
  (571, 57100, 468, 11, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Zoroark - Fury Swipes - Level 13
  (571, 57100, 154, 11, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Zoroark - Feint Attack - Level 17
  (571, 57100, 185, 11, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Zoroark - Scary Face - Level 21
  (571, 57100, 184, 11, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Zoroark - Taunt - Level 25
  (571, 57100, 269, 11, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Zoroark - Foul Play - Level 29
  (571, 57100, 492, 11, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Zoroark - Night Slash - Level 30
  (571, 57100, 400, 11, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Zoroark - Torment - Level 34
  (571, 57100, 259, 11, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Zoroark - Agility - Level 39
  (571, 57100, 97, 11, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Zoroark - Embargo - Level 44
  (571, 57100, 373, 11, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Zoroark - Punishment - Level 49
  (571, 57100, 386, 11, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Zoroark - Nasty Plot - Level 54
  (571, 57100, 417, 11, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Zoroark - Imprison - Level 59
  (571, 57100, 286, 11, NULL, 1, 59, NULL, NULL, NULL, 19),
  -- Zoroark - Night Daze - Level 64
  (571, 57100, 539, 11, NULL, 1, 64, NULL, NULL, NULL, 20),
  -- Zoroark - Hone Claws - TM01
  (571, 57100, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 21),
  -- Zoroark - Calm Mind - TM04
  (571, 57100, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 22),
  -- Zoroark - Roar - TM05
  (571, 57100, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 23),
  -- Zoroark - Toxic - TM06
  (571, 57100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 24),
  -- Zoroark - Hidden Power - TM10
  (571, 57100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 25),
  -- Zoroark - Sunny Day - TM11
  (571, 57100, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 26),
  -- Zoroark - Taunt - TM12
  (571, 57100, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 27),
  -- Zoroark - Hyper Beam - TM15
  (571, 57100, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 28),
  -- Zoroark - Protect - TM17
  (571, 57100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 29),
  -- Zoroark - Rain Dance - TM18
  (571, 57100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 30),
  -- Zoroark - Frustration - TM21
  (571, 57100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 31),
  -- Zoroark - Return - TM27
  (571, 57100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 32),
  -- Zoroark - Dig - TM28
  (571, 57100, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 33),
  -- Zoroark - Shadow Ball - TM30
  (571, 57100, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 34),
  -- Zoroark - Double Team - TM32
  (571, 57100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 35),
  -- Zoroark - Flamethrower - TM35
  (571, 57100, 53, 11, NULL, 2, NULL, NULL, 11002035, NULL, 36),
  -- Zoroark - Aerial Ace - TM40
  (571, 57100, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 37),
  -- Zoroark - Torment - TM41
  (571, 57100, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 38),
  -- Zoroark - Facade - TM42
  (571, 57100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 39),
  -- Zoroark - Rest - TM44
  (571, 57100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 40),
  -- Zoroark - Attract - TM45
  (571, 57100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 41),
  -- Zoroark - Thief - TM46
  (571, 57100, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 42),
  -- Zoroark - Low Sweep - TM47
  (571, 57100, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 43),
  -- Zoroark - Round - TM48
  (571, 57100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 44),
  -- Zoroark - Focus Blast - TM52
  (571, 57100, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 45),
  -- Zoroark - Fling - TM56
  (571, 57100, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 46),
  -- Zoroark - Incinerate - TM59
  (571, 57100, 510, 11, NULL, 2, NULL, NULL, 11002059, NULL, 47),
  -- Zoroark - Embargo - TM63
  (571, 57100, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 48),
  -- Zoroark - Shadow Claw - TM65
  (571, 57100, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 49),
  -- Zoroark - Payback - TM66
  (571, 57100, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 50),
  -- Zoroark - Retaliate - TM67
  (571, 57100, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 51),
  -- Zoroark - Giga Impact - TM68
  (571, 57100, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 52),
  -- Zoroark - Swords Dance - TM75
  (571, 57100, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 53),
  -- Zoroark - Psych Up - TM77
  (571, 57100, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 54),
  -- Zoroark - Grass Knot - TM86
  (571, 57100, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 55),
  -- Zoroark - Swagger - TM87
  (571, 57100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 56),
  -- Zoroark - U-turn - TM89
  (571, 57100, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 57),
  -- Zoroark - Substitute - TM90
  (571, 57100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 58),
  -- Zoroark - Rock Smash - TM94
  (571, 57100, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 59),
  -- Zoroark - Snarl - TM95
  (571, 57100, 555, 11, NULL, 2, NULL, NULL, 11002095, 'TM95 Snarl requires the unreleased Lock Capsule in Black / White; source-visible but not normally obtainable.', 60),
  -- Zoroark - Cut - HM01
  (571, 57100, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 61),
  -- Minccino - Pound - Level 1
  (572, 57200, 1, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Minccino - Growl - Level 3
  (572, 57200, 45, 11, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Minccino - Helping Hand - Level 7
  (572, 57200, 270, 11, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Minccino - Tickle - Level 9
  (572, 57200, 321, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Minccino - Double Slap - Level 13
  (572, 57200, 3, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Minccino - Encore - Level 15
  (572, 57200, 227, 11, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Minccino - Swift - Level 19
  (572, 57200, 129, 11, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Minccino - Sing - Level 21
  (572, 57200, 47, 11, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Minccino - Tail Slap - Level 25
  (572, 57200, 541, 11, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Minccino - Charm - Level 27
  (572, 57200, 204, 11, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Minccino - Wake-Up Slap - Level 31
  (572, 57200, 358, 11, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Minccino - Echoed Voice - Level 33
  (572, 57200, 497, 11, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Minccino - Slam - Level 37
  (572, 57200, 21, 11, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Minccino - Captivate - Level 39
  (572, 57200, 445, 11, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Minccino - Hyper Voice - Level 43
  (572, 57200, 304, 11, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Minccino - Last Resort - Level 45
  (572, 57200, 387, 11, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Minccino - After You - Level 49
  (572, 57200, 495, 11, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Minccino - Calm Mind - TM04
  (572, 57200, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 18),
  -- Minccino - Toxic - TM06
  (572, 57200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Minccino - Hidden Power - TM10
  (572, 57200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Minccino - Sunny Day - TM11
  (572, 57200, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Minccino - Protect - TM17
  (572, 57200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Minccino - Rain Dance - TM18
  (572, 57200, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Minccino - Safeguard - TM20
  (572, 57200, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 24),
  -- Minccino - Frustration - TM21
  (572, 57200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Minccino - Thunderbolt - TM24
  (572, 57200, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 26),
  -- Minccino - Return - TM27
  (572, 57200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Minccino - Dig - TM28
  (572, 57200, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 28),
  -- Minccino - Double Team - TM32
  (572, 57200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 29),
  -- Minccino - Facade - TM42
  (572, 57200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 30),
  -- Minccino - Rest - TM44
  (572, 57200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 31),
  -- Minccino - Attract - TM45
  (572, 57200, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 32),
  -- Minccino - Thief - TM46
  (572, 57200, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 33),
  -- Minccino - Round - TM48
  (572, 57200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 34),
  -- Minccino - Echoed Voice - TM49
  (572, 57200, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 35),
  -- Minccino - Fling - TM56
  (572, 57200, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 36),
  -- Minccino - Retaliate - TM67
  (572, 57200, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 37),
  -- Minccino - Thunder Wave - TM73
  (572, 57200, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 38),
  -- Minccino - Work Up - TM83
  (572, 57200, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 39),
  -- Minccino - Grass Knot - TM86
  (572, 57200, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 40),
  -- Minccino - Swagger - TM87
  (572, 57200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 41),
  -- Minccino - U-turn - TM89
  (572, 57200, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 42),
  -- Minccino - Substitute - TM90
  (572, 57200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 43),
  -- Minccino - Aqua Tail - Egg Move
  (572, 57200, 401, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Minccino - Endure - Egg Move
  (572, 57200, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Minccino - Fake Tears - Egg Move
  (572, 57200, 313, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Minccino - Flail - Egg Move
  (572, 57200, 175, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Minccino - Iron Tail - Egg Move
  (572, 57200, 231, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Minccino - Knock Off - Egg Move
  (572, 57200, 282, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Minccino - Mud-Slap - Egg Move
  (572, 57200, 189, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Minccino - Sleep Talk - Egg Move
  (572, 57200, 214, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Minccino - Tail Whip - Egg Move
  (572, 57200, 39, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cinccino - Bullet Seed - Level 1
  (573, 57300, 331, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cinccino - Rock Blast - Level 1
  (573, 57300, 350, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cinccino - Helping Hand - Level 1
  (573, 57300, 270, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cinccino - Tickle - Level 1
  (573, 57300, 321, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cinccino - Sing - Level 1
  (573, 57300, 47, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cinccino - Tail Slap - Level 1
  (573, 57300, 541, 11, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Cinccino - Calm Mind - TM04
  (573, 57300, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 7),
  -- Cinccino - Toxic - TM06
  (573, 57300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 8),
  -- Cinccino - Hidden Power - TM10
  (573, 57300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 9),
  -- Cinccino - Sunny Day - TM11
  (573, 57300, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 10),
  -- Cinccino - Hyper Beam - TM15
  (573, 57300, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 11),
  -- Cinccino - Light Screen - TM16
  (573, 57300, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 12),
  -- Cinccino - Protect - TM17
  (573, 57300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 13),
  -- Cinccino - Rain Dance - TM18
  (573, 57300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 14),
  -- Cinccino - Safeguard - TM20
  (573, 57300, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 15),
  -- Cinccino - Frustration - TM21
  (573, 57300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 16),
  -- Cinccino - Thunderbolt - TM24
  (573, 57300, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 17),
  -- Cinccino - Thunder - TM25
  (573, 57300, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 18),
  -- Cinccino - Return - TM27
  (573, 57300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 19),
  -- Cinccino - Dig - TM28
  (573, 57300, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 20),
  -- Cinccino - Double Team - TM32
  (573, 57300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 21),
  -- Cinccino - Facade - TM42
  (573, 57300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 22),
  -- Cinccino - Rest - TM44
  (573, 57300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 23),
  -- Cinccino - Attract - TM45
  (573, 57300, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 24),
  -- Cinccino - Thief - TM46
  (573, 57300, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 25),
  -- Cinccino - Round - TM48
  (573, 57300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 26),
  -- Cinccino - Echoed Voice - TM49
  (573, 57300, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 27),
  -- Cinccino - Focus Blast - TM52
  (573, 57300, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 28),
  -- Cinccino - Fling - TM56
  (573, 57300, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 29),
  -- Cinccino - Retaliate - TM67
  (573, 57300, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 30),
  -- Cinccino - Giga Impact - TM68
  (573, 57300, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 31),
  -- Cinccino - Thunder Wave - TM73
  (573, 57300, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 32),
  -- Cinccino - Work Up - TM83
  (573, 57300, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 33),
  -- Cinccino - Grass Knot - TM86
  (573, 57300, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 34),
  -- Cinccino - Swagger - TM87
  (573, 57300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 35),
  -- Cinccino - U-turn - TM89
  (573, 57300, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 36),
  -- Cinccino - Substitute - TM90
  (573, 57300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 37),
  -- Gothita - Pound - Level 1
  (574, 57400, 1, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gothita - Confusion - Level 3
  (574, 57400, 93, 11, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Gothita - Tickle - Level 7
  (574, 57400, 321, 11, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Gothita - Fake Tears - Level 10
  (574, 57400, 313, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Gothita - Double Slap - Level 14
  (574, 57400, 3, 11, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Gothita - Psybeam - Level 16
  (574, 57400, 60, 11, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gothita - Embargo - Level 19
  (574, 57400, 373, 11, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Gothita - Feint Attack - Level 24
  (574, 57400, 185, 11, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Gothita - Psyshock - Level 25
  (574, 57400, 473, 11, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Gothita - Flatter - Level 28
  (574, 57400, 260, 11, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Gothita - Future Sight - Level 31
  (574, 57400, 248, 11, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Gothita - Heal Block - Level 33
  (574, 57400, 377, 11, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Gothita - Psychic - Level 37
  (574, 57400, 94, 11, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Gothita - Telekinesis - Level 40
  (574, 57400, 477, 11, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Gothita - Charm - Level 46
  (574, 57400, 204, 11, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Gothita - Magic Room - Level 48
  (574, 57400, 478, 11, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Gothita - Psyshock - TM03
  (574, 57400, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 17),
  -- Gothita - Calm Mind - TM04
  (574, 57400, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 18),
  -- Gothita - Toxic - TM06
  (574, 57400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Gothita - Hidden Power - TM10
  (574, 57400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Gothita - Taunt - TM12
  (574, 57400, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 21),
  -- Gothita - Light Screen - TM16
  (574, 57400, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 22),
  -- Gothita - Protect - TM17
  (574, 57400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Gothita - Rain Dance - TM18
  (574, 57400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Gothita - Telekinesis - TM19
  (574, 57400, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 25),
  -- Gothita - Safeguard - TM20
  (574, 57400, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 26),
  -- Gothita - Frustration - TM21
  (574, 57400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 27),
  -- Gothita - Thunderbolt - TM24
  (574, 57400, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 28),
  -- Gothita - Return - TM27
  (574, 57400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Gothita - Psychic - TM29
  (574, 57400, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 30),
  -- Gothita - Shadow Ball - TM30
  (574, 57400, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 31),
  -- Gothita - Double Team - TM32
  (574, 57400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 32),
  -- Gothita - Reflect - TM33
  (574, 57400, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 33),
  -- Gothita - Rock Tomb - TM39
  (574, 57400, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 34),
  -- Gothita - Torment - TM41
  (574, 57400, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 35),
  -- Gothita - Facade - TM42
  (574, 57400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 36),
  -- Gothita - Rest - TM44
  (574, 57400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 37),
  -- Gothita - Attract - TM45
  (574, 57400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 38),
  -- Gothita - Thief - TM46
  (574, 57400, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 39),
  -- Gothita - Round - TM48
  (574, 57400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 40),
  -- Gothita - Energy Ball - TM53
  (574, 57400, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 41),
  -- Gothita - Fling - TM56
  (574, 57400, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 42),
  -- Gothita - Charge Beam - TM57
  (574, 57400, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 43),
  -- Gothita - Embargo - TM63
  (574, 57400, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 44),
  -- Gothita - Payback - TM66
  (574, 57400, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 45),
  -- Gothita - Flash - TM70
  (574, 57400, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 46),
  -- Gothita - Thunder Wave - TM73
  (574, 57400, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 47),
  -- Gothita - Psych Up - TM77
  (574, 57400, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 48),
  -- Gothita - Rock Slide - TM80
  (574, 57400, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 49),
  -- Gothita - Dream Eater - TM85
  (574, 57400, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 50),
  -- Gothita - Grass Knot - TM86
  (574, 57400, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 51),
  -- Gothita - Swagger - TM87
  (574, 57400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 52),
  -- Gothita - Substitute - TM90
  (574, 57400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 53),
  -- Gothita - Trick Room - TM92
  (574, 57400, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 54),
  -- Gothita - Captivate - Egg Move
  (574, 57400, 445, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Gothita - Dark Pulse - Egg Move
  (574, 57400, 399, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gothita - Mean Look - Egg Move
  (574, 57400, 212, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gothita - Miracle Eye - Egg Move
  (574, 57400, 357, 11, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gothita - Mirror Coat - Egg Move
  (574, 57400, 243, 11, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Gothita - Uproar - Egg Move
  (574, 57400, 253, 11, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gothorita - Pound - Level 1
  (575, 57500, 1, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gothorita - Confusion - Level 1
  (575, 57500, 93, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gothorita - Tickle - Level 1
  (575, 57500, 321, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gothorita - Fake Tears - Level 1
  (575, 57500, 313, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gothorita - Confusion - Level 3
  (575, 57500, 93, 11, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Gothorita - Tickle - Level 7
  (575, 57500, 321, 11, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Gothorita - Fake Tears - Level 10
  (575, 57500, 313, 11, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Gothorita - Double Slap - Level 14
  (575, 57500, 3, 11, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Gothorita - Psybeam - Level 16
  (575, 57500, 60, 11, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gothorita - Embargo - Level 19
  (575, 57500, 373, 11, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Gothorita - Feint Attack - Level 24
  (575, 57500, 185, 11, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Gothorita - Psyshock - Level 25
  (575, 57500, 473, 11, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Gothorita - Flatter - Level 28
  (575, 57500, 260, 11, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Gothorita - Future Sight - Level 31
  (575, 57500, 248, 11, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Gothorita - Heal Block - Level 34
  (575, 57500, 377, 11, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Gothorita - Psychic - Level 39
  (575, 57500, 94, 11, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Gothorita - Telekinesis - Level 43
  (575, 57500, 477, 11, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Gothorita - Charm - Level 50
  (575, 57500, 204, 11, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Gothorita - Magic Room - Level 53
  (575, 57500, 478, 11, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Gothorita - Psyshock - TM03
  (575, 57500, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 20),
  -- Gothorita - Calm Mind - TM04
  (575, 57500, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 21),
  -- Gothorita - Toxic - TM06
  (575, 57500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 22),
  -- Gothorita - Hidden Power - TM10
  (575, 57500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 23),
  -- Gothorita - Taunt - TM12
  (575, 57500, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 24),
  -- Gothorita - Light Screen - TM16
  (575, 57500, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 25),
  -- Gothorita - Protect - TM17
  (575, 57500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 26),
  -- Gothorita - Rain Dance - TM18
  (575, 57500, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 27),
  -- Gothorita - Telekinesis - TM19
  (575, 57500, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 28),
  -- Gothorita - Safeguard - TM20
  (575, 57500, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 29),
  -- Gothorita - Frustration - TM21
  (575, 57500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 30),
  -- Gothorita - Thunderbolt - TM24
  (575, 57500, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 31),
  -- Gothorita - Return - TM27
  (575, 57500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 32),
  -- Gothorita - Psychic - TM29
  (575, 57500, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 33),
  -- Gothorita - Shadow Ball - TM30
  (575, 57500, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 34),
  -- Gothorita - Double Team - TM32
  (575, 57500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 35),
  -- Gothorita - Reflect - TM33
  (575, 57500, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 36),
  -- Gothorita - Rock Tomb - TM39
  (575, 57500, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 37),
  -- Gothorita - Torment - TM41
  (575, 57500, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 38),
  -- Gothorita - Facade - TM42
  (575, 57500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 39),
  -- Gothorita - Rest - TM44
  (575, 57500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 40),
  -- Gothorita - Attract - TM45
  (575, 57500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 41),
  -- Gothorita - Thief - TM46
  (575, 57500, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 42),
  -- Gothorita - Round - TM48
  (575, 57500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 43),
  -- Gothorita - Energy Ball - TM53
  (575, 57500, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 44),
  -- Gothorita - Fling - TM56
  (575, 57500, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 45),
  -- Gothorita - Charge Beam - TM57
  (575, 57500, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 46),
  -- Gothorita - Embargo - TM63
  (575, 57500, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 47),
  -- Gothorita - Payback - TM66
  (575, 57500, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 48),
  -- Gothorita - Flash - TM70
  (575, 57500, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 49),
  -- Gothorita - Thunder Wave - TM73
  (575, 57500, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 50),
  -- Gothorita - Psych Up - TM77
  (575, 57500, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 51),
  -- Gothorita - Rock Slide - TM80
  (575, 57500, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 52),
  -- Gothorita - Dream Eater - TM85
  (575, 57500, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 53),
  -- Gothorita - Grass Knot - TM86
  (575, 57500, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 54),
  -- Gothorita - Swagger - TM87
  (575, 57500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 55),
  -- Gothorita - Substitute - TM90
  (575, 57500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 56),
  -- Gothorita - Trick Room - TM92
  (575, 57500, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 57),
  -- Gothitelle - Pound - Level 1
  (576, 57600, 1, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gothitelle - Confusion - Level 1
  (576, 57600, 93, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gothitelle - Tickle - Level 1
  (576, 57600, 321, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gothitelle - Fake Tears - Level 1
  (576, 57600, 313, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gothitelle - Confusion - Level 3
  (576, 57600, 93, 11, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Gothitelle - Tickle - Level 7
  (576, 57600, 321, 11, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Gothitelle - Fake Tears - Level 10
  (576, 57600, 313, 11, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Gothitelle - Double Slap - Level 14
  (576, 57600, 3, 11, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Gothitelle - Psybeam - Level 16
  (576, 57600, 60, 11, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Gothitelle - Embargo - Level 19
  (576, 57600, 373, 11, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Gothitelle - Feint Attack - Level 24
  (576, 57600, 185, 11, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Gothitelle - Psyshock - Level 25
  (576, 57600, 473, 11, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Gothitelle - Flatter - Level 28
  (576, 57600, 260, 11, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Gothitelle - Future Sight - Level 31
  (576, 57600, 248, 11, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Gothitelle - Heal Block - Level 34
  (576, 57600, 377, 11, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Gothitelle - Psychic - Level 39
  (576, 57600, 94, 11, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Gothitelle - Telekinesis - Level 45
  (576, 57600, 477, 11, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Gothitelle - Charm - Level 54
  (576, 57600, 204, 11, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Gothitelle - Magic Room - Level 59
  (576, 57600, 478, 11, NULL, 1, 59, NULL, NULL, NULL, 19),
  -- Gothitelle - Psyshock - TM03
  (576, 57600, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 20),
  -- Gothitelle - Calm Mind - TM04
  (576, 57600, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 21),
  -- Gothitelle - Toxic - TM06
  (576, 57600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 22),
  -- Gothitelle - Hidden Power - TM10
  (576, 57600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 23),
  -- Gothitelle - Taunt - TM12
  (576, 57600, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 24),
  -- Gothitelle - Hyper Beam - TM15
  (576, 57600, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 25),
  -- Gothitelle - Light Screen - TM16
  (576, 57600, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 26),
  -- Gothitelle - Protect - TM17
  (576, 57600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 27),
  -- Gothitelle - Rain Dance - TM18
  (576, 57600, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 28),
  -- Gothitelle - Telekinesis - TM19
  (576, 57600, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 29),
  -- Gothitelle - Safeguard - TM20
  (576, 57600, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 30),
  -- Gothitelle - Frustration - TM21
  (576, 57600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 31),
  -- Gothitelle - Thunderbolt - TM24
  (576, 57600, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 32),
  -- Gothitelle - Return - TM27
  (576, 57600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 33),
  -- Gothitelle - Psychic - TM29
  (576, 57600, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 34),
  -- Gothitelle - Shadow Ball - TM30
  (576, 57600, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 35),
  -- Gothitelle - Brick Break - TM31
  (576, 57600, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 36),
  -- Gothitelle - Double Team - TM32
  (576, 57600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 37),
  -- Gothitelle - Reflect - TM33
  (576, 57600, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 38),
  -- Gothitelle - Rock Tomb - TM39
  (576, 57600, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 39),
  -- Gothitelle - Torment - TM41
  (576, 57600, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 40),
  -- Gothitelle - Facade - TM42
  (576, 57600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 41),
  -- Gothitelle - Rest - TM44
  (576, 57600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 42),
  -- Gothitelle - Attract - TM45
  (576, 57600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 43),
  -- Gothitelle - Thief - TM46
  (576, 57600, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 44),
  -- Gothitelle - Low Sweep - TM47
  (576, 57600, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 45),
  -- Gothitelle - Round - TM48
  (576, 57600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 46),
  -- Gothitelle - Energy Ball - TM53
  (576, 57600, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 47),
  -- Gothitelle - Fling - TM56
  (576, 57600, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 48),
  -- Gothitelle - Charge Beam - TM57
  (576, 57600, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 49),
  -- Gothitelle - Embargo - TM63
  (576, 57600, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 50),
  -- Gothitelle - Payback - TM66
  (576, 57600, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 51),
  -- Gothitelle - Giga Impact - TM68
  (576, 57600, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 52),
  -- Gothitelle - Flash - TM70
  (576, 57600, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 53),
  -- Gothitelle - Thunder Wave - TM73
  (576, 57600, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 54),
  -- Gothitelle - Psych Up - TM77
  (576, 57600, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 55),
  -- Gothitelle - Rock Slide - TM80
  (576, 57600, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 56),
  -- Gothitelle - Dream Eater - TM85
  (576, 57600, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 57),
  -- Gothitelle - Grass Knot - TM86
  (576, 57600, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 58),
  -- Gothitelle - Swagger - TM87
  (576, 57600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 59),
  -- Gothitelle - Substitute - TM90
  (576, 57600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 60),
  -- Gothitelle - Trick Room - TM92
  (576, 57600, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 61),
  -- Solosis - Psywave - Level 1
  (577, 57700, 149, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Solosis - Reflect - Level 3
  (577, 57700, 115, 11, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Solosis - Rollout - Level 7
  (577, 57700, 205, 11, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Solosis - Snatch - Level 10
  (577, 57700, 289, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Solosis - Hidden Power - Level 14
  (577, 57700, 237, 11, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Solosis - Light Screen - Level 16
  (577, 57700, 113, 11, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Solosis - Charm - Level 19
  (577, 57700, 204, 11, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Solosis - Recover - Level 24
  (577, 57700, 105, 11, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Solosis - Psyshock - Level 25
  (577, 57700, 473, 11, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Solosis - Endeavor - Level 28
  (577, 57700, 283, 11, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Solosis - Future Sight - Level 31
  (577, 57700, 248, 11, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Solosis - Pain Split - Level 33
  (577, 57700, 220, 11, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Solosis - Psychic - Level 37
  (577, 57700, 94, 11, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Solosis - Skill Swap - Level 40
  (577, 57700, 285, 11, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Solosis - Heal Block - Level 46
  (577, 57700, 377, 11, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Solosis - Wonder Room - Level 48
  (577, 57700, 472, 11, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Solosis - Psyshock - TM03
  (577, 57700, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 17),
  -- Solosis - Calm Mind - TM04
  (577, 57700, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 18),
  -- Solosis - Toxic - TM06
  (577, 57700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Solosis - Hidden Power - TM10
  (577, 57700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Solosis - Light Screen - TM16
  (577, 57700, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 21),
  -- Solosis - Protect - TM17
  (577, 57700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Solosis - Rain Dance - TM18
  (577, 57700, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Solosis - Telekinesis - TM19
  (577, 57700, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 24),
  -- Solosis - Safeguard - TM20
  (577, 57700, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 25),
  -- Solosis - Frustration - TM21
  (577, 57700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Solosis - Thunder - TM25
  (577, 57700, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 27),
  -- Solosis - Return - TM27
  (577, 57700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Solosis - Psychic - TM29
  (577, 57700, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 29),
  -- Solosis - Shadow Ball - TM30
  (577, 57700, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 30),
  -- Solosis - Double Team - TM32
  (577, 57700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Solosis - Reflect - TM33
  (577, 57700, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 32),
  -- Solosis - Rock Tomb - TM39
  (577, 57700, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 33),
  -- Solosis - Facade - TM42
  (577, 57700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 34),
  -- Solosis - Rest - TM44
  (577, 57700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 35),
  -- Solosis - Attract - TM45
  (577, 57700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 36),
  -- Solosis - Round - TM48
  (577, 57700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Solosis - Energy Ball - TM53
  (577, 57700, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 38),
  -- Solosis - Embargo - TM63
  (577, 57700, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 39),
  -- Solosis - Explosion - TM64
  (577, 57700, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 40),
  -- Solosis - Flash - TM70
  (577, 57700, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 41),
  -- Solosis - Thunder Wave - TM73
  (577, 57700, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 42),
  -- Solosis - Gyro Ball - TM74
  (577, 57700, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 43),
  -- Solosis - Psych Up - TM77
  (577, 57700, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 44),
  -- Solosis - Rock Slide - TM80
  (577, 57700, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 45),
  -- Solosis - Dream Eater - TM85
  (577, 57700, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 46),
  -- Solosis - Swagger - TM87
  (577, 57700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 47),
  -- Solosis - Substitute - TM90
  (577, 57700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 48),
  -- Solosis - Flash Cannon - TM91
  (577, 57700, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 49),
  -- Solosis - Trick Room - TM92
  (577, 57700, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 50),
  -- Solosis - Acid Armor - Egg Move
  (577, 57700, 151, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Solosis - Astonish - Egg Move
  (577, 57700, 310, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Solosis - Confuse Ray - Egg Move
  (577, 57700, 109, 11, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Solosis - Imprison - Egg Move
  (577, 57700, 286, 11, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Solosis - Night Shade - Egg Move
  (577, 57700, 101, 11, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Solosis - Secret Power - Egg Move
  (577, 57700, 290, 11, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Solosis - Trick - Egg Move
  (577, 57700, 271, 11, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Duosion - Psywave - Level 1
  (578, 57800, 149, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Duosion - Reflect - Level 1
  (578, 57800, 115, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Duosion - Rollout - Level 1
  (578, 57800, 205, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Duosion - Snatch - Level 1
  (578, 57800, 289, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Duosion - Reflect - Level 3
  (578, 57800, 115, 11, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Duosion - Rollout - Level 7
  (578, 57800, 205, 11, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Duosion - Snatch - Level 10
  (578, 57800, 289, 11, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Duosion - Hidden Power - Level 14
  (578, 57800, 237, 11, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Duosion - Light Screen - Level 16
  (578, 57800, 113, 11, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Duosion - Charm - Level 19
  (578, 57800, 204, 11, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Duosion - Recover - Level 24
  (578, 57800, 105, 11, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Duosion - Psyshock - Level 25
  (578, 57800, 473, 11, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Duosion - Endeavor - Level 28
  (578, 57800, 283, 11, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Duosion - Future Sight - Level 31
  (578, 57800, 248, 11, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Duosion - Pain Split - Level 34
  (578, 57800, 220, 11, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Duosion - Psychic - Level 39
  (578, 57800, 94, 11, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Duosion - Skill Swap - Level 43
  (578, 57800, 285, 11, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Duosion - Heal Block - Level 50
  (578, 57800, 377, 11, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Duosion - Wonder Room - Level 53
  (578, 57800, 472, 11, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Duosion - Psyshock - TM03
  (578, 57800, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 20),
  -- Duosion - Calm Mind - TM04
  (578, 57800, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 21),
  -- Duosion - Toxic - TM06
  (578, 57800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 22),
  -- Duosion - Hidden Power - TM10
  (578, 57800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 23),
  -- Duosion - Light Screen - TM16
  (578, 57800, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 24),
  -- Duosion - Protect - TM17
  (578, 57800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Duosion - Rain Dance - TM18
  (578, 57800, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 26),
  -- Duosion - Telekinesis - TM19
  (578, 57800, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 27),
  -- Duosion - Safeguard - TM20
  (578, 57800, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 28),
  -- Duosion - Frustration - TM21
  (578, 57800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 29),
  -- Duosion - Thunder - TM25
  (578, 57800, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 30),
  -- Duosion - Return - TM27
  (578, 57800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 31),
  -- Duosion - Psychic - TM29
  (578, 57800, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 32),
  -- Duosion - Shadow Ball - TM30
  (578, 57800, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 33),
  -- Duosion - Double Team - TM32
  (578, 57800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 34),
  -- Duosion - Reflect - TM33
  (578, 57800, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 35),
  -- Duosion - Rock Tomb - TM39
  (578, 57800, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 36),
  -- Duosion - Facade - TM42
  (578, 57800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 37),
  -- Duosion - Rest - TM44
  (578, 57800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 38),
  -- Duosion - Attract - TM45
  (578, 57800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 39),
  -- Duosion - Round - TM48
  (578, 57800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 40),
  -- Duosion - Energy Ball - TM53
  (578, 57800, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 41),
  -- Duosion - Embargo - TM63
  (578, 57800, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 42),
  -- Duosion - Explosion - TM64
  (578, 57800, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 43),
  -- Duosion - Flash - TM70
  (578, 57800, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 44),
  -- Duosion - Thunder Wave - TM73
  (578, 57800, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 45),
  -- Duosion - Gyro Ball - TM74
  (578, 57800, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 46),
  -- Duosion - Psych Up - TM77
  (578, 57800, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 47),
  -- Duosion - Rock Slide - TM80
  (578, 57800, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 48),
  -- Duosion - Dream Eater - TM85
  (578, 57800, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 49),
  -- Duosion - Swagger - TM87
  (578, 57800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 50),
  -- Duosion - Substitute - TM90
  (578, 57800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 51),
  -- Duosion - Flash Cannon - TM91
  (578, 57800, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 52),
  -- Duosion - Trick Room - TM92
  (578, 57800, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 53),
  -- Reuniclus - Psywave - Level 1
  (579, 57900, 149, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Reuniclus - Reflect - Level 1
  (579, 57900, 115, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Reuniclus - Rollout - Level 1
  (579, 57900, 205, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Reuniclus - Snatch - Level 1
  (579, 57900, 289, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Reuniclus - Reflect - Level 3
  (579, 57900, 115, 11, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Reuniclus - Rollout - Level 7
  (579, 57900, 205, 11, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Reuniclus - Snatch - Level 10
  (579, 57900, 289, 11, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Reuniclus - Hidden Power - Level 14
  (579, 57900, 237, 11, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Reuniclus - Light Screen - Level 16
  (579, 57900, 113, 11, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Reuniclus - Charm - Level 19
  (579, 57900, 204, 11, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Reuniclus - Recover - Level 24
  (579, 57900, 105, 11, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Reuniclus - Psyshock - Level 25
  (579, 57900, 473, 11, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Reuniclus - Endeavor - Level 28
  (579, 57900, 283, 11, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Reuniclus - Future Sight - Level 31
  (579, 57900, 248, 11, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Reuniclus - Pain Split - Level 34
  (579, 57900, 220, 11, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Reuniclus - Psychic - Level 39
  (579, 57900, 94, 11, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Reuniclus - Dizzy Punch - Level 41
  (579, 57900, 146, 11, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Reuniclus - Skill Swap - Level 45
  (579, 57900, 285, 11, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Reuniclus - Heal Block - Level 54
  (579, 57900, 377, 11, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Reuniclus - Wonder Room - Level 59
  (579, 57900, 472, 11, NULL, 1, 59, NULL, NULL, NULL, 20),
  -- Reuniclus - Psyshock - TM03
  (579, 57900, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 21),
  -- Reuniclus - Calm Mind - TM04
  (579, 57900, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 22),
  -- Reuniclus - Toxic - TM06
  (579, 57900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 23),
  -- Reuniclus - Hidden Power - TM10
  (579, 57900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 24),
  -- Reuniclus - Hyper Beam - TM15
  (579, 57900, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 25),
  -- Reuniclus - Light Screen - TM16
  (579, 57900, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 26),
  -- Reuniclus - Protect - TM17
  (579, 57900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 27),
  -- Reuniclus - Rain Dance - TM18
  (579, 57900, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 28),
  -- Reuniclus - Telekinesis - TM19
  (579, 57900, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 29),
  -- Reuniclus - Safeguard - TM20
  (579, 57900, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 30),
  -- Reuniclus - Frustration - TM21
  (579, 57900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 31),
  -- Reuniclus - Thunder - TM25
  (579, 57900, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 32),
  -- Reuniclus - Return - TM27
  (579, 57900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 33),
  -- Reuniclus - Psychic - TM29
  (579, 57900, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 34),
  -- Reuniclus - Shadow Ball - TM30
  (579, 57900, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 35),
  -- Reuniclus - Double Team - TM32
  (579, 57900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 36),
  -- Reuniclus - Reflect - TM33
  (579, 57900, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 37),
  -- Reuniclus - Rock Tomb - TM39
  (579, 57900, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 38),
  -- Reuniclus - Facade - TM42
  (579, 57900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 39),
  -- Reuniclus - Rest - TM44
  (579, 57900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 40),
  -- Reuniclus - Attract - TM45
  (579, 57900, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 41),
  -- Reuniclus - Round - TM48
  (579, 57900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 42),
  -- Reuniclus - Focus Blast - TM52
  (579, 57900, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 43),
  -- Reuniclus - Energy Ball - TM53
  (579, 57900, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 44),
  -- Reuniclus - Fling - TM56
  (579, 57900, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 45),
  -- Reuniclus - Embargo - TM63
  (579, 57900, 373, 11, NULL, 2, NULL, NULL, 11002063, NULL, 46),
  -- Reuniclus - Explosion - TM64
  (579, 57900, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 47),
  -- Reuniclus - Giga Impact - TM68
  (579, 57900, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 48),
  -- Reuniclus - Flash - TM70
  (579, 57900, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 49),
  -- Reuniclus - Thunder Wave - TM73
  (579, 57900, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 50),
  -- Reuniclus - Gyro Ball - TM74
  (579, 57900, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 51),
  -- Reuniclus - Psych Up - TM77
  (579, 57900, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 52),
  -- Reuniclus - Rock Slide - TM80
  (579, 57900, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 53),
  -- Reuniclus - Dream Eater - TM85
  (579, 57900, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 54),
  -- Reuniclus - Grass Knot - TM86
  (579, 57900, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 55),
  -- Reuniclus - Swagger - TM87
  (579, 57900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 56),
  -- Reuniclus - Substitute - TM90
  (579, 57900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 57),
  -- Reuniclus - Flash Cannon - TM91
  (579, 57900, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 58),
  -- Reuniclus - Trick Room - TM92
  (579, 57900, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 59),
  -- Reuniclus - Rock Smash - TM94
  (579, 57900, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 60),
  -- Reuniclus - Strength - HM04
  (579, 57900, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 61),
  -- Ducklett - Water Gun - Level 1
  (580, 58000, 55, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ducklett - Water Sport - Level 3
  (580, 58000, 346, 11, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Ducklett - Defog - Level 6
  (580, 58000, 432, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Ducklett - Wing Attack - Level 9
  (580, 58000, 17, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Ducklett - Water Pulse - Level 13
  (580, 58000, 352, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Ducklett - Aerial Ace - Level 15
  (580, 58000, 332, 11, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Ducklett - Bubble Beam - Level 19
  (580, 58000, 61, 11, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Ducklett - Feather Dance - Level 21
  (580, 58000, 297, 11, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Ducklett - Aqua Ring - Level 24
  (580, 58000, 392, 11, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Ducklett - Air Slash - Level 27
  (580, 58000, 403, 11, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Ducklett - Roost - Level 30
  (580, 58000, 355, 11, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Ducklett - Rain Dance - Level 34
  (580, 58000, 240, 11, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Ducklett - Tailwind - Level 37
  (580, 58000, 366, 11, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Ducklett - Brave Bird - Level 41
  (580, 58000, 413, 11, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Ducklett - Hurricane - Level 46
  (580, 58000, 542, 11, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Ducklett - Toxic - TM06
  (580, 58000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Ducklett - Hail - TM07
  (580, 58000, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 17),
  -- Ducklett - Hidden Power - TM10
  (580, 58000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Ducklett - Ice Beam - TM13
  (580, 58000, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 19),
  -- Ducklett - Protect - TM17
  (580, 58000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 20),
  -- Ducklett - Rain Dance - TM18
  (580, 58000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 21),
  -- Ducklett - Frustration - TM21
  (580, 58000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Ducklett - Return - TM27
  (580, 58000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 23),
  -- Ducklett - Double Team - TM32
  (580, 58000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 24),
  -- Ducklett - Aerial Ace - TM40
  (580, 58000, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 25),
  -- Ducklett - Facade - TM42
  (580, 58000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 26),
  -- Ducklett - Rest - TM44
  (580, 58000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 27),
  -- Ducklett - Attract - TM45
  (580, 58000, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 28),
  -- Ducklett - Round - TM48
  (580, 58000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 29),
  -- Ducklett - Scald - TM55
  (580, 58000, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 30),
  -- Ducklett - Swagger - TM87
  (580, 58000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 31),
  -- Ducklett - Pluck - TM88
  (580, 58000, 365, 11, NULL, 2, NULL, NULL, 11002088, NULL, 32),
  -- Ducklett - Substitute - TM90
  (580, 58000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 33),
  -- Ducklett - Fly - HM02
  (580, 58000, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 34),
  -- Ducklett - Surf - HM03
  (580, 58000, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 35),
  -- Ducklett - Dive - HM06
  (580, 58000, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 36),
  -- Ducklett - Air Cutter - Egg Move
  (580, 58000, 314, 11, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Ducklett - Brine - Egg Move
  (580, 58000, 362, 11, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Ducklett - Gust - Egg Move
  (580, 58000, 16, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Ducklett - Lucky Chant - Egg Move
  (580, 58000, 381, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Ducklett - Me First - Egg Move
  (580, 58000, 382, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Ducklett - Mirror Move - Egg Move
  (580, 58000, 119, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Ducklett - Steel Wing - Egg Move
  (580, 58000, 211, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Swanna - Water Gun - Level 1
  (581, 58100, 55, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swanna - Water Sport - Level 1
  (581, 58100, 346, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swanna - Defog - Level 1
  (581, 58100, 432, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swanna - Wing Attack - Level 1
  (581, 58100, 17, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swanna - Water Sport - Level 3
  (581, 58100, 346, 11, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Swanna - Defog - Level 6
  (581, 58100, 432, 11, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Swanna - Wing Attack - Level 9
  (581, 58100, 17, 11, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Swanna - Water Pulse - Level 13
  (581, 58100, 352, 11, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Swanna - Aerial Ace - Level 15
  (581, 58100, 332, 11, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Swanna - Bubble Beam - Level 19
  (581, 58100, 61, 11, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Swanna - Feather Dance - Level 21
  (581, 58100, 297, 11, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Swanna - Aqua Ring - Level 24
  (581, 58100, 392, 11, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Swanna - Air Slash - Level 27
  (581, 58100, 403, 11, NULL, 1, 27, NULL, NULL, NULL, 13),
  -- Swanna - Roost - Level 30
  (581, 58100, 355, 11, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Swanna - Rain Dance - Level 34
  (581, 58100, 240, 11, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Swanna - Tailwind - Level 40
  (581, 58100, 366, 11, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Swanna - Brave Bird - Level 47
  (581, 58100, 413, 11, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Swanna - Hurricane - Level 55
  (581, 58100, 542, 11, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Swanna - Toxic - TM06
  (581, 58100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Swanna - Hail - TM07
  (581, 58100, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 20),
  -- Swanna - Hidden Power - TM10
  (581, 58100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Swanna - Ice Beam - TM13
  (581, 58100, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 22),
  -- Swanna - Hyper Beam - TM15
  (581, 58100, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 23),
  -- Swanna - Protect - TM17
  (581, 58100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Swanna - Rain Dance - TM18
  (581, 58100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Swanna - Frustration - TM21
  (581, 58100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Swanna - Return - TM27
  (581, 58100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Swanna - Double Team - TM32
  (581, 58100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Swanna - Aerial Ace - TM40
  (581, 58100, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 29),
  -- Swanna - Facade - TM42
  (581, 58100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 30),
  -- Swanna - Rest - TM44
  (581, 58100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 31),
  -- Swanna - Attract - TM45
  (581, 58100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 32),
  -- Swanna - Round - TM48
  (581, 58100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 33),
  -- Swanna - Scald - TM55
  (581, 58100, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 34),
  -- Swanna - Giga Impact - TM68
  (581, 58100, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 35),
  -- Swanna - Swagger - TM87
  (581, 58100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 36),
  -- Swanna - Pluck - TM88
  (581, 58100, 365, 11, NULL, 2, NULL, NULL, 11002088, NULL, 37),
  -- Swanna - Substitute - TM90
  (581, 58100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 38),
  -- Swanna - Fly - HM02
  (581, 58100, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 39),
  -- Swanna - Surf - HM03
  (581, 58100, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 40),
  -- Swanna - Dive - HM06
  (581, 58100, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 41),
  -- Vanillite - Icicle Spear - Level 1
  (582, 58200, 333, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vanillite - Harden - Level 4
  (582, 58200, 106, 11, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Vanillite - Astonish - Level 7
  (582, 58200, 310, 11, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Vanillite - Uproar - Level 10
  (582, 58200, 253, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Vanillite - Icy Wind - Level 13
  (582, 58200, 196, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Vanillite - Mist - Level 16
  (582, 58200, 54, 11, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Vanillite - Avalanche - Level 19
  (582, 58200, 419, 11, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Vanillite - Taunt - Level 22
  (582, 58200, 269, 11, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Vanillite - Mirror Shot - Level 26
  (582, 58200, 429, 11, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Vanillite - Acid Armor - Level 31
  (582, 58200, 151, 11, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Vanillite - Ice Beam - Level 35
  (582, 58200, 58, 11, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Vanillite - Hail - Level 40
  (582, 58200, 258, 11, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Vanillite - Mirror Coat - Level 44
  (582, 58200, 243, 11, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Vanillite - Blizzard - Level 49
  (582, 58200, 59, 11, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Vanillite - Sheer Cold - Level 53
  (582, 58200, 329, 11, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Vanillite - Toxic - TM06
  (582, 58200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Vanillite - Hail - TM07
  (582, 58200, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 17),
  -- Vanillite - Hidden Power - TM10
  (582, 58200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Vanillite - Taunt - TM12
  (582, 58200, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 19),
  -- Vanillite - Ice Beam - TM13
  (582, 58200, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 20),
  -- Vanillite - Blizzard - TM14
  (582, 58200, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 21),
  -- Vanillite - Light Screen - TM16
  (582, 58200, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 22),
  -- Vanillite - Protect - TM17
  (582, 58200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 23),
  -- Vanillite - Rain Dance - TM18
  (582, 58200, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 24),
  -- Vanillite - Frustration - TM21
  (582, 58200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 25),
  -- Vanillite - Return - TM27
  (582, 58200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 26),
  -- Vanillite - Double Team - TM32
  (582, 58200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Vanillite - Facade - TM42
  (582, 58200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 28),
  -- Vanillite - Rest - TM44
  (582, 58200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 29),
  -- Vanillite - Attract - TM45
  (582, 58200, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 30),
  -- Vanillite - Round - TM48
  (582, 58200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 31),
  -- Vanillite - Explosion - TM64
  (582, 58200, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 32),
  -- Vanillite - Frost Breath - TM79
  (582, 58200, 524, 11, NULL, 2, NULL, NULL, 11002079, NULL, 33),
  -- Vanillite - Swagger - TM87
  (582, 58200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 34),
  -- Vanillite - Substitute - TM90
  (582, 58200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 35),
  -- Vanillite - Flash Cannon - TM91
  (582, 58200, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 36),
  -- Vanillite - Autotomize - Egg Move
  (582, 58200, 475, 11, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Vanillite - Ice Shard - Egg Move
  (582, 58200, 420, 11, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Vanillite - Imprison - Egg Move
  (582, 58200, 286, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Vanillite - Iron Defense - Egg Move
  (582, 58200, 334, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Vanillite - Magnet Rise - Egg Move
  (582, 58200, 393, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Vanillite - Natural Gift - Egg Move
  (582, 58200, 363, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Vanillite - Powder Snow - Egg Move
  (582, 58200, 181, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Vanillite - Water Pulse - Egg Move
  (582, 58200, 352, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Vanillish - Icicle Spear - Level 1
  (583, 58300, 333, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vanillish - Harden - Level 1
  (583, 58300, 106, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vanillish - Astonish - Level 1
  (583, 58300, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vanillish - Uproar - Level 1
  (583, 58300, 253, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vanillish - Harden - Level 4
  (583, 58300, 106, 11, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Vanillish - Astonish - Level 7
  (583, 58300, 310, 11, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Vanillish - Uproar - Level 10
  (583, 58300, 253, 11, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Vanillish - Icy Wind - Level 13
  (583, 58300, 196, 11, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Vanillish - Mist - Level 16
  (583, 58300, 54, 11, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Vanillish - Avalanche - Level 19
  (583, 58300, 419, 11, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Vanillish - Taunt - Level 22
  (583, 58300, 269, 11, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Vanillish - Mirror Shot - Level 26
  (583, 58300, 429, 11, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Vanillish - Acid Armor - Level 31
  (583, 58300, 151, 11, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Vanillish - Ice Beam - Level 36
  (583, 58300, 58, 11, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Vanillish - Hail - Level 42
  (583, 58300, 258, 11, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Vanillish - Mirror Coat - Level 47
  (583, 58300, 243, 11, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Vanillish - Blizzard - Level 53
  (583, 58300, 59, 11, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Vanillish - Sheer Cold - Level 58
  (583, 58300, 329, 11, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Vanillish - Toxic - TM06
  (583, 58300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Vanillish - Hail - TM07
  (583, 58300, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 20),
  -- Vanillish - Hidden Power - TM10
  (583, 58300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Vanillish - Taunt - TM12
  (583, 58300, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 22),
  -- Vanillish - Ice Beam - TM13
  (583, 58300, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 23),
  -- Vanillish - Blizzard - TM14
  (583, 58300, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 24),
  -- Vanillish - Light Screen - TM16
  (583, 58300, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 25),
  -- Vanillish - Protect - TM17
  (583, 58300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 26),
  -- Vanillish - Rain Dance - TM18
  (583, 58300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 27),
  -- Vanillish - Frustration - TM21
  (583, 58300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Vanillish - Return - TM27
  (583, 58300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Vanillish - Double Team - TM32
  (583, 58300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 30),
  -- Vanillish - Facade - TM42
  (583, 58300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 31),
  -- Vanillish - Rest - TM44
  (583, 58300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 32),
  -- Vanillish - Attract - TM45
  (583, 58300, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 33),
  -- Vanillish - Round - TM48
  (583, 58300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 34),
  -- Vanillish - Explosion - TM64
  (583, 58300, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 35),
  -- Vanillish - Frost Breath - TM79
  (583, 58300, 524, 11, NULL, 2, NULL, NULL, 11002079, NULL, 36),
  -- Vanillish - Swagger - TM87
  (583, 58300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 37),
  -- Vanillish - Substitute - TM90
  (583, 58300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 38),
  -- Vanillish - Flash Cannon - TM91
  (583, 58300, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 39),
  -- Vanilluxe - Weather Ball - Level 1
  (584, 58400, 311, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vanilluxe - Icicle Spear - Level 1
  (584, 58400, 333, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vanilluxe - Harden - Level 1
  (584, 58400, 106, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vanilluxe - Astonish - Level 1
  (584, 58400, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vanilluxe - Uproar - Level 1
  (584, 58400, 253, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Vanilluxe - Harden - Level 4
  (584, 58400, 106, 11, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Vanilluxe - Astonish - Level 7
  (584, 58400, 310, 11, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Vanilluxe - Uproar - Level 10
  (584, 58400, 253, 11, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Vanilluxe - Icy Wind - Level 13
  (584, 58400, 196, 11, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Vanilluxe - Mist - Level 16
  (584, 58400, 54, 11, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Vanilluxe - Avalanche - Level 19
  (584, 58400, 419, 11, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Vanilluxe - Taunt - Level 22
  (584, 58400, 269, 11, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Vanilluxe - Mirror Shot - Level 26
  (584, 58400, 429, 11, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Vanilluxe - Acid Armor - Level 31
  (584, 58400, 151, 11, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Vanilluxe - Ice Beam - Level 36
  (584, 58400, 58, 11, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Vanilluxe - Hail - Level 42
  (584, 58400, 258, 11, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Vanilluxe - Mirror Coat - Level 50
  (584, 58400, 243, 11, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Vanilluxe - Blizzard - Level 59
  (584, 58400, 59, 11, NULL, 1, 59, NULL, NULL, NULL, 18),
  -- Vanilluxe - Sheer Cold - Level 67
  (584, 58400, 329, 11, NULL, 1, 67, NULL, NULL, NULL, 19),
  -- Vanilluxe - Toxic - TM06
  (584, 58400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Vanilluxe - Hail - TM07
  (584, 58400, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 21),
  -- Vanilluxe - Hidden Power - TM10
  (584, 58400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 22),
  -- Vanilluxe - Taunt - TM12
  (584, 58400, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 23),
  -- Vanilluxe - Ice Beam - TM13
  (584, 58400, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 24),
  -- Vanilluxe - Blizzard - TM14
  (584, 58400, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 25),
  -- Vanilluxe - Hyper Beam - TM15
  (584, 58400, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 26),
  -- Vanilluxe - Light Screen - TM16
  (584, 58400, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 27),
  -- Vanilluxe - Protect - TM17
  (584, 58400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 28),
  -- Vanilluxe - Rain Dance - TM18
  (584, 58400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 29),
  -- Vanilluxe - Frustration - TM21
  (584, 58400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 30),
  -- Vanilluxe - Return - TM27
  (584, 58400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 31),
  -- Vanilluxe - Double Team - TM32
  (584, 58400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 32),
  -- Vanilluxe - Facade - TM42
  (584, 58400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Vanilluxe - Rest - TM44
  (584, 58400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Vanilluxe - Attract - TM45
  (584, 58400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Vanilluxe - Round - TM48
  (584, 58400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Vanilluxe - Explosion - TM64
  (584, 58400, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 37),
  -- Vanilluxe - Giga Impact - TM68
  (584, 58400, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 38),
  -- Vanilluxe - Frost Breath - TM79
  (584, 58400, 524, 11, NULL, 2, NULL, NULL, 11002079, NULL, 39),
  -- Vanilluxe - Swagger - TM87
  (584, 58400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 40),
  -- Vanilluxe - Substitute - TM90
  (584, 58400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 41),
  -- Vanilluxe - Flash Cannon - TM91
  (584, 58400, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 42),
  -- Deerling - Tackle - Level 1
  (585, 58500, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deerling - Camouflage - Level 1
  (585, 58500, 293, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deerling - Growl - Level 4
  (585, 58500, 45, 11, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Deerling - Sand Attack - Level 7
  (585, 58500, 28, 11, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Deerling - Double Kick - Level 10
  (585, 58500, 24, 11, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Deerling - Leech Seed - Level 13
  (585, 58500, 73, 11, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Deerling - Feint Attack - Level 16
  (585, 58500, 185, 11, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Deerling - Take Down - Level 20
  (585, 58500, 36, 11, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Deerling - Jump Kick - Level 24
  (585, 58500, 26, 11, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Deerling - Aromatherapy - Level 28
  (585, 58500, 312, 11, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Deerling - Energy Ball - Level 32
  (585, 58500, 412, 11, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Deerling - Charm - Level 36
  (585, 58500, 204, 11, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Deerling - Nature Power - Level 41
  (585, 58500, 267, 11, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Deerling - Double-Edge - Level 46
  (585, 58500, 38, 11, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Deerling - Solar Beam - Level 51
  (585, 58500, 76, 11, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Deerling - Toxic - TM06
  (585, 58500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Deerling - Hidden Power - TM10
  (585, 58500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Deerling - Sunny Day - TM11
  (585, 58500, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 18),
  -- Deerling - Light Screen - TM16
  (585, 58500, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 19),
  -- Deerling - Protect - TM17
  (585, 58500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 20),
  -- Deerling - Rain Dance - TM18
  (585, 58500, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 21),
  -- Deerling - Safeguard - TM20
  (585, 58500, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 22),
  -- Deerling - Frustration - TM21
  (585, 58500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Deerling - Solar Beam - TM22
  (585, 58500, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 24),
  -- Deerling - Return - TM27
  (585, 58500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Deerling - Shadow Ball - TM30
  (585, 58500, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 26),
  -- Deerling - Double Team - TM32
  (585, 58500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Deerling - Facade - TM42
  (585, 58500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 28),
  -- Deerling - Rest - TM44
  (585, 58500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 29),
  -- Deerling - Attract - TM45
  (585, 58500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 30),
  -- Deerling - Round - TM48
  (585, 58500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 31),
  -- Deerling - Echoed Voice - TM49
  (585, 58500, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 32),
  -- Deerling - Energy Ball - TM53
  (585, 58500, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 33),
  -- Deerling - Retaliate - TM67
  (585, 58500, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 34),
  -- Deerling - Flash - TM70
  (585, 58500, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 35),
  -- Deerling - Thunder Wave - TM73
  (585, 58500, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 36),
  -- Deerling - Work Up - TM83
  (585, 58500, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 37),
  -- Deerling - Grass Knot - TM86
  (585, 58500, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 38),
  -- Deerling - Swagger - TM87
  (585, 58500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 39),
  -- Deerling - Substitute - TM90
  (585, 58500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 40),
  -- Deerling - Wild Charge - TM93
  (585, 58500, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 41),
  -- Deerling - Agility - Egg Move
  (585, 58500, 97, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Deerling - Baton Pass - Egg Move
  (585, 58500, 226, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Deerling - Fake Tears - Egg Move
  (585, 58500, 313, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Deerling - Grass Whistle - Egg Move
  (585, 58500, 320, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Deerling - Natural Gift - Egg Move
  (585, 58500, 363, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Deerling - Odor Sleuth - Egg Move
  (585, 58500, 316, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Deerling - Sleep Talk - Egg Move
  (585, 58500, 214, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Deerling - Synthesis - Egg Move
  (585, 58500, 235, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Deerling - Worry Seed - Egg Move
  (585, 58500, 388, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Sawsbuck - Megahorn - Level 1
  (586, 58600, 224, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sawsbuck - Tackle - Level 1
  (586, 58600, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sawsbuck - Camouflage - Level 1
  (586, 58600, 293, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sawsbuck - Growl - Level 1
  (586, 58600, 45, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sawsbuck - Sand Attack - Level 1
  (586, 58600, 28, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sawsbuck - Growl - Level 4
  (586, 58600, 45, 11, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Sawsbuck - Sand Attack - Level 7
  (586, 58600, 28, 11, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Sawsbuck - Double Kick - Level 10
  (586, 58600, 24, 11, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Sawsbuck - Leech Seed - Level 13
  (586, 58600, 73, 11, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Sawsbuck - Feint Attack - Level 16
  (586, 58600, 185, 11, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Sawsbuck - Take Down - Level 20
  (586, 58600, 36, 11, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Sawsbuck - Jump Kick - Level 24
  (586, 58600, 26, 11, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Sawsbuck - Aromatherapy - Level 28
  (586, 58600, 312, 11, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Sawsbuck - Energy Ball - Level 32
  (586, 58600, 412, 11, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Sawsbuck - Charm - Level 36
  (586, 58600, 204, 11, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Sawsbuck - Horn Leech - Level 37
  (586, 58600, 532, 11, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Sawsbuck - Nature Power - Level 44
  (586, 58600, 267, 11, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Sawsbuck - Double-Edge - Level 52
  (586, 58600, 38, 11, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Sawsbuck - Solar Beam - Level 60
  (586, 58600, 76, 11, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Sawsbuck - Toxic - TM06
  (586, 58600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 20),
  -- Sawsbuck - Hidden Power - TM10
  (586, 58600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Sawsbuck - Sunny Day - TM11
  (586, 58600, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 22),
  -- Sawsbuck - Hyper Beam - TM15
  (586, 58600, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 23),
  -- Sawsbuck - Light Screen - TM16
  (586, 58600, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 24),
  -- Sawsbuck - Protect - TM17
  (586, 58600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Sawsbuck - Rain Dance - TM18
  (586, 58600, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 26),
  -- Sawsbuck - Safeguard - TM20
  (586, 58600, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 27),
  -- Sawsbuck - Frustration - TM21
  (586, 58600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Sawsbuck - Solar Beam - TM22
  (586, 58600, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 29),
  -- Sawsbuck - Return - TM27
  (586, 58600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Sawsbuck - Shadow Ball - TM30
  (586, 58600, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 31),
  -- Sawsbuck - Double Team - TM32
  (586, 58600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 32),
  -- Sawsbuck - Facade - TM42
  (586, 58600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Sawsbuck - Rest - TM44
  (586, 58600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Sawsbuck - Attract - TM45
  (586, 58600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Sawsbuck - Round - TM48
  (586, 58600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Sawsbuck - Echoed Voice - TM49
  (586, 58600, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 37),
  -- Sawsbuck - Energy Ball - TM53
  (586, 58600, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 38),
  -- Sawsbuck - Retaliate - TM67
  (586, 58600, 514, 11, NULL, 2, NULL, NULL, 11002067, NULL, 39),
  -- Sawsbuck - Giga Impact - TM68
  (586, 58600, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 40),
  -- Sawsbuck - Flash - TM70
  (586, 58600, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 41),
  -- Sawsbuck - Thunder Wave - TM73
  (586, 58600, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 42),
  -- Sawsbuck - Swords Dance - TM75
  (586, 58600, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 43),
  -- Sawsbuck - Work Up - TM83
  (586, 58600, 526, 11, NULL, 2, NULL, NULL, 11002083, NULL, 44),
  -- Sawsbuck - Grass Knot - TM86
  (586, 58600, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 45),
  -- Sawsbuck - Swagger - TM87
  (586, 58600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 46),
  -- Sawsbuck - Substitute - TM90
  (586, 58600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 47),
  -- Sawsbuck - Wild Charge - TM93
  (586, 58600, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 48),
  -- Sawsbuck - Rock Smash - TM94
  (586, 58600, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 49),
  -- Sawsbuck - Cut - HM01
  (586, 58600, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 50),
  -- Emolga - Thunder Shock - Level 1
  (587, 58700, 84, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Emolga - Quick Attack - Level 4
  (587, 58700, 98, 11, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Emolga - Tail Whip - Level 7
  (587, 58700, 39, 11, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Emolga - Charge - Level 10
  (587, 58700, 268, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Emolga - Spark - Level 13
  (587, 58700, 209, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Emolga - Pursuit - Level 16
  (587, 58700, 228, 11, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Emolga - Double Team - Level 19
  (587, 58700, 104, 11, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Emolga - Shock Wave - Level 22
  (587, 58700, 351, 11, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Emolga - Electro Ball - Level 26
  (587, 58700, 486, 11, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Emolga - Acrobatics - Level 30
  (587, 58700, 512, 11, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Emolga - Light Screen - Level 34
  (587, 58700, 113, 11, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Emolga - Encore - Level 38
  (587, 58700, 227, 11, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Emolga - Volt Switch - Level 42
  (587, 58700, 521, 11, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Emolga - Agility - Level 46
  (587, 58700, 97, 11, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Emolga - Discharge - Level 50
  (587, 58700, 435, 11, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Emolga - Toxic - TM06
  (587, 58700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Emolga - Hidden Power - TM10
  (587, 58700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Emolga - Taunt - TM12
  (587, 58700, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 18),
  -- Emolga - Light Screen - TM16
  (587, 58700, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 19),
  -- Emolga - Protect - TM17
  (587, 58700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 20),
  -- Emolga - Rain Dance - TM18
  (587, 58700, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 21),
  -- Emolga - Frustration - TM21
  (587, 58700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Emolga - Thunderbolt - TM24
  (587, 58700, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 23),
  -- Emolga - Thunder - TM25
  (587, 58700, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 24),
  -- Emolga - Return - TM27
  (587, 58700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Emolga - Double Team - TM32
  (587, 58700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Emolga - Aerial Ace - TM40
  (587, 58700, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 27),
  -- Emolga - Facade - TM42
  (587, 58700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 28),
  -- Emolga - Rest - TM44
  (587, 58700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 29),
  -- Emolga - Attract - TM45
  (587, 58700, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 30),
  -- Emolga - Round - TM48
  (587, 58700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 31),
  -- Emolga - Fling - TM56
  (587, 58700, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 32),
  -- Emolga - Charge Beam - TM57
  (587, 58700, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 33),
  -- Emolga - Acrobatics - TM62
  (587, 58700, 512, 11, NULL, 2, NULL, NULL, 11002062, NULL, 34),
  -- Emolga - Flash - TM70
  (587, 58700, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 35),
  -- Emolga - Volt Switch - TM72
  (587, 58700, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 36),
  -- Emolga - Thunder Wave - TM73
  (587, 58700, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 37),
  -- Emolga - Swagger - TM87
  (587, 58700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 38),
  -- Emolga - U-turn - TM89
  (587, 58700, 369, 11, NULL, 2, NULL, NULL, 11002089, NULL, 39),
  -- Emolga - Substitute - TM90
  (587, 58700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 40),
  -- Emolga - Wild Charge - TM93
  (587, 58700, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 41),
  -- Emolga - Cut - HM01
  (587, 58700, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 42),
  -- Emolga - Air Slash - Egg Move
  (587, 58700, 403, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Emolga - Astonish - Egg Move
  (587, 58700, 310, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Emolga - Baton Pass - Egg Move
  (587, 58700, 226, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Emolga - Charm - Egg Move
  (587, 58700, 204, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Emolga - Covet - Egg Move
  (587, 58700, 343, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Emolga - Iron Tail - Egg Move
  (587, 58700, 231, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Emolga - Roost - Egg Move
  (587, 58700, 355, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Emolga - Shock Wave - Egg Move
  (587, 58700, 351, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Emolga - Tickle - Egg Move
  (587, 58700, 321, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Karrablast - Peck - Level 1
  (588, 58800, 64, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Karrablast - Leer - Level 4
  (588, 58800, 43, 11, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Karrablast - Endure - Level 8
  (588, 58800, 203, 11, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Karrablast - Fury Cutter - Level 13
  (588, 58800, 210, 11, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Karrablast - Fury Attack - Level 16
  (588, 58800, 31, 11, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Karrablast - Headbutt - Level 20
  (588, 58800, 29, 11, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Karrablast - False Swipe - Level 25
  (588, 58800, 206, 11, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Karrablast - Bug Buzz - Level 28
  (588, 58800, 405, 11, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Karrablast - Slash - Level 32
  (588, 58800, 163, 11, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Karrablast - Take Down - Level 37
  (588, 58800, 36, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Karrablast - Scary Face - Level 40
  (588, 58800, 184, 11, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Karrablast - X-Scissor - Level 44
  (588, 58800, 404, 11, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Karrablast - Flail - Level 49
  (588, 58800, 175, 11, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Karrablast - Swords Dance - Level 52
  (588, 58800, 14, 11, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Karrablast - Double-Edge - Level 56
  (588, 58800, 38, 11, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Karrablast - Toxic - TM06
  (588, 58800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Karrablast - Hidden Power - TM10
  (588, 58800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Karrablast - Protect - TM17
  (588, 58800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 18),
  -- Karrablast - Rain Dance - TM18
  (588, 58800, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 19),
  -- Karrablast - Frustration - TM21
  (588, 58800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 20),
  -- Karrablast - Return - TM27
  (588, 58800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 21),
  -- Karrablast - Double Team - TM32
  (588, 58800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 22),
  -- Karrablast - Aerial Ace - TM40
  (588, 58800, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 23),
  -- Karrablast - Facade - TM42
  (588, 58800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 24),
  -- Karrablast - Rest - TM44
  (588, 58800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 25),
  -- Karrablast - Attract - TM45
  (588, 58800, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 26),
  -- Karrablast - Round - TM48
  (588, 58800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 27),
  -- Karrablast - Energy Ball - TM53
  (588, 58800, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 28),
  -- Karrablast - False Swipe - TM54
  (588, 58800, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 29),
  -- Karrablast - Swords Dance - TM75
  (588, 58800, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 30),
  -- Karrablast - Struggle Bug - TM76
  (588, 58800, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 31),
  -- Karrablast - X-Scissor - TM81
  (588, 58800, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 32),
  -- Karrablast - Poison Jab - TM84
  (588, 58800, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 33),
  -- Karrablast - Swagger - TM87
  (588, 58800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 34),
  -- Karrablast - Substitute - TM90
  (588, 58800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 35),
  -- Karrablast - Cut - HM01
  (588, 58800, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 36),
  -- Karrablast - Bug Bite - Egg Move
  (588, 58800, 450, 11, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Karrablast - Counter - Egg Move
  (588, 58800, 68, 11, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Karrablast - Feint Attack - Egg Move
  (588, 58800, 185, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Karrablast - Horn Attack - Egg Move
  (588, 58800, 30, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Karrablast - Knock Off - Egg Move
  (588, 58800, 282, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Karrablast - Megahorn - Egg Move
  (588, 58800, 224, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Karrablast - Pursuit - Egg Move
  (588, 58800, 228, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Karrablast - Screech - Egg Move
  (588, 58800, 103, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Escavalier - Peck - Level 1
  (589, 58900, 64, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Escavalier - Leer - Level 1
  (589, 58900, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Escavalier - Quick Guard - Level 1
  (589, 58900, 501, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Escavalier - Twineedle - Level 1
  (589, 58900, 41, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Escavalier - Leer - Level 4
  (589, 58900, 43, 11, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Escavalier - Quick Guard - Level 8
  (589, 58900, 501, 11, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Escavalier - Twineedle - Level 13
  (589, 58900, 41, 11, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Escavalier - Fury Attack - Level 16
  (589, 58900, 31, 11, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Escavalier - Headbutt - Level 20
  (589, 58900, 29, 11, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Escavalier - False Swipe - Level 25
  (589, 58900, 206, 11, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Escavalier - Bug Buzz - Level 28
  (589, 58900, 405, 11, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Escavalier - Slash - Level 32
  (589, 58900, 163, 11, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Escavalier - Iron Head - Level 37
  (589, 58900, 442, 11, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Escavalier - Iron Defense - Level 40
  (589, 58900, 334, 11, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Escavalier - X-Scissor - Level 44
  (589, 58900, 404, 11, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Escavalier - Reversal - Level 49
  (589, 58900, 179, 11, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Escavalier - Swords Dance - Level 52
  (589, 58900, 14, 11, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Escavalier - Giga Impact - Level 56
  (589, 58900, 416, 11, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Escavalier - Toxic - TM06
  (589, 58900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Escavalier - Hidden Power - TM10
  (589, 58900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Escavalier - Hyper Beam - TM15
  (589, 58900, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 21),
  -- Escavalier - Protect - TM17
  (589, 58900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Escavalier - Rain Dance - TM18
  (589, 58900, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Escavalier - Frustration - TM21
  (589, 58900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Escavalier - Return - TM27
  (589, 58900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Escavalier - Double Team - TM32
  (589, 58900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Escavalier - Aerial Ace - TM40
  (589, 58900, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 27),
  -- Escavalier - Facade - TM42
  (589, 58900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 28),
  -- Escavalier - Rest - TM44
  (589, 58900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 29),
  -- Escavalier - Attract - TM45
  (589, 58900, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 30),
  -- Escavalier - Round - TM48
  (589, 58900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 31),
  -- Escavalier - Focus Blast - TM52
  (589, 58900, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 32),
  -- Escavalier - Energy Ball - TM53
  (589, 58900, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 33),
  -- Escavalier - False Swipe - TM54
  (589, 58900, 206, 11, NULL, 2, NULL, NULL, 11002054, NULL, 34),
  -- Escavalier - Giga Impact - TM68
  (589, 58900, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 35),
  -- Escavalier - Swords Dance - TM75
  (589, 58900, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 36),
  -- Escavalier - Struggle Bug - TM76
  (589, 58900, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 37),
  -- Escavalier - X-Scissor - TM81
  (589, 58900, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 38),
  -- Escavalier - Poison Jab - TM84
  (589, 58900, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 39),
  -- Escavalier - Swagger - TM87
  (589, 58900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 40),
  -- Escavalier - Substitute - TM90
  (589, 58900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 41),
  -- Escavalier - Rock Smash - TM94
  (589, 58900, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 42),
  -- Escavalier - Cut - HM01
  (589, 58900, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 43),
  -- Foongus - Absorb - Level 1
  (590, 59000, 71, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Foongus - Growth - Level 6
  (590, 59000, 74, 11, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Foongus - Astonish - Level 8
  (590, 59000, 310, 11, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Foongus - Bide - Level 12
  (590, 59000, 117, 11, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Foongus - Mega Drain - Level 15
  (590, 59000, 72, 11, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Foongus - Ingrain - Level 18
  (590, 59000, 275, 11, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Foongus - Feint Attack - Level 20
  (590, 59000, 185, 11, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Foongus - Sweet Scent - Level 24
  (590, 59000, 230, 11, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Foongus - Giga Drain - Level 28
  (590, 59000, 202, 11, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Foongus - Toxic - Level 32
  (590, 59000, 92, 11, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Foongus - Synthesis - Level 35
  (590, 59000, 235, 11, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Foongus - Clear Smog - Level 39
  (590, 59000, 499, 11, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Foongus - Solar Beam - Level 43
  (590, 59000, 76, 11, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Foongus - Rage Powder - Level 45
  (590, 59000, 476, 11, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Foongus - Spore - Level 50
  (590, 59000, 147, 11, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Foongus - Toxic - TM06
  (590, 59000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Foongus - Venoshock - TM09
  (590, 59000, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 17),
  -- Foongus - Hidden Power - TM10
  (590, 59000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Foongus - Sunny Day - TM11
  (590, 59000, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Foongus - Protect - TM17
  (590, 59000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 20),
  -- Foongus - Rain Dance - TM18
  (590, 59000, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 21),
  -- Foongus - Frustration - TM21
  (590, 59000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Foongus - Solar Beam - TM22
  (590, 59000, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 23),
  -- Foongus - Return - TM27
  (590, 59000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Foongus - Double Team - TM32
  (590, 59000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 25),
  -- Foongus - Sludge Bomb - TM36
  (590, 59000, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 26),
  -- Foongus - Facade - TM42
  (590, 59000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 27),
  -- Foongus - Rest - TM44
  (590, 59000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 28),
  -- Foongus - Attract - TM45
  (590, 59000, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 29),
  -- Foongus - Round - TM48
  (590, 59000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 30),
  -- Foongus - Energy Ball - TM53
  (590, 59000, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 31),
  -- Foongus - Payback - TM66
  (590, 59000, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 32),
  -- Foongus - Flash - TM70
  (590, 59000, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 33),
  -- Foongus - Grass Knot - TM86
  (590, 59000, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 34),
  -- Foongus - Swagger - TM87
  (590, 59000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 35),
  -- Foongus - Substitute - TM90
  (590, 59000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 36),
  -- Foongus - Body Slam - Egg Move
  (590, 59000, 34, 11, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Foongus - Defense Curl - Egg Move
  (590, 59000, 111, 11, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Foongus - Endure - Egg Move
  (590, 59000, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Foongus - Gastro Acid - Egg Move
  (590, 59000, 380, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Foongus - Growth - Egg Move
  (590, 59000, 74, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Foongus - Poison Powder - Egg Move
  (590, 59000, 77, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Foongus - Rollout - Egg Move
  (590, 59000, 205, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Foongus - Stun Spore - Egg Move
  (590, 59000, 78, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Amoonguss - Absorb - Level 1
  (591, 59100, 71, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Amoonguss - Growth - Level 1
  (591, 59100, 74, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Amoonguss - Astonish - Level 1
  (591, 59100, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Amoonguss - Bide - Level 1
  (591, 59100, 117, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Amoonguss - Growth - Level 6
  (591, 59100, 74, 11, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Amoonguss - Astonish - Level 8
  (591, 59100, 310, 11, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Amoonguss - Bide - Level 12
  (591, 59100, 117, 11, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Amoonguss - Mega Drain - Level 15
  (591, 59100, 72, 11, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Amoonguss - Ingrain - Level 18
  (591, 59100, 275, 11, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Amoonguss - Feint Attack - Level 20
  (591, 59100, 185, 11, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Amoonguss - Sweet Scent - Level 24
  (591, 59100, 230, 11, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Amoonguss - Giga Drain - Level 28
  (591, 59100, 202, 11, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Amoonguss - Toxic - Level 32
  (591, 59100, 92, 11, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Amoonguss - Synthesis - Level 35
  (591, 59100, 235, 11, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Amoonguss - Clear Smog - Level 43
  (591, 59100, 499, 11, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Amoonguss - Solar Beam - Level 49
  (591, 59100, 76, 11, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Amoonguss - Rage Powder - Level 54
  (591, 59100, 476, 11, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Amoonguss - Spore - Level 62
  (591, 59100, 147, 11, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Amoonguss - Toxic - TM06
  (591, 59100, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Amoonguss - Venoshock - TM09
  (591, 59100, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 20),
  -- Amoonguss - Hidden Power - TM10
  (591, 59100, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Amoonguss - Sunny Day - TM11
  (591, 59100, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 22),
  -- Amoonguss - Hyper Beam - TM15
  (591, 59100, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 23),
  -- Amoonguss - Protect - TM17
  (591, 59100, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Amoonguss - Rain Dance - TM18
  (591, 59100, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Amoonguss - Frustration - TM21
  (591, 59100, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Amoonguss - Solar Beam - TM22
  (591, 59100, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 27),
  -- Amoonguss - Return - TM27
  (591, 59100, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Amoonguss - Double Team - TM32
  (591, 59100, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 29),
  -- Amoonguss - Sludge Bomb - TM36
  (591, 59100, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 30),
  -- Amoonguss - Facade - TM42
  (591, 59100, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 31),
  -- Amoonguss - Rest - TM44
  (591, 59100, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 32),
  -- Amoonguss - Attract - TM45
  (591, 59100, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 33),
  -- Amoonguss - Round - TM48
  (591, 59100, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 34),
  -- Amoonguss - Energy Ball - TM53
  (591, 59100, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 35),
  -- Amoonguss - Payback - TM66
  (591, 59100, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 36),
  -- Amoonguss - Giga Impact - TM68
  (591, 59100, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 37),
  -- Amoonguss - Flash - TM70
  (591, 59100, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 38),
  -- Amoonguss - Grass Knot - TM86
  (591, 59100, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 39),
  -- Amoonguss - Swagger - TM87
  (591, 59100, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 40),
  -- Amoonguss - Substitute - TM90
  (591, 59100, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 41),
  -- Frillish - Bubble - Level 1
  (592, 59200, 145, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Frillish - Water Sport - Level 1
  (592, 59200, 346, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Frillish - Absorb - Level 5
  (592, 59200, 71, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Frillish - Night Shade - Level 9
  (592, 59200, 101, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Frillish - Bubble Beam - Level 13
  (592, 59200, 61, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Frillish - Recover - Level 17
  (592, 59200, 105, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Frillish - Water Pulse - Level 22
  (592, 59200, 352, 11, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Frillish - Ominous Wind - Level 27
  (592, 59200, 466, 11, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Frillish - Brine - Level 32
  (592, 59200, 362, 11, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Frillish - Rain Dance - Level 37
  (592, 59200, 240, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Frillish - Hex - Level 43
  (592, 59200, 506, 11, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Frillish - Hydro Pump - Level 49
  (592, 59200, 56, 11, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Frillish - Wring Out - Level 55
  (592, 59200, 378, 11, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Frillish - Water Spout - Level 61
  (592, 59200, 323, 11, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Frillish - Toxic - TM06
  (592, 59200, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Frillish - Hail - TM07
  (592, 59200, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 16),
  -- Frillish - Hidden Power - TM10
  (592, 59200, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Frillish - Taunt - TM12
  (592, 59200, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 18),
  -- Frillish - Ice Beam - TM13
  (592, 59200, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 19),
  -- Frillish - Blizzard - TM14
  (592, 59200, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 20),
  -- Frillish - Protect - TM17
  (592, 59200, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 21),
  -- Frillish - Rain Dance - TM18
  (592, 59200, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 22),
  -- Frillish - Safeguard - TM20
  (592, 59200, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 23),
  -- Frillish - Frustration - TM21
  (592, 59200, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Frillish - Return - TM27
  (592, 59200, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Frillish - Psychic - TM29
  (592, 59200, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 26),
  -- Frillish - Shadow Ball - TM30
  (592, 59200, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 27),
  -- Frillish - Double Team - TM32
  (592, 59200, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Frillish - Sludge Wave - TM34
  (592, 59200, 482, 11, NULL, 2, NULL, NULL, 11002034, NULL, 29),
  -- Frillish - Sludge Bomb - TM36
  (592, 59200, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 30),
  -- Frillish - Facade - TM42
  (592, 59200, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 31),
  -- Frillish - Rest - TM44
  (592, 59200, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 32),
  -- Frillish - Attract - TM45
  (592, 59200, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 33),
  -- Frillish - Round - TM48
  (592, 59200, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 34),
  -- Frillish - Energy Ball - TM53
  (592, 59200, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 35),
  -- Frillish - Scald - TM55
  (592, 59200, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 36),
  -- Frillish - Will-O-Wisp - TM61
  (592, 59200, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 37),
  -- Frillish - Flash - TM70
  (592, 59200, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 38),
  -- Frillish - Psych Up - TM77
  (592, 59200, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 39),
  -- Frillish - Dream Eater - TM85
  (592, 59200, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 40),
  -- Frillish - Swagger - TM87
  (592, 59200, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 41),
  -- Frillish - Substitute - TM90
  (592, 59200, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 42),
  -- Frillish - Trick Room - TM92
  (592, 59200, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 43),
  -- Frillish - Surf - HM03
  (592, 59200, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 44),
  -- Frillish - Waterfall - HM05
  (592, 59200, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 45),
  -- Frillish - Dive - HM06
  (592, 59200, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 46),
  -- Frillish - Acid Armor - Egg Move
  (592, 59200, 151, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Frillish - Confuse Ray - Egg Move
  (592, 59200, 109, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Frillish - Constrict - Egg Move
  (592, 59200, 132, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Frillish - Mist - Egg Move
  (592, 59200, 54, 11, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Frillish - Pain Split - Egg Move
  (592, 59200, 220, 11, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Frillish - Recover - Egg Move
  (592, 59200, 105, 11, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Jellicent - Bubble - Level 1
  (593, 59300, 145, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Jellicent - Water Sport - Level 1
  (593, 59300, 346, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Jellicent - Absorb - Level 1
  (593, 59300, 71, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Jellicent - Night Shade - Level 1
  (593, 59300, 101, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Jellicent - Absorb - Level 5
  (593, 59300, 71, 11, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Jellicent - Night Shade - Level 9
  (593, 59300, 101, 11, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Jellicent - Bubble Beam - Level 13
  (593, 59300, 61, 11, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Jellicent - Recover - Level 17
  (593, 59300, 105, 11, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Jellicent - Water Pulse - Level 22
  (593, 59300, 352, 11, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Jellicent - Ominous Wind - Level 27
  (593, 59300, 466, 11, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Jellicent - Brine - Level 32
  (593, 59300, 362, 11, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Jellicent - Rain Dance - Level 37
  (593, 59300, 240, 11, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Jellicent - Hex - Level 45
  (593, 59300, 506, 11, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Jellicent - Hydro Pump - Level 53
  (593, 59300, 56, 11, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Jellicent - Wring Out - Level 61
  (593, 59300, 378, 11, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Jellicent - Water Spout - Level 69
  (593, 59300, 323, 11, NULL, 1, 69, NULL, NULL, NULL, 16),
  -- Jellicent - Toxic - TM06
  (593, 59300, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Jellicent - Hail - TM07
  (593, 59300, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 18),
  -- Jellicent - Hidden Power - TM10
  (593, 59300, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Jellicent - Taunt - TM12
  (593, 59300, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 20),
  -- Jellicent - Ice Beam - TM13
  (593, 59300, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 21),
  -- Jellicent - Blizzard - TM14
  (593, 59300, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 22),
  -- Jellicent - Hyper Beam - TM15
  (593, 59300, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 23),
  -- Jellicent - Protect - TM17
  (593, 59300, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Jellicent - Rain Dance - TM18
  (593, 59300, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Jellicent - Safeguard - TM20
  (593, 59300, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 26),
  -- Jellicent - Frustration - TM21
  (593, 59300, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 27),
  -- Jellicent - Return - TM27
  (593, 59300, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 28),
  -- Jellicent - Psychic - TM29
  (593, 59300, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 29),
  -- Jellicent - Shadow Ball - TM30
  (593, 59300, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 30),
  -- Jellicent - Double Team - TM32
  (593, 59300, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Jellicent - Sludge Wave - TM34
  (593, 59300, 482, 11, NULL, 2, NULL, NULL, 11002034, NULL, 32),
  -- Jellicent - Sludge Bomb - TM36
  (593, 59300, 188, 11, NULL, 2, NULL, NULL, 11002036, NULL, 33),
  -- Jellicent - Facade - TM42
  (593, 59300, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 34),
  -- Jellicent - Rest - TM44
  (593, 59300, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 35),
  -- Jellicent - Attract - TM45
  (593, 59300, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 36),
  -- Jellicent - Round - TM48
  (593, 59300, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Jellicent - Energy Ball - TM53
  (593, 59300, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 38),
  -- Jellicent - Scald - TM55
  (593, 59300, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 39),
  -- Jellicent - Will-O-Wisp - TM61
  (593, 59300, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 40),
  -- Jellicent - Giga Impact - TM68
  (593, 59300, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 41),
  -- Jellicent - Flash - TM70
  (593, 59300, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 42),
  -- Jellicent - Psych Up - TM77
  (593, 59300, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 43),
  -- Jellicent - Dream Eater - TM85
  (593, 59300, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 44),
  -- Jellicent - Swagger - TM87
  (593, 59300, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 45),
  -- Jellicent - Substitute - TM90
  (593, 59300, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 46),
  -- Jellicent - Trick Room - TM92
  (593, 59300, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 47),
  -- Jellicent - Surf - HM03
  (593, 59300, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 48),
  -- Jellicent - Waterfall - HM05
  (593, 59300, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 49),
  -- Jellicent - Dive - HM06
  (593, 59300, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 50),
  -- Alomomola - Pound - Level 1
  (594, 59400, 1, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alomomola - Water Sport - Level 1
  (594, 59400, 346, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alomomola - Aqua Ring - Level 5
  (594, 59400, 392, 11, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Alomomola - Aqua Jet - Level 9
  (594, 59400, 453, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Alomomola - Double Slap - Level 13
  (594, 59400, 3, 11, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Alomomola - Heal Pulse - Level 17
  (594, 59400, 505, 11, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Alomomola - Protect - Level 21
  (594, 59400, 182, 11, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Alomomola - Water Pulse - Level 25
  (594, 59400, 352, 11, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Alomomola - Wake-Up Slap - Level 29
  (594, 59400, 358, 11, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Alomomola - Soak - Level 33
  (594, 59400, 487, 11, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Alomomola - Wish - Level 37
  (594, 59400, 273, 11, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Alomomola - Brine - Level 41
  (594, 59400, 362, 11, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Alomomola - Safeguard - Level 45
  (594, 59400, 219, 11, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Alomomola - Helping Hand - Level 49
  (594, 59400, 270, 11, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Alomomola - Wide Guard - Level 53
  (594, 59400, 469, 11, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Alomomola - Healing Wish - Level 57
  (594, 59400, 361, 11, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Alomomola - Hydro Pump - Level 61
  (594, 59400, 56, 11, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Alomomola - Calm Mind - TM04
  (594, 59400, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 18),
  -- Alomomola - Toxic - TM06
  (594, 59400, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Alomomola - Hail - TM07
  (594, 59400, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 20),
  -- Alomomola - Hidden Power - TM10
  (594, 59400, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 21),
  -- Alomomola - Ice Beam - TM13
  (594, 59400, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 22),
  -- Alomomola - Blizzard - TM14
  (594, 59400, 59, 11, NULL, 2, NULL, NULL, 11002014, NULL, 23),
  -- Alomomola - Light Screen - TM16
  (594, 59400, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 24),
  -- Alomomola - Protect - TM17
  (594, 59400, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Alomomola - Rain Dance - TM18
  (594, 59400, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 26),
  -- Alomomola - Safeguard - TM20
  (594, 59400, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 27),
  -- Alomomola - Frustration - TM21
  (594, 59400, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Alomomola - Return - TM27
  (594, 59400, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 29),
  -- Alomomola - Psychic - TM29
  (594, 59400, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 30),
  -- Alomomola - Shadow Ball - TM30
  (594, 59400, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 31),
  -- Alomomola - Double Team - TM32
  (594, 59400, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 32),
  -- Alomomola - Facade - TM42
  (594, 59400, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 33),
  -- Alomomola - Rest - TM44
  (594, 59400, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 34),
  -- Alomomola - Attract - TM45
  (594, 59400, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 35),
  -- Alomomola - Round - TM48
  (594, 59400, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Alomomola - Scald - TM55
  (594, 59400, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 37),
  -- Alomomola - Psych Up - TM77
  (594, 59400, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 38),
  -- Alomomola - Swagger - TM87
  (594, 59400, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 39),
  -- Alomomola - Substitute - TM90
  (594, 59400, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 40),
  -- Alomomola - Surf - HM03
  (594, 59400, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 41),
  -- Alomomola - Waterfall - HM05
  (594, 59400, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 42),
  -- Alomomola - Dive - HM06
  (594, 59400, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 43),
  -- Alomomola - Endure - Egg Move
  (594, 59400, 203, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Alomomola - Mirror Coat - Egg Move
  (594, 59400, 243, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Alomomola - Mist - Egg Move
  (594, 59400, 54, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Alomomola - Pain Split - Egg Move
  (594, 59400, 220, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Alomomola - Refresh - Egg Move
  (594, 59400, 287, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Alomomola - Tickle - Egg Move
  (594, 59400, 321, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Joltik - String Shot - Level 1
  (595, 59500, 81, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Joltik - Leech Life - Level 1
  (595, 59500, 141, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Joltik - Spider Web - Level 1
  (595, 59500, 169, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Joltik - Thunder Wave - Level 4
  (595, 59500, 86, 11, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Joltik - Screech - Level 7
  (595, 59500, 103, 11, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Joltik - Fury Cutter - Level 12
  (595, 59500, 210, 11, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Joltik - Electroweb - Level 15
  (595, 59500, 527, 11, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Joltik - Bug Bite - Level 18
  (595, 59500, 450, 11, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Joltik - Gastro Acid - Level 23
  (595, 59500, 380, 11, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Joltik - Slash - Level 26
  (595, 59500, 163, 11, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Joltik - Electro Ball - Level 29
  (595, 59500, 486, 11, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Joltik - Signal Beam - Level 34
  (595, 59500, 324, 11, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Joltik - Agility - Level 37
  (595, 59500, 97, 11, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Joltik - Sucker Punch - Level 40
  (595, 59500, 389, 11, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Joltik - Discharge - Level 45
  (595, 59500, 435, 11, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Joltik - Bug Buzz - Level 48
  (595, 59500, 405, 11, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Joltik - Toxic - TM06
  (595, 59500, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Joltik - Hidden Power - TM10
  (595, 59500, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Joltik - Light Screen - TM16
  (595, 59500, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 19),
  -- Joltik - Protect - TM17
  (595, 59500, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 20),
  -- Joltik - Rain Dance - TM18
  (595, 59500, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 21),
  -- Joltik - Frustration - TM21
  (595, 59500, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Joltik - Thunderbolt - TM24
  (595, 59500, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 23),
  -- Joltik - Return - TM27
  (595, 59500, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Joltik - Double Team - TM32
  (595, 59500, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 25),
  -- Joltik - Facade - TM42
  (595, 59500, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 26),
  -- Joltik - Rest - TM44
  (595, 59500, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 27),
  -- Joltik - Attract - TM45
  (595, 59500, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 28),
  -- Joltik - Thief - TM46
  (595, 59500, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 29),
  -- Joltik - Round - TM48
  (595, 59500, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 30),
  -- Joltik - Energy Ball - TM53
  (595, 59500, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 31),
  -- Joltik - Charge Beam - TM57
  (595, 59500, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 32),
  -- Joltik - Flash - TM70
  (595, 59500, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 33),
  -- Joltik - Volt Switch - TM72
  (595, 59500, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 34),
  -- Joltik - Thunder Wave - TM73
  (595, 59500, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 35),
  -- Joltik - Struggle Bug - TM76
  (595, 59500, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 36),
  -- Joltik - X-Scissor - TM81
  (595, 59500, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 37),
  -- Joltik - Poison Jab - TM84
  (595, 59500, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 38),
  -- Joltik - Swagger - TM87
  (595, 59500, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 39),
  -- Joltik - Substitute - TM90
  (595, 59500, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 40),
  -- Joltik - Wild Charge - TM93
  (595, 59500, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 41),
  -- Joltik - Cut - HM01
  (595, 59500, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 42),
  -- Joltik - Cross Poison - Egg Move
  (595, 59500, 440, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Joltik - Disable - Egg Move
  (595, 59500, 50, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Joltik - Feint Attack - Egg Move
  (595, 59500, 185, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Joltik - Pin Missile - Egg Move
  (595, 59500, 42, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Joltik - Poison Sting - Egg Move
  (595, 59500, 40, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Joltik - Pursuit - Egg Move
  (595, 59500, 228, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Joltik - Rock Climb - Egg Move
  (595, 59500, 431, 11, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Galvantula - String Shot - Level 1
  (596, 59600, 81, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Galvantula - Leech Life - Level 1
  (596, 59600, 141, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Galvantula - Spider Web - Level 1
  (596, 59600, 169, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Galvantula - Thunder Wave - Level 1
  (596, 59600, 86, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Galvantula - Thunder Wave - Level 4
  (596, 59600, 86, 11, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Galvantula - Screech - Level 7
  (596, 59600, 103, 11, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Galvantula - Fury Cutter - Level 12
  (596, 59600, 210, 11, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Galvantula - Electroweb - Level 15
  (596, 59600, 527, 11, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Galvantula - Bug Bite - Level 18
  (596, 59600, 450, 11, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Galvantula - Gastro Acid - Level 23
  (596, 59600, 380, 11, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Galvantula - Slash - Level 26
  (596, 59600, 163, 11, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Galvantula - Electro Ball - Level 29
  (596, 59600, 486, 11, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Galvantula - Signal Beam - Level 34
  (596, 59600, 324, 11, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Galvantula - Agility - Level 40
  (596, 59600, 97, 11, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Galvantula - Sucker Punch - Level 46
  (596, 59600, 389, 11, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Galvantula - Discharge - Level 54
  (596, 59600, 435, 11, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Galvantula - Bug Buzz - Level 60
  (596, 59600, 405, 11, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Galvantula - Toxic - TM06
  (596, 59600, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Galvantula - Hidden Power - TM10
  (596, 59600, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Galvantula - Hyper Beam - TM15
  (596, 59600, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 20),
  -- Galvantula - Light Screen - TM16
  (596, 59600, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 21),
  -- Galvantula - Protect - TM17
  (596, 59600, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Galvantula - Rain Dance - TM18
  (596, 59600, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Galvantula - Frustration - TM21
  (596, 59600, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Galvantula - Thunderbolt - TM24
  (596, 59600, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 25),
  -- Galvantula - Thunder - TM25
  (596, 59600, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 26),
  -- Galvantula - Return - TM27
  (596, 59600, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 27),
  -- Galvantula - Double Team - TM32
  (596, 59600, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Galvantula - Facade - TM42
  (596, 59600, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 29),
  -- Galvantula - Rest - TM44
  (596, 59600, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 30),
  -- Galvantula - Attract - TM45
  (596, 59600, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 31),
  -- Galvantula - Thief - TM46
  (596, 59600, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 32),
  -- Galvantula - Round - TM48
  (596, 59600, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 33),
  -- Galvantula - Energy Ball - TM53
  (596, 59600, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 34),
  -- Galvantula - Charge Beam - TM57
  (596, 59600, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 35),
  -- Galvantula - Giga Impact - TM68
  (596, 59600, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 36),
  -- Galvantula - Flash - TM70
  (596, 59600, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 37),
  -- Galvantula - Volt Switch - TM72
  (596, 59600, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 38),
  -- Galvantula - Thunder Wave - TM73
  (596, 59600, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 39),
  -- Galvantula - Struggle Bug - TM76
  (596, 59600, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 40),
  -- Galvantula - X-Scissor - TM81
  (596, 59600, 404, 11, NULL, 2, NULL, NULL, 11002081, NULL, 41),
  -- Galvantula - Poison Jab - TM84
  (596, 59600, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 42),
  -- Galvantula - Swagger - TM87
  (596, 59600, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 43),
  -- Galvantula - Substitute - TM90
  (596, 59600, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 44),
  -- Galvantula - Wild Charge - TM93
  (596, 59600, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 45),
  -- Galvantula - Cut - HM01
  (596, 59600, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 46),
  -- Ferroseed - Tackle - Level 1
  (597, 59700, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ferroseed - Harden - Level 1
  (597, 59700, 106, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ferroseed - Rollout - Level 6
  (597, 59700, 205, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Ferroseed - Curse - Level 9
  (597, 59700, 174, 11, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Ferroseed - Metal Claw - Level 14
  (597, 59700, 232, 11, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Ferroseed - Pin Missile - Level 18
  (597, 59700, 42, 11, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Ferroseed - Gyro Ball - Level 21
  (597, 59700, 360, 11, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Ferroseed - Iron Defense - Level 26
  (597, 59700, 334, 11, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Ferroseed - Mirror Shot - Level 30
  (597, 59700, 429, 11, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Ferroseed - Ingrain - Level 35
  (597, 59700, 275, 11, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Ferroseed - Self-Destruct - Level 38
  (597, 59700, 120, 11, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Ferroseed - Iron Head - Level 43
  (597, 59700, 442, 11, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Ferroseed - Payback - Level 47
  (597, 59700, 371, 11, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Ferroseed - Flash Cannon - Level 52
  (597, 59700, 430, 11, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Ferroseed - Explosion - Level 55
  (597, 59700, 153, 11, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Ferroseed - Hone Claws - TM01
  (597, 59700, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 16),
  -- Ferroseed - Toxic - TM06
  (597, 59700, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Ferroseed - Hidden Power - TM10
  (597, 59700, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Ferroseed - Sunny Day - TM11
  (597, 59700, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Ferroseed - Protect - TM17
  (597, 59700, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 20),
  -- Ferroseed - Frustration - TM21
  (597, 59700, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 21),
  -- Ferroseed - Solar Beam - TM22
  (597, 59700, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 22),
  -- Ferroseed - Thunderbolt - TM24
  (597, 59700, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 23),
  -- Ferroseed - Return - TM27
  (597, 59700, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Ferroseed - Double Team - TM32
  (597, 59700, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 25),
  -- Ferroseed - Facade - TM42
  (597, 59700, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 26),
  -- Ferroseed - Rest - TM44
  (597, 59700, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 27),
  -- Ferroseed - Round - TM48
  (597, 59700, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 28),
  -- Ferroseed - Energy Ball - TM53
  (597, 59700, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 29),
  -- Ferroseed - Explosion - TM64
  (597, 59700, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 30),
  -- Ferroseed - Payback - TM66
  (597, 59700, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 31),
  -- Ferroseed - Rock Polish - TM69
  (597, 59700, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 32),
  -- Ferroseed - Flash - TM70
  (597, 59700, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 33),
  -- Ferroseed - Thunder Wave - TM73
  (597, 59700, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 34),
  -- Ferroseed - Gyro Ball - TM74
  (597, 59700, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 35),
  -- Ferroseed - Poison Jab - TM84
  (597, 59700, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 36),
  -- Ferroseed - Swagger - TM87
  (597, 59700, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 37),
  -- Ferroseed - Substitute - TM90
  (597, 59700, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 38),
  -- Ferroseed - Flash Cannon - TM91
  (597, 59700, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 39),
  -- Ferroseed - Rock Smash - TM94
  (597, 59700, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 40),
  -- Ferroseed - Bullet Seed - Egg Move
  (597, 59700, 331, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Ferroseed - Gravity - Egg Move
  (597, 59700, 356, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Ferroseed - Leech Seed - Egg Move
  (597, 59700, 73, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Ferroseed - Rock Climb - Egg Move
  (597, 59700, 431, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Ferroseed - Seed Bomb - Egg Move
  (597, 59700, 402, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Ferroseed - Spikes - Egg Move
  (597, 59700, 191, 11, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Ferroseed - Stealth Rock - Egg Move
  (597, 59700, 446, 11, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ferroseed - Worry Seed - Egg Move
  (597, 59700, 388, 11, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ferrothorn - Rock Climb - Level 1
  (598, 59800, 431, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ferrothorn - Tackle - Level 1
  (598, 59800, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ferrothorn - Harden - Level 1
  (598, 59800, 106, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ferrothorn - Rollout - Level 1
  (598, 59800, 205, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ferrothorn - Curse - Level 1
  (598, 59800, 174, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ferrothorn - Rollout - Level 6
  (598, 59800, 205, 11, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Ferrothorn - Curse - Level 9
  (598, 59800, 174, 11, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Ferrothorn - Metal Claw - Level 14
  (598, 59800, 232, 11, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Ferrothorn - Pin Missile - Level 18
  (598, 59800, 42, 11, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Ferrothorn - Gyro Ball - Level 21
  (598, 59800, 360, 11, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Ferrothorn - Iron Defense - Level 26
  (598, 59800, 334, 11, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Ferrothorn - Mirror Shot - Level 30
  (598, 59800, 429, 11, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Ferrothorn - Ingrain - Level 35
  (598, 59800, 275, 11, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Ferrothorn - Self-Destruct - Level 38
  (598, 59800, 120, 11, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Ferrothorn - Power Whip - Level 40
  (598, 59800, 438, 11, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Ferrothorn - Iron Head - Level 46
  (598, 59800, 442, 11, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Ferrothorn - Payback - Level 53
  (598, 59800, 371, 11, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Ferrothorn - Flash Cannon - Level 61
  (598, 59800, 430, 11, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Ferrothorn - Explosion - Level 67
  (598, 59800, 153, 11, NULL, 1, 67, NULL, NULL, NULL, 19),
  -- Ferrothorn - Hone Claws - TM01
  (598, 59800, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 20),
  -- Ferrothorn - Toxic - TM06
  (598, 59800, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 21),
  -- Ferrothorn - Hidden Power - TM10
  (598, 59800, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 22),
  -- Ferrothorn - Sunny Day - TM11
  (598, 59800, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 23),
  -- Ferrothorn - Hyper Beam - TM15
  (598, 59800, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 24),
  -- Ferrothorn - Protect - TM17
  (598, 59800, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 25),
  -- Ferrothorn - Frustration - TM21
  (598, 59800, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Ferrothorn - Solar Beam - TM22
  (598, 59800, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 27),
  -- Ferrothorn - Thunderbolt - TM24
  (598, 59800, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 28),
  -- Ferrothorn - Thunder - TM25
  (598, 59800, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 29),
  -- Ferrothorn - Return - TM27
  (598, 59800, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Ferrothorn - Double Team - TM32
  (598, 59800, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 31),
  -- Ferrothorn - Sandstorm - TM37
  (598, 59800, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 32),
  -- Ferrothorn - Aerial Ace - TM40
  (598, 59800, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 33),
  -- Ferrothorn - Facade - TM42
  (598, 59800, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 34),
  -- Ferrothorn - Rest - TM44
  (598, 59800, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 35),
  -- Ferrothorn - Round - TM48
  (598, 59800, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 36),
  -- Ferrothorn - Energy Ball - TM53
  (598, 59800, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 37),
  -- Ferrothorn - Explosion - TM64
  (598, 59800, 153, 11, NULL, 2, NULL, NULL, 11002064, NULL, 38),
  -- Ferrothorn - Shadow Claw - TM65
  (598, 59800, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 39),
  -- Ferrothorn - Payback - TM66
  (598, 59800, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 40),
  -- Ferrothorn - Giga Impact - TM68
  (598, 59800, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 41),
  -- Ferrothorn - Rock Polish - TM69
  (598, 59800, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 42),
  -- Ferrothorn - Flash - TM70
  (598, 59800, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 43),
  -- Ferrothorn - Thunder Wave - TM73
  (598, 59800, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 44),
  -- Ferrothorn - Gyro Ball - TM74
  (598, 59800, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 45),
  -- Ferrothorn - Swords Dance - TM75
  (598, 59800, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 46),
  -- Ferrothorn - Bulldoze - TM78
  (598, 59800, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 47),
  -- Ferrothorn - Poison Jab - TM84
  (598, 59800, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 48),
  -- Ferrothorn - Grass Knot - TM86
  (598, 59800, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 49),
  -- Ferrothorn - Swagger - TM87
  (598, 59800, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 50),
  -- Ferrothorn - Substitute - TM90
  (598, 59800, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 51),
  -- Ferrothorn - Flash Cannon - TM91
  (598, 59800, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 52),
  -- Ferrothorn - Rock Smash - TM94
  (598, 59800, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 53),
  -- Ferrothorn - Cut - HM01
  (598, 59800, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 54),
  -- Ferrothorn - Strength - HM04
  (598, 59800, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 55),
  -- Klink - Vise Grip - Level 1
  (599, 59900, 11, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Klink - Charge - Level 6
  (599, 59900, 268, 11, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Klink - Thunder Shock - Level 11
  (599, 59900, 84, 11, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Klink - Gear Grind - Level 16
  (599, 59900, 544, 11, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Klink - Bind - Level 21
  (599, 59900, 20, 11, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Klink - Charge Beam - Level 26
  (599, 59900, 451, 11, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Klink - Autotomize - Level 31
  (599, 59900, 475, 11, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Klink - Mirror Shot - Level 36
  (599, 59900, 429, 11, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Klink - Screech - Level 39
  (599, 59900, 103, 11, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Klink - Discharge - Level 42
  (599, 59900, 435, 11, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Klink - Metal Sound - Level 45
  (599, 59900, 319, 11, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Klink - Shift Gear - Level 48
  (599, 59900, 508, 11, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Klink - Lock-On - Level 51
  (599, 59900, 199, 11, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Klink - Zap Cannon - Level 54
  (599, 59900, 192, 11, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Klink - Hyper Beam - Level 57
  (599, 59900, 63, 11, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Klink - Toxic - TM06
  (599, 59900, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 16),
  -- Klink - Hidden Power - TM10
  (599, 59900, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 17),
  -- Klink - Hyper Beam - TM15
  (599, 59900, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 18),
  -- Klink - Protect - TM17
  (599, 59900, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Klink - Frustration - TM21
  (599, 59900, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 20),
  -- Klink - Thunderbolt - TM24
  (599, 59900, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 21),
  -- Klink - Return - TM27
  (599, 59900, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 22),
  -- Klink - Double Team - TM32
  (599, 59900, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 23),
  -- Klink - Sandstorm - TM37
  (599, 59900, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 24),
  -- Klink - Facade - TM42
  (599, 59900, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 25),
  -- Klink - Rest - TM44
  (599, 59900, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 26),
  -- Klink - Round - TM48
  (599, 59900, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 27),
  -- Klink - Charge Beam - TM57
  (599, 59900, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 28),
  -- Klink - Rock Polish - TM69
  (599, 59900, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 29),
  -- Klink - Volt Switch - TM72
  (599, 59900, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 30),
  -- Klink - Thunder Wave - TM73
  (599, 59900, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 31),
  -- Klink - Swagger - TM87
  (599, 59900, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 32),
  -- Klink - Substitute - TM90
  (599, 59900, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 33),
  -- Klink - Flash Cannon - TM91
  (599, 59900, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 34),
  -- Klink - Wild Charge - TM93
  (599, 59900, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 35),
  -- Klink - Rock Smash - TM94
  (599, 59900, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 36),
  -- Klang - Vise Grip - Level 1
  (600, 60000, 11, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Klang - Charge - Level 1
  (600, 60000, 268, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Klang - Thunder Shock - Level 1
  (600, 60000, 84, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Klang - Gear Grind - Level 1
  (600, 60000, 544, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Klang - Charge - Level 6
  (600, 60000, 268, 11, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Klang - Thunder Shock - Level 11
  (600, 60000, 84, 11, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Klang - Gear Grind - Level 16
  (600, 60000, 544, 11, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Klang - Bind - Level 21
  (600, 60000, 20, 11, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Klang - Charge Beam - Level 26
  (600, 60000, 451, 11, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Klang - Autotomize - Level 31
  (600, 60000, 475, 11, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Klang - Mirror Shot - Level 36
  (600, 60000, 429, 11, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Klang - Screech - Level 40
  (600, 60000, 103, 11, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Klang - Discharge - Level 44
  (600, 60000, 435, 11, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Klang - Metal Sound - Level 48
  (600, 60000, 319, 11, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Klang - Shift Gear - Level 52
  (600, 60000, 508, 11, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Klang - Lock-On - Level 56
  (600, 60000, 199, 11, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Klang - Zap Cannon - Level 60
  (600, 60000, 192, 11, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Klang - Hyper Beam - Level 64
  (600, 60000, 63, 11, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Klang - Toxic - TM06
  (600, 60000, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Klang - Hidden Power - TM10
  (600, 60000, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Klang - Hyper Beam - TM15
  (600, 60000, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 21),
  -- Klang - Protect - TM17
  (600, 60000, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Klang - Frustration - TM21
  (600, 60000, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 23),
  -- Klang - Thunderbolt - TM24
  (600, 60000, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 24),
  -- Klang - Return - TM27
  (600, 60000, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Klang - Double Team - TM32
  (600, 60000, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Klang - Sandstorm - TM37
  (600, 60000, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 27),
  -- Klang - Facade - TM42
  (600, 60000, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 28),
  -- Klang - Rest - TM44
  (600, 60000, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 29),
  -- Klang - Round - TM48
  (600, 60000, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 30),
  -- Klang - Charge Beam - TM57
  (600, 60000, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 31),
  -- Klang - Rock Polish - TM69
  (600, 60000, 397, 11, NULL, 2, NULL, NULL, 11002069, NULL, 32),
  -- Klang - Volt Switch - TM72
  (600, 60000, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 33),
  -- Klang - Thunder Wave - TM73
  (600, 60000, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 34),
  -- Klang - Swagger - TM87
  (600, 60000, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 35),
  -- Klang - Substitute - TM90
  (600, 60000, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 36),
  -- Klang - Flash Cannon - TM91
  (600, 60000, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 37),
  -- Klang - Wild Charge - TM93
  (600, 60000, 528, 11, NULL, 2, NULL, NULL, 11002093, NULL, 38),
  -- Klang - Rock Smash - TM94
  (600, 60000, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 39);
