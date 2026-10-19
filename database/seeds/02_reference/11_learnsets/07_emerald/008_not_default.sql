-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation III Pokémon learnset raw pages, using Emerald
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii Emerald Pokedex learnset pages, Serebii Emerald Move
-- Tutor pages, and PokemonDB Generation 3 Emerald learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Emerald
-- Pokémon: not-default forms
-- Rows: 71
-- Scope: form-specific level-up, TM, HM, and Move Tutor acquisition rows.
-- Event, transfer, and prior-evolution sections are intentionally excluded from
-- this Emerald seed.
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
  -- Deoxys (Speed) - Leer - Level 1
  (386, 38603, 43, 7, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deoxys (Speed) - Wrap - Level 1
  (386, 38603, 35, 7, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Deoxys (Speed) - Night Shade - Level 5
  (386, 38603, 101, 7, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Deoxys (Speed) - Double Team - Level 10
  (386, 38603, 104, 7, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Deoxys (Speed) - Knock Off - Level 15
  (386, 38603, 282, 7, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Deoxys (Speed) - Pursuit - Level 20
  (386, 38603, 228, 7, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Deoxys (Speed) - Psychic - Level 25
  (386, 38603, 94, 7, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Deoxys (Speed) - Swift - Level 30
  (386, 38603, 129, 7, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Deoxys (Speed) - Agility - Level 35
  (386, 38603, 97, 7, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Deoxys (Speed) - Recover - Level 40
  (386, 38603, 105, 7, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Deoxys (Speed) - Psycho Boost - Level 45
  (386, 38603, 354, 7, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Deoxys (Speed) - Extreme Speed - Level 50
  (386, 38603, 245, 7, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Deoxys (Speed) - Focus Punch - TM01
  (386, 38603, 264, 7, NULL, 2, NULL, NULL, 7002001, NULL, 13),
  -- Deoxys (Speed) - Water Pulse - TM03
  (386, 38603, 352, 7, NULL, 2, NULL, NULL, 7002003, NULL, 14),
  -- Deoxys (Speed) - Calm Mind - TM04
  (386, 38603, 347, 7, NULL, 2, NULL, NULL, 7002004, NULL, 15),
  -- Deoxys (Speed) - Toxic - TM06
  (386, 38603, 92, 7, NULL, 2, NULL, NULL, 7002006, NULL, 16),
  -- Deoxys (Speed) - Hidden Power - TM10
  (386, 38603, 237, 7, NULL, 2, NULL, NULL, 7002010, NULL, 17),
  -- Deoxys (Speed) - Sunny Day - TM11
  (386, 38603, 241, 7, NULL, 2, NULL, NULL, 7002011, NULL, 18),
  -- Deoxys (Speed) - Taunt - TM12
  (386, 38603, 269, 7, NULL, 2, NULL, NULL, 7002012, NULL, 19),
  -- Deoxys (Speed) - Ice Beam - TM13
  (386, 38603, 58, 7, NULL, 2, NULL, NULL, 7002013, NULL, 20),
  -- Deoxys (Speed) - Hyper Beam - TM15
  (386, 38603, 63, 7, NULL, 2, NULL, NULL, 7002015, NULL, 21),
  -- Deoxys (Speed) - Light Screen - TM16
  (386, 38603, 113, 7, NULL, 2, NULL, NULL, 7002016, NULL, 22),
  -- Deoxys (Speed) - Protect - TM17
  (386, 38603, 182, 7, NULL, 2, NULL, NULL, 7002017, NULL, 23),
  -- Deoxys (Speed) - Rain Dance - TM18
  (386, 38603, 240, 7, NULL, 2, NULL, NULL, 7002018, NULL, 24),
  -- Deoxys (Speed) - Safeguard - TM20
  (386, 38603, 219, 7, NULL, 2, NULL, NULL, 7002020, NULL, 25),
  -- Deoxys (Speed) - Frustration - TM21
  (386, 38603, 218, 7, NULL, 2, NULL, NULL, 7002021, NULL, 26),
  -- Deoxys (Speed) - Solar Beam - TM22
  (386, 38603, 76, 7, NULL, 2, NULL, NULL, 7002022, NULL, 27),
  -- Deoxys (Speed) - Thunderbolt - TM24
  (386, 38603, 85, 7, NULL, 2, NULL, NULL, 7002024, NULL, 28),
  -- Deoxys (Speed) - Thunder - TM25
  (386, 38603, 87, 7, NULL, 2, NULL, NULL, 7002025, NULL, 29),
  -- Deoxys (Speed) - Return - TM27
  (386, 38603, 216, 7, NULL, 2, NULL, NULL, 7002027, NULL, 30),
  -- Deoxys (Speed) - Psychic - TM29
  (386, 38603, 94, 7, NULL, 2, NULL, NULL, 7002029, NULL, 31),
  -- Deoxys (Speed) - Shadow Ball - TM30
  (386, 38603, 247, 7, NULL, 2, NULL, NULL, 7002030, NULL, 32),
  -- Deoxys (Speed) - Brick Break - TM31
  (386, 38603, 280, 7, NULL, 2, NULL, NULL, 7002031, NULL, 33),
  -- Deoxys (Speed) - Double Team - TM32
  (386, 38603, 104, 7, NULL, 2, NULL, NULL, 7002032, NULL, 34),
  -- Deoxys (Speed) - Reflect - TM33
  (386, 38603, 115, 7, NULL, 2, NULL, NULL, 7002033, NULL, 35),
  -- Deoxys (Speed) - Shock Wave - TM34
  (386, 38603, 351, 7, NULL, 2, NULL, NULL, 7002034, NULL, 36),
  -- Deoxys (Speed) - Rock Tomb - TM39
  (386, 38603, 317, 7, NULL, 2, NULL, NULL, 7002039, NULL, 37),
  -- Deoxys (Speed) - Aerial Ace - TM40
  (386, 38603, 332, 7, NULL, 2, NULL, NULL, 7002040, NULL, 38),
  -- Deoxys (Speed) - Torment - TM41
  (386, 38603, 259, 7, NULL, 2, NULL, NULL, 7002041, NULL, 39),
  -- Deoxys (Speed) - Facade - TM42
  (386, 38603, 263, 7, NULL, 2, NULL, NULL, 7002042, NULL, 40),
  -- Deoxys (Speed) - Secret Power - TM43
  (386, 38603, 290, 7, NULL, 2, NULL, NULL, 7002043, NULL, 41),
  -- Deoxys (Speed) - Rest - TM44
  (386, 38603, 156, 7, NULL, 2, NULL, NULL, 7002044, NULL, 42),
  -- Deoxys (Speed) - Skill Swap - TM48
  (386, 38603, 285, 7, NULL, 2, NULL, NULL, 7002048, NULL, 43),
  -- Deoxys (Speed) - Snatch - TM49
  (386, 38603, 289, 7, NULL, 2, NULL, NULL, 7002049, NULL, 44),
  -- Deoxys (Speed) - Cut - HM01
  (386, 38603, 15, 7, NULL, 3, NULL, NULL, 7003001, NULL, 45),
  -- Deoxys (Speed) - Strength - HM04
  (386, 38603, 70, 7, NULL, 3, NULL, NULL, 7003004, NULL, 46),
  -- Deoxys (Speed) - Flash - HM05
  (386, 38603, 148, 7, NULL, 3, NULL, NULL, 7003005, NULL, 47),
  -- Deoxys (Speed) - Rock Smash - HM06
  (386, 38603, 249, 7, NULL, 3, NULL, NULL, 7003006, NULL, 48),
  -- Deoxys (Speed) - Body Slam - Move Tutor
  (386, 38603, 34, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 49),
  -- Deoxys (Speed) - Counter - Move Tutor
  (386, 38603, 68, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 50),
  -- Deoxys (Speed) - Double-Edge - Move Tutor
  (386, 38603, 38, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 51),
  -- Deoxys (Speed) - Dream Eater - Move Tutor
  (386, 38603, 138, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 52),
  -- Deoxys (Speed) - Dynamic Punch - Move Tutor
  (386, 38603, 223, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 53),
  -- Deoxys (Speed) - Endure - Move Tutor
  (386, 38603, 203, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 54),
  -- Deoxys (Speed) - Fire Punch - Move Tutor
  (386, 38603, 7, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 55),
  -- Deoxys (Speed) - Ice Punch - Move Tutor
  (386, 38603, 8, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 56),
  -- Deoxys (Speed) - Icy Wind - Move Tutor
  (386, 38603, 196, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 57),
  -- Deoxys (Speed) - Mega Kick - Move Tutor
  (386, 38603, 25, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 58),
  -- Deoxys (Speed) - Mega Punch - Move Tutor
  (386, 38603, 5, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 59),
  -- Deoxys (Speed) - Mimic - Move Tutor
  (386, 38603, 102, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 60),
  -- Deoxys (Speed) - Mud-Slap - Move Tutor
  (386, 38603, 189, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 61),
  -- Deoxys (Speed) - Psych Up - Move Tutor
  (386, 38603, 244, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 62),
  -- Deoxys (Speed) - Rock Slide - Move Tutor
  (386, 38603, 157, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 63),
  -- Deoxys (Speed) - Seismic Toss - Move Tutor
  (386, 38603, 69, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 64),
  -- Deoxys (Speed) - Sleep Talk - Move Tutor
  (386, 38603, 214, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 65),
  -- Deoxys (Speed) - Snore - Move Tutor
  (386, 38603, 173, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 66),
  -- Deoxys (Speed) - Substitute - Move Tutor
  (386, 38603, 164, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 67),
  -- Deoxys (Speed) - Swagger - Move Tutor
  (386, 38603, 207, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 68),
  -- Deoxys (Speed) - Swift - Move Tutor
  (386, 38603, 129, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 69),
  -- Deoxys (Speed) - Thunder Punch - Move Tutor
  (386, 38603, 9, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 70),
  -- Deoxys (Speed) - Thunder Wave - Move Tutor
  (386, 38603, 86, 7, NULL, 6, NULL, NULL, NULL, 'Emerald Move Tutor; source includes one-time Hoenn tutors and Battle Frontier BP tutors.', 71);
