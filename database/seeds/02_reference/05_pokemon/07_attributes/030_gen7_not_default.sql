-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 030_pokemon_attributes_gen7_not_default.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen7 not default.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0019 Rattata - Alolan Rattata
  (19, 1901, 7, 16, 1, 82, 55, 47, 7, NULL, 30, 56, 35, 25, 35, 72),
  -- #0020 Raticate - Alolan Raticate
  (20, 2001, 7, 16, 1, 82, 55, 47, 7, NULL, 75, 71, 70, 40, 80, 77),
  -- #0025 Pikachu - Pikachu (Partner)
  (25, 2501, 7, 4, NULL, 9, NULL, 31, 7, 8, 45, 80, 50, 75, 60, 120),
  -- #0026 Raichu - Alolan Raichu
  (26, 2601, 7, 4, 11, 207, NULL, NULL, 7, 8, 60, 85, 50, 95, 85, 110),
  -- #0027 Sandshrew - Alolan Sandshrew
  (27, 2701, 7, 6, 17, 81, NULL, 202, 7, NULL, 50, 75, 90, 10, 35, 40),
  -- #0028 Sandslash - Alolan Sandslash
  (28, 2801, 7, 6, 17, 81, NULL, 202, 7, NULL, 75, 100, 120, 25, 65, 65),
  -- #0037 Vulpix - Alolan Vulpix
  (37, 3701, 7, 6, NULL, 81, NULL, 117, 7, NULL, 38, 41, 40, 50, 65, 65),
  -- #0038 Ninetales - Alolan Ninetales
  (38, 3801, 7, 6, 18, 81, NULL, 117, 7, NULL, 73, 67, 75, 81, 100, 109),
  -- #0050 Diglett - Alolan Diglett
  (50, 5001, 7, 9, 17, 8, 221, 159, 7, NULL, 10, 55, 30, 35, 45, 90),
  -- #0051 Dugtrio - Alolan Dugtrio
  (51, 5101, 7, 9, 17, 8, 221, 159, 7, NULL, 35, 100, 60, 50, 70, 110),
  -- #0052 Meowth - Alolan Meowth
  (52, 5201, 7, 16, NULL, 53, 101, 155, 7, NULL, 40, 35, 35, 50, 40, 90),
  -- #0053 Persian - Alolan Persian
  (53, 5301, 7, 16, NULL, 169, 101, 155, 7, NULL, 65, 60, 60, 75, 65, 115),
  -- #0074 Geodude - Alolan Geodude
  (74, 7401, 7, 13, 4, 42, 5, 206, 11, NULL, 40, 80, 100, 30, 30, 20),
  -- #0075 Graveler - Alolan Graveler
  (75, 7501, 7, 13, 4, 42, 5, 206, 11, NULL, 55, 95, 115, 45, 45, 35),
  -- #0076 Golem - Alolan Golem
  (76, 7601, 7, 13, 4, 42, 5, 206, 11, NULL, 80, 120, 130, 55, 65, 45),
  -- #0088 Grimer - Alolan Grimer
  (88, 8801, 7, 8, 16, 143, 82, 223, 12, NULL, 80, 80, 50, 40, 50, 25),
  -- #0089 Muk - Alolan Muk
  (89, 8901, 7, 8, 16, 143, 82, 223, 12, NULL, 105, 105, 75, 65, 100, 50),
  -- #0103 Exeggutor - Alolan Exeggutor
  (103, 10301, 7, 5, 15, 119, NULL, 139, 9, NULL, 95, 105, 85, 125, 75, 45),
  -- #0105 Marowak - Alolan Marowak
  (105, 10501, 7, 2, 14, 130, 31, 69, 1, NULL, 60, 80, 110, 50, 80, 45),
  -- #0133 Eevee - Eevee (Partner)
  (133, 13301, 7, 1, NULL, 50, 91, 107, 7, NULL, 65, 75, 70, 65, 85, 75),
  -- #0718 Zygarde - Zygarde (10% Forme)
  (718, 71801, 7, 15, 9, 188, 211, NULL, 15, NULL, 54, 100, 71, 61, 85, 115),
  -- #0741 Oricorio - Oricorio (Pom-Pom)
  (741, 74101, 7, 4, 10, 216, NULL, NULL, 6, NULL, 75, 70, 70, 98, 70, 93),
  -- #0741 Oricorio - Oricorio (Pa'u)
  (741, 74102, 7, 11, 10, 216, NULL, NULL, 6, NULL, 75, 70, 70, 98, 70, 93),
  -- #0741 Oricorio - Oricorio (Sensu)
  (741, 74103, 7, 14, 10, 216, NULL, NULL, 6, NULL, 75, 70, 70, 98, 70, 93),
  -- #0744 Rockruff - Rockruff (Own Tempo)
  (744, 74401, 7, 13, NULL, 20, NULL, NULL, 7, NULL, 45, 65, 40, 30, 40, 60),
  -- #0745 Lycanroc - Lycanroc (Midnight)
  (745, 74501, 7, 13, NULL, 51, 72, 99, 7, NULL, 85, 115, 75, 55, 75, 82),
  -- #0745 Lycanroc - Lycanroc (Dusk)
  (745, 74502, 7, 13, NULL, 181, NULL, NULL, 7, NULL, 75, 117, 65, 55, 65, 110),
  -- #0773 Silvally - Silvally (Fighting)
  (773, 77301, 7, 7, NULL, 225, NULL, NULL, 15, NULL, 95, 95, 95, 95, 95, 95),
  -- #0773 Silvally - Silvally (Flying)
  (773, 77302, 7, 10, NULL, 225, NULL, NULL, 15, NULL, 95, 95, 95, 95, 95, 95),
  -- #0773 Silvally - Silvally (Poison)
  (773, 77303, 7, 8, NULL, 225, NULL, NULL, 15, NULL, 95, 95, 95, 95, 95, 95),
  -- #0773 Silvally - Silvally (Ground)
  (773, 77304, 7, 9, NULL, 225, NULL, NULL, 15, NULL, 95, 95, 95, 95, 95, 95),
  -- #0773 Silvally - Silvally (Rock)
  (773, 77305, 7, 13, NULL, 225, NULL, NULL, 15, NULL, 95, 95, 95, 95, 95, 95),
  -- #0773 Silvally - Silvally (Bug)
  (773, 77306, 7, 12, NULL, 225, NULL, NULL, 15, NULL, 95, 95, 95, 95, 95, 95),
  -- #0773 Silvally - Silvally (Ghost)
  (773, 77307, 7, 14, NULL, 225, NULL, NULL, 15, NULL, 95, 95, 95, 95, 95, 95),
  -- #0773 Silvally - Silvally (Steel)
  (773, 77308, 7, 17, NULL, 225, NULL, NULL, 15, NULL, 95, 95, 95, 95, 95, 95),
  -- #0773 Silvally - Silvally (Fire)
  (773, 77309, 7, 2, NULL, 225, NULL, NULL, 15, NULL, 95, 95, 95, 95, 95, 95),
  -- #0773 Silvally - Silvally (Water)
  (773, 77310, 7, 3, NULL, 225, NULL, NULL, 15, NULL, 95, 95, 95, 95, 95, 95),
  -- #0773 Silvally - Silvally (Grass)
  (773, 77311, 7, 5, NULL, 225, NULL, NULL, 15, NULL, 95, 95, 95, 95, 95, 95),
  -- #0773 Silvally - Silvally (Electric)
  (773, 77312, 7, 4, NULL, 225, NULL, NULL, 15, NULL, 95, 95, 95, 95, 95, 95),
  -- #0773 Silvally - Silvally (Psychic)
  (773, 77313, 7, 11, NULL, 225, NULL, NULL, 15, NULL, 95, 95, 95, 95, 95, 95),
  -- #0773 Silvally - Silvally (Ice)
  (773, 77314, 7, 6, NULL, 225, NULL, NULL, 15, NULL, 95, 95, 95, 95, 95, 95),
  -- #0773 Silvally - Silvally (Dragon)
  (773, 77315, 7, 15, NULL, 225, NULL, NULL, 15, NULL, 95, 95, 95, 95, 95, 95),
  -- #0773 Silvally - Silvally (Dark)
  (773, 77316, 7, 16, NULL, 225, NULL, NULL, 15, NULL, 95, 95, 95, 95, 95, 95),
  -- #0773 Silvally - Silvally (Fairy)
  (773, 77317, 7, 18, NULL, 225, NULL, NULL, 15, NULL, 95, 95, 95, 95, 95, 95),
  -- #0800 Necrozma - Necrozma (Dusk Mane)
  (800, 80001, 7, 11, 17, 232, NULL, NULL, 15, NULL, 97, 157, 127, 113, 109, 77),
  -- #0800 Necrozma - Necrozma (Dawn Wings)
  (800, 80002, 7, 11, 14, 232, NULL, NULL, 15, NULL, 97, 113, 109, 157, 127, 77);
