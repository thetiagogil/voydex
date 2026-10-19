-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation V Pokémon learnset raw pages, using Black 2 / White 2
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii Black 2 / White 2 Pokedex learnset pages, Serebii Black 2 / White 2
-- Move Tutor pages, and PokemonDB Generation 5 Black 2 / White 2 learnset pages.
-- Migration source: generated from source-verified Voydex audit tooling.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Black 2 / White 2
-- Pokémon: not-default forms
-- Rows: 1147
-- Scope: level-up, TM, HM, egg move, and Move Tutor acquisition rows.
-- Event, transfer, prior-evolution, Dream World, and form-change event sections
-- are intentionally excluded from this Black 2 / White 2 seed.
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
  (386, 38601, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Defense) - Leer - Level 1
  (386, 38602, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Speed) - Leer - Level 1
  (386, 38603, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Attack) - Wrap - Level 1
  (386, 38601, 35, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Defense) - Wrap - Level 1
  (386, 38602, 35, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Speed) - Wrap - Level 1
  (386, 38603, 35, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Attack) - Night Shade - Level 9
  (386, 38601, 101, 12, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Deoxys (Defense) - Night Shade - Level 9
  (386, 38602, 101, 12, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Deoxys (Speed) - Night Shade - Level 9
  (386, 38603, 101, 12, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Deoxys (Attack) - Teleport - Level 17
  (386, 38601, 100, 12, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Deoxys (Defense) - Teleport - Level 17
  (386, 38602, 100, 12, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Deoxys (Speed) - Teleport - Level 17
  (386, 38603, 100, 12, NULL, 1, 17, NULL, NULL, NULL, 4),
  -- Deoxys (Attack) - Knock Off - Level 25
  (386, 38601, 282, 12, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Deoxys (Defense) - Knock Off - Level 25
  (386, 38602, 282, 12, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Deoxys (Speed) - Knock Off - Level 25
  (386, 38603, 282, 12, NULL, 1, 25, NULL, NULL, NULL, 5),
  -- Deoxys (Attack) - Pursuit - Level 33
  (386, 38601, 228, 12, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Deoxys (Defense) - Pursuit - Level 33
  (386, 38602, 228, 12, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Deoxys (Speed) - Pursuit - Level 33
  (386, 38603, 228, 12, NULL, 1, 33, NULL, NULL, NULL, 6),
  -- Deoxys (Attack) - Psychic - Level 41
  (386, 38601, 94, 12, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Deoxys (Defense) - Psychic - Level 41
  (386, 38602, 94, 12, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Deoxys (Speed) - Psychic - Level 41
  (386, 38603, 94, 12, NULL, 1, 41, NULL, NULL, NULL, 7),
  -- Deoxys (Attack) - Snatch - Level 49
  (386, 38601, 289, 12, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Deoxys (Defense) - Snatch - Level 49
  (386, 38602, 289, 12, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Deoxys (Speed) - Snatch - Level 49
  (386, 38603, 289, 12, NULL, 1, 49, NULL, NULL, NULL, 8),
  -- Deoxys (Attack) - Psycho Shift - Level 57
  (386, 38601, 375, 12, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Deoxys (Defense) - Psycho Shift - Level 57
  (386, 38602, 375, 12, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Deoxys (Speed) - Psycho Shift - Level 57
  (386, 38603, 375, 12, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Deoxys (Attack) - Zen Headbutt - Level 65
  (386, 38601, 428, 12, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Deoxys (Defense) - Zen Headbutt - Level 65
  (386, 38602, 428, 12, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Deoxys (Speed) - Zen Headbutt - Level 65
  (386, 38603, 428, 12, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Deoxys (Attack) - Cosmic Power - Level 73
  (386, 38601, 322, 12, NULL, 1, 73, NULL, NULL, NULL, 11),
  -- Deoxys (Defense) - Cosmic Power - Level 73
  (386, 38602, 322, 12, NULL, 1, 73, NULL, NULL, NULL, 11),
  -- Deoxys (Speed) - Cosmic Power - Level 73
  (386, 38603, 322, 12, NULL, 1, 73, NULL, NULL, NULL, 11),
  -- Deoxys (Attack) - Recover - Level 81
  (386, 38601, 105, 12, NULL, 1, 81, NULL, NULL, NULL, 12),
  -- Deoxys (Defense) - Recover - Level 81
  (386, 38602, 105, 12, NULL, 1, 81, NULL, NULL, NULL, 12),
  -- Deoxys (Speed) - Recover - Level 81
  (386, 38603, 105, 12, NULL, 1, 81, NULL, NULL, NULL, 12),
  -- Deoxys (Attack) - Psycho Boost - Level 89
  (386, 38601, 354, 12, NULL, 1, 89, NULL, NULL, NULL, 13),
  -- Deoxys (Defense) - Psycho Boost - Level 89
  (386, 38602, 354, 12, NULL, 1, 89, NULL, NULL, NULL, 13),
  -- Deoxys (Speed) - Psycho Boost - Level 89
  (386, 38603, 354, 12, NULL, 1, 89, NULL, NULL, NULL, 13),
  -- Deoxys (Attack) - Hyper Beam - Level 97
  (386, 38601, 63, 12, NULL, 1, 97, NULL, NULL, NULL, 14),
  -- Deoxys (Defense) - Hyper Beam - Level 97
  (386, 38602, 63, 12, NULL, 1, 97, NULL, NULL, NULL, 14),
  -- Deoxys (Speed) - Hyper Beam - Level 97
  (386, 38603, 63, 12, NULL, 1, 97, NULL, NULL, NULL, 14),
  -- Deoxys (Attack) - Taunt - Level 25
  (386, 38601, 269, 12, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Deoxys (Attack) - Superpower - Level 49
  (386, 38601, 276, 12, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Deoxys (Attack) - Zap Cannon - Level 81
  (386, 38601, 192, 12, NULL, 1, 81, NULL, NULL, NULL, 17),
  -- Deoxys (Defense) - Spikes - Level 33
  (386, 38602, 191, 12, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Deoxys (Defense) - Iron Defense - Level 73
  (386, 38602, 334, 12, NULL, 1, 73, NULL, NULL, NULL, 16),
  -- Deoxys (Defense) - Amnesia - Level 73
  (386, 38602, 133, 12, NULL, 1, 73, NULL, NULL, NULL, 17),
  -- Deoxys (Defense) - Counter - Level 97
  (386, 38602, 68, 12, NULL, 1, 97, NULL, NULL, NULL, 18),
  -- Deoxys (Defense) - Mirror Coat - Level 97
  (386, 38602, 243, 12, NULL, 1, 97, NULL, NULL, NULL, 19),
  -- Deoxys (Speed) - Double Team - Level 17
  (386, 38603, 104, 12, NULL, 1, 17, NULL, NULL, NULL, 15),
  -- Deoxys (Speed) - Swift - Level 49
  (386, 38603, 129, 12, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Deoxys (Speed) - Agility - Level 73
  (386, 38603, 97, 12, NULL, 1, 73, NULL, NULL, NULL, 17),
  -- Deoxys (Speed) - Extreme Speed - Level 97
  (386, 38603, 245, 12, NULL, 1, 97, NULL, NULL, NULL, 18),
  -- Deoxys (Attack) - Psyshock - TM03
  (386, 38601, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 18),
  -- Deoxys (Defense) - Psyshock - TM03
  (386, 38602, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 20),
  -- Deoxys (Speed) - Psyshock - TM03
  (386, 38603, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 19),
  -- Deoxys (Attack) - Calm Mind - TM04
  (386, 38601, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 19),
  -- Deoxys (Defense) - Calm Mind - TM04
  (386, 38602, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 21),
  -- Deoxys (Speed) - Calm Mind - TM04
  (386, 38603, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 20),
  -- Deoxys (Attack) - Toxic - TM06
  (386, 38601, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Deoxys (Defense) - Toxic - TM06
  (386, 38602, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 22),
  -- Deoxys (Speed) - Toxic - TM06
  (386, 38603, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 21),
  -- Deoxys (Attack) - Hidden Power - TM10
  (386, 38601, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Deoxys (Defense) - Hidden Power - TM10
  (386, 38602, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 23),
  -- Deoxys (Speed) - Hidden Power - TM10
  (386, 38603, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 22),
  -- Deoxys (Attack) - Sunny Day - TM11
  (386, 38601, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 22),
  -- Deoxys (Defense) - Sunny Day - TM11
  (386, 38602, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 24),
  -- Deoxys (Speed) - Sunny Day - TM11
  (386, 38603, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 23),
  -- Deoxys (Attack) - Taunt - TM12
  (386, 38601, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 23),
  -- Deoxys (Defense) - Taunt - TM12
  (386, 38602, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 25),
  -- Deoxys (Speed) - Taunt - TM12
  (386, 38603, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 24),
  -- Deoxys (Attack) - Ice Beam - TM13
  (386, 38601, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 24),
  -- Deoxys (Defense) - Ice Beam - TM13
  (386, 38602, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 26),
  -- Deoxys (Speed) - Ice Beam - TM13
  (386, 38603, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 25),
  -- Deoxys (Attack) - Hyper Beam - TM15
  (386, 38601, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 25),
  -- Deoxys (Defense) - Hyper Beam - TM15
  (386, 38602, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 27),
  -- Deoxys (Speed) - Hyper Beam - TM15
  (386, 38603, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 26),
  -- Deoxys (Attack) - Light Screen - TM16
  (386, 38601, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 26),
  -- Deoxys (Defense) - Light Screen - TM16
  (386, 38602, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 28),
  -- Deoxys (Speed) - Light Screen - TM16
  (386, 38603, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 27),
  -- Deoxys (Attack) - Protect - TM17
  (386, 38601, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 27),
  -- Deoxys (Defense) - Protect - TM17
  (386, 38602, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 29),
  -- Deoxys (Speed) - Protect - TM17
  (386, 38603, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 28),
  -- Deoxys (Attack) - Rain Dance - TM18
  (386, 38601, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 28),
  -- Deoxys (Defense) - Rain Dance - TM18
  (386, 38602, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 30),
  -- Deoxys (Speed) - Rain Dance - TM18
  (386, 38603, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 29),
  -- Deoxys (Attack) - Telekinesis - TM19
  (386, 38601, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 29),
  -- Deoxys (Defense) - Telekinesis - TM19
  (386, 38602, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 31),
  -- Deoxys (Speed) - Telekinesis - TM19
  (386, 38603, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 30),
  -- Deoxys (Attack) - Safeguard - TM20
  (386, 38601, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 30),
  -- Deoxys (Defense) - Safeguard - TM20
  (386, 38602, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 32),
  -- Deoxys (Speed) - Safeguard - TM20
  (386, 38603, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 31),
  -- Deoxys (Attack) - Frustration - TM21
  (386, 38601, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 31),
  -- Deoxys (Defense) - Frustration - TM21
  (386, 38602, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 33),
  -- Deoxys (Speed) - Frustration - TM21
  (386, 38603, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 32),
  -- Deoxys (Attack) - Solar Beam - TM22
  (386, 38601, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 32),
  -- Deoxys (Defense) - Solar Beam - TM22
  (386, 38602, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 34),
  -- Deoxys (Speed) - Solar Beam - TM22
  (386, 38603, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 33),
  -- Deoxys (Attack) - Thunderbolt - TM24
  (386, 38601, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 33),
  -- Deoxys (Defense) - Thunderbolt - TM24
  (386, 38602, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 35),
  -- Deoxys (Speed) - Thunderbolt - TM24
  (386, 38603, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 34),
  -- Deoxys (Attack) - Thunder - TM25
  (386, 38601, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 34),
  -- Deoxys (Defense) - Thunder - TM25
  (386, 38602, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 36),
  -- Deoxys (Speed) - Thunder - TM25
  (386, 38603, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 35),
  -- Deoxys (Attack) - Return - TM27
  (386, 38601, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 35),
  -- Deoxys (Defense) - Return - TM27
  (386, 38602, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 37),
  -- Deoxys (Speed) - Return - TM27
  (386, 38603, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 36),
  -- Deoxys (Attack) - Psychic - TM29
  (386, 38601, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 36),
  -- Deoxys (Defense) - Psychic - TM29
  (386, 38602, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 38),
  -- Deoxys (Speed) - Psychic - TM29
  (386, 38603, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 37),
  -- Deoxys (Attack) - Shadow Ball - TM30
  (386, 38601, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 37),
  -- Deoxys (Defense) - Shadow Ball - TM30
  (386, 38602, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 39),
  -- Deoxys (Speed) - Shadow Ball - TM30
  (386, 38603, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 38),
  -- Deoxys (Attack) - Brick Break - TM31
  (386, 38601, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 38),
  -- Deoxys (Defense) - Brick Break - TM31
  (386, 38602, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 40),
  -- Deoxys (Speed) - Brick Break - TM31
  (386, 38603, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 39),
  -- Deoxys (Attack) - Double Team - TM32
  (386, 38601, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 39),
  -- Deoxys (Defense) - Double Team - TM32
  (386, 38602, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 41),
  -- Deoxys (Speed) - Double Team - TM32
  (386, 38603, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 40),
  -- Deoxys (Attack) - Reflect - TM33
  (386, 38601, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 40),
  -- Deoxys (Defense) - Reflect - TM33
  (386, 38602, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 42),
  -- Deoxys (Speed) - Reflect - TM33
  (386, 38603, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 41),
  -- Deoxys (Attack) - Rock Tomb - TM39
  (386, 38601, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 41),
  -- Deoxys (Defense) - Rock Tomb - TM39
  (386, 38602, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 43),
  -- Deoxys (Speed) - Rock Tomb - TM39
  (386, 38603, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 42),
  -- Deoxys (Attack) - Aerial Ace - TM40
  (386, 38601, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 42),
  -- Deoxys (Defense) - Aerial Ace - TM40
  (386, 38602, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 44),
  -- Deoxys (Speed) - Aerial Ace - TM40
  (386, 38603, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 43),
  -- Deoxys (Attack) - Torment - TM41
  (386, 38601, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 43),
  -- Deoxys (Defense) - Torment - TM41
  (386, 38602, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 45),
  -- Deoxys (Speed) - Torment - TM41
  (386, 38603, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 44),
  -- Deoxys (Attack) - Facade - TM42
  (386, 38601, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 44),
  -- Deoxys (Defense) - Facade - TM42
  (386, 38602, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 46),
  -- Deoxys (Speed) - Facade - TM42
  (386, 38603, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 45),
  -- Deoxys (Attack) - Rest - TM44
  (386, 38601, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 45),
  -- Deoxys (Defense) - Rest - TM44
  (386, 38602, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 47),
  -- Deoxys (Speed) - Rest - TM44
  (386, 38603, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 46),
  -- Deoxys (Attack) - Low Sweep - TM47
  (386, 38601, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 46),
  -- Deoxys (Defense) - Low Sweep - TM47
  (386, 38602, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 48),
  -- Deoxys (Speed) - Low Sweep - TM47
  (386, 38603, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 47),
  -- Deoxys (Attack) - Round - TM48
  (386, 38601, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 47),
  -- Deoxys (Defense) - Round - TM48
  (386, 38602, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 49),
  -- Deoxys (Speed) - Round - TM48
  (386, 38603, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 48),
  -- Deoxys (Attack) - Ally Switch - TM51
  (386, 38601, 502, 12, NULL, 2, NULL, NULL, 12002051, NULL, 48),
  -- Deoxys (Defense) - Ally Switch - TM51
  (386, 38602, 502, 12, NULL, 2, NULL, NULL, 12002051, NULL, 50),
  -- Deoxys (Speed) - Ally Switch - TM51
  (386, 38603, 502, 12, NULL, 2, NULL, NULL, 12002051, NULL, 49),
  -- Deoxys (Attack) - Focus Blast - TM52
  (386, 38601, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 49),
  -- Deoxys (Defense) - Focus Blast - TM52
  (386, 38602, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 51),
  -- Deoxys (Speed) - Focus Blast - TM52
  (386, 38603, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 50),
  -- Deoxys (Attack) - Energy Ball - TM53
  (386, 38601, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 50),
  -- Deoxys (Defense) - Energy Ball - TM53
  (386, 38602, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 52),
  -- Deoxys (Speed) - Energy Ball - TM53
  (386, 38603, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 51),
  -- Deoxys (Attack) - Fling - TM56
  (386, 38601, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 51),
  -- Deoxys (Defense) - Fling - TM56
  (386, 38602, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 53),
  -- Deoxys (Speed) - Fling - TM56
  (386, 38603, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 52),
  -- Deoxys (Attack) - Charge Beam - TM57
  (386, 38601, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 52),
  -- Deoxys (Defense) - Charge Beam - TM57
  (386, 38602, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 54),
  -- Deoxys (Speed) - Charge Beam - TM57
  (386, 38603, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 53),
  -- Deoxys (Attack) - Giga Impact - TM68
  (386, 38601, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 53),
  -- Deoxys (Defense) - Giga Impact - TM68
  (386, 38602, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 55),
  -- Deoxys (Speed) - Giga Impact - TM68
  (386, 38603, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 54),
  -- Deoxys (Attack) - Flash - TM70
  (386, 38601, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 54),
  -- Deoxys (Defense) - Flash - TM70
  (386, 38602, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 56),
  -- Deoxys (Speed) - Flash - TM70
  (386, 38603, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 55),
  -- Deoxys (Attack) - Thunder Wave - TM73
  (386, 38601, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 55),
  -- Deoxys (Defense) - Thunder Wave - TM73
  (386, 38602, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 57),
  -- Deoxys (Speed) - Thunder Wave - TM73
  (386, 38603, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 56),
  -- Deoxys (Attack) - Psych Up - TM77
  (386, 38601, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 56),
  -- Deoxys (Defense) - Psych Up - TM77
  (386, 38602, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 58),
  -- Deoxys (Speed) - Psych Up - TM77
  (386, 38603, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 57),
  -- Deoxys (Attack) - Rock Slide - TM80
  (386, 38601, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 57),
  -- Deoxys (Defense) - Rock Slide - TM80
  (386, 38602, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 59),
  -- Deoxys (Speed) - Rock Slide - TM80
  (386, 38603, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 58),
  -- Deoxys (Attack) - Poison Jab - TM84
  (386, 38601, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 58),
  -- Deoxys (Defense) - Poison Jab - TM84
  (386, 38602, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 60),
  -- Deoxys (Speed) - Poison Jab - TM84
  (386, 38603, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 59),
  -- Deoxys (Attack) - Dream Eater - TM85
  (386, 38601, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 59),
  -- Deoxys (Defense) - Dream Eater - TM85
  (386, 38602, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 61),
  -- Deoxys (Speed) - Dream Eater - TM85
  (386, 38603, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 60),
  -- Deoxys (Attack) - Grass Knot - TM86
  (386, 38601, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 60),
  -- Deoxys (Defense) - Grass Knot - TM86
  (386, 38602, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 62),
  -- Deoxys (Speed) - Grass Knot - TM86
  (386, 38603, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 61),
  -- Deoxys (Attack) - Swagger - TM87
  (386, 38601, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 61),
  -- Deoxys (Defense) - Swagger - TM87
  (386, 38602, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 63),
  -- Deoxys (Speed) - Swagger - TM87
  (386, 38603, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 62),
  -- Deoxys (Attack) - Substitute - TM90
  (386, 38601, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 62),
  -- Deoxys (Defense) - Substitute - TM90
  (386, 38602, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 64),
  -- Deoxys (Speed) - Substitute - TM90
  (386, 38603, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 63),
  -- Deoxys (Attack) - Flash Cannon - TM91
  (386, 38601, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 63),
  -- Deoxys (Defense) - Flash Cannon - TM91
  (386, 38602, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 65),
  -- Deoxys (Speed) - Flash Cannon - TM91
  (386, 38603, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 64),
  -- Deoxys (Attack) - Trick Room - TM92
  (386, 38601, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 64),
  -- Deoxys (Defense) - Trick Room - TM92
  (386, 38602, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 66),
  -- Deoxys (Speed) - Trick Room - TM92
  (386, 38603, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 65),
  -- Deoxys (Attack) - Rock Smash - TM94
  (386, 38601, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 65),
  -- Deoxys (Defense) - Rock Smash - TM94
  (386, 38602, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 67),
  -- Deoxys (Speed) - Rock Smash - TM94
  (386, 38603, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 66),
  -- Deoxys (Attack) - Cut - HM01
  (386, 38601, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 66),
  -- Deoxys (Defense) - Cut - HM01
  (386, 38602, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 68),
  -- Deoxys (Speed) - Cut - HM01
  (386, 38603, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 67),
  -- Deoxys (Attack) - Strength - HM04
  (386, 38601, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 67),
  -- Deoxys (Defense) - Strength - HM04
  (386, 38602, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 69),
  -- Deoxys (Speed) - Strength - HM04
  (386, 38603, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 68),
  -- Deoxys (Attack) - Bind - Move Tutor
  (386, 38601, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Deoxys (Defense) - Bind - Move Tutor
  (386, 38602, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Deoxys (Speed) - Bind - Move Tutor
  (386, 38603, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Deoxys (Attack) - Drain Punch - Move Tutor
  (386, 38601, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Deoxys (Defense) - Drain Punch - Move Tutor
  (386, 38602, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Deoxys (Speed) - Drain Punch - Move Tutor
  (386, 38603, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Deoxys (Attack) - Fire Punch - Move Tutor
  (386, 38601, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Deoxys (Defense) - Fire Punch - Move Tutor
  (386, 38602, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Deoxys (Speed) - Fire Punch - Move Tutor
  (386, 38603, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Deoxys (Attack) - Gravity - Move Tutor
  (386, 38601, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Deoxys (Defense) - Gravity - Move Tutor
  (386, 38602, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Deoxys (Speed) - Gravity - Move Tutor
  (386, 38603, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Deoxys (Attack) - Ice Punch - Move Tutor
  (386, 38601, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Deoxys (Defense) - Ice Punch - Move Tutor
  (386, 38602, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Deoxys (Speed) - Ice Punch - Move Tutor
  (386, 38603, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Deoxys (Attack) - Icy Wind - Move Tutor
  (386, 38601, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Deoxys (Defense) - Icy Wind - Move Tutor
  (386, 38602, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Deoxys (Speed) - Icy Wind - Move Tutor
  (386, 38603, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Deoxys (Attack) - Knock Off - Move Tutor
  (386, 38601, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Deoxys (Defense) - Knock Off - Move Tutor
  (386, 38602, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Deoxys (Speed) - Knock Off - Move Tutor
  (386, 38603, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Deoxys (Attack) - Low Kick - Move Tutor
  (386, 38601, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Deoxys (Defense) - Low Kick - Move Tutor
  (386, 38602, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Deoxys (Speed) - Low Kick - Move Tutor
  (386, 38603, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Deoxys (Attack) - Magic Coat - Move Tutor
  (386, 38601, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Deoxys (Defense) - Magic Coat - Move Tutor
  (386, 38602, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Deoxys (Speed) - Magic Coat - Move Tutor
  (386, 38603, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Deoxys (Attack) - Recycle - Move Tutor
  (386, 38601, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Deoxys (Defense) - Recycle - Move Tutor
  (386, 38602, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Deoxys (Speed) - Recycle - Move Tutor
  (386, 38603, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Deoxys (Attack) - Role Play - Move Tutor
  (386, 38601, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Deoxys (Defense) - Role Play - Move Tutor
  (386, 38602, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Deoxys (Speed) - Role Play - Move Tutor
  (386, 38603, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Deoxys (Attack) - Signal Beam - Move Tutor
  (386, 38601, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Deoxys (Defense) - Signal Beam - Move Tutor
  (386, 38602, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Deoxys (Speed) - Signal Beam - Move Tutor
  (386, 38603, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Deoxys (Attack) - Skill Swap - Move Tutor
  (386, 38601, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Deoxys (Defense) - Skill Swap - Move Tutor
  (386, 38602, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Deoxys (Speed) - Skill Swap - Move Tutor
  (386, 38603, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Deoxys (Attack) - Sleep Talk - Move Tutor
  (386, 38601, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Deoxys (Defense) - Sleep Talk - Move Tutor
  (386, 38602, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Deoxys (Speed) - Sleep Talk - Move Tutor
  (386, 38603, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Deoxys (Attack) - Snatch - Move Tutor
  (386, 38601, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Deoxys (Defense) - Snatch - Move Tutor
  (386, 38602, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 84),
  -- Deoxys (Speed) - Snatch - Move Tutor
  (386, 38603, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Deoxys (Attack) - Snore - Move Tutor
  (386, 38601, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Deoxys (Defense) - Snore - Move Tutor
  (386, 38602, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 85),
  -- Deoxys (Speed) - Snore - Move Tutor
  (386, 38603, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 84),
  -- Deoxys (Attack) - Stealth Rock - Move Tutor
  (386, 38601, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 84),
  -- Deoxys (Defense) - Stealth Rock - Move Tutor
  (386, 38602, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 86),
  -- Deoxys (Speed) - Stealth Rock - Move Tutor
  (386, 38603, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 85),
  -- Deoxys (Attack) - Thunder Punch - Move Tutor
  (386, 38601, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 85),
  -- Deoxys (Defense) - Thunder Punch - Move Tutor
  (386, 38602, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 87),
  -- Deoxys (Speed) - Thunder Punch - Move Tutor
  (386, 38603, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 86),
  -- Deoxys (Attack) - Trick - Move Tutor
  (386, 38601, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 86),
  -- Deoxys (Defense) - Trick - Move Tutor
  (386, 38602, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 88),
  -- Deoxys (Speed) - Trick - Move Tutor
  (386, 38603, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 87),
  -- Deoxys (Attack) - Wonder Room - Move Tutor
  (386, 38601, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 87),
  -- Deoxys (Defense) - Wonder Room - Move Tutor
  (386, 38602, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 89),
  -- Deoxys (Speed) - Wonder Room - Move Tutor
  (386, 38603, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 88),
  -- Deoxys (Attack) - Zen Headbutt - Move Tutor
  (386, 38601, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 88),
  -- Deoxys (Defense) - Zen Headbutt - Move Tutor
  (386, 38602, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 90),
  -- Deoxys (Speed) - Zen Headbutt - Move Tutor
  (386, 38603, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 89),
  -- Deoxys (Attack) - Superpower - Move Tutor
  (386, 38601, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 89),
  -- Deoxys (Defense) - Iron Defense - Move Tutor
  (386, 38602, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 91),
  -- Wormadam (Sandy Cloak) - Tackle - Level 1
  (413, 41301, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam (Sandy Cloak) - Protect - Level 10
  (413, 41301, 182, 12, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Wormadam (Sandy Cloak) - Bug Bite - Level 15
  (413, 41301, 450, 12, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Wormadam (Sandy Cloak) - Hidden Power - Level 20
  (413, 41301, 237, 12, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Wormadam (Sandy Cloak) - Confusion - Level 23
  (413, 41301, 93, 12, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Wormadam (Sandy Cloak) - Rock Blast - Level 26
  (413, 41301, 350, 12, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Wormadam (Sandy Cloak) - Harden - Level 29
  (413, 41301, 106, 12, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Wormadam (Sandy Cloak) - Psybeam - Level 32
  (413, 41301, 60, 12, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Wormadam (Sandy Cloak) - Captivate - Level 35
  (413, 41301, 445, 12, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Wormadam (Sandy Cloak) - Flail - Level 38
  (413, 41301, 175, 12, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Wormadam (Sandy Cloak) - Attract - Level 41
  (413, 41301, 213, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Wormadam (Sandy Cloak) - Psychic - Level 44
  (413, 41301, 94, 12, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Wormadam (Sandy Cloak) - Fissure - Level 47
  (413, 41301, 90, 12, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Wormadam (Trash Cloak) - Tackle - Level 1
  (413, 41302, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wormadam (Trash Cloak) - Protect - Level 10
  (413, 41302, 182, 12, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Wormadam (Trash Cloak) - Bug Bite - Level 15
  (413, 41302, 450, 12, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Wormadam (Trash Cloak) - Hidden Power - Level 20
  (413, 41302, 237, 12, NULL, 1, 20, NULL, NULL, NULL, 4),
  -- Wormadam (Trash Cloak) - Confusion - Level 23
  (413, 41302, 93, 12, NULL, 1, 23, NULL, NULL, NULL, 5),
  -- Wormadam (Trash Cloak) - Mirror Shot - Level 26
  (413, 41302, 429, 12, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Wormadam (Trash Cloak) - Metal Sound - Level 29
  (413, 41302, 319, 12, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Wormadam (Trash Cloak) - Psybeam - Level 32
  (413, 41302, 60, 12, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Wormadam (Trash Cloak) - Captivate - Level 35
  (413, 41302, 445, 12, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Wormadam (Trash Cloak) - Flail - Level 38
  (413, 41302, 175, 12, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Wormadam (Trash Cloak) - Attract - Level 41
  (413, 41302, 213, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Wormadam (Trash Cloak) - Psychic - Level 44
  (413, 41302, 94, 12, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Wormadam (Trash Cloak) - Iron Head - Level 47
  (413, 41302, 442, 12, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Wormadam (Sandy Cloak) - Toxic - TM06
  (413, 41301, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Wormadam (Sandy Cloak) - Venoshock - TM09
  (413, 41301, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 15),
  -- Wormadam (Sandy Cloak) - Hidden Power - TM10
  (413, 41301, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Wormadam (Sandy Cloak) - Sunny Day - TM11
  (413, 41301, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Wormadam (Sandy Cloak) - Hyper Beam - TM15
  (413, 41301, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 18),
  -- Wormadam (Sandy Cloak) - Protect - TM17
  (413, 41301, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Wormadam (Sandy Cloak) - Rain Dance - TM18
  (413, 41301, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 20),
  -- Wormadam (Sandy Cloak) - Safeguard - TM20
  (413, 41301, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 21),
  -- Wormadam (Sandy Cloak) - Frustration - TM21
  (413, 41301, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Wormadam (Sandy Cloak) - Earthquake - TM26
  (413, 41301, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 23),
  -- Wormadam (Sandy Cloak) - Return - TM27
  (413, 41301, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Wormadam (Sandy Cloak) - Dig - TM28
  (413, 41301, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 25),
  -- Wormadam (Sandy Cloak) - Psychic - TM29
  (413, 41301, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 26),
  -- Wormadam (Sandy Cloak) - Shadow Ball - TM30
  (413, 41301, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 27),
  -- Wormadam (Sandy Cloak) - Double Team - TM32
  (413, 41301, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Wormadam (Sandy Cloak) - Sandstorm - TM37
  (413, 41301, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 29),
  -- Wormadam (Sandy Cloak) - Rock Tomb - TM39
  (413, 41301, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 30),
  -- Wormadam (Sandy Cloak) - Facade - TM42
  (413, 41301, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Wormadam (Sandy Cloak) - Rest - TM44
  (413, 41301, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 32),
  -- Wormadam (Sandy Cloak) - Attract - TM45
  (413, 41301, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 33),
  -- Wormadam (Sandy Cloak) - Thief - TM46
  (413, 41301, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 34),
  -- Wormadam (Sandy Cloak) - Round - TM48
  (413, 41301, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 35),
  -- Wormadam (Sandy Cloak) - Giga Impact - TM68
  (413, 41301, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 36),
  -- Wormadam (Sandy Cloak) - Flash - TM70
  (413, 41301, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 37),
  -- Wormadam (Sandy Cloak) - Struggle Bug - TM76
  (413, 41301, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 38),
  -- Wormadam (Sandy Cloak) - Psych Up - TM77
  (413, 41301, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 39),
  -- Wormadam (Sandy Cloak) - Bulldoze - TM78
  (413, 41301, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 40),
  -- Wormadam (Sandy Cloak) - Dream Eater - TM85
  (413, 41301, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 41),
  -- Wormadam (Sandy Cloak) - Swagger - TM87
  (413, 41301, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 42),
  -- Wormadam (Sandy Cloak) - Substitute - TM90
  (413, 41301, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 43),
  -- Wormadam (Trash Cloak) - Toxic - TM06
  (413, 41302, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Wormadam (Trash Cloak) - Venoshock - TM09
  (413, 41302, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 15),
  -- Wormadam (Trash Cloak) - Hidden Power - TM10
  (413, 41302, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Wormadam (Trash Cloak) - Sunny Day - TM11
  (413, 41302, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Wormadam (Trash Cloak) - Hyper Beam - TM15
  (413, 41302, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 18),
  -- Wormadam (Trash Cloak) - Protect - TM17
  (413, 41302, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Wormadam (Trash Cloak) - Rain Dance - TM18
  (413, 41302, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 20),
  -- Wormadam (Trash Cloak) - Safeguard - TM20
  (413, 41302, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 21),
  -- Wormadam (Trash Cloak) - Frustration - TM21
  (413, 41302, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Wormadam (Trash Cloak) - Return - TM27
  (413, 41302, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 23),
  -- Wormadam (Trash Cloak) - Psychic - TM29
  (413, 41302, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 24),
  -- Wormadam (Trash Cloak) - Shadow Ball - TM30
  (413, 41302, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 25),
  -- Wormadam (Trash Cloak) - Double Team - TM32
  (413, 41302, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Wormadam (Trash Cloak) - Facade - TM42
  (413, 41302, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 27),
  -- Wormadam (Trash Cloak) - Rest - TM44
  (413, 41302, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 28),
  -- Wormadam (Trash Cloak) - Attract - TM45
  (413, 41302, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 29),
  -- Wormadam (Trash Cloak) - Thief - TM46
  (413, 41302, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 30),
  -- Wormadam (Trash Cloak) - Round - TM48
  (413, 41302, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 31),
  -- Wormadam (Trash Cloak) - Giga Impact - TM68
  (413, 41302, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 32),
  -- Wormadam (Trash Cloak) - Flash - TM70
  (413, 41302, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 33),
  -- Wormadam (Trash Cloak) - Gyro Ball - TM74
  (413, 41302, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 34),
  -- Wormadam (Trash Cloak) - Struggle Bug - TM76
  (413, 41302, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 35),
  -- Wormadam (Trash Cloak) - Psych Up - TM77
  (413, 41302, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 36),
  -- Wormadam (Trash Cloak) - Dream Eater - TM85
  (413, 41302, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 37),
  -- Wormadam (Trash Cloak) - Swagger - TM87
  (413, 41302, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 38),
  -- Wormadam (Trash Cloak) - Substitute - TM90
  (413, 41302, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 39),
  -- Wormadam (Trash Cloak) - Flash Cannon - TM91
  (413, 41302, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 40),
  -- Wormadam (Sandy Cloak) - Bug Bite - Move Tutor
  (413, 41301, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Wormadam (Sandy Cloak) - Earth Power - Move Tutor
  (413, 41301, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Wormadam (Sandy Cloak) - Electroweb - Move Tutor
  (413, 41301, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Wormadam (Sandy Cloak) - Endeavor - Move Tutor
  (413, 41301, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Wormadam (Sandy Cloak) - Signal Beam - Move Tutor
  (413, 41301, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Wormadam (Sandy Cloak) - Skill Swap - Move Tutor
  (413, 41301, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Wormadam (Sandy Cloak) - Sleep Talk - Move Tutor
  (413, 41301, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Wormadam (Sandy Cloak) - Snore - Move Tutor
  (413, 41301, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Wormadam (Sandy Cloak) - Stealth Rock - Move Tutor
  (413, 41301, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Wormadam (Sandy Cloak) - Uproar - Move Tutor
  (413, 41301, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Wormadam (Trash Cloak) - Bug Bite - Move Tutor
  (413, 41302, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 41),
  -- Wormadam (Trash Cloak) - Electroweb - Move Tutor
  (413, 41302, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Wormadam (Trash Cloak) - Endeavor - Move Tutor
  (413, 41302, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Wormadam (Trash Cloak) - Gunk Shot - Move Tutor
  (413, 41302, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Wormadam (Trash Cloak) - Iron Defense - Move Tutor
  (413, 41302, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Wormadam (Trash Cloak) - Iron Head - Move Tutor
  (413, 41302, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Wormadam (Trash Cloak) - Magnet Rise - Move Tutor
  (413, 41302, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Wormadam (Trash Cloak) - Signal Beam - Move Tutor
  (413, 41302, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Wormadam (Trash Cloak) - Skill Swap - Move Tutor
  (413, 41302, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Wormadam (Trash Cloak) - Sleep Talk - Move Tutor
  (413, 41302, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Wormadam (Trash Cloak) - Snore - Move Tutor
  (413, 41302, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Wormadam (Trash Cloak) - Stealth Rock - Move Tutor
  (413, 41302, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Wormadam (Trash Cloak) - Uproar - Move Tutor
  (413, 41302, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Rotom (Heat) - Trick - Level 1
  (479, 47901, 271, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Wash) - Trick - Level 1
  (479, 47902, 271, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Frost) - Trick - Level 1
  (479, 47903, 271, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Fan) - Trick - Level 1
  (479, 47904, 271, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Mow) - Trick - Level 1
  (479, 47905, 271, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom (Heat) - Astonish - Level 1
  (479, 47901, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Wash) - Astonish - Level 1
  (479, 47902, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Frost) - Astonish - Level 1
  (479, 47903, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Fan) - Astonish - Level 1
  (479, 47904, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Mow) - Astonish - Level 1
  (479, 47905, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom (Heat) - Thunder Wave - Level 1
  (479, 47901, 86, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Wash) - Thunder Wave - Level 1
  (479, 47902, 86, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Frost) - Thunder Wave - Level 1
  (479, 47903, 86, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Fan) - Thunder Wave - Level 1
  (479, 47904, 86, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Mow) - Thunder Wave - Level 1
  (479, 47905, 86, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rotom (Heat) - Thunder Shock - Level 1
  (479, 47901, 84, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Wash) - Thunder Shock - Level 1
  (479, 47902, 84, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Frost) - Thunder Shock - Level 1
  (479, 47903, 84, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Fan) - Thunder Shock - Level 1
  (479, 47904, 84, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Mow) - Thunder Shock - Level 1
  (479, 47905, 84, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rotom (Heat) - Confuse Ray - Level 1
  (479, 47901, 109, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Wash) - Confuse Ray - Level 1
  (479, 47902, 109, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Frost) - Confuse Ray - Level 1
  (479, 47903, 109, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Fan) - Confuse Ray - Level 1
  (479, 47904, 109, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Mow) - Confuse Ray - Level 1
  (479, 47905, 109, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rotom (Heat) - Uproar - Level 8
  (479, 47901, 253, 12, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Rotom (Wash) - Uproar - Level 8
  (479, 47902, 253, 12, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Rotom (Frost) - Uproar - Level 8
  (479, 47903, 253, 12, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Rotom (Fan) - Uproar - Level 8
  (479, 47904, 253, 12, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Rotom (Mow) - Uproar - Level 8
  (479, 47905, 253, 12, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Rotom (Heat) - Double Team - Level 15
  (479, 47901, 104, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rotom (Wash) - Double Team - Level 15
  (479, 47902, 104, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rotom (Frost) - Double Team - Level 15
  (479, 47903, 104, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rotom (Fan) - Double Team - Level 15
  (479, 47904, 104, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rotom (Mow) - Double Team - Level 15
  (479, 47905, 104, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Rotom (Heat) - Shock Wave - Level 22
  (479, 47901, 351, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Rotom (Wash) - Shock Wave - Level 22
  (479, 47902, 351, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Rotom (Frost) - Shock Wave - Level 22
  (479, 47903, 351, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Rotom (Fan) - Shock Wave - Level 22
  (479, 47904, 351, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Rotom (Mow) - Shock Wave - Level 22
  (479, 47905, 351, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Rotom (Heat) - Ominous Wind - Level 29
  (479, 47901, 466, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rotom (Wash) - Ominous Wind - Level 29
  (479, 47902, 466, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rotom (Frost) - Ominous Wind - Level 29
  (479, 47903, 466, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rotom (Fan) - Ominous Wind - Level 29
  (479, 47904, 466, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rotom (Mow) - Ominous Wind - Level 29
  (479, 47905, 466, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Rotom (Heat) - Substitute - Level 36
  (479, 47901, 164, 12, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rotom (Wash) - Substitute - Level 36
  (479, 47902, 164, 12, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rotom (Frost) - Substitute - Level 36
  (479, 47903, 164, 12, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rotom (Fan) - Substitute - Level 36
  (479, 47904, 164, 12, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rotom (Mow) - Substitute - Level 36
  (479, 47905, 164, 12, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Rotom (Heat) - Electro Ball - Level 43
  (479, 47901, 486, 12, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rotom (Wash) - Electro Ball - Level 43
  (479, 47902, 486, 12, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rotom (Frost) - Electro Ball - Level 43
  (479, 47903, 486, 12, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rotom (Fan) - Electro Ball - Level 43
  (479, 47904, 486, 12, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rotom (Mow) - Electro Ball - Level 43
  (479, 47905, 486, 12, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Rotom (Heat) - Hex - Level 50
  (479, 47901, 506, 12, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Wash) - Hex - Level 50
  (479, 47902, 506, 12, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Frost) - Hex - Level 50
  (479, 47903, 506, 12, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Fan) - Hex - Level 50
  (479, 47904, 506, 12, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Mow) - Hex - Level 50
  (479, 47905, 506, 12, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom (Heat) - Charge - Level 57
  (479, 47901, 268, 12, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Rotom (Wash) - Charge - Level 57
  (479, 47902, 268, 12, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Rotom (Frost) - Charge - Level 57
  (479, 47903, 268, 12, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Rotom (Fan) - Charge - Level 57
  (479, 47904, 268, 12, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Rotom (Mow) - Charge - Level 57
  (479, 47905, 268, 12, NULL, 1, 57, NULL, NULL, NULL, 13),
  -- Rotom (Heat) - Discharge - Level 64
  (479, 47901, 435, 12, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Rotom (Wash) - Discharge - Level 64
  (479, 47902, 435, 12, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Rotom (Frost) - Discharge - Level 64
  (479, 47903, 435, 12, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Rotom (Fan) - Discharge - Level 64
  (479, 47904, 435, 12, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Rotom (Mow) - Discharge - Level 64
  (479, 47905, 435, 12, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Rotom (Heat) - Toxic - TM06
  (479, 47901, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Rotom (Wash) - Toxic - TM06
  (479, 47902, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Rotom (Frost) - Toxic - TM06
  (479, 47903, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Rotom (Fan) - Toxic - TM06
  (479, 47904, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Rotom (Mow) - Toxic - TM06
  (479, 47905, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Rotom (Heat) - Hidden Power - TM10
  (479, 47901, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Rotom (Wash) - Hidden Power - TM10
  (479, 47902, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Rotom (Frost) - Hidden Power - TM10
  (479, 47903, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Rotom (Fan) - Hidden Power - TM10
  (479, 47904, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Rotom (Mow) - Hidden Power - TM10
  (479, 47905, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Rotom (Heat) - Sunny Day - TM11
  (479, 47901, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Rotom (Wash) - Sunny Day - TM11
  (479, 47902, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Rotom (Frost) - Sunny Day - TM11
  (479, 47903, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Rotom (Fan) - Sunny Day - TM11
  (479, 47904, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Rotom (Mow) - Sunny Day - TM11
  (479, 47905, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Rotom (Heat) - Light Screen - TM16
  (479, 47901, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 18),
  -- Rotom (Wash) - Light Screen - TM16
  (479, 47902, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 18),
  -- Rotom (Frost) - Light Screen - TM16
  (479, 47903, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 18),
  -- Rotom (Fan) - Light Screen - TM16
  (479, 47904, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 18),
  -- Rotom (Mow) - Light Screen - TM16
  (479, 47905, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 18),
  -- Rotom (Heat) - Protect - TM17
  (479, 47901, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Rotom (Wash) - Protect - TM17
  (479, 47902, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Rotom (Frost) - Protect - TM17
  (479, 47903, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Rotom (Fan) - Protect - TM17
  (479, 47904, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Rotom (Mow) - Protect - TM17
  (479, 47905, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Rotom (Heat) - Rain Dance - TM18
  (479, 47901, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 20),
  -- Rotom (Wash) - Rain Dance - TM18
  (479, 47902, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 20),
  -- Rotom (Frost) - Rain Dance - TM18
  (479, 47903, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 20),
  -- Rotom (Fan) - Rain Dance - TM18
  (479, 47904, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 20),
  -- Rotom (Mow) - Rain Dance - TM18
  (479, 47905, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 20),
  -- Rotom (Heat) - Telekinesis - TM19
  (479, 47901, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 21),
  -- Rotom (Wash) - Telekinesis - TM19
  (479, 47902, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 21),
  -- Rotom (Frost) - Telekinesis - TM19
  (479, 47903, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 21),
  -- Rotom (Fan) - Telekinesis - TM19
  (479, 47904, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 21),
  -- Rotom (Mow) - Telekinesis - TM19
  (479, 47905, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 21),
  -- Rotom (Heat) - Frustration - TM21
  (479, 47901, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Rotom (Wash) - Frustration - TM21
  (479, 47902, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Rotom (Frost) - Frustration - TM21
  (479, 47903, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Rotom (Fan) - Frustration - TM21
  (479, 47904, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Rotom (Mow) - Frustration - TM21
  (479, 47905, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Rotom (Heat) - Thunderbolt - TM24
  (479, 47901, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 23),
  -- Rotom (Wash) - Thunderbolt - TM24
  (479, 47902, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 23),
  -- Rotom (Frost) - Thunderbolt - TM24
  (479, 47903, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 23),
  -- Rotom (Fan) - Thunderbolt - TM24
  (479, 47904, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 23),
  -- Rotom (Mow) - Thunderbolt - TM24
  (479, 47905, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 23),
  -- Rotom (Heat) - Thunder - TM25
  (479, 47901, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 24),
  -- Rotom (Wash) - Thunder - TM25
  (479, 47902, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 24),
  -- Rotom (Frost) - Thunder - TM25
  (479, 47903, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 24),
  -- Rotom (Fan) - Thunder - TM25
  (479, 47904, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 24),
  -- Rotom (Mow) - Thunder - TM25
  (479, 47905, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 24),
  -- Rotom (Heat) - Return - TM27
  (479, 47901, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Rotom (Wash) - Return - TM27
  (479, 47902, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Rotom (Frost) - Return - TM27
  (479, 47903, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Rotom (Fan) - Return - TM27
  (479, 47904, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Rotom (Mow) - Return - TM27
  (479, 47905, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Rotom (Heat) - Shadow Ball - TM30
  (479, 47901, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 26),
  -- Rotom (Wash) - Shadow Ball - TM30
  (479, 47902, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 26),
  -- Rotom (Frost) - Shadow Ball - TM30
  (479, 47903, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 26),
  -- Rotom (Fan) - Shadow Ball - TM30
  (479, 47904, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 26),
  -- Rotom (Mow) - Shadow Ball - TM30
  (479, 47905, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 26),
  -- Rotom (Heat) - Double Team - TM32
  (479, 47901, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Rotom (Wash) - Double Team - TM32
  (479, 47902, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Rotom (Frost) - Double Team - TM32
  (479, 47903, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Rotom (Fan) - Double Team - TM32
  (479, 47904, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Rotom (Mow) - Double Team - TM32
  (479, 47905, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Rotom (Heat) - Reflect - TM33
  (479, 47901, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 28),
  -- Rotom (Wash) - Reflect - TM33
  (479, 47902, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 28),
  -- Rotom (Frost) - Reflect - TM33
  (479, 47903, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 28),
  -- Rotom (Fan) - Reflect - TM33
  (479, 47904, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 28),
  -- Rotom (Mow) - Reflect - TM33
  (479, 47905, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 28),
  -- Rotom (Heat) - Facade - TM42
  (479, 47901, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Rotom (Wash) - Facade - TM42
  (479, 47902, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Rotom (Frost) - Facade - TM42
  (479, 47903, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Rotom (Fan) - Facade - TM42
  (479, 47904, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Rotom (Mow) - Facade - TM42
  (479, 47905, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Rotom (Heat) - Rest - TM44
  (479, 47901, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Rotom (Wash) - Rest - TM44
  (479, 47902, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Rotom (Frost) - Rest - TM44
  (479, 47903, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Rotom (Fan) - Rest - TM44
  (479, 47904, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Rotom (Mow) - Rest - TM44
  (479, 47905, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Rotom (Heat) - Thief - TM46
  (479, 47901, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 31),
  -- Rotom (Wash) - Thief - TM46
  (479, 47902, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 31),
  -- Rotom (Frost) - Thief - TM46
  (479, 47903, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 31),
  -- Rotom (Fan) - Thief - TM46
  (479, 47904, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 31),
  -- Rotom (Mow) - Thief - TM46
  (479, 47905, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 31),
  -- Rotom (Heat) - Round - TM48
  (479, 47901, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Rotom (Wash) - Round - TM48
  (479, 47902, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Rotom (Frost) - Round - TM48
  (479, 47903, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Rotom (Fan) - Round - TM48
  (479, 47904, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Rotom (Mow) - Round - TM48
  (479, 47905, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Rotom (Heat) - Charge Beam - TM57
  (479, 47901, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 33),
  -- Rotom (Wash) - Charge Beam - TM57
  (479, 47902, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 33),
  -- Rotom (Frost) - Charge Beam - TM57
  (479, 47903, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 33),
  -- Rotom (Fan) - Charge Beam - TM57
  (479, 47904, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 33),
  -- Rotom (Mow) - Charge Beam - TM57
  (479, 47905, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 33),
  -- Rotom (Heat) - Will-O-Wisp - TM61
  (479, 47901, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 34),
  -- Rotom (Wash) - Will-O-Wisp - TM61
  (479, 47902, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 34),
  -- Rotom (Frost) - Will-O-Wisp - TM61
  (479, 47903, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 34),
  -- Rotom (Fan) - Will-O-Wisp - TM61
  (479, 47904, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 34),
  -- Rotom (Mow) - Will-O-Wisp - TM61
  (479, 47905, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 34),
  -- Rotom (Heat) - Flash - TM70
  (479, 47901, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 35),
  -- Rotom (Wash) - Flash - TM70
  (479, 47902, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 35),
  -- Rotom (Frost) - Flash - TM70
  (479, 47903, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 35),
  -- Rotom (Fan) - Flash - TM70
  (479, 47904, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 35),
  -- Rotom (Mow) - Flash - TM70
  (479, 47905, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 35),
  -- Rotom (Heat) - Volt Switch - TM72
  (479, 47901, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 36),
  -- Rotom (Wash) - Volt Switch - TM72
  (479, 47902, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 36),
  -- Rotom (Frost) - Volt Switch - TM72
  (479, 47903, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 36),
  -- Rotom (Fan) - Volt Switch - TM72
  (479, 47904, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 36),
  -- Rotom (Mow) - Volt Switch - TM72
  (479, 47905, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 36),
  -- Rotom (Heat) - Thunder Wave - TM73
  (479, 47901, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 37),
  -- Rotom (Wash) - Thunder Wave - TM73
  (479, 47902, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 37),
  -- Rotom (Frost) - Thunder Wave - TM73
  (479, 47903, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 37),
  -- Rotom (Fan) - Thunder Wave - TM73
  (479, 47904, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 37),
  -- Rotom (Mow) - Thunder Wave - TM73
  (479, 47905, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 37),
  -- Rotom (Heat) - Psych Up - TM77
  (479, 47901, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 38),
  -- Rotom (Wash) - Psych Up - TM77
  (479, 47902, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 38),
  -- Rotom (Frost) - Psych Up - TM77
  (479, 47903, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 38),
  -- Rotom (Fan) - Psych Up - TM77
  (479, 47904, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 38),
  -- Rotom (Mow) - Psych Up - TM77
  (479, 47905, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 38),
  -- Rotom (Heat) - Dream Eater - TM85
  (479, 47901, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 39),
  -- Rotom (Wash) - Dream Eater - TM85
  (479, 47902, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 39),
  -- Rotom (Frost) - Dream Eater - TM85
  (479, 47903, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 39),
  -- Rotom (Fan) - Dream Eater - TM85
  (479, 47904, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 39),
  -- Rotom (Mow) - Dream Eater - TM85
  (479, 47905, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 39),
  -- Rotom (Heat) - Swagger - TM87
  (479, 47901, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Rotom (Wash) - Swagger - TM87
  (479, 47902, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Rotom (Frost) - Swagger - TM87
  (479, 47903, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Rotom (Fan) - Swagger - TM87
  (479, 47904, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Rotom (Mow) - Swagger - TM87
  (479, 47905, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Rotom (Heat) - Substitute - TM90
  (479, 47901, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Rotom (Wash) - Substitute - TM90
  (479, 47902, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Rotom (Frost) - Substitute - TM90
  (479, 47903, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Rotom (Fan) - Substitute - TM90
  (479, 47904, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Rotom (Mow) - Substitute - TM90
  (479, 47905, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Rotom (Heat) - Dark Pulse - Move Tutor
  (479, 47901, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Rotom (Wash) - Dark Pulse - Move Tutor
  (479, 47902, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Rotom (Frost) - Dark Pulse - Move Tutor
  (479, 47903, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Rotom (Fan) - Dark Pulse - Move Tutor
  (479, 47904, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Rotom (Mow) - Dark Pulse - Move Tutor
  (479, 47905, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Rotom (Heat) - Electroweb - Move Tutor
  (479, 47901, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Rotom (Wash) - Electroweb - Move Tutor
  (479, 47902, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Rotom (Frost) - Electroweb - Move Tutor
  (479, 47903, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Rotom (Fan) - Electroweb - Move Tutor
  (479, 47904, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Rotom (Mow) - Electroweb - Move Tutor
  (479, 47905, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Rotom (Heat) - Pain Split - Move Tutor
  (479, 47901, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Rotom (Wash) - Pain Split - Move Tutor
  (479, 47902, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Rotom (Frost) - Pain Split - Move Tutor
  (479, 47903, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Rotom (Fan) - Pain Split - Move Tutor
  (479, 47904, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Rotom (Mow) - Pain Split - Move Tutor
  (479, 47905, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Rotom (Heat) - Signal Beam - Move Tutor
  (479, 47901, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Rotom (Wash) - Signal Beam - Move Tutor
  (479, 47902, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Rotom (Frost) - Signal Beam - Move Tutor
  (479, 47903, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Rotom (Fan) - Signal Beam - Move Tutor
  (479, 47904, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Rotom (Mow) - Signal Beam - Move Tutor
  (479, 47905, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Rotom (Heat) - Sleep Talk - Move Tutor
  (479, 47901, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Rotom (Wash) - Sleep Talk - Move Tutor
  (479, 47902, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Rotom (Frost) - Sleep Talk - Move Tutor
  (479, 47903, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Rotom (Fan) - Sleep Talk - Move Tutor
  (479, 47904, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Rotom (Mow) - Sleep Talk - Move Tutor
  (479, 47905, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Rotom (Heat) - Snatch - Move Tutor
  (479, 47901, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Rotom (Wash) - Snatch - Move Tutor
  (479, 47902, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Rotom (Frost) - Snatch - Move Tutor
  (479, 47903, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Rotom (Fan) - Snatch - Move Tutor
  (479, 47904, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Rotom (Mow) - Snatch - Move Tutor
  (479, 47905, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Rotom (Heat) - Snore - Move Tutor
  (479, 47901, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Rotom (Wash) - Snore - Move Tutor
  (479, 47902, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Rotom (Frost) - Snore - Move Tutor
  (479, 47903, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Rotom (Fan) - Snore - Move Tutor
  (479, 47904, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Rotom (Mow) - Snore - Move Tutor
  (479, 47905, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Rotom (Heat) - Spite - Move Tutor
  (479, 47901, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Rotom (Wash) - Spite - Move Tutor
  (479, 47902, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Rotom (Frost) - Spite - Move Tutor
  (479, 47903, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Rotom (Fan) - Spite - Move Tutor
  (479, 47904, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Rotom (Mow) - Spite - Move Tutor
  (479, 47905, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Rotom (Heat) - Trick - Move Tutor
  (479, 47901, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Rotom (Wash) - Trick - Move Tutor
  (479, 47902, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Rotom (Frost) - Trick - Move Tutor
  (479, 47903, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Rotom (Fan) - Trick - Move Tutor
  (479, 47904, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Rotom (Mow) - Trick - Move Tutor
  (479, 47905, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Rotom (Heat) - Uproar - Move Tutor
  (479, 47901, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Rotom (Wash) - Uproar - Move Tutor
  (479, 47902, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Rotom (Frost) - Uproar - Move Tutor
  (479, 47903, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Rotom (Fan) - Uproar - Move Tutor
  (479, 47904, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Rotom (Mow) - Uproar - Move Tutor
  (479, 47905, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Giratina (Origin) - Dragon Breath - Level 1
  (487, 48701, 225, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Giratina (Origin) - Scary Face - Level 1
  (487, 48701, 184, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Giratina (Origin) - Ominous Wind - Level 6
  (487, 48701, 466, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Giratina (Origin) - Ancient Power - Level 10
  (487, 48701, 246, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Giratina (Origin) - Slash - Level 15
  (487, 48701, 163, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Giratina (Origin) - Shadow Sneak - Level 19
  (487, 48701, 425, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Giratina (Origin) - Destiny Bond - Level 24
  (487, 48701, 194, 12, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Giratina (Origin) - Dragon Claw - Level 28
  (487, 48701, 337, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Giratina (Origin) - Earth Power - Level 33
  (487, 48701, 414, 12, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Giratina (Origin) - Aura Sphere - Level 37
  (487, 48701, 396, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Giratina (Origin) - Shadow Claw - Level 42
  (487, 48701, 421, 12, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Giratina (Origin) - Shadow Force - Level 46
  (487, 48701, 467, 12, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Giratina (Origin) - Hex - Level 50
  (487, 48701, 506, 12, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Giratina (Origin) - Hone Claws - TM01
  (487, 48701, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 14),
  -- Giratina (Origin) - Dragon Claw - TM02
  (487, 48701, 337, 12, NULL, 2, NULL, NULL, 12002002, NULL, 15),
  -- Giratina (Origin) - Calm Mind - TM04
  (487, 48701, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 16),
  -- Giratina (Origin) - Roar - TM05
  (487, 48701, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 17),
  -- Giratina (Origin) - Toxic - TM06
  (487, 48701, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Giratina (Origin) - Hidden Power - TM10
  (487, 48701, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Giratina (Origin) - Sunny Day - TM11
  (487, 48701, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Giratina (Origin) - Hyper Beam - TM15
  (487, 48701, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 21),
  -- Giratina (Origin) - Protect - TM17
  (487, 48701, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Giratina (Origin) - Rain Dance - TM18
  (487, 48701, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Giratina (Origin) - Telekinesis - TM19
  (487, 48701, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 24),
  -- Giratina (Origin) - Safeguard - TM20
  (487, 48701, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 25),
  -- Giratina (Origin) - Frustration - TM21
  (487, 48701, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Giratina (Origin) - Thunderbolt - TM24
  (487, 48701, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Giratina (Origin) - Thunder - TM25
  (487, 48701, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 28),
  -- Giratina (Origin) - Earthquake - TM26
  (487, 48701, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 29),
  -- Giratina (Origin) - Return - TM27
  (487, 48701, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 30),
  -- Giratina (Origin) - Psychic - TM29
  (487, 48701, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 31),
  -- Giratina (Origin) - Shadow Ball - TM30
  (487, 48701, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 32),
  -- Giratina (Origin) - Double Team - TM32
  (487, 48701, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 33),
  -- Giratina (Origin) - Aerial Ace - TM40
  (487, 48701, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 34),
  -- Giratina (Origin) - Facade - TM42
  (487, 48701, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Giratina (Origin) - Rest - TM44
  (487, 48701, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Giratina (Origin) - Round - TM48
  (487, 48701, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 37),
  -- Giratina (Origin) - Echoed Voice - TM49
  (487, 48701, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 38),
  -- Giratina (Origin) - Energy Ball - TM53
  (487, 48701, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 39),
  -- Giratina (Origin) - Charge Beam - TM57
  (487, 48701, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 40),
  -- Giratina (Origin) - Will-O-Wisp - TM61
  (487, 48701, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 41),
  -- Giratina (Origin) - Shadow Claw - TM65
  (487, 48701, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 42),
  -- Giratina (Origin) - Payback - TM66
  (487, 48701, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 43),
  -- Giratina (Origin) - Giga Impact - TM68
  (487, 48701, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 44),
  -- Giratina (Origin) - Stone Edge - TM71
  (487, 48701, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 45),
  -- Giratina (Origin) - Thunder Wave - TM73
  (487, 48701, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 46),
  -- Giratina (Origin) - Psych Up - TM77
  (487, 48701, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 47),
  -- Giratina (Origin) - Bulldoze - TM78
  (487, 48701, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 48),
  -- Giratina (Origin) - Dragon Tail - TM82
  (487, 48701, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 49),
  -- Giratina (Origin) - Dream Eater - TM85
  (487, 48701, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 50),
  -- Giratina (Origin) - Swagger - TM87
  (487, 48701, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 51),
  -- Giratina (Origin) - Substitute - TM90
  (487, 48701, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 52),
  -- Giratina (Origin) - Rock Smash - TM94
  (487, 48701, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 53),
  -- Giratina (Origin) - Cut - HM01
  (487, 48701, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 54),
  -- Giratina (Origin) - Fly - HM02
  (487, 48701, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 55),
  -- Giratina (Origin) - Strength - HM04
  (487, 48701, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 56),
  -- Giratina (Origin) - Aqua Tail - Move Tutor
  (487, 48701, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Giratina (Origin) - Dark Pulse - Move Tutor
  (487, 48701, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Giratina (Origin) - Draco Meteor - Move Tutor
  (487, 48701, 434, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Giratina (Origin) - Dragon Pulse - Move Tutor
  (487, 48701, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Giratina (Origin) - Earth Power - Move Tutor
  (487, 48701, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Giratina (Origin) - Gravity - Move Tutor
  (487, 48701, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Giratina (Origin) - Hyper Voice - Move Tutor
  (487, 48701, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Giratina (Origin) - Icy Wind - Move Tutor
  (487, 48701, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Giratina (Origin) - Iron Head - Move Tutor
  (487, 48701, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Giratina (Origin) - Iron Tail - Move Tutor
  (487, 48701, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Giratina (Origin) - Outrage - Move Tutor
  (487, 48701, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Giratina (Origin) - Pain Split - Move Tutor
  (487, 48701, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Giratina (Origin) - Sleep Talk - Move Tutor
  (487, 48701, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Giratina (Origin) - Snore - Move Tutor
  (487, 48701, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Giratina (Origin) - Spite - Move Tutor
  (487, 48701, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Giratina (Origin) - Magic Coat - Move Tutor
  (487, 48701, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Giratina (Origin) - Tailwind - Move Tutor
  (487, 48701, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Shaymin (Sky) - Growth - Level 1
  (492, 49201, 74, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shaymin (Sky) - Magical Leaf - Level 10
  (492, 49201, 345, 12, NULL, 1, 10, NULL, NULL, NULL, 2),
  -- Shaymin (Sky) - Leech Seed - Level 19
  (492, 49201, 73, 12, NULL, 1, 19, NULL, NULL, NULL, 3),
  -- Shaymin (Sky) - Synthesis - Level 28
  (492, 49201, 235, 12, NULL, 1, 28, NULL, NULL, NULL, 4),
  -- Shaymin (Sky) - Sweet Scent - Level 37
  (492, 49201, 230, 12, NULL, 1, 37, NULL, NULL, NULL, 5),
  -- Shaymin (Sky) - Natural Gift - Level 46
  (492, 49201, 363, 12, NULL, 1, 46, NULL, NULL, NULL, 6),
  -- Shaymin (Sky) - Worry Seed - Level 55
  (492, 49201, 388, 12, NULL, 1, 55, NULL, NULL, NULL, 7),
  -- Shaymin (Sky) - Aromatherapy - Level 64
  (492, 49201, 312, 12, NULL, 1, 64, NULL, NULL, NULL, 8),
  -- Shaymin (Sky) - Energy Ball - Level 73
  (492, 49201, 412, 12, NULL, 1, 73, NULL, NULL, NULL, 9),
  -- Shaymin (Sky) - Sweet Kiss - Level 82
  (492, 49201, 186, 12, NULL, 1, 82, NULL, NULL, NULL, 10),
  -- Shaymin (Sky) - Healing Wish - Level 91
  (492, 49201, 361, 12, NULL, 1, 91, NULL, NULL, NULL, 11),
  -- Shaymin (Sky) - Seed Flare - Level 100
  (492, 49201, 465, 12, NULL, 1, 100, NULL, NULL, NULL, 12),
  -- Shaymin (Sky) - Quick Attack - Level 28
  (492, 49201, 98, 12, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Shaymin (Sky) - Air Slash - Level 64
  (492, 49201, 403, 12, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Shaymin (Sky) - Leaf Storm - Level 91
  (492, 49201, 437, 12, NULL, 1, 91, NULL, NULL, NULL, 15),
  -- Shaymin (Sky) - Toxic - TM06
  (492, 49201, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Shaymin (Sky) - Hidden Power - TM10
  (492, 49201, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Shaymin (Sky) - Sunny Day - TM11
  (492, 49201, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Shaymin (Sky) - Hyper Beam - TM15
  (492, 49201, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 19),
  -- Shaymin (Sky) - Protect - TM17
  (492, 49201, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Shaymin (Sky) - Safeguard - TM20
  (492, 49201, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 21),
  -- Shaymin (Sky) - Frustration - TM21
  (492, 49201, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Shaymin (Sky) - Solar Beam - TM22
  (492, 49201, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 23),
  -- Shaymin (Sky) - Return - TM27
  (492, 49201, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Shaymin (Sky) - Psychic - TM29
  (492, 49201, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 25),
  -- Shaymin (Sky) - Double Team - TM32
  (492, 49201, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Shaymin (Sky) - Facade - TM42
  (492, 49201, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 27),
  -- Shaymin (Sky) - Rest - TM44
  (492, 49201, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 28),
  -- Shaymin (Sky) - Round - TM48
  (492, 49201, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 29),
  -- Shaymin (Sky) - Energy Ball - TM53
  (492, 49201, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 30),
  -- Shaymin (Sky) - Giga Impact - TM68
  (492, 49201, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 31),
  -- Shaymin (Sky) - Flash - TM70
  (492, 49201, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 32),
  -- Shaymin (Sky) - Swords Dance - TM75
  (492, 49201, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 33),
  -- Shaymin (Sky) - Psych Up - TM77
  (492, 49201, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 34),
  -- Shaymin (Sky) - Grass Knot - TM86
  (492, 49201, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 35),
  -- Shaymin (Sky) - Swagger - TM87
  (492, 49201, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 36),
  -- Shaymin (Sky) - Substitute - TM90
  (492, 49201, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 37),
  -- Shaymin (Sky) - Covet - Move Tutor
  (492, 49201, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 38),
  -- Shaymin (Sky) - Earth Power - Move Tutor
  (492, 49201, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 39),
  -- Shaymin (Sky) - Endeavor - Move Tutor
  (492, 49201, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 40),
  -- Shaymin (Sky) - Giga Drain - Move Tutor
  (492, 49201, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 41),
  -- Shaymin (Sky) - Last Resort - Move Tutor
  (492, 49201, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Shaymin (Sky) - Seed Bomb - Move Tutor
  (492, 49201, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Shaymin (Sky) - Sleep Talk - Move Tutor
  (492, 49201, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Shaymin (Sky) - Snore - Move Tutor
  (492, 49201, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Shaymin (Sky) - Synthesis - Move Tutor
  (492, 49201, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Shaymin (Sky) - Worry Seed - Move Tutor
  (492, 49201, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Shaymin (Sky) - Zen Headbutt - Move Tutor
  (492, 49201, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Shaymin (Sky) - Tailwind - Move Tutor
  (492, 49201, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Basculin (Blue-Striped) - Tackle - Level 1
  (550, 55001, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Basculin (Blue-Striped) - Water Gun - Level 1
  (550, 55001, 55, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Basculin (Blue-Striped) - Uproar - Level 4
  (550, 55001, 253, 12, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Basculin (Blue-Striped) - Headbutt - Level 7
  (550, 55001, 29, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Basculin (Blue-Striped) - Bite - Level 10
  (550, 55001, 44, 12, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Basculin (Blue-Striped) - Aqua Jet - Level 13
  (550, 55001, 453, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Basculin (Blue-Striped) - Chip Away - Level 16
  (550, 55001, 498, 12, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Basculin (Blue-Striped) - Take Down - Level 20
  (550, 55001, 36, 12, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Basculin (Blue-Striped) - Crunch - Level 24
  (550, 55001, 242, 12, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Basculin (Blue-Striped) - Aqua Tail - Level 28
  (550, 55001, 401, 12, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Basculin (Blue-Striped) - Soak - Level 32
  (550, 55001, 487, 12, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Basculin (Blue-Striped) - Double-Edge - Level 36
  (550, 55001, 38, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Basculin (Blue-Striped) - Scary Face - Level 41
  (550, 55001, 184, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Basculin (Blue-Striped) - Flail - Level 46
  (550, 55001, 175, 12, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Basculin (Blue-Striped) - Final Gambit - Level 51
  (550, 55001, 515, 12, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Basculin (Blue-Striped) - Thrash - Level 56
  (550, 55001, 37, 12, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Basculin (Blue-Striped) - Toxic - TM06
  (550, 55001, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Basculin (Blue-Striped) - Hail - TM07
  (550, 55001, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 18),
  -- Basculin (Blue-Striped) - Hidden Power - TM10
  (550, 55001, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Basculin (Blue-Striped) - Taunt - TM12
  (550, 55001, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 20),
  -- Basculin (Blue-Striped) - Ice Beam - TM13
  (550, 55001, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 21),
  -- Basculin (Blue-Striped) - Protect - TM17
  (550, 55001, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Basculin (Blue-Striped) - Rain Dance - TM18
  (550, 55001, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Basculin (Blue-Striped) - Frustration - TM21
  (550, 55001, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Basculin (Blue-Striped) - Return - TM27
  (550, 55001, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Basculin (Blue-Striped) - Double Team - TM32
  (550, 55001, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Basculin (Blue-Striped) - Facade - TM42
  (550, 55001, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 27),
  -- Basculin (Blue-Striped) - Rest - TM44
  (550, 55001, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 28),
  -- Basculin (Blue-Striped) - Attract - TM45
  (550, 55001, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 29),
  -- Basculin (Blue-Striped) - Round - TM48
  (550, 55001, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 30),
  -- Basculin (Blue-Striped) - Scald - TM55
  (550, 55001, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 31),
  -- Basculin (Blue-Striped) - Swagger - TM87
  (550, 55001, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 32),
  -- Basculin (Blue-Striped) - Substitute - TM90
  (550, 55001, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 33),
  -- Basculin (Blue-Striped) - Cut - HM01
  (550, 55001, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 34),
  -- Basculin (Blue-Striped) - Surf - HM03
  (550, 55001, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 35),
  -- Basculin (Blue-Striped) - Waterfall - HM05
  (550, 55001, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 36),
  -- Basculin (Blue-Striped) - Dive - HM06
  (550, 55001, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 37),
  -- Basculin (Blue-Striped) - Agility - Egg Move
  (550, 55001, 97, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Basculin (Blue-Striped) - Brine - Egg Move
  (550, 55001, 362, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Basculin (Blue-Striped) - Bubble Beam - Egg Move
  (550, 55001, 61, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Basculin (Blue-Striped) - Muddy Water - Egg Move
  (550, 55001, 330, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Basculin (Blue-Striped) - Mud Shot - Egg Move
  (550, 55001, 341, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Basculin (Blue-Striped) - Rage - Egg Move
  (550, 55001, 99, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Basculin (Blue-Striped) - Revenge - Egg Move
  (550, 55001, 279, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Basculin (Blue-Striped) - Swift - Egg Move
  (550, 55001, 129, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Basculin (Blue-Striped) - Whirlpool - Egg Move
  (550, 55001, 250, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Basculin (Blue-Striped) - Aqua Tail - Move Tutor
  (550, 55001, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Basculin (Blue-Striped) - Bounce - Move Tutor
  (550, 55001, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Basculin (Blue-Striped) - Endeavor - Move Tutor
  (550, 55001, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Basculin (Blue-Striped) - Icy Wind - Move Tutor
  (550, 55001, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Basculin (Blue-Striped) - Sleep Talk - Move Tutor
  (550, 55001, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Basculin (Blue-Striped) - Snore - Move Tutor
  (550, 55001, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Basculin (Blue-Striped) - Superpower - Move Tutor
  (550, 55001, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Basculin (Blue-Striped) - Uproar - Move Tutor
  (550, 55001, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Basculin (Blue-Striped) - Zen Headbutt - Move Tutor
  (550, 55001, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Tornadus (Therian) - Uproar - Level 1
  (641, 64101, 253, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tornadus (Therian) - Astonish - Level 1
  (641, 64101, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tornadus (Therian) - Gust - Level 1
  (641, 64101, 16, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tornadus (Therian) - Swagger - Level 7
  (641, 64101, 207, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Tornadus (Therian) - Bite - Level 13
  (641, 64101, 44, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Tornadus (Therian) - Revenge - Level 19
  (641, 64101, 279, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Tornadus (Therian) - Air Cutter - Level 25
  (641, 64101, 314, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Tornadus (Therian) - Extrasensory - Level 31
  (641, 64101, 326, 12, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Tornadus (Therian) - Agility - Level 37
  (641, 64101, 97, 12, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Tornadus (Therian) - Air Slash - Level 43
  (641, 64101, 403, 12, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Tornadus (Therian) - Crunch - Level 49
  (641, 64101, 242, 12, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Tornadus (Therian) - Tailwind - Level 55
  (641, 64101, 366, 12, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Tornadus (Therian) - Rain Dance - Level 61
  (641, 64101, 240, 12, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Tornadus (Therian) - Hurricane - Level 67
  (641, 64101, 542, 12, NULL, 1, 67, NULL, NULL, NULL, 14),
  -- Tornadus (Therian) - Dark Pulse - Level 73
  (641, 64101, 399, 12, NULL, 1, 73, NULL, NULL, NULL, 15),
  -- Tornadus (Therian) - Hammer Arm - Level 79
  (641, 64101, 359, 12, NULL, 1, 79, NULL, NULL, NULL, 16),
  -- Tornadus (Therian) - Thrash - Level 85
  (641, 64101, 37, 12, NULL, 1, 85, NULL, NULL, NULL, 17),
  -- Tornadus (Therian) - Toxic - TM06
  (641, 64101, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Tornadus (Therian) - Bulk Up - TM08
  (641, 64101, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 19),
  -- Tornadus (Therian) - Hidden Power - TM10
  (641, 64101, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Tornadus (Therian) - Taunt - TM12
  (641, 64101, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 21),
  -- Tornadus (Therian) - Hyper Beam - TM15
  (641, 64101, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Tornadus (Therian) - Protect - TM17
  (641, 64101, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Tornadus (Therian) - Rain Dance - TM18
  (641, 64101, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Tornadus (Therian) - Frustration - TM21
  (641, 64101, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Tornadus (Therian) - Smack Down - TM23
  (641, 64101, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 26),
  -- Tornadus (Therian) - Return - TM27
  (641, 64101, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Tornadus (Therian) - Psychic - TM29
  (641, 64101, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 28),
  -- Tornadus (Therian) - Brick Break - TM31
  (641, 64101, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 29),
  -- Tornadus (Therian) - Double Team - TM32
  (641, 64101, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Tornadus (Therian) - Sludge Wave - TM34
  (641, 64101, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 31),
  -- Tornadus (Therian) - Sludge Bomb - TM36
  (641, 64101, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 32),
  -- Tornadus (Therian) - Aerial Ace - TM40
  (641, 64101, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 33),
  -- Tornadus (Therian) - Torment - TM41
  (641, 64101, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 34),
  -- Tornadus (Therian) - Facade - TM42
  (641, 64101, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Tornadus (Therian) - Rest - TM44
  (641, 64101, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Tornadus (Therian) - Attract - TM45
  (641, 64101, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 37),
  -- Tornadus (Therian) - Thief - TM46
  (641, 64101, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 38),
  -- Tornadus (Therian) - Round - TM48
  (641, 64101, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Tornadus (Therian) - Focus Blast - TM52
  (641, 64101, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 40),
  -- Tornadus (Therian) - Fling - TM56
  (641, 64101, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 41),
  -- Tornadus (Therian) - Sky Drop - TM58
  (641, 64101, 507, 12, NULL, 2, NULL, NULL, 12002058, NULL, 42),
  -- Tornadus (Therian) - Incinerate - TM59
  (641, 64101, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 43),
  -- Tornadus (Therian) - Acrobatics - TM62
  (641, 64101, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 44),
  -- Tornadus (Therian) - Embargo - TM63
  (641, 64101, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 45),
  -- Tornadus (Therian) - Payback - TM66
  (641, 64101, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 46),
  -- Tornadus (Therian) - Giga Impact - TM68
  (641, 64101, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 47),
  -- Tornadus (Therian) - Grass Knot - TM86
  (641, 64101, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 48),
  -- Tornadus (Therian) - Swagger - TM87
  (641, 64101, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 49),
  -- Tornadus (Therian) - U-turn - TM89
  (641, 64101, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 50),
  -- Tornadus (Therian) - Substitute - TM90
  (641, 64101, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 51),
  -- Tornadus (Therian) - Rock Smash - TM94
  (641, 64101, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 52),
  -- Tornadus (Therian) - Fly - HM02
  (641, 64101, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 53),
  -- Tornadus (Therian) - Strength - HM04
  (641, 64101, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 54),
  -- Tornadus (Therian) - Dark Pulse - Move Tutor
  (641, 64101, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Tornadus (Therian) - Foul Play - Move Tutor
  (641, 64101, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Tornadus (Therian) - Heat Wave - Move Tutor
  (641, 64101, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Tornadus (Therian) - Icy Wind - Move Tutor
  (641, 64101, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Tornadus (Therian) - Iron Tail - Move Tutor
  (641, 64101, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Tornadus (Therian) - Knock Off - Move Tutor
  (641, 64101, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Tornadus (Therian) - Role Play - Move Tutor
  (641, 64101, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Tornadus (Therian) - Sleep Talk - Move Tutor
  (641, 64101, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Tornadus (Therian) - Snore - Move Tutor
  (641, 64101, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Tornadus (Therian) - Superpower - Move Tutor
  (641, 64101, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Tornadus (Therian) - Tailwind - Move Tutor
  (641, 64101, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Tornadus (Therian) - Uproar - Move Tutor
  (641, 64101, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Thundurus (Therian) - Uproar - Level 1
  (642, 64201, 253, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Thundurus (Therian) - Astonish - Level 1
  (642, 64201, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Thundurus (Therian) - Thunder Shock - Level 1
  (642, 64201, 84, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Thundurus (Therian) - Swagger - Level 7
  (642, 64201, 207, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Thundurus (Therian) - Bite - Level 13
  (642, 64201, 44, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Thundurus (Therian) - Revenge - Level 19
  (642, 64201, 279, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Thundurus (Therian) - Shock Wave - Level 25
  (642, 64201, 351, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Thundurus (Therian) - Heal Block - Level 31
  (642, 64201, 377, 12, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Thundurus (Therian) - Agility - Level 37
  (642, 64201, 97, 12, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Thundurus (Therian) - Discharge - Level 43
  (642, 64201, 435, 12, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Thundurus (Therian) - Crunch - Level 49
  (642, 64201, 242, 12, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Thundurus (Therian) - Charge - Level 55
  (642, 64201, 268, 12, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Thundurus (Therian) - Nasty Plot - Level 61
  (642, 64201, 417, 12, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Thundurus (Therian) - Thunder - Level 67
  (642, 64201, 87, 12, NULL, 1, 67, NULL, NULL, NULL, 14),
  -- Thundurus (Therian) - Dark Pulse - Level 73
  (642, 64201, 399, 12, NULL, 1, 73, NULL, NULL, NULL, 15),
  -- Thundurus (Therian) - Hammer Arm - Level 79
  (642, 64201, 359, 12, NULL, 1, 79, NULL, NULL, NULL, 16),
  -- Thundurus (Therian) - Thrash - Level 85
  (642, 64201, 37, 12, NULL, 1, 85, NULL, NULL, NULL, 17),
  -- Thundurus (Therian) - Toxic - TM06
  (642, 64201, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Thundurus (Therian) - Bulk Up - TM08
  (642, 64201, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 19),
  -- Thundurus (Therian) - Hidden Power - TM10
  (642, 64201, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Thundurus (Therian) - Taunt - TM12
  (642, 64201, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 21),
  -- Thundurus (Therian) - Hyper Beam - TM15
  (642, 64201, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Thundurus (Therian) - Protect - TM17
  (642, 64201, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Thundurus (Therian) - Rain Dance - TM18
  (642, 64201, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Thundurus (Therian) - Frustration - TM21
  (642, 64201, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Thundurus (Therian) - Smack Down - TM23
  (642, 64201, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 26),
  -- Thundurus (Therian) - Thunderbolt - TM24
  (642, 64201, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Thundurus (Therian) - Thunder - TM25
  (642, 64201, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 28),
  -- Thundurus (Therian) - Return - TM27
  (642, 64201, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Thundurus (Therian) - Psychic - TM29
  (642, 64201, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 30),
  -- Thundurus (Therian) - Brick Break - TM31
  (642, 64201, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 31),
  -- Thundurus (Therian) - Double Team - TM32
  (642, 64201, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Thundurus (Therian) - Sludge Wave - TM34
  (642, 64201, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 33),
  -- Thundurus (Therian) - Sludge Bomb - TM36
  (642, 64201, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 34),
  -- Thundurus (Therian) - Torment - TM41
  (642, 64201, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 35),
  -- Thundurus (Therian) - Facade - TM42
  (642, 64201, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 36),
  -- Thundurus (Therian) - Rest - TM44
  (642, 64201, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 37),
  -- Thundurus (Therian) - Attract - TM45
  (642, 64201, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 38),
  -- Thundurus (Therian) - Thief - TM46
  (642, 64201, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 39),
  -- Thundurus (Therian) - Round - TM48
  (642, 64201, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 40),
  -- Thundurus (Therian) - Focus Blast - TM52
  (642, 64201, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 41),
  -- Thundurus (Therian) - Fling - TM56
  (642, 64201, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 42),
  -- Thundurus (Therian) - Charge Beam - TM57
  (642, 64201, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 43),
  -- Thundurus (Therian) - Sky Drop - TM58
  (642, 64201, 507, 12, NULL, 2, NULL, NULL, 12002058, NULL, 44),
  -- Thundurus (Therian) - Incinerate - TM59
  (642, 64201, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 45),
  -- Thundurus (Therian) - Embargo - TM63
  (642, 64201, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 46),
  -- Thundurus (Therian) - Payback - TM66
  (642, 64201, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 47),
  -- Thundurus (Therian) - Giga Impact - TM68
  (642, 64201, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 48),
  -- Thundurus (Therian) - Volt Switch - TM72
  (642, 64201, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 49),
  -- Thundurus (Therian) - Thunder Wave - TM73
  (642, 64201, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 50),
  -- Thundurus (Therian) - Grass Knot - TM86
  (642, 64201, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 51),
  -- Thundurus (Therian) - Swagger - TM87
  (642, 64201, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 52),
  -- Thundurus (Therian) - U-turn - TM89
  (642, 64201, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 53),
  -- Thundurus (Therian) - Substitute - TM90
  (642, 64201, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 54),
  -- Thundurus (Therian) - Flash Cannon - TM91
  (642, 64201, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 55),
  -- Thundurus (Therian) - Wild Charge - TM93
  (642, 64201, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 56),
  -- Thundurus (Therian) - Rock Smash - TM94
  (642, 64201, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 57),
  -- Thundurus (Therian) - Fly - HM02
  (642, 64201, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 58),
  -- Thundurus (Therian) - Strength - HM04
  (642, 64201, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 59),
  -- Thundurus (Therian) - Dark Pulse - Move Tutor
  (642, 64201, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Thundurus (Therian) - Foul Play - Move Tutor
  (642, 64201, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Thundurus (Therian) - Iron Tail - Move Tutor
  (642, 64201, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Thundurus (Therian) - Knock Off - Move Tutor
  (642, 64201, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Thundurus (Therian) - Role Play - Move Tutor
  (642, 64201, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Thundurus (Therian) - Sleep Talk - Move Tutor
  (642, 64201, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Thundurus (Therian) - Snore - Move Tutor
  (642, 64201, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Thundurus (Therian) - Superpower - Move Tutor
  (642, 64201, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Thundurus (Therian) - Thunder Punch - Move Tutor
  (642, 64201, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Thundurus (Therian) - Uproar - Move Tutor
  (642, 64201, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Landorus (Therian) - Block - Level 1
  (645, 64501, 335, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Landorus (Therian) - Mud Shot - Level 1
  (645, 64501, 341, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Landorus (Therian) - Rock Tomb - Level 1
  (645, 64501, 317, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Landorus (Therian) - Imprison - Level 7
  (645, 64501, 286, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Landorus (Therian) - Punishment - Level 13
  (645, 64501, 386, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Landorus (Therian) - Bulldoze - Level 19
  (645, 64501, 523, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Landorus (Therian) - Rock Throw - Level 25
  (645, 64501, 88, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Landorus (Therian) - Extrasensory - Level 31
  (645, 64501, 326, 12, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Landorus (Therian) - Swords Dance - Level 37
  (645, 64501, 14, 12, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Landorus (Therian) - Earth Power - Level 43
  (645, 64501, 414, 12, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Landorus (Therian) - Rock Slide - Level 49
  (645, 64501, 157, 12, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Landorus (Therian) - Earthquake - Level 55
  (645, 64501, 89, 12, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Landorus (Therian) - Sandstorm - Level 61
  (645, 64501, 201, 12, NULL, 1, 61, NULL, NULL, NULL, 13),
  -- Landorus (Therian) - Fissure - Level 67
  (645, 64501, 90, 12, NULL, 1, 67, NULL, NULL, NULL, 14),
  -- Landorus (Therian) - Stone Edge - Level 73
  (645, 64501, 444, 12, NULL, 1, 73, NULL, NULL, NULL, 15),
  -- Landorus (Therian) - Hammer Arm - Level 79
  (645, 64501, 359, 12, NULL, 1, 79, NULL, NULL, NULL, 16),
  -- Landorus (Therian) - Outrage - Level 85
  (645, 64501, 200, 12, NULL, 1, 85, NULL, NULL, NULL, 17),
  -- Landorus (Therian) - Calm Mind - TM04
  (645, 64501, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 18),
  -- Landorus (Therian) - Toxic - TM06
  (645, 64501, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Landorus (Therian) - Bulk Up - TM08
  (645, 64501, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 20),
  -- Landorus (Therian) - Hidden Power - TM10
  (645, 64501, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Landorus (Therian) - Hyper Beam - TM15
  (645, 64501, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Landorus (Therian) - Protect - TM17
  (645, 64501, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Landorus (Therian) - Frustration - TM21
  (645, 64501, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Landorus (Therian) - Smack Down - TM23
  (645, 64501, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 25),
  -- Landorus (Therian) - Earthquake - TM26
  (645, 64501, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 26),
  -- Landorus (Therian) - Return - TM27
  (645, 64501, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Landorus (Therian) - Dig - TM28
  (645, 64501, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 28),
  -- Landorus (Therian) - Psychic - TM29
  (645, 64501, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 29),
  -- Landorus (Therian) - Brick Break - TM31
  (645, 64501, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 30),
  -- Landorus (Therian) - Double Team - TM32
  (645, 64501, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 31),
  -- Landorus (Therian) - Sludge Wave - TM34
  (645, 64501, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 32),
  -- Landorus (Therian) - Sludge Bomb - TM36
  (645, 64501, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 33),
  -- Landorus (Therian) - Sandstorm - TM37
  (645, 64501, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 34),
  -- Landorus (Therian) - Rock Tomb - TM39
  (645, 64501, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 35),
  -- Landorus (Therian) - Facade - TM42
  (645, 64501, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 36),
  -- Landorus (Therian) - Rest - TM44
  (645, 64501, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 37),
  -- Landorus (Therian) - Attract - TM45
  (645, 64501, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 38),
  -- Landorus (Therian) - Round - TM48
  (645, 64501, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Landorus (Therian) - Focus Blast - TM52
  (645, 64501, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 40),
  -- Landorus (Therian) - Fling - TM56
  (645, 64501, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 41),
  -- Landorus (Therian) - Explosion - TM64
  (645, 64501, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 42),
  -- Landorus (Therian) - Payback - TM66
  (645, 64501, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 43),
  -- Landorus (Therian) - Giga Impact - TM68
  (645, 64501, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 44),
  -- Landorus (Therian) - Rock Polish - TM69
  (645, 64501, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 45),
  -- Landorus (Therian) - Stone Edge - TM71
  (645, 64501, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 46),
  -- Landorus (Therian) - Swords Dance - TM75
  (645, 64501, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 47),
  -- Landorus (Therian) - Bulldoze - TM78
  (645, 64501, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 48),
  -- Landorus (Therian) - Rock Slide - TM80
  (645, 64501, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 49),
  -- Landorus (Therian) - Grass Knot - TM86
  (645, 64501, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 50),
  -- Landorus (Therian) - Swagger - TM87
  (645, 64501, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 51),
  -- Landorus (Therian) - U-turn - TM89
  (645, 64501, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 52),
  -- Landorus (Therian) - Substitute - TM90
  (645, 64501, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 53),
  -- Landorus (Therian) - Rock Smash - TM94
  (645, 64501, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 54),
  -- Landorus (Therian) - Fly - HM02
  (645, 64501, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 55),
  -- Landorus (Therian) - Strength - HM04
  (645, 64501, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 56),
  -- Landorus (Therian) - Block - Move Tutor
  (645, 64501, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Landorus (Therian) - Earth Power - Move Tutor
  (645, 64501, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Landorus (Therian) - Gravity - Move Tutor
  (645, 64501, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Landorus (Therian) - Iron Tail - Move Tutor
  (645, 64501, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Landorus (Therian) - Knock Off - Move Tutor
  (645, 64501, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Landorus (Therian) - Outrage - Move Tutor
  (645, 64501, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Landorus (Therian) - Role Play - Move Tutor
  (645, 64501, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Landorus (Therian) - Sleep Talk - Move Tutor
  (645, 64501, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Landorus (Therian) - Snore - Move Tutor
  (645, 64501, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Landorus (Therian) - Stealth Rock - Move Tutor
  (645, 64501, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Landorus (Therian) - Superpower - Move Tutor
  (645, 64501, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Kyurem (White) - Icy Wind - Level 1
  (646, 64601, 196, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyurem (Black) - Icy Wind - Level 1
  (646, 64602, 196, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyurem (White) - Dragon Rage - Level 1
  (646, 64601, 82, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kyurem (Black) - Dragon Rage - Level 1
  (646, 64602, 82, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kyurem (White) - Imprison - Level 8
  (646, 64601, 286, 12, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Kyurem (Black) - Imprison - Level 8
  (646, 64602, 286, 12, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Kyurem (White) - Ancient Power - Level 15
  (646, 64601, 246, 12, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Kyurem (Black) - Ancient Power - Level 15
  (646, 64602, 246, 12, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Kyurem (White) - Ice Beam - Level 22
  (646, 64601, 58, 12, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Kyurem (Black) - Ice Beam - Level 22
  (646, 64602, 58, 12, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Kyurem (White) - Dragon Breath - Level 29
  (646, 64601, 225, 12, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Kyurem (Black) - Dragon Breath - Level 29
  (646, 64602, 225, 12, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Kyurem (White) - Slash - Level 36
  (646, 64601, 163, 12, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Kyurem (Black) - Slash - Level 36
  (646, 64602, 163, 12, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Kyurem (White) - Scary Face - Level 43
  (646, 64601, 184, 12, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Kyurem (Black) - Scary Face - Level 43
  (646, 64602, 184, 12, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Kyurem (White) - Glaciate - Level 50
  (646, 64601, 549, 12, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Kyurem (Black) - Glaciate - Level 50
  (646, 64602, 549, 12, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Kyurem (White) - Dragon Pulse - Level 57
  (646, 64601, 406, 12, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Kyurem (Black) - Dragon Pulse - Level 57
  (646, 64602, 406, 12, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Kyurem (White) - Imprison - Level 64
  (646, 64601, 286, 12, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Kyurem (Black) - Imprison - Level 64
  (646, 64602, 286, 12, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Kyurem (White) - Endeavor - Level 71
  (646, 64601, 283, 12, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Kyurem (Black) - Endeavor - Level 71
  (646, 64602, 283, 12, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Kyurem (White) - Blizzard - Level 78
  (646, 64601, 59, 12, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Kyurem (Black) - Blizzard - Level 78
  (646, 64602, 59, 12, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Kyurem (White) - Outrage - Level 85
  (646, 64601, 200, 12, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Kyurem (Black) - Outrage - Level 85
  (646, 64602, 200, 12, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Kyurem (White) - Hyper Voice - Level 92
  (646, 64601, 304, 12, NULL, 1, 92, NULL, NULL, NULL, 15),
  -- Kyurem (Black) - Hyper Voice - Level 92
  (646, 64602, 304, 12, NULL, 1, 92, NULL, NULL, NULL, 15),
  -- Kyurem (White) - Fusion Flare - Level 43
  (646, 64601, 558, 12, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Kyurem (White) - Ice Burn - Level 50
  (646, 64601, 554, 12, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Kyurem (Black) - Fusion Bolt - Level 43
  (646, 64602, 559, 12, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Kyurem (Black) - Freeze Shock - Level 50
  (646, 64602, 553, 12, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Kyurem (White) - Hone Claws - TM01
  (646, 64601, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 18),
  -- Kyurem (Black) - Hone Claws - TM01
  (646, 64602, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 18),
  -- Kyurem (White) - Dragon Claw - TM02
  (646, 64601, 337, 12, NULL, 2, NULL, NULL, 12002002, NULL, 19),
  -- Kyurem (Black) - Dragon Claw - TM02
  (646, 64602, 337, 12, NULL, 2, NULL, NULL, 12002002, NULL, 19),
  -- Kyurem (White) - Toxic - TM06
  (646, 64601, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Kyurem (Black) - Toxic - TM06
  (646, 64602, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Kyurem (White) - Hail - TM07
  (646, 64601, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 21),
  -- Kyurem (Black) - Hail - TM07
  (646, 64602, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 21),
  -- Kyurem (White) - Hidden Power - TM10
  (646, 64601, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 22),
  -- Kyurem (Black) - Hidden Power - TM10
  (646, 64602, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 22),
  -- Kyurem (White) - Sunny Day - TM11
  (646, 64601, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 23),
  -- Kyurem (Black) - Sunny Day - TM11
  (646, 64602, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 23),
  -- Kyurem (White) - Ice Beam - TM13
  (646, 64601, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 24),
  -- Kyurem (Black) - Ice Beam - TM13
  (646, 64602, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 24),
  -- Kyurem (White) - Blizzard - TM14
  (646, 64601, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 25),
  -- Kyurem (Black) - Blizzard - TM14
  (646, 64602, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 25),
  -- Kyurem (White) - Hyper Beam - TM15
  (646, 64601, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 26),
  -- Kyurem (Black) - Hyper Beam - TM15
  (646, 64602, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 26),
  -- Kyurem (White) - Light Screen - TM16
  (646, 64601, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 27),
  -- Kyurem (Black) - Light Screen - TM16
  (646, 64602, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 27),
  -- Kyurem (White) - Protect - TM17
  (646, 64601, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 28),
  -- Kyurem (Black) - Protect - TM17
  (646, 64602, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 28),
  -- Kyurem (White) - Rain Dance - TM18
  (646, 64601, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 29),
  -- Kyurem (Black) - Rain Dance - TM18
  (646, 64602, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 29),
  -- Kyurem (White) - Safeguard - TM20
  (646, 64601, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 30),
  -- Kyurem (Black) - Safeguard - TM20
  (646, 64602, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 30),
  -- Kyurem (White) - Frustration - TM21
  (646, 64601, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 31),
  -- Kyurem (Black) - Frustration - TM21
  (646, 64602, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 31),
  -- Kyurem (White) - Return - TM27
  (646, 64601, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 32),
  -- Kyurem (Black) - Return - TM27
  (646, 64602, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 32),
  -- Kyurem (White) - Psychic - TM29
  (646, 64601, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 33),
  -- Kyurem (Black) - Psychic - TM29
  (646, 64602, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 33),
  -- Kyurem (White) - Shadow Ball - TM30
  (646, 64601, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 34),
  -- Kyurem (Black) - Shadow Ball - TM30
  (646, 64602, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 34),
  -- Kyurem (White) - Double Team - TM32
  (646, 64601, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 35),
  -- Kyurem (Black) - Double Team - TM32
  (646, 64602, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 35),
  -- Kyurem (White) - Reflect - TM33
  (646, 64601, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 36),
  -- Kyurem (Black) - Reflect - TM33
  (646, 64602, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 36),
  -- Kyurem (White) - Rock Tomb - TM39
  (646, 64601, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 37),
  -- Kyurem (Black) - Rock Tomb - TM39
  (646, 64602, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 37),
  -- Kyurem (White) - Facade - TM42
  (646, 64601, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 38),
  -- Kyurem (Black) - Facade - TM42
  (646, 64602, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 38),
  -- Kyurem (White) - Rest - TM44
  (646, 64601, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 39),
  -- Kyurem (Black) - Rest - TM44
  (646, 64602, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 39),
  -- Kyurem (White) - Round - TM48
  (646, 64601, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 40),
  -- Kyurem (Black) - Round - TM48
  (646, 64602, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 40),
  -- Kyurem (White) - Echoed Voice - TM49
  (646, 64601, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 41),
  -- Kyurem (Black) - Echoed Voice - TM49
  (646, 64602, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 41),
  -- Kyurem (White) - Focus Blast - TM52
  (646, 64601, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 42),
  -- Kyurem (Black) - Focus Blast - TM52
  (646, 64602, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 42),
  -- Kyurem (White) - Fling - TM56
  (646, 64601, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 43),
  -- Kyurem (Black) - Fling - TM56
  (646, 64602, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 43),
  -- Kyurem (White) - Shadow Claw - TM65
  (646, 64601, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 44),
  -- Kyurem (Black) - Shadow Claw - TM65
  (646, 64602, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 44),
  -- Kyurem (White) - Payback - TM66
  (646, 64601, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 45),
  -- Kyurem (Black) - Payback - TM66
  (646, 64602, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 45),
  -- Kyurem (White) - Giga Impact - TM68
  (646, 64601, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 46),
  -- Kyurem (Black) - Giga Impact - TM68
  (646, 64602, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 46),
  -- Kyurem (White) - Stone Edge - TM71
  (646, 64601, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 47),
  -- Kyurem (Black) - Stone Edge - TM71
  (646, 64602, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 47),
  -- Kyurem (White) - Rock Slide - TM80
  (646, 64601, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 48),
  -- Kyurem (Black) - Rock Slide - TM80
  (646, 64602, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 48),
  -- Kyurem (White) - Dragon Tail - TM82
  (646, 64601, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 49),
  -- Kyurem (Black) - Dragon Tail - TM82
  (646, 64602, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 49),
  -- Kyurem (White) - Swagger - TM87
  (646, 64601, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 50),
  -- Kyurem (Black) - Swagger - TM87
  (646, 64602, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 50),
  -- Kyurem (White) - Substitute - TM90
  (646, 64601, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 51),
  -- Kyurem (Black) - Substitute - TM90
  (646, 64602, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 51),
  -- Kyurem (White) - Flash Cannon - TM91
  (646, 64601, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 52),
  -- Kyurem (Black) - Flash Cannon - TM91
  (646, 64602, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 52),
  -- Kyurem (White) - Rock Smash - TM94
  (646, 64601, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 53),
  -- Kyurem (Black) - Rock Smash - TM94
  (646, 64602, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 53),
  -- Kyurem (White) - Cut - HM01
  (646, 64601, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 54),
  -- Kyurem (Black) - Cut - HM01
  (646, 64602, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 54),
  -- Kyurem (White) - Fly - HM02
  (646, 64601, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 55),
  -- Kyurem (Black) - Fly - HM02
  (646, 64602, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 55),
  -- Kyurem (White) - Strength - HM04
  (646, 64601, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 56),
  -- Kyurem (Black) - Strength - HM04
  (646, 64602, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 56),
  -- Kyurem (White) - Draco Meteor - Move Tutor
  (646, 64601, 434, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Kyurem (Black) - Draco Meteor - Move Tutor
  (646, 64602, 434, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Kyurem (White) - Dragon Pulse - Move Tutor
  (646, 64601, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Kyurem (Black) - Dragon Pulse - Move Tutor
  (646, 64602, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Kyurem (White) - Earth Power - Move Tutor
  (646, 64601, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Kyurem (Black) - Earth Power - Move Tutor
  (646, 64602, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Kyurem (White) - Endeavor - Move Tutor
  (646, 64601, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Kyurem (Black) - Endeavor - Move Tutor
  (646, 64602, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Kyurem (White) - Hyper Voice - Move Tutor
  (646, 64601, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Kyurem (Black) - Hyper Voice - Move Tutor
  (646, 64602, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Kyurem (White) - Icy Wind - Move Tutor
  (646, 64601, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Kyurem (Black) - Icy Wind - Move Tutor
  (646, 64602, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Kyurem (White) - Iron Head - Move Tutor
  (646, 64601, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Kyurem (Black) - Iron Head - Move Tutor
  (646, 64602, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Kyurem (White) - Outrage - Move Tutor
  (646, 64601, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Kyurem (Black) - Outrage - Move Tutor
  (646, 64602, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Kyurem (White) - Roost - Move Tutor
  (646, 64601, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Kyurem (Black) - Roost - Move Tutor
  (646, 64602, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Kyurem (White) - Signal Beam - Move Tutor
  (646, 64601, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Kyurem (Black) - Signal Beam - Move Tutor
  (646, 64602, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Kyurem (White) - Sleep Talk - Move Tutor
  (646, 64601, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Kyurem (Black) - Sleep Talk - Move Tutor
  (646, 64602, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Kyurem (White) - Snore - Move Tutor
  (646, 64601, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Kyurem (Black) - Snore - Move Tutor
  (646, 64602, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Kyurem (White) - Zen Headbutt - Move Tutor
  (646, 64601, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Kyurem (Black) - Zen Headbutt - Move Tutor
  (646, 64602, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69);
