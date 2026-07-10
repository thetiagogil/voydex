-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Kitakami Pokedex number and The Teal Mask page.
-- Cross-check: PokemonDB The Teal Mask Pokedex, Serebii Kitakami/Pokeearth data, and Bulbapedia version-exclusive Pokémon.
-- Scope note: The Teal Mask optional content scope only. Base Scarlet/Violet and Indigo Disk availability rows are seeded separately.
-- Method note: evolved forms prefer evolution when an in-game evolution path exists; version exclusives use game-specific source rows plus external-trade rows for the paired version.
-- Form note: Species-level Kitakami Pokedex rows are expanded where the form materially affects team planning or availability: Oricorio styles, Lycanroc forms, Poltchageist/Sinistcha forms, Indeedee gender forms, White-Striped Basculin/Basculegion, Bloodmoon Ursaluna, Maushold/Dudunsparce rare forms, and Ogerpon mask forms.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version group: The Teal Mask
-- Table: reference.pokemon_availability
-- Scope: Kitakami Pokedex availability plus Teal Mask non-Pokedex gifts/extras.
-- ============================================================================
INSERT INTO reference.pokemon_availability (species_id, form_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- #0167 Spinarak - Native Encounter
  (167, 16700, 24, NULL, 1, NULL),
  -- #0168 Ariados - Evolution
  (168, 16800, 24, NULL, 7, NULL),
  -- #0193 Yanma - Native Encounter
  (193, 19300, 24, NULL, 1, NULL),
  -- #0469 Yanmega - Evolution
  (469, 46900, 24, NULL, 7, NULL),
  -- #0194 Wooper - Native Encounter
  (194, 19400, 24, NULL, 1, NULL),
  -- #0195 Quagsire - Evolution
  (195, 19500, 24, NULL, 7, NULL),
  -- #0261 Poochyena - Native Encounter
  (261, 26100, 24, NULL, 1, NULL),
  -- #0262 Mightyena - Evolution
  (262, 26200, 24, NULL, 7, NULL),
  -- #0313 Volbeat - Native Encounter
  (313, 31300, 24, NULL, 1, NULL),
  -- #0314 Illumise - Native Encounter
  (314, 31400, 24, NULL, 1, NULL),
  -- #0341 Corphish - Native Encounter
  (341, 34100, 24, NULL, 1, NULL),
  -- #0342 Crawdaunt - Evolution
  (342, 34200, 24, NULL, 7, NULL),
  -- #0540 Sewaddle - Native Encounter
  (540, 54000, 24, NULL, 1, NULL),
  -- #0541 Swadloon - Evolution
  (541, 54100, 24, NULL, 7, NULL),
  -- #0542 Leavanny - Evolution
  (542, 54200, 24, NULL, 7, NULL),
  -- #0742 Cutiefly - Native Encounter
  (742, 74200, 24, NULL, 1, NULL),
  -- #0743 Ribombee - Evolution
  (743, 74300, 24, NULL, 7, NULL),
  -- #0023 Ekans - Native Encounter
  (23, 2300, 24, NULL, 1, NULL),
  -- #0024 Arbok - Evolution
  (24, 2400, 24, NULL, 7, NULL),
  -- #0172 Pichu - Native Encounter
  (172, 17200, 24, NULL, 1, NULL),
  -- #0025 Pikachu - Evolution
  (25, 2500, 24, NULL, 7, NULL),
  -- #0026 Raichu - Evolution
  (26, 2600, 24, NULL, 7, NULL),
  -- #0069 Bellsprout - Native Encounter
  (69, 6900, 24, NULL, 1, NULL),
  -- #0070 Weepinbell - Evolution
  (70, 7000, 24, NULL, 7, NULL),
  -- #0071 Victreebel - Evolution
  (71, 7100, 24, NULL, 7, NULL),
  -- #0161 Sentret - Native Encounter
  (161, 16100, 24, NULL, 1, NULL),
  -- #0162 Furret - Evolution
  (162, 16200, 24, NULL, 7, NULL),
  -- #0396 Starly - Native Encounter
  (396, 39600, 24, NULL, 1, NULL),
  -- #0397 Staravia - Evolution
  (397, 39700, 24, NULL, 7, NULL),
  -- #0398 Staraptor - Evolution
  (398, 39800, 24, NULL, 7, NULL),
  -- #0753 Fomantis - Native Encounter
  (753, 75300, 24, NULL, 1, NULL),
  -- #0754 Lurantis - Evolution
  (754, 75400, 24, NULL, 7, NULL),
  -- #0840 Applin - Native Encounter
  (840, 84000, 24, NULL, 1, NULL),
  -- #0841 Flapple - Evolution
  (841, 84100, 24, NULL, 7, NULL),
  -- #0842 Appletun - Evolution
  (842, 84200, 24, NULL, 7, NULL),
  -- #1011 Dipplin - Evolution
  (1011, 101100, 24, NULL, 7, NULL),
  -- #0037 Vulpix - Native Encounter
  (37, 3700, 24, NULL, 1, NULL),
  -- #0038 Ninetales - Evolution
  (38, 3800, 24, NULL, 7, NULL),
  -- #0060 Poliwag - Native Encounter
  (60, 6000, 24, NULL, 1, NULL),
  -- #0061 Poliwhirl - Evolution
  (61, 6100, 24, NULL, 7, NULL),
  -- #0062 Poliwrath - Evolution
  (62, 6200, 24, NULL, 7, NULL),
  -- #0186 Politoed - Evolution
  (186, 18600, 24, NULL, 7, NULL),
  -- #0129 Magikarp - Native Encounter
  (129, 12900, 24, NULL, 1, NULL),
  -- #0130 Gyarados - Evolution
  (130, 13000, 24, NULL, 7, NULL),
  -- #0163 Hoothoot - Native Encounter
  (163, 16300, 24, NULL, 1, NULL),
  -- #0164 Noctowl - Evolution
  (164, 16400, 24, NULL, 7, NULL),
  -- #0190 Aipom - Scarlet - External Trade
  (190, 19000, 24, 36, 12, 'Version source is Pokémon Violet: The Teal Mask; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0190 Aipom - Violet - Native Encounter
  (190, 19000, 24, 37, 1, 'Kitakami native encounter in Pokémon Violet: The Teal Mask.'),
  -- #0424 Ambipom - Scarlet - External Trade
  (424, 42400, 24, 36, 12, 'Version source is Pokémon Violet: The Teal Mask; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0424 Ambipom - Violet - Evolution
  (424, 42400, 24, 37, 7, 'Kitakami evolution in Pokémon Violet: The Teal Mask.'),
  -- #0214 Heracross - Native Encounter
  (214, 21400, 24, NULL, 1, NULL),
  -- #0220 Swinub - Native Encounter
  (220, 22000, 24, NULL, 1, NULL),
  -- #0221 Piloswine - Evolution
  (221, 22100, 24, NULL, 7, NULL),
  -- #0473 Mamoswine - Evolution
  (473, 47300, 24, NULL, 7, NULL),
  -- #0234 Stantler - Native Encounter
  (234, 23400, 24, NULL, 1, NULL),
  -- #0273 Seedot - Native Encounter
  (273, 27300, 24, NULL, 1, NULL),
  -- #0274 Nuzleaf - Evolution
  (274, 27400, 24, NULL, 7, NULL),
  -- #0275 Shiftry - Evolution
  (275, 27500, 24, NULL, 7, NULL),
  -- #0280 Ralts - Native Encounter
  (280, 28000, 24, NULL, 1, NULL),
  -- #0281 Kirlia - Evolution
  (281, 28100, 24, NULL, 7, NULL),
  -- #0282 Gardevoir - Evolution
  (282, 28200, 24, NULL, 7, NULL),
  -- #0475 Gallade - Evolution
  (475, 47500, 24, NULL, 7, NULL),
  -- #0401 Kricketot - Native Encounter
  (401, 40100, 24, NULL, 1, NULL),
  -- #0402 Kricketune - Evolution
  (402, 40200, 24, NULL, 7, NULL),
  -- #0417 Pachirisu - Native Encounter
  (417, 41700, 24, NULL, 1, NULL),
  -- #0447 Riolu - Native Encounter
  (447, 44700, 24, NULL, 1, NULL),
  -- #0448 Lucario - Evolution
  (448, 44800, 24, NULL, 7, NULL),
  -- #0548 Petilil - Native Encounter
  (548, 54800, 24, NULL, 1, NULL),
  -- #0549 Lilligant - Evolution
  (549, 54900, 24, NULL, 7, NULL),
  -- #0708 Phantump - Native Encounter
  (708, 70800, 24, NULL, 1, NULL),
  -- #0709 Trevenant - Evolution
  (709, 70900, 24, NULL, 7, NULL),
  -- #0744 Rockruff - Native Encounter
  (744, 74400, 24, NULL, 1, NULL),
  -- #0745 Lycanroc - Evolution
  (745, 74500, 24, NULL, 7, NULL),
  -- #0745 Lycanroc (Midnight) - Native Encounter
  (745, 74501, 24, NULL, 1, 'Midnight Form Lycanroc is source-visible in the Kitakami Pokedex and available in The Teal Mask.'),
  -- #0819 Skwovet - Native Encounter
  (819, 81900, 24, NULL, 1, NULL),
  -- #0820 Greedent - Evolution
  (820, 82000, 24, NULL, 7, NULL),
  -- #0948 Toedscool - Native Encounter
  (948, 94800, 24, NULL, 1, NULL),
  -- #0949 Toedscruel - Evolution
  (949, 94900, 24, NULL, 7, NULL),
  -- #1012 Poltchageist - Native Encounter
  (1012, 101200, 24, NULL, 1, 'Counterfeit Form Poltchageist wild encounter in Kitakami.'),
  -- #1012 Poltchageist (Artisan) - Native Encounter
  (1012, 101201, 24, NULL, 1, 'Artisan Form Poltchageist wild encounter in Kitakami; rare authentic-form equivalent.'),
  -- #1013 Sinistcha - Evolution
  (1013, 101300, 24, NULL, 7, 'Unremarkable Form Sinistcha evolves from Counterfeit Form Poltchageist with the Unremarkable Teacup.'),
  -- #1013 Sinistcha (Masterpiece) - Evolution
  (1013, 101301, 24, NULL, 7, 'Masterpiece Form Sinistcha evolves from Artisan Form Poltchageist with the Masterpiece Teacup.'),
  -- #0058 Growlithe - Native Encounter
  (58, 5800, 24, NULL, 1, NULL),
  -- #0059 Arcanine - Evolution
  (59, 5900, 24, NULL, 7, NULL),
  -- #0074 Geodude - Native Encounter
  (74, 7400, 24, NULL, 1, NULL),
  -- #0075 Graveler - Evolution
  (75, 7500, 24, NULL, 7, NULL),
  -- #0076 Golem - Evolution
  (76, 7600, 24, NULL, 7, NULL),
  -- #0438 Bonsly - Native Encounter
  (438, 43800, 24, NULL, 1, NULL),
  -- #0185 Sudowoodo - Evolution
  (185, 18500, 24, NULL, 7, NULL),
  -- #0532 Timburr - Native Encounter
  (532, 53200, 24, NULL, 1, NULL),
  -- #0533 Gurdurr - Evolution
  (533, 53300, 24, NULL, 7, NULL),
  -- #0534 Conkeldurr - Evolution
  (534, 53400, 24, NULL, 7, NULL),
  -- #0714 Noibat - Native Encounter
  (714, 71400, 24, NULL, 1, NULL),
  -- #0715 Noivern - Evolution
  (715, 71500, 24, NULL, 7, NULL),
  -- #0846 Arrokuda - Native Encounter
  (846, 84600, 24, NULL, 1, NULL),
  -- #0847 Barraskewda - Evolution
  (847, 84700, 24, NULL, 7, NULL),
  -- #0856 Hatenna - Native Encounter
  (856, 85600, 24, NULL, 1, NULL),
  -- #0857 Hattrem - Evolution
  (857, 85700, 24, NULL, 7, NULL),
  -- #0858 Hatterene - Evolution
  (858, 85800, 24, NULL, 7, NULL),
  -- #0877 Morpeko - Scarlet - External Trade
  (877, 87700, 24, 36, 12, 'Version source is Pokémon Violet: The Teal Mask; available in Pokémon Scarlet by trade from the paired version or compatible HOME transfer.'),
  -- #0877 Morpeko - Violet - Native Encounter
  (877, 87700, 24, 37, 1, 'Kitakami native encounter in Pokémon Violet: The Teal Mask.'),
  -- #0968 Orthworm - Native Encounter
  (968, 96800, 24, NULL, 1, NULL),
  -- #0924 Tandemaus - Native Encounter
  (924, 92400, 24, NULL, 1, NULL),
  -- #0925 Maushold - Evolution
  (925, 92500, 24, NULL, 7, NULL),
  -- #0925 Maushold (Family of Three) - Evolution
  (925, 92501, 24, NULL, 7, 'Maushold Family of Three evolves from Tandemaus by its rare form outcome.'),
  -- #0056 Mankey - Native Encounter
  (56, 5600, 24, NULL, 1, NULL),
  -- #0057 Primeape - Evolution
  (57, 5700, 24, NULL, 7, NULL),
  -- #0979 Annihilape - Evolution
  (979, 97900, 24, NULL, 7, NULL),
  -- #0446 Munchlax - Native Encounter
  (446, 44600, 24, NULL, 1, NULL),
  -- #0143 Snorlax - Evolution
  (143, 14300, 24, NULL, 7, NULL),
  -- #0270 Lotad - Native Encounter
  (270, 27000, 24, NULL, 1, NULL),
  -- #0271 Lombre - Evolution
  (271, 27100, 24, NULL, 7, NULL),
  -- #0272 Ludicolo - Evolution
  (272, 27200, 24, NULL, 7, NULL),
  -- #0299 Nosepass - Native Encounter
  (299, 29900, 24, NULL, 1, NULL),
  -- #0476 Probopass - Evolution
  (476, 47600, 24, NULL, 7, NULL),
  -- #0403 Shinx - Native Encounter
  (403, 40300, 24, NULL, 1, NULL),
  -- #0404 Luxio - Evolution
  (404, 40400, 24, NULL, 7, NULL),
  -- #0405 Luxray - Evolution
  (405, 40500, 24, NULL, 7, NULL),
  -- #0736 Grubbin - Native Encounter
  (736, 73600, 24, NULL, 1, NULL),
  -- #0737 Charjabug - Evolution
  (737, 73700, 24, NULL, 7, NULL),
  -- #0738 Vikavolt - Evolution
  (738, 73800, 24, NULL, 7, NULL),
  -- #0741 Oricorio - Native Encounter
  (741, 74100, 24, NULL, 1, 'Baile Style Oricorio is available through Oricorio and nectar form access in The Teal Mask.'),
  -- #0741 Oricorio (Pom-Pom) - Native Encounter
  (741, 74101, 24, NULL, 1, 'Pom-Pom Style Oricorio is available through Oricorio and nectar form access in The Teal Mask.'),
  -- #0741 Oricorio (Pa'u) - Native Encounter
  (741, 74102, 24, NULL, 1, 'Pa''u Style Oricorio is available through Oricorio and nectar form access in The Teal Mask.'),
  -- #0741 Oricorio (Sensu) - Native Encounter
  (741, 74103, 24, NULL, 1, 'Sensu Style Oricorio is available through Oricorio and nectar form access in The Teal Mask.'),
  -- #0027 Sandshrew - Native Encounter
  (27, 2700, 24, NULL, 1, NULL),
  -- #0028 Sandslash - Evolution
  (28, 2800, 24, NULL, 7, NULL),
  -- #0092 Gastly - Native Encounter
  (92, 9200, 24, NULL, 1, NULL),
  -- #0093 Haunter - Evolution
  (93, 9300, 24, NULL, 7, NULL),
  -- #0094 Gengar - Evolution
  (94, 9400, 24, NULL, 7, NULL),
  -- #0207 Gligar - Scarlet - Native Encounter
  (207, 20700, 24, 36, 1, 'Kitakami native encounter in Pokémon Scarlet: The Teal Mask.'),
  -- #0207 Gligar - Violet - External Trade
  (207, 20700, 24, 37, 12, 'Version source is Pokémon Scarlet: The Teal Mask; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0472 Gliscor - Scarlet - Evolution
  (472, 47200, 24, 36, 7, 'Kitakami evolution in Pokémon Scarlet: The Teal Mask.'),
  -- #0472 Gliscor - Violet - External Trade
  (472, 47200, 24, 37, 12, 'Version source is Pokémon Scarlet: The Teal Mask; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0228 Houndour - Native Encounter
  (228, 22800, 24, NULL, 1, NULL),
  -- #0229 Houndoom - Evolution
  (229, 22900, 24, NULL, 7, NULL),
  -- #0325 Spoink - Native Encounter
  (325, 32500, 24, NULL, 1, NULL),
  -- #0326 Grumpig - Evolution
  (326, 32600, 24, NULL, 7, NULL),
  -- #0629 Vullaby - Native Encounter
  (629, 62900, 24, NULL, 1, NULL),
  -- #0630 Mandibuzz - Evolution
  (630, 63000, 24, NULL, 7, NULL),
  -- #0749 Mudbray - Native Encounter
  (749, 74900, 24, NULL, 1, NULL),
  -- #0750 Mudsdale - Evolution
  (750, 75000, 24, NULL, 7, NULL),
  -- #0782 Jangmo-o - Native Encounter
  (782, 78200, 24, NULL, 1, NULL),
  -- #0783 Hakamo-o - Evolution
  (783, 78300, 24, NULL, 7, NULL),
  -- #0784 Kommo-o - Evolution
  (784, 78400, 24, NULL, 7, NULL),
  -- #0962 Bombirdier - Native Encounter
  (962, 96200, 24, NULL, 1, NULL),
  -- #0109 Koffing - Native Encounter
  (109, 10900, 24, NULL, 1, NULL),
  -- #0110 Weezing - Evolution
  (110, 11000, 24, NULL, 7, NULL),
  -- #0619 Mienfoo - Native Encounter
  (619, 61900, 24, NULL, 1, NULL),
  -- #0620 Mienshao - Evolution
  (620, 62000, 24, NULL, 7, NULL),
  -- #0355 Duskull - Native Encounter
  (355, 35500, 24, NULL, 1, NULL),
  -- #0356 Dusclops - Evolution
  (356, 35600, 24, NULL, 7, NULL),
  -- #0477 Dusknoir - Evolution
  (477, 47700, 24, NULL, 7, NULL),
  -- #0433 Chingling - Native Encounter
  (433, 43300, 24, NULL, 1, NULL),
  -- #0358 Chimecho - Evolution
  (358, 35800, 24, NULL, 7, NULL),
  -- #0218 Slugma - Native Encounter
  (218, 21800, 24, NULL, 1, NULL),
  -- #0219 Magcargo - Evolution
  (219, 21900, 24, NULL, 7, NULL),
  -- #0607 Litwick - Native Encounter
  (607, 60700, 24, NULL, 1, NULL),
  -- #0608 Lampent - Evolution
  (608, 60800, 24, NULL, 7, NULL),
  -- #0609 Chandelure - Evolution
  (609, 60900, 24, NULL, 7, NULL),
  -- #0283 Surskit - Native Encounter
  (283, 28300, 24, NULL, 1, NULL),
  -- #0284 Masquerain - Evolution
  (284, 28400, 24, NULL, 7, NULL),
  -- #0173 Cleffa - Native Encounter
  (173, 17300, 24, NULL, 1, NULL),
  -- #0035 Clefairy - Evolution
  (35, 3500, 24, NULL, 7, NULL),
  -- #0036 Clefable - Evolution
  (36, 3600, 24, NULL, 7, NULL),
  -- #0436 Bronzor - Native Encounter
  (436, 43600, 24, NULL, 1, NULL),
  -- #0437 Bronzong - Evolution
  (437, 43700, 24, NULL, 7, NULL),
  -- #0969 Glimmet - Native Encounter
  (969, 96900, 24, NULL, 1, NULL),
  -- #0970 Glimmora - Evolution
  (970, 97000, 24, NULL, 7, NULL),
  -- #0349 Feebas - Native Encounter
  (349, 34900, 24, NULL, 1, NULL),
  -- #0350 Milotic - Evolution
  (350, 35000, 24, NULL, 7, NULL),
  -- #0206 Dunsparce - Native Encounter
  (206, 20600, 24, NULL, 1, NULL),
  -- #0982 Dudunsparce - Evolution
  (982, 98200, 24, NULL, 7, NULL),
  -- #0982 Dudunsparce (Three-Segment) - Evolution
  (982, 98201, 24, NULL, 7, 'Dudunsparce Three-Segment Form evolves from Dunsparce by its rare form outcome.'),
  -- #0339 Barboach - Native Encounter
  (339, 33900, 24, NULL, 1, NULL),
  -- #0340 Whiscash - Evolution
  (340, 34000, 24, NULL, 7, NULL),
  -- #0443 Gible - Native Encounter
  (443, 44300, 24, NULL, 1, NULL),
  -- #0444 Gabite - Evolution
  (444, 44400, 24, NULL, 7, NULL),
  -- #0445 Garchomp - Evolution
  (445, 44500, 24, NULL, 7, NULL),
  -- #0703 Carbink - Native Encounter
  (703, 70300, 24, NULL, 1, NULL),
  -- #0757 Salandit - Native Encounter
  (757, 75700, 24, NULL, 1, NULL),
  -- #0758 Salazzle - Evolution
  (758, 75800, 24, NULL, 7, NULL),
  -- #0215 Sneasel - Native Encounter
  (215, 21500, 24, NULL, 1, NULL),
  -- #0461 Weavile - Evolution
  (461, 46100, 24, NULL, 7, NULL),
  -- #0361 Snorunt - Native Encounter
  (361, 36100, 24, NULL, 1, NULL),
  -- #0362 Glalie - Evolution
  (362, 36200, 24, NULL, 7, NULL),
  -- #0478 Froslass - Evolution
  (478, 47800, 24, NULL, 7, NULL),
  -- #0602 Tynamo - Native Encounter
  (602, 60200, 24, NULL, 1, NULL),
  -- #0603 Eelektrik - Evolution
  (603, 60300, 24, NULL, 7, NULL),
  -- #0604 Eelektross - Evolution
  (604, 60400, 24, NULL, 7, NULL),
  -- #0704 Goomy - Native Encounter
  (704, 70400, 24, NULL, 1, NULL),
  -- #0705 Sliggoo - Evolution
  (705, 70500, 24, NULL, 7, NULL),
  -- #0706 Goodra - Evolution
  (706, 70600, 24, NULL, 7, NULL),
  -- #0580 Ducklett - Native Encounter
  (580, 58000, 24, NULL, 1, NULL),
  -- #0581 Swanna - Evolution
  (581, 58100, 24, NULL, 7, NULL),
  -- #0833 Chewtle - Native Encounter
  (833, 83300, 24, NULL, 1, NULL),
  -- #0834 Drednaw - Evolution
  (834, 83400, 24, NULL, 7, NULL),
  -- #0845 Cramorant - Scarlet - Native Encounter
  (845, 84500, 24, 36, 1, 'Kitakami native encounter in Pokémon Scarlet: The Teal Mask.'),
  -- #0845 Cramorant - Violet - External Trade
  (845, 84500, 24, 37, 12, 'Version source is Pokémon Scarlet: The Teal Mask; available in Pokémon Violet by trade from the paired version or compatible HOME transfer.'),
  -- #0624 Pawniard - Native Encounter
  (624, 62400, 24, NULL, 1, NULL),
  -- #0625 Bisharp - Evolution
  (625, 62500, 24, NULL, 7, NULL),
  -- #0983 Kingambit - Evolution
  (983, 98300, 24, NULL, 7, NULL),
  -- #0778 Mimikyu - Native Encounter
  (778, 77800, 24, NULL, 1, NULL),
  -- #0859 Impidimp - Native Encounter
  (859, 85900, 24, NULL, 1, NULL),
  -- #0860 Morgrem - Evolution
  (860, 86000, 24, NULL, 7, NULL),
  -- #0861 Grimmsnarl - Evolution
  (861, 86100, 24, NULL, 7, NULL),
  -- #0876 Indeedee - Native Encounter
  (876, 87600, 24, NULL, 1, NULL),
  -- #0876 Indeedee (Female) - Native Encounter
  (876, 87601, 24, NULL, 1, 'Indeedee Female is available as a gender/form variant in Scarlet/Violet and The Teal Mask.'),
  -- #0550 Basculin (White-Striped) - Native Encounter
  (550, 55002, 24, NULL, 1, 'White-Striped Basculin wild encounter in Kitakami; this is the Kitakami form relevant to Basculegion.'),
  -- #0902 Basculegion - Evolution
  (902, 90200, 24, NULL, 7, 'Male Basculegion evolves from male White-Striped Basculin after the recoil-damage condition.'),
  -- #0902 Basculegion (Female) - Evolution
  (902, 90201, 24, NULL, 7, 'Female Basculegion evolves from female White-Striped Basculin after the recoil-damage condition.'),
  -- #0901 Ursaluna (Bloodmoon) - Static Encounter
  (901, 90101, 24, NULL, 2, 'Bloodmoon Ursaluna static side-story encounter from Perrin in The Teal Mask.'),
  -- #1014 Okidogi - Static Encounter
  (1014, 101400, 24, NULL, 2, 'Okidogi static post-story encounter in The Teal Mask.'),
  -- #1015 Munkidori - Static Encounter
  (1015, 101500, 24, NULL, 2, 'Munkidori static post-story encounter in The Teal Mask.'),
  -- #1016 Fezandipiti - Static Encounter
  (1016, 101600, 24, NULL, 2, 'Fezandipiti static post-story encounter in The Teal Mask.'),
  -- #1017 Ogerpon - Static Encounter
  (1017, 101700, 24, NULL, 2, 'Ogerpon static story encounter in The Teal Mask.'),
  -- #1017 Ogerpon (Wellspring Mask) - Static Encounter
  (1017, 101701, 24, NULL, 2, 'Ogerpon Wellspring Mask form is available after receiving Ogerpon and the Wellspring Mask in The Teal Mask.'),
  -- #1017 Ogerpon (Hearthflame Mask) - Static Encounter
  (1017, 101702, 24, NULL, 2, 'Ogerpon Hearthflame Mask form is available after receiving Ogerpon and the Hearthflame Mask in The Teal Mask.'),
  -- #1017 Ogerpon (Cornerstone Mask) - Static Encounter
  (1017, 101703, 24, NULL, 2, 'Ogerpon Cornerstone Mask form is available after receiving Ogerpon and the Cornerstone Mask in The Teal Mask.'),
  -- #0058 Hisuian Growlithe - Gift
  (58, 5801, 24, NULL, 4, 'Hisuian Growlithe gift from Perrin after the Bloodmoon Ursaluna side story in The Teal Mask.'),
  -- #0059 Hisuian Arcanine - Evolution
  (59, 5901, 24, NULL, 7, 'Evolves from Perrin''s Hisuian Growlithe gift with a Fire Stone.'),
  -- #0387 Turtwig - Gift
  (387, 38700, 24, NULL, 4, 'Random Sinnoh first partner egg gift from Jacq in The Teal Mask; one of Turtwig, Chimchar, or Piplup per save without trade.'),
  -- #0388 Grotle - Evolution
  (388, 38800, 24, NULL, 7, 'Evolves from the Turtwig line available through Jacq''s Sinnoh starter egg gift in The Teal Mask.'),
  -- #0389 Torterra - Evolution
  (389, 38900, 24, NULL, 7, 'Evolves from the Turtwig line available through Jacq''s Sinnoh starter egg gift in The Teal Mask.'),
  -- #0390 Chimchar - Gift
  (390, 39000, 24, NULL, 4, 'Random Sinnoh first partner egg gift from Jacq in The Teal Mask; one of Turtwig, Chimchar, or Piplup per save without trade.'),
  -- #0391 Monferno - Evolution
  (391, 39100, 24, NULL, 7, 'Evolves from the Chimchar line available through Jacq''s Sinnoh starter egg gift in The Teal Mask.'),
  -- #0392 Infernape - Evolution
  (392, 39200, 24, NULL, 7, 'Evolves from the Chimchar line available through Jacq''s Sinnoh starter egg gift in The Teal Mask.'),
  -- #0393 Piplup - Gift
  (393, 39300, 24, NULL, 4, 'Random Sinnoh first partner egg gift from Jacq in The Teal Mask; one of Turtwig, Chimchar, or Piplup per save without trade.'),
  -- #0394 Prinplup - Evolution
  (394, 39400, 24, NULL, 7, 'Evolves from the Piplup line available through Jacq''s Sinnoh starter egg gift in The Teal Mask.'),
  -- #0395 Empoleon - Evolution
  (395, 39500, 24, NULL, 7, 'Evolves from the Piplup line available through Jacq''s Sinnoh starter egg gift in The Teal Mask.');
