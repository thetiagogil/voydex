-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 036_pokemon_attributes_gen8_not_default.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen8 not default.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0052 Meowth - Galarian Meowth
  (52, 5202, 8, 17, NULL, 53, 181, 127, 7, NULL, 50, 65, 55, 40, 40, 40),
  -- #0058 Growlithe - Hisuian Growlithe
  (58, 5801, 8, 2, 13, 22, 18, 69, 7, NULL, 60, 75, 45, 65, 50, 55),
  -- #0059 Arcanine - Hisuian Arcanine
  (59, 5901, 8, 2, 13, 22, 18, 69, 7, NULL, 95, 115, 80, 95, 80, 90),
  -- #0077 Ponyta - Galarian Ponyta
  (77, 7701, 8, 11, NULL, 50, 257, 107, 7, NULL, 50, 85, 55, 65, 65, 90),
  -- #0078 Rapidash - Galarian Rapidash
  (78, 7801, 8, 11, 18, 50, 257, 107, 7, NULL, 65, 100, 70, 80, 80, 105),
  -- #0079 Slowpoke - Galarian Slowpoke
  (79, 7901, 8, 11, NULL, 82, 20, 144, 1, 2, 90, 65, 65, 40, 40, 15),
  -- #0080 Slowbro - Galarian Slowbro
  (80, 8002, 8, 8, 11, 259, 20, 144, 1, 2, 95, 100, 95, 100, 70, 30),
  -- #0083 Farfetch'd - Galarian Farfetch'd
  (83, 8301, 8, 7, NULL, 80, NULL, 113, 6, 7, 52, 95, 55, 58, 62, 55),
  -- #0100 Voltorb - Hisuian Voltorb
  (100, 10001, 8, 4, 5, 43, 9, 106, 11, NULL, 40, 30, 50, 55, 55, 100),
  -- #0101 Electrode - Hisuian Electrode
  (101, 10101, 8, 4, 5, 43, 9, 106, 11, NULL, 60, 50, 70, 80, 80, 150),
  -- #0110 Weezing - Galarian Weezing
  (110, 11001, 8, 8, 18, 26, 256, 228, 12, NULL, 65, 90, 120, 85, 70, 60),
  -- #0122 Mr. Mime - Galarian Mr. Mime
  (122, 12201, 8, 6, 11, 72, 251, 115, 10, NULL, 50, 65, 65, 90, 90, 100),
  -- #0144 Articuno - Galarian Articuno
  (144, 14401, 8, 11, 10, 172, NULL, NULL, 15, NULL, 90, 85, 85, 125, 100, 95),
  -- #0145 Zapdos - Galarian Zapdos
  (145, 14501, 8, 7, 10, 128, NULL, NULL, 15, NULL, 90, 125, 90, 85, 90, 100),
  -- #0146 Moltres - Galarian Moltres
  (146, 14601, 8, 16, 10, 201, NULL, NULL, 15, NULL, 90, 85, 90, 100, 125, 90),
  -- #0157 Typhlosion - Hisuian Typhlosion
  (157, 15701, 8, 2, 14, 66, NULL, 119, 7, NULL, 73, 84, 78, 119, 85, 95),
  -- #0199 Slowking - Galarian Slowking
  (199, 19901, 8, 8, 11, 261, 20, 144, 1, 2, 95, 65, 80, 110, 110, 30),
  -- #0211 Qwilfish - Hisuian Qwilfish
  (211, 21101, 8, 16, 8, 38, 33, 22, 3, NULL, 65, 95, 85, 55, 55, 85),
  -- #0215 Sneasel - Hisuian Sneasel
  (215, 21501, 8, 7, 8, 39, 51, 124, 7, NULL, 55, 95, 55, 35, 75, 115),
  -- #0222 Corsola - Galarian Corsola
  (222, 22201, 8, 14, NULL, 133, NULL, 130, 2, 4, 60, 55, 100, 65, 100, 30),
  -- #0263 Zigzagoon - Galarian Zigzagoon
  (263, 26301, 8, 16, 1, 53, 82, 95, 7, NULL, 38, 30, 41, 30, 41, 60),
  -- #0264 Linoone - Galarian Linoone
  (264, 26401, 8, 16, 1, 53, 82, 95, 7, NULL, 78, 70, 61, 50, 61, 100),
  -- #0483 Dialga - Dialga (Origin Forme)
  (483, 48301, 8, 17, 15, 46, NULL, 140, 15, NULL, 100, 100, 120, 150, 120, 90),
  -- #0484 Palkia - Palkia (Origin Forme)
  (484, 48401, 8, 3, 15, 46, NULL, 140, 15, NULL, 90, 100, 100, 150, 120, 120),
  -- #0503 Samurott - Hisuian Samurott
  (503, 50301, 8, 3, 16, 67, NULL, 75, 7, NULL, 90, 108, 80, 100, 65, 85),
  -- #0549 Lilligant - Hisuian Lilligant
  (549, 54901, 8, 5, 7, 34, 55, 102, 9, NULL, 70, 105, 75, 50, 75, 105),
  -- #0550 Basculin - Basculin (White-Striped)
  (550, 55002, 8, 3, NULL, 155, 91, 104, 3, NULL, 70, 92, 65, 80, 55, 98),
  -- #0554 Darumaka - Galarian Darumaka
  (554, 55401, 8, 6, NULL, 55, NULL, 39, 7, NULL, 70, 90, 45, 15, 45, 50),
  -- #0555 Darmanitan - Galarian Darmanitan
  (555, 55502, 8, 6, NULL, 255, NULL, 161, 7, NULL, 105, 140, 55, 30, 55, 95),
  -- #0562 Yamask - Galarian Yamask
  (562, 56201, 8, 9, 14, 254, NULL, NULL, 11, 12, 38, 55, 85, 30, 65, 30),
  -- #0570 Zorua - Hisuian Zorua
  (570, 57001, 8, 1, 14, 149, NULL, NULL, 7, NULL, 35, 60, 40, 85, 40, 70),
  -- #0571 Zoroark - Hisuian Zoroark
  (571, 57101, 8, 1, 14, 149, NULL, NULL, 7, NULL, 55, 100, 60, 125, 60, 110),
  -- #0618 Stunfisk - Galarian Stunfisk
  (618, 61801, 8, 9, 17, 250, NULL, NULL, 2, 12, 109, 81, 99, 66, 84, 32),
  -- #0628 Braviary - Hisuian Braviary
  (628, 62801, 8, 11, 10, 51, 125, 110, 6, NULL, 110, 83, 70, 112, 70, 65),
  -- #0705 Sliggoo - Hisuian Sliggoo
  (705, 70501, 8, 17, 15, 157, 75, 183, 13, NULL, 58, 75, 83, 83, 113, 40),
  -- #0706 Goodra - Hisuian Goodra
  (706, 70601, 8, 17, 15, 157, 75, 183, 13, NULL, 80, 100, 100, 110, 150, 60),
  -- #0713 Avalugg - Hisuian Avalugg
  (713, 71301, 8, 6, 13, 173, 115, 5, 1, 11, 95, 127, 184, 34, 36, 38),
  -- #0724 Decidueye - Hisuian Decidueye
  (724, 72401, 8, 5, 7, 65, NULL, 113, 6, NULL, 88, 112, 80, 95, 95, 60),
  -- #0849 Toxtricity - Toxtricity (Low Key)
  (849, 84901, 8, 4, 8, 244, 58, 101, 10, NULL, 75, 98, 70, 114, 70, 75),
  -- #0854 Sinistea - Sinistea (Antique)
  (854, 85401, 8, 14, NULL, 133, NULL, 130, 11, 12, 40, 45, 45, 74, 54, 50),
  -- #0855 Polteageist - Polteageist (Antique)
  (855, 85501, 8, 14, NULL, 133, NULL, 130, 11, 12, 60, 65, 65, 134, 114, 70),
  -- #0876 Indeedee - Indeedee (Female)
  (876, 87601, 8, 11, 1, 20, 28, 227, 8, NULL, 70, 55, 65, 95, 105, 85),
  -- #0892 Urshifu - Urshifu (Rapid Strike)
  (892, 89201, 8, 7, 3, 260, NULL, NULL, 15, NULL, 100, 130, 100, 63, 60, 97),
  -- #0898 Calyrex - Calyrex (Ice Rider)
  (898, 89801, 8, 11, 6, 266, NULL, NULL, 15, NULL, 100, 165, 150, 85, 130, 50),
  -- #0898 Calyrex - Calyrex (Shadow Rider)
  (898, 89802, 8, 11, 14, 267, NULL, NULL, 15, NULL, 100, 85, 80, 165, 100, 150),
  -- #0902 Basculegion - Basculegion (Female)
  (902, 90201, 8, 3, 14, 155, 91, 104, 3, NULL, 120, 92, 65, 100, 75, 78),
  -- #0905 Enamorus - Enamorus (Therian)
  (905, 90501, 8, 18, 10, 142, NULL, NULL, 15, NULL, 74, 115, 110, 135, 100, 46);
