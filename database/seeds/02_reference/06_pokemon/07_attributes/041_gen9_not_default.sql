-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 041_pokemon_attributes_gen9_not_default.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen9 not default.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0128 Tauros - Paldean Tauros (Combat Breed)
  (128, 12801, 9, 7, NULL, 22, 83, 291, 7, NULL, 75, 110, 105, 30, 70, 100),
  -- #0128 Tauros - Paldean Tauros (Blaze Breed)
  (128, 12802, 9, 7, 2, 22, 83, 291, 7, NULL, 75, 110, 105, 30, 70, 100),
  -- #0128 Tauros - Paldean Tauros (Aqua Breed)
  (128, 12803, 9, 7, 3, 22, 83, 291, 7, NULL, 75, 110, 105, 30, 70, 100),
  -- #0194 Wooper - Paldean Wooper
  (194, 19401, 9, 8, 9, 38, 11, 109, 2, 7, 55, 45, 45, 25, 25, 15),
  -- #0503 Samurott - Hisuian Samurott
  (503, 50301, 9, 3, 16, 67, NULL, 292, 7, NULL, 90, 108, 80, 100, 65, 85),
  -- #0901 Ursaluna - Ursaluna (Bloodmoon)
  (901, 90101, 9, 9, 1, 300, NULL, NULL, 7, NULL, 113, 70, 120, 135, 65, 52),
  -- #0916 Oinkologne - Oinkologne (Female)
  (916, 91601, 9, 1, NULL, 165, 82, 47, 7, NULL, 115, 90, 70, 59, 90, 65),
  -- #0925 Maushold - Maushold (Family of Three)
  (925, 92501, 9, 1, NULL, 132, 167, 101, 7, 8, 74, 75, 70, 65, 75, 111),
  -- #0931 Squawkabilly - Squawkabilly (Blue Plumage)
  (931, 93101, 9, 1, 10, 22, 55, 62, 6, NULL, 82, 96, 51, 45, 51, 92),
  -- #0931 Squawkabilly - Squawkabilly (Yellow Plumage)
  (931, 93102, 9, 1, 10, 22, 55, 125, 6, NULL, 82, 96, 51, 45, 51, 92),
  -- #0931 Squawkabilly - Squawkabilly (White Plumage)
  (931, 93103, 9, 1, 10, 22, 55, 125, 6, NULL, 82, 96, 51, 45, 51, 92),
  -- #0978 Tatsugiri - Tatsugiri (Droopy)
  (978, 97801, 9, 15, 3, 279, NULL, 114, 3, NULL, 68, 50, 60, 120, 95, 82),
  -- #0978 Tatsugiri - Tatsugiri (Stretchy)
  (978, 97802, 9, 15, 3, 279, NULL, 114, 3, NULL, 68, 50, 60, 120, 95, 82),
  -- #0982 Dudunsparce - Dudunsparce (Three-Segment)
  (982, 98201, 9, 1, NULL, 32, 50, 155, 7, NULL, 125, 100, 80, 85, 75, 55),
  -- #1012 Poltchageist - Poltchageist (Artisan)
  (1012, 101201, 9, 5, 14, 299, NULL, 85, 11, 12, 40, 45, 45, 74, 54, 50),
  -- #1013 Sinistcha - Sinistcha (Masterpiece)
  (1013, 101301, 9, 5, 14, 299, NULL, 85, 11, 12, 71, 60, 106, 121, 80, 70),
  -- #1017 Ogerpon - Ogerpon (Wellspring Mask)
  (1017, 101701, 9, 5, 3, 11, NULL, NULL, 15, NULL, 80, 120, 84, 60, 96, 110),
  -- #1017 Ogerpon - Ogerpon (Hearthflame Mask)
  (1017, 101702, 9, 5, 2, 104, NULL, NULL, 15, NULL, 80, 120, 84, 60, 96, 110),
  -- #1017 Ogerpon - Ogerpon (Cornerstone Mask)
  (1017, 101703, 9, 5, 13, 5, NULL, NULL, 15, NULL, 80, 120, 84, 60, 96, 110);
