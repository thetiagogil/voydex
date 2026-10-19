-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon availability in Pokémon Legends: Arceus and List of Pokémon by Hisui Pokedex number.
-- Cross-check: Serebii Hisui Pokedex and legendary Pokémon pages; PokemonDB Legends: Arceus Pokedex.
-- Scope note: all 242 Hisui Pokedex species are obtainable in-game; restricted request, save-data, space-time distortion, and form-change sources are classified explicitly.
-- Form policy note: Unown letters, Shellos/Gastrodon seas, Cherrim Sunshine, and purely cosmetic or battle-state forms are excluded by current Voydex form policy.
-- Method note: PLA does not use breeding, fossil restoration, or version-exclusive rows; distortions and massive outbreak-style special sources use raid_or_special.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Pokémon Legends: Arceus
-- Table: reference.pokemon_availability
-- Scope: 280 rows; Hisui Pokedex species plus Voydex-curated persistent/selectable forms visible in PLA.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0722 Rowlet - Starter
  (722, 72200, 22, NULL, 3, 'Hisui first partner Pokémon from Professor Laventon; remaining first partners are available after the main story.'),
  -- #0723 Dartrix - Evolution
  (723, 72300, 22, NULL, 7, 'Evolves from a Hisui first partner line source in Pokémon Legends: Arceus.'),
  -- #0724 Hisuian Decidueye - Evolution
  (724, 72401, 22, NULL, 7, 'Evolves from a Hisui first partner line source in Pokémon Legends: Arceus.'),
  -- #0155 Cyndaquil - Starter
  (155, 15500, 22, NULL, 3, 'Hisui first partner Pokémon from Professor Laventon; remaining first partners are available after the main story.'),
  -- #0156 Quilava - Evolution
  (156, 15600, 22, NULL, 7, 'Evolves from a Hisui first partner line source in Pokémon Legends: Arceus.'),
  -- #0157 Hisuian Typhlosion - Evolution
  (157, 15701, 22, NULL, 7, 'Evolves from a Hisui first partner line source in Pokémon Legends: Arceus.'),
  -- #0501 Oshawott - Starter
  (501, 50100, 22, NULL, 3, 'Hisui first partner Pokémon from Professor Laventon; remaining first partners are available after the main story.'),
  -- #0502 Dewott - Evolution
  (502, 50200, 22, NULL, 7, 'Evolves from a Hisui first partner line source in Pokémon Legends: Arceus.'),
  -- #0503 Hisuian Samurott - Evolution
  (503, 50301, 22, NULL, 7, 'Evolves from a Hisui first partner line source in Pokémon Legends: Arceus.'),
  -- #0399 Bidoof - Native Encounter
  (399, 39900, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0400 Bibarel - Native Encounter
  (400, 40000, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0396 Starly - Native Encounter
  (396, 39600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0397 Staravia - Native Encounter
  (397, 39700, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0398 Staraptor - Native Encounter
  (398, 39800, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0403 Shinx - Native Encounter
  (403, 40300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0404 Luxio - Native Encounter
  (404, 40400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0405 Luxray - Native Encounter
  (405, 40500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0265 Wurmple - Native Encounter
  (265, 26500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0266 Silcoon - Native Encounter
  (266, 26600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0267 Beautifly - Native Encounter
  (267, 26700, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0268 Cascoon - Native Encounter
  (268, 26800, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0269 Dustox - Native Encounter
  (269, 26900, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0077 Ponyta - Native Encounter
  (77, 7700, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0078 Rapidash - Native Encounter
  (78, 7800, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0133 Eevee - Native Encounter
  (133, 13300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0134 Vaporeon - Native Encounter
  (134, 13400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0135 Jolteon - Native Encounter
  (135, 13500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0136 Flareon - Native Encounter
  (136, 13600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0196 Espeon - Native Encounter
  (196, 19600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0197 Umbreon - Native Encounter
  (197, 19700, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0470 Leafeon - Native Encounter
  (470, 47000, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0471 Glaceon - Native Encounter
  (471, 47100, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0700 Sylveon - Native Encounter
  (700, 70000, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0041 Zubat - Native Encounter
  (41, 4100, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0042 Golbat - Native Encounter
  (42, 4200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0169 Crobat - Native Encounter
  (169, 16900, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0425 Drifloon - Native Encounter
  (425, 42500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0426 Drifblim - Native Encounter
  (426, 42600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0401 Kricketot - Native Encounter
  (401, 40100, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0402 Kricketune - Native Encounter
  (402, 40200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0418 Buizel - Native Encounter
  (418, 41800, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0419 Floatzel - Native Encounter
  (419, 41900, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0412 Burmy - Native Encounter
  (412, 41200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0413 Wormadam - Native Encounter
  (413, 41300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0414 Mothim - Native Encounter
  (414, 41400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0074 Geodude - Native Encounter
  (74, 7400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0075 Graveler - Native Encounter
  (75, 7500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0076 Golem - Native Encounter
  (76, 7600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0234 Stantler - Native Encounter
  (234, 23400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0899 Wyrdeer - Native Encounter
  (899, 89900, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0446 Munchlax - Native Encounter
  (446, 44600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0143 Snorlax - Native Encounter
  (143, 14300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0046 Paras - Native Encounter
  (46, 4600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0047 Parasect - Native Encounter
  (47, 4700, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0172 Pichu - Native Encounter
  (172, 17200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0025 Pikachu - Native Encounter
  (25, 2500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0026 Raichu - Native Encounter
  (26, 2600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0063 Abra - Native Encounter
  (63, 6300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0064 Kadabra - Native Encounter
  (64, 6400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0065 Alakazam - Native Encounter
  (65, 6500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0390 Chimchar - Native Encounter
  (390, 39000, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0391 Monferno - Native Encounter
  (391, 39100, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0392 Infernape - Native Encounter
  (392, 39200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0427 Buneary - Native Encounter
  (427, 42700, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0428 Lopunny - Native Encounter
  (428, 42800, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0420 Cherubi - Native Encounter
  (420, 42000, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0421 Cherrim - Native Encounter
  (421, 42100, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0054 Psyduck - Native Encounter
  (54, 5400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0055 Golduck - Native Encounter
  (55, 5500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0415 Combee - Native Encounter
  (415, 41500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0416 Vespiquen - Native Encounter
  (416, 41600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0123 Scyther - Native Encounter
  (123, 12300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0900 Kleavor - Native Encounter
  (900, 90000, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0212 Scizor - Native Encounter
  (212, 21200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0214 Heracross - Native Encounter
  (214, 21400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0439 Mime Jr. - Native Encounter
  (439, 43900, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0122 Mr. Mime - Native Encounter
  (122, 12200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0190 Aipom - Native Encounter
  (190, 19000, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0424 Ambipom - Native Encounter
  (424, 42400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0130 Gyarados - Native Encounter
  (130, 13000, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0422 Shellos - Native Encounter
  (422, 42200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0423 Gastrodon - Native Encounter
  (423, 42300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0211 Hisuian Qwilfish - Native Encounter
  (211, 21101, 22, NULL, 1, 'Hisuian regional form available in normal Hisui gameplay.'),
  -- #0904 Overqwil - Native Encounter
  (904, 90400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0440 Happiny - Native Encounter
  (440, 44000, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0113 Chansey - Native Encounter
  (113, 11300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0242 Blissey - Native Encounter
  (242, 24200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0406 Budew - Native Encounter
  (406, 40600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0315 Roselia - Native Encounter
  (315, 31500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0407 Roserade - Native Encounter
  (407, 40700, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0455 Carnivine - Native Encounter
  (455, 45500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0548 Petilil - Native Encounter
  (548, 54800, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0549 Hisuian Lilligant - Native Encounter
  (549, 54901, 22, NULL, 1, 'Hisui-native form or evolution available in Pokémon Legends: Arceus.'),
  -- #0114 Tangela - Native Encounter
  (114, 11400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0465 Tangrowth - Native Encounter
  (465, 46500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0339 Barboach - Native Encounter
  (339, 33900, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0340 Whiscash - Native Encounter
  (340, 34000, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0453 Croagunk - Native Encounter
  (453, 45300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0454 Toxicroak - Native Encounter
  (454, 45400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0280 Ralts - Native Encounter
  (280, 28000, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0281 Kirlia - Native Encounter
  (281, 28100, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0282 Gardevoir - Native Encounter
  (282, 28200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0475 Gallade - Native Encounter
  (475, 47500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0193 Yanma - Native Encounter
  (193, 19300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0469 Yanmega - Native Encounter
  (469, 46900, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0449 Hippopotas - Native Encounter
  (449, 44900, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0450 Hippowdon - Native Encounter
  (450, 45000, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0417 Pachirisu - Native Encounter
  (417, 41700, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0434 Stunky - Native Encounter
  (434, 43400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0435 Skuntank - Native Encounter
  (435, 43500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0216 Teddiursa - Native Encounter
  (216, 21600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0217 Ursaring - Native Encounter
  (217, 21700, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0901 Ursaluna - Native Encounter
  (901, 90100, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0704 Goomy - Native Encounter
  (704, 70400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0705 Hisuian Sliggoo - Native Encounter
  (705, 70501, 22, NULL, 1, 'Hisui-native form or evolution available in Pokémon Legends: Arceus.'),
  -- #0706 Hisuian Goodra - Native Encounter
  (706, 70601, 22, NULL, 1, 'Hisui-native form or evolution available in Pokémon Legends: Arceus.'),
  -- #0095 Onix - Native Encounter
  (95, 9500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0208 Steelix - Native Encounter
  (208, 20800, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0111 Rhyhorn - Native Encounter
  (111, 11100, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0112 Rhydon - Native Encounter
  (112, 11200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0464 Rhyperior - Native Encounter
  (464, 46400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0438 Bonsly - Native Encounter
  (438, 43800, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0185 Sudowoodo - Native Encounter
  (185, 18500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0108 Lickitung - Native Encounter
  (108, 10800, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0463 Lickilicky - Native Encounter
  (463, 46300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0175 Togepi - Native Encounter
  (175, 17500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0176 Togetic - Native Encounter
  (176, 17600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0468 Togekiss - Native Encounter
  (468, 46800, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0387 Turtwig - Native Encounter
  (387, 38700, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0388 Grotle - Native Encounter
  (388, 38800, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0389 Torterra - Native Encounter
  (389, 38900, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0137 Porygon - Raid or Special Encounter
  (137, 13700, 22, NULL, 10, 'Available through Pokémon Legends: Arceus space-time distortion encounters.'),
  -- #0233 Porygon2 - Raid or Special Encounter
  (233, 23300, 22, NULL, 10, 'Available through Pokémon Legends: Arceus space-time distortion encounters.'),
  -- #0474 Porygon-Z - Raid or Special Encounter
  (474, 47400, 22, NULL, 10, 'Available through Pokémon Legends: Arceus space-time distortion encounters.'),
  -- #0092 Gastly - Native Encounter
  (92, 9200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0093 Haunter - Native Encounter
  (93, 9300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0094 Gengar - Native Encounter
  (94, 9400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0442 Spiritomb - Static Encounter
  (442, 44200, 22, NULL, 2, 'Static/request source after collecting all wisps for the Eerie Apparitions in the Night request; rare repeat source can appear afterward.'),
  -- #0198 Murkrow - Native Encounter
  (198, 19800, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0430 Honchkrow - Native Encounter
  (430, 43000, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0201 Unown - Static Encounter
  (201, 20100, 22, NULL, 2, 'Static Unown letter encounters across Hisui; individual letter forms are excluded by current Voydex form policy.'),
  -- #0363 Spheal - Native Encounter
  (363, 36300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0364 Sealeo - Native Encounter
  (364, 36400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0365 Walrein - Native Encounter
  (365, 36500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0223 Remoraid - Native Encounter
  (223, 22300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0224 Octillery - Native Encounter
  (224, 22400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0451 Skorupi - Native Encounter
  (451, 45100, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0452 Drapion - Native Encounter
  (452, 45200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0058 Hisuian Growlithe - Native Encounter
  (58, 5801, 22, NULL, 1, 'Hisuian regional form available in normal Hisui gameplay.'),
  -- #0059 Hisuian Arcanine - Native Encounter
  (59, 5901, 22, NULL, 1, 'Hisuian regional form available in normal Hisui gameplay.'),
  -- #0431 Glameow - Native Encounter
  (431, 43100, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0432 Purugly - Native Encounter
  (432, 43200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0066 Machop - Native Encounter
  (66, 6600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0067 Machoke - Native Encounter
  (67, 6700, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0068 Machamp - Native Encounter
  (68, 6800, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0441 Chatot - Native Encounter
  (441, 44100, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0355 Duskull - Native Encounter
  (355, 35500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0356 Dusclops - Native Encounter
  (356, 35600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0477 Dusknoir - Native Encounter
  (477, 47700, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0393 Piplup - Native Encounter
  (393, 39300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0394 Prinplup - Native Encounter
  (394, 39400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0395 Empoleon - Native Encounter
  (395, 39500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0458 Mantyke - Native Encounter
  (458, 45800, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0226 Mantine - Native Encounter
  (226, 22600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0550 Basculin (White-Striped) - Native Encounter
  (550, 55002, 22, NULL, 1, 'Hisui-native form or evolution available in Pokémon Legends: Arceus.'),
  -- #0902 Basculegion - Native Encounter
  (902, 90200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0037 Vulpix - Native Encounter
  (37, 3700, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0038 Ninetales - Native Encounter
  (38, 3800, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0072 Tentacool - Native Encounter
  (72, 7200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0073 Tentacruel - Native Encounter
  (73, 7300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0456 Finneon - Native Encounter
  (456, 45600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0457 Lumineon - Native Encounter
  (457, 45700, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0240 Magby - Native Encounter
  (240, 24000, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0126 Magmar - Native Encounter
  (126, 12600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0467 Magmortar - Native Encounter
  (467, 46700, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0081 Magnemite - Raid or Special Encounter
  (81, 8100, 22, NULL, 10, 'Available through Pokémon Legends: Arceus space-time distortion encounters.'),
  -- #0082 Magneton - Raid or Special Encounter
  (82, 8200, 22, NULL, 10, 'Available through Pokémon Legends: Arceus space-time distortion encounters.'),
  -- #0462 Magnezone - Native Encounter
  (462, 46200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0436 Bronzor - Native Encounter
  (436, 43600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0437 Bronzong - Native Encounter
  (437, 43700, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0239 Elekid - Native Encounter
  (239, 23900, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0125 Electabuzz - Native Encounter
  (125, 12500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0466 Electivire - Native Encounter
  (466, 46600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0207 Gligar - Native Encounter
  (207, 20700, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0472 Gliscor - Native Encounter
  (472, 47200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0443 Gible - Native Encounter
  (443, 44300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0444 Gabite - Native Encounter
  (444, 44400, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0445 Garchomp - Native Encounter
  (445, 44500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0299 Nosepass - Native Encounter
  (299, 29900, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0476 Probopass - Native Encounter
  (476, 47600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0100 Hisuian Voltorb - Native Encounter
  (100, 10001, 22, NULL, 1, 'Hisuian regional form available in normal Hisui gameplay.'),
  -- #0101 Hisuian Electrode - Native Encounter
  (101, 10101, 22, NULL, 1, 'Hisuian regional form available in normal Hisui gameplay.'),
  -- #0479 Rotom - Native Encounter
  (479, 47900, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0433 Chingling - Native Encounter
  (433, 43300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0358 Chimecho - Native Encounter
  (358, 35800, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0200 Misdreavus - Native Encounter
  (200, 20000, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0429 Mismagius - Native Encounter
  (429, 42900, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0173 Cleffa - Native Encounter
  (173, 17300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0035 Clefairy - Native Encounter
  (35, 3500, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0036 Clefable - Native Encounter
  (36, 3600, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0215 Hisuian Sneasel - Native Encounter
  (215, 21501, 22, NULL, 1, 'Hisuian regional form available in normal Hisui gameplay.'),
  -- #0903 Sneasler - Native Encounter
  (903, 90300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0461 Weavile - Raid or Special Encounter
  (461, 46100, 22, NULL, 10, 'Available through Pokémon Legends: Arceus space-time distortion encounters.'),
  -- #0361 Snorunt - Native Encounter
  (361, 36100, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0362 Glalie - Native Encounter
  (362, 36200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0478 Froslass - Native Encounter
  (478, 47800, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0408 Cranidos - Raid or Special Encounter
  (408, 40800, 22, NULL, 10, 'Available through Pokémon Legends: Arceus space-time distortion encounters.'),
  -- #0409 Rampardos - Raid or Special Encounter
  (409, 40900, 22, NULL, 10, 'Available through Pokémon Legends: Arceus space-time distortion encounters.'),
  -- #0410 Shieldon - Raid or Special Encounter
  (410, 41000, 22, NULL, 10, 'Available through Pokémon Legends: Arceus space-time distortion encounters.'),
  -- #0411 Bastiodon - Raid or Special Encounter
  (411, 41100, 22, NULL, 10, 'Available through Pokémon Legends: Arceus space-time distortion encounters.'),
  -- #0220 Swinub - Native Encounter
  (220, 22000, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0221 Piloswine - Native Encounter
  (221, 22100, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0473 Mamoswine - Native Encounter
  (473, 47300, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0712 Bergmite - Native Encounter
  (712, 71200, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0713 Hisuian Avalugg - Native Encounter
  (713, 71301, 22, NULL, 1, 'Hisui-native form or evolution available in Pokémon Legends: Arceus.'),
  -- #0459 Snover - Native Encounter
  (459, 45900, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0460 Abomasnow - Native Encounter
  (460, 46000, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0570 Hisuian Zorua - Native Encounter
  (570, 57001, 22, NULL, 1, 'Hisui-native form or evolution available in Pokémon Legends: Arceus.'),
  -- #0571 Hisuian Zoroark - Native Encounter
  (571, 57101, 22, NULL, 1, 'Hisui-native form or evolution available in Pokémon Legends: Arceus.'),
  -- #0627 Rufflet - Native Encounter
  (627, 62700, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0628 Hisuian Braviary - Native Encounter
  (628, 62801, 22, NULL, 1, 'Hisui-native form or evolution available in Pokémon Legends: Arceus.'),
  -- #0447 Riolu - Native Encounter
  (447, 44700, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0448 Lucario - Native Encounter
  (448, 44800, 22, NULL, 1, 'Ordinary wild, overworld, alpha, outbreak, or area-source availability in Pokémon Legends: Arceus.'),
  -- #0480 Uxie - Static Encounter
  (480, 48000, 22, NULL, 2, 'Static lake guardian encounter during the postgame Plates story sequence.'),
  -- #0481 Mesprit - Static Encounter
  (481, 48100, 22, NULL, 2, 'Static lake guardian encounter during the postgame Plates story sequence.'),
  -- #0482 Azelf - Static Encounter
  (482, 48200, 22, NULL, 2, 'Static lake guardian encounter during the postgame Plates story sequence.'),
  -- #0485 Heatran - Static Encounter
  (485, 48500, 22, NULL, 2, 'Static legendary encounter during the postgame Plates story sequence.'),
  -- #0486 Regigigas - Static Encounter
  (486, 48600, 22, NULL, 2, 'Static legendary encounter during the postgame Plates story sequence.'),
  -- #0488 Cresselia - Static Encounter
  (488, 48800, 22, NULL, 2, 'Static legendary encounter during the postgame Plates story sequence.'),
  -- #0641 Tornadus - Static Encounter
  (641, 64100, 22, NULL, 2, 'Static weather/quest encounter from the Incarnate Forces of Hisui request chain.'),
  -- #0642 Thundurus - Static Encounter
  (642, 64200, 22, NULL, 2, 'Static weather/quest encounter from the Incarnate Forces of Hisui request chain.'),
  -- #0645 Landorus - Static Encounter
  (645, 64500, 22, NULL, 2, 'Static weather/quest encounter from the Incarnate Forces of Hisui request chain.'),
  -- #0905 Enamorus - Static Encounter
  (905, 90500, 22, NULL, 2, 'Static weather/quest encounter from the Incarnate Forces of Hisui request chain.'),
  -- #0483 Dialga - Static Encounter
  (483, 48300, 22, NULL, 2, 'Main-story static legendary encounter; one of Dialga or Palkia is caught in the Origin Ball depending on story route.'),
  -- #0484 Palkia - Static Encounter
  (484, 48400, 22, NULL, 2, 'Main-story static legendary encounter; one of Dialga or Palkia is caught in the Origin Ball depending on story route.'),
  -- #0487 Giratina - Static Encounter
  (487, 48700, 22, NULL, 2, 'Static Giratina encounter unlocked after defeating Volo and following the postgame request chain.'),
  -- #0493 Arceus - Static Encounter
  (493, 49300, 22, NULL, 2, 'Static Arceus encounter from The Deified Pokémon after catching the required non-mythical Hisui Pokedex species.'),
  -- #0489 Phione - Static Encounter
  (489, 48900, 22, NULL, 2, 'Static Sea''s Legend request encounter after Lord Arcanine is quelled and the party/route requirements are met.'),
  -- #0490 Manaphy - Static Encounter
  (490, 49000, 22, NULL, 2, 'Static Sea''s Legend request encounter after Lord Arcanine is quelled and the party/route requirements are met.'),
  -- #0492 Shaymin - Static Encounter
  (492, 49200, 22, NULL, 2, 'Static Shaymin encounter from the save-data bonus request unlocked by Pokémon Sword or Shield save data.'),
  -- #0491 Darkrai - Static Encounter
  (491, 49100, 22, NULL, 2, 'Static Darkrai encounter from the save-data bonus request unlocked by Pokémon Brilliant Diamond or Shining Pearl save data.'),
  -- #0412 Burmy (Sandy Cloak) - Native Encounter
  (412, 41201, 22, NULL, 1, 'Burmy Sandy Cloak is a persistent cloak form obtainable through terrain-based cloak changes in Hisui.'),
  -- #0412 Burmy (Trash Cloak) - Native Encounter
  (412, 41202, 22, NULL, 1, 'Burmy Trash Cloak is a persistent cloak form obtainable through terrain-based cloak changes in Hisui.'),
  -- #0413 Wormadam (Sandy Cloak) - Evolution
  (413, 41301, 22, NULL, 7, 'Evolves from a female Burmy with Sandy Cloak.'),
  -- #0413 Wormadam (Trash Cloak) - Evolution
  (413, 41302, 22, NULL, 7, 'Evolves from a female Burmy with Trash Cloak.'),
  -- #0037 Alolan Vulpix - Gift
  (37, 3701, 22, NULL, 4, 'Gift Alolan Vulpix from the Snow-White Vulpix in the Snow request after catching Kantonian Vulpix and unlocking Hisuian Braviary as a ride Pokémon.'),
  -- #0038 Alolan Ninetales - Evolution
  (38, 3801, 22, NULL, 7, 'Evolves from the Alolan Vulpix gift with an Ice Stone.'),
  -- #0215 Sneasel - Raid or Special Encounter
  (215, 21500, 22, NULL, 10, 'Original-form Sneasel is available through Obsidian Fieldlands space-time distortion encounters.'),
  -- #0902 Basculegion (Female) - Evolution
  (902, 90201, 22, NULL, 7, 'Female Basculegion evolves from White-Striped Basculin after the female recoil-damage evolution condition.'),
  -- #0479 Rotom (Heat) - Static Encounter
  (479, 47901, 22, NULL, 2, 'Rotom Heat form is source-visible in the Hisui Pokedex and uses the mechanical cabinet form-change item after catching Rotom.'),
  -- #0479 Rotom (Wash) - Static Encounter
  (479, 47902, 22, NULL, 2, 'Rotom Wash form is source-visible in the Hisui Pokedex and uses the mechanical tub form-change item after catching Rotom.'),
  -- #0479 Rotom (Frost) - Static Encounter
  (479, 47903, 22, NULL, 2, 'Rotom Frost form is source-visible in the Hisui Pokedex and uses the mechanical refrigerator form-change item after catching Rotom.'),
  -- #0479 Rotom (Fan) - Static Encounter
  (479, 47904, 22, NULL, 2, 'Rotom Fan form is source-visible in the Hisui Pokedex and uses the mechanical pinwheel form-change item after catching Rotom.'),
  -- #0479 Rotom (Mow) - Static Encounter
  (479, 47905, 22, NULL, 2, 'Rotom Mow form is source-visible in the Hisui Pokedex and uses the mechanical circular saw form-change item after catching Rotom.'),
  -- #0641 Tornadus (Therian) - Static Encounter
  (641, 64101, 22, NULL, 2, 'Therian Forme is source-visible in the Hisui Pokedex and is available with the Reveal Glass after catching Tornadus.'),
  -- #0642 Thundurus (Therian) - Static Encounter
  (642, 64201, 22, NULL, 2, 'Therian Forme is source-visible in the Hisui Pokedex and is available with the Reveal Glass after catching Thundurus.'),
  -- #0645 Landorus (Therian) - Static Encounter
  (645, 64501, 22, NULL, 2, 'Therian Forme is source-visible in the Hisui Pokedex and is available with the Reveal Glass after catching Landorus.'),
  -- #0905 Enamorus (Therian) - Static Encounter
  (905, 90501, 22, NULL, 2, 'Therian Forme is source-visible in the Hisui Pokedex and is available with the Reveal Glass after catching Enamorus.'),
  -- #0483 Dialga (Origin Forme) - Static Encounter
  (483, 48301, 22, NULL, 2, 'Origin Forme is source-visible in the Hisui Pokedex and is available with the Adamant Crystal after catching Dialga.'),
  -- #0484 Palkia (Origin Forme) - Static Encounter
  (484, 48401, 22, NULL, 2, 'Origin Forme is source-visible in the Hisui Pokedex and is available with the Lustrous Globe after catching Palkia.'),
  -- #0487 Giratina (Origin) - Static Encounter
  (487, 48701, 22, NULL, 2, 'Origin Forme is source-visible in the Hisui Pokedex and is available with the Griseous Core after catching Giratina.'),
  -- #0492 Shaymin (Sky) - Static Encounter
  (492, 49201, 22, NULL, 2, 'Sky Forme is source-visible in the Hisui Pokedex and is available with the Gracidea after catching Shaymin.'),
  -- #0493 Arceus (Fighting) - Static Encounter
  (493, 49301, 22, NULL, 2, 'Arceus Fighting form is source-visible in the Hisui Pokedex and uses the corresponding Plate/form mechanic after catching Arceus.'),
  -- #0493 Arceus (Flying) - Static Encounter
  (493, 49302, 22, NULL, 2, 'Arceus Flying form is source-visible in the Hisui Pokedex and uses the corresponding Plate/form mechanic after catching Arceus.'),
  -- #0493 Arceus (Poison) - Static Encounter
  (493, 49303, 22, NULL, 2, 'Arceus Poison form is source-visible in the Hisui Pokedex and uses the corresponding Plate/form mechanic after catching Arceus.'),
  -- #0493 Arceus (Ground) - Static Encounter
  (493, 49304, 22, NULL, 2, 'Arceus Ground form is source-visible in the Hisui Pokedex and uses the corresponding Plate/form mechanic after catching Arceus.'),
  -- #0493 Arceus (Rock) - Static Encounter
  (493, 49305, 22, NULL, 2, 'Arceus Rock form is source-visible in the Hisui Pokedex and uses the corresponding Plate/form mechanic after catching Arceus.'),
  -- #0493 Arceus (Bug) - Static Encounter
  (493, 49306, 22, NULL, 2, 'Arceus Bug form is source-visible in the Hisui Pokedex and uses the corresponding Plate/form mechanic after catching Arceus.'),
  -- #0493 Arceus (Ghost) - Static Encounter
  (493, 49307, 22, NULL, 2, 'Arceus Ghost form is source-visible in the Hisui Pokedex and uses the corresponding Plate/form mechanic after catching Arceus.'),
  -- #0493 Arceus (Steel) - Static Encounter
  (493, 49308, 22, NULL, 2, 'Arceus Steel form is source-visible in the Hisui Pokedex and uses the corresponding Plate/form mechanic after catching Arceus.'),
  -- #0493 Arceus (Fire) - Static Encounter
  (493, 49309, 22, NULL, 2, 'Arceus Fire form is source-visible in the Hisui Pokedex and uses the corresponding Plate/form mechanic after catching Arceus.'),
  -- #0493 Arceus (Water) - Static Encounter
  (493, 49310, 22, NULL, 2, 'Arceus Water form is source-visible in the Hisui Pokedex and uses the corresponding Plate/form mechanic after catching Arceus.'),
  -- #0493 Arceus (Grass) - Static Encounter
  (493, 49311, 22, NULL, 2, 'Arceus Grass form is source-visible in the Hisui Pokedex and uses the corresponding Plate/form mechanic after catching Arceus.'),
  -- #0493 Arceus (Electric) - Static Encounter
  (493, 49312, 22, NULL, 2, 'Arceus Electric form is source-visible in the Hisui Pokedex and uses the corresponding Plate/form mechanic after catching Arceus.'),
  -- #0493 Arceus (Psychic) - Static Encounter
  (493, 49313, 22, NULL, 2, 'Arceus Psychic form is source-visible in the Hisui Pokedex and uses the corresponding Plate/form mechanic after catching Arceus.'),
  -- #0493 Arceus (Ice) - Static Encounter
  (493, 49314, 22, NULL, 2, 'Arceus Ice form is source-visible in the Hisui Pokedex and uses the corresponding Plate/form mechanic after catching Arceus.'),
  -- #0493 Arceus (Dragon) - Static Encounter
  (493, 49315, 22, NULL, 2, 'Arceus Dragon form is source-visible in the Hisui Pokedex and uses the corresponding Plate/form mechanic after catching Arceus.'),
  -- #0493 Arceus (Dark) - Static Encounter
  (493, 49316, 22, NULL, 2, 'Arceus Dark form is source-visible in the Hisui Pokedex and uses the corresponding Plate/form mechanic after catching Arceus.'),
  -- #0493 Arceus (Fairy) - Static Encounter
  (493, 49317, 22, NULL, 2, 'Arceus Fairy form is source-visible in the Hisui Pokedex and uses the Pixie Plate/form mechanic after catching Arceus.');
