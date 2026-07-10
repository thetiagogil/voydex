-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Galar Pokedex number and List of Pokémon by availability.
-- Cross-check: PokemonDB Sword/Shield Pokedex, PokemonDB Sword/Shield version exclusives, and Serebii Sword/Shield version exclusives.
-- Scope note: base Galar Pokedex form scope only; DLC Pokedex scopes and compatible non-dex transfer/event rows are seeded separately.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: Sword / Shield
-- Table: reference.pokemon_availability
-- Scope: base Galar Pokedex availability for Sword/Shield. Battle-only, Gigantamax, cap, cosmetic, and unseeded battle forms are excluded; Silvally Memory forms are included because Type: Null and Memories are available in this scope.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0004 Charmander - Gift
  (4, 400, 18, NULL, 4, 'Gift Charmander received after becoming Champion in Sword/Shield.'),
  -- #0005 Charmeleon - Raid or Special Encounter
  (5, 500, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0006 Charizard - Raid or Special Encounter
  (6, 600, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0010 Caterpie - Native Encounter
  (10, 1000, 18, NULL, 1, NULL),
  -- #0011 Metapod - Native Encounter
  (11, 1100, 18, NULL, 1, NULL),
  -- #0012 Butterfree - Native Encounter
  (12, 1200, 18, NULL, 1, NULL),
  -- #0025 Pikachu - Native Encounter
  (25, 2500, 18, NULL, 1, NULL),
  -- #0026 Raichu - Raid or Special Encounter
  (26, 2600, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0026 Alolan Raichu - Raid or Special Encounter
  (26, 2601, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0035 Clefairy - Native Encounter
  (35, 3500, 18, NULL, 1, NULL),
  -- #0036 Clefable - Native Encounter
  (36, 3600, 18, NULL, 1, NULL),
  -- #0037 Vulpix - Native Encounter
  (37, 3700, 18, NULL, 1, NULL),
  -- #0037 Alolan Vulpix - Raid or Special Encounter
  (37, 3701, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0038 Ninetales - Sword - Native Encounter
  (38, 3800, 18, 31, 1, NULL),
  -- #0038 Ninetales - Shield - Raid or Special Encounter
  (38, 3800, 18, 32, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0038 Alolan Ninetales - Raid or Special Encounter
  (38, 3801, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0043 Oddish - Native Encounter
  (43, 4300, 18, NULL, 1, NULL),
  -- #0044 Gloom - Native Encounter
  (44, 4400, 18, NULL, 1, NULL),
  -- #0045 Vileplume - Native Encounter
  (45, 4500, 18, NULL, 1, NULL),
  -- #0050 Diglett - Native Encounter
  (50, 5000, 18, NULL, 1, NULL),
  -- #0050 Alolan Diglett - Raid or Special Encounter
  (50, 5001, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0051 Dugtrio - Native Encounter
  (51, 5100, 18, NULL, 1, NULL),
  -- #0051 Alolan Dugtrio - Raid or Special Encounter
  (51, 5101, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0052 Meowth - In-Game Trade
  (52, 5200, 18, NULL, 5, 'NPC in-game trade source in Sword/Shield.'),
  -- #0052 Alolan Meowth - Native Encounter
  (52, 5201, 18, NULL, 1, NULL),
  -- #0052 Alolan Meowth - Raid or Special Encounter
  (52, 5201, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0053 Persian - Evolution
  (53, 5300, 18, NULL, 7, NULL),
  -- #0053 Alolan Persian - Raid or Special Encounter
  (53, 5301, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0058 Growlithe - Native Encounter
  (58, 5800, 18, NULL, 1, NULL),
  -- #0059 Arcanine - Sword - Raid or Special Encounter
  (59, 5900, 18, 31, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0059 Arcanine - Shield - Native Encounter
  (59, 5900, 18, 32, 1, NULL),
  -- #0066 Machop - Native Encounter
  (66, 6600, 18, NULL, 1, NULL),
  -- #0067 Machoke - Native Encounter
  (67, 6700, 18, NULL, 1, NULL),
  -- #0068 Machamp - Native Encounter
  (68, 6800, 18, NULL, 1, NULL),
  -- #0077 Ponyta - Sword - External Trade
  (77, 7700, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0077 Ponyta - Shield - Raid or Special Encounter
  (77, 7700, 18, 32, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0077 Galarian Ponyta - Sword - External Trade
  (77, 7701, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0077 Galarian Ponyta - Shield - Native Encounter
  (77, 7701, 18, 32, 1, NULL),
  -- #0078 Rapidash - Sword - External Trade
  (78, 7800, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0078 Rapidash - Shield - Raid or Special Encounter
  (78, 7800, 18, 32, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0078 Galarian Rapidash - Sword - External Trade
  (78, 7801, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0078 Galarian Rapidash - Shield - Raid or Special Encounter
  (78, 7801, 18, 32, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0083 Farfetch'd - Sword - Raid or Special Encounter
  (83, 8300, 18, 31, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0083 Farfetch'd - Shield - External Trade
  (83, 8300, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0083 Galarian Farfetch'd - Sword - Native Encounter
  (83, 8301, 18, 31, 1, NULL),
  -- #0083 Galarian Farfetch'd - Shield - External Trade
  (83, 8301, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0090 Shellder - Native Encounter
  (90, 9000, 18, NULL, 1, NULL),
  -- #0091 Cloyster - Native Encounter
  (91, 9100, 18, NULL, 1, NULL),
  -- #0092 Gastly - Native Encounter
  (92, 9200, 18, NULL, 1, NULL),
  -- #0093 Haunter - Native Encounter
  (93, 9300, 18, NULL, 1, NULL),
  -- #0094 Gengar - Native Encounter
  (94, 9400, 18, NULL, 1, NULL),
  -- #0095 Onix - Native Encounter
  (95, 9500, 18, NULL, 1, NULL),
  -- #0098 Krabby - Native Encounter
  (98, 9800, 18, NULL, 1, NULL),
  -- #0099 Kingler - Native Encounter
  (99, 9900, 18, NULL, 1, NULL),
  -- #0106 Hitmonlee - Sword - Native Encounter
  (106, 10600, 18, 31, 1, NULL),
  -- #0106 Hitmonlee - Shield - Raid or Special Encounter
  (106, 10600, 18, 32, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0107 Hitmonchan - Sword - Raid or Special Encounter
  (107, 10700, 18, 31, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0107 Hitmonchan - Shield - Native Encounter
  (107, 10700, 18, 32, 1, NULL),
  -- #0109 Koffing - Native Encounter
  (109, 10900, 18, NULL, 1, NULL),
  -- #0110 Weezing - Raid or Special Encounter
  (110, 11000, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0110 Galarian Weezing - Native Encounter
  (110, 11001, 18, NULL, 1, NULL),
  -- #0111 Rhyhorn - Native Encounter
  (111, 11100, 18, NULL, 1, NULL),
  -- #0112 Rhydon - Native Encounter
  (112, 11200, 18, NULL, 1, NULL),
  -- #0118 Goldeen - Native Encounter
  (118, 11800, 18, NULL, 1, NULL),
  -- #0119 Seaking - Native Encounter
  (119, 11900, 18, NULL, 1, NULL),
  -- #0122 Mr. Mime - In-Game Trade
  (122, 12200, 18, NULL, 5, 'NPC in-game trade source in Sword/Shield.'),
  -- #0122 Galarian Mr. Mime - Native Encounter
  (122, 12201, 18, NULL, 1, NULL),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 18, NULL, 1, NULL),
  -- #0130 Gyarados - Native Encounter
  (130, 13000, 18, NULL, 1, NULL),
  -- #0131 Lapras - Native Encounter
  (131, 13100, 18, NULL, 1, NULL),
  -- #0132 Ditto - Native Encounter
  (132, 13200, 18, NULL, 1, NULL),
  -- #0133 Eevee - Native Encounter
  (133, 13300, 18, NULL, 1, NULL),
  -- #0134 Vaporeon - Native Encounter
  (134, 13400, 18, NULL, 1, NULL),
  -- #0135 Jolteon - Native Encounter
  (135, 13500, 18, NULL, 1, NULL),
  -- #0136 Flareon - Native Encounter
  (136, 13600, 18, NULL, 1, NULL),
  -- #0143 Snorlax - Native Encounter
  (143, 14300, 18, NULL, 1, NULL),
  -- #0163 Hoothoot - Native Encounter
  (163, 16300, 18, NULL, 1, NULL),
  -- #0164 Noctowl - Native Encounter
  (164, 16400, 18, NULL, 1, NULL),
  -- #0170 Chinchou - Native Encounter
  (170, 17000, 18, NULL, 1, NULL),
  -- #0171 Lanturn - Native Encounter
  (171, 17100, 18, NULL, 1, NULL),
  -- #0172 Pichu - Raid or Special Encounter
  (172, 17200, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0173 Cleffa - Raid or Special Encounter
  (173, 17300, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0175 Togepi - Native Encounter
  (175, 17500, 18, NULL, 1, NULL),
  -- #0176 Togetic - Native Encounter
  (176, 17600, 18, NULL, 1, NULL),
  -- #0177 Natu - Native Encounter
  (177, 17700, 18, NULL, 1, NULL),
  -- #0178 Xatu - Native Encounter
  (178, 17800, 18, NULL, 1, NULL),
  -- #0182 Bellossom - Native Encounter
  (182, 18200, 18, NULL, 1, NULL),
  -- #0185 Sudowoodo - Native Encounter
  (185, 18500, 18, NULL, 1, NULL),
  -- #0194 Wooper - Native Encounter
  (194, 19400, 18, NULL, 1, NULL),
  -- #0195 Quagsire - Native Encounter
  (195, 19500, 18, NULL, 1, NULL),
  -- #0196 Espeon - Native Encounter
  (196, 19600, 18, NULL, 1, NULL),
  -- #0197 Umbreon - Native Encounter
  (197, 19700, 18, NULL, 1, NULL),
  -- #0202 Wobbuffet - Native Encounter
  (202, 20200, 18, NULL, 1, NULL),
  -- #0208 Steelix - Native Encounter
  (208, 20800, 18, NULL, 1, NULL),
  -- #0211 Qwilfish - Native Encounter
  (211, 21100, 18, NULL, 1, NULL),
  -- #0213 Shuckle - Native Encounter
  (213, 21300, 18, NULL, 1, NULL),
  -- #0215 Sneasel - Native Encounter
  (215, 21500, 18, NULL, 1, NULL),
  -- #0220 Swinub - Native Encounter
  (220, 22000, 18, NULL, 1, NULL),
  -- #0221 Piloswine - Native Encounter
  (221, 22100, 18, NULL, 1, NULL),
  -- #0222 Corsola - Sword - External Trade
  (222, 22200, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0222 Corsola - Shield - Raid or Special Encounter
  (222, 22200, 18, 32, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0222 Galarian Corsola - Sword - External Trade
  (222, 22201, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0222 Galarian Corsola - Shield - Native Encounter
  (222, 22201, 18, 32, 1, NULL),
  -- #0223 Remoraid - Native Encounter
  (223, 22300, 18, NULL, 1, NULL),
  -- #0224 Octillery - Native Encounter
  (224, 22400, 18, NULL, 1, NULL),
  -- #0225 Delibird - Native Encounter
  (225, 22500, 18, NULL, 1, NULL),
  -- #0226 Mantine - Native Encounter
  (226, 22600, 18, NULL, 1, NULL),
  -- #0236 Tyrogue - Native Encounter
  (236, 23600, 18, NULL, 1, NULL),
  -- #0237 Hitmontop - Native Encounter
  (237, 23700, 18, NULL, 1, NULL),
  -- #0246 Larvitar - Sword - Event
  (246, 24600, 18, 31, 11, 'Official Sword/Shield event or distribution source.'),
  -- #0246 Larvitar - Shield - Native Encounter
  (246, 24600, 18, 32, 1, NULL),
  -- #0247 Pupitar - Sword - Evolution
  (247, 24700, 18, 31, 7, NULL),
  -- #0247 Pupitar - Shield - Native Encounter
  (247, 24700, 18, 32, 1, NULL),
  -- #0248 Tyranitar - Sword - Evolution
  (248, 24800, 18, 31, 7, NULL),
  -- #0248 Tyranitar - Shield - Native Encounter
  (248, 24800, 18, 32, 1, NULL),
  -- #0263 Zigzagoon - Raid or Special Encounter
  (263, 26300, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0263 Galarian Zigzagoon - Native Encounter
  (263, 26301, 18, NULL, 1, NULL),
  -- #0264 Linoone - Raid or Special Encounter
  (264, 26400, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0264 Galarian Linoone - Native Encounter
  (264, 26401, 18, NULL, 1, NULL),
  -- #0270 Lotad - Sword - External Trade
  (270, 27000, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0270 Lotad - Shield - Native Encounter
  (270, 27000, 18, 32, 1, NULL),
  -- #0271 Lombre - Sword - External Trade
  (271, 27100, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0271 Lombre - Shield - Native Encounter
  (271, 27100, 18, 32, 1, NULL),
  -- #0272 Ludicolo - Sword - External Trade
  (272, 27200, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0272 Ludicolo - Shield - Native Encounter
  (272, 27200, 18, 32, 1, NULL),
  -- #0273 Seedot - Sword - Native Encounter
  (273, 27300, 18, 31, 1, NULL),
  -- #0273 Seedot - Shield - External Trade
  (273, 27300, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0274 Nuzleaf - Sword - Native Encounter
  (274, 27400, 18, 31, 1, NULL),
  -- #0274 Nuzleaf - Shield - External Trade
  (274, 27400, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0275 Shiftry - Sword - Native Encounter
  (275, 27500, 18, 31, 1, NULL),
  -- #0275 Shiftry - Shield - External Trade
  (275, 27500, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0278 Wingull - Native Encounter
  (278, 27800, 18, NULL, 1, NULL),
  -- #0279 Pelipper - Native Encounter
  (279, 27900, 18, NULL, 1, NULL),
  -- #0280 Ralts - Native Encounter
  (280, 28000, 18, NULL, 1, NULL),
  -- #0281 Kirlia - Native Encounter
  (281, 28100, 18, NULL, 1, NULL),
  -- #0282 Gardevoir - Native Encounter
  (282, 28200, 18, NULL, 1, NULL),
  -- #0290 Nincada - Native Encounter
  (290, 29000, 18, NULL, 1, NULL),
  -- #0291 Ninjask - Native Encounter
  (291, 29100, 18, NULL, 1, NULL),
  -- #0292 Shedinja - Raid or Special Encounter
  (292, 29200, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0302 Sableye - Sword - External Trade
  (302, 30200, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0302 Sableye - Shield - Native Encounter
  (302, 30200, 18, 32, 1, NULL),
  -- #0303 Mawile - Sword - Native Encounter
  (303, 30300, 18, 31, 1, NULL),
  -- #0303 Mawile - Shield - External Trade
  (303, 30300, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0309 Electrike - Native Encounter
  (309, 30900, 18, NULL, 1, NULL),
  -- #0310 Manectric - Native Encounter
  (310, 31000, 18, NULL, 1, NULL),
  -- #0315 Roselia - Native Encounter
  (315, 31500, 18, NULL, 1, NULL),
  -- #0320 Wailmer - Native Encounter
  (320, 32000, 18, NULL, 1, NULL),
  -- #0321 Wailord - Native Encounter
  (321, 32100, 18, NULL, 1, NULL),
  -- #0324 Torkoal - Native Encounter
  (324, 32400, 18, NULL, 1, NULL),
  -- #0328 Trapinch - Native Encounter
  (328, 32800, 18, NULL, 1, NULL),
  -- #0329 Vibrava - Raid or Special Encounter
  (329, 32900, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0330 Flygon - Native Encounter
  (330, 33000, 18, NULL, 1, NULL),
  -- #0337 Lunatone - Sword - External Trade
  (337, 33700, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0337 Lunatone - Shield - Native Encounter
  (337, 33700, 18, 32, 1, NULL),
  -- #0338 Solrock - Sword - Native Encounter
  (338, 33800, 18, 31, 1, NULL),
  -- #0338 Solrock - Shield - External Trade
  (338, 33800, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0339 Barboach - Native Encounter
  (339, 33900, 18, NULL, 1, NULL),
  -- #0340 Whiscash - Native Encounter
  (340, 34000, 18, NULL, 1, NULL),
  -- #0341 Corphish - Native Encounter
  (341, 34100, 18, NULL, 1, NULL),
  -- #0342 Crawdaunt - Native Encounter
  (342, 34200, 18, NULL, 1, NULL),
  -- #0343 Baltoy - Native Encounter
  (343, 34300, 18, NULL, 1, NULL),
  -- #0344 Claydol - Native Encounter
  (344, 34400, 18, NULL, 1, NULL),
  -- #0349 Feebas - Native Encounter
  (349, 34900, 18, NULL, 1, NULL),
  -- #0350 Milotic - Native Encounter
  (350, 35000, 18, NULL, 1, NULL),
  -- #0355 Duskull - Native Encounter
  (355, 35500, 18, NULL, 1, NULL),
  -- #0356 Dusclops - Native Encounter
  (356, 35600, 18, NULL, 1, NULL),
  -- #0360 Wynaut - Raid or Special Encounter
  (360, 36000, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0361 Snorunt - Native Encounter
  (361, 36100, 18, NULL, 1, NULL),
  -- #0362 Glalie - Native Encounter
  (362, 36200, 18, NULL, 1, NULL),
  -- #0406 Budew - Native Encounter
  (406, 40600, 18, NULL, 1, NULL),
  -- #0407 Roserade - Native Encounter
  (407, 40700, 18, NULL, 1, NULL),
  -- #0415 Combee - Native Encounter
  (415, 41500, 18, NULL, 1, NULL),
  -- #0416 Vespiquen - Native Encounter
  (416, 41600, 18, NULL, 1, NULL),
  -- #0420 Cherubi - Native Encounter
  (420, 42000, 18, NULL, 1, NULL),
  -- #0421 Cherrim - Raid or Special Encounter
  (421, 42100, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0422 Shellos - Native Encounter
  (422, 42200, 18, NULL, 1, NULL),
  -- #0422 Shellos - Transfer Only
  (422, 42200, 18, NULL, 13, 'Not obtainable through normal Sword/Shield base gameplay; requires Pokémon HOME transfer or compatible import source.'),
  -- #0423 Gastrodon - Native Encounter
  (423, 42300, 18, NULL, 1, NULL),
  -- #0423 Gastrodon - Transfer Only
  (423, 42300, 18, NULL, 13, 'Not obtainable through normal Sword/Shield base gameplay; requires Pokémon HOME transfer or compatible import source.'),
  -- #0425 Drifloon - Native Encounter
  (425, 42500, 18, NULL, 1, NULL),
  -- #0426 Drifblim - Native Encounter
  (426, 42600, 18, NULL, 1, NULL),
  -- #0434 Stunky - Native Encounter
  (434, 43400, 18, NULL, 1, NULL),
  -- #0435 Skuntank - Native Encounter
  (435, 43500, 18, NULL, 1, NULL),
  -- #0436 Bronzor - Native Encounter
  (436, 43600, 18, NULL, 1, NULL),
  -- #0437 Bronzong - Native Encounter
  (437, 43700, 18, NULL, 1, NULL),
  -- #0438 Bonsly - Native Encounter
  (438, 43800, 18, NULL, 1, NULL),
  -- #0439 Mime Jr. - Native Encounter
  (439, 43900, 18, NULL, 1, NULL),
  -- #0446 Munchlax - Native Encounter
  (446, 44600, 18, NULL, 1, NULL),
  -- #0447 Riolu - Native Encounter
  (447, 44700, 18, NULL, 1, NULL),
  -- #0448 Lucario - Native Encounter
  (448, 44800, 18, NULL, 1, NULL),
  -- #0449 Hippopotas - Native Encounter
  (449, 44900, 18, NULL, 1, NULL),
  -- #0450 Hippowdon - Native Encounter
  (450, 45000, 18, NULL, 1, NULL),
  -- #0451 Skorupi - Native Encounter
  (451, 45100, 18, NULL, 1, NULL),
  -- #0452 Drapion - Native Encounter
  (452, 45200, 18, NULL, 1, NULL),
  -- #0453 Croagunk - Sword - External Trade
  (453, 45300, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0453 Croagunk - Shield - Native Encounter
  (453, 45300, 18, 32, 1, NULL),
  -- #0454 Toxicroak - Sword - External Trade
  (454, 45400, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0454 Toxicroak - Shield - Native Encounter
  (454, 45400, 18, 32, 1, NULL),
  -- #0458 Mantyke - Native Encounter
  (458, 45800, 18, NULL, 1, NULL),
  -- #0459 Snover - Native Encounter
  (459, 45900, 18, NULL, 1, NULL),
  -- #0460 Abomasnow - Native Encounter
  (460, 46000, 18, NULL, 1, NULL),
  -- #0461 Weavile - Native Encounter
  (461, 46100, 18, NULL, 1, NULL),
  -- #0464 Rhyperior - Raid or Special Encounter
  (464, 46400, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0468 Togekiss - Native Encounter
  (468, 46800, 18, NULL, 1, NULL),
  -- #0470 Leafeon - Native Encounter
  (470, 47000, 18, NULL, 1, NULL),
  -- #0471 Glaceon - Native Encounter
  (471, 47100, 18, NULL, 1, NULL),
  -- #0473 Mamoswine - Raid or Special Encounter
  (473, 47300, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0475 Gallade - Native Encounter
  (475, 47500, 18, NULL, 1, NULL),
  -- #0477 Dusknoir - Native Encounter
  (477, 47700, 18, NULL, 1, NULL),
  -- #0478 Froslass - Raid or Special Encounter
  (478, 47800, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0479 Rotom - Native Encounter
  (479, 47900, 18, NULL, 1, NULL),
  -- #0509 Purrloin - Native Encounter
  (509, 50900, 18, NULL, 1, NULL),
  -- #0510 Liepard - Native Encounter
  (510, 51000, 18, NULL, 1, NULL),
  -- #0517 Munna - Native Encounter
  (517, 51700, 18, NULL, 1, NULL),
  -- #0518 Musharna - Native Encounter
  (518, 51800, 18, NULL, 1, NULL),
  -- #0519 Pidove - Native Encounter
  (519, 51900, 18, NULL, 1, NULL),
  -- #0520 Tranquill - Native Encounter
  (520, 52000, 18, NULL, 1, NULL),
  -- #0521 Unfezant - Native Encounter
  (521, 52100, 18, NULL, 1, NULL),
  -- #0524 Roggenrola - Native Encounter
  (524, 52400, 18, NULL, 1, NULL),
  -- #0525 Boldore - Native Encounter
  (525, 52500, 18, NULL, 1, NULL),
  -- #0526 Gigalith - Native Encounter
  (526, 52600, 18, NULL, 1, NULL),
  -- #0527 Woobat - Native Encounter
  (527, 52700, 18, NULL, 1, NULL),
  -- #0528 Swoobat - Raid or Special Encounter
  (528, 52800, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0529 Drilbur - Native Encounter
  (529, 52900, 18, NULL, 1, NULL),
  -- #0530 Excadrill - Native Encounter
  (530, 53000, 18, NULL, 1, NULL),
  -- #0532 Timburr - Native Encounter
  (532, 53200, 18, NULL, 1, NULL),
  -- #0533 Gurdurr - Native Encounter
  (533, 53300, 18, NULL, 1, NULL),
  -- #0534 Conkeldurr - Native Encounter
  (534, 53400, 18, NULL, 1, NULL),
  -- #0535 Tympole - Native Encounter
  (535, 53500, 18, NULL, 1, NULL),
  -- #0536 Palpitoad - Native Encounter
  (536, 53600, 18, NULL, 1, NULL),
  -- #0537 Seismitoad - Native Encounter
  (537, 53700, 18, NULL, 1, NULL),
  -- #0538 Throh - Sword - In-Game Trade
  (538, 53800, 18, 31, 5, 'NPC in-game trade source in Sword/Shield.'),
  -- #0538 Throh - Shield - Native Encounter
  (538, 53800, 18, 32, 1, NULL),
  -- #0539 Sawk - Sword - Native Encounter
  (539, 53900, 18, 31, 1, NULL),
  -- #0539 Sawk - Shield - In-Game Trade
  (539, 53900, 18, 32, 5, 'NPC in-game trade source in Sword/Shield.'),
  -- #0546 Cottonee - Native Encounter
  (546, 54600, 18, NULL, 1, NULL),
  -- #0547 Whimsicott - Raid or Special Encounter
  (547, 54700, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0550 Basculin - Sword - Native Encounter
  (550, 55000, 18, 31, 1, NULL),
  -- #0550 Basculin - Sword - External Trade
  (550, 55000, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0550 Basculin - Shield - Native Encounter
  (550, 55000, 18, 32, 1, NULL),
  -- #0550 Basculin - Shield - External Trade
  (550, 55000, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0554 Darumaka - Sword - Raid or Special Encounter
  (554, 55400, 18, 31, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0554 Darumaka - Shield - External Trade
  (554, 55400, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0554 Galarian Darumaka - Sword - Native Encounter
  (554, 55401, 18, 31, 1, NULL),
  -- #0554 Galarian Darumaka - Shield - External Trade
  (554, 55401, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0555 Darmanitan - Sword - Raid or Special Encounter
  (555, 55500, 18, 31, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0555 Darmanitan - Shield - External Trade
  (555, 55500, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0555 Galarian Darmanitan - Sword - Raid or Special Encounter
  (555, 55502, 18, 31, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0555 Galarian Darmanitan - Shield - External Trade
  (555, 55502, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0556 Maractus - Native Encounter
  (556, 55600, 18, NULL, 1, NULL),
  -- #0557 Dwebble - Native Encounter
  (557, 55700, 18, NULL, 1, NULL),
  -- #0558 Crustle - Native Encounter
  (558, 55800, 18, NULL, 1, NULL),
  -- #0559 Scraggy - Sword - Native Encounter
  (559, 55900, 18, 31, 1, NULL),
  -- #0559 Scraggy - Shield - External Trade
  (559, 55900, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0560 Scrafty - Sword - Raid or Special Encounter
  (560, 56000, 18, 31, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0560 Scrafty - Shield - External Trade
  (560, 56000, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0561 Sigilyph - Native Encounter
  (561, 56100, 18, NULL, 1, NULL),
  -- #0562 Yamask - In-Game Trade
  (562, 56200, 18, NULL, 5, 'NPC in-game trade source in Sword/Shield.'),
  -- #0562 Galarian Yamask - Native Encounter
  (562, 56201, 18, NULL, 1, NULL),
  -- #0563 Cofagrigus - Raid or Special Encounter
  (563, 56300, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0568 Trubbish - Native Encounter
  (568, 56800, 18, NULL, 1, NULL),
  -- #0569 Garbodor - Native Encounter
  (569, 56900, 18, NULL, 1, NULL),
  -- #0572 Minccino - Native Encounter
  (572, 57200, 18, NULL, 1, NULL),
  -- #0573 Cinccino - Native Encounter
  (573, 57300, 18, NULL, 1, NULL),
  -- #0574 Gothita - Sword - Native Encounter
  (574, 57400, 18, 31, 1, NULL),
  -- #0574 Gothita - Shield - External Trade
  (574, 57400, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0575 Gothorita - Sword - Native Encounter
  (575, 57500, 18, 31, 1, NULL),
  -- #0575 Gothorita - Shield - External Trade
  (575, 57500, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0576 Gothitelle - Sword - Native Encounter
  (576, 57600, 18, 31, 1, NULL),
  -- #0576 Gothitelle - Shield - External Trade
  (576, 57600, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0577 Solosis - Sword - External Trade
  (577, 57700, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0577 Solosis - Shield - Native Encounter
  (577, 57700, 18, 32, 1, NULL),
  -- #0578 Duosion - Sword - External Trade
  (578, 57800, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0578 Duosion - Shield - Native Encounter
  (578, 57800, 18, 32, 1, NULL),
  -- #0579 Reuniclus - Sword - External Trade
  (579, 57900, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0579 Reuniclus - Shield - Native Encounter
  (579, 57900, 18, 32, 1, NULL),
  -- #0582 Vanillite - Native Encounter
  (582, 58200, 18, NULL, 1, NULL),
  -- #0583 Vanillish - Native Encounter
  (583, 58300, 18, NULL, 1, NULL),
  -- #0584 Vanilluxe - Native Encounter
  (584, 58400, 18, NULL, 1, NULL),
  -- #0588 Karrablast - Native Encounter
  (588, 58800, 18, NULL, 1, NULL),
  -- #0589 Escavalier - Sword - Raid or Special Encounter
  (589, 58900, 18, 31, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0589 Escavalier - Shield - Native Encounter
  (589, 58900, 18, 32, 1, NULL),
  -- #0592 Frillish - Native Encounter
  (592, 59200, 18, NULL, 1, NULL),
  -- #0593 Jellicent - Native Encounter
  (593, 59300, 18, NULL, 1, NULL),
  -- #0595 Joltik - Native Encounter
  (595, 59500, 18, NULL, 1, NULL),
  -- #0596 Galvantula - Native Encounter
  (596, 59600, 18, NULL, 1, NULL),
  -- #0597 Ferroseed - Native Encounter
  (597, 59700, 18, NULL, 1, NULL),
  -- #0598 Ferrothorn - Native Encounter
  (598, 59800, 18, NULL, 1, NULL),
  -- #0599 Klink - Native Encounter
  (599, 59900, 18, NULL, 1, NULL),
  -- #0600 Klang - Native Encounter
  (600, 60000, 18, NULL, 1, NULL),
  -- #0601 Klinklang - Native Encounter
  (601, 60100, 18, NULL, 1, NULL),
  -- #0605 Elgyem - Native Encounter
  (605, 60500, 18, NULL, 1, NULL),
  -- #0606 Beheeyem - Native Encounter
  (606, 60600, 18, NULL, 1, NULL),
  -- #0607 Litwick - Native Encounter
  (607, 60700, 18, NULL, 1, NULL),
  -- #0608 Lampent - Native Encounter
  (608, 60800, 18, NULL, 1, NULL),
  -- #0609 Chandelure - Native Encounter
  (609, 60900, 18, NULL, 1, NULL),
  -- #0610 Axew - Native Encounter
  (610, 61000, 18, NULL, 1, NULL),
  -- #0611 Fraxure - Raid or Special Encounter
  (611, 61100, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0612 Haxorus - Native Encounter
  (612, 61200, 18, NULL, 1, NULL),
  -- #0613 Cubchoo - Native Encounter
  (613, 61300, 18, NULL, 1, NULL),
  -- #0614 Beartic - Native Encounter
  (614, 61400, 18, NULL, 1, NULL),
  -- #0616 Shelmet - Native Encounter
  (616, 61600, 18, NULL, 1, NULL),
  -- #0617 Accelgor - Sword - Native Encounter
  (617, 61700, 18, 31, 1, NULL),
  -- #0617 Accelgor - Shield - Raid or Special Encounter
  (617, 61700, 18, 32, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0618 Stunfisk - Raid or Special Encounter
  (618, 61800, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0618 Galarian Stunfisk - Native Encounter
  (618, 61801, 18, NULL, 1, NULL),
  -- #0622 Golett - Native Encounter
  (622, 62200, 18, NULL, 1, NULL),
  -- #0623 Golurk - Native Encounter
  (623, 62300, 18, NULL, 1, NULL),
  -- #0624 Pawniard - Native Encounter
  (624, 62400, 18, NULL, 1, NULL),
  -- #0625 Bisharp - Native Encounter
  (625, 62500, 18, NULL, 1, NULL),
  -- #0627 Rufflet - Sword - Native Encounter
  (627, 62700, 18, 31, 1, NULL),
  -- #0627 Rufflet - Shield - External Trade
  (627, 62700, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0628 Braviary - Sword - Native Encounter
  (628, 62800, 18, 31, 1, NULL),
  -- #0628 Braviary - Shield - External Trade
  (628, 62800, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0629 Vullaby - Sword - External Trade
  (629, 62900, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0629 Vullaby - Shield - Native Encounter
  (629, 62900, 18, 32, 1, NULL),
  -- #0630 Mandibuzz - Sword - External Trade
  (630, 63000, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0630 Mandibuzz - Shield - Native Encounter
  (630, 63000, 18, 32, 1, NULL),
  -- #0631 Heatmor - Native Encounter
  (631, 63100, 18, NULL, 1, NULL),
  -- #0632 Durant - Native Encounter
  (632, 63200, 18, NULL, 1, NULL),
  -- #0633 Deino - Sword - Native Encounter
  (633, 63300, 18, 31, 1, NULL),
  -- #0633 Deino - Shield - External Trade
  (633, 63300, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0634 Zweilous - Sword - Native Encounter
  (634, 63400, 18, 31, 1, NULL),
  -- #0634 Zweilous - Shield - External Trade
  (634, 63400, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0635 Hydreigon - Sword - Raid or Special Encounter
  (635, 63500, 18, 31, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0635 Hydreigon - Shield - External Trade
  (635, 63500, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0659 Bunnelby - Native Encounter
  (659, 65900, 18, NULL, 1, NULL),
  -- #0660 Diggersby - Native Encounter
  (660, 66000, 18, NULL, 1, NULL),
  -- #0674 Pancham - Native Encounter
  (674, 67400, 18, NULL, 1, NULL),
  -- #0675 Pangoro - Native Encounter
  (675, 67500, 18, NULL, 1, NULL),
  -- #0677 Espurr - Native Encounter
  (677, 67700, 18, NULL, 1, NULL),
  -- #0678 Meowstic - Sword - Native Encounter
  (678, 67800, 18, 31, 1, NULL),
  -- #0678 Meowstic - Sword - Evolution
  (678, 67800, 18, 31, 7, NULL),
  -- #0678 Meowstic - Shield - Native Encounter
  (678, 67800, 18, 32, 1, NULL),
  -- #0678 Meowstic - Shield - Evolution
  (678, 67800, 18, 32, 7, NULL),
  -- #0679 Honedge - Native Encounter
  (679, 67900, 18, NULL, 1, NULL),
  -- #0680 Doublade - Native Encounter
  (680, 68000, 18, NULL, 1, NULL),
  -- #0681 Aegislash - Native Encounter
  (681, 68100, 18, NULL, 1, NULL),
  -- #0682 Spritzee - Sword - External Trade
  (682, 68200, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0682 Spritzee - Shield - Native Encounter
  (682, 68200, 18, 32, 1, NULL),
  -- #0683 Aromatisse - Sword - External Trade
  (683, 68300, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0683 Aromatisse - Shield - Raid or Special Encounter
  (683, 68300, 18, 32, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0684 Swirlix - Sword - Native Encounter
  (684, 68400, 18, 31, 1, NULL),
  -- #0684 Swirlix - Shield - External Trade
  (684, 68400, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0685 Slurpuff - Sword - Raid or Special Encounter
  (685, 68500, 18, 31, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0685 Slurpuff - Shield - External Trade
  (685, 68500, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0686 Inkay - Native Encounter
  (686, 68600, 18, NULL, 1, NULL),
  -- #0687 Malamar - Raid or Special Encounter
  (687, 68700, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0688 Binacle - Native Encounter
  (688, 68800, 18, NULL, 1, NULL),
  -- #0689 Barbaracle - Native Encounter
  (689, 68900, 18, NULL, 1, NULL),
  -- #0694 Helioptile - Native Encounter
  (694, 69400, 18, NULL, 1, NULL),
  -- #0695 Heliolisk - Raid or Special Encounter
  (695, 69500, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0700 Sylveon - Native Encounter
  (700, 70000, 18, NULL, 1, NULL),
  -- #0701 Hawlucha - Native Encounter
  (701, 70100, 18, NULL, 1, NULL),
  -- #0704 Goomy - Sword - External Trade
  (704, 70400, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0704 Goomy - Shield - Native Encounter
  (704, 70400, 18, 32, 1, NULL),
  -- #0705 Sliggoo - Sword - External Trade
  (705, 70500, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0705 Sliggoo - Shield - Native Encounter
  (705, 70500, 18, 32, 1, NULL),
  -- #0706 Goodra - Sword - External Trade
  (706, 70600, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0706 Goodra - Shield - Raid or Special Encounter
  (706, 70600, 18, 32, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0708 Phantump - Native Encounter
  (708, 70800, 18, NULL, 1, NULL),
  -- #0709 Trevenant - Raid or Special Encounter
  (709, 70900, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0710 Pumpkaboo - Native Encounter
  (710, 71000, 18, NULL, 1, NULL),
  -- #0711 Gourgeist - Native Encounter
  (711, 71100, 18, NULL, 1, NULL),
  -- #0712 Bergmite - Native Encounter
  (712, 71200, 18, NULL, 1, NULL),
  -- #0713 Avalugg - Native Encounter
  (713, 71300, 18, NULL, 1, NULL),
  -- #0714 Noibat - Native Encounter
  (714, 71400, 18, NULL, 1, NULL),
  -- #0715 Noivern - Native Encounter
  (715, 71500, 18, NULL, 1, NULL),
  -- #0736 Grubbin - Native Encounter
  (736, 73600, 18, NULL, 1, NULL),
  -- #0737 Charjabug - Native Encounter
  (737, 73700, 18, NULL, 1, NULL),
  -- #0738 Vikavolt - Native Encounter
  (738, 73800, 18, NULL, 1, NULL),
  -- #0742 Cutiefly - Native Encounter
  (742, 74200, 18, NULL, 1, NULL),
  -- #0743 Ribombee - Native Encounter
  (743, 74300, 18, NULL, 1, NULL),
  -- #0746 Wishiwashi - Native Encounter
  (746, 74600, 18, NULL, 1, NULL),
  -- #0747 Mareanie - Native Encounter
  (747, 74700, 18, NULL, 1, NULL),
  -- #0748 Toxapex - Native Encounter
  (748, 74800, 18, NULL, 1, NULL),
  -- #0749 Mudbray - Native Encounter
  (749, 74900, 18, NULL, 1, NULL),
  -- #0750 Mudsdale - Native Encounter
  (750, 75000, 18, NULL, 1, NULL),
  -- #0751 Dewpider - Native Encounter
  (751, 75100, 18, NULL, 1, NULL),
  -- #0752 Araquanid - Native Encounter
  (752, 75200, 18, NULL, 1, NULL),
  -- #0755 Morelull - Native Encounter
  (755, 75500, 18, NULL, 1, NULL),
  -- #0756 Shiinotic - Native Encounter
  (756, 75600, 18, NULL, 1, NULL),
  -- #0757 Salandit - Native Encounter
  (757, 75700, 18, NULL, 1, NULL),
  -- #0758 Salazzle - Raid or Special Encounter
  (758, 75800, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0759 Stufful - Native Encounter
  (759, 75900, 18, NULL, 1, NULL),
  -- #0760 Bewear - Native Encounter
  (760, 76000, 18, NULL, 1, NULL),
  -- #0761 Bounsweet - Native Encounter
  (761, 76100, 18, NULL, 1, NULL),
  -- #0762 Steenee - Native Encounter
  (762, 76200, 18, NULL, 1, NULL),
  -- #0763 Tsareena - Native Encounter
  (763, 76300, 18, NULL, 1, NULL),
  -- #0765 Oranguru - Sword - Raid or Special Encounter
  (765, 76500, 18, 31, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0765 Oranguru - Shield - Native Encounter
  (765, 76500, 18, 32, 1, NULL),
  -- #0766 Passimian - Sword - Native Encounter
  (766, 76600, 18, 31, 1, NULL),
  -- #0766 Passimian - Shield - Raid or Special Encounter
  (766, 76600, 18, 32, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0767 Wimpod - Native Encounter
  (767, 76700, 18, NULL, 1, NULL),
  -- #0768 Golisopod - Native Encounter
  (768, 76800, 18, NULL, 1, NULL),
  -- #0771 Pyukumuku - Native Encounter
  (771, 77100, 18, NULL, 1, NULL),
  -- #0772 Type: Null - Gift
  (772, 77200, 18, NULL, 4, 'Gift Type: Null received after becoming Champion in Sword/Shield.'),
  -- #0773 Silvally - Evolution
  (773, 77300, 18, NULL, 7, NULL),
  -- #0773 Silvally (Fighting) - Evolution
  (773, 77301, 18, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sword/Shield.'),
  -- #0773 Silvally (Flying) - Evolution
  (773, 77302, 18, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sword/Shield.'),
  -- #0773 Silvally (Poison) - Evolution
  (773, 77303, 18, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sword/Shield.'),
  -- #0773 Silvally (Ground) - Evolution
  (773, 77304, 18, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sword/Shield.'),
  -- #0773 Silvally (Rock) - Evolution
  (773, 77305, 18, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sword/Shield.'),
  -- #0773 Silvally (Bug) - Evolution
  (773, 77306, 18, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sword/Shield.'),
  -- #0773 Silvally (Ghost) - Evolution
  (773, 77307, 18, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sword/Shield.'),
  -- #0773 Silvally (Steel) - Evolution
  (773, 77308, 18, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sword/Shield.'),
  -- #0773 Silvally (Fire) - Evolution
  (773, 77309, 18, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sword/Shield.'),
  -- #0773 Silvally (Water) - Evolution
  (773, 77310, 18, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sword/Shield.'),
  -- #0773 Silvally (Grass) - Evolution
  (773, 77311, 18, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sword/Shield.'),
  -- #0773 Silvally (Electric) - Evolution
  (773, 77312, 18, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sword/Shield.'),
  -- #0773 Silvally (Psychic) - Evolution
  (773, 77313, 18, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sword/Shield.'),
  -- #0773 Silvally (Ice) - Evolution
  (773, 77314, 18, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sword/Shield.'),
  -- #0773 Silvally (Dragon) - Evolution
  (773, 77315, 18, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sword/Shield.'),
  -- #0773 Silvally (Dark) - Evolution
  (773, 77316, 18, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sword/Shield.'),
  -- #0773 Silvally (Fairy) - Evolution
  (773, 77317, 18, NULL, 7, 'Requires evolving gift Type: Null and Memory item access in Sword/Shield.'),
  -- #0776 Turtonator - Sword - Native Encounter
  (776, 77600, 18, 31, 1, NULL),
  -- #0776 Turtonator - Shield - External Trade
  (776, 77600, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0777 Togedemaru - Native Encounter
  (777, 77700, 18, NULL, 1, NULL),
  -- #0778 Mimikyu - Native Encounter
  (778, 77800, 18, NULL, 1, NULL),
  -- #0780 Drampa - Sword - External Trade
  (780, 78000, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0780 Drampa - Shield - Native Encounter
  (780, 78000, 18, 32, 1, NULL),
  -- #0781 Dhelmise - Native Encounter
  (781, 78100, 18, NULL, 1, NULL),
  -- #0782 Jangmo-o - Sword - Native Encounter
  (782, 78200, 18, 31, 1, NULL),
  -- #0782 Jangmo-o - Shield - Event
  (782, 78200, 18, 32, 11, 'Official Sword/Shield event or distribution source.'),
  -- #0783 Hakamo-o - Sword - Native Encounter
  (783, 78300, 18, 31, 1, NULL),
  -- #0783 Hakamo-o - Shield - Evolution
  (783, 78300, 18, 32, 7, NULL),
  -- #0784 Kommo-o - Sword - Native Encounter
  (784, 78400, 18, 31, 1, NULL),
  -- #0784 Kommo-o - Shield - Evolution
  (784, 78400, 18, 32, 7, NULL),
  -- #0810 Grookey - Starter
  (810, 81000, 18, NULL, 3, 'Galar first partner choice in Sword/Shield.'),
  -- #0811 Thwackey - Evolution
  (811, 81100, 18, NULL, 7, NULL),
  -- #0812 Rillaboom - Evolution
  (812, 81200, 18, NULL, 7, NULL),
  -- #0813 Scorbunny - Starter
  (813, 81300, 18, NULL, 3, 'Galar first partner choice in Sword/Shield.'),
  -- #0814 Raboot - Evolution
  (814, 81400, 18, NULL, 7, NULL),
  -- #0815 Cinderace - Evolution
  (815, 81500, 18, NULL, 7, NULL),
  -- #0816 Sobble - Starter
  (816, 81600, 18, NULL, 3, 'Galar first partner choice in Sword/Shield.'),
  -- #0817 Drizzile - Evolution
  (817, 81700, 18, NULL, 7, NULL),
  -- #0818 Inteleon - Evolution
  (818, 81800, 18, NULL, 7, NULL),
  -- #0819 Skwovet - Native Encounter
  (819, 81900, 18, NULL, 1, NULL),
  -- #0820 Greedent - Native Encounter
  (820, 82000, 18, NULL, 1, NULL),
  -- #0821 Rookidee - Native Encounter
  (821, 82100, 18, NULL, 1, NULL),
  -- #0822 Corvisquire - Native Encounter
  (822, 82200, 18, NULL, 1, NULL),
  -- #0823 Corviknight - Native Encounter
  (823, 82300, 18, NULL, 1, NULL),
  -- #0824 Blipbug - Native Encounter
  (824, 82400, 18, NULL, 1, NULL),
  -- #0825 Dottler - Native Encounter
  (825, 82500, 18, NULL, 1, NULL),
  -- #0826 Orbeetle - Native Encounter
  (826, 82600, 18, NULL, 1, NULL),
  -- #0827 Nickit - Native Encounter
  (827, 82700, 18, NULL, 1, NULL),
  -- #0828 Thievul - Native Encounter
  (828, 82800, 18, NULL, 1, NULL),
  -- #0829 Gossifleur - Native Encounter
  (829, 82900, 18, NULL, 1, NULL),
  -- #0830 Eldegoss - Native Encounter
  (830, 83000, 18, NULL, 1, NULL),
  -- #0831 Wooloo - Native Encounter
  (831, 83100, 18, NULL, 1, NULL),
  -- #0832 Dubwool - Native Encounter
  (832, 83200, 18, NULL, 1, NULL),
  -- #0833 Chewtle - Native Encounter
  (833, 83300, 18, NULL, 1, NULL),
  -- #0834 Drednaw - Native Encounter
  (834, 83400, 18, NULL, 1, NULL),
  -- #0835 Yamper - Native Encounter
  (835, 83500, 18, NULL, 1, NULL),
  -- #0836 Boltund - Native Encounter
  (836, 83600, 18, NULL, 1, NULL),
  -- #0837 Rolycoly - Native Encounter
  (837, 83700, 18, NULL, 1, NULL),
  -- #0838 Carkol - Native Encounter
  (838, 83800, 18, NULL, 1, NULL),
  -- #0839 Coalossal - Native Encounter
  (839, 83900, 18, NULL, 1, NULL),
  -- #0840 Applin - Native Encounter
  (840, 84000, 18, NULL, 1, NULL),
  -- #0841 Flapple - Sword - Raid or Special Encounter
  (841, 84100, 18, 31, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0841 Flapple - Shield - External Trade
  (841, 84100, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0842 Appletun - Sword - External Trade
  (842, 84200, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0842 Appletun - Shield - Raid or Special Encounter
  (842, 84200, 18, 32, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0843 Silicobra - Native Encounter
  (843, 84300, 18, NULL, 1, NULL),
  -- #0844 Sandaconda - Native Encounter
  (844, 84400, 18, NULL, 1, NULL),
  -- #0845 Cramorant - Native Encounter
  (845, 84500, 18, NULL, 1, NULL),
  -- #0846 Arrokuda - Native Encounter
  (846, 84600, 18, NULL, 1, NULL),
  -- #0847 Barraskewda - Native Encounter
  (847, 84700, 18, NULL, 1, NULL),
  -- #0848 Toxel - Native Encounter
  (848, 84800, 18, NULL, 1, NULL),
  -- #0849 Toxtricity - Raid or Special Encounter
  (849, 84900, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0849 Toxtricity (Low Key) - Sword - Evolution
  (849, 84901, 18, 31, 7, NULL),
  -- #0849 Toxtricity (Low Key) - Shield - Raid or Special Encounter
  (849, 84901, 18, 32, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0850 Sizzlipede - Native Encounter
  (850, 85000, 18, NULL, 1, NULL),
  -- #0851 Centiskorch - Raid or Special Encounter
  (851, 85100, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0852 Clobbopus - Native Encounter
  (852, 85200, 18, NULL, 1, NULL),
  -- #0853 Grapploct - Native Encounter
  (853, 85300, 18, NULL, 1, NULL),
  -- #0854 Sinistea - Native Encounter
  (854, 85400, 18, NULL, 1, NULL),
  -- #0855 Polteageist - Raid or Special Encounter
  (855, 85500, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0856 Hatenna - Native Encounter
  (856, 85600, 18, NULL, 1, NULL),
  -- #0857 Hattrem - Native Encounter
  (857, 85700, 18, NULL, 1, NULL),
  -- #0858 Hatterene - Native Encounter
  (858, 85800, 18, NULL, 1, NULL),
  -- #0859 Impidimp - Native Encounter
  (859, 85900, 18, NULL, 1, NULL),
  -- #0860 Morgrem - Native Encounter
  (860, 86000, 18, NULL, 1, NULL),
  -- #0861 Grimmsnarl - Native Encounter
  (861, 86100, 18, NULL, 1, NULL),
  -- #0862 Obstagoon - Native Encounter
  (862, 86200, 18, NULL, 1, NULL),
  -- #0863 Perrserker - Native Encounter
  (863, 86300, 18, NULL, 1, NULL),
  -- #0864 Cursola - Sword - External Trade
  (864, 86400, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0864 Cursola - Shield - Raid or Special Encounter
  (864, 86400, 18, 32, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0865 Sirfetch'd - Sword - Raid or Special Encounter
  (865, 86500, 18, 31, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0865 Sirfetch'd - Shield - External Trade
  (865, 86500, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0866 Mr. Rime - Raid or Special Encounter
  (866, 86600, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0867 Runerigus - Raid or Special Encounter
  (867, 86700, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0868 Milcery - Native Encounter
  (868, 86800, 18, NULL, 1, NULL),
  -- #0869 Alcremie - Raid or Special Encounter
  (869, 86900, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0870 Falinks - Native Encounter
  (870, 87000, 18, NULL, 1, NULL),
  -- #0871 Pincurchin - Native Encounter
  (871, 87100, 18, NULL, 1, NULL),
  -- #0872 Snom - Native Encounter
  (872, 87200, 18, NULL, 1, NULL),
  -- #0873 Frosmoth - Raid or Special Encounter
  (873, 87300, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0874 Stonjourner - Sword - Native Encounter
  (874, 87400, 18, 31, 1, NULL),
  -- #0874 Stonjourner - Shield - External Trade
  (874, 87400, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0875 Eiscue - Sword - External Trade
  (875, 87500, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0875 Eiscue - Shield - Native Encounter
  (875, 87500, 18, 32, 1, NULL),
  -- #0876 Indeedee - Sword - Native Encounter
  (876, 87600, 18, 31, 1, NULL),
  -- #0876 Indeedee - Shield - Breeding
  (876, 87600, 18, 32, 8, NULL),
  -- #0876 Indeedee (Female) - Sword - Breeding
  (876, 87601, 18, 31, 8, NULL),
  -- #0876 Indeedee (Female) - Shield - Native Encounter
  (876, 87601, 18, 32, 1, NULL),
  -- #0877 Morpeko - Native Encounter
  (877, 87700, 18, NULL, 1, NULL),
  -- #0878 Cufant - Native Encounter
  (878, 87800, 18, NULL, 1, NULL),
  -- #0879 Copperajah - Native Encounter
  (879, 87900, 18, NULL, 1, NULL),
  -- #0880 Dracozolt - Fossil Restoration
  (880, 88000, 18, NULL, 6, 'Available by restoring fossil combinations in Sword/Shield.'),
  -- #0881 Arctozolt - Fossil Restoration
  (881, 88100, 18, NULL, 6, 'Available by restoring fossil combinations in Sword/Shield.'),
  -- #0882 Dracovish - Fossil Restoration
  (882, 88200, 18, NULL, 6, 'Available by restoring fossil combinations in Sword/Shield.'),
  -- #0883 Arctovish - Fossil Restoration
  (883, 88300, 18, NULL, 6, 'Available by restoring fossil combinations in Sword/Shield.'),
  -- #0884 Duraludon - Native Encounter
  (884, 88400, 18, NULL, 1, NULL),
  -- #0885 Dreepy - Native Encounter
  (885, 88500, 18, NULL, 1, NULL),
  -- #0886 Drakloak - Native Encounter
  (886, 88600, 18, NULL, 1, NULL),
  -- #0887 Dragapult - Raid or Special Encounter
  (887, 88700, 18, NULL, 10, 'Max Raid Battle or special den source in Sword/Shield.'),
  -- #0888 Zacian - Sword - Static Encounter
  (888, 88800, 18, 31, 2, 'Sword version legendary encounter in Sword/Shield.'),
  -- #0888 Zacian - Shield - External Trade
  (888, 88800, 18, 32, 12, 'Version source is Pokémon Sword; available in Pokémon Shield by trade from the paired version or compatible external source.'),
  -- #0889 Zamazenta - Sword - External Trade
  (889, 88900, 18, 31, 12, 'Version source is Pokémon Shield; available in Pokémon Sword by trade from the paired version or compatible external source.'),
  -- #0889 Zamazenta - Shield - Static Encounter
  (889, 88900, 18, 32, 2, 'Shield version legendary encounter in Sword/Shield.'),
  -- #0890 Eternatus - Static Encounter
  (890, 89000, 18, NULL, 2, 'Story static Eternatus encounter in Sword/Shield.');
