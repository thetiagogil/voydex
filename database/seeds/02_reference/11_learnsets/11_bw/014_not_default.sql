-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation V Pokémon learnset raw pages, using Black / White
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii Black / White Pokedex learnset pages, Serebii Black / White
-- Move Tutor pages, and PokemonDB Generation 5 Black / White learnset pages.
-- Migration source: generated from source-verified Voydex audit tooling.
-- Source names and source caveats remain in SQL comments/docs only.
-- Correction: legendary and mythical rows are checked against each game's own
-- data (PKHeX learnset and personal tables); see docs/database/reference-data.md.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Black / White
-- Pokémon: not-default forms
-- Rows: 619
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
  -- Deoxys (Attack) - Leer - Level 1
  (386, 38601, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Attack) - Wrap - Level 1
  (386, 38601, 35, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Attack) - Night Shade - Level 9
  (386, 38601, 101, 11, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Deoxys (Attack) - Teleport - Level 17
  (386, 38601, 100, 11, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Deoxys (Attack) - Taunt - Level 25
  (386, 38601, 269, 11, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Deoxys (Attack) - Pursuit - Level 33
  (386, 38601, 228, 11, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Deoxys (Attack) - Psychic - Level 41
  (386, 38601, 94, 11, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Deoxys (Attack) - Superpower - Level 49
  (386, 38601, 276, 11, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Deoxys (Attack) - Psycho Shift - Level 57
  (386, 38601, 375, 11, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Deoxys (Attack) - Zen Headbutt - Level 65
  (386, 38601, 428, 11, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Deoxys (Attack) - Cosmic Power - Level 73
  (386, 38601, 322, 11, NULL, 1, 73, NULL, NULL, NULL, 11),
  -- Deoxys (Attack) - Zap Cannon - Level 81
  (386, 38601, 192, 11, NULL, 1, 81, NULL, NULL, NULL, 12),
  -- Deoxys (Attack) - Psycho Boost - Level 89
  (386, 38601, 354, 11, NULL, 1, 89, NULL, NULL, NULL, 13),
  -- Deoxys (Attack) - Hyper Beam - Level 97
  (386, 38601, 63, 11, NULL, 1, 97, NULL, NULL, NULL, 14),
  -- Deoxys (Attack) - Psyshock - TM03
  (386, 38601, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 15),
  -- Deoxys (Attack) - Calm Mind - TM04
  (386, 38601, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 16),
  -- Deoxys (Attack) - Toxic - TM06
  (386, 38601, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Deoxys (Attack) - Hidden Power - TM10
  (386, 38601, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Deoxys (Attack) - Sunny Day - TM11
  (386, 38601, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Deoxys (Attack) - Taunt - TM12
  (386, 38601, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 20),
  -- Deoxys (Attack) - Ice Beam - TM13
  (386, 38601, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 21),
  -- Deoxys (Attack) - Hyper Beam - TM15
  (386, 38601, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Deoxys (Attack) - Light Screen - TM16
  (386, 38601, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 23),
  -- Deoxys (Attack) - Protect - TM17
  (386, 38601, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Deoxys (Attack) - Rain Dance - TM18
  (386, 38601, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Deoxys (Attack) - Telekinesis - TM19
  (386, 38601, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 26),
  -- Deoxys (Attack) - Safeguard - TM20
  (386, 38601, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 27),
  -- Deoxys (Attack) - Frustration - TM21
  (386, 38601, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Deoxys (Attack) - Solar Beam - TM22
  (386, 38601, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 29),
  -- Deoxys (Attack) - Thunderbolt - TM24
  (386, 38601, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 30),
  -- Deoxys (Attack) - Thunder - TM25
  (386, 38601, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 31),
  -- Deoxys (Attack) - Return - TM27
  (386, 38601, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 32),
  -- Deoxys (Attack) - Psychic - TM29
  (386, 38601, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 33),
  -- Deoxys (Attack) - Shadow Ball - TM30
  (386, 38601, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 34),
  -- Deoxys (Attack) - Brick Break - TM31
  (386, 38601, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 35),
  -- Deoxys (Attack) - Double Team - TM32
  (386, 38601, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 36),
  -- Deoxys (Attack) - Reflect - TM33
  (386, 38601, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 37),
  -- Deoxys (Attack) - Rock Tomb - TM39
  (386, 38601, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 38),
  -- Deoxys (Attack) - Aerial Ace - TM40
  (386, 38601, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 39),
  -- Deoxys (Attack) - Torment - TM41
  (386, 38601, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 40),
  -- Deoxys (Attack) - Facade - TM42
  (386, 38601, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 41),
  -- Deoxys (Attack) - Rest - TM44
  (386, 38601, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 42),
  -- Deoxys (Attack) - Low Sweep - TM47
  (386, 38601, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 43),
  -- Deoxys (Attack) - Round - TM48
  (386, 38601, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 44),
  -- Deoxys (Attack) - Ally Switch - TM51
  (386, 38601, 502, 11, NULL, 2, NULL, NULL, 11002051, NULL, 45),
  -- Deoxys (Attack) - Focus Blast - TM52
  (386, 38601, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 46),
  -- Deoxys (Attack) - Energy Ball - TM53
  (386, 38601, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 47),
  -- Deoxys (Attack) - Fling - TM56
  (386, 38601, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 48),
  -- Deoxys (Attack) - Charge Beam - TM57
  (386, 38601, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 49),
  -- Deoxys (Attack) - Giga Impact - TM68
  (386, 38601, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 50),
  -- Deoxys (Attack) - Flash - TM70
  (386, 38601, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 51),
  -- Deoxys (Attack) - Thunder Wave - TM73
  (386, 38601, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 52),
  -- Deoxys (Attack) - Psych Up - TM77
  (386, 38601, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 53),
  -- Deoxys (Attack) - Rock Slide - TM80
  (386, 38601, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 54),
  -- Deoxys (Attack) - Poison Jab - TM84
  (386, 38601, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 55),
  -- Deoxys (Attack) - Dream Eater - TM85
  (386, 38601, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 56),
  -- Deoxys (Attack) - Grass Knot - TM86
  (386, 38601, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 57),
  -- Deoxys (Attack) - Swagger - TM87
  (386, 38601, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 58),
  -- Deoxys (Attack) - Substitute - TM90
  (386, 38601, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 59),
  -- Deoxys (Attack) - Flash Cannon - TM91
  (386, 38601, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 60),
  -- Deoxys (Attack) - Trick Room - TM92
  (386, 38601, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 61),
  -- Deoxys (Attack) - Rock Smash - TM94
  (386, 38601, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 62),
  -- Deoxys (Attack) - Cut - HM01
  (386, 38601, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 63),
  -- Deoxys (Attack) - Strength - HM04
  (386, 38601, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 64),
  -- Deoxys (Defense) - Leer - Level 1
  (386, 38602, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Defense) - Wrap - Level 1
  (386, 38602, 35, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Defense) - Night Shade - Level 9
  (386, 38602, 101, 11, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Deoxys (Defense) - Teleport - Level 17
  (386, 38602, 100, 11, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Deoxys (Defense) - Knock Off - Level 25
  (386, 38602, 282, 11, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Deoxys (Defense) - Spikes - Level 33
  (386, 38602, 191, 11, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Deoxys (Defense) - Psychic - Level 41
  (386, 38602, 94, 11, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Deoxys (Defense) - Snatch - Level 49
  (386, 38602, 289, 11, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Deoxys (Defense) - Psycho Shift - Level 57
  (386, 38602, 375, 11, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Deoxys (Defense) - Zen Headbutt - Level 65
  (386, 38602, 428, 11, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Deoxys (Defense) - Iron Defense - Level 73
  (386, 38602, 334, 11, NULL, 1, 73, NULL, NULL, NULL, 11),
  -- Deoxys (Defense) - Amnesia - Level 73
  (386, 38602, 133, 11, NULL, 1, 73, NULL, NULL, NULL, 12),
  -- Deoxys (Defense) - Recover - Level 81
  (386, 38602, 105, 11, NULL, 1, 81, NULL, NULL, NULL, 13),
  -- Deoxys (Defense) - Psycho Boost - Level 89
  (386, 38602, 354, 11, NULL, 1, 89, NULL, NULL, NULL, 14),
  -- Deoxys (Defense) - Counter - Level 97
  (386, 38602, 68, 11, NULL, 1, 97, NULL, NULL, NULL, 15),
  -- Deoxys (Defense) - Mirror Coat - Level 97
  (386, 38602, 243, 11, NULL, 1, 97, NULL, NULL, NULL, 16),
  -- Deoxys (Defense) - Psyshock - TM03
  (386, 38602, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 17),
  -- Deoxys (Defense) - Calm Mind - TM04
  (386, 38602, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 18),
  -- Deoxys (Defense) - Toxic - TM06
  (386, 38602, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 19),
  -- Deoxys (Defense) - Hidden Power - TM10
  (386, 38602, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 20),
  -- Deoxys (Defense) - Sunny Day - TM11
  (386, 38602, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 21),
  -- Deoxys (Defense) - Taunt - TM12
  (386, 38602, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 22),
  -- Deoxys (Defense) - Ice Beam - TM13
  (386, 38602, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 23),
  -- Deoxys (Defense) - Hyper Beam - TM15
  (386, 38602, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 24),
  -- Deoxys (Defense) - Light Screen - TM16
  (386, 38602, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 25),
  -- Deoxys (Defense) - Protect - TM17
  (386, 38602, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 26),
  -- Deoxys (Defense) - Rain Dance - TM18
  (386, 38602, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 27),
  -- Deoxys (Defense) - Telekinesis - TM19
  (386, 38602, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 28),
  -- Deoxys (Defense) - Safeguard - TM20
  (386, 38602, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 29),
  -- Deoxys (Defense) - Frustration - TM21
  (386, 38602, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 30),
  -- Deoxys (Defense) - Solar Beam - TM22
  (386, 38602, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 31),
  -- Deoxys (Defense) - Thunderbolt - TM24
  (386, 38602, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 32),
  -- Deoxys (Defense) - Thunder - TM25
  (386, 38602, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 33),
  -- Deoxys (Defense) - Return - TM27
  (386, 38602, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 34),
  -- Deoxys (Defense) - Psychic - TM29
  (386, 38602, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 35),
  -- Deoxys (Defense) - Shadow Ball - TM30
  (386, 38602, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 36),
  -- Deoxys (Defense) - Brick Break - TM31
  (386, 38602, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 37),
  -- Deoxys (Defense) - Double Team - TM32
  (386, 38602, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 38),
  -- Deoxys (Defense) - Reflect - TM33
  (386, 38602, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 39),
  -- Deoxys (Defense) - Rock Tomb - TM39
  (386, 38602, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 40),
  -- Deoxys (Defense) - Aerial Ace - TM40
  (386, 38602, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 41),
  -- Deoxys (Defense) - Torment - TM41
  (386, 38602, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 42),
  -- Deoxys (Defense) - Facade - TM42
  (386, 38602, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 43),
  -- Deoxys (Defense) - Rest - TM44
  (386, 38602, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 44),
  -- Deoxys (Defense) - Low Sweep - TM47
  (386, 38602, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 45),
  -- Deoxys (Defense) - Round - TM48
  (386, 38602, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 46),
  -- Deoxys (Defense) - Ally Switch - TM51
  (386, 38602, 502, 11, NULL, 2, NULL, NULL, 11002051, NULL, 47),
  -- Deoxys (Defense) - Focus Blast - TM52
  (386, 38602, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 48),
  -- Deoxys (Defense) - Energy Ball - TM53
  (386, 38602, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 49),
  -- Deoxys (Defense) - Fling - TM56
  (386, 38602, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 50),
  -- Deoxys (Defense) - Charge Beam - TM57
  (386, 38602, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 51),
  -- Deoxys (Defense) - Giga Impact - TM68
  (386, 38602, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 52),
  -- Deoxys (Defense) - Flash - TM70
  (386, 38602, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 53),
  -- Deoxys (Defense) - Thunder Wave - TM73
  (386, 38602, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 54),
  -- Deoxys (Defense) - Psych Up - TM77
  (386, 38602, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 55),
  -- Deoxys (Defense) - Rock Slide - TM80
  (386, 38602, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 56),
  -- Deoxys (Defense) - Poison Jab - TM84
  (386, 38602, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 57),
  -- Deoxys (Defense) - Dream Eater - TM85
  (386, 38602, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 58),
  -- Deoxys (Defense) - Grass Knot - TM86
  (386, 38602, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 59),
  -- Deoxys (Defense) - Swagger - TM87
  (386, 38602, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 60),
  -- Deoxys (Defense) - Substitute - TM90
  (386, 38602, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 61),
  -- Deoxys (Defense) - Flash Cannon - TM91
  (386, 38602, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 62),
  -- Deoxys (Defense) - Trick Room - TM92
  (386, 38602, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 63),
  -- Deoxys (Defense) - Rock Smash - TM94
  (386, 38602, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 64),
  -- Deoxys (Defense) - Cut - HM01
  (386, 38602, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 65),
  -- Deoxys (Defense) - Strength - HM04
  (386, 38602, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 66),
  -- Deoxys (Speed) - Leer - Level 1
  (386, 38603, 43, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Speed) - Wrap - Level 1
  (386, 38603, 35, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Speed) - Night Shade - Level 9
  (386, 38603, 101, 11, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Deoxys (Speed) - Double Team - Level 17
  (386, 38603, 104, 11, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Deoxys (Speed) - Knock Off - Level 25
  (386, 38603, 282, 11, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Deoxys (Speed) - Pursuit - Level 33
  (386, 38603, 228, 11, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Deoxys (Speed) - Psychic - Level 41
  (386, 38603, 94, 11, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Deoxys (Speed) - Swift - Level 49
  (386, 38603, 129, 11, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Deoxys (Speed) - Psycho Shift - Level 57
  (386, 38603, 375, 11, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Deoxys (Speed) - Zen Headbutt - Level 65
  (386, 38603, 428, 11, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Deoxys (Speed) - Agility - Level 73
  (386, 38603, 97, 11, NULL, 1, 73, NULL, NULL, NULL, 11),
  -- Deoxys (Speed) - Recover - Level 81
  (386, 38603, 105, 11, NULL, 1, 81, NULL, NULL, NULL, 12),
  -- Deoxys (Speed) - Psycho Boost - Level 89
  (386, 38603, 354, 11, NULL, 1, 89, NULL, NULL, NULL, 13),
  -- Deoxys (Speed) - Extreme Speed - Level 97
  (386, 38603, 245, 11, NULL, 1, 97, NULL, NULL, NULL, 14),
  -- Deoxys (Speed) - Psyshock - TM03
  (386, 38603, 473, 11, NULL, 2, NULL, NULL, 11002003, NULL, 15),
  -- Deoxys (Speed) - Calm Mind - TM04
  (386, 38603, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 16),
  -- Deoxys (Speed) - Toxic - TM06
  (386, 38603, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Deoxys (Speed) - Hidden Power - TM10
  (386, 38603, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 18),
  -- Deoxys (Speed) - Sunny Day - TM11
  (386, 38603, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 19),
  -- Deoxys (Speed) - Taunt - TM12
  (386, 38603, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 20),
  -- Deoxys (Speed) - Ice Beam - TM13
  (386, 38603, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 21),
  -- Deoxys (Speed) - Hyper Beam - TM15
  (386, 38603, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 22),
  -- Deoxys (Speed) - Light Screen - TM16
  (386, 38603, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 23),
  -- Deoxys (Speed) - Protect - TM17
  (386, 38603, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 24),
  -- Deoxys (Speed) - Rain Dance - TM18
  (386, 38603, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 25),
  -- Deoxys (Speed) - Telekinesis - TM19
  (386, 38603, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 26),
  -- Deoxys (Speed) - Safeguard - TM20
  (386, 38603, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 27),
  -- Deoxys (Speed) - Frustration - TM21
  (386, 38603, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 28),
  -- Deoxys (Speed) - Solar Beam - TM22
  (386, 38603, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 29),
  -- Deoxys (Speed) - Thunderbolt - TM24
  (386, 38603, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 30),
  -- Deoxys (Speed) - Thunder - TM25
  (386, 38603, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 31),
  -- Deoxys (Speed) - Return - TM27
  (386, 38603, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 32),
  -- Deoxys (Speed) - Psychic - TM29
  (386, 38603, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 33),
  -- Deoxys (Speed) - Shadow Ball - TM30
  (386, 38603, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 34),
  -- Deoxys (Speed) - Brick Break - TM31
  (386, 38603, 280, 11, NULL, 2, NULL, NULL, 11002031, NULL, 35),
  -- Deoxys (Speed) - Double Team - TM32
  (386, 38603, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 36),
  -- Deoxys (Speed) - Reflect - TM33
  (386, 38603, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 37),
  -- Deoxys (Speed) - Rock Tomb - TM39
  (386, 38603, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 38),
  -- Deoxys (Speed) - Aerial Ace - TM40
  (386, 38603, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 39),
  -- Deoxys (Speed) - Torment - TM41
  (386, 38603, 259, 11, NULL, 2, NULL, NULL, 11002041, NULL, 40),
  -- Deoxys (Speed) - Facade - TM42
  (386, 38603, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 41),
  -- Deoxys (Speed) - Rest - TM44
  (386, 38603, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 42),
  -- Deoxys (Speed) - Low Sweep - TM47
  (386, 38603, 490, 11, NULL, 2, NULL, NULL, 11002047, NULL, 43),
  -- Deoxys (Speed) - Round - TM48
  (386, 38603, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 44),
  -- Deoxys (Speed) - Ally Switch - TM51
  (386, 38603, 502, 11, NULL, 2, NULL, NULL, 11002051, NULL, 45),
  -- Deoxys (Speed) - Focus Blast - TM52
  (386, 38603, 411, 11, NULL, 2, NULL, NULL, 11002052, NULL, 46),
  -- Deoxys (Speed) - Energy Ball - TM53
  (386, 38603, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 47),
  -- Deoxys (Speed) - Fling - TM56
  (386, 38603, 374, 11, NULL, 2, NULL, NULL, 11002056, NULL, 48),
  -- Deoxys (Speed) - Charge Beam - TM57
  (386, 38603, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 49),
  -- Deoxys (Speed) - Giga Impact - TM68
  (386, 38603, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 50),
  -- Deoxys (Speed) - Flash - TM70
  (386, 38603, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 51),
  -- Deoxys (Speed) - Thunder Wave - TM73
  (386, 38603, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 52),
  -- Deoxys (Speed) - Psych Up - TM77
  (386, 38603, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 53),
  -- Deoxys (Speed) - Rock Slide - TM80
  (386, 38603, 157, 11, NULL, 2, NULL, NULL, 11002080, NULL, 54),
  -- Deoxys (Speed) - Poison Jab - TM84
  (386, 38603, 398, 11, NULL, 2, NULL, NULL, 11002084, NULL, 55),
  -- Deoxys (Speed) - Dream Eater - TM85
  (386, 38603, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 56),
  -- Deoxys (Speed) - Grass Knot - TM86
  (386, 38603, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 57),
  -- Deoxys (Speed) - Swagger - TM87
  (386, 38603, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 58),
  -- Deoxys (Speed) - Substitute - TM90
  (386, 38603, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 59),
  -- Deoxys (Speed) - Flash Cannon - TM91
  (386, 38603, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 60),
  -- Deoxys (Speed) - Trick Room - TM92
  (386, 38603, 433, 11, NULL, 2, NULL, NULL, 11002092, NULL, 61),
  -- Deoxys (Speed) - Rock Smash - TM94
  (386, 38603, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 62),
  -- Deoxys (Speed) - Cut - HM01
  (386, 38603, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 63),
  -- Deoxys (Speed) - Strength - HM04
  (386, 38603, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 64),
  -- Wormadam (Sandy Cloak) - Tackle - Level 1
  (413, 41301, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam (Sandy Cloak) - Protect - Level 10
  (413, 41301, 182, 11, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Wormadam (Sandy Cloak) - Bug Bite - Level 15
  (413, 41301, 450, 11, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Wormadam (Sandy Cloak) - Hidden Power - Level 20
  (413, 41301, 237, 11, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Wormadam (Sandy Cloak) - Confusion - Level 23
  (413, 41301, 93, 11, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Wormadam (Sandy Cloak) - Rock Blast - Level 26
  (413, 41301, 350, 11, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Wormadam (Sandy Cloak) - Harden - Level 29
  (413, 41301, 106, 11, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Wormadam (Sandy Cloak) - Psybeam - Level 32
  (413, 41301, 60, 11, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Wormadam (Sandy Cloak) - Captivate - Level 35
  (413, 41301, 445, 11, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Wormadam (Sandy Cloak) - Flail - Level 38
  (413, 41301, 175, 11, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Wormadam (Sandy Cloak) - Attract - Level 41
  (413, 41301, 213, 11, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Wormadam (Sandy Cloak) - Psychic - Level 44
  (413, 41301, 94, 11, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Wormadam (Sandy Cloak) - Fissure - Level 47
  (413, 41301, 90, 11, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Wormadam (Trash Cloak) - Tackle - Level 1
  (413, 41302, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam (Trash Cloak) - Protect - Level 10
  (413, 41302, 182, 11, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Wormadam (Trash Cloak) - Bug Bite - Level 15
  (413, 41302, 450, 11, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Wormadam (Trash Cloak) - Hidden Power - Level 20
  (413, 41302, 237, 11, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Wormadam (Trash Cloak) - Confusion - Level 23
  (413, 41302, 93, 11, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Wormadam (Trash Cloak) - Mirror Shot - Level 26
  (413, 41302, 429, 11, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Wormadam (Trash Cloak) - Metal Sound - Level 29
  (413, 41302, 319, 11, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Wormadam (Trash Cloak) - Psybeam - Level 32
  (413, 41302, 60, 11, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Wormadam (Trash Cloak) - Captivate - Level 35
  (413, 41302, 445, 11, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Wormadam (Trash Cloak) - Flail - Level 38
  (413, 41302, 175, 11, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Wormadam (Trash Cloak) - Attract - Level 41
  (413, 41302, 213, 11, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Wormadam (Trash Cloak) - Psychic - Level 44
  (413, 41302, 94, 11, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Wormadam (Trash Cloak) - Iron Head - Level 47
  (413, 41302, 442, 11, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Wormadam (Sandy Cloak) - Toxic - TM06
  (413, 41301, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 14),
  -- Wormadam (Sandy Cloak) - Venoshock - TM09
  (413, 41301, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 15),
  -- Wormadam (Sandy Cloak) - Hidden Power - TM10
  (413, 41301, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Wormadam (Sandy Cloak) - Sunny Day - TM11
  (413, 41301, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Wormadam (Sandy Cloak) - Hyper Beam - TM15
  (413, 41301, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 18),
  -- Wormadam (Sandy Cloak) - Protect - TM17
  (413, 41301, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Wormadam (Sandy Cloak) - Rain Dance - TM18
  (413, 41301, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 20),
  -- Wormadam (Sandy Cloak) - Safeguard - TM20
  (413, 41301, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 21),
  -- Wormadam (Sandy Cloak) - Frustration - TM21
  (413, 41301, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Wormadam (Sandy Cloak) - Earthquake - TM26
  (413, 41301, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 23),
  -- Wormadam (Sandy Cloak) - Return - TM27
  (413, 41301, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 24),
  -- Wormadam (Sandy Cloak) - Dig - TM28
  (413, 41301, 91, 11, NULL, 2, NULL, NULL, 11002028, NULL, 25),
  -- Wormadam (Sandy Cloak) - Psychic - TM29
  (413, 41301, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 26),
  -- Wormadam (Sandy Cloak) - Shadow Ball - TM30
  (413, 41301, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 27),
  -- Wormadam (Sandy Cloak) - Double Team - TM32
  (413, 41301, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 28),
  -- Wormadam (Sandy Cloak) - Sandstorm - TM37
  (413, 41301, 201, 11, NULL, 2, NULL, NULL, 11002037, NULL, 29),
  -- Wormadam (Sandy Cloak) - Rock Tomb - TM39
  (413, 41301, 317, 11, NULL, 2, NULL, NULL, 11002039, NULL, 30),
  -- Wormadam (Sandy Cloak) - Facade - TM42
  (413, 41301, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 31),
  -- Wormadam (Sandy Cloak) - Rest - TM44
  (413, 41301, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 32),
  -- Wormadam (Sandy Cloak) - Attract - TM45
  (413, 41301, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 33),
  -- Wormadam (Sandy Cloak) - Thief - TM46
  (413, 41301, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 34),
  -- Wormadam (Sandy Cloak) - Round - TM48
  (413, 41301, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 35),
  -- Wormadam (Sandy Cloak) - Giga Impact - TM68
  (413, 41301, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 36),
  -- Wormadam (Sandy Cloak) - Flash - TM70
  (413, 41301, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 37),
  -- Wormadam (Sandy Cloak) - Struggle Bug - TM76
  (413, 41301, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 38),
  -- Wormadam (Sandy Cloak) - Psych Up - TM77
  (413, 41301, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 39),
  -- Wormadam (Sandy Cloak) - Bulldoze - TM78
  (413, 41301, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 40),
  -- Wormadam (Sandy Cloak) - Dream Eater - TM85
  (413, 41301, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 41),
  -- Wormadam (Sandy Cloak) - Swagger - TM87
  (413, 41301, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 42),
  -- Wormadam (Sandy Cloak) - Substitute - TM90
  (413, 41301, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 43),
  -- Wormadam (Trash Cloak) - Toxic - TM06
  (413, 41302, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 14),
  -- Wormadam (Trash Cloak) - Venoshock - TM09
  (413, 41302, 474, 11, NULL, 2, NULL, NULL, 11002009, NULL, 15),
  -- Wormadam (Trash Cloak) - Hidden Power - TM10
  (413, 41302, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Wormadam (Trash Cloak) - Sunny Day - TM11
  (413, 41302, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Wormadam (Trash Cloak) - Hyper Beam - TM15
  (413, 41302, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 18),
  -- Wormadam (Trash Cloak) - Protect - TM17
  (413, 41302, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Wormadam (Trash Cloak) - Rain Dance - TM18
  (413, 41302, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 20),
  -- Wormadam (Trash Cloak) - Safeguard - TM20
  (413, 41302, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 21),
  -- Wormadam (Trash Cloak) - Frustration - TM21
  (413, 41302, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Wormadam (Trash Cloak) - Return - TM27
  (413, 41302, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 23),
  -- Wormadam (Trash Cloak) - Psychic - TM29
  (413, 41302, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 24),
  -- Wormadam (Trash Cloak) - Shadow Ball - TM30
  (413, 41302, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 25),
  -- Wormadam (Trash Cloak) - Double Team - TM32
  (413, 41302, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Wormadam (Trash Cloak) - Facade - TM42
  (413, 41302, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 27),
  -- Wormadam (Trash Cloak) - Rest - TM44
  (413, 41302, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 28),
  -- Wormadam (Trash Cloak) - Attract - TM45
  (413, 41302, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 29),
  -- Wormadam (Trash Cloak) - Thief - TM46
  (413, 41302, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 30),
  -- Wormadam (Trash Cloak) - Round - TM48
  (413, 41302, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 31),
  -- Wormadam (Trash Cloak) - Giga Impact - TM68
  (413, 41302, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 32),
  -- Wormadam (Trash Cloak) - Flash - TM70
  (413, 41302, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 33),
  -- Wormadam (Trash Cloak) - Gyro Ball - TM74
  (413, 41302, 360, 11, NULL, 2, NULL, NULL, 11002074, NULL, 34),
  -- Wormadam (Trash Cloak) - Struggle Bug - TM76
  (413, 41302, 522, 11, NULL, 2, NULL, NULL, 11002076, NULL, 35),
  -- Wormadam (Trash Cloak) - Psych Up - TM77
  (413, 41302, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 36),
  -- Wormadam (Trash Cloak) - Dream Eater - TM85
  (413, 41302, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 37),
  -- Wormadam (Trash Cloak) - Swagger - TM87
  (413, 41302, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 38),
  -- Wormadam (Trash Cloak) - Substitute - TM90
  (413, 41302, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 39),
  -- Wormadam (Trash Cloak) - Flash Cannon - TM91
  (413, 41302, 430, 11, NULL, 2, NULL, NULL, 11002091, NULL, 40),
  -- Rotom (Heat) - Trick - Level 1
  (479, 47901, 271, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Wash) - Trick - Level 1
  (479, 47902, 271, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Frost) - Trick - Level 1
  (479, 47903, 271, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Fan) - Trick - Level 1
  (479, 47904, 271, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Mow) - Trick - Level 1
  (479, 47905, 271, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Heat) - Astonish - Level 1
  (479, 47901, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Wash) - Astonish - Level 1
  (479, 47902, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Frost) - Astonish - Level 1
  (479, 47903, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Fan) - Astonish - Level 1
  (479, 47904, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Mow) - Astonish - Level 1
  (479, 47905, 310, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Heat) - Thunder Wave - Level 1
  (479, 47901, 86, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Wash) - Thunder Wave - Level 1
  (479, 47902, 86, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Frost) - Thunder Wave - Level 1
  (479, 47903, 86, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Fan) - Thunder Wave - Level 1
  (479, 47904, 86, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Mow) - Thunder Wave - Level 1
  (479, 47905, 86, 11, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Heat) - Thunder Shock - Level 1
  (479, 47901, 84, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Wash) - Thunder Shock - Level 1
  (479, 47902, 84, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Frost) - Thunder Shock - Level 1
  (479, 47903, 84, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Fan) - Thunder Shock - Level 1
  (479, 47904, 84, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Mow) - Thunder Shock - Level 1
  (479, 47905, 84, 11, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Heat) - Confuse Ray - Level 1
  (479, 47901, 109, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Wash) - Confuse Ray - Level 1
  (479, 47902, 109, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Frost) - Confuse Ray - Level 1
  (479, 47903, 109, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Fan) - Confuse Ray - Level 1
  (479, 47904, 109, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Mow) - Confuse Ray - Level 1
  (479, 47905, 109, 11, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Heat) - Uproar - Level 8
  (479, 47901, 253, 11, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Rotom (Wash) - Uproar - Level 8
  (479, 47902, 253, 11, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Rotom (Frost) - Uproar - Level 8
  (479, 47903, 253, 11, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Rotom (Fan) - Uproar - Level 8
  (479, 47904, 253, 11, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Rotom (Mow) - Uproar - Level 8
  (479, 47905, 253, 11, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Rotom (Heat) - Double Team - Level 15
  (479, 47901, 104, 11, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rotom (Wash) - Double Team - Level 15
  (479, 47902, 104, 11, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rotom (Frost) - Double Team - Level 15
  (479, 47903, 104, 11, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rotom (Fan) - Double Team - Level 15
  (479, 47904, 104, 11, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rotom (Mow) - Double Team - Level 15
  (479, 47905, 104, 11, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rotom (Heat) - Shock Wave - Level 22
  (479, 47901, 351, 11, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Rotom (Wash) - Shock Wave - Level 22
  (479, 47902, 351, 11, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Rotom (Frost) - Shock Wave - Level 22
  (479, 47903, 351, 11, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Rotom (Fan) - Shock Wave - Level 22
  (479, 47904, 351, 11, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Rotom (Mow) - Shock Wave - Level 22
  (479, 47905, 351, 11, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Rotom (Heat) - Ominous Wind - Level 29
  (479, 47901, 466, 11, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rotom (Wash) - Ominous Wind - Level 29
  (479, 47902, 466, 11, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rotom (Frost) - Ominous Wind - Level 29
  (479, 47903, 466, 11, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rotom (Fan) - Ominous Wind - Level 29
  (479, 47904, 466, 11, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rotom (Mow) - Ominous Wind - Level 29
  (479, 47905, 466, 11, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rotom (Heat) - Substitute - Level 36
  (479, 47901, 164, 11, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rotom (Wash) - Substitute - Level 36
  (479, 47902, 164, 11, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rotom (Frost) - Substitute - Level 36
  (479, 47903, 164, 11, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rotom (Fan) - Substitute - Level 36
  (479, 47904, 164, 11, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rotom (Mow) - Substitute - Level 36
  (479, 47905, 164, 11, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rotom (Heat) - Electro Ball - Level 43
  (479, 47901, 486, 11, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rotom (Wash) - Electro Ball - Level 43
  (479, 47902, 486, 11, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rotom (Frost) - Electro Ball - Level 43
  (479, 47903, 486, 11, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rotom (Fan) - Electro Ball - Level 43
  (479, 47904, 486, 11, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rotom (Mow) - Electro Ball - Level 43
  (479, 47905, 486, 11, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rotom (Heat) - Hex - Level 50
  (479, 47901, 506, 11, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Wash) - Hex - Level 50
  (479, 47902, 506, 11, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Frost) - Hex - Level 50
  (479, 47903, 506, 11, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Fan) - Hex - Level 50
  (479, 47904, 506, 11, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Mow) - Hex - Level 50
  (479, 47905, 506, 11, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Heat) - Charge - Level 57
  (479, 47901, 268, 11, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Rotom (Wash) - Charge - Level 57
  (479, 47902, 268, 11, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Rotom (Frost) - Charge - Level 57
  (479, 47903, 268, 11, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Rotom (Fan) - Charge - Level 57
  (479, 47904, 268, 11, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Rotom (Mow) - Charge - Level 57
  (479, 47905, 268, 11, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Rotom (Heat) - Discharge - Level 64
  (479, 47901, 435, 11, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Rotom (Wash) - Discharge - Level 64
  (479, 47902, 435, 11, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Rotom (Frost) - Discharge - Level 64
  (479, 47903, 435, 11, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Rotom (Fan) - Discharge - Level 64
  (479, 47904, 435, 11, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Rotom (Mow) - Discharge - Level 64
  (479, 47905, 435, 11, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Rotom (Heat) - Toxic - TM06
  (479, 47901, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Rotom (Wash) - Toxic - TM06
  (479, 47902, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Rotom (Frost) - Toxic - TM06
  (479, 47903, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Rotom (Fan) - Toxic - TM06
  (479, 47904, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Rotom (Mow) - Toxic - TM06
  (479, 47905, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 15),
  -- Rotom (Heat) - Hidden Power - TM10
  (479, 47901, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Rotom (Wash) - Hidden Power - TM10
  (479, 47902, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Rotom (Frost) - Hidden Power - TM10
  (479, 47903, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Rotom (Fan) - Hidden Power - TM10
  (479, 47904, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Rotom (Mow) - Hidden Power - TM10
  (479, 47905, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 16),
  -- Rotom (Heat) - Sunny Day - TM11
  (479, 47901, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Rotom (Wash) - Sunny Day - TM11
  (479, 47902, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Rotom (Frost) - Sunny Day - TM11
  (479, 47903, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Rotom (Fan) - Sunny Day - TM11
  (479, 47904, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Rotom (Mow) - Sunny Day - TM11
  (479, 47905, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 17),
  -- Rotom (Heat) - Light Screen - TM16
  (479, 47901, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 18),
  -- Rotom (Wash) - Light Screen - TM16
  (479, 47902, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 18),
  -- Rotom (Frost) - Light Screen - TM16
  (479, 47903, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 18),
  -- Rotom (Fan) - Light Screen - TM16
  (479, 47904, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 18),
  -- Rotom (Mow) - Light Screen - TM16
  (479, 47905, 113, 11, NULL, 2, NULL, NULL, 11002016, NULL, 18),
  -- Rotom (Heat) - Protect - TM17
  (479, 47901, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Rotom (Wash) - Protect - TM17
  (479, 47902, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Rotom (Frost) - Protect - TM17
  (479, 47903, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Rotom (Fan) - Protect - TM17
  (479, 47904, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Rotom (Mow) - Protect - TM17
  (479, 47905, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 19),
  -- Rotom (Heat) - Rain Dance - TM18
  (479, 47901, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 20),
  -- Rotom (Wash) - Rain Dance - TM18
  (479, 47902, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 20),
  -- Rotom (Frost) - Rain Dance - TM18
  (479, 47903, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 20),
  -- Rotom (Fan) - Rain Dance - TM18
  (479, 47904, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 20),
  -- Rotom (Mow) - Rain Dance - TM18
  (479, 47905, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 20),
  -- Rotom (Heat) - Telekinesis - TM19
  (479, 47901, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 21),
  -- Rotom (Wash) - Telekinesis - TM19
  (479, 47902, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 21),
  -- Rotom (Frost) - Telekinesis - TM19
  (479, 47903, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 21),
  -- Rotom (Fan) - Telekinesis - TM19
  (479, 47904, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 21),
  -- Rotom (Mow) - Telekinesis - TM19
  (479, 47905, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 21),
  -- Rotom (Heat) - Frustration - TM21
  (479, 47901, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Rotom (Wash) - Frustration - TM21
  (479, 47902, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Rotom (Frost) - Frustration - TM21
  (479, 47903, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Rotom (Fan) - Frustration - TM21
  (479, 47904, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Rotom (Mow) - Frustration - TM21
  (479, 47905, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 22),
  -- Rotom (Heat) - Thunderbolt - TM24
  (479, 47901, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 23),
  -- Rotom (Wash) - Thunderbolt - TM24
  (479, 47902, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 23),
  -- Rotom (Frost) - Thunderbolt - TM24
  (479, 47903, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 23),
  -- Rotom (Fan) - Thunderbolt - TM24
  (479, 47904, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 23),
  -- Rotom (Mow) - Thunderbolt - TM24
  (479, 47905, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 23),
  -- Rotom (Heat) - Thunder - TM25
  (479, 47901, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 24),
  -- Rotom (Wash) - Thunder - TM25
  (479, 47902, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 24),
  -- Rotom (Frost) - Thunder - TM25
  (479, 47903, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 24),
  -- Rotom (Fan) - Thunder - TM25
  (479, 47904, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 24),
  -- Rotom (Mow) - Thunder - TM25
  (479, 47905, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 24),
  -- Rotom (Heat) - Return - TM27
  (479, 47901, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Rotom (Wash) - Return - TM27
  (479, 47902, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Rotom (Frost) - Return - TM27
  (479, 47903, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Rotom (Fan) - Return - TM27
  (479, 47904, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Rotom (Mow) - Return - TM27
  (479, 47905, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Rotom (Heat) - Shadow Ball - TM30
  (479, 47901, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 26),
  -- Rotom (Wash) - Shadow Ball - TM30
  (479, 47902, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 26),
  -- Rotom (Frost) - Shadow Ball - TM30
  (479, 47903, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 26),
  -- Rotom (Fan) - Shadow Ball - TM30
  (479, 47904, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 26),
  -- Rotom (Mow) - Shadow Ball - TM30
  (479, 47905, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 26),
  -- Rotom (Heat) - Double Team - TM32
  (479, 47901, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Rotom (Wash) - Double Team - TM32
  (479, 47902, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Rotom (Frost) - Double Team - TM32
  (479, 47903, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Rotom (Fan) - Double Team - TM32
  (479, 47904, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Rotom (Mow) - Double Team - TM32
  (479, 47905, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 27),
  -- Rotom (Heat) - Reflect - TM33
  (479, 47901, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 28),
  -- Rotom (Wash) - Reflect - TM33
  (479, 47902, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 28),
  -- Rotom (Frost) - Reflect - TM33
  (479, 47903, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 28),
  -- Rotom (Fan) - Reflect - TM33
  (479, 47904, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 28),
  -- Rotom (Mow) - Reflect - TM33
  (479, 47905, 115, 11, NULL, 2, NULL, NULL, 11002033, NULL, 28),
  -- Rotom (Heat) - Facade - TM42
  (479, 47901, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 29),
  -- Rotom (Wash) - Facade - TM42
  (479, 47902, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 29),
  -- Rotom (Frost) - Facade - TM42
  (479, 47903, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 29),
  -- Rotom (Fan) - Facade - TM42
  (479, 47904, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 29),
  -- Rotom (Mow) - Facade - TM42
  (479, 47905, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 29),
  -- Rotom (Heat) - Rest - TM44
  (479, 47901, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 30),
  -- Rotom (Wash) - Rest - TM44
  (479, 47902, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 30),
  -- Rotom (Frost) - Rest - TM44
  (479, 47903, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 30),
  -- Rotom (Fan) - Rest - TM44
  (479, 47904, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 30),
  -- Rotom (Mow) - Rest - TM44
  (479, 47905, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 30),
  -- Rotom (Heat) - Thief - TM46
  (479, 47901, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 31),
  -- Rotom (Wash) - Thief - TM46
  (479, 47902, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 31),
  -- Rotom (Frost) - Thief - TM46
  (479, 47903, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 31),
  -- Rotom (Fan) - Thief - TM46
  (479, 47904, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 31),
  -- Rotom (Mow) - Thief - TM46
  (479, 47905, 168, 11, NULL, 2, NULL, NULL, 11002046, NULL, 31),
  -- Rotom (Heat) - Round - TM48
  (479, 47901, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Rotom (Wash) - Round - TM48
  (479, 47902, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Rotom (Frost) - Round - TM48
  (479, 47903, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Rotom (Fan) - Round - TM48
  (479, 47904, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Rotom (Mow) - Round - TM48
  (479, 47905, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 32),
  -- Rotom (Heat) - Charge Beam - TM57
  (479, 47901, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 33),
  -- Rotom (Wash) - Charge Beam - TM57
  (479, 47902, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 33),
  -- Rotom (Frost) - Charge Beam - TM57
  (479, 47903, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 33),
  -- Rotom (Fan) - Charge Beam - TM57
  (479, 47904, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 33),
  -- Rotom (Mow) - Charge Beam - TM57
  (479, 47905, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 33),
  -- Rotom (Heat) - Will-O-Wisp - TM61
  (479, 47901, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 34),
  -- Rotom (Wash) - Will-O-Wisp - TM61
  (479, 47902, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 34),
  -- Rotom (Frost) - Will-O-Wisp - TM61
  (479, 47903, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 34),
  -- Rotom (Fan) - Will-O-Wisp - TM61
  (479, 47904, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 34),
  -- Rotom (Mow) - Will-O-Wisp - TM61
  (479, 47905, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 34),
  -- Rotom (Heat) - Flash - TM70
  (479, 47901, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 35),
  -- Rotom (Wash) - Flash - TM70
  (479, 47902, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 35),
  -- Rotom (Frost) - Flash - TM70
  (479, 47903, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 35),
  -- Rotom (Fan) - Flash - TM70
  (479, 47904, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 35),
  -- Rotom (Mow) - Flash - TM70
  (479, 47905, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 35),
  -- Rotom (Heat) - Volt Switch - TM72
  (479, 47901, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 36),
  -- Rotom (Wash) - Volt Switch - TM72
  (479, 47902, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 36),
  -- Rotom (Frost) - Volt Switch - TM72
  (479, 47903, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 36),
  -- Rotom (Fan) - Volt Switch - TM72
  (479, 47904, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 36),
  -- Rotom (Mow) - Volt Switch - TM72
  (479, 47905, 521, 11, NULL, 2, NULL, NULL, 11002072, NULL, 36),
  -- Rotom (Heat) - Thunder Wave - TM73
  (479, 47901, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 37),
  -- Rotom (Wash) - Thunder Wave - TM73
  (479, 47902, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 37),
  -- Rotom (Frost) - Thunder Wave - TM73
  (479, 47903, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 37),
  -- Rotom (Fan) - Thunder Wave - TM73
  (479, 47904, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 37),
  -- Rotom (Mow) - Thunder Wave - TM73
  (479, 47905, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 37),
  -- Rotom (Heat) - Psych Up - TM77
  (479, 47901, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 38),
  -- Rotom (Wash) - Psych Up - TM77
  (479, 47902, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 38),
  -- Rotom (Frost) - Psych Up - TM77
  (479, 47903, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 38),
  -- Rotom (Fan) - Psych Up - TM77
  (479, 47904, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 38),
  -- Rotom (Mow) - Psych Up - TM77
  (479, 47905, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 38),
  -- Rotom (Heat) - Dream Eater - TM85
  (479, 47901, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 39),
  -- Rotom (Wash) - Dream Eater - TM85
  (479, 47902, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 39),
  -- Rotom (Frost) - Dream Eater - TM85
  (479, 47903, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 39),
  -- Rotom (Fan) - Dream Eater - TM85
  (479, 47904, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 39),
  -- Rotom (Mow) - Dream Eater - TM85
  (479, 47905, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 39),
  -- Rotom (Heat) - Swagger - TM87
  (479, 47901, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 40),
  -- Rotom (Wash) - Swagger - TM87
  (479, 47902, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 40),
  -- Rotom (Frost) - Swagger - TM87
  (479, 47903, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 40),
  -- Rotom (Fan) - Swagger - TM87
  (479, 47904, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 40),
  -- Rotom (Mow) - Swagger - TM87
  (479, 47905, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 40),
  -- Rotom (Heat) - Substitute - TM90
  (479, 47901, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 41),
  -- Rotom (Wash) - Substitute - TM90
  (479, 47902, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 41),
  -- Rotom (Frost) - Substitute - TM90
  (479, 47903, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 41),
  -- Rotom (Fan) - Substitute - TM90
  (479, 47904, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 41),
  -- Rotom (Mow) - Substitute - TM90
  (479, 47905, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 41),
  -- Giratina (Origin) - Dragon Breath - Level 1
  (487, 48701, 225, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Giratina (Origin) - Scary Face - Level 1
  (487, 48701, 184, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Giratina (Origin) - Ominous Wind - Level 6
  (487, 48701, 466, 11, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Giratina (Origin) - Ancient Power - Level 10
  (487, 48701, 246, 11, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Giratina (Origin) - Slash - Level 15
  (487, 48701, 163, 11, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Giratina (Origin) - Shadow Sneak - Level 19
  (487, 48701, 425, 11, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Giratina (Origin) - Destiny Bond - Level 24
  (487, 48701, 194, 11, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Giratina (Origin) - Dragon Claw - Level 28
  (487, 48701, 337, 11, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Giratina (Origin) - Earth Power - Level 33
  (487, 48701, 414, 11, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Giratina (Origin) - Aura Sphere - Level 37
  (487, 48701, 396, 11, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Giratina (Origin) - Shadow Claw - Level 42
  (487, 48701, 421, 11, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Giratina (Origin) - Shadow Force - Level 46
  (487, 48701, 467, 11, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Giratina (Origin) - Hex - Level 50
  (487, 48701, 506, 11, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Giratina (Origin) - Hone Claws - TM01
  (487, 48701, 468, 11, NULL, 2, NULL, NULL, 11002001, NULL, 14),
  -- Giratina (Origin) - Dragon Claw - TM02
  (487, 48701, 337, 11, NULL, 2, NULL, NULL, 11002002, NULL, 15),
  -- Giratina (Origin) - Calm Mind - TM04
  (487, 48701, 347, 11, NULL, 2, NULL, NULL, 11002004, NULL, 16),
  -- Giratina (Origin) - Roar - TM05
  (487, 48701, 46, 11, NULL, 2, NULL, NULL, 11002005, NULL, 17),
  -- Giratina (Origin) - Toxic - TM06
  (487, 48701, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 18),
  -- Giratina (Origin) - Hidden Power - TM10
  (487, 48701, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Giratina (Origin) - Sunny Day - TM11
  (487, 48701, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 20),
  -- Giratina (Origin) - Hyper Beam - TM15
  (487, 48701, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 21),
  -- Giratina (Origin) - Protect - TM17
  (487, 48701, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Giratina (Origin) - Rain Dance - TM18
  (487, 48701, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Giratina (Origin) - Telekinesis - TM19
  (487, 48701, 477, 11, NULL, 2, NULL, NULL, 11002019, NULL, 24),
  -- Giratina (Origin) - Safeguard - TM20
  (487, 48701, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 25),
  -- Giratina (Origin) - Frustration - TM21
  (487, 48701, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 26),
  -- Giratina (Origin) - Thunderbolt - TM24
  (487, 48701, 85, 11, NULL, 2, NULL, NULL, 11002024, NULL, 27),
  -- Giratina (Origin) - Thunder - TM25
  (487, 48701, 87, 11, NULL, 2, NULL, NULL, 11002025, NULL, 28),
  -- Giratina (Origin) - Earthquake - TM26
  (487, 48701, 89, 11, NULL, 2, NULL, NULL, 11002026, NULL, 29),
  -- Giratina (Origin) - Return - TM27
  (487, 48701, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 30),
  -- Giratina (Origin) - Psychic - TM29
  (487, 48701, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 31),
  -- Giratina (Origin) - Shadow Ball - TM30
  (487, 48701, 247, 11, NULL, 2, NULL, NULL, 11002030, NULL, 32),
  -- Giratina (Origin) - Double Team - TM32
  (487, 48701, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 33),
  -- Giratina (Origin) - Aerial Ace - TM40
  (487, 48701, 332, 11, NULL, 2, NULL, NULL, 11002040, NULL, 34),
  -- Giratina (Origin) - Facade - TM42
  (487, 48701, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 35),
  -- Giratina (Origin) - Rest - TM44
  (487, 48701, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 36),
  -- Giratina (Origin) - Round - TM48
  (487, 48701, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 37),
  -- Giratina (Origin) - Echoed Voice - TM49
  (487, 48701, 497, 11, NULL, 2, NULL, NULL, 11002049, NULL, 38),
  -- Giratina (Origin) - Energy Ball - TM53
  (487, 48701, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 39),
  -- Giratina (Origin) - Charge Beam - TM57
  (487, 48701, 451, 11, NULL, 2, NULL, NULL, 11002057, NULL, 40),
  -- Giratina (Origin) - Will-O-Wisp - TM61
  (487, 48701, 261, 11, NULL, 2, NULL, NULL, 11002061, NULL, 41),
  -- Giratina (Origin) - Shadow Claw - TM65
  (487, 48701, 421, 11, NULL, 2, NULL, NULL, 11002065, NULL, 42),
  -- Giratina (Origin) - Payback - TM66
  (487, 48701, 371, 11, NULL, 2, NULL, NULL, 11002066, NULL, 43),
  -- Giratina (Origin) - Giga Impact - TM68
  (487, 48701, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 44),
  -- Giratina (Origin) - Stone Edge - TM71
  (487, 48701, 444, 11, NULL, 2, NULL, NULL, 11002071, NULL, 45),
  -- Giratina (Origin) - Thunder Wave - TM73
  (487, 48701, 86, 11, NULL, 2, NULL, NULL, 11002073, NULL, 46),
  -- Giratina (Origin) - Psych Up - TM77
  (487, 48701, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 47),
  -- Giratina (Origin) - Bulldoze - TM78
  (487, 48701, 523, 11, NULL, 2, NULL, NULL, 11002078, NULL, 48),
  -- Giratina (Origin) - Dragon Tail - TM82
  (487, 48701, 525, 11, NULL, 2, NULL, NULL, 11002082, NULL, 49),
  -- Giratina (Origin) - Dream Eater - TM85
  (487, 48701, 138, 11, NULL, 2, NULL, NULL, 11002085, NULL, 50),
  -- Giratina (Origin) - Swagger - TM87
  (487, 48701, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 51),
  -- Giratina (Origin) - Substitute - TM90
  (487, 48701, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 52),
  -- Giratina (Origin) - Rock Smash - TM94
  (487, 48701, 249, 11, NULL, 2, NULL, NULL, 11002094, NULL, 53),
  -- Giratina (Origin) - Cut - HM01
  (487, 48701, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 54),
  -- Giratina (Origin) - Fly - HM02
  (487, 48701, 19, 11, NULL, 3, NULL, NULL, 11003002, NULL, 55),
  -- Giratina (Origin) - Strength - HM04
  (487, 48701, 70, 11, NULL, 3, NULL, NULL, 11003004, NULL, 56),
  -- Giratina (Origin) - Draco Meteor - Move Tutor
  (487, 48701, 434, 11, NULL, 6, NULL, NULL, NULL, 'Black / White Move Tutor.', 57),
  -- Shaymin (Sky) - Growth - Level 1
  (492, 49201, 74, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shaymin (Sky) - Magical Leaf - Level 10
  (492, 49201, 345, 11, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Shaymin (Sky) - Leech Seed - Level 19
  (492, 49201, 73, 11, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Shaymin (Sky) - Quick Attack - Level 28
  (492, 49201, 98, 11, NULL, 1, 28, NULL, NULL, NULL, 4),
  -- Shaymin (Sky) - Sweet Scent - Level 37
  (492, 49201, 230, 11, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Shaymin (Sky) - Natural Gift - Level 46
  (492, 49201, 363, 11, NULL, 1, 46, NULL, NULL, NULL, 6),
  -- Shaymin (Sky) - Worry Seed - Level 55
  (492, 49201, 388, 11, NULL, 1, 55, NULL, NULL, NULL, 7),
  -- Shaymin (Sky) - Air Slash - Level 64
  (492, 49201, 403, 11, NULL, 1, 64, NULL, NULL, NULL, 8),
  -- Shaymin (Sky) - Energy Ball - Level 73
  (492, 49201, 412, 11, NULL, 1, 73, NULL, NULL, NULL, 9),
  -- Shaymin (Sky) - Sweet Kiss - Level 82
  (492, 49201, 186, 11, NULL, 1, 82, NULL, NULL, NULL, 10),
  -- Shaymin (Sky) - Leaf Storm - Level 91
  (492, 49201, 437, 11, NULL, 1, 91, NULL, NULL, NULL, 11),
  -- Shaymin (Sky) - Seed Flare - Level 100
  (492, 49201, 465, 11, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Shaymin (Sky) - Toxic - TM06
  (492, 49201, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 13),
  -- Shaymin (Sky) - Hidden Power - TM10
  (492, 49201, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 14),
  -- Shaymin (Sky) - Sunny Day - TM11
  (492, 49201, 241, 11, NULL, 2, NULL, NULL, 11002011, NULL, 15),
  -- Shaymin (Sky) - Hyper Beam - TM15
  (492, 49201, 63, 11, NULL, 2, NULL, NULL, 11002015, NULL, 16),
  -- Shaymin (Sky) - Protect - TM17
  (492, 49201, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 17),
  -- Shaymin (Sky) - Safeguard - TM20
  (492, 49201, 219, 11, NULL, 2, NULL, NULL, 11002020, NULL, 18),
  -- Shaymin (Sky) - Frustration - TM21
  (492, 49201, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 19),
  -- Shaymin (Sky) - Solar Beam - TM22
  (492, 49201, 76, 11, NULL, 2, NULL, NULL, 11002022, NULL, 20),
  -- Shaymin (Sky) - Return - TM27
  (492, 49201, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 21),
  -- Shaymin (Sky) - Psychic - TM29
  (492, 49201, 94, 11, NULL, 2, NULL, NULL, 11002029, NULL, 22),
  -- Shaymin (Sky) - Double Team - TM32
  (492, 49201, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 23),
  -- Shaymin (Sky) - Facade - TM42
  (492, 49201, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 24),
  -- Shaymin (Sky) - Rest - TM44
  (492, 49201, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 25),
  -- Shaymin (Sky) - Round - TM48
  (492, 49201, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 26),
  -- Shaymin (Sky) - Energy Ball - TM53
  (492, 49201, 412, 11, NULL, 2, NULL, NULL, 11002053, NULL, 27),
  -- Shaymin (Sky) - Giga Impact - TM68
  (492, 49201, 416, 11, NULL, 2, NULL, NULL, 11002068, NULL, 28),
  -- Shaymin (Sky) - Flash - TM70
  (492, 49201, 148, 11, NULL, 2, NULL, NULL, 11002070, NULL, 29),
  -- Shaymin (Sky) - Swords Dance - TM75
  (492, 49201, 14, 11, NULL, 2, NULL, NULL, 11002075, NULL, 30),
  -- Shaymin (Sky) - Psych Up - TM77
  (492, 49201, 244, 11, NULL, 2, NULL, NULL, 11002077, NULL, 31),
  -- Shaymin (Sky) - Grass Knot - TM86
  (492, 49201, 447, 11, NULL, 2, NULL, NULL, 11002086, NULL, 32),
  -- Shaymin (Sky) - Swagger - TM87
  (492, 49201, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 33),
  -- Shaymin (Sky) - Substitute - TM90
  (492, 49201, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 34),
  -- Basculin (Blue-Striped) - Tackle - Level 1
  (550, 55001, 33, 11, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Basculin (Blue-Striped) - Water Gun - Level 1
  (550, 55001, 55, 11, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Basculin (Blue-Striped) - Uproar - Level 4
  (550, 55001, 253, 11, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Basculin (Blue-Striped) - Headbutt - Level 7
  (550, 55001, 29, 11, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Basculin (Blue-Striped) - Bite - Level 10
  (550, 55001, 44, 11, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Basculin (Blue-Striped) - Aqua Jet - Level 13
  (550, 55001, 453, 11, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Basculin (Blue-Striped) - Chip Away - Level 16
  (550, 55001, 498, 11, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Basculin (Blue-Striped) - Take Down - Level 20
  (550, 55001, 36, 11, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Basculin (Blue-Striped) - Crunch - Level 24
  (550, 55001, 242, 11, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Basculin (Blue-Striped) - Aqua Tail - Level 28
  (550, 55001, 401, 11, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Basculin (Blue-Striped) - Soak - Level 32
  (550, 55001, 487, 11, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Basculin (Blue-Striped) - Double-Edge - Level 36
  (550, 55001, 38, 11, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Basculin (Blue-Striped) - Scary Face - Level 41
  (550, 55001, 184, 11, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Basculin (Blue-Striped) - Flail - Level 46
  (550, 55001, 175, 11, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Basculin (Blue-Striped) - Final Gambit - Level 51
  (550, 55001, 515, 11, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Basculin (Blue-Striped) - Thrash - Level 56
  (550, 55001, 37, 11, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Basculin (Blue-Striped) - Toxic - TM06
  (550, 55001, 92, 11, NULL, 2, NULL, NULL, 11002006, NULL, 17),
  -- Basculin (Blue-Striped) - Hail - TM07
  (550, 55001, 258, 11, NULL, 2, NULL, NULL, 11002007, NULL, 18),
  -- Basculin (Blue-Striped) - Hidden Power - TM10
  (550, 55001, 237, 11, NULL, 2, NULL, NULL, 11002010, NULL, 19),
  -- Basculin (Blue-Striped) - Taunt - TM12
  (550, 55001, 269, 11, NULL, 2, NULL, NULL, 11002012, NULL, 20),
  -- Basculin (Blue-Striped) - Ice Beam - TM13
  (550, 55001, 58, 11, NULL, 2, NULL, NULL, 11002013, NULL, 21),
  -- Basculin (Blue-Striped) - Protect - TM17
  (550, 55001, 182, 11, NULL, 2, NULL, NULL, 11002017, NULL, 22),
  -- Basculin (Blue-Striped) - Rain Dance - TM18
  (550, 55001, 240, 11, NULL, 2, NULL, NULL, 11002018, NULL, 23),
  -- Basculin (Blue-Striped) - Frustration - TM21
  (550, 55001, 218, 11, NULL, 2, NULL, NULL, 11002021, NULL, 24),
  -- Basculin (Blue-Striped) - Return - TM27
  (550, 55001, 216, 11, NULL, 2, NULL, NULL, 11002027, NULL, 25),
  -- Basculin (Blue-Striped) - Double Team - TM32
  (550, 55001, 104, 11, NULL, 2, NULL, NULL, 11002032, NULL, 26),
  -- Basculin (Blue-Striped) - Facade - TM42
  (550, 55001, 263, 11, NULL, 2, NULL, NULL, 11002042, NULL, 27),
  -- Basculin (Blue-Striped) - Rest - TM44
  (550, 55001, 156, 11, NULL, 2, NULL, NULL, 11002044, NULL, 28),
  -- Basculin (Blue-Striped) - Attract - TM45
  (550, 55001, 213, 11, NULL, 2, NULL, NULL, 11002045, NULL, 29),
  -- Basculin (Blue-Striped) - Round - TM48
  (550, 55001, 496, 11, NULL, 2, NULL, NULL, 11002048, NULL, 30),
  -- Basculin (Blue-Striped) - Scald - TM55
  (550, 55001, 503, 11, NULL, 2, NULL, NULL, 11002055, NULL, 31),
  -- Basculin (Blue-Striped) - Swagger - TM87
  (550, 55001, 207, 11, NULL, 2, NULL, NULL, 11002087, NULL, 32),
  -- Basculin (Blue-Striped) - Substitute - TM90
  (550, 55001, 164, 11, NULL, 2, NULL, NULL, 11002090, NULL, 33),
  -- Basculin (Blue-Striped) - Cut - HM01
  (550, 55001, 15, 11, NULL, 3, NULL, NULL, 11003001, NULL, 34),
  -- Basculin (Blue-Striped) - Surf - HM03
  (550, 55001, 57, 11, NULL, 3, NULL, NULL, 11003003, NULL, 35),
  -- Basculin (Blue-Striped) - Waterfall - HM05
  (550, 55001, 127, 11, NULL, 3, NULL, NULL, 11003005, NULL, 36),
  -- Basculin (Blue-Striped) - Dive - HM06
  (550, 55001, 291, 11, NULL, 3, NULL, NULL, 11003006, NULL, 37),
  -- Basculin (Blue-Striped) - Agility - Egg Move
  (550, 55001, 97, 11, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Basculin (Blue-Striped) - Brine - Egg Move
  (550, 55001, 362, 11, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Basculin (Blue-Striped) - Bubble Beam - Egg Move
  (550, 55001, 61, 11, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Basculin (Blue-Striped) - Muddy Water - Egg Move
  (550, 55001, 330, 11, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Basculin (Blue-Striped) - Mud Shot - Egg Move
  (550, 55001, 341, 11, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Basculin (Blue-Striped) - Rage - Egg Move
  (550, 55001, 99, 11, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Basculin (Blue-Striped) - Revenge - Egg Move
  (550, 55001, 279, 11, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Basculin (Blue-Striped) - Swift - Egg Move
  (550, 55001, 129, 11, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Basculin (Blue-Striped) - Whirlpool - Egg Move
  (550, 55001, 250, 11, NULL, 5, NULL, NULL, NULL, NULL, 46);
